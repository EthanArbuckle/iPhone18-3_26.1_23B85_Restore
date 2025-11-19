uint64_t sub_1DAF64F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAF668E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAF64F40(uint64_t a1)
{
  v2 = sub_1DAF66D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF64F7C(uint64_t a1)
{
  v2 = sub_1DAF66D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAF64FB8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v25 = *(a1 + 4);
  v6 = *(a1 + 56);
  v26[0] = *(a1 + 40);
  v26[1] = v6;
  v26[2] = *(a1 + 72);
  v27 = *(a1 + 11);
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  v12 = *(a2 + 56);
  v28[0] = *(a2 + 40);
  v28[1] = v12;
  v13 = 0xE500000000000000;
  v14 = 0x33765F4345;
  v15 = *(a2 + 72);
  if (v2 != 1)
  {
    v14 = 0x48535F33765F4345;
  }

  v28[2] = *(a2 + 72);
  if (v2 != 1)
  {
    v13 = 0xE800000000000000;
  }

  if (v2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0x765F4343455F5645;
  }

  if (v2)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0xEF312E4E53412D31;
  }

  v29 = *(a2 + 11);
  v18 = 0xE500000000000000;
  v19 = 0x33765F4345;
  if (v7 != 1)
  {
    v19 = 0x48535F33765F4345;
    v18 = 0xE800000000000000;
  }

  if (v7)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0x765F4343455F5645;
  }

  if (v7)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0xEF312E4E53412D31;
  }

  if (v16 == v20 && v17 == v21)
  {
  }

  else
  {
    v22 = sub_1DB09E254();

    if ((v22 & 1) == 0)
    {
LABEL_30:
      v23 = 0;
      return v23 & 1;
    }
  }

  if ((v3 != v8 || v4 != v9) && (sub_1DB09E254() & 1) == 0 || (v5 != v10 || v25 != v11) && (sub_1DB09E254() & 1) == 0)
  {
    goto LABEL_30;
  }

  v23 = sub_1DAF65BFC(v26, v28);
  return v23 & 1;
}

double sub_1DAF651A4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DAF66A0C(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1DAF65208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAF6527C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DAF652E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAF65358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAF653C8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  result = sub_1DAF64E64();
  *a3 = result;
  return result;
}

uint64_t sub_1DAF65404@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  result = sub_1DAF1A294(*v2);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1DAF6543C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1DAF1A294(*v1);
}

uint64_t sub_1DAF65450@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_1DAF64E64();
  *a2 = result;
  return result;
}

uint64_t sub_1DAF65484@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1DAF35018();
  *a2 = result;
  return result;
}

uint64_t sub_1DAF654B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAF6550C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t EncryptedDataContainer.data.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *EncryptedDataContainer.deinit()
{
  v1 = v0[3];

  v2 = v0[6];
  v3 = v0[8];
  v4 = v0[10];
  v5 = v0[12];
  v6 = v0[14];
  v7 = v0[15];

  return v0;
}

uint64_t EncryptedDataContainer.__deallocating_deinit()
{
  EncryptedDataContainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t EncryptedDataContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 96);
  type metadata accessor for EncryptedDataContainer.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1DB09E1A4();
  v24[0] = *(v7 - 8);
  v8 = *(v24[0] + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v24 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E434();
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v38 = 0;
  v15 = v24[1];
  sub_1DB09E104();
  if (v15)
  {
    return (*(v24[0] + 8))(v11, v7);
  }

  v17 = v24[0];
  v18 = *(v2 + 80);
  v19 = *(v2 + 48);
  v33 = *(v2 + 64);
  v34 = v18;
  v20 = *(v2 + 80);
  v21 = *(v2 + 112);
  v35 = *(v2 + 96);
  v36 = v21;
  v22 = *(v2 + 48);
  v32[0] = *(v2 + 32);
  v32[1] = v22;
  v28 = v33;
  v29 = v20;
  v23 = *(v2 + 112);
  v30 = v35;
  v31 = v23;
  v26 = v32[0];
  v27 = v19;
  v37 = 1;
  sub_1DAF65F2C(v32, v25);
  sub_1DAF65F64();
  sub_1DB09E194();
  v25[2] = v28;
  v25[3] = v29;
  v25[4] = v30;
  v25[5] = v31;
  v25[0] = v26;
  v25[1] = v27;
  sub_1DAF65FB8(v25);
  return (*(v17 + 8))(v11, v7);
}

uint64_t EncryptedDataContainer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  EncryptedDataContainer.init(from:)(a1);
  return v2;
}

uint64_t EncryptedDataContainer.init(from:)(uint64_t *a1)
{
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  type metadata accessor for EncryptedDataContainer.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1DB09E0E4();
  v20 = *(v7 - 8);
  v21 = v7;
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E414();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v20;
    v13 = v21;
    LOBYTE(v22) = 0;
    *(v1 + 16) = sub_1DB09E044();
    *(v1 + 24) = v15;
    v28 = 1;
    sub_1DAF65FE8();
    sub_1DB09E0C4();
    (*(v14 + 8))(v11, v13);
    v17 = v25;
    *(v1 + 64) = v24;
    *(v1 + 80) = v17;
    v18 = v27;
    *(v1 + 96) = v26;
    *(v1 + 112) = v18;
    v19 = v23;
    *(v1 + 32) = v22;
    *(v1 + 48) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1DAF65BAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = EncryptedDataContainer.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAF65BFC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_1DB09E254();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_1DB09E254();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v18)
  {
    return 0;
  }

  if (a1[4] != a2[4] || v17 != v18)
  {
    v19 = a1;
    v20 = a1[4];
    v21 = a2;
    v22 = sub_1DB09E254();
    a2 = v21;
    v23 = v22;
    a1 = v19;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  v24 = a1[6];
  v25 = a2[6];
  result = (v24 | v25) == 0;
  if (v24 && v25)
  {

    return sub_1DB07E9D8(v24, v25);
  }

  return result;
}

uint64_t sub_1DAF65D58(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0x33765F4345;
  if (v3 != 1)
  {
    v5 = 0x48535F33765F4345;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x765F4343455F5645;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEF312E4E53412D31;
  }

  v9 = 0xE500000000000000;
  v10 = 0x33765F4345;
  if (*a2 != 1)
  {
    v10 = 0x48535F33765F4345;
    v9 = 0xE800000000000000;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x765F4343455F5645;
  }

  if (*a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xEF312E4E53412D31;
  }

  if (v6 == v11 && v7 == v12)
  {
  }

  else
  {
    v13 = sub_1DB09E254();

    if ((v13 & 1) == 0)
    {
LABEL_28:
      v20 = 0;
      return v20 & 1;
    }
  }

  v14 = *(a1 + 3);
  v15 = *(a1 + 4);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  if ((*(a1 + 1) != *(a2 + 8) || *(a1 + 2) != *(a2 + 16)) && (sub_1DB09E254() & 1) == 0 || (v14 != v16 || v15 != v17) && (sub_1DB09E254() & 1) == 0)
  {
    goto LABEL_28;
  }

  v18 = *(a1 + 56);
  v24[0] = *(a1 + 40);
  v24[1] = v18;
  v24[2] = *(a1 + 72);
  v25 = *(a1 + 11);
  v19 = *(a2 + 56);
  v22[0] = *(a2 + 40);
  v22[1] = v19;
  v22[2] = *(a2 + 72);
  v23 = *(a2 + 88);
  v20 = sub_1DAF65BFC(v24, v22);
  return v20 & 1;
}

unint64_t sub_1DAF65F64()
{
  result = qword_1EE302D80;
  if (!qword_1EE302D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D80);
  }

  return result;
}

unint64_t sub_1DAF65FE8()
{
  result = qword_1ECC0E610;
  if (!qword_1ECC0E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E610);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1DAF660FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1DAF66144(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAF66200()
{
  v0 = sub_1DB09E004();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAF6624C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E660, &qword_1DB0A3118);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF67320();
  sub_1DB09E414();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1DB09E084();
    v12 = 1;
    sub_1DB09E084();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_1DAF66430(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001DB0C3070 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DB0C3090 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0C30B0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DB0C30D0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1DB09E254();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DAF665A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E668, &qword_1DB0A3120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF67374();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v32 = 0;
  v12 = sub_1DB09E044();
  v14 = v13;
  v26 = v12;
  v31 = 1;
  v15 = sub_1DB09E044();
  v27 = v16;
  v24 = v15;
  v30 = 2;
  v23 = sub_1DB09E044();
  v25 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  v29 = 3;
  sub_1DAF673C8(&qword_1EE301928);
  sub_1DB09E074();
  (*(v6 + 8))(v10, v5);
  v18 = v28;

  v19 = v27;

  v20 = v25;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  *a2 = v26;
  a2[1] = v14;
  v22 = v23;
  a2[2] = v24;
  a2[3] = v19;
  a2[4] = v22;
  a2[5] = v20;
  a2[6] = v18;
  return result;
}

uint64_t sub_1DAF668E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001DB0C3030 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656572674179656BLL && a2 == 0xEC000000746E656DLL || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6710379 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1DB09E254();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DAF66A0C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E620, &qword_1DB0A2D50);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v33, v7);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF66D28();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = v5;
  LOBYTE(v34) = 0;
  sub_1DAF66EB0();
  v12 = v33;
  sub_1DB09E0C4();
  v13 = v40;
  LOBYTE(v34) = 1;
  sub_1DAF66F04();
  sub_1DB09E0C4();
  v29 = v42;
  v30 = v40;
  v31 = v43;
  v32 = v41;
  v56 = 2;
  sub_1DAF66F58();
  sub_1DB09E0C4();
  (*(v11 + 8))(v9, v12);
  v33 = v52;
  v27 = *(&v53 + 1);
  v28 = v53;
  v25 = *(&v54 + 1);
  v26 = v54;
  v23 = *(&v55 + 1);
  v24 = v55;
  LOBYTE(v34) = v13;
  v15 = v29;
  v14 = v30;
  v16 = v31;
  v17 = v32;
  *(&v34 + 1) = v30;
  *&v35 = v32;
  *(&v35 + 1) = v29;
  *&v36 = v31;
  *(&v36 + 1) = v52;
  v37 = v53;
  v38 = v54;
  v39 = v55;
  sub_1DAF65F2C(&v34, &v40);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  LOBYTE(v40) = v13;
  v41 = v14;
  v42 = v17;
  v43 = v15;
  v44 = v16;
  v45 = v33;
  v46 = v28;
  v47 = v27;
  v48 = v26;
  v49 = v25;
  v50 = v24;
  v51 = v23;
  result = sub_1DAF65FB8(&v40);
  v19 = v37;
  a2[2] = v36;
  a2[3] = v19;
  v20 = v39;
  a2[4] = v38;
  a2[5] = v20;
  v21 = v35;
  *a2 = v34;
  a2[1] = v21;
  return result;
}

unint64_t sub_1DAF66D28()
{
  result = qword_1EE302D98;
  if (!qword_1EE302D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D98);
  }

  return result;
}

unint64_t sub_1DAF66D7C()
{
  result = qword_1EE301EA8;
  if (!qword_1EE301EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EA8);
  }

  return result;
}

unint64_t sub_1DAF66DD0()
{
  result = qword_1EE3028F8;
  if (!qword_1EE3028F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3028F8);
  }

  return result;
}

unint64_t sub_1DAF66E5C()
{
  result = qword_1EE301A00;
  if (!qword_1EE301A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301A00);
  }

  return result;
}

unint64_t sub_1DAF66EB0()
{
  result = qword_1ECC0E628;
  if (!qword_1ECC0E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E628);
  }

  return result;
}

unint64_t sub_1DAF66F04()
{
  result = qword_1ECC0E630;
  if (!qword_1ECC0E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E630);
  }

  return result;
}

unint64_t sub_1DAF66F58()
{
  result = qword_1ECC0E638;
  if (!qword_1ECC0E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E638);
  }

  return result;
}

uint64_t sub_1DAF66FEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DAF67048(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAF670C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DAF6710C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DAF67170()
{
  result = qword_1ECC0E640;
  if (!qword_1ECC0E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E640);
  }

  return result;
}

unint64_t sub_1DAF671C8()
{
  result = qword_1ECC0E648;
  if (!qword_1ECC0E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E648);
  }

  return result;
}

unint64_t sub_1DAF67220()
{
  result = qword_1EE302D88;
  if (!qword_1EE302D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D88);
  }

  return result;
}

unint64_t sub_1DAF67278()
{
  result = qword_1EE302D90;
  if (!qword_1EE302D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D90);
  }

  return result;
}

unint64_t sub_1DAF672CC()
{
  result = qword_1EE301EA0;
  if (!qword_1EE301EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301EA0);
  }

  return result;
}

unint64_t sub_1DAF67320()
{
  result = qword_1EE302910;
  if (!qword_1EE302910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302910);
  }

  return result;
}

unint64_t sub_1DAF67374()
{
  result = qword_1EE301A18[0];
  if (!qword_1EE301A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE301A18);
  }

  return result;
}

uint64_t sub_1DAF673C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E448, &qword_1DB0A3110);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WebServiceMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WebServiceMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAF67598()
{
  result = qword_1ECC0E670;
  if (!qword_1ECC0E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E670);
  }

  return result;
}

unint64_t sub_1DAF675F0()
{
  result = qword_1ECC0E678;
  if (!qword_1ECC0E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E678);
  }

  return result;
}

unint64_t sub_1DAF67648()
{
  result = qword_1EE301A08;
  if (!qword_1EE301A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301A08);
  }

  return result;
}

unint64_t sub_1DAF676A0()
{
  result = qword_1EE301A10;
  if (!qword_1EE301A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301A10);
  }

  return result;
}

unint64_t sub_1DAF676F8()
{
  result = qword_1EE302900;
  if (!qword_1EE302900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302900);
  }

  return result;
}

unint64_t sub_1DAF67750()
{
  result = qword_1EE302908;
  if (!qword_1EE302908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302908);
  }

  return result;
}

id sub_1DAF677C8()
{
  type metadata accessor for ODIiCloudAccountManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    result = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  }

  *(v0 + 112) = result;
  *(v0 + 120) = 0;
  qword_1EE300EF8 = v0;
  return result;
}

uint64_t static ODIiCloudAccountManager.shared.getter()
{
  if (qword_1EE300EF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DAF678AC(uint64_t a1, uint64_t a2)
{
  v3[111] = v2;
  v3[105] = a2;
  v3[99] = a1;
  v4 = sub_1DB09CBF4();
  v3[112] = v4;
  v5 = *(v4 - 8);
  v3[113] = v5;
  v6 = *(v5 + 64) + 15;
  v3[114] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF67974, 0, 0);
}

uint64_t sub_1DAF67974()
{
  v1 = v0[111];
  v2 = v0[105];
  v3 = swift_allocObject();
  v0[115] = v3;
  *(v3 + 16) = &unk_1DB0A3360;
  *(v3 + 24) = v1;

  swift_asyncLet_begin();
  v4 = sub_1DB09CB84();
  [v4 mutableCopy];

  sub_1DB09DCE4();
  swift_unknownObjectRelease();
  sub_1DAF684B8();
  if (swift_dynamicCast())
  {
    v5 = v0[114];
    v6 = v0[93];
    v0[116] = v6;
    [v6 ak_addClientInfoHeader];
    [v6 ak_addDeviceUDIDHeader];
    sub_1DB09CBA4();

    return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 91, sub_1DAF67B54, v0 + 94);
  }

  else
  {
    sub_1DAF68504();
    v0[118] = swift_allocError();
    *v7 = 2;
    swift_willThrow();

    return MEMORY[0x1EEE6DEB0](v0 + 2, v0 + 91, sub_1DAF67D08, v0 + 82);
  }
}

uint64_t sub_1DAF67B54()
{
  *(v1 + 936) = v0;
  if (v0)
  {
    v2 = sub_1DAF67D94;
  }

  else
  {
    v2 = sub_1DAF67B88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF67B88()
{
  v1 = v0[116];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[99];
  v6 = v0[91];
  v7 = v0[92];

  sub_1DB09CBD4();

  (*(v3 + 32))(v5, v2, v4);

  return MEMORY[0x1EEE6DEB0](v0 + 2, v0 + 91, sub_1DAF67C7C, v0 + 106);
}

uint64_t sub_1DAF67C98()
{
  v1 = v0[115];
  v2 = v0[114];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DAF67D24()
{
  v1 = v0[118];
  v2 = v0[115];
  v3 = v0[114];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAF67D94()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 728, sub_1DAF67E2C, v0 + 800);
}

uint64_t sub_1DAF67E48()
{
  v1 = v0[117];
  v2 = v0[115];
  v3 = v0[114];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAF67EB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF67F4C;

  return sub_1DAF68FA0(1);
}

uint64_t sub_1DAF67F4C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DAF6805C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF680EC;

  return sub_1DAF67EB8();
}

uint64_t sub_1DAF680EC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1DAF681F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DAF682E4;

  return v6();
}

uint64_t sub_1DAF682E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_1DAF68400(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAF63DEC;

  return sub_1DAF681F8(a1, v5);
}

unint64_t sub_1DAF684B8()
{
  result = qword_1EE3009A8;
  if (!qword_1EE3009A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE3009A8);
  }

  return result;
}

unint64_t sub_1DAF68504()
{
  result = qword_1ECC0E680;
  if (!qword_1ECC0E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E680);
  }

  return result;
}

uint64_t sub_1DAF68558()
{
  v1[45] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E688, &qword_1DB0A3380);
  v1[46] = v2;
  v3 = *(v2 - 8);
  v1[47] = v3;
  v4 = *(v3 + 64) + 15;
  v1[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF68624, v0, 0);
}

uint64_t sub_1DAF68624()
{
  v1 = v0[45];
  v2 = *(v1 + 120);
  if (v2)
  {
LABEL_4:
    v0[49] = v2;
    v5 = v0[47];
    v21 = v0[48];
    v6 = v0[46];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E690, &unk_1DB0A3388);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    v8 = *MEMORY[0x1E6959AA0];
    v0[40] = sub_1DB09D6C4();
    v0[41] = v9;
    v10 = v2;
    sub_1DB09DDB4();
    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = 1;
    v11 = *MEMORY[0x1E6959A90];
    v0[42] = sub_1DB09D6C4();
    v0[43] = v12;
    sub_1DB09DDB4();
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    *(inited + 144) = &unk_1F56C9970;
    sub_1DAF3E9C8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E340, &qword_1DB0A02C8);
    swift_arrayDestroy();
    v20 = *(v1 + 112);
    v13 = v10;
    v14 = sub_1DB09D604();
    v0[50] = v14;

    v0[2] = v0;
    v0[7] = v0 + 44;
    v0[3] = sub_1DAF689E4;
    swift_continuation_init();
    v0[39] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 36);
    type metadata accessor for ACAccountCredentialRenewResult(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    sub_1DB09D994();
    (*(v5 + 32))(boxed_opaque_existential_0, v21, v6);
    v0[32] = MEMORY[0x1E69E9820];
    v0[33] = 1107296256;
    v0[34] = sub_1DAF68EFC;
    v0[35] = &block_descriptor_2;
    [v20 renewCredentialsForAccount:v13 options:v14 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v6);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  v3 = [*(v1 + 112) aida_accountForPrimaryiCloudAccount];
  v4 = *(v1 + 120);
  *(v1 + 120) = v3;

  v2 = *(v1 + 120);
  if (v2)
  {
    v1 = v0[45];
    goto LABEL_4;
  }

  sub_1DAF68504();
  swift_allocError();
  *v16 = 0;
  swift_willThrow();
  v17 = v0[48];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1DAF689E4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 408) = v3;
  v4 = *(v1 + 360);
  if (v3)
  {
    v5 = sub_1DAF68E78;
  }

  else
  {
    v5 = sub_1DAF68B04;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DAF68B04()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);

  if (v2 == 2)
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DB09D4B4();
    __swift_project_value_buffer(v15, qword_1EE30A128);
    v11 = sub_1DB09D494();
    v12 = sub_1DB09DB54();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_23;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "GrandSlamRenewal-Failed";
LABEL_17:
    v16 = v12;
    v17 = v11;
    v18 = v13;
    v19 = 2;
    goto LABEL_22;
  }

  if (v2 == 1)
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v10 = sub_1DB09D4B4();
    __swift_project_value_buffer(v10, qword_1EE30A128);
    v11 = sub_1DB09D494();
    v12 = sub_1DB09DB54();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_23;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "GrandSlamRenewal-Rejected";
    goto LABEL_17;
  }

  if (v2)
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB09D4B4();
    __swift_project_value_buffer(v20, qword_1EE30A128);
    v11 = sub_1DB09D494();
    v21 = sub_1DB09DB74();
    if (!os_log_type_enabled(v11, v21))
    {
      goto LABEL_23;
    }

    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v2;
    v14 = "GrandSlamRenewal-UnexpectedResultType: %ld";
    v16 = v21;
    v17 = v11;
    v18 = v13;
    v19 = 12;
LABEL_22:
    _os_log_impl(&dword_1DAF16000, v17, v16, v14, v18, v19);
    MEMORY[0x1E1281810](v13, -1, -1);
LABEL_23:
    v22 = *(v0 + 392);

    sub_1DAF68504();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();

    v24 = *(v0 + 384);

    v9 = *(v0 + 8);
    goto LABEL_24;
  }

  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DB09D4B4();
  __swift_project_value_buffer(v3, qword_1EE30A128);
  v4 = sub_1DB09D494();
  v5 = sub_1DB09DB54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DAF16000, v4, v5, "GrandSlamRenewal-Success", v6, 2u);
    MEMORY[0x1E1281810](v6, -1, -1);
  }

  v7 = *(v0 + 384);
  v8 = *(v0 + 392);

  v9 = *(v0 + 8);
LABEL_24:

  return v9();
}

uint64_t sub_1DAF68E78()
{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[49];
  swift_willThrow();

  v4 = v0[51];
  v5 = v0[48];

  v6 = v0[1];

  return v6();
}

void sub_1DAF68EFC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E688, &qword_1DB0A3380);
    sub_1DB09D9A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E688, &qword_1DB0A3380);
    sub_1DB09D9B4();
  }
}

uint64_t sub_1DAF68FA0(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 136) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF68FC4, v1, 0);
}

uint64_t sub_1DAF68FC4()
{
  v48 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 120);
  if (v2 || (v3 = [*(v1 + 112) aida_accountForPrimaryiCloudAccount], v4 = *(v1 + 120), *(v1 + 120) = v3, v4, (v2 = *(v1 + 120)) != 0))
  {
    *(v0 + 56) = v2;
    v5 = v2;
    v6 = [v5 aida_alternateDSID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1DB09D6C4();
      v10 = v9;

      *(v0 + 64) = v8;
      *(v0 + 72) = v10;
      v11 = sub_1DB09D6B4();
      v12 = [v5 aida:v11 tokenWithExpiryCheckForService:?];

      if (v12)
      {
        v13 = sub_1DB09D6C4();
        v15 = v14;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1DB0A0500;
        v17 = MEMORY[0x1E69E6158];
        *(v16 + 56) = MEMORY[0x1E69E6158];
        v18 = sub_1DAF4DC24();
        *(v16 + 32) = v8;
        *(v16 + 40) = v10;
        *(v16 + 96) = v17;
        *(v16 + 104) = v18;
        *(v16 + 64) = v18;
        *(v16 + 72) = v13;
        *(v16 + 80) = v15;
        v19 = sub_1DB09D704();
        v21 = v20;

        v22 = *(v0 + 8);

        return v22(v19, v21);
      }

      else
      {
        v26 = swift_task_alloc();
        *(v0 + 80) = v26;
        *v26 = v0;
        v26[1] = sub_1DAF694A4;
        v27 = *(v0 + 48);

        return sub_1DAF68558();
      }
    }

    sub_1DAF68504();
    v24 = swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }

  else
  {
    sub_1DAF68504();
    v24 = swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }

  *(v0 + 96) = v24;
  if (*(v0 + 136) == 1)
  {
    v29 = *(v0 + 48);
    v30 = [*(v29 + 112) aida_accountForPrimaryiCloudAccount];
    v31 = *(v29 + 120);
    *(v29 + 120) = v30;

    v32 = swift_task_alloc();
    *(v0 + 104) = v32;
    *v32 = v0;
    v32[1] = sub_1DAF699AC;
    v33 = *(v0 + 48);

    return sub_1DAF68FA0(0);
  }

  else
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v34 = sub_1DB09D4B4();
    __swift_project_value_buffer(v34, qword_1EE30A128);
    v35 = v24;
    v36 = sub_1DB09D494();
    v37 = sub_1DB09DB64();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 136315138;
      swift_getErrorValue();
      v41 = *(v0 + 16);
      v40 = *(v0 + 24);
      v42 = *(v0 + 32);
      v43 = sub_1DB09E324();
      v45 = sub_1DB015E84(v43, v44, &v47);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_1DAF16000, v36, v37, "Error getting Auth Header %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1E1281810](v39, -1, -1);
      MEMORY[0x1E1281810](v38, -1, -1);
    }

    swift_willThrow();
    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_1DAF694A4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1DAF69B54;
  }

  else
  {
    v6 = sub_1DAF695D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAF695D0()
{
  v41 = v0;
  v1 = *(v0 + 56);
  v2 = sub_1DB09D6B4();
  v3 = [v1 aida:v2 tokenWithExpiryCheckForService:?];

  v4 = *(v0 + 72);
  if (v3)
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = sub_1DB09D6C4();
    v9 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB0A0500;
    v11 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1DAF4DC24();
    *(v10 + 32) = v6;
    *(v10 + 40) = v4;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = v7;
    *(v10 + 80) = v9;
    v13 = sub_1DB09D704();
    v15 = v14;

    v16 = *(v0 + 8);

    return v16(v13, v15);
  }

  else
  {
    v18 = *(v0 + 56);
    v19 = *(v0 + 72);

    sub_1DAF68504();
    v20 = swift_allocError();
    *v21 = 0;
    swift_willThrow();

    *(v0 + 96) = v20;
    if (*(v0 + 136) == 1)
    {
      v22 = *(v0 + 48);
      v23 = [*(v22 + 112) aida_accountForPrimaryiCloudAccount];
      v24 = *(v22 + 120);
      *(v22 + 120) = v23;

      v25 = swift_task_alloc();
      *(v0 + 104) = v25;
      *v25 = v0;
      v25[1] = sub_1DAF699AC;
      v26 = *(v0 + 48);

      return sub_1DAF68FA0(0);
    }

    else
    {
      if (qword_1EE301DC0 != -1)
      {
        swift_once();
      }

      v27 = sub_1DB09D4B4();
      __swift_project_value_buffer(v27, qword_1EE30A128);
      v28 = v20;
      v29 = sub_1DB09D494();
      v30 = sub_1DB09DB64();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40 = v32;
        *v31 = 136315138;
        swift_getErrorValue();
        v34 = *(v0 + 16);
        v33 = *(v0 + 24);
        v35 = *(v0 + 32);
        v36 = sub_1DB09E324();
        v38 = sub_1DB015E84(v36, v37, &v40);

        *(v31 + 4) = v38;
        _os_log_impl(&dword_1DAF16000, v29, v30, "Error getting Auth Header %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x1E1281810](v32, -1, -1);
        MEMORY[0x1E1281810](v31, -1, -1);
      }

      swift_willThrow();
      v39 = *(v0 + 8);

      return v39();
    }
  }
}

uint64_t sub_1DAF699AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  v6[14] = v2;

  v9 = v6[6];
  if (v2)
  {
    v10 = sub_1DAF69DC4;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    v10 = sub_1DAF69AEC;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DAF69AEC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1DAF69B54()
{
  v24 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  v3 = *(v0 + 88);
  *(v0 + 96) = v3;
  if (*(v0 + 136) == 1)
  {
    v4 = *(v0 + 48);
    v5 = [*(v4 + 112) aida_accountForPrimaryiCloudAccount];
    v6 = *(v4 + 120);
    *(v4 + 120) = v5;

    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_1DAF699AC;
    v8 = *(v0 + 48);

    return sub_1DAF68FA0(0);
  }

  else
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v10 = sub_1DB09D4B4();
    __swift_project_value_buffer(v10, qword_1EE30A128);
    v11 = v3;
    v12 = sub_1DB09D494();
    v13 = sub_1DB09DB64();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v17 = *(v0 + 16);
      v16 = *(v0 + 24);
      v18 = *(v0 + 32);
      v19 = sub_1DB09E324();
      v21 = sub_1DB015E84(v19, v20, &v23);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_1DAF16000, v12, v13, "Error getting Auth Header %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E1281810](v15, -1, -1);
      MEMORY[0x1E1281810](v14, -1, -1);
    }

    swift_willThrow();
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1DAF69DC4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ODIiCloudAccountManager.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAF69EA4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAF62CC4;

  return sub_1DAF678AC(a1, a2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t dispatch thunk of AccountRequestHeaderProvider.applyAuthorisationHeaders(toRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DAF63DEC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ODIiCloudAccountManager.applyAuthorisationHeaders(toRequest:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DAF63DEC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ODIiCloudAccountManager.renewToken()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DAF63DEC;

  return v6();
}

unint64_t sub_1DAF6A38C()
{
  result = qword_1ECC0E698;
  if (!qword_1ECC0E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E698);
  }

  return result;
}

void sub_1DAF6A3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A0, &qword_1DB0A3608);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = aBlock - v12;
  v14 = [objc_allocWithZone(GzVCsVtcKNcQqqNF) init];
  (*(v9 + 16))(v13, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  aBlock[4] = sub_1DAF6CD0C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF6A68C;
  aBlock[3] = &block_descriptor_36;
  v17 = _Block_copy(aBlock);

  [v14 MypqGKKWznx4xnYa:a2 l8OCYbP9LFIvnTwG:a5 ygOPXTiKN0J02x0j:v17];
  _Block_release(v17);
}

uint64_t sub_1DAF6A5C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, id a8, uint64_t a9)
{
  if (a8)
  {
    v9 = a8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A0, &qword_1DB0A3608);
    return sub_1DB09D9A4();
  }

  else
  {
    sub_1DAF4ED88(a1, a2);
    sub_1DAF4ED88(a3, a4);
    sub_1DAF4ED88(a5, a6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A0, &qword_1DB0A3608);
    return sub_1DB09D9B4();
  }
}

uint64_t sub_1DAF6A68C(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5, void *a6)
{
  v9 = a2;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {

    v12 = v9;
    v9 = sub_1DB09D034();
    v14 = v13;

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v14 = 0xF000000000000000;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = a3;
  a3 = sub_1DB09D034();
  v17 = v16;

  if (a4)
  {
LABEL_4:
    v18 = a4;
    a4 = sub_1DB09D034();
    v20 = v19;

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0xF000000000000000;
LABEL_8:
  v21 = a6;
  v11(v9, v14, a3, v17, a4, v20, a5, a6);

  sub_1DAF4AC40(a4, v20);
  sub_1DAF4AC40(a3, v17);
  sub_1DAF4AC40(v9, v14);
}

uint64_t AccountStateUpdater.registerICloudLogin()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v0[18] = v1;
  v2 = *(v1 - 8);
  v0[19] = v2;
  v3 = *(v2 + 64) + 15;
  v0[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF6A8A4, 0, 0);
}

uint64_t sub_1DAF6A8A4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = [objc_allocWithZone(ODNServices) init];
  v1[21] = v7;
  v1[2] = v1;
  v1[3] = sub_1DAF6AA70;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF6AC68;
  v1[13] = &block_descriptor_3;
  [v7 registerICloudLoginWithCompletion_];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAF6AA70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1DAF6ABEC;
  }

  else
  {
    v3 = sub_1DAF6AB80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAF6AB80()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAF6ABEC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

void sub_1DAF6AC68(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
    sub_1DB09D9A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
    sub_1DB09D9B4();
  }
}

uint64_t AccountStateUpdater.unregisterICloudLogin()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v0[18] = v1;
  v2 = *(v1 - 8);
  v0[19] = v2;
  v3 = *(v2 + 64) + 15;
  v0[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF6ADD8, 0, 0);
}

uint64_t sub_1DAF6ADD8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = [objc_allocWithZone(ODNServices) init];
  v1[21] = v7;
  v1[2] = v1;
  v1[3] = sub_1DAF6AFA4;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF6AC68;
  v1[13] = &block_descriptor_4;
  [v7 unregisterICloudLoginWithCompletion_];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAF6AFA4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1DAF6CE20;
  }

  else
  {
    v3 = sub_1DAF6CE08;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t ASDPersistenceCommand.save(files:)(uint64_t a1)
{
  v1[18] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = sub_1DB09D1D4();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF6B1EC, 0, 0);
}

uint64_t sub_1DAF6B1EC()
{
  v1 = *(v0 + 144);
  *(v0 + 208) = [objc_allocWithZone(ODNServices) init];
  v2 = *(v1 + 32);
  *(v0 + 288) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v6 = 0;
  if (!v5)
  {
LABEL_6:
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= (((1 << *(v0 + 288)) + 63) >> 6))
      {
        v20 = *(v0 + 200);
        v21 = *(v0 + 192);
        v22 = *(v0 + 168);
        v23 = *(v0 + 144);

        v24 = *(v0 + 8);

        return v24();
      }

      v7 = *(v0 + 144);
      v5 = *(v7 + 8 * v8 + 64);
      ++v6;
      if (v5)
      {
        v6 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  while (1)
  {
    v7 = *(v0 + 144);
LABEL_10:
    *(v0 + 216) = v5;
    *(v0 + 224) = v6;
    v9 = (v6 << 10) | (16 * __clz(__rbit64(v5)));
    v10 = (*(v7 + 48) + v9);
    v11 = *v10;
    *(v0 + 232) = *v10;
    v12 = v10[1];
    *(v0 + 240) = v12;
    v13 = (*(v7 + 56) + v9);
    v14 = *v13;
    *(v0 + 248) = *v13;
    v15 = v13[1];
    *(v0 + 256) = v15;
    v16 = v12 >> 62;
    if ((v12 >> 62) <= 1)
    {
      break;
    }

    if (v16 == 2)
    {
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      v19 = v17 - v18;
      if (__OFSUB__(v17, v18))
      {
        goto LABEL_43;
      }

      goto LABEL_20;
    }

LABEL_21:
    v5 &= v5 - 1;
    sub_1DAF40780(v11, v12);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (!v16)
  {
    if (BYTE6(v12) == 16)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (__OFSUB__(HIDWORD(v11), v11))
  {
    goto LABEL_42;
  }

  v19 = HIDWORD(v11) - v11;
LABEL_20:
  sub_1DAF40674(v11, v12);
  if (v19 != 16)
  {
    goto LABEL_21;
  }

LABEL_26:
  if (v16 == 2)
  {
    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v53 = *(v0 + 192);
    sub_1DAF40674(v11, v12);
    sub_1DAF40674(v14, v15);
    BYTE5(v52) = BYTE5(v12);
    BYTE4(v52) = BYTE4(v12);
    BYTE3(v52) = BYTE3(v12);
    BYTE2(v52) = BYTE2(v12);
    LOWORD(v52) = v12;
    goto LABEL_38;
  }

  if (v11 > v11 >> 32)
  {
    goto LABEL_44;
  }

  sub_1DAF40674(v11, v12);
  sub_1DAF40674(v14, v15);
  v26 = sub_1DB09CD44();
  if (!v26)
  {
LABEL_49:
    v51 = sub_1DB09CD64();
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v51);
  }

  v27 = v26;
  v28 = sub_1DB09CD74();
  if (__OFSUB__(v11, v28))
  {
    goto LABEL_46;
  }

  v29 = (v11 - v28 + v27);
  sub_1DB09CD64();
  if (v29)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_33:
  v30 = *(v11 + 16);
  sub_1DAF40674(v11, v12);
  sub_1DAF40674(v14, v15);
  v31 = sub_1DB09CD44();
  if (!v31)
  {
    goto LABEL_47;
  }

  v32 = v31;
  v33 = sub_1DB09CD74();
  if (__OFSUB__(v30, v33))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    sub_1DB09CD64();
    goto LABEL_48;
  }

  v29 = (v30 - v33 + v32);
  sub_1DB09CD64();
  if (!v29)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_36:
  v34 = *(v0 + 192);
  v35 = v29[7];
  v36 = v29[6];
  v37 = v29[5];
  v38 = v29[4];
  v39 = v29[3];
  v40 = v29[2];
  v41 = v29[1];
  v42 = *v29;
  v52 = *(v29 + 1);
LABEL_38:
  sub_1DB09D1A4();
  v43 = *(v0 + 200);
  v56 = *(v0 + 208);
  v45 = *(v0 + 184);
  v44 = *(v0 + 192);
  v46 = *(v0 + 176);
  v55 = *(v0 + 168);
  v47 = *(v0 + 160);
  v54 = *(v0 + 152);
  sub_1DAF40780(v11, v12);
  (*(v45 + 32))(v43, v44, v46);
  sub_1DAF40674(v11, v12);
  sub_1DAF40674(v14, v15);
  sub_1DAF40780(v11, v12);
  v48 = sub_1DB09D004();
  *(v0 + 264) = v48;
  sub_1DAF40780(v14, v15);
  sub_1DB09D174();
  v49 = sub_1DB09D6B4();
  *(v0 + 272) = v49;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1DAF6B7B8;
  swift_continuation_init();
  *(v0 + 136) = v54;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v47 + 32))(boxed_opaque_existential_0, v55, v54);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DAF6AC68;
  *(v0 + 104) = &block_descriptor_8;
  [v56 cacheData:v48 forKey:v49 andCategory:0 completion:v52];
  (*(v47 + 8))(boxed_opaque_existential_0, v54);
  v51 = v0 + 16;

  return MEMORY[0x1EEE6DEC8](v51);
}

uint64_t sub_1DAF6B7B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_1DAF6BE90;
  }

  else
  {
    v3 = sub_1DAF6B8C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAF6B8C8()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  sub_1DAF40780(*(v0 + 232), *(v0 + 240));
  sub_1DAF40780(v3, v4);
  (*(v7 + 8))(v5, v6);

  v8 = *(v0 + 224);
  v9 = (*(v0 + 216) - 1) & *(v0 + 216);
  if (!v9)
  {
LABEL_3:
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v11 >= (((1 << *(v0 + 288)) + 63) >> 6))
      {
        v23 = *(v0 + 200);
        v24 = *(v0 + 192);
        v25 = *(v0 + 168);
        v26 = *(v0 + 144);

        v27 = *(v0 + 8);

        return v27();
      }

      v10 = *(v0 + 144);
      v9 = *(v10 + 8 * v11 + 64);
      ++v8;
      if (v9)
      {
        v8 = v11;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  while (1)
  {
    v10 = *(v0 + 144);
LABEL_7:
    *(v0 + 216) = v9;
    *(v0 + 224) = v8;
    v12 = (v8 << 10) | (16 * __clz(__rbit64(v9)));
    v13 = (*(v10 + 48) + v12);
    v14 = *v13;
    *(v0 + 232) = *v13;
    v15 = v13[1];
    *(v0 + 240) = v15;
    v16 = (*(v10 + 56) + v12);
    v17 = *v16;
    *(v0 + 248) = *v16;
    v18 = v16[1];
    *(v0 + 256) = v18;
    v19 = v15 >> 62;
    if ((v15 >> 62) <= 1)
    {
      break;
    }

    if (v19 == 2)
    {
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      v22 = v20 - v21;
      if (__OFSUB__(v20, v21))
      {
        goto LABEL_40;
      }

      goto LABEL_17;
    }

LABEL_18:
    v9 &= v9 - 1;
    sub_1DAF40780(v14, v15);
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  if (!v19)
  {
    if (BYTE6(v15) == 16)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (__OFSUB__(HIDWORD(v14), v14))
  {
    goto LABEL_39;
  }

  v22 = HIDWORD(v14) - v14;
LABEL_17:
  sub_1DAF40674(v14, v15);
  if (v22 != 16)
  {
    goto LABEL_18;
  }

LABEL_23:
  if (v19 == 2)
  {
    goto LABEL_30;
  }

  if (v19 != 1)
  {
    v56 = *(v0 + 192);
    sub_1DAF40674(v14, v15);
    sub_1DAF40674(v17, v18);
    BYTE5(v55) = BYTE5(v15);
    BYTE4(v55) = BYTE4(v15);
    BYTE3(v55) = BYTE3(v15);
    BYTE2(v55) = BYTE2(v15);
    LOWORD(v55) = v15;
    goto LABEL_35;
  }

  if (v14 > v14 >> 32)
  {
    goto LABEL_41;
  }

  sub_1DAF40674(v14, v15);
  sub_1DAF40674(v17, v18);
  v29 = sub_1DB09CD44();
  if (!v29)
  {
LABEL_46:
    v54 = sub_1DB09CD64();
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v54);
  }

  v30 = v29;
  v31 = sub_1DB09CD74();
  if (__OFSUB__(v14, v31))
  {
    goto LABEL_43;
  }

  v32 = (v14 - v31 + v30);
  sub_1DB09CD64();
  if (v32)
  {
    goto LABEL_33;
  }

  __break(1u);
LABEL_30:
  v33 = *(v14 + 16);
  sub_1DAF40674(v14, v15);
  sub_1DAF40674(v17, v18);
  v34 = sub_1DB09CD44();
  if (!v34)
  {
    goto LABEL_44;
  }

  v35 = v34;
  v36 = sub_1DB09CD74();
  if (__OFSUB__(v33, v36))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    sub_1DB09CD64();
    goto LABEL_45;
  }

  v32 = (v33 - v36 + v35);
  sub_1DB09CD64();
  if (!v32)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_33:
  v37 = *(v0 + 192);
  v38 = v32[7];
  v39 = v32[6];
  v40 = v32[5];
  v41 = v32[4];
  v42 = v32[3];
  v43 = v32[2];
  v44 = v32[1];
  v45 = *v32;
  v55 = *(v32 + 1);
LABEL_35:
  sub_1DB09D1A4();
  v46 = *(v0 + 200);
  v48 = *(v0 + 184);
  v47 = *(v0 + 192);
  v49 = *(v0 + 176);
  v58 = *(v0 + 168);
  v59 = *(v0 + 208);
  v50 = *(v0 + 160);
  v57 = *(v0 + 152);
  sub_1DAF40780(v14, v15);
  (*(v48 + 32))(v46, v47, v49);
  sub_1DAF40674(v14, v15);
  sub_1DAF40674(v17, v18);
  sub_1DAF40780(v14, v15);
  v51 = sub_1DB09D004();
  *(v0 + 264) = v51;
  sub_1DAF40780(v17, v18);
  sub_1DB09D174();
  v52 = sub_1DB09D6B4();
  *(v0 + 272) = v52;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1DAF6B7B8;
  swift_continuation_init();
  *(v0 + 136) = v57;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v50 + 32))(boxed_opaque_existential_0, v58, v57);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DAF6AC68;
  *(v0 + 104) = &block_descriptor_8;
  [v59 cacheData:v51 forKey:v52 andCategory:0 completion:v55];
  (*(v50 + 8))(boxed_opaque_existential_0, v57);
  v54 = v0 + 16;

  return MEMORY[0x1EEE6DEC8](v54);
}

uint64_t sub_1DAF6BE90()
{
  v1 = v0[35];
  v13 = v0[32];
  v14 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[23];
  v15 = v0[24];
  v16 = v0[33];
  v8 = v0[22];
  v17 = v0[21];
  v9 = v0[18];
  swift_willThrow();

  sub_1DAF40780(v4, v3);
  sub_1DAF40780(v2, v13);
  (*(v7 + 8))(v5, v8);

  v10 = v0[1];
  v11 = v0[35];

  return v10();
}

uint64_t ASDPersistenceCommand.save(data:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF6C070, 0, 0);
}

uint64_t sub_1DAF6C070()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v7 = v1[20];
  v6 = v1[21];
  v9 = v1[18];
  v8 = v1[19];
  v14 = [objc_allocWithZone(ODNServices) init];
  v1[25] = v14;
  v10 = sub_1DB09D004();
  v1[26] = v10;
  v11 = sub_1DB09D6B4();
  v1[27] = v11;
  v1[2] = v1;
  v1[3] = sub_1DAF6C278;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF6AC68;
  v1[13] = &block_descriptor_12;
  [v14 cacheData:v10 forKey:v11 andCategory:1 completion:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAF6C278()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1DAF6C408;
  }

  else
  {
    v3 = sub_1DAF6C388;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAF6C388()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DAF6C408()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[28];

  return v6();
}

uint64_t ASDPersistenceCommand.load(key:)(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF6C564, 0, 0);
}

uint64_t sub_1DAF6C564()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v8 = v1[20];
  v7 = v1[21];
  v9 = [objc_allocWithZone(ODNServices) init];
  v1[25] = v9;
  v10 = sub_1DB09D6B4();
  v1[26] = v10;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1DAF6C758;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF6C978;
  v1[13] = &block_descriptor_16;
  [v9 fetchDataForKey:v10 andCategory:1 completion:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAF6C758()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1DAF6C8F0;
  }

  else
  {
    v3 = sub_1DAF6C868;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAF6C868()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);

  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_1DAF6C8F0()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

void sub_1DAF6C978(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
    sub_1DB09D9A4();
  }

  else
  {
    v6 = a2;
    sub_1DB09D034();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
    sub_1DB09D9B4();
  }
}

uint64_t sub_1DAF6CA38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF63DEC;

  return ASDPersistenceCommand.save(files:)(a1);
}

uint64_t sub_1DAF6CACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAF62CC4;

  return ASDPersistenceCommand.save(data:for:)(a1, a2, a3, a4);
}

uint64_t sub_1DAF6CB80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF67F4C;

  return ASDPersistenceCommand.load(key:)(a1, a2);
}

uint64_t getEnumTagSinglePayload for TimeoutError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TimeoutError(_WORD *result, int a2, int a3)
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

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t timeoutTask<A>(maxNanoSeconds:completionAfterTimeout:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF6CE88, 0, 0);
}

uint64_t sub_1DAF6CE88()
{
  v1 = *(v0 + 24);
  if (v1 == -1)
  {
    v15 = (*(v0 + 48) + **(v0 + 48));
    v10 = *(*(v0 + 48) + 4);
    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    *v11 = v0;
    v11[1] = sub_1DAF6D1A4;
    v12 = *(v0 + 56);
    v13 = *(v0 + 16);

    return v15(v13);
  }

  else
  {
    v2 = *(v0 + 64);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    v5 = *(v0 + 32);
    v4 = *(v0 + 48);
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v3 + 32) = v4;
    *(v3 + 48) = v5;
    v6 = *(MEMORY[0x1E69E8920] + 4);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_1DAF6D068;
    v8 = *(v0 + 64);
    v9 = *(v0 + 16);

    return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DAF6DBB4, v3, v8);
  }
}

uint64_t sub_1DAF6D068()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF6D298, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DAF6D1A4()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DAF6D298()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DAF6D2FC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1DAF6D338(a1);
}

uint64_t sub_1DAF6D338(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v4 = sub_1DB09D9C4();
  v5 = sub_1DB09DC64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  swift_defaultActor_initialize();
  v11 = *(*v1 + 96);
  v12 = *(v4 - 8);
  v13 = *(v12 + 56);
  v13(v1 + v11, 1, 1, v4);
  v14 = (v1 + *(*v1 + 104));
  *v14 = 0;
  v14[1] = 0;
  (*(v12 + 32))(v10, a1, v4);
  v13(v10, 0, 1, v4);
  swift_beginAccess();
  (*(v6 + 40))(v1 + v11, v10, v5);
  swift_endAccess();
  return v1;
}

uint64_t sub_1DAF6D534@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v5 = sub_1DB09D9C4();
  v6 = sub_1DB09DC64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18[-v10];
  v12 = *(v3 + 96);
  swift_beginAccess();
  (*(v7 + 16))(a1, v1 + v12, v6);
  (*(*(v5 - 8) + 56))(v11, 1, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(v1 + v12, v11, v6);
  result = swift_endAccess();
  v14 = v1 + *(*v1 + 104);
  v15 = *v14;
  if (*v14)
  {
    v16 = *(v14 + 8);

    v15(v17);
    return sub_1DAF6243C(v15);
  }

  return result;
}

uint64_t sub_1DAF6D72C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 104));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;

  return sub_1DAF6243C(v4);
}

uint64_t sub_1DAF6D788()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D9C4();
  v3 = sub_1DB09DC64();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = (v0 + *(*v0 + 104));
  v5 = v4[1];
  sub_1DAF6243C(*v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DAF6D86C()
{
  sub_1DAF6D788();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAF6D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v35 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v16 = sub_1DB09D9C4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v35 - v20;
  v22 = type metadata accessor for TimeoutHelper();
  (*(v17 + 16))(v21, a1, v16);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1DAF6D338(v21);
  v26 = sub_1DB09DA24();
  v27 = *(*(v26 - 8) + 56);
  v27(v15, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = a2;
  v28[5] = v25;

  v29 = sub_1DAF5B2C0(0, 0, v15, &unk_1DB0A3768, v28);
  v27(v15, 1, 1, v26);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a3;
  v30[5] = a4;
  v31 = v36;
  v30[6] = v25;
  v30[7] = v31;
  v30[8] = a6;

  v32 = sub_1DAF4F0EC(0, 0, v15, &unk_1DB0A3778, v30);
  v27(v15, 1, 1, v26);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v25;
  v33[5] = v29;
  v33[6] = v32;
  sub_1DAF4F0EC(0, 0, v15, &unk_1DB0A3788, v33);
}

uint64_t sub_1DAF6DBC4(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D9C4();
  result = sub_1DB09DC64();
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

uint64_t sub_1DAF6DCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  v7 = *(*a5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v5[4] = sub_1DB09D9C4();
  v8 = sub_1DB09DC64();
  v5[5] = v8;
  v9 = *(v8 - 8);
  v5[6] = v9;
  v10 = *(v9 + 64) + 15;
  v5[7] = swift_task_alloc();
  v11 = *(MEMORY[0x1E69E86C8] + 4);
  v12 = swift_task_alloc();
  v5[8] = v12;
  *v12 = v5;
  v12[1] = sub_1DAF6DE04;

  return MEMORY[0x1EEE6DA60](a4);
}

uint64_t sub_1DAF6DE04()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1DAF6DF54, v8, 0);
  }
}

uint64_t sub_1DAF6DF54()
{
  v1 = *(v0 + 24);
  sub_1DAF6D534(*(v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1DAF6DFC0, 0, 0);
}

uint64_t sub_1DAF6DFC0()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v2 = v0[5];
    v3 = v0[6];
  }

  else
  {
    sub_1DAF6244C();
    v0[2] = swift_allocError();
    sub_1DB09D9A4();
  }

  (*(v3 + 8))(v1, v2);
  v4 = v0[9];
  sub_1DB09DA74();
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DAF6E100(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[3] = a6;
  v10 = *(*a6 + 80);
  v8[6] = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v11 = sub_1DB09D9C4();
  v8[7] = v11;
  v12 = sub_1DB09DC64();
  v8[8] = v12;
  v13 = *(v12 - 8);
  v8[9] = v13;
  v14 = *(v13 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v15 = *(v11 - 8);
  v8[12] = v15;
  v16 = *(v15 + 64) + 15;
  v8[13] = swift_task_alloc();
  v17 = *(v10 - 8);
  v8[14] = v17;
  v18 = *(v17 + 64) + 15;
  v8[15] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[16] = v19;
  v23 = (a4 + *a4);
  v20 = a4[1];
  v21 = swift_task_alloc();
  v8[17] = v21;
  *v21 = v8;
  v21[1] = sub_1DAF6E374;

  return v23(v19);
}

uint64_t sub_1DAF6E374()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1DAF6E8F8;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 24);
    v4 = sub_1DAF6E490;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DAF6E490()
{
  v1 = *(v0 + 24);
  sub_1DAF6D534(*(v0 + 88));

  return MEMORY[0x1EEE6DFA0](sub_1DAF6E4FC, 0, 0);
}

uint64_t sub_1DAF6E4FC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[4];
    (*(v0[9] + 8))(v1, v0[8]);
    v21 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_1DAF6E750;
    v7 = v0[16];
    v8 = v0[5];

    return v21(v7);
  }

  else
  {
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[6];
    (*(v2 + 32))(v12, v1, v3);
    (*(v13 + 16))(v11, v10, v14);
    sub_1DB09D9B4();
    (*(v2 + 8))(v12, v3);
    (*(v13 + 8))(v10, v14);
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[13];
    v19 = v0[10];
    v18 = v0[11];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1DAF6E750()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF6E84C, 0, 0);
}

uint64_t sub_1DAF6E84C()
{
  (*(v0[14] + 8))(v0[16], v0[6]);
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DAF6E914()
{
  v1 = *(v0 + 24);
  sub_1DAF6D534(*(v0 + 80));

  return MEMORY[0x1EEE6DFA0](sub_1DAF6E980, 0, 0);
}

uint64_t sub_1DAF6E980()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v4 = v0[18];
    v3 = v0[8];
    v1 = v0[9];
  }

  else
  {
    v5 = v0[18];
    v0[2] = v5;
    v6 = v5;
    sub_1DB09D9A4();
    v4 = v5;
  }

  (*(v1 + 8))(v2, v3);
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[13];
  v11 = v0[10];
  v10 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DAF6EA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAF6EABC, 0, 0);
}

uint64_t sub_1DAF6EABC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF5EFD8, v3, 0);
}

uint64_t sub_1DAF6EB5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09DA44();

  return sub_1DB09DA44();
}

uint64_t sub_1DAF6EBE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF62CC4;

  return sub_1DAF6DCC4(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAF6ECA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF62CC4;

  return sub_1DAF6E100(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DAF6ED80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DAF6EA98(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DAF6EE50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1DAF6EE98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials13ODIClientGUIDVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAF6EF4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 336))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DAF6EFA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1DAF6F064(char a1)
{
  result = 0x696C6F69766152;
  switch(a1)
  {
    case 1:
      result = 0x75706D6F43657250;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0x666F725068736143;
      break;
    case 4:
      result = 0x726574614C796150;
      break;
    case 5:
      result = 0x5073676E69766153;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6C69666F72506342;
      break;
    case 8:
      result = 0x69666F7250706D41;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x7250726941766449;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials12ODNErrorInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAF6F620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 704))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 688);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAF6F668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 696) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 704) = 1;
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
      *(result + 688) = (a2 - 1);
      return result;
    }

    *(result + 704) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ODIAssessmentResult.payload.getter()
{
  v1 = type metadata accessor for ODIAssessment(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ODIErrorAssessment(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ODIAssessmentResult(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAF6F9BC(v0, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAF6FA20(v15, v10, type metadata accessor for ODIErrorAssessment);
    v16 = *(v10 + 1);
    v17 = *(v10 + 2);

    v18 = v10;
    v19 = type metadata accessor for ODIErrorAssessment;
  }

  else
  {
    sub_1DAF6FA20(v15, v5, type metadata accessor for ODIAssessment);
    v16 = *(v5 + 2);
    v20 = *(v5 + 3);

    v18 = v5;
    v19 = type metadata accessor for ODIAssessment;
  }

  sub_1DAF6FA88(v18, v19);
  return v16;
}

uint64_t sub_1DAF6F984(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAF6F9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODIAssessmentResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF6FA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAF6FA88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ODIAssessmentResult.init(id:payload:completedTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for ODIAssessment(0);
  sub_1DAF6FBA0(a5, a6 + *(v8 + 24));
  type metadata accessor for ODIAssessmentResult(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ODIAssessment.init(id:payload:completedTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for ODIAssessment(0) + 24);

  return sub_1DAF6FBA0(a5, v7);
}

uint64_t sub_1DAF6FBA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ODIAssessmentResult.init(errorPayload:errorCode:completedTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[1] = a1;
  a5[2] = a2;
  *a5 = a3;
  v7 = type metadata accessor for ODIErrorAssessment(0);
  sub_1DAF6FBA0(a4, a5 + *(v7 + 24));
  type metadata accessor for ODIAssessmentResult(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ODIErrorAssessment.init(errorPayload:errorCode:completedTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[1] = a1;
  a5[2] = a2;
  *a5 = a3;
  v6 = a5 + *(type metadata accessor for ODIErrorAssessment(0) + 24);

  return sub_1DAF6FBA0(a4, v6);
}

uint64_t ODIAssessmentResult.assessmentCompletedTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ODIAssessment(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ODIErrorAssessment(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ODIAssessmentResult(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAF6F9BC(v2, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAF6FA20(v18, v13, type metadata accessor for ODIErrorAssessment);
    sub_1DAF6FE8C(&v13[*(v9 + 24)], a1);
    v19 = v13;
    v20 = type metadata accessor for ODIErrorAssessment;
  }

  else
  {
    sub_1DAF6FA20(v18, v8, type metadata accessor for ODIAssessment);
    sub_1DAF6FE8C(&v8[*(v4 + 24)], a1);
    v19 = v8;
    v20 = type metadata accessor for ODIAssessment;
  }

  return sub_1DAF6FA88(v19, v20);
}

uint64_t sub_1DAF6FE8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ODIAssessment.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ODIAssessment.payload.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ODIErrorAssessment.payload.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DAF6FFC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);

  return sub_1DAF6FE8C(v4, a2);
}

uint64_t sub_1DAF70060()
{
  result = type metadata accessor for ODIAssessment(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ODIErrorAssessment(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DAF70108()
{
  if (!qword_1EE300970)
  {
    sub_1DB09DF64();
    v0 = sub_1DB09DC64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE300970);
    }
  }
}

void sub_1DAF70194()
{
  sub_1DAF70108();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1DAF70210@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v46 = *a1;
  v47 = a1[1];
  result = sub_1DB0283F0();
  if ((result & 0x100) != 0)
  {
    goto LABEL_40;
  }

  v8 = (result & 0x40) != 0 ? 3 : 2;
  if ((result & 0x80u) == 0)
  {
    v9 = (result & 0x40) >> 6;
  }

  else
  {
    LOBYTE(v9) = v8;
  }

  v10 = result & 0x1F;
  if (v10 == 31)
  {
    v11 = 0;
    v12 = (*(&v47 + 1) >> 1) - v47;
    v13 = v12 + 1;
    v14 = v47 <= *(&v47 + 1) >> 1 ? *(&v47 + 1) >> 1 : v47;
    v15 = v14 - v47;
    v16 = (*(&v46 + 1) + v47);
    v17 = v47 + 1;
    v18 = 1;
    while (1)
    {
      if (!v12)
      {
        v17 = *(&v47 + 1) >> 1;
        v10 = v11;
        goto LABEL_22;
      }

      if (!v15)
      {
        goto LABEL_70;
      }

      if (__OFADD__(v18, 1))
      {
        goto LABEL_71;
      }

      v10 = *v16 & 0x7F | (v11 << 7);
      if ((*v16 & 0x80000000) == 0)
      {
        break;
      }

      --v15;
      --v12;
      ++v16;
      ++v17;
      ++v18;
      v11 = v10;
      if (v10 >= 0xFFFFFFFFFFFFFFLL)
      {
        goto LABEL_33;
      }
    }

    v13 = v18 + 1;
LABEL_22:
    v48 = v9;
    v19 = result;
    *&v47 = v17;
  }

  else
  {
    v48 = v9;
    v19 = result;
    v13 = 1;
  }

  result = sub_1DB0283F0();
  if ((result & 0x100) != 0)
  {
    goto LABEL_40;
  }

  v20 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if ((result & 0x80) == 0)
  {
    v44 = v4;
    v45 = a2;
    v43 = v13 + 1;
    v21 = result & 0x7F;
    v22 = v47;
    goto LABEL_27;
  }

  v30 = result & 0x7F;
  if (v30 > 7)
  {
LABEL_33:
    sub_1DAF70638();
    swift_allocError();
    v32 = 5;
LABEL_41:
    *v31 = v32;
    swift_willThrow();
    swift_unknownObjectRetain();
    return swift_unknownObjectRelease();
  }

  v45 = a2;
  v22 = v47;
  if ((result & 0x7F) == 0)
  {
    v21 = 0;
    v35 = __OFADD__(v20, v30);
    v36 = v20 + v30;
    if (!v35)
    {
      goto LABEL_49;
    }

    goto LABEL_69;
  }

  v33 = *(&v47 + 1) >> 1;
  if (v47 <= *(&v47 + 1) >> 1)
  {
    v34 = *(&v47 + 1) >> 1;
  }

  else
  {
    v34 = v47;
  }

  if (v47 == *(&v47 + 1) >> 1)
  {
    goto LABEL_40;
  }

  if (v47 < *(&v47 + 1) >> 1)
  {
    v21 = *(*(&v46 + 1) + v47);
    v37 = v47 + 1;
    if (v30 == 1)
    {
      goto LABEL_48;
    }

    if (v37 != v33)
    {
      if (v37 == v34)
      {
        goto LABEL_75;
      }

      v38 = *(*(&v46 + 1) + v37);
      v37 = v47 + 2;
      v21 = v38 | (v21 << 8);
      if (v30 == 2)
      {
        goto LABEL_48;
      }

      if (v37 == v33)
      {
        goto LABEL_40;
      }

      if (v37 == v34)
      {
        goto LABEL_75;
      }

      v39 = *(*(&v46 + 1) + v37);
      v37 = v47 + 3;
      v21 = v39 | (v21 << 8);
      if (v30 == 3)
      {
        goto LABEL_48;
      }

      if (v37 == v33)
      {
        goto LABEL_40;
      }

      if (v37 == v34)
      {
        goto LABEL_75;
      }

      v40 = *(*(&v46 + 1) + v37);
      v37 = v47 + 4;
      v21 = v40 | (v21 << 8);
      if (v30 == 4)
      {
        goto LABEL_48;
      }

      if (v37 == v33)
      {
        goto LABEL_40;
      }

      if (v37 == v34)
      {
        goto LABEL_75;
      }

      v41 = *(*(&v46 + 1) + v37);
      v37 = v47 + 5;
      v21 = v41 | (v21 << 8);
      if (v30 == 5)
      {
        goto LABEL_48;
      }

      if (v37 == v33)
      {
        goto LABEL_40;
      }

      if (v37 == v34)
      {
        goto LABEL_75;
      }

      v42 = *(*(&v46 + 1) + v37);
      v37 = v47 + 6;
      v21 = v42 | (v21 << 8);
      if (v30 == 6)
      {
LABEL_48:
        v22 = v37;
        v35 = __OFADD__(v20, v30);
        v36 = v20 + v30;
        if (!v35)
        {
LABEL_49:
          v43 = v36;
          v44 = v4;
LABEL_27:
          result = sub_1DAF7068C(v21, v46, *(&v46 + 1), v22, *(&v47 + 1));
          if (!__OFSUB__(v25 >> 1, v24))
          {
            v26 = result;
            if ((v25 >> 1) - v24 == v21)
            {
              v27 = v23;
              v28 = v24;
              v29 = v25;
              swift_unknownObjectRetain();
              sub_1DAFF6618(v10, v48, (v19 & 0x20) != 0, v26, v27, v28, v29, v45, a3);
              if (v44)
              {
                return swift_unknownObjectRelease();
              }

              result = v43 + v21;
              if (!__OFADD__(v43, v21))
              {
                sub_1DAF70704(result);
                return swift_unknownObjectRelease();
              }

              goto LABEL_74;
            }

            goto LABEL_40;
          }

LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        goto LABEL_69;
      }

      if (v37 != v33)
      {
        if (v37 != v34)
        {
          v22 = v47 + 7;
          v21 = *(*(&v46 + 1) + v37) | (v21 << 8);
          v35 = __OFADD__(v20, v30);
          v36 = v20 + v30;
          if (!v35)
          {
            goto LABEL_49;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        goto LABEL_75;
      }
    }

LABEL_40:
    sub_1DAF70638();
    swift_allocError();
    v32 = 4;
    goto LABEL_41;
  }

LABEL_75:
  __break(1u);
  return result;
}

unint64_t sub_1DAF70638()
{
  result = qword_1ECC0E6B0;
  if (!qword_1ECC0E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E6B0);
  }

  return result;
}

unint64_t sub_1DAF7068C(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1DAF70704(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(v1 + 16);
      v3 = *(v1 + 24) >> 1;
      if (!__OFSUB__(v3, v2))
      {
        if (v3 - v2 < result)
        {
LABEL_15:
          __break(1u);
          return result;
        }

        v4 = v2 + result;
        if (!__OFADD__(v2, result))
        {
          if (v3 >= v4)
          {
            if (v4 >= v2)
            {
              *(v1 + 16) = v4;
              return result;
            }

            goto LABEL_14;
          }

LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

char *sub_1DAF7075C(__int128 *a1, uint64_t a2, char a3)
{
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v15 = *a1;
  v16 = v7;
  v17 = v8;
  v13 = v15;
  swift_unknownObjectRetain();
  v9 = MEMORY[0x1E69E7CC0];
  if (v7 == v8 >> 1)
  {
LABEL_10:
    swift_unknownObjectRelease();
    *a1 = v13;
    *(a1 + 2) = v7;
    *(a1 + 3) = v8;
  }

  else
  {
    while (1)
    {
      sub_1DAF70210(v14, &v15, a2, a3 & 1);
      if (v3)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1DAF73290(0, *(v9 + 2) + 1, 1, v9);
      }

      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      if (v11 >= v10 >> 1)
      {
        v9 = sub_1DAF73290((v10 > 1), v11 + 1, 1, v9);
      }

      *(v9 + 2) = v11 + 1;
      sub_1DAF40D20(v14, &v9[32 * v11 + 32]);
      v7 = v16;
      v8 = v17;
      if (v16 == v17 >> 1)
      {
        v13 = v15;
        goto LABEL_10;
      }
    }

    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t sub_1DAF708BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DAF70904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAF70950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DAF70998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASN1DecodeError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ASN1DecodeError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DAF70B54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DAF70B9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAF70BFC()
{
  result = qword_1ECC0E6B8;
  if (!qword_1ECC0E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E6B8);
  }

  return result;
}

unint64_t sub_1DAF70C64()
{
  result = qword_1ECC0E6C0;
  if (!qword_1ECC0E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E6C0);
  }

  return result;
}

uint64_t ODIError(_:fromError:code:forceCode:properties:file:function:line:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LOBYTE(v13) = a5;
  LODWORD(v15) = *a4;
  if (qword_1EE301E08 != -1)
  {
LABEL_63:
    swift_once();
  }

  v16 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v17 = v16;
  v80 = a6;
  if (!a3)
  {
    goto LABEL_15;
  }

  v18 = v16;
  v19 = a3;
  v20 = sub_1DB09CE64();
  v21 = [v20 domain];
  v22 = sub_1DB09D6C4();
  v24 = v23;

  if (v22 == 0x726F72724549444FLL && v24 == 0xE800000000000000)
  {

LABEL_10:
    if ((v13 & 1) == 0)
    {
      ODIErrorCode.init(rawValue:)([v20 code]);
      if (v87 != 211)
      {
        LODWORD(v15) = v87;
      }
    }

    v32 = [v20 userInfo];
    v17 = sub_1DB09D624();

    goto LABEL_14;
  }

  v26 = sub_1DB09E254();

  if (v26)
  {
    goto LABEL_10;
  }

  v27 = *MEMORY[0x1E696AA08];
  v28 = sub_1DB09D6C4();
  v30 = v29;
  *(&v88 + 1) = sub_1DAF4D7A4();
  *&v87 = v20;
  sub_1DAF40D20(&v87, &v84);
  v13 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v83[0] = v18;
  sub_1DAF3B11C(&v84, v28, v30, isUniquelyReferenced_nonNull_native);

  v17 = *&v83[0];
LABEL_14:
  a6 = v80;
LABEL_15:
  v79 = a7;
  if (!a6)
  {
LABEL_51:
    v62 = *(v17 + 16);

    if (v62 && (v63 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v64 & 1) != 0) && (sub_1DAF409DC(*(v17 + 56) + 32 * v63, &v87), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), (swift_dynamicCast() & 1) != 0))
    {
      v65 = v84;
    }

    else
    {
      v65 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1DAF73010(0, *(v65 + 2) + 1, 1, v65, &qword_1ECC0E770, &qword_1DB0A4698);
    }

    v67 = *(v65 + 2);
    v66 = *(v65 + 3);
    if (v67 >= v66 >> 1)
    {
      v65 = sub_1DAF73010((v66 > 1), v67 + 1, 1, v65, &qword_1ECC0E770, &qword_1DB0A4698);
    }

    *(v65 + 2) = v67 + 1;
    v68 = &v65[56 * v67];
    *(v68 + 4) = a1;
    *(v68 + 5) = a2;
    *(v68 + 6) = v79;
    *(v68 + 7) = a8;
    *(v68 + 8) = a9;
    *(v68 + 9) = a10;
    *(v68 + 10) = a11;
    *(&v88 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v87 = v65;
    sub_1DAF40D20(&v87, &v84);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v17;
    sub_1DAF3B11C(&v84, 0x636F766E4949444FLL, 0xEE00736E6F697461, v69);
    v70 = qword_1DB0A46A0[v15 ^ 0x80];
    v71 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v72 = sub_1DB09D6B4();
    v73 = sub_1DB09D604();
    v74 = [v71 initWithDomain:v72 code:v70 userInfo:v73];

    return v74;
  }

  v33 = *(v17 + 16);

  v76 = v15;
  if (v33 && (v34 = sub_1DAF35210(0x65706F725049444FLL, 0xED00007365697472), (v35 & 1) != 0) && (sub_1DAF409DC(*(v17 + 56) + 32 * v34, &v87), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6C8, &unk_1DB0A3F68), (swift_dynamicCast() & 1) != 0))
  {
    a3 = v84;
  }

  else
  {
    a3 = sub_1DAF3E280(MEMORY[0x1E69E7CC0]);
  }

  v36 = 0;
  a7 = a6 + 64;
  v37 = 1 << *(a6 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v15 = v38 & *(a6 + 64);
  v39 = (v37 + 63) >> 6;
  v77 = v17;
  while (1)
  {
    while (1)
    {
      v40 = v36;
      if (!v15)
      {
        if (v39 <= v36 + 1)
        {
          v42 = v36 + 1;
        }

        else
        {
          v42 = v39;
        }

        v36 = v42 - 1;
        while (1)
        {
          v41 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v41 >= v39)
          {
            v15 = 0;
            v86 = 0;
            v84 = 0u;
            v85 = 0u;
            goto LABEL_34;
          }

          v15 = *(a7 + 8 * v41);
          ++v40;
          if (v15)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v41 = v36;
LABEL_33:
      v43 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v44 = v43 | (v41 << 6);
      v45 = *(*(a6 + 48) + v44);
      sub_1DAF409DC(*(a6 + 56) + 32 * v44, v83);
      LOBYTE(v84) = v45;
      sub_1DAF40D20(v83, (&v84 + 8));
      v36 = v41;
LABEL_34:
      v87 = v84;
      v88 = v85;
      v89 = v86;
      if (!v86)
      {

        *(&v88 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6C8, &unk_1DB0A3F68);
        *&v87 = a3;
        sub_1DAF40D20(&v87, &v84);

        v61 = swift_isUniquelyReferenced_nonNull_native();
        *&v83[0] = v17;
        sub_1DAF3B11C(&v84, 0x65706F725049444FLL, 0xED00007365697472, v61);

        v17 = *&v83[0];
        LODWORD(v15) = v76;
        goto LABEL_51;
      }

      v13 = v87;
      sub_1DAF40D20((&v87 + 8), &v84);
      if (!a3[2])
      {
        break;
      }

      v46 = sub_1DAF352E8(v13);
      if ((v47 & 1) == 0)
      {
        break;
      }

      sub_1DAF409DC(a3[7] + 32 * v46, v83);
      __swift_destroy_boxed_opaque_existential_1Tm(&v84);
      sub_1DAF4D73C(v83);
    }

    memset(v83, 0, sizeof(v83));
    sub_1DAF4D73C(v83);
    sub_1DAF409DC(&v84, v83);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v50 = sub_1DAF352E8(v13);
    v51 = a3[2];
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_62;
    }

    v54 = v49;
    if (a3[3] >= v53)
    {
      if ((v48 & 1) == 0)
      {
        sub_1DAF3C758();
      }
    }

    else
    {
      sub_1DAF37BC4(v53, v48);
      v55 = sub_1DAF352E8(v13);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_65;
      }

      v50 = v55;
    }

    if (v54)
    {
      v57 = (a3[7] + 32 * v50);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      sub_1DAF40D20(v83, v57);
      __swift_destroy_boxed_opaque_existential_1Tm(&v84);
      goto LABEL_49;
    }

    a3[(v50 >> 6) + 8] |= 1 << v50;
    *(a3[6] + v50) = v13;
    sub_1DAF40D20(v83, (a3[7] + 32 * v50));
    __swift_destroy_boxed_opaque_existential_1Tm(&v84);
    v58 = a3[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      break;
    }

    a3[2] = v60;
LABEL_49:
    v17 = v77;
    a6 = v80;
  }

  __break(1u);
LABEL_65:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

CoreODIEssentials::ODIErrorCode_optional __swiftcall ODIErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= -30)
  {
    if (rawValue <= -1405)
    {
      switch(rawValue)
      {
        case -3153:
          *v1 = 127;
          break;
        case -3152:
          *v1 = 126;
          break;
        case -3151:
          *v1 = 125;
          break;
        case -3150:
        case -3149:
        case -3148:
        case -3147:
        case -3146:
        case -3145:
        case -3144:
        case -3143:
        case -3142:
        case -3141:
        case -3140:
        case -3139:
        case -3138:
        case -3137:
        case -3136:
        case -3135:
        case -3134:
        case -3133:
        case -3132:
        case -3131:
        case -3130:
        case -3129:
        case -3128:
        case -3127:
        case -3126:
        case -3125:
        case -3124:
        case -3123:
        case -3122:
        case -3121:
        case -3120:
        case -3119:
        case -3118:
        case -3117:
        case -3116:
        case -3115:
        case -3114:
          goto LABEL_159;
        case -3113:
          *v1 = 124;
          break;
        case -3112:
          *v1 = 123;
          break;
        case -3111:
          *v1 = 122;
          break;
        case -3110:
          *v1 = 121;
          break;
        case -3109:
          *v1 = 120;
          break;
        case -3108:
          *v1 = 119;
          break;
        case -3107:
          *v1 = 118;
          break;
        case -3106:
          *v1 = 117;
          break;
        case -3105:
          *v1 = 116;
          break;
        case -3104:
          *v1 = 115;
          break;
        case -3103:
          *v1 = 114;
          break;
        case -3102:
          *v1 = 113;
          break;
        case -3101:
          *v1 = 112;
          break;
        default:
          switch(rawValue)
          {
            case -2129:
              *v1 = 111;
              break;
            case -2128:
              *v1 = 110;
              break;
            case -2127:
              *v1 = 109;
              break;
            case -2126:
              *v1 = 108;
              break;
            case -2125:
              *v1 = 107;
              break;
            case -2124:
              *v1 = 106;
              break;
            case -2123:
              *v1 = 105;
              break;
            case -2122:
            case -2121:
            case -2120:
            case -2119:
            case -2118:
            case -2117:
            case -2116:
            case -2115:
            case -2114:
            case -2113:
            case -2109:
            case -2108:
            case -2106:
            case -2105:
              goto LABEL_159;
            case -2112:
              *v1 = 104;
              break;
            case -2111:
              *v1 = 103;
              break;
            case -2110:
              *v1 = 102;
              break;
            case -2107:
              *v1 = 101;
              break;
            case -2104:
              *v1 = 100;
              break;
            case -2103:
              *v1 = 99;
              break;
            default:
              if (rawValue != -131600)
              {
                goto LABEL_159;
              }

              *v1 = 98;
              break;
          }

          break;
      }
    }

    else
    {
      switch(rawValue)
      {
        case -1404:
          *v1 = 84;
          break;
        case -1403:
          *v1 = 83;
          break;
        case -1402:
          *v1 = 82;
          break;
        case -1317:
          *v1 = 97;
          break;
        case -1316:
          *v1 = 96;
          break;
        case -1315:
          *v1 = 95;
          break;
        case -1310:
          *v1 = 94;
          break;
        case -1309:
          *v1 = 93;
          break;
        case -1308:
          *v1 = 92;
          break;
        case -1307:
          *v1 = 91;
          break;
        case -1306:
          *v1 = 90;
          break;
        case -1305:
          *v1 = 89;
          break;
        case -1304:
          *v1 = 88;
          break;
        case -1303:
          *v1 = 87;
          break;
        case -1302:
          *v1 = 86;
          break;
        case -1301:
          *v1 = 85;
          break;
        case -1204:
          *v1 = 81;
          break;
        case -1203:
          *v1 = 80;
          break;
        case -1202:
          *v1 = 79;
          break;
        case -1201:
          *v1 = 78;
          break;
        case -1119:
          *v1 = 77;
          break;
        case -1118:
          *v1 = 76;
          break;
        case -1117:
          *v1 = 75;
          break;
        case -1116:
          *v1 = 74;
          break;
        case -1115:
          *v1 = 73;
          break;
        case -1114:
          *v1 = 72;
          break;
        case -1113:
          *v1 = 71;
          break;
        case -1112:
          *v1 = 70;
          break;
        case -1111:
          *v1 = 69;
          break;
        case -1110:
          *v1 = 68;
          break;
        case -1104:
          *v1 = 67;
          break;
        case -1103:
          *v1 = 66;
          break;
        case -1102:
          *v1 = 65;
          break;
        case -1101:
          *v1 = 64;
          break;
        default:
          goto LABEL_159;
      }
    }

    return rawValue;
  }

  if (rawValue > 39999)
  {
    if (rawValue <= 40400)
    {
      switch(rawValue)
      {
        case 40000:
          *v1 = 28;
          break;
        case 40010:
          *v1 = 29;
          break;
        case 40011:
          *v1 = 30;
          break;
        case 40012:
          *v1 = 31;
          break;
        case 40013:
          *v1 = 32;
          break;
        case 40014:
          *v1 = 33;
          break;
        case 40015:
          *v1 = 34;
          break;
        case 40020:
          *v1 = 35;
          break;
        case 40021:
          *v1 = 36;
          break;
        case 40022:
          *v1 = 37;
          break;
        case 40023:
          *v1 = 38;
          break;
        case 40024:
          *v1 = 39;
          break;
        case 40025:
          *v1 = 40;
          break;
        case 40026:
          *v1 = 41;
          break;
        case 40027:
          *v1 = 42;
          break;
        case 40028:
          *v1 = 43;
          break;
        case 40029:
          *v1 = 44;
          break;
        case 40030:
          *v1 = 45;
          break;
        case 40101:
          *v1 = 46;
          break;
        case 40102:
          *v1 = 47;
          break;
        case 40200:
          *v1 = 48;
          break;
        case 40201:
          *v1 = 49;
          break;
        case 40205:
          *v1 = 50;
          break;
        default:
          goto LABEL_159;
      }

      return rawValue;
    }

    if (rawValue <= 40600)
    {
      if (rawValue <= 40403)
      {
        if (rawValue == 40401)
        {
          *v1 = 51;
        }

        else if (rawValue == 40402)
        {
          *v1 = 52;
        }

        else
        {
          *v1 = 53;
        }

        return rawValue;
      }

      switch(rawValue)
      {
        case 40404:
          *v1 = 54;
          return rawValue;
        case 40500:
          *v1 = 55;
          return rawValue;
        case 40600:
          *v1 = 56;
          return rawValue;
      }
    }

    else if (rawValue <= 50001)
    {
      switch(rawValue)
      {
        case 40601:
          *v1 = 57;
          return rawValue;
        case 50000:
          *v1 = 58;
          return rawValue;
        case 50001:
          *v1 = 59;
          return rawValue;
      }
    }

    else if (rawValue > 99991)
    {
      if (rawValue == 99992)
      {
        *v1 = 62;
        return rawValue;
      }

      if (rawValue == 99993)
      {
        *v1 = 63;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 50002)
      {
        *v1 = 60;
        return rawValue;
      }

      if (rawValue == 99991)
      {
        *v1 = 61;
        return rawValue;
      }
    }

LABEL_159:
    if (rawValue > -6010)
    {
      v2 = 0x80;
      switch(rawValue)
      {
        case -3300:
          *v1 = -93;
          return rawValue;
        case -3299:
        case -3298:
        case -3297:
        case -3296:
        case -3295:
        case -3294:
        case -3293:
        case -3292:
        case -3291:
        case -3290:
        case -3289:
        case -3288:
        case -3287:
        case -3286:
        case -3285:
        case -3284:
        case -3283:
        case -3282:
        case -3281:
        case -3280:
        case -3279:
        case -3278:
        case -3277:
        case -3276:
        case -3275:
        case -3274:
        case -3273:
        case -3272:
        case -3271:
        case -3270:
        case -3269:
        case -3268:
        case -3267:
        case -3266:
        case -3265:
        case -3264:
        case -3263:
        case -3262:
        case -3261:
        case -3260:
        case -3259:
        case -3258:
        case -3257:
        case -3256:
        case -3255:
        case -3254:
        case -3253:
        case -3252:
        case -3251:
        case -3250:
        case -3249:
        case -3248:
        case -3247:
        case -3246:
        case -3245:
        case -3244:
        case -3243:
        case -3242:
        case -3241:
        case -3240:
        case -3239:
        case -3238:
        case -3237:
        case -3236:
        case -3235:
        case -3234:
        case -3233:
        case -3232:
        case -3231:
        case -3230:
        case -3229:
        case -3228:
        case -3227:
        case -3226:
        case -3225:
        case -3224:
        case -3223:
        case -3222:
        case -3221:
        case -3220:
        case -3219:
        case -3218:
        case -3217:
        case -3216:
        case -3215:
        case -3214:
        case -3213:
        case -3212:
        case -3211:
        case -3210:
        case -3209:
        case -3208:
        case -3207:
        case -3206:
        case -3205:
        case -3204:
        case -3203:
        case -3202:
        case -3201:
        case -3200:
        case -3199:
        case -3198:
        case -3197:
        case -3196:
        case -3195:
        case -3194:
        case -3193:
        case -3192:
        case -3191:
        case -3189:
        case -3160:
          goto LABEL_192;
        case -3190:
          *v1 = -94;
          return rawValue;
        case -3188:
          *v1 = -95;
          return rawValue;
        case -3187:
          *v1 = -96;
          return rawValue;
        case -3186:
          *v1 = -97;
          return rawValue;
        case -3185:
          *v1 = -98;
          return rawValue;
        case -3184:
          *v1 = -99;
          return rawValue;
        case -3183:
          *v1 = -100;
          return rawValue;
        case -3182:
          *v1 = -101;
          return rawValue;
        case -3181:
          *v1 = -102;
          return rawValue;
        case -3180:
          *v1 = -103;
          return rawValue;
        case -3179:
          *v1 = -104;
          return rawValue;
        case -3178:
          *v1 = -105;
          return rawValue;
        case -3177:
          *v1 = -106;
          return rawValue;
        case -3176:
          *v1 = -107;
          return rawValue;
        case -3175:
          *v1 = -108;
          return rawValue;
        case -3174:
          *v1 = -109;
          return rawValue;
        case -3173:
          *v1 = -110;
          return rawValue;
        case -3172:
          *v1 = -111;
          return rawValue;
        case -3171:
          *v1 = -112;
          return rawValue;
        case -3170:
          *v1 = -113;
          return rawValue;
        case -3169:
          *v1 = -114;
          return rawValue;
        case -3168:
          *v1 = -115;
          return rawValue;
        case -3167:
          *v1 = -116;
          return rawValue;
        case -3166:
          *v1 = -117;
          return rawValue;
        case -3165:
          *v1 = -118;
          return rawValue;
        case -3164:
          *v1 = -119;
          return rawValue;
        case -3163:
          *v1 = -120;
          return rawValue;
        case -3162:
          *v1 = -121;
          return rawValue;
        case -3161:
          *v1 = -122;
          return rawValue;
        case -3159:
          *v1 = -123;
          return rawValue;
        case -3158:
          *v1 = -124;
          return rawValue;
        case -3157:
          *v1 = -125;
          return rawValue;
        case -3156:
          *v1 = -126;
          return rawValue;
        case -3155:
          *v1 = -127;
          return rawValue;
        case -3154:
          goto LABEL_136;
        default:
          if (rawValue == -6009)
          {
            *v1 = -91;
          }

          else
          {
            if (rawValue != -5108)
            {
              goto LABEL_192;
            }

            *v1 = -92;
          }

          break;
      }

      return rawValue;
    }

    if (rawValue > -8305)
    {
      if (rawValue > -6105)
      {
        if (rawValue <= -6103)
        {
          if (rawValue == -6104)
          {
            *v1 = -87;
          }

          else
          {
            *v1 = -88;
          }

          return rawValue;
        }

        if (rawValue == -6102)
        {
          *v1 = -89;
          return rawValue;
        }

        if (rawValue == -6010)
        {
          *v1 = -90;
          return rawValue;
        }
      }

      else if (rawValue > -8002)
      {
        if (rawValue == -8001)
        {
          *v1 = -85;
          return rawValue;
        }

        if (rawValue == -6105)
        {
          *v1 = -86;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == -8304)
        {
          *v1 = -83;
          return rawValue;
        }

        if (rawValue == -8301)
        {
          *v1 = -84;
          return rawValue;
        }
      }
    }

    else
    {
      if (rawValue > -22202)
      {
        switch(rawValue)
        {
          case -8504:
            *v1 = -70;
            return rawValue;
          case -8503:
            *v1 = -71;
            return rawValue;
          case -8502:
            *v1 = -72;
            return rawValue;
          case -8501:
            *v1 = -73;
            return rawValue;
          case -8500:
            *v1 = -74;
            return rawValue;
          case -8499:
          case -8498:
          case -8497:
          case -8496:
          case -8495:
          case -8494:
          case -8493:
          case -8492:
          case -8491:
          case -8490:
          case -8489:
          case -8488:
          case -8487:
          case -8486:
          case -8485:
          case -8484:
          case -8483:
          case -8482:
          case -8481:
          case -8480:
          case -8479:
          case -8478:
          case -8477:
          case -8476:
          case -8475:
          case -8474:
          case -8473:
          case -8472:
          case -8471:
          case -8470:
          case -8469:
          case -8468:
          case -8467:
          case -8466:
          case -8465:
          case -8464:
          case -8463:
          case -8462:
          case -8461:
          case -8460:
          case -8459:
          case -8458:
          case -8457:
          case -8456:
          case -8455:
          case -8454:
          case -8453:
          case -8452:
          case -8451:
          case -8450:
          case -8449:
          case -8448:
          case -8447:
          case -8446:
          case -8445:
          case -8444:
          case -8443:
          case -8442:
          case -8441:
          case -8440:
          case -8439:
          case -8438:
          case -8437:
          case -8436:
          case -8435:
          case -8432:
          case -8431:
          case -8430:
          case -8427:
          case -8426:
          case -8425:
          case -8424:
          case -8423:
          case -8422:
          case -8421:
          case -8420:
          case -8419:
          case -8418:
          case -8417:
          case -8416:
          case -8415:
          case -8414:
          case -8413:
          case -8412:
          case -8411:
          case -8410:
          case -8409:
          case -8408:
          case -8407:
          case -8406:
          case -8405:
          case -8402:
            goto LABEL_192;
          case -8434:
            *v1 = -75;
            return rawValue;
          case -8433:
            *v1 = -76;
            return rawValue;
          case -8429:
            *v1 = -77;
            return rawValue;
          case -8428:
            *v1 = -78;
            return rawValue;
          case -8404:
            *v1 = -79;
            return rawValue;
          case -8403:
            *v1 = -80;
            return rawValue;
          case -8401:
            *v1 = -81;
            return rawValue;
          case -8400:
            *v1 = -82;
            return rawValue;
          default:
            if (rawValue == -22201)
            {
              *v1 = -68;
            }

            else
            {
              if (rawValue != -22200)
              {
                goto LABEL_192;
              }

              *v1 = -69;
            }

            break;
        }

        return rawValue;
      }

      switch(rawValue)
      {
        case -22204:
          *v1 = -65;
          return rawValue;
        case -22203:
          *v1 = -66;
          return rawValue;
        case -22202:
          *v1 = -67;
          return rawValue;
      }
    }

LABEL_192:
    if (rawValue <= -72206)
    {
      if (rawValue > -72211)
      {
        if (rawValue <= -72209)
        {
          if (rawValue == -72210)
          {
            *v1 = -50;
          }

          else
          {
            *v1 = -51;
          }
        }

        else if (rawValue == -72208)
        {
          *v1 = -52;
        }

        else if (rawValue == -72207)
        {
          *v1 = -53;
        }

        else
        {
          *v1 = -54;
        }

        return rawValue;
      }

      if (rawValue > -72781)
      {
        if (rawValue == -72780)
        {
          *v1 = -48;
          return rawValue;
        }

        if (rawValue == -72211)
        {
          *v1 = -49;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == -72782)
        {
          *v1 = -46;
          return rawValue;
        }

        if (rawValue == -72781)
        {
          *v1 = -47;
          return rawValue;
        }
      }
    }

    else
    {
      if (rawValue <= -72201)
      {
        if (rawValue <= -72204)
        {
          if (rawValue == -72205)
          {
            *v1 = -55;
          }

          else
          {
            *v1 = -56;
          }
        }

        else if (rawValue == -72203)
        {
          *v1 = -57;
        }

        else if (rawValue == -72202)
        {
          *v1 = -58;
        }

        else
        {
          *v1 = -59;
        }

        return rawValue;
      }

      if (rawValue <= -22208)
      {
        if (rawValue == -72200)
        {
          *v1 = -60;
          return rawValue;
        }

        if (rawValue == -22208)
        {
          *v1 = -61;
          return rawValue;
        }
      }

      else
      {
        switch(rawValue)
        {
          case -22205:
            *v1 = -64;
            return rawValue;
          case -22206:
            *v1 = -63;
            return rawValue;
          case -22207:
            *v1 = -62;
            return rawValue;
        }
      }
    }

    *v1 = -45;
    return rawValue;
  }

  if (rawValue > 19999)
  {
    switch(rawValue)
    {
      case 20000:
        *v1 = 25;
        return rawValue;
      case 20001:
        *v1 = 26;
        return rawValue;
      case 20100:
        *v1 = 27;
        return rawValue;
    }

    goto LABEL_159;
  }

  v2 = 0;
  switch(rawValue)
  {
    case -29:
      *v1 = 23;
      return rawValue;
    case -28:
      *v1 = 22;
      return rawValue;
    case -22:
      *v1 = 21;
      return rawValue;
    case -21:
      *v1 = 20;
      return rawValue;
    case -20:
      *v1 = 19;
      return rawValue;
    case -19:
      *v1 = 18;
      return rawValue;
    case -18:
      *v1 = 17;
      return rawValue;
    case -17:
      *v1 = 16;
      return rawValue;
    case -16:
      *v1 = 15;
      return rawValue;
    case -15:
      *v1 = 14;
      return rawValue;
    case -14:
      *v1 = 13;
      return rawValue;
    case -13:
      *v1 = 12;
      return rawValue;
    case -12:
      *v1 = 11;
      return rawValue;
    case -11:
      *v1 = 10;
      return rawValue;
    case -10:
      *v1 = 9;
      return rawValue;
    case -9:
      *v1 = 8;
      return rawValue;
    case -8:
      *v1 = 7;
      return rawValue;
    case -7:
      *v1 = 6;
      return rawValue;
    case -6:
      *v1 = 5;
      return rawValue;
    case -5:
      *v1 = 4;
      return rawValue;
    case -4:
      *v1 = 3;
      return rawValue;
    case -3:
      *v1 = 2;
      return rawValue;
    case -2:
      v2 = 1;
      goto LABEL_136;
    case -1:
LABEL_136:
      *v1 = v2;
      break;
    case 200:
      *v1 = 24;
      break;
    default:
      goto LABEL_159;
  }

  return rawValue;
}

uint64_t sub_1DAF72424()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](qword_1DB0A46A0[v1 ^ 0x80]);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF724B4()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](qword_1DB0A46A0[v1 ^ 0x80]);
  return sub_1DB09E3E4();
}

CoreODIEssentials::ODIErrorPropertyKey_optional __swiftcall ODIErrorPropertyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODIErrorPropertyKey.rawValue.getter()
{
  result = 0x776F6C666B726F77;
  switch(*v0)
  {
    case 1:
      result = 0x72656469766F7270;
      break;
    case 2:
      result = 0x5255726576726573;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x4974736575716572;
      break;
    case 6:
      result = 0x61737265766E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6552656369766564;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x6761735574726563;
      break;
    case 0xB:
      result = 0x6573616261746164;
      break;
    case 0xC:
      result = 0x74737973656C6966;
      break;
    case 0xD:
      result = 0x69796C7265646E75;
      break;
    case 0xE:
      result = 0x746E756F43797274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAF7281C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ODIErrorPropertyKey.rawValue.getter();
  v4 = v3;
  if (v2 == ODIErrorPropertyKey.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DB09E254();
  }

  return v7 & 1;
}

uint64_t sub_1DAF728B8()
{
  v1 = *v0;
  sub_1DB09E3A4();
  ODIErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF72920()
{
  v2 = *v0;
  ODIErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();
}

uint64_t sub_1DAF72984()
{
  v1 = *v0;
  sub_1DB09E3A4();
  ODIErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAF729F4@<X0>(unint64_t *a1@<X8>)
{
  result = ODIErrorPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DAF72A1C()
{
  v0 = objc_opt_self();
  v1 = sub_1DB09D6B4();
  v3[4] = sub_1DAF72AFC;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1DAF4D5C4;
  v3[3] = &block_descriptor_4;
  v2 = _Block_copy(v3);
  [v0 setUserInfoValueProviderForDomain:v1 provider:v2];
  _Block_release(v2);
}

uint64_t sub_1DAF72AFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *MEMORY[0x1E696A578];
  if (sub_1DB09D6C4() == a2 && v9 == a3)
  {

    goto LABEL_13;
  }

  v11 = sub_1DB09E254();

  if (v11)
  {
LABEL_13:
    result = sub_1DAF742F8(a1);
    goto LABEL_14;
  }

  v12 = *MEMORY[0x1E696A278];
  if (sub_1DB09D6C4() == a2 && v13 == a3)
  {
  }

  else
  {
    v15 = sub_1DB09E254();

    if ((v15 & 1) == 0)
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

  result = sub_1DAF749BC(a1);
LABEL_14:
  *(a4 + 24) = MEMORY[0x1E69E6158];
  *a4 = result;
  *(a4 + 8) = v17;
  return result;
}

char sub_1DAF72C08@<W0>(_BYTE *a1@<X8>)
{
  v2 = sub_1DB09CE64();
  v3 = [v2 domain];
  v4 = sub_1DB09D6C4();
  v6 = v5;

  if (v4 == 0x726F72724549444FLL && v6 == 0xE800000000000000)
  {
  }

  else
  {
    v8 = sub_1DB09E254();

    if ((v8 & 1) == 0)
    {
      v17 = 45;
      v18 = 0xE100000000000000;
      sub_1DB09DE44();

      v16[0] = 0xD00000000000000ELL;
      v16[1] = 0x80000001DB0C3310;
      v9 = [v2 description];
      v10 = sub_1DB09D6C4();
      v12 = v11;

      MEMORY[0x1E127FE90](v10, v12);

      CoreODILogger.error(_:category:)(0xD000000000000018, 0x80000001DB0C3310, v16);

      *a1 = 0;
      return result;
    }
  }

  v14 = [v2 code];

  result = ODIErrorCode.init(rawValue:)(v14).value;
  v15 = v17;
  if (v17 == 211)
  {
    v15 = 0;
  }

  *a1 = v15;
  return result;
}

char *sub_1DAF72DB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E440, &unk_1DB0A0580);
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

char *sub_1DAF72EDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E708, &qword_1DB0AC370);
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

char *sub_1DAF73010(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 56);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[56 * v10])
    {
      memmove(v14, v15, 56 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1DAF7315C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E598, &qword_1DB0A28D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAF73290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E570, &qword_1DB0A2828);
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

size_t sub_1DAF733EC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_1DAF735C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E750, &qword_1DB0A5150);
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

char *sub_1DAF736F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6D8, &unk_1DB0A45E0);
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

size_t sub_1DAF73844(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_1DAF73A2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E700, &unk_1DB0A4610);
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

void *sub_1DAF73B38(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6E0, &unk_1DB0A45F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6E8, &unk_1DB0B2670);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAF73C6C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E738, &qword_1DB0A4648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAF73DC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

unint64_t sub_1DAF73EB8()
{
  result = qword_1ECC0E6D0;
  if (!qword_1ECC0E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E6D0);
  }

  return result;
}

unint64_t sub_1DAF73F10()
{
  result = qword_1EE3026F0;
  if (!qword_1EE3026F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3026F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODIErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x2E)
  {
    goto LABEL_17;
  }

  if (a2 + 210 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 210) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 210;
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

      return (*a1 | (v4 << 8)) - 210;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 210;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD3;
  v8 = v6 - 211;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 210 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 210) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x2E)
  {
    v4 = 0;
  }

  if (a2 > 0x2D)
  {
    v5 = ((a2 - 46) >> 8) + 1;
    *result = a2 - 46;
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
    *result = a2 - 46;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODIErrorPropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIErrorPropertyKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials8TTRErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DAF74234(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DAF7427C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DAF742C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DAF742F8(void *a1)
{
  if (!a1)
  {
    return 0x3E6C696E3CLL;
  }

  v2 = a1;
  v3 = sub_1DB09CE64();
  v4 = [v3 userInfo];
  v5 = sub_1DB09D624();

  v49 = a1;
  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1DAF409DC(*(v5 + 56) + 32 * v6, v54);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v14 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_13;
  }

  v8 = *(v51 + 16);
  if (!v8)
  {
LABEL_11:

    goto LABEL_12;
  }

  v9 = v8 + 1;
  v10 = (v51 + 56 * v8);
  while (1)
  {
    v12 = *(v10 - 3);
    v11 = *(v10 - 2);
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      break;
    }

    --v9;
    v10 -= 7;
    if (v9 <= 1)
    {
      goto LABEL_11;
    }
  }

  v45 = v10[2];
  v46 = *v10;
  v47 = *(v10 - 2);

  *&v54[0] = 40;
  *(&v54[0] + 1) = 0xE100000000000000;

  MEMORY[0x1E127FE90](v12, v11);

  swift_bridgeObjectRelease_n();
  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v15 = *(&v54[0] + 1);
  v14 = *&v54[0];
LABEL_13:
  ODIErrorCode.init(rawValue:)([v3 code]);
  if (LOBYTE(v54[0]) == 211)
  {
    v16 = 0xE90000000000003ELL;
    v17 = 0x6E776F6E6B6E753CLL;
  }

  else
  {
    v17 = sub_1DB09D744();
    v16 = v19;
  }

  *&v54[0] = 0;
  *(&v54[0] + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v54[0] = 0x20726F727245;
  *(&v54[0] + 1) = 0xE600000000000000;
  MEMORY[0x1E127FE90](v14, v15);

  MEMORY[0x1E127FE90](0x206E69616D6F4420, 0xEA0000000000203DLL);
  v20 = [v3 domain];
  v21 = sub_1DB09D6C4();
  v23 = v22;

  MEMORY[0x1E127FE90](v21, v23);

  MEMORY[0x1E127FE90](0x203D2065646F4320, 0xE800000000000000);
  *&v51 = [v3 code];
  v24 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v24);

  MEMORY[0x1E127FE90](10272, 0xE200000000000000);
  MEMORY[0x1E127FE90](v17, v16);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v18 = *&v54[0];
  v56 = v54[0];
  v25 = [v3 userInfo];
  v26 = sub_1DB09D624();

  if (!*(v26 + 16) || (v27 = sub_1DAF35210(0x65706F725049444FLL, 0xED00007365697472), (v28 & 1) == 0))
  {

    return v18;
  }

  sub_1DAF409DC(*(v26 + 56) + 32 * v27, v54);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6C8, &unk_1DB0A3F68);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return v18;
  }

  v29 = v51;
  if (!*(v51 + 16))
  {

    return v18;
  }

  v48 = v3;
  result = MEMORY[0x1E127FE90](0x747265706F725020, 0xEF5B203D20736569);
  v31 = 0;
  v32 = 0;
  v33 = 1 << *(v51 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v51 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = 0xE000000000000000;
  if (v35)
  {
    while (1)
    {
      v38 = v32;
LABEL_32:
      v41 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v42 = v41 | (v38 << 6);
      v43 = *(*(v29 + 48) + v42);
      sub_1DAF409DC(*(v29 + 56) + 32 * v42, v50);
      LOBYTE(v51) = v43;
      sub_1DAF40D20(v50, (&v51 + 8));
      v40 = v38;
LABEL_33:
      v54[0] = v51;
      v54[1] = v52;
      v55 = v53;
      if (!v53)
      {
        break;
      }

      sub_1DAF40D20((v54 + 8), &v51);
      *&v50[0] = 0;
      *(&v50[0] + 1) = 0xE000000000000000;
      sub_1DB09DF94();
      MEMORY[0x1E127FE90](8250, 0xE200000000000000);
      __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
      sub_1DB09E234();
      v44 = v50[0];
      *&v50[0] = v31;
      *(&v50[0] + 1) = v37;

      MEMORY[0x1E127FE90](v44, *(&v44 + 1));

      MEMORY[0x1E127FE90](*&v50[0], *(&v50[0] + 1));

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v51);
      v31 = 8236;
      v37 = 0xE200000000000000;
      v32 = v40;
      if (!v35)
      {
        goto LABEL_25;
      }
    }

    MEMORY[0x1E127FE90](93, 0xE100000000000000);

    return v56;
  }

LABEL_25:
  if (v36 <= v32 + 1)
  {
    v39 = v32 + 1;
  }

  else
  {
    v39 = v36;
  }

  v40 = v39 - 1;
  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v36)
    {
      v35 = 0;
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      goto LABEL_33;
    }

    v35 = *(v29 + 64 + 8 * v38);
    ++v32;
    if (v35)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAF749BC(void *a1)
{
  v71 = sub_1DB09CF64();
  v2 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71, v3);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0x3E6C696E3CLL;
  }

  v72 = v4;
  v6 = a1;
  v68 = sub_1DB09CE64();
  ODIErrorCode.init(rawValue:)([v68 code]);
  if (LOBYTE(v78[0]) == 211)
  {
    v7 = 0xE90000000000003ELL;
    v8 = 0x6E776F6E6B6E753CLL;
  }

  else
  {
    v8 = sub_1DB09D744();
    v7 = v10;
  }

  v11 = v68;
  v12 = [v68 userInfo];
  v13 = sub_1DB09D624();

  *&v78[0] = 0;
  *(&v78[0] + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v78[0] = 0x6F4420726F727245;
  *(&v78[0] + 1) = 0xEF203D206E69616DLL;
  v14 = [v11 domain];
  v15 = sub_1DB09D6C4();
  v17 = v16;

  MEMORY[0x1E127FE90](v15, v17);

  MEMORY[0x1E127FE90](0x203D2065646F4320, 0xE800000000000000);
  *&v75 = [v11 code];
  v18 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v18);

  MEMORY[0x1E127FE90](10272, 0xE200000000000000);
  MEMORY[0x1E127FE90](v8, v7);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v80 = v78[0];
  v19 = *(v13 + 16);
  v69 = v13;
  if (!v19 || (v20 = sub_1DAF35210(0x65706F725049444FLL, 0xED00007365697472), (v21 & 1) == 0) || (sub_1DAF409DC(*(v13 + 56) + 32 * v20, v78), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6C8, &unk_1DB0A3F68), (swift_dynamicCast() & 1) == 0))
  {
LABEL_26:
    if (*(v13 + 16))
    {
      v37 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v38)
      {
        sub_1DAF409DC(*(v13 + 56) + 32 * v37, v78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v39 = v75;
          if (*(v75 + 16))
          {
            result = MEMORY[0x1E127FE90](0x61636F766E49090ALL, 0xEE003A736E6F6974);
            v40 = *(v39 + 16);
            if (v40)
            {
              v65 = a1;
              v66 = (v72 + 8);
              v41 = v40 + 1;
              v42 = (v39 + 56 * v40);
              v67 = v39;
              while (v41 - 2 < *(v39 + 16))
              {
                v43 = *(v42 - 2);
                v72 = *(v42 - 3);
                v44 = *(v42 - 1);
                v45 = *v42;
                v46 = v42[1];
                v47 = v42[2];
                v48 = v42[3];

                MEMORY[0x1E127FE90](10, 0xE100000000000000);
                v49 = v70;
                sub_1DB09CEC4();
                v50 = sub_1DB09CED4();
                v52 = v51;
                (*v66)(v49, v71);
                *&v78[0] = v50;
                *(&v78[0] + 1) = v52;
                MEMORY[0x1E127FE90](58, 0xE100000000000000);

                MEMORY[0x1E127FE90](v46, v47);

                MEMORY[0x1E127FE90](58, 0xE100000000000000);
                *&v75 = v48;
                v53 = sub_1DB09E1D4();
                MEMORY[0x1E127FE90](v53);

                v54 = v78[0];
                *&v78[0] = 539822345;
                *(&v78[0] + 1) = 0xE400000000000000;
                MEMORY[0x1E127FE90](v54, *(&v54 + 1));

                MEMORY[0x1E127FE90](*&v78[0], *(&v78[0] + 1));
                v55 = v72;

                if (!v55 && v43 == 0xE000000000000000 || (sub_1DB09E254() & 1) != 0)
                {
                }

                else
                {
                  *&v78[0] = 9;
                  *(&v78[0] + 1) = 0xE100000000000000;

                  MEMORY[0x1E127FE90](v55, v43);

                  swift_bridgeObjectRelease_n();
                  MEMORY[0x1E127FE90](*&v78[0], *(&v78[0] + 1));
                }

                v39 = v67;
                --v41;
                v42 -= 7;
                v13 = v69;
                if (v41 <= 1)
                {

                  a1 = v65;
                  goto LABEL_41;
                }
              }

              goto LABEL_52;
            }
          }
        }
      }
    }

LABEL_41:
    v56 = *MEMORY[0x1E696AA08];
    v57 = sub_1DB09D6C4();
    if (*(v13 + 16))
    {
      v59 = sub_1DAF35210(v57, v58);
      v61 = v60;

      if (v61)
      {
        sub_1DAF409DC(*(v13 + 56) + 32 * v59, v78);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
        if (swift_dynamicCast())
        {
          v62 = v75;
          MEMORY[0x1E127FE90](0xD000000000000013, 0x80000001DB0C2680);
          *&v78[0] = 0;
          *(&v78[0] + 1) = 0xE000000000000000;
          swift_getErrorValue();
          sub_1DB09E234();
          v63 = v78[0];
          *&v78[0] = 0x202D09090ALL;
          *(&v78[0] + 1) = 0xE500000000000000;
          MEMORY[0x1E127FE90](v63, *(&v63 + 1));

          MEMORY[0x1E127FE90](*&v78[0], *(&v78[0] + 1));

          return v80;
        }

LABEL_48:
        return v80;
      }
    }

    else
    {
    }

    goto LABEL_48;
  }

  v65 = a1;
  v22 = v75;
  result = MEMORY[0x1E127FE90](0x7265706F7250090ALL, 0xED00003A73656974);
  v23 = 0;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v27 = (v24 + 63) >> 6;
  if (v26)
  {
    while (1)
    {
      v28 = v23;
LABEL_20:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v31 | (v28 << 6);
      v33 = *(*(v22 + 48) + v32);
      sub_1DAF409DC(*(v22 + 56) + 32 * v32, v74);
      LOBYTE(v75) = v33;
      sub_1DAF40D20(v74, (&v75 + 8));
      v30 = v28;
LABEL_21:
      v78[0] = v75;
      v78[1] = v76;
      v79 = v77;
      if (!v77)
      {
        break;
      }

      v34 = v78[0];
      sub_1DAF40D20((v78 + 8), &v75);
      MEMORY[0x1E127FE90](10, 0xE100000000000000);
      *&v74[0] = 0;
      *(&v74[0] + 1) = 0xE000000000000000;
      v73 = v34;
      sub_1DB09DF94();
      MEMORY[0x1E127FE90](8250, 0xE200000000000000);
      __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
      sub_1DB09E234();
      v36 = *(&v74[0] + 1);
      v35 = *&v74[0];
      *&v74[0] = 539822345;
      *(&v74[0] + 1) = 0xE400000000000000;
      MEMORY[0x1E127FE90](v35, v36);

      MEMORY[0x1E127FE90](*&v74[0], *(&v74[0] + 1));

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v75);
      v23 = v30;
      if (!v26)
      {
        goto LABEL_13;
      }
    }

    a1 = v65;
    v13 = v69;
    goto LABEL_26;
  }

LABEL_13:
  if (v27 <= v23 + 1)
  {
    v29 = v23 + 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v28 >= v27)
    {
      v26 = 0;
      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      goto LABEL_21;
    }

    v26 = *(v22 + 64 + 8 * v28);
    ++v23;
    if (v26)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1DAF753BC()
{
  v0 = sub_1DB09CE64();
  v1 = [v0 domain];
  v2 = sub_1DB09D6C4();
  v4 = v3;

  if (v2 == 0x726F72724549444FLL && v4 == 0xE800000000000000)
  {
  }

  else
  {
    v6 = sub_1DB09E254();

    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v7 = [v0 userInfo];
  v8 = sub_1DB09D624();

  if (!*(v8 + 16) || (v9 = sub_1DAF35210(0x65706F725049444FLL, 0xED00007365697472), (v10 & 1) == 0))
  {

LABEL_14:

    return 0;
  }

  sub_1DAF409DC(*(v8 + 56) + 32 * v9, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6C8, &unk_1DB0A3F68);
  if (swift_dynamicCast())
  {
    result = v12;
    if (*(v12 + 16))
    {
      return result;
    }
  }

  return 0;
}

unint64_t sub_1DAF75558()
{
  result = qword_1ECC0E728;
  if (!qword_1ECC0E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E728);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAF755C4()
{
  type metadata accessor for DeviceStatus();
  v0 = swift_allocObject();
  result = sub_1DAF75600();
  qword_1ECC25A50 = v0;
  return result;
}

uint64_t sub_1DAF75600()
{
  v15 = sub_1DB09DBB4();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v15, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DB09DBA4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_1DB09D4F4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v14 = sub_1DAF4062C(0, &qword_1EE3018E0, 0x1E69E9610);
  sub_1DB09D4E4();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DAF75F08(&qword_1EE3018F0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DAF75F50(&qword_1EE301918, &unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DB09DCF4();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8090], v15);
  v11 = sub_1DB09DBE4();
  v12 = v16;
  *(v16 + 16) = v11;
  *(v12 + 24) = [objc_allocWithZone(MEMORY[0x1E69D8A58]) initWithQueue_];
  return v12;
}

BOOL sub_1DAF7588C()
{
  v1 = [*(v0 + 24) currentAudioAndVideoCalls];
  sub_1DAF4062C(0, &qword_1ECC0E780, 0x1E69D8A40);
  v2 = sub_1DB09D934();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_1DB09DD44();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E1280530](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 isSharingScreen];

    v4 = v5 + 1;
  }

  while (!v8);

  return v3 != v5;
}

uint64_t sub_1DAF759B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB09D4C4();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB09D4F4();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E778, &unk_1DB0A4EC0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v24 - v18;
  v24[1] = *(a2 + 16);
  (*(v15 + 16))(v24 - v18, a1, v14);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = swift_allocObject();
  (*(v15 + 32))(v21 + v20, v19, v14);
  *(v21 + ((v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1DAF75E58;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF75DB0;
  aBlock[3] = &block_descriptor_5;
  v22 = _Block_copy(aBlock);

  sub_1DB09D4E4();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1DAF75F08(&unk_1EE301990, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DAF75F50(&qword_1EE301940, &qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DB09DCF4();
  MEMORY[0x1E12802A0](0, v13, v8, v22);
  _Block_release(v22);
  (*(v27 + 8))(v8, v4);
  (*(v25 + 8))(v13, v26);
}

uint64_t sub_1DAF75D54()
{
  sub_1DAF7588C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E778, &unk_1DB0A4EC0);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAF75DB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1DAF75DF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DAF75E58()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E778, &unk_1DB0A4EC0) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DAF75D54();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAF75F08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAF75F50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAF75FB4(const void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_1DB09CC54();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1DB09CC44();
  memcpy(__dst, a1, sizeof(__dst));
  sub_1DAF761E0();
  v8 = sub_1DB09CC34();
  v10 = v9;

  v11 = sub_1DB09D014();
  sub_1DAF40780(v8, v10);
  return v11;
}

unint64_t sub_1DAF761E0()
{
  result = qword_1EE3011A8;
  if (!qword_1EE3011A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011A8);
  }

  return result;
}

uint64_t static RavioliFetcher.fetchRavioli(session:url:appBundleId:notificationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[20] = a1;
  v7 = sub_1DB09CBF4();
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = type metadata accessor for RavioliRequestFactory();
  v6[28] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF7632C, 0, 0);
}

uint64_t sub_1DAF7632C()
{
  v12 = v0;
  v1 = [*(v0 + 160) configuration];
  v2 = [v1 _appleIDContext];

  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 14;
    CoreODILogger.fault(_:category:)(0xD000000000000047, 0x80000001DB0C33E0, &v11);
  }

  v3 = *(v0 + 160);
  type metadata accessor for RavioliFetcherImpl();
  inited = swift_initStackObject();
  *(v0 + 240) = inited;
  *(inited + 16) = v3;
  v5 = qword_1EE302C70;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE302C80;
  *(v0 + 40) = type metadata accessor for DeviceInformation();
  *(v0 + 48) = &protocol witness table for DeviceInformation;
  *(v0 + 16) = v7;
  v8 = qword_1EE3039A0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE3039B0;
  *(v0 + 248) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF764D8, v9, 0);
}

uint64_t sub_1DAF764D8()
{
  if (*(*(v0 + 248) + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF766A8, 0, 0);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 256) = v1;
    *v1 = v0;
    v1[1] = sub_1DAF765AC;
    v2 = *(v0 + 248);

    return sub_1DAFC5F3C();
  }
}