uint64_t sub_1DB133508@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DB2BAD94();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1DB133580()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB1335B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DB1335C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DB133608()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB133650()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB133688()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB1336D0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB133708()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_1DB133794@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = Connection.userVersion.getter();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1DB1337C8(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = *(a1 + 4);
  return Connection.userVersion.setter();
}

BOOL sub_1DB133808@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DB146634();
  *a2 = result;
  return result;
}

BOOL sub_1DB133898@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DB146634();
  *a2 = result;
  return result;
}

uint64_t sub_1DB133930()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB133A70()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1DB133BEC(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_1DB133C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB15B840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB133C90()
{
  sub_1DB1718C4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DB133CD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v64 = a3;
  v5 = sub_1DB2BAA34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v63 - v11;
  if (qword_1EE13F6D8 != -1)
  {
LABEL_58:
    swift_once();
  }

  v13 = sub_1DB2BAA64();
  __swift_project_value_buffer(v13, qword_1EE14C880);
  sub_1DB2BAA24();
  v14 = sub_1DB2BAA44();
  v15 = sub_1DB2BB2F4();
  if (sub_1DB2BB314())
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1DB2BAA14();
    _os_signpost_emit_with_name_impl(&dword_1DB132000, v14, v15, v17, "asSQL", "", v16, 2u);
    MEMORY[0x1E1284BF0](v16, -1, -1);
  }

  (*(v6 + 16))(v10, v12, v5);
  v18 = sub_1DB2BAAA4();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v63[1] = sub_1DB2BAA94();
  (*(v6 + 8))(v12, v5);
  v84 = 0;
  v85 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = (HIBYTE(a2) & 0xF);
  }

  else
  {
    v12 = (a1 & 0xFFFFFFFFFFFFLL);
  }

  if (v12)
  {
    v68 = a2 & 0xFFFFFFFFFFFFFFLL;
    v67 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v21 = v64;
    v66 = v64 + 32;
    swift_bridgeObjectRetain_n();

    v22 = 0;
    v6 = 0;
    v10 = 0;
    v23 = &qword_1ECC26E28;
    v65 = a1;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v26 = sub_1DB2BB4E4();
        v5 = v27;
        goto LABEL_20;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v80 = a1;
        v81 = v68;
        v25 = &v80 + v10;
      }

      else
      {
        v24 = v67;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v24 = sub_1DB2BB5B4();
        }

        v25 = &v10[v24];
      }

      v26 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        break;
      }

      v33 = (__clz(v26 ^ 0xFF) - 24);
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          v26 = ((v26 & 0xF) << 12) | ((v25[1] & 0x3F) << 6) | v25[2] & 0x3F;
          v5 = 3;
        }

        else
        {
          v26 = ((v26 & 0xF) << 18) | ((v25[1] & 0x3F) << 12) | ((v25[2] & 0x3F) << 6) | v25[3] & 0x3F;
          v5 = 4;
        }
      }

      else
      {
        if (v33 == 1)
        {
          break;
        }

        v26 = v25[1] & 0x3F | ((v26 & 0x1F) << 6);
        v5 = 2;
      }

LABEL_20:
      if (v26 == 63)
      {
        if (v22 < *(v21 + 16))
        {
          if (v22 < 0)
          {
            goto LABEL_57;
          }

          sub_1DB1446A4(v66 + 40 * v22, &v80, v23, &unk_1DB2C2D70);
          sub_1DB1446A4(&v80, &v75, v23, &unk_1DB2C2D70);
          if (v76)
          {
            sub_1DB1355D0(&v75, &v77);
            sub_1DB164980(&v77, &v75);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
            v28 = v23;
            if (swift_dynamicCast())
            {
              v72 = 10104;
              v73 = 0xE200000000000000;
              v69 = v70;
              countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
              MEMORY[0x1E1283490](countAndFlagsBits);
              v21 = v64;

              MEMORY[0x1E1283490](39, 0xE100000000000000);

              v30 = v72;
              v31 = v73;
              __swift_destroy_boxed_opaque_existential_1(&v77);
              __swift_destroy_boxed_opaque_existential_1(&v75);
            }

            else
            {
              if (swift_dynamicCast())
              {
                v30 = sub_1DB2B995C(39, 0xE100000000000000);
                v31 = v34;

                __swift_destroy_boxed_opaque_existential_1(&v77);
                v35 = &v75;
              }

              else
              {
                sub_1DB1355D0(&v75, &v72);
                v70 = 0;
                v71 = 0xE000000000000000;
                __swift_project_boxed_opaque_existential_1(&v72, v74);
                sub_1DB2BB914();
                v30 = v70;
                v31 = v71;
                __swift_destroy_boxed_opaque_existential_1(&v77);
                v35 = &v72;
              }

              __swift_destroy_boxed_opaque_existential_1(v35);
              v21 = v64;
            }
          }

          else
          {
            sub_1DB1445E0(&v75, v23, &unk_1DB2C2D70);
            v28 = v23;
            v31 = 0xE400000000000000;
            v30 = 1280070990;
          }

          sub_1DB1445E0(&v80, v28, &unk_1DB2C2D70);
          v80 = v30;
          v81 = v31;
          sub_1DB2BAE54();

          ++v22;
          v23 = v28;
          a1 = v65;
          goto LABEL_10;
        }

        v32 = __OFADD__(v6++, 1);
        if (v32)
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      sub_1DB2BAE64();
LABEL_10:
      v10 += v5;
      if (v10 >= v12)
      {

        if (v6 < 1)
        {
          goto LABEL_43;
        }

        v80 = 0;
        v81 = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000024, 0x80000001DB2D4740);
        *&v77 = v6;
        v36 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v36);

        MEMORY[0x1E1283490](0xD000000000000019, 0x80000001DB2D4770);
        v37 = *(v21 + 16);
        v32 = __OFADD__(v37, v6);
        v38 = v37 + v6;
        if (!v32)
        {
          *&v77 = v38;
          v39 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v39);

          MEMORY[0x1E1283490](0x6C6175746361202CLL, 0xEA0000000000203ALL);
          *&v77 = *(v21 + 16);
          v40 = sub_1DB2BB8F4();
          MEMORY[0x1E1283490](v40);

          MEMORY[0x1E1283490](46, 0xE100000000000000);
          sub_1DB15B09C(v80, v81);

          goto LABEL_43;
        }

        __break(1u);
LABEL_61:
        swift_once();
LABEL_45:
        sub_1DB2BBAF4();
        v41 = v82;
        v42 = v83;
        __swift_project_boxed_opaque_existential_1(&v80, v82);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1DB2BCC40;
        v70 = sub_1DB156674(0, 76, 0, MEMORY[0x1E69E7CC0]);
        v44._countAndFlagsBits = 0xD00000000000003FLL;
        v44._object = 0x80000001DB2D4700;
        LogMessage.StringInterpolation.appendLiteral(_:)(v44);
        v45 = MEMORY[0x1E69E6530];
        v76 = MEMORY[0x1E69E6530];
        *&v75 = v22;
        sub_1DB1446A4(&v75, &v72, &qword_1ECC26F30, &unk_1DB2BFA90);
        v77 = 0u;
        v78 = 0u;
        sub_1DB1F8894(&v72, &v77, &qword_1ECC26F30, &unk_1DB2BFA90);
        v79 = 0;
        v46 = v70;
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
        v50 = v77;
        v51 = v78;
        v49[64] = v79;
        *(v49 + 2) = v50;
        *(v49 + 3) = v51;
        v70 = v46;
        sub_1DB1445E0(&v75, &qword_1ECC26F30, &unk_1DB2BFA90);
        v52._countAndFlagsBits = 0x7365756C6176202CLL;
        v52._object = 0xEA0000000000203ALL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v52);
        v53 = *(v64 + 16);
        v76 = v45;
        *&v75 = v53;
        sub_1DB1446A4(&v75, &v72, &qword_1ECC26F30, &unk_1DB2BFA90);
        v77 = 0u;
        v78 = 0u;
        sub_1DB1F8894(&v72, &v77, &qword_1ECC26F30, &unk_1DB2BFA90);
        v79 = 0;
        v54 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1DB156674(0, *(v54 + 2) + 1, 1, v54);
          v70 = v54;
        }

        v56 = *(v54 + 2);
        v55 = *(v54 + 3);
        if (v56 >= v55 >> 1)
        {
          v54 = sub_1DB156674((v55 > 1), v56 + 1, 1, v54);
        }

        *(v54 + 2) = v56 + 1;
        v57 = &v54[40 * v56];
        v59 = v77;
        v58 = v78;
        v57[64] = v79;
        *(v57 + 2) = v59;
        *(v57 + 3) = v58;
        v70 = v54;
        sub_1DB1445E0(&v75, &qword_1ECC26F30, &unk_1DB2BFA90);
        v60._countAndFlagsBits = 46;
        v60._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v60);
        *(v43 + 32) = v70;
        Logger.warning(_:)(v43, v41, v42);

        __swift_destroy_boxed_opaque_existential_1(&v80);
        goto LABEL_55;
      }
    }

    v5 = 1;
    goto LABEL_20;
  }

  v21 = v64;

  v22 = 0;
LABEL_43:
  if (v22 < *(v21 + 16))
  {
    if (qword_1EE13F2E0 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_45;
  }

LABEL_55:
  v61 = v84;
  sub_1DB2875A0("asSQL", 5, 2);

  return v61;
}

uint64_t sub_1DB1347F0()
{
  sub_1DB1F7034(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 122));

  return MEMORY[0x1EEE6BDD0](v0, 123, 7);
}

uint64_t sub_1DB13485C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 24);

  if (v1)
  {
    v3 = *(v0 + 40);

    v4 = *(v0 + 56);

    v5 = *(v0 + 72);

    v6 = *(v0 + 80);

    if (*(v0 + 96))
    {

      v7 = *(v0 + 104);
    }

    if (*(v0 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 112));
    }
  }

  else
  {
    v8 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 153, 7);
}

uint64_t sub_1DB1348F8(char a1)
{
  if (a1)
  {
    return 0x73676E69646E6962;
  }

  else
  {
    return 0x6574616C706D6574;
  }
}

uint64_t sub_1DB134938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1DB1FBF28(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DB134A78()
{
  v1 = 0x697463656E6E6F63;
  if (*v0 != 1)
  {
    v1 = 0x7972657551796E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644972657375;
  }
}

uint64_t sub_1DB134AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB24EA8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB134B20@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  a6[2] = a2;
  a6[3] = a3;
  result = sub_1DB1355D0(a1, (a6 + 4));
  *a6 = a4;
  a6[1] = a5;
  return result;
}

uint64_t sub_1DB134B78()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB134BB8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB134C18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB134C58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1DB240588();

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1DB134CC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Statement.columnCount.getter();
  *a2 = result;
  return result;
}

void *sub_1DB134CF0(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 32) = *result;
  *(v2 + 40) = 0;
  return result;
}

void sub_1DB134D04(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  Statement.columnNames.getter();
  *a2 = v4;
}

uint64_t sub_1DB134D30(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 48);
  *(*a2 + 48) = *a1;
}

void sub_1DB134D74(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  Statement.row.getter(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
}

uint64_t sub_1DB134DB0(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = *(*a2 + 56);
  *(v3 + 56) = *a1;
  *(v3 + 64) = v2;
}

uint64_t sub_1DB134E04()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  if (v0[12])
  {

    v6 = v0[13];
  }

  if (v0[14])
  {

    if (v0[16])
    {

      v7 = v0[17];
    }
  }

  v8 = v0[18];

  v9 = v0[22];

  v10 = v0[24];

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_1DB134F00()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  if (v0[12])
  {

    v6 = v0[13];
  }

  if (v0[14])
  {

    if (v0[16])
    {

      v7 = v0[17];
    }
  }

  v8 = v0[18];

  v9 = v0[22];

  v10 = v0[24];

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_1DB134FA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DB1350C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 24);
  v5 = *(v3 - 8);
  v6 = *(v5 + 56);
  v7 = *(*(v3 - 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v6(AssociatedTypeWitness, v5);
}

__n128 sub_1DB135148(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1DB13515C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB135198()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB1351D0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB135208()
{
  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DB135240()
{
  v1 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DB135288()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB1353D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 22);
  *(a1 + 176) = *(v1 + 22);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return sub_1DB1754EC(v18, v17);
}

uint64_t sub_1DB1354DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DB1355A0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1DB1355D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1DB135608()
{
  if (*v0)
  {
    result = 0x6E6F6974704F7369;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1DB135664()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DB135694()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

sqlite3_backup *Backup.pageCount.getter()
{
  result = *(v0 + 32);
  if (result)
  {
    return sqlite3_backup_pagecount(result);
  }

  return result;
}

sqlite3_backup *Backup.remainingPages.getter()
{
  result = *(v0 + 32);
  if (result)
  {
    return sqlite3_backup_remaining(result);
  }

  return result;
}

uint64_t Backup.__allocating_init(sourceConnection:sourceName:targetConnection:targetName:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  Backup.init(sourceConnection:sourceName:targetConnection:targetName:)(a1, a2, a3, a4);
  return v8;
}

void *Backup.init(sourceConnection:sourceName:targetConnection:targetName:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v8 = *a2;
  v9 = a2[1];
  v35 = *a4;
  v34 = a4[1];
  v4[3] = a1;
  v4[4] = 0;
  v4[2] = a3;
  v10 = *(a3 + 16);

  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);
  if (!v11)
  {
    sub_1DB135B68();
    swift_allocError();
    *v23 = 0xD00000000000001CLL;
    *(v23 + 8) = 0x80000001DB2D14C0;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0;
    swift_willThrow();
LABEL_9:
    os_unfair_lock_unlock((v10 + 24));

    sub_1DB135BBC(v35, v34);
    sub_1DB135BBC(v8, v9);

LABEL_10:

    return v5;
  }

  v33 = v8;
  v12 = *(a1 + 16);
  os_unfair_lock_lock((v12 + 24));
  if (!*(v12 + 16))
  {
    sub_1DB135B68();
    swift_allocError();
    *v24 = 0xD00000000000001CLL;
    *(v24 + 8) = 0x80000001DB2D14C0;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 0;
    swift_willThrow();
    os_unfair_lock_unlock((v12 + 24));
    v8 = v33;
    goto LABEL_9;
  }

  pSource = *(v12 + 16);
  v13 = sub_1DB2BAE24();
  sub_1DB135BD0(v35, v34);
  sub_1DB135BD0(v33, v9);

  v14 = sub_1DB2BAE24();

  v15 = sqlite3_backup_init(v11, (v13 + 32), pSource, (v14 + 32));

  os_unfair_lock_unlock((v12 + 24));
  os_unfair_lock_unlock((v10 + 24));
  sub_1DB135BBC(v35, v34);
  sub_1DB135BBC(v33, v9);
  v5[4] = v15;
  v16 = *(a3 + 16);
  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);
  if (!v17)
  {
    sub_1DB135B68();
    swift_allocError();
    *v26 = 0xD00000000000001CLL;
    *(v26 + 8) = 0x80000001DB2D14C0;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0;
    swift_willThrow();
    os_unfair_lock_unlock((v16 + 24));

    goto LABEL_10;
  }

  v18 = sqlite3_errcode(v17);
  os_unfair_lock_unlock((v16 + 24));
  if (v5[4] || (, v19 = sub_1DB252CB8(v18, a3), v21 > 0xFFFFFFFEFFFFFFFFLL))
  {
  }

  else
  {
    v27 = v19;
    v28 = v20;
    v29 = v22;
    v30 = v21;
    sub_1DB1365E0();
    swift_allocError();
    *v31 = v27;
    v31[1] = v28;
    v31[2] = v30;
    v31[3] = v29;
    swift_willThrow();
    sub_1DB136634();

    sub_1DB136670(v27, v28, v30);
  }

  return v5;
}

unint64_t sub_1DB135B68()
{
  result = qword_1ECC26C70;
  if (!qword_1ECC26C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26C70);
  }

  return result;
}

uint64_t sub_1DB135BBC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1DB135BD0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

char *Backup.step(pagesToCopy:)(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v2 = -1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = sqlite3_backup_step(*(v1 + 32), v2);
  if (v3 == 101)
  {
    result = *(v1 + 32);
    if (result)
    {
      result = sqlite3_backup_finish(result);
      *(v1 + 32) = 0;
    }
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = v3;

    result = sub_1DB252CB8(v6, v5);
    if (v8 < 0xFFFFFFFF00000000)
    {
      v10 = result;
      v11 = v7;
      v12 = v8;
      v13 = v9;
      sub_1DB1365E0();
      swift_allocError();
      *v14 = v10;
      v14[1] = v11;
      v14[2] = v12;
      v14[3] = v13;
      return swift_willThrow();
    }
  }

  return result;
}

Swift::Void __swiftcall Backup.finish()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    sqlite3_backup_finish(v1);
    *(v0 + 32) = 0;
  }
}

void *Backup.deinit()
{
  v1 = v0[4];
  if (v1)
  {
    sqlite3_backup_finish(v1);
    v0[4] = 0;
  }

  v2 = v0[2];

  v3 = v0[3];

  return v0;
}

uint64_t Backup.__deallocating_deinit()
{
  v1 = v0[4];
  if (v1)
  {
    sqlite3_backup_finish(v1);
    v0[4] = 0;
  }

  v2 = v0[2];

  v3 = v0[3];

  return swift_deallocClassInstance();
}

void default argument 0 of Connection.init(_:readonly:protectionType:attributes:)(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t default argument 1 of Connection.init(_:readonly:protectionType:attributes:)()
{
  return 0;
}

{
  return 0;
}

uint64_t default argument 0 of Connection.savepoint(_:block:)()
{
  v0 = sub_1DB2BA944();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB2BA934();
  v5 = _s10Foundation4UUIDV19OnDeviceStorageCoreE13datatypeValueSSvg_0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t default argument 2 of Connection.createAggregation<A>(_:argumentCount:deterministic:initialValue:reduce:result:)()
{
  return 0;
}

{
  return 0;
}

void default argument 4 of ColumnDefinition.init(name:primaryKey:type:nullable:defaultValue:references:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t default argument 1 of Connection.createFunction<A>(_:deterministic:_:)()
{
  return 0;
}

{
  return 0;
}

uint64_t default argument 1 of Connection.createFunction<A, B>(_:deterministic:_:)()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

uint64_t default argument 1 of Connection.createFunction<A, B, C>(_:deterministic:_:)()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

uint64_t default argument 1 of Table.addColumn<A>(_:unique:check:references:_:)()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

uint64_t default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

uint64_t default argument 1 of TableBuilder.column<A>(_:unique:check:references:_:)()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

uint64_t default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:collate:)()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

uint64_t sub_1DB136158(uint64_t a1, id *a2)
{
  result = sub_1DB2BAD74();
  *a2 = 0;
  return result;
}

uint64_t sub_1DB1361D0(uint64_t a1, id *a2)
{
  v3 = sub_1DB2BAD84();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DB136250@<X0>(uint64_t *a1@<X8>)
{
  sub_1DB2BAD94();
  v2 = sub_1DB2BAD64();

  *a1 = v2;
  return result;
}

uint64_t sub_1DB136294(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DB2BAD94();
  v6 = v5;
  if (v4 == sub_1DB2BAD94() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();
  }

  return v9 & 1;
}

uint64_t sub_1DB13631C(uint64_t a1)
{
  v2 = sub_1DB136B08(&qword_1ECC26CC0, type metadata accessor for FileProtectionType);
  v3 = sub_1DB136B08(&qword_1ECC26CC8, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB1363D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB2BAD64();

  *a2 = v5;
  return result;
}

uint64_t sub_1DB136420(uint64_t a1)
{
  v2 = sub_1DB136B08(&qword_1EE13E550, type metadata accessor for FileAttributeKey);
  v3 = sub_1DB136B08(&qword_1ECC26CD0, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DB1364DC()
{
  v1 = *v0;
  v2 = sub_1DB2BAD94();
  v3 = MEMORY[0x1E1283550](v2);

  return v3;
}

uint64_t sub_1DB136518()
{
  v1 = *v0;
  sub_1DB2BAD94();
  sub_1DB2BAE84();
}

uint64_t sub_1DB13656C()
{
  v1 = *v0;
  sub_1DB2BAD94();
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  v2 = sub_1DB2BBA54();

  return v2;
}

unint64_t sub_1DB1365E0()
{
  result = qword_1EE13E840;
  if (!qword_1EE13E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E840);
  }

  return result;
}

uint64_t sub_1DB136634()
{
}

uint64_t sub_1DB136670(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    return sub_1DB136684();
  }

  return result;
}

uint64_t sub_1DB136684()
{
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore6BackupC12DatabaseNameO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DB136748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB13679C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1DB1367FC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Backup.Pages(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Backup.Pages(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1DB136890(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB1368AC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1DB1368DC(uint64_t a1, int a2)
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

uint64_t sub_1DB1368FC(uint64_t result, int a2, int a3)
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

uint64_t sub_1DB136958(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB136978(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_1DB136A2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1DB136B08(unint64_t *a1, void (*a2)(uint64_t))
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

void *Blob.init(bytes:length:)@<X0>(void *result@<X0>, int64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = result;
    if (a2 < 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      v6[2] = a2;
      v6[3] = 2 * v7 - 64;
    }

    result = memcpy(v6 + 4, v5, a2);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v6;
  return result;
}

Swift::String __swiftcall Blob.toHex()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1DB138470(0, v2, 0);
    v3 = v22;
    v4 = (v1 + 32);
    v5 = MEMORY[0x1E69E7508];
    v6 = MEMORY[0x1E69E7558];
    do
    {
      v7 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1DB2BCC40;
      *(v8 + 56) = v5;
      *(v8 + 64) = v6;
      *(v8 + 32) = v7;
      v9 = sub_1DB2BADC4();
      v23 = v3;
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        v21 = v9;
        v14 = v10;
        sub_1DB138470((v11 > 1), v12 + 1, 1);
        v10 = v14;
        v9 = v21;
        v3 = v23;
      }

      *(v3 + 16) = v12 + 1;
      v13 = v3 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB138A00();
  v15 = sub_1DB2BAD24();
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1DB136F24()
{
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](0);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB136F68()
{
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](0);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB136FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
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

uint64_t sub_1DB13704C(uint64_t a1)
{
  v2 = sub_1DB138AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB137088(uint64_t a1)
{
  v2 = sub_1DB138AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Blob.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CF0, &qword_1DB2BCC68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB138AF0();

  sub_1DB2BBA94();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D00, &qword_1DB2BCC70);
  sub_1DB138B90(&qword_1ECC26D08);
  sub_1DB2BB8A4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t Blob.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D10, &qword_1DB2BCC78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB138AF0();
  sub_1DB2BBA84();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D00, &qword_1DB2BCC70);
    sub_1DB138B90(&qword_1ECC26D18);
    sub_1DB2BB7B4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Blob.description.getter()
{
  v3 = *v0;
  countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
  MEMORY[0x1E1283490](countAndFlagsBits);

  MEMORY[0x1E1283490](39, 0xE100000000000000);
  return 10104;
}

uint64_t sub_1DB1374D4()
{
  v3 = *v0;
  countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
  MEMORY[0x1E1283490](countAndFlagsBits);

  MEMORY[0x1E1283490](39, 0xE100000000000000);
  return 10104;
}

uint64_t static Blob.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB1375A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB1375FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DB2BB924() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DB13768C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      if (*(v3 - 2) != *(i - 2) || *(v3 - 1) != *(i - 1))
      {
        v8 = *(v3 - 1);
        v9 = *(i - 1);
        if ((sub_1DB2BB924() & 1) == 0)
        {
          break;
        }
      }

      v10 = sub_1DB13778C(v5, v6);

      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DB13778C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v22 = a1;
    v23 = a2;
    do
    {
      v4 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v6 = *(a1 + v3 + 64);
      v7 = *(a1 + v3 + 80);
      v8 = *(a2 + v3 + 48);
      v9 = *(a2 + v3 + 56);
      v10 = *(a2 + v3 + 64);
      v24 = *(a2 + v3 + 72);
      v25 = *(a1 + v3 + 72);
      v11 = *(a2 + v3 + 80);
      if (*(a1 + v3 + 32) == *(a2 + v3 + 32) && *(a1 + v3 + 40) == *(a2 + v3 + 40))
      {
        if (v4 != v8)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_1DB2BB924();
        result = 0;
        if ((v12 & 1) == 0 || v4 != v8)
        {
          return result;
        }
      }

      if (v5)
      {
        v14 = 0x65726F6E6769;
      }

      else
      {
        v14 = 7697004;
      }

      if (v5)
      {
        v15 = 0xE600000000000000;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      if (v9)
      {
        v16 = 0x65726F6E6769;
      }

      else
      {
        v16 = 7697004;
      }

      if (v9)
      {
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      if (v14 == v16 && v15 == v17)
      {

        if (v25)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v19 = sub_1DB2BB924();

        if ((v19 & 1) == 0)
        {
          goto LABEL_38;
        }

        if (v25)
        {
LABEL_29:
          if (!v24)
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      v20 = v24;
      if (v6 != v10)
      {
        v20 = 1;
      }

      if (v20)
      {
LABEL_38:

        return 0;
      }

LABEL_35:
      sub_1DB13ACDC();
      v21 = sub_1DB2BB184();

      if ((v21 & 1) == 0)
      {
        return 0;
      }

      v3 += 56;
      --v2;
      a1 = v22;
      a2 = v23;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1DB1379E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 8);
      v7 = *v4;
      v8 = *(v3 - 2);
      v9 = *(v3 - 8);
      v10 = *v3;
      v11 = *(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3);
      if (!v11 && (sub_1DB2BB924() & 1) == 0)
      {
        return 0;
      }

      if (v6 >> 6)
      {
        if (v6 >> 6 != 1)
        {
          v13 = v9 & 0xC0;
          result = 0;
          if (v5 | v6 ^ 0x80)
          {
            if (v13 != 128 || v8 != 1)
            {
              return result;
            }
          }

          else if (v13 != 128 || v8)
          {
            return result;
          }

          if (v9 != 128)
          {
            return result;
          }

          goto LABEL_28;
        }

        if ((v9 & 0xC0) != 0x40)
        {
          return 0;
        }

        result = 0;
        if ((v6 & 1) == 0)
        {
LABEL_18:
          if ((v9 & 1) != 0 || v5 != v8)
          {
            return result;
          }

          goto LABEL_28;
        }
      }

      else
      {
        if (v9 >= 0x40)
        {
          return 0;
        }

        result = 0;
        if ((v6 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if ((v9 & 1) == 0)
      {
        return result;
      }

LABEL_28:
      if (v7 != v10)
      {
        return result;
      }

      v4 += 5;
      v3 += 5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1DB137B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1;
    if (a1 != a2)
    {
      v4 = 0;
      do
      {
        v6 = *(v3 + v4 + 40);
        v5 = *(v3 + v4 + 48);
        v7 = *(v3 + v4 + 56);
        v8 = *(v3 + v4 + 64);
        v9 = *(a2 + v4 + 40);
        v10 = *(a2 + v4 + 48);
        v11 = *(a2 + v4 + 56);
        v29 = *(a2 + v4 + 64);
        if (qword_1DB2BCFD8[*(v3 + v4 + 32)] == qword_1DB2BCFD8[*(a2 + v4 + 32)])
        {
          v26 = *(v3 + v4 + 56);
          v27 = *(v3 + v4 + 40);
          v12 = *(v3 + v4 + 64);
          v13 = v3;
          v14 = a2;
          swift_bridgeObjectRelease_n();
          result = 0;
          if (v27 != v9 || v5 != v10 || v26 != v11)
          {
            return result;
          }

          a2 = v14;
          v3 = v13;
          if ((v12 ^ v29))
          {
            return result;
          }
        }

        else
        {
          v18 = *(a2 + v4 + 40);
          v19 = *(a2 + v4 + 48);
          v20 = *(v3 + v4 + 56);
          v21 = *(v3 + v4 + 64);
          v22 = a2;
          v28 = sub_1DB2BB924();
          swift_bridgeObjectRelease_n();
          result = 0;
          if ((v28 & 1) == 0)
          {
            return result;
          }

          v23 = v6 == v18 && v5 == v19;
          if (!v23 || v20 != v11)
          {
            return result;
          }

          a2 = v22;
          v3 = a1;
          if ((v21 ^ v29))
          {
            return result;
          }
        }

        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  return 1;
}

uint64_t sub_1DB137CBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v51 = v2;
  v52 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v38 = v5[4];
    v39 = v8;
    v9 = v5[7];
    v40 = v5[6];
    v41 = v9;
    v10 = v5[1];
    v35[0] = *v5;
    v35[1] = v10;
    v11 = v5[3];
    v36 = v5[2];
    v37 = v11;
    v27 = v35[0];
    v28 = v10;
    v29 = v36;
    v30 = v11;
    v31 = v38;
    v32 = v8;
    v33 = v40;
    v34 = v9;
    v12 = v6[5];
    v45 = v6[4];
    v46 = v12;
    v13 = v6[7];
    v47 = v6[6];
    v48 = v13;
    v14 = v6[1];
    v42[0] = *v6;
    v42[1] = v14;
    v15 = v6[3];
    v43 = v6[2];
    v44 = v15;
    v19 = v42[0];
    v20 = v14;
    v21 = v43;
    v22 = v15;
    v23 = v45;
    v24 = v12;
    v25 = v47;
    v26 = v13;
    sub_1DB13AC2C(v35, v18);
    sub_1DB13AC2C(v42, v18);
    v16 = _s19OnDeviceStorageCore16ColumnDefinitionV2eeoiySbAC_ACtFZ_0(&v27, &v19);
    v49[4] = v23;
    v49[5] = v24;
    v49[6] = v25;
    v49[7] = v26;
    v49[0] = v19;
    v49[1] = v20;
    v49[2] = v21;
    v49[3] = v22;
    sub_1DB13AC88(v49);
    v50[4] = v31;
    v50[5] = v32;
    v50[6] = v33;
    v50[7] = v34;
    v50[0] = v27;
    v50[1] = v28;
    v50[2] = v29;
    v50[3] = v30;
    sub_1DB13AC88(v50);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 8;
    v5 += 8;
  }

  return 1;
}

uint64_t sub_1DB137E28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v25 = a2 + 32;
  v26 = result + 32;
  v29 = *(result + 16);
  while (v3 != v2)
  {
    v4 = v26 + 72 * v3;
    result = *v4;
    v5 = *(v4 + 8);
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    v8 = *(v4 + 32);
    v10 = *(v4 + 40);
    v9 = *(v4 + 48);
    v11 = *(v4 + 56);
    v12 = *(v4 + 64);
    v13 = v25 + 72 * v3;
    v14 = *(v13 + 16);
    v34 = *(v13 + 24);
    v35 = v6;
    v15 = *(v13 + 32);
    v27 = *(v13 + 48);
    v28 = v9;
    v31 = *(v13 + 56);
    v33 = *(v13 + 40);
    v30 = *(v13 + 64);
    v16 = result == *v13 && v5 == *(v13 + 8);
    if (!v16)
    {
      result = sub_1DB2BB924();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 == v14 && v35 == v34)
    {
      v16 = v8 == v15;
      v2 = v29;
      if (!v16)
      {
        return 0;
      }
    }

    else
    {
      v18 = sub_1DB2BB924();
      result = 0;
      if ((v18 & 1) == 0)
      {
        return result;
      }

      v19 = v8 ^ v15;
      v2 = v29;
      if (v19)
      {
        return result;
      }
    }

    v20 = *(v10 + 16);
    if (v20 != *(v33 + 16))
    {
      return 0;
    }

    if (v20)
    {
      v21 = v10 == v33;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = (v10 + 40);
      v23 = (v33 + 40);
      while (v20)
      {
        result = *(v22 - 1);
        if (result != *(v23 - 1) || *v22 != *v23)
        {
          result = sub_1DB2BB924();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v22 += 2;
        v23 += 2;
        if (!--v20)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
      break;
    }

LABEL_26:
    if (v11)
    {
      if (!v31 || (v28 != v27 || v11 != v31) && (sub_1DB2BB924() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v31)
    {
      return 0;
    }

    if (v12)
    {
      if (!v30)
      {
        return 0;
      }

      swift_bridgeObjectRetain_n();

      v32 = sub_1DB266CFC(v12, v30);

      swift_bridgeObjectRelease_n();
      v2 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v30)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB1381A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

uint64_t sub_1DB138264(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      result = sub_1DB2BB104();
      *(result + 16) = v3;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1DB1382E0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v1 = result;
    result = sub_1DB2BB104();
    *(result + 16) = v1;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *sub_1DB13832C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
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

void *sub_1DB1383EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_1DB138470(char *a1, int64_t a2, char a3)
{
  result = sub_1DB1390F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DB138490(size_t a1, int64_t a2, char a3)
{
  result = sub_1DB1391FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DB1384B0(void *a1, int64_t a2, char a3)
{
  result = sub_1DB13975C(a1, a2, a3, *v3, &qword_1ECC26E60, &qword_1DB2BCFC0, &qword_1ECC26E58, &unk_1DB2BD510);
  *v3 = result;
  return result;
}

void *sub_1DB1384F0(void *a1, int64_t a2, char a3)
{
  result = sub_1DB139E3C(a1, a2, a3, *v3, &qword_1ECC26E10, &qword_1DB2BCF70, &qword_1ECC26E18, &qword_1DB2BCF78);
  *v3 = result;
  return result;
}

void *sub_1DB138530(void *a1, int64_t a2, char a3)
{
  result = sub_1DB1393D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB138550(char *a1, int64_t a2, char a3)
{
  result = sub_1DB13A3FC(a1, a2, a3, *v3, &qword_1ECC26DE0, &qword_1DB2BCF48);
  *v3 = result;
  return result;
}

char *sub_1DB138580(char *a1, int64_t a2, char a3)
{
  result = sub_1DB13951C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB1385A0(char *a1, int64_t a2, char a3)
{
  result = sub_1DB13963C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DB1385C0(void *a1, int64_t a2, char a3)
{
  result = sub_1DB13975C(a1, a2, a3, *v3, &qword_1ECC26DC0, &unk_1DB2BFDA0, &qword_1ECC26DC8, &qword_1DB2BCF30);
  *v3 = result;
  return result;
}

char *sub_1DB138600(char *a1, int64_t a2, char a3)
{
  result = sub_1DB1398A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB138620(char *a1, int64_t a2, char a3)
{
  result = sub_1DB1399B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB138640(char *a1, int64_t a2, char a3)
{
  result = sub_1DB139AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB138660(char *a1, int64_t a2, char a3)
{
  result = sub_1DB139BF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB138680(char *a1, int64_t a2, char a3)
{
  result = sub_1DB139D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DB1386A0(void *a1, int64_t a2, char a3)
{
  result = sub_1DB139E3C(a1, a2, a3, *v3, &qword_1ECC26DA8, &unk_1DB2BCF10, &qword_1ECC26DB0, &qword_1DB2C3B10);
  *v3 = result;
  return result;
}

char *sub_1DB1386E0(char *a1, int64_t a2, char a3)
{
  result = sub_1DB139F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB138700(char *a1, int64_t a2, char a3)
{
  result = sub_1DB13A080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB138720(char *a1, int64_t a2, char a3)
{
  result = sub_1DB13A1A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB138740(char *a1, int64_t a2, char a3)
{
  result = sub_1DB13A2C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DB138760(void *a1, int64_t a2, char a3)
{
  result = sub_1DB13A4F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB138780(char *a1, int64_t a2, char a3)
{
  result = sub_1DB13A640(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB1387A0(char *a1, int64_t a2, char a3)
{
  result = sub_1DB13A768(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB1387C0(char *a1, int64_t a2, char a3)
{
  result = sub_1DB13A3FC(a1, a2, a3, *v3, &qword_1ECC26D68, &unk_1DB2BCED0);
  *v3 = result;
  return result;
}

void *sub_1DB1387F0(void *a1, int64_t a2, char a3)
{
  result = sub_1DB13A874(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DB138810(char *a1, int64_t a2, char a3)
{
  result = sub_1DB13A9BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DB138830(void *a1, int64_t a2, char a3)
{
  result = sub_1DB13AAE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DB1388C8(uint64_t (*a1)(void, uint64_t, uint64_t))
{
  v2 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v2;
  if ((result & 1) == 0)
  {
    v4 = *(v2 + 16) + 1;

    return a1(0, v4, 1);
  }

  return result;
}

uint64_t sub_1DB1389B4(uint64_t result, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    return a2(v3 > 1, result + 1, 1);
  }

  return result;
}

uint64_t sub_1DB1389E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 16) = result + 1;
  v5 = v4 + 16 * result;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  return result;
}

unint64_t sub_1DB138A00()
{
  result = qword_1EE13F678;
  if (!qword_1EE13F678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F678);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1DB138AF0()
{
  result = qword_1ECC26CF8;
  if (!qword_1ECC26CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26CF8);
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

uint64_t sub_1DB138B90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC26D00, &qword_1DB2BCC70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB138BFC()
{
  result = qword_1ECC26D20;
  if (!qword_1ECC26D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26D20);
  }

  return result;
}

unint64_t sub_1DB138C50()
{
  result = qword_1ECC26D28;
  if (!qword_1ECC26D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26D28);
  }

  return result;
}

unint64_t sub_1DB138CA8()
{
  result = qword_1ECC26D30;
  if (!qword_1ECC26D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26D30);
  }

  return result;
}

unint64_t sub_1DB138CFC(uint64_t a1)
{
  result = sub_1DB138D24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB138D24()
{
  result = qword_1ECC26D38;
  if (!qword_1ECC26D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26D38);
  }

  return result;
}

unint64_t sub_1DB138D78(uint64_t a1)
{
  *(a1 + 8) = sub_1DB138BFC();
  result = sub_1DB138C50();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DB138DB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1DB138DFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Blob.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Blob.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1DB138F34()
{
  result = qword_1ECC26D40;
  if (!qword_1ECC26D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26D40);
  }

  return result;
}

unint64_t sub_1DB138F8C()
{
  result = qword_1ECC26D48;
  if (!qword_1ECC26D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26D48);
  }

  return result;
}

unint64_t sub_1DB138FE4()
{
  result = qword_1ECC26D50;
  if (!qword_1ECC26D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26D50);
  }

  return result;
}

__n128 sub_1DB139038(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = a1 + 1;
  v4 = v3 + 240 * a1;
  v5 = *(a2 + 208);
  *(v4 + 224) = *(a2 + 192);
  *(v4 + 240) = v5;
  *(v4 + 256) = *(a2 + 224);
  v6 = *(a2 + 144);
  *(v4 + 160) = *(a2 + 128);
  *(v4 + 176) = v6;
  v7 = *(a2 + 176);
  *(v4 + 192) = *(a2 + 160);
  *(v4 + 208) = v7;
  v8 = *(a2 + 80);
  *(v4 + 96) = *(a2 + 64);
  *(v4 + 112) = v8;
  v9 = *(a2 + 112);
  *(v4 + 128) = *(a2 + 96);
  *(v4 + 144) = v9;
  v10 = *(a2 + 16);
  *(v4 + 32) = *a2;
  *(v4 + 48) = v10;
  result = *(a2 + 48);
  *(v4 + 64) = *(a2 + 32);
  *(v4 + 80) = result;
  return result;
}

__n128 sub_1DB139090(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = a1 + 1;
  v4 = v3 + 48 * a1;
  v5 = *(a2 + 16);
  *(v4 + 32) = *a2;
  *(v4 + 48) = v5;
  result = *(a2 + 32);
  *(v4 + 64) = result;
  return result;
}

__n128 sub_1DB1390B8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = a1 + 1;
  v4 = v3 + 88 * a1;
  v5 = *(a2 + 48);
  *(v4 + 64) = *(a2 + 32);
  *(v4 + 80) = v5;
  *(v4 + 96) = *(a2 + 64);
  *(v4 + 112) = *(a2 + 80);
  result = *a2;
  v7 = *(a2 + 16);
  *(v4 + 32) = *a2;
  *(v4 + 48) = v7;
  return result;
}

char *sub_1DB1390F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
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

size_t sub_1DB1391FC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E68, &unk_1DB2BCFC8);
  v10 = *(sub_1DB2BA644() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DB2BA644() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1DB1393D4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB13951C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E30, &unk_1DB2BCF90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB13963C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E50, &unk_1DB2BCFB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DB13975C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1DB1398A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DB8, &unk_1DB2BCF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB1399B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E38, &unk_1DB2BFD80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB139AD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E40, &qword_1DB2BCFA0);
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

char *sub_1DB139BF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E48, &qword_1DB2BCFA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB139D1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA0, &qword_1DB2CEF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DB139E3C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1DB139F70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E08, &qword_1DB2BCF68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1DB13A080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DE8, &qword_1DB2BCF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB13A1A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DF0, &qword_1DB2BCF58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB13A2C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DF8, &qword_1DB2BCF60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB13A3FC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

void *sub_1DB13A4F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DD0, &qword_1DB2BCF38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DD8, &qword_1DB2BCF40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB13A640(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D60, &qword_1DB2BFD90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB13A768(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D58, &unk_1DB2BCEC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DB13A874(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D90, &qword_1DB2BCEF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DB13A9BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DB13AAE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D78, &unk_1DB2BCEE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D80, &qword_1DB2D0A20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1DB13ACDC()
{
  result = qword_1ECC26E00;
  if (!qword_1ECC26E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26E00);
  }

  return result;
}

void Connection.withUnsafeHandleUnchecked<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1DB13B23C((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1DB13ADEC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  switch(result)
  {
    case 9:
      *a2 = 2;
      break;
    case 0x12:
      *a2 = 0;
      break;
    case 0x17:
      *a2 = 1;
      break;
    default:
      sub_1DB2BB4F4();

      v2 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v2);

      result = sub_1DB2BB684();
      __break(1u);
      break;
  }

  return result;
}

uint64_t Connection.Operation.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB13AF64()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB13AFAC()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

BOOL sub_1DB13B058(void *a1, uint64_t *a2)
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

void *sub_1DB13B088@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1DB13B0B4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1DB13B18C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DB13B1B4(void *a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    return a2();
  }

  sub_1DB135B68();
  swift_allocError();
  *v3 = 0xD00000000000001CLL;
  *(v3 + 8) = 0x80000001DB2D14C0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  return swift_willThrow();
}

uint64_t sub_1DB13B23C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1DB13B1B4(a1, *(v1 + 24));
}

void sub_1DB13B25C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t Connection.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Connection.__allocating_init(_:readonly:protectionType:attributes:)(uint64_t *a1, int a2, void *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  Connection.init(_:readonly:protectionType:attributes:)(a1, a2, a3, a4);
  return v8;
}

void Connection.init(_:readonly:protectionType:attributes:)(uint64_t *a1, int a2, void *a3, uint64_t *a4)
{
  v91 = a3;
  v5 = v4;
  v92 = a2;
  v8 = sub_1DB2BAB04();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1DB2BB2B4();
  v100 = *(v86 - 8);
  v11 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1DB2BB284();
  v13 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DB2BA944();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  v94 = *a1;
  v21 = a1[2];
  v22 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E70, &qword_1DB2BD010);
  v23 = swift_allocObject();
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0;
  v5[16] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E78, &qword_1DB2BD018);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = 0;
  v5[7] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E80, &qword_1DB2BD020);
  v25 = swift_allocObject();
  *(v25 + 20) = 0;
  *(v25 + 16) = 0;
  v5[6] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E88, &qword_1DB2BD028);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = 0;
  v5[8] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E90, &qword_1DB2BD030);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = 0;
  v5[9] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E98, &qword_1DB2BD038);
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 16) = 0;
  v5[10] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26EA0, &qword_1DB2BD040);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 16) = 0;
  v5[11] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26EA8, &qword_1DB2BD048);
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 16) = 0;
  v5[12] = v30;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = sub_1DB142E3C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26EB0, &qword_1DB2BD050);
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  *(v33 + 16) = v32;
  v5[13] = v33;
  v34 = sub_1DB142F40(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26EB8, &qword_1DB2BD058);
  v35 = swift_allocObject();
  *(v35 + 24) = 0;
  *(v35 + 16) = v34;
  v5[14] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26EC0, &qword_1DB2BD060);
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 16) = 0;
  v5[2] = v36;
  v5[5] = v22;
  sub_1DB2BA934();
  v37 = _s10Foundation4UUIDV19OnDeviceStorageCoreE13datatypeValueSSvg_0();
  v39 = v38;
  (*(v16 + 8))(v19, v15);
  v5[3] = v37;
  v5[4] = v39;
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_1DB2BB4F4();

  v98 = 0x6E6F697461636F6CLL;
  v99 = 0xE90000000000003DLL;
  v95 = v94;
  v96 = v20;
  v88 = v20;
  v89 = v21;
  v97 = v21;
  v40 = Connection.Location.filename.getter();
  MEMORY[0x1E1283490](v40);

  MEMORY[0x1E1283490](0x6C6E6F646165722CLL, 0xEA00000000003D79);
  if (v92)
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (v92)
  {
    v42 = 0xE400000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  MEMORY[0x1E1283490](v41, v42);

  MEMORY[0x1E1283490](0x656369767265732CLL, 0xE90000000000003DLL);
  if (v22)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (v22)
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x1E1283490](v43, v44);

  MEMORY[0x1E1283490](1029990700, 0xE400000000000000);
  v45 = v5[3];
  v46 = v5[4];

  MEMORY[0x1E1283490](v45, v46);

  v47 = v98;
  v48 = v99;
  v81 = v99;
  v82 = v98;
  v93 = sub_1DB143044();
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_1DB2BB4F4();

  v95 = 0xD000000000000010;
  v96 = 0x80000001DB2D1570;
  MEMORY[0x1E1283490](v47, v48);
  MEMORY[0x1E1283490](93, 0xE100000000000000);
  v95 = MEMORY[0x1E69E7CC0];
  v79 = sub_1DB144778(&qword_1EE13E568, MEMORY[0x1E69E8030]);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26EC8, &qword_1DB2BD068);
  v80 = sub_1DB143090();
  sub_1DB2BB454();
  v77 = *MEMORY[0x1E69E8098];
  v49 = *(v100 + 104);
  v100 += 104;
  v76 = v49;
  v50 = v85;
  v51 = v86;
  v49(v85);
  sub_1DB2BAAF4();
  v5[15] = sub_1DB2BB2D4();
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_1DB2BB4F4();

  v95 = 0xD000000000000015;
  v96 = 0x80000001DB2D1590;
  MEMORY[0x1E1283490](v82, v81);

  MEMORY[0x1E1283490](93, 0xE100000000000000);
  v95 = MEMORY[0x1E69E7CC0];
  sub_1DB2BB454();
  v76(v50, v77, v51);
  v52 = v91;
  sub_1DB2BAAF4();
  v5[17] = sub_1DB2BB2D4();
  v53 = v90;
  NSFileProtectionType.sqliteFlags.getter();
  if (v53)
  {
    sub_1DB1430F4(v94, v88);
  }

  else
  {
    v54 = v94;
    v56 = v88;
    v55 = v89;
    v95 = v94;
    v96 = v88;
    v97 = v89;
    sub_1DB14313C(v52, &v95);
    v57 = v5[2];
    MEMORY[0x1EEE9AC00](v58);
    *(&v75 - 4) = v54;
    *(&v75 - 3) = v56;
    *(&v75 - 2) = v55;
    *(&v75 - 2) = v59;
    os_unfair_lock_lock((v57 + 24));
    sub_1DB1434D0((v57 + 16), &v95);
    os_unfair_lock_unlock((v57 + 24));
    sub_1DB1430F4(v54, v56);
    v60 = v95;

    v61 = sub_1DB252CB8(v60, v5);
    if (v63 <= 0xFFFFFFFEFFFFFFFFLL)
    {
      v68 = v61;
      v69 = v62;
      v70 = v63;
      v71 = v64;
      sub_1DB1365E0();
      v72 = swift_allocError();
      *v73 = v68;
      v73[1] = v69;
      v73[2] = v70;
      v73[3] = v71;
      sub_1DB1434F4(v68, v69, v70);
      sub_1DB15B294();
      MEMORY[0x1E1284A10](v72);
      swift_allocError();
      *v74 = v68;
      v74[1] = v69;
      v74[2] = v70;
      v74[3] = v71;
      swift_willThrow();
    }

    else
    {
      v65 = v5[15];
      v66 = v91;
      if (qword_1EE13F098 != -1)
      {
        swift_once();
      }

      v95 = v5;
      LOBYTE(v96) = 0;
      sub_1DB2BB2A4();
      v67 = v5[17];
      if (qword_1EE13F0A8 != -1)
      {
        swift_once();
      }

      v95 = v5;
      LOBYTE(v96) = 0;
      sub_1DB2BB2A4();
    }
  }
}

uint64_t Connection.Location.filename.getter()
{
  v7 = *v0;
  v8 = *(v0 + 2);
  Connection.Location.fullPath.getter();
  sub_1DB143508();
  v1 = sub_1DB2BB3A4();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 16 + 16 * v2);
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1DB13BEA4@<X0>(sqlite3 **a1@<X0>, int a2@<W4>, int *a3@<X8>)
{
  Connection.Location.fullPath.getter();
  v6 = sub_1DB2BAE24();

  v7 = sqlite3_open_v2((v6 + 32), a1, a2, 0);

  *a3 = v7;
  return result;
}

uint64_t Connection.Location.fullPath.getter()
{
  v1 = sub_1DB2BA644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26ED0, &qword_1DB2BD070);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - v8;
  v10 = sub_1DB2BA6B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0[1];
  if (!v16)
  {
    return 0x3A79726F6D656D3ALL;
  }

  if (v16 == 1)
  {
    return 0;
  }

  v43 = v15;
  v44 = v13;
  v18 = *v0;
  v19 = v0[2];

  v20 = v11;
  v21 = v18;
  v22 = v44;
  sub_1DB2BA6A4();
  if ((*(v20 + 48))(v9, 1, v22) == 1)
  {
    sub_1DB1445E0(v9, &qword_1ECC26ED0, &qword_1DB2BD070);
    return v21;
  }

  v23 = v43;
  (*(v20 + 32))(v43, v9, v22);
  v24 = *(v19 + 16);
  v25 = v20;
  if (!v24)
  {
    goto LABEL_30;
  }

  v42 = v20;
  v26 = sub_1DB2BA654();
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v41 = v27;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1DB138490(0, v24, 0);
  v28 = (v19 + 48);
  v29 = v45;
  do
  {
    v30 = *(v28 - 1);
    v31 = *v28;
    if (v31 <= 2)
    {
      if (!*v28)
      {
        goto LABEL_24;
      }

      if (v31 == 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (*v28 <= 4u)
      {
        if (v31 != 3)
        {
LABEL_23:
          v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          v33 = [v32 description];

          sub_1DB2BAD94();
        }

LABEL_24:
        sub_1DB2BA634();

        goto LABEL_26;
      }

      if (v31 == 5)
      {
        goto LABEL_23;
      }
    }

    v34 = *(v28 - 2);
    sub_1DB2BA634();
LABEL_26:
    v45 = v29;
    v36 = *(v29 + 16);
    v35 = *(v29 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1DB138490(v35 > 1, v36 + 1, 1);
      v29 = v45;
    }

    v28 += 24;
    *(v29 + 16) = v36 + 1;
    (*(v2 + 32))(v29 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v36, v5, v1);
    --v24;
  }

  while (v24);
  v45 = v41;
  sub_1DB1412C8(v29);
  v23 = v43;
  sub_1DB2BA664();
  v22 = v44;
  v25 = v42;
LABEL_30:
  sub_1DB2BA684();
  if (v37)
  {
  }

  else
  {
    v38 = sub_1DB2BA694();
  }

  v39 = MEMORY[0x1E1282C20](v38);
  (*(v25 + 8))(v23, v22);
  return v39;
}

uint64_t Connection.Location.exists.getter()
{
  if (v0[1] < 2)
  {
    return 1;
  }

  v2 = v0[2];
  v3 = *v0;
  v4 = [objc_opt_self() defaultManager];
  Connection.Location.path.getter();
  v5 = sub_1DB2BAD64();

  v6 = [v4 fileExistsAtPath_];

  return v6;
}

uint64_t Connection.Location.path.getter()
{
  v1 = sub_1DB2BA644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26ED0, &qword_1DB2BD070);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - v8;
  v10 = sub_1DB2BA6B4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0[1];
  if (!v15)
  {
    v15 = 0xE800000000000000;
    v16 = 0x3A79726F6D656D3ALL;
    goto LABEL_31;
  }

  if (v15 == 1)
  {
    v16 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_31;
  }

  v42 = v14;
  v16 = *v0;
  v17 = v0[2];
  v18 = v12;

  sub_1DB2BA6A4();
  if ((*(v18 + 48))(v9, 1, v10) == 1)
  {
    sub_1DB1445E0(v9, &qword_1ECC26ED0, &qword_1DB2BD070);
    goto LABEL_31;
  }

  v41 = v18;
  v19 = *(v18 + 32);
  v20 = v42;
  v19(v42, v9, v10);
  v21 = *(v17 + 16);
  if (!v21)
  {
    goto LABEL_30;
  }

  v40 = v10;
  v22 = sub_1DB2BA654();
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v39 = v23;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1DB138490(0, v21, 0);
  v24 = (v17 + 48);
  v25 = v43;
  do
  {
    v26 = *(v24 - 1);
    v27 = *v24;
    if (v27 <= 2)
    {
      if (!*v24)
      {
        goto LABEL_24;
      }

      if (v27 == 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (*v24 <= 4u)
      {
        if (v27 != 3)
        {
LABEL_23:
          v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          v29 = [v28 description];

          sub_1DB2BAD94();
        }

LABEL_24:
        sub_1DB2BA634();

        goto LABEL_26;
      }

      if (v27 == 5)
      {
        goto LABEL_23;
      }
    }

    v30 = *(v24 - 2);
    sub_1DB2BA634();
LABEL_26:
    v43 = v25;
    v32 = *(v25 + 16);
    v31 = *(v25 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1DB138490(v31 > 1, v32 + 1, 1);
      v25 = v43;
    }

    v24 += 24;
    *(v25 + 16) = v32 + 1;
    (*(v2 + 32))(v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v32, v5, v1);
    --v21;
  }

  while (v21);
  v43 = v39;
  sub_1DB1412C8(v25);
  v20 = v42;
  sub_1DB2BA664();
  v10 = v40;
LABEL_30:
  v33 = sub_1DB2BA694();
  v16 = MEMORY[0x1E1282C20](v33);
  v15 = v34;
  (*(v41 + 8))(v20, v10);
LABEL_31:
  v43 = v16;
  v44 = v15;
  sub_1DB143508();
  v35 = sub_1DB2BB3E4();
  if (v36)
  {
    v37 = v35;

    return v37;
  }

  return v16;
}

uint64_t Connection.__allocating_init(_:readonly:protectionType:attributes:)(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t *a5)
{
  v7 = *a5;
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = MEMORY[0x1E69E7CC0];
  v10 = v7;
  v8 = swift_allocObject();
  Connection.init(_:readonly:protectionType:attributes:)(v11, a3, a4, &v10);
  return v8;
}

uint64_t Connection.deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sqlite3_close(*(v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  v10 = *(v0 + 96);

  v11 = *(v0 + 104);

  v12 = *(v0 + 112);

  v13 = *(v0 + 128);

  return v0;
}

uint64_t Connection.__deallocating_deinit()
{
  Connection.deinit();

  return swift_deallocClassInstance();
}

BOOL Connection.readonly.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = sqlite3_db_readonly(*(v1 + 16), 0) == 1;
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

sqlite3_int64 Connection.lastInsertRowid.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  insert_rowid = sqlite3_last_insert_rowid(*(v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  return insert_rowid;
}

uint64_t sub_1DB13CE40(int (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = a1(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  return v4;
}

uint64_t Connection.usesExtendedErrorCodes.getter()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

Swift::Void __swiftcall Connection.setUsesExtendedErrorCodes(_:)(Swift::Bool a1)
{
  v3 = *(v1 + 48);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = a1;
  os_unfair_lock_unlock((v3 + 20));
  v4 = *(v1 + 16);
  os_unfair_lock_lock((v4 + 24));
  sqlite3_extended_result_codes(*(v4 + 16), a1);

  os_unfair_lock_unlock((v4 + 24));
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.execute(_:)(Swift::String a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1DB14355C((v3 + 16), &v16);
  if (v2)
  {
    os_unfair_lock_unlock((v3 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v3 + 24));
    v4 = v16;

    v5 = sub_1DB252CB8(v4, v1);
    if (v7 <= 0xFFFFFFFEFFFFFFFFLL)
    {
      v9 = v5;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      sub_1DB1365E0();
      v13 = swift_allocError();
      *v14 = v9;
      v14[1] = v10;
      v14[2] = v11;
      v14[3] = v12;
      sub_1DB1434F4(v9, v10, v11);
      sub_1DB15B294();
      MEMORY[0x1E1284A10](v13);
      swift_allocError();
      *v15 = v9;
      v15[1] = v10;
      v15[2] = v11;
      v15[3] = v12;
      swift_willThrow();
    }
  }
}

uint64_t sub_1DB13D06C@<X0>(sqlite3 **a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  sub_1DB143044();
  if (qword_1EE13F098 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((v12 & 1) != 0 || v11 != a2)
  {
    v10 = *(a2 + 120);
    result = sub_1DB2BB2C4();
    v8 = v11;
  }

  else
  {
    v6 = *a1;
    v7 = sub_1DB2BAE24();
    v8 = sqlite3_exec(v6, (v7 + 32), 0, 0, 0);
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DB13D1A8@<X0>(sqlite3 **a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DB2BAE24();
  LODWORD(v3) = sqlite3_exec(v3, (v4 + 32), 0, 0, 0);

  *a2 = v3;
  return result;
}

uint64_t Connection.prepare(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  type metadata accessor for Statement();
  swift_allocObject();

  v7 = sub_1DB253534(v6);
  if (v5 && !v3)
  {
    v8 = sub_1DB255E8C(a3);

    return v8;
  }

  return v7;
}

{
  v4 = v3;
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v6);
  if (!v3)
  {
    v4 = sub_1DB255E8C(a3);
  }

  return v4;
}

{
  type metadata accessor for Statement();
  swift_allocObject();

  result = sub_1DB253534(v5);
  if (!v3)
  {
    v7 = Statement.bind(_:)(a3);

    return v7;
  }

  return result;
}

{
  type metadata accessor for Statement();
  swift_allocObject();

  result = sub_1DB253534(v5);
  if (!v3)
  {
    v7 = sub_1DB255E8C(a3);

    sub_1DB254F54();
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292F8, &unk_1DB2CEF90);
    result = swift_allocObject();
    *(result + 16) = sub_1DB2A06E0;
    *(result + 24) = v10;
  }

  return result;
}

uint64_t Connection.run(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1DB13D428(a1, a2, a3);
}

{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v5);
  if (!v3)
  {
    Statement.bind(_:)(a3);
    a3 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);
  }

  return a3;
}

{
  return Connection.run(_:_:)(a1, a2, a3);
}

uint64_t sub_1DB13D428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v5);
  if (!v3)
  {
    sub_1DB255E8C(a3);

    a3 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);
  }

  return a3;
}

uint64_t Connection.vacuum()()
{
  v1 = v0;
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v2);
  if (!v0)
  {
    v3 = MEMORY[0x1E69E7CC0];
    sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

    v1 = Statement.run(_:)(v3);
  }

  return v1;
}

uint64_t Connection.scalar(_:_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  return sub_1DB13D690(a1, a2);
}

{
  type metadata accessor for Statement();
  swift_allocObject();

  result = sub_1DB253534(v5);
  if (!v2)
  {
    Statement.bind(_:)(a1);
    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], a2);
  }

  return result;
}

{
  return Connection.scalar(_:_:)(a1, a2);
}

uint64_t sub_1DB13D690@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for Statement();
  swift_allocObject();

  result = sub_1DB253534(v5);
  if (!v2)
  {
    sub_1DB255E8C(a1);

    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], a2);
  }

  return result;
}

OnDeviceStorageCore::Connection::TransactionMode_optional __swiftcall Connection.TransactionMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Connection.TransactionMode.rawValue.getter()
{
  v1 = 0x54414944454D4D49;
  if (*v0 != 1)
  {
    v1 = 0x564953554C435845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4445525245464544;
  }
}

uint64_t sub_1DB13D8DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x54414944454D4D49;
  if (v2 != 1)
  {
    v3 = 0x564953554C435845;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x4445525245464544;
  }

  if (v2)
  {
    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v6 = 0x54414944454D4D49;
  if (*a2 != 1)
  {
    v6 = 0x564953554C435845;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x4445525245464544;
  }

  if (*a2)
  {
    v8 = 0xE900000000000045;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();
  }

  return v9 & 1;
}

uint64_t sub_1DB13D9D0()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB13DA7C()
{
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB13DB14()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB13DBC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x54414944454D4D49;
  if (v2 != 1)
  {
    v4 = 0x564953554C435845;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x4445525245464544;
  }

  if (!v5)
  {
    v3 = 0xE900000000000045;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t Connection.transaction(_:block:)(unsigned __int8 *a1, void (*a2)(uint64_t))
{
  v4 = *a1;
  sub_1DB2BB4F4();

  v21 = 0x204E49474542;
  v22 = 0xE600000000000000;
  v5 = 0x54414944454D4D49;
  if (v4 != 1)
  {
    v5 = 0x564953554C435845;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x4445525245464544;
  }

  if (v4)
  {
    v7 = 0xE900000000000045;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  MEMORY[0x1E1283490](v6, v7);

  v8 = MEMORY[0x1E1283490](0x4341534E41525420, 0xEC0000004E4F4954);
  v23 = v18;
  MEMORY[0x1EEE9AC00](v8);
  v18[1] = v9;
  v19 = a2;
  sub_1DB143044();
  if (qword_1EE13F098 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((v22 & 1) != 0 || v21 != v2)
  {
    v13 = *(v2 + 120);
    sub_1DB2BB2C4();
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    v11 = v20;
    sub_1DB253534(v10);
    if (v11)
    {
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.run(_:)(v14);

      v19(v15);
      swift_allocObject();

      sub_1DB253534(v16);
      v17 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.run(_:)(v17);
    }
  }
}

uint64_t Connection.savepoint(_:block:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_1DB2B995C(39, 0xE100000000000000);
  strcpy(v15, "SAVEPOINT ");
  BYTE3(v15[1]) = 0;
  HIDWORD(v15[1]) = -369098752;
  MEMORY[0x1E1283490](v6);

  v8 = v15[0];
  v7 = v15[1];
  strcpy(v15, "RELEASE ");
  MEMORY[0x1E1283490](v8, v7);
  strcpy(v15, "ROLLBACK TO ");
  HIWORD(v15[1]) = -5120;
  MEMORY[0x1E1283490](v8, v7);
  v15[3] = v15[1];
  sub_1DB143044();
  if (qword_1EE13F098 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((v15[1] & 1) != 0 || v15[0] != v3)
  {
    v10 = *(v3 + 120);
    sub_1DB2BB2C4();
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    sub_1DB253534(v9);
    if (!v4)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.run(_:)(v12);

      a3(v13);
      swift_allocObject();

      sub_1DB253534(v3);
      v14 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.run(_:)(v14);
    }
  }
}

uint64_t sub_1DB13E50C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  type metadata accessor for Statement();
  swift_allocObject();

  result = sub_1DB253534(v6);
  if (!v4)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

    Statement.run(_:)(v8);

    a4(v9);
    swift_allocObject();

    sub_1DB253534(0);
    v10 = MEMORY[0x1E69E7CC0];
    sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

    Statement.run(_:)(v10);
  }

  return result;
}

Swift::Void __swiftcall Connection.interrupt()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sqlite3_interrupt(*(v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

double Connection.busyTimeout.getter()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

Swift::Void __swiftcall Connection.setBusyTimeout(_:)(Swift::Double a1)
{
  v3 = *(v1 + 56);
  os_unfair_lock_lock((v3 + 24));
  *(v3 + 16) = a1;
  os_unfair_lock_unlock((v3 + 24));
  v4 = *(v1 + 16);
  os_unfair_lock_lock((v4 + 24));
  v5 = a1 * 1000.0;
  if (COERCE__INT64(fabs(a1 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -2147483650.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 2147483650.0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  sqlite3_busy_timeout(*(v4 + 16), v5);

  os_unfair_lock_unlock((v4 + 24));
}

void Connection.busyHandler(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v11[4] = sub_1DB143594;
    v11[5] = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1DB13EA9C;
    v11[3] = &block_descriptor;
    v6 = _Block_copy(v11);
    sub_1DB1335B8(a1);

    v7 = *(v2 + 16);
    os_unfair_lock_lock((v7 + 24));
    sqlite3_busy_handler(*(v7 + 16), sub_1DB13EAEC, v6);
    os_unfair_lock_unlock((v7 + 24));
    v8 = *(v2 + 64);
    os_unfair_lock_lock((v8 + 24));
    _Block_release(*(v8 + 16));
    *(v8 + 16) = v6;
    _Block_copy(v6);
    os_unfair_lock_unlock((v8 + 24));
    sub_1DB1335C8(a1);
    _Block_release(v6);
  }

  else
  {
    v9 = *(v2 + 16);
    os_unfair_lock_lock((v9 + 24));
    sqlite3_busy_handler(*(v9 + 16), 0, 0);
    os_unfair_lock_unlock((v9 + 24));
    v10 = *(v2 + 64);
    os_unfair_lock_lock((v10 + 24));
    _Block_release(*(v10 + 16));
    *(v10 + 16) = 0;

    os_unfair_lock_unlock((v10 + 24));
  }
}

uint64_t sub_1DB13EA9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

void sub_1DB13EAFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v11[4] = sub_1DB14470C;
    v11[5] = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1DB13ECB4;
    v11[3] = &block_descriptor_55;
    v6 = _Block_copy(v11);
    sub_1DB1335B8(a1);

    v7 = *(v2 + 16);
    os_unfair_lock_lock((v7 + 24));
    sqlite3_trace_v2(*(v7 + 16), 1u, sub_1DB13ED08, v6);
    os_unfair_lock_unlock((v7 + 24));
    v8 = *(v2 + 72);
    os_unfair_lock_lock((v8 + 24));
    _Block_release(*(v8 + 16));
    *(v8 + 16) = v6;
    _Block_copy(v6);
    os_unfair_lock_unlock((v8 + 24));
    sub_1DB1335C8(a1);
    _Block_release(v6);
  }

  else
  {
    v9 = *(v2 + 16);
    os_unfair_lock_lock((v9 + 24));
    sqlite3_trace_v2(*(v9 + 16), 0, 0, 0);
    os_unfair_lock_unlock((v9 + 24));
    v10 = *(v2 + 72);
    os_unfair_lock_lock((v10 + 24));
    _Block_release(*(v10 + 16));
    *(v10 + 16) = 0;

    os_unfair_lock_unlock((v10 + 24));
  }
}

uint64_t sub_1DB13ECB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1DB13ED08(int a1, uint64_t a2, sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    v4 = sqlite3_expanded_sql(pStmt);
    if (v4)
    {
      v5 = v4;
      (*(a2 + 16))(a2, v4);
      sqlite3_free(v5);
    }
  }

  return 0;
}

void Connection.updateHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v11[4] = sub_1DB1435DC;
    v11[5] = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1DB13EFB8;
    v11[3] = &block_descriptor_7;
    v6 = _Block_copy(v11);
    sub_1DB1335B8(a1);

    v7 = *(v2 + 16);
    os_unfair_lock_lock((v7 + 24));
    sqlite3_update_hook(*(v7 + 16), sub_1DB13F030, v6);
    os_unfair_lock_unlock((v7 + 24));
    v8 = *(v2 + 80);
    os_unfair_lock_lock((v8 + 24));
    _Block_release(*(v8 + 16));
    *(v8 + 16) = v6;
    _Block_copy(v6);
    os_unfair_lock_unlock((v8 + 24));
    sub_1DB1335C8(a1);
    _Block_release(v6);
  }

  else
  {
    v9 = *(v2 + 16);
    os_unfair_lock_lock((v9 + 24));
    sqlite3_update_hook(*(v9 + 16), 0, 0);
    os_unfair_lock_unlock((v9 + 24));
    v10 = *(v2 + 80);
    os_unfair_lock_lock((v10 + 24));
    _Block_release(*(v10 + 16));
    *(v10 + 16) = 0;

    os_unfair_lock_unlock((v10 + 24));
  }
}

uint64_t sub_1DB13EF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1DB13ADEC(a1, &v13);
  v7 = sub_1DB2BAF04();
  v9 = v8;
  v10 = sub_1DB2BAF04();
  a5(&v13, v7, v9, v10, v11, a4);
}

uint64_t sub_1DB13EFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

uint64_t sub_1DB13F030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3 || !a4)
  {
    return sub_1DB158B68();
  }

  v5 = *(a1 + 16);

  return v5();
}

void Connection.commitHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v11[4] = sub_1DB1435E4;
    v11[5] = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1DB13F258;
    v11[3] = &block_descriptor_13;
    v6 = _Block_copy(v11);
    sub_1DB1335B8(a1);

    v7 = *(v2 + 16);
    os_unfair_lock_lock((v7 + 24));
    sqlite3_commit_hook(*(v7 + 16), sub_1DB13F298, v6);
    os_unfair_lock_unlock((v7 + 24));
    v8 = *(v2 + 88);
    os_unfair_lock_lock((v8 + 24));
    _Block_release(*(v8 + 16));
    *(v8 + 16) = v6;
    _Block_copy(v6);
    os_unfair_lock_unlock((v8 + 24));
    sub_1DB1335C8(a1);
    _Block_release(v6);
  }

  else
  {
    v9 = *(v2 + 16);
    os_unfair_lock_lock((v9 + 24));
    sqlite3_commit_hook(*(v9 + 16), 0, 0);
    os_unfair_lock_unlock((v9 + 24));
    v10 = *(v2 + 88);
    os_unfair_lock_lock((v10 + 24));
    _Block_release(*(v10 + 16));
    *(v10 + 16) = 0;

    os_unfair_lock_unlock((v10 + 24));
  }
}

uint64_t sub_1DB13F258(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

void Connection.rollbackHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v11[4] = sub_1DB143638;
    v11[5] = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1DB13F454;
    v11[3] = &block_descriptor_19;
    v6 = _Block_copy(v11);
    sub_1DB1335B8(a1);

    v7 = *(v2 + 16);
    os_unfair_lock_lock((v7 + 24));
    sqlite3_rollback_hook(*(v7 + 16), sub_1DB13F498, v6);
    os_unfair_lock_unlock((v7 + 24));
    v8 = *(v2 + 96);
    os_unfair_lock_lock((v8 + 24));
    _Block_release(*(v8 + 16));
    *(v8 + 16) = v6;
    _Block_copy(v6);
    os_unfair_lock_unlock((v8 + 24));
    sub_1DB1335C8(a1);
    _Block_release(v6);
  }

  else
  {
    v9 = *(v2 + 16);
    os_unfair_lock_lock((v9 + 24));
    sqlite3_rollback_hook(*(v9 + 16), 0, 0);
    os_unfair_lock_unlock((v9 + 24));
    v10 = *(v2 + 96);
    os_unfair_lock_lock((v10 + 24));
    _Block_release(*(v10 + 16));
    *(v10 + 16) = 0;

    os_unfair_lock_unlock((v10 + 24));
  }
}

uint64_t sub_1DB13F454(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void Connection.createFunction(_:argumentCount:deterministic:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v13 = -1;
  }

  else
  {
    v13 = a3;
    if (a3 < 0)
    {
LABEL_18:
      __break(1u);
      return;
    }
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  *(v14 + 24) = a7;
  v45 = sub_1DB143660;
  v46 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1DB13FD08;
  v44 = &block_descriptor_25;
  v15 = _Block_copy(&aBlock);

  v16 = *(v7 + 16);
  os_unfair_lock_lock((v16 + 24));
  if (v13 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = *(v16 + 16);
  if (a5)
  {
    v18 = 2049;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_1DB2BAE24();
  function_v2 = sqlite3_create_function_v2(v17, (v19 + 32), v13, v18, v15, sub_1DB13FD78, 0, 0, 0);

  os_unfair_lock_unlock((v16 + 24));

  v21 = sub_1DB252CB8(function_v2, v7);
  if (v23 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    aBlock = 0;
    v42 = 0xE000000000000000;
    v34 = v21;
    v35 = v22;
    v36 = v24;
    v37 = v23;
    sub_1DB2BB4F4();

    aBlock = 0xD000000000000019;
    v42 = 0x80000001DB2D1630;
    v38 = sub_1DB1409BC(v34, v35, v37, v36);
    MEMORY[0x1E1283490](v38);

    sub_1DB15B09C(aBlock, v42);

    sub_1DB136670(v34, v35, v37);
    _Block_release(v15);
  }

  else
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26ED8, &unk_1DB2BD078);
    aBlock = v15;
    v25 = *(v7 + 104);
    os_unfair_lock_lock((v25 + 24));
    v26 = (v25 + 16);
    if (!*(*(v25 + 16) + 16) || (sub_1DB141B30(a1, a2), (v27 & 1) == 0))
    {
      v28 = sub_1DB143668(MEMORY[0x1E69E7CC0]);

      v29 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = *v26;
      *v26 = 0x8000000000000000;
      sub_1DB1427E0(v28, a1, a2, isUniquelyReferenced_nonNull_native);

      v31 = *v26;
      *v26 = v40[0];
    }

    v32 = sub_1DB13FED4(v40, a1, a2);
    if (*v33)
    {
      sub_1DB1444CC(&aBlock, v39);
      sub_1DB13FDD0(v39, v13);
    }

    (v32)(v40, 0);
    os_unfair_lock_unlock((v25 + 24));
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }
}

uint64_t sub_1DB13F7FC(sqlite3_context *a1, int a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  sub_1DB13F87C(a2, a3);
  a4(v7);

  sub_1DB13F97C(v7, a1);
  return sub_1DB1445E0(v7, &qword_1ECC26E28, &unk_1DB2C2D70);
}

void sub_1DB13F87C(int a1, uint64_t a2)
{
  if (a1 < 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (a1)
  {
    v3 = a1;
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DB138530(0, a1, 0);
    v4 = 0;
    v5 = v14;
    while (v3 != v4)
    {
      v11 = v4;
      sub_1DB140798(&v11, a2, v12);
      v14 = v5;
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1DB138530((v6 > 1), v7 + 1, 1);
        v5 = v14;
      }

      ++v4;
      *(v5 + 16) = v7 + 1;
      v8 = v5 + 40 * v7;
      v9 = v12[0];
      v10 = v12[1];
      *(v8 + 64) = v13;
      *(v8 + 32) = v9;
      *(v8 + 48) = v10;
      if (v3 == v4)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_10;
  }
}

uint64_t sub_1DB13F97C(uint64_t a1, sqlite3_context *a2)
{
  v4 = sub_1DB2BADE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB1446A4(a1, v19, &qword_1ECC26E28, &unk_1DB2C2D70);
  if (v20)
  {
    sub_1DB1446A4(v19, v18, &qword_1ECC26E28, &unk_1DB2C2D70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
    if (swift_dynamicCast())
    {
      LODWORD(v9) = LODWORD(v16);
      v10 = *(*&v16 + 16);
      if (!(v10 >> 31))
      {
        sqlite3_result_blob(a2, (*&v16 + 32), v10, 0);

LABEL_15:
        __swift_destroy_boxed_opaque_existential_1(v18);
        return sub_1DB1445E0(v19, &qword_1ECC26E28, &unk_1DB2C2D70);
      }

      __break(1u);
    }

    else
    {
      if (swift_dynamicCast())
      {
        sqlite3_result_double(a2, v16);
        goto LABEL_15;
      }

      if (swift_dynamicCast())
      {
        sqlite3_result_int64(a2, *&v16);
        goto LABEL_15;
      }

      if (!swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v18);
        v18[0] = 0;
        v18[1] = 0xE000000000000000;
        sub_1DB2BB4F4();

        v16 = -2.31584178e77;
        v17 = 0x80000001DB2D17E0;
        sub_1DB1446A4(a1, v18, &qword_1ECC26E28, &unk_1DB2C2D70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
        v14 = sub_1DB2BADF4();
        MEMORY[0x1E1283490](v14);

        sub_1DB15B09C(*&v16, v17);

        return sub_1DB1445E0(v19, &qword_1ECC26E28, &unk_1DB2C2D70);
      }

      *v15 = v16;
      v15[1] = v17;
      sub_1DB2BADD4();
      sub_1DB143508();
      v9 = sub_1DB2BB3B4();
      (*(v5 + 8))(v8, v4);
      if (v9 >= 0xFFFFFFFF80000000)
      {
        if (v9 <= 0x7FFFFFFF)
        {
          if (qword_1EE13E998 == -1)
          {
LABEL_14:
            v11 = qword_1EE14C858;
            v12 = sub_1DB2BAE24();

            sqlite3_result_text(a2, (v12 + 32), v9, v11);

            goto LABEL_15;
          }

LABEL_21:
          swift_once();
          goto LABEL_14;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  sqlite3_result_null(a2);
  return sub_1DB1445E0(v19, &qword_1ECC26E28, &unk_1DB2C2D70);
}

uint64_t sub_1DB13FD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

uint64_t sub_1DB13FD78(sqlite3_context *a1)
{
  v1 = *(sqlite3_user_data(a1) + 2);

  return v1();
}

_OWORD *sub_1DB13FDD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1DB144640(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1DB1426B4(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_1DB1445E0(a1, &qword_1ECC26F30, &unk_1DB2BFA90);
    v8 = *v2;
    v9 = sub_1DB141CDC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1DB29E580();
        v14 = v16;
      }

      sub_1DB144640((*(v14 + 56) + 32 * v11), v17);
      sub_1DB142394(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_1DB1445E0(v17, &qword_1ECC26F30, &unk_1DB2BFA90);
  }

  return result;
}

void (*sub_1DB13FED4(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1DB142048(v6, a2, a3);
  return sub_1DB13FF5C;
}

void sub_1DB13FF5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

Swift::Bool __swiftcall Connection.hasFunction(_:)(Swift::String a1)
{
  v2 = *(v1 + 104);
  os_unfair_lock_lock(v2 + 6);
  sub_1DB143784(&v2[4], &v4);
  os_unfair_lock_unlock(v2 + 6);
  return v4;
}

void Connection.createCollation(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v28[4] = sub_1DB1437DC;
  v28[5] = v9;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1DB14030C;
  v28[3] = &block_descriptor_31;
  v10 = _Block_copy(v28);

  v11 = *(v4 + 16);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  v13 = sub_1DB2BAE24();
  LODWORD(v12) = sqlite3_create_collation_v2(v12, (v13 + 32), 1, v10, sub_1DB140368, 0);

  os_unfair_lock_unlock((v11 + 24));

  v14 = sub_1DB252CB8(v12, v4);
  if (v16 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    sub_1DB1365E0();
    v25 = swift_allocError();
    *v26 = v21;
    v26[1] = v22;
    v26[2] = v23;
    v26[3] = v24;
    sub_1DB1434F4(v21, v22, v23);
    sub_1DB15B294();
    MEMORY[0x1E1284A10](v25);
    swift_allocError();
    *v27 = v21;
    v27[1] = v22;
    v27[2] = v23;
    v27[3] = v24;
    swift_willThrow();
  }

  else
  {
    v18 = *(v4 + 112);
    os_unfair_lock_lock((v18 + 24));

    _Block_copy(v10);
    v19 = *(v18 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = *(v18 + 16);
    *(v18 + 16) = 0x8000000000000000;
    sub_1DB142928(v10, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v18 + 16) = v28[0];
    os_unfair_lock_unlock((v18 + 24));
  }

  _Block_release(v10);
}

uint64_t sub_1DB14026C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_1DB2BAF14();
  v6 = v5;
  v7 = sub_1DB2BAF14();
  v9 = a3(v4, v6, v7, v8);

  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB14030C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

void *Connection.backup(databaseName:usingConnection:andDatabaseName:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1[1];
  v6 = *a3;
  v7 = a3[1];
  v10[0] = *a1;
  v10[1] = v5;
  v9[0] = v6;
  v9[1] = v7;
  type metadata accessor for Backup();
  swift_allocObject();
  sub_1DB135BD0(v10[0], v5);
  sub_1DB135BD0(v6, v7);

  return Backup.init(sourceConnection:sourceName:targetConnection:targetName:)(v3, v10, a2, v9);
}

uint64_t Connection.currentClientContext.getter()
{
  v1 = *(v0 + 128);
  swift_getKeyPath();

  os_unfair_lock_lock(v1 + 12);
  sub_1DB1437EC();
  os_unfair_lock_unlock(v1 + 12);
}

void Connection.setClientContext(_:)()
{
  v1 = *(v0 + 128);
  os_unfair_lock_lock(v1 + 12);
  sub_1DB14381C(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);
}

Swift::Void __swiftcall Connection.clearClientContext()()
{
  v1 = *(v0 + 128);
  os_unfair_lock_lock((v1 + 48));
  sub_1DB1445E0(v1 + 16, &qword_1ECC26EE0, &qword_1DB2BD0A0);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;

  os_unfair_lock_unlock((v1 + 48));
}

uint64_t sub_1DB140588(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F48, &qword_1DB2BD540);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DB2BAAE4();
  *a2 = result;
  return result;
}

uint64_t Connection.isOnClientContextQueue.getter()
{
  sub_1DB143044();
  if (qword_1EE13F0A8 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  return (v2 == v0) & ~v3;
}

const char *Connection.description.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  result = sqlite3_db_filename(*(v1 + 16), 0);
  if (result)
  {
    v3 = sub_1DB2BAF04();
    os_unfair_lock_unlock((v1 + 24));
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

const char *sub_1DB1406BC()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  result = sqlite3_db_filename(*(v1 + 16), 0);
  if (result)
  {
    v3 = sub_1DB2BAF04();
    os_unfair_lock_unlock((v1 + 24));
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Connection.Location.description.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  return Connection.Location.fullPath.getter();
}

uint64_t sub_1DB14075C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  return Connection.Location.fullPath.getter();
}

void sub_1DB140798(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (!a2 || (v5 = *(a2 + 8 * v4)) == 0)
  {
    sub_1DB2BB4F4();

    v15 = 0xD000000000000026;
    v16 = 0x80000001DB2D1790;
LABEL_9:
    v7 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v7);

    sub_1DB15B09C(v15, v16);

    goto LABEL_10;
  }

  v6 = sqlite3_value_type(*(a2 + 8 * v4));
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v14 = sqlite3_value_int64(v5);
      *(a3 + 24) = MEMORY[0x1E69E7360];
      *(a3 + 32) = &protocol witness table for Int64;
      *a3 = v14;
      return;
    }

    if (v6 == 2)
    {
      v8 = sqlite3_value_double(v5);
      *(a3 + 24) = MEMORY[0x1E69E63B0];
      *(a3 + 32) = &protocol witness table for Double;
      *a3 = v8;
      return;
    }

    goto LABEL_20;
  }

  if (v6 == 3)
  {
    if (sqlite3_value_text(v5))
    {
      v9 = sub_1DB2BAF14();
      *(a3 + 24) = MEMORY[0x1E69E6158];
      *(a3 + 32) = &protocol witness table for String;
      *a3 = v9;
      *(a3 + 8) = v10;
      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (v6 == 4)
  {
    v11 = sqlite3_value_blob(v5);
    if (v11)
    {
      v12 = v11;
      v13 = sqlite3_value_bytes(v5);
      *(a3 + 24) = &type metadata for Blob;
      *(a3 + 32) = sub_1DB138CA8();
      Blob.init(bytes:length:)(v12, v13, a3);
      return;
    }

    goto LABEL_22;
  }

  if (v6 != 5)
  {
LABEL_20:
    sub_1DB2BB4F4();

    v15 = 0xD000000000000018;
    v16 = 0x80000001DB2D17C0;
    goto LABEL_9;
  }

LABEL_10:
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
}

uint64_t sub_1DB1409BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v8);

  MEMORY[0x1E1283490](8285, 0xE200000000000000);
  v9 = sub_1DB2189C0(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xD000000000000014;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v11, v12);

  return 91;
}

uint64_t sub_1DB140AC0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 8u)
  {
    v3 = qword_1DB2BD560[a1];
  }

  v4 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v4);

  MEMORY[0x1E1283490](8285, 0xE200000000000000);
  v5 = JWT.Error.errorDescription.getter();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v7, v8);

  return 91;
}

uint64_t sub_1DB140C44()
{
  v0 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v0);

  MEMORY[0x1E1283490](8285, 0xE200000000000000);
  v1 = AccessCredential.Error.errorDescription.getter();
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v3, v4);

  return 91;
}

uint64_t sub_1DB140DEC()
{
  v7 = *(v0 + 48) + 601;
  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](8285, 0xE200000000000000);
  v2 = sub_1DB1592D4();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v4, v5);

  return 91;
}

uint64_t sub_1DB140ED8()
{
  v5 = *v0;
  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](8285, 0xE200000000000000);
  if (v0[2])
  {
    v2 = v0[1];
    v3 = v0[2];
  }

  else
  {
    v3 = 0x80000001DB2D1750;
    v2 = 0xD000000000000014;
  }

  MEMORY[0x1E1283490](v2, v3);

  return 91;
}

uint64_t sub_1DB140FBC()
{
  v7 = *v0;
  v8 = v0[1];
  *(v0 + 32);
  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](8285, 0xE200000000000000);
  v2 = DaemonError.errorDescription.getter();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v4, v5);

  return 91;
}

uint64_t sub_1DB1411C8()
{
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v7 = *(v0 + 48) + 101;
  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](8285, 0xE200000000000000);
  v2 = ClientError.errorDescription.getter();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v4, v5);

  return 91;
}

uint64_t sub_1DB1412C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1DB157014(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1DB2BA644();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DB1413F4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DB1572F0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1DB141510(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DB157420(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DB141640(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1DB141760(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DB157C38(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DB141858(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1DB157EA8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DB141944(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DB157900(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DB141A38(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DB158410(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1DB141B30(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  v6 = sub_1DB2BBA54();

  return sub_1DB141D20(a1, a2, v6);
}

unint64_t sub_1DB141BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  sub_1DB2BAE84();
  v10 = sub_1DB2BBA54();

  return sub_1DB141DD8(a1, a2, a3, a4, v10);
}

unint64_t sub_1DB141C48(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DB2BAD94();
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  v4 = sub_1DB2BBA54();

  return sub_1DB141ED8(a1, v4);
}

unint64_t sub_1DB141CDC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1DB2BB9F4();

  return sub_1DB141FDC(a1, v4);
}

unint64_t sub_1DB141D20(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DB2BB924())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DB141DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1DB2BB924() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1DB2BB924() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1DB141ED8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DB2BAD94();
      v9 = v8;
      if (v7 == sub_1DB2BAD94() && v9 == v10)
      {
        break;
      }

      v12 = sub_1DB2BB924();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1DB141FDC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void (*sub_1DB142048(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1DB142360(v8);
  v8[9] = sub_1DB142154(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1DB1420F4;
}

void sub_1DB1420F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1DB142154(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1DB141B30(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1DB29E6FC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1DB29D434(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1DB141B30(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1DB2BB984();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_1DB1422AC;
}

void sub_1DB1422AC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1DB29E4EC(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1DB144650(*(v7 + 48) + 16 * v6);
    sub_1DB142504(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_1DB142360(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DB142388;
}

uint64_t sub_1DB142394(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB2BB474() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      v13 = *v12;
      result = sub_1DB2BB9F4();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v11 + 8 * v3);
          if (v3 != v6 || v17 >= v12 + 1)
          {
            *v17 = *v12;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 32 * v3);
          v20 = (v18 + 32 * v6);
          if (v3 != v6 || v19 >= v20 + 2)
          {
            v9 = v20[1];
            *v19 = *v20;
            v19[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

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

uint64_t sub_1DB142504(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB2BB474() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DB2BBA04();

      sub_1DB2BAE84();
      v13 = sub_1DB2BBA54();

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

_OWORD *sub_1DB1426B4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DB141CDC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1DB29E580();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1DB29D1BC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1DB141CDC(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1DB2BB984();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v21);

    return sub_1DB144640(a1, v21);
  }

  else
  {

    return sub_1DB29E484(v9, a2, a1, v20);
  }
}

uint64_t sub_1DB1427E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DB141B30(a2, a3);
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
      sub_1DB29E6FC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DB29D434(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1DB141B30(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1DB2BB984();
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
    sub_1DB29E4EC(v11, a2, a3, a1, v22);
  }
}

void sub_1DB142928(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DB141B30(a2, a3);
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
      sub_1DB29E86C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DB29D448(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1DB141B30(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_1DB2BB984();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    _Block_release(v24);
  }

  else
  {
    sub_1DB29E4EC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1DB142A70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1DB141B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1DB29E9DC();
      result = v19;
      goto LABEL_8;
    }

    sub_1DB29D6F0(v16, a4 & 1);
    v20 = *v5;
    result = sub_1DB141B30(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1DB2BB984();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_1DB29E4EC(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t sub_1DB142BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1DB141BA8(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1DB29ECAC();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1DB29DEE4(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_1DB141BA8(a2, a3, a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      sub_1DB2BB984();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_1DB29E534(v15, a2, a3, a4, a5, a1, v26);
}

unint64_t sub_1DB142D18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F20, &unk_1DB2D0A40);
    v3 = sub_1DB2BB6C4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1DB141BA8(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1DB142E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F58, &unk_1DB2BD550);
    v3 = sub_1DB2BB6C4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DB141B30(v5, v6);
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

unint64_t sub_1DB142F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F50, &qword_1DB2BD548);
    v3 = sub_1DB2BB6C4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      _Block_copy(v7);
      result = sub_1DB141B30(v5, v6);
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

unint64_t sub_1DB143044()
{
  result = qword_1EE13E560;
  if (!qword_1EE13E560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE13E560);
  }

  return result;
}

unint64_t sub_1DB143090()
{
  result = qword_1EE13E608;
  if (!qword_1EE13E608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC26EC8, &qword_1DB2BD068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E608);
  }

  return result;
}

uint64_t sub_1DB1430F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_1DB14313C(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  if (v2 < 2)
  {
    goto LABEL_18;
  }

  v3 = *a2;
  v4 = *(a2 + 16);
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  v36 = v3;
  v37 = v2;
  v38 = v4;
  Connection.Location.path.getter();
  v7 = sub_1DB2BAD64();

  v8 = [v6 fileExistsAtPath_];

  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = [v5 defaultManager];
  v37 = v2;
  v38 = v4;
  Connection.Location.path.getter();
  v10 = sub_1DB2BAD64();

  v36 = 0;
  v11 = [v9 attributesOfItemAtPath:v10 error:&v36];

  v12 = v36;
  if (!v11)
  {
    v22 = v36;
    sub_1DB2BA7C4();

    swift_willThrow();
    goto LABEL_18;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1DB144778(&qword_1EE13E550, type metadata accessor for FileAttributeKey);
  v13 = sub_1DB2BACD4();
  v14 = v12;

  if (!*(v13 + 16) || (v15 = sub_1DB141C48(*MEMORY[0x1E696A3A0]), (v16 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_1DB1444CC(*(v13 + 56) + 32 * v15, &v36);

  type metadata accessor for FileProtectionType(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v17 = *MEMORY[0x1E696A3A8];
    goto LABEL_11;
  }

  v17 = v35;
LABEL_11:
  v18 = sub_1DB2BAD94();
  v20 = v19;
  if (v18 == sub_1DB2BAD94() && v20 == v21)
  {
  }

  else
  {
    v23 = sub_1DB2BB924();

    if ((v23 & 1) == 0)
    {
      v24 = sub_1DB2BAD94();
      v26 = v25;
      v36 = v3;
      v37 = v2;
      v38 = v4;
      v27 = Connection.Location.path.getter();
      v29 = v28;
      v30 = sub_1DB2BAD94();
      v32 = v31;
      sub_1DB135B68();
      swift_allocError();
      *v33 = v24;
      *(v33 + 8) = v26;
      *(v33 + 16) = v27;
      *(v33 + 24) = v29;
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      *(v33 + 48) = 7;
      swift_willThrow();
    }
  }

LABEL_18:
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DB1434D0@<X0>(sqlite3 **a1@<X0>, int *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_1DB13BEA4(a1, *(v2 + 40), a2);
}

uint64_t sub_1DB1434F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    return sub_1DB136634();
  }

  return result;
}

unint64_t sub_1DB143508()
{
  result = qword_1EE13F6D0;
  if (!qword_1EE13F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F6D0);
  }

  return result;
}

uint64_t sub_1DB14355C@<X0>(sqlite3 **a1@<X0>, int *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1DB13D06C(a1, v2[2], a2);
}

uint64_t sub_1DB143594(int a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1) & 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB1435E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  return 0;
}

uint64_t sub_1DB143638()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1DB143668(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F38, &qword_1DB2BD530);
    v3 = sub_1DB2BB6C4();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1DB1446A4(i, &v11, &qword_1ECC26F40, &qword_1DB2BD538);
      v5 = v11;
      result = sub_1DB141CDC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DB144640(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1DB143784@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(*result + 16))
  {
    result = sub_1DB141B30(*(v2 + 16), *(v2 + 24));
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4 & 1;
  return result;
}