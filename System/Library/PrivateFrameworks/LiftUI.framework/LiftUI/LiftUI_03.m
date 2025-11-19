unint64_t sub_255D711E4()
{
  result = qword_27F7E7148;
  if (!qword_27F7E7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7148);
  }

  return result;
}

unint64_t sub_255D7123C()
{
  result = qword_27F7E7150;
  if (!qword_27F7E7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7150);
  }

  return result;
}

unint64_t sub_255D71294()
{
  result = qword_27F7E7158;
  if (!qword_27F7E7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7158);
  }

  return result;
}

uint64_t sub_255D712E8()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D71334()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D71380()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D713CC()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D71418()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D71464()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D714B0()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255D714FC()
{
  result = qword_27F7E7160;
  if (!qword_27F7E7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7160);
  }

  return result;
}

uint64_t sub_255D715C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (v1[14])
  {
    v4 = v1[13];

    LOBYTE(v4) = sub_255E1AAC0(v5);

    if (v4)
    {
      sub_255D4FB3C((v2 + 3), &v11);
      v6 = v13;
      if (v13)
      {
LABEL_4:
        v7 = v14;
        __swift_project_boxed_opaque_existential_1(&v11, v13);
        (*(v7 + 24))(v6, v7);
        __swift_destroy_boxed_opaque_existential_1Tm(&v11);
LABEL_7:
        result = sub_255E39258();
        v9 = v12;
        *a1 = v11;
        *(a1 + 8) = v9;
        return result;
      }
    }

    else
    {
      sub_255D4FB3C((v2 + 8), &v11);
      v6 = v13;
      if (v13)
      {
        goto LABEL_4;
      }
    }

    sub_255D395E4(&v11, &qword_27F7E6558, &qword_255E3DD80);
    sub_255E3A038();
    goto LABEL_7;
  }

  v10 = v1[15];
  type metadata accessor for RemoteStateStore(0);
  sub_255D723B8(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D717D8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D71884()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D7191C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D719C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D72548();
  *a2 = result;
  return result;
}

void sub_255D719F4(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE400000000000000;
  v5 = 1702063205;
  if (*v1 != 2)
  {
    v5 = 0x6F697469646E6F63;
    v4 = 0xE90000000000006ELL;
  }

  if (*v1)
  {
    v3 = 1852139636;
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

uint64_t sub_255D71A5C()
{
  v1 = 25705;
  v2 = 1702063205;
  if (*v0 != 2)
  {
    v2 = 0x6F697469646E6F63;
  }

  if (*v0)
  {
    v1 = 1852139636;
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

uint64_t sub_255D71AC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D72548();
  *a1 = result;
  return result;
}

uint64_t sub_255D71AE8(uint64_t a1)
{
  v2 = sub_255D72364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D71B24(uint64_t a1)
{
  v2 = sub_255D72364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D71B60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_255E385D8();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7178, &qword_255E45728);
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v56[2] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D723B8(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v44 = sub_255E38CC8();
  v56[14] = v44;
  v56[15] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D72364();
  v13 = v57;
  sub_255E3AE28();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = v42;
    LOBYTE(v46) = 0;
    v15 = sub_255E3AB88();
    v57 = v10;
    if (!v16)
    {
      v18 = v6;
      sub_255E385C8();
      v19 = sub_255E385B8();
      v21 = v20;
      (*(v14 + 8))(v18, v3);
      v16 = v21;
      v15 = v19;
    }

    v56[0] = v15;
    v56[1] = v16;
    v42 = v16;
    v45 = 1;
    sub_255D447E8();
    sub_255E3ABA8();
    if (*(&v46 + 1))
    {
      v22 = sub_255D44794();
      v23 = swift_allocObject();
      v24 = v53;
      *(v23 + 112) = v52;
      *(v23 + 128) = v24;
      *(v23 + 144) = v54;
      *(v23 + 160) = v55;
      v25 = v49;
      *(v23 + 48) = v48;
      *(v23 + 64) = v25;
      v26 = v51;
      *(v23 + 80) = v50;
      *(v23 + 96) = v26;
      v27 = v47;
      *(v23 + 16) = v46;
      *(v23 + 32) = v27;
      v28 = &type metadata for ViewContent;
    }

    else
    {
      sub_255D395E4(&v46, &qword_27F7E6C20, &qword_255E58D80);
      v23 = 0;
      v28 = 0;
      v22 = 0;
    }

    v56[3] = v23;
    v56[4] = 0;
    v56[5] = 0;
    v56[6] = v28;
    v56[7] = v22;
    v45 = 2;
    sub_255E3ABA8();
    v40 = 0;
    v29 = a1;
    if (*(&v46 + 1))
    {
      v30 = sub_255D44794();
      v31 = swift_allocObject();
      v32 = v53;
      *(v31 + 112) = v52;
      *(v31 + 128) = v32;
      *(v31 + 144) = v54;
      *(v31 + 160) = v55;
      v33 = v49;
      *(v31 + 48) = v48;
      *(v31 + 64) = v33;
      v34 = v51;
      *(v31 + 80) = v50;
      *(v31 + 96) = v34;
      v35 = v47;
      *(v31 + 16) = v46;
      *(v31 + 32) = v35;
      v36 = &type metadata for ViewContent;
    }

    else
    {
      sub_255D395E4(&v46, &qword_27F7E6C20, &qword_255E58D80);
      v30 = 0;
      v36 = 0;
      v31 = 0;
    }

    v37 = v41;
    v38 = v43;
    v56[8] = v31;
    v56[9] = 0;
    v56[10] = 0;
    v56[11] = v36;
    v56[12] = v30;
    type metadata accessor for Condition();
    v45 = 3;
    sub_255D723B8(&qword_27F7E7188, type metadata accessor for Condition);
    v39 = v57;
    sub_255E3ABC8();
    (*(v38 + 8))(v39, v7);
    v56[13] = v46;
    sub_255D4E418(v56, v37);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    return sub_255D72400(v56);
  }
}

uint64_t sub_255D72114@<X0>(uint64_t *a1@<X8>)
{
  sub_255D715C0(&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6580, &qword_255E3DDA0);
  sub_255D722E8();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255D721BC()
{
  sub_255D72218();
  sub_255D4E344();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D72218()
{
  result = qword_27F7E7168;
  if (!qword_27F7E7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7168);
  }

  return result;
}

unint64_t sub_255D7226C(uint64_t a1)
{
  result = sub_255D72294();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D72294()
{
  result = qword_27F7E7170;
  if (!qword_27F7E7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7170);
  }

  return result;
}

unint64_t sub_255D722E8()
{
  result = qword_27F7E6588;
  if (!qword_27F7E6588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6580, &qword_255E3DDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6588);
  }

  return result;
}

unint64_t sub_255D72364()
{
  result = qword_27F7E7180;
  if (!qword_27F7E7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7180);
  }

  return result;
}

uint64_t sub_255D723B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255D72444()
{
  result = qword_27F7E7190;
  if (!qword_27F7E7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7190);
  }

  return result;
}

unint64_t sub_255D7249C()
{
  result = qword_27F7E7198;
  if (!qword_27F7E7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7198);
  }

  return result;
}

unint64_t sub_255D724F4()
{
  result = qword_27F7E71A0;
  if (!qword_27F7E71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E71A0);
  }

  return result;
}

uint64_t sub_255D72548()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D725AC()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D726B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D73434();
  *a2 = result;
  return result;
}

void sub_255D726E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0xEA00000000006C61;
  v6 = 0x746E6F7A69726F68;
  v7 = 0xE800000000000000;
  if (v2 != 5)
  {
    v6 = 0x6C61636974726576;
    v5 = 0xE800000000000000;
  }

  v8 = 0x676E696C69617274;
  if (v2 != 3)
  {
    v8 = 7105633;
    v7 = 0xE300000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x676E696461656CLL;
  if (v2 != 1)
  {
    v10 = 0x6D6F74746F62;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_255D7285C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x65746F6F466E6970;
  }

  else
  {
    v2 = 0x65646165486E6970;
  }

  if (*a2)
  {
    v3 = 0x65746F6F466E6970;
  }

  else
  {
    v3 = 0x65646165486E6970;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_255E3AC68();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_255D728F0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D72970()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D729D4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D72A50@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255D72AB0(uint64_t *a1@<X8>)
{
  v2 = 0x65646165486E6970;
  if (*v1)
  {
    v2 = 0x65746F6F466E6970;
  }

  *a1 = v2;
  a1[1] = 0xE900000000000072;
}

uint64_t sub_255D72AEC()
{
  if (*v0)
  {
    return 0x65746F6F466E6970;
  }

  else
  {
    return 0x65646165486E6970;
  }
}

uint64_t sub_255D72B24@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_255D72B88(uint64_t a1)
{
  v2 = sub_255D73660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D72BC4(uint64_t a1)
{
  v2 = sub_255D73660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D72C00@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_255E393D8();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v25 = &v23 - v9;
  v10 = *v2;
  v11 = *(v2 + 8);
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v29 = *(v2 + 40);
  v30 = v14;
  v28 = *(v2 + 48);
  v15 = *(v2 + 56);
  v31 = 0;
  sub_255D73480(&qword_27F7E71A8);
  v27 = a2;
  result = sub_255E3AE98();
  if (v13 != 255)
  {
    result = sub_255DDF1BC(a1, v10, v11, v12, v13 & 1);
    if (result)
    {
      v17 = v24;
      sub_255E393C8();
      v18 = v25;
      sub_255D72E58(v25, v17);
      v19 = *(v26 + 8);
      v19(v17, v5);
      result = (v19)(v18, v5);
    }
  }

  if (v15 != 255)
  {
    result = sub_255DDF1BC(a1, v30, v29, v28, v15 & 1);
    if (result)
    {
      v20 = v24;
      sub_255E393B8();
      v21 = v25;
      sub_255D72E58(v25, v20);
      v22 = *(v26 + 8);
      v22(v20, v5);
      return (v22)(v21, v5);
    }
  }

  return result;
}

uint64_t sub_255D72E58(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E71B0, &qword_255E45880);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = sub_255E393D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = *(v11 + 16);
  v27 = v2;
  v18(v15, v2, v10);
  v25 = sub_255D73480(&qword_27F7E71B8);
  sub_255E3A8E8();
  sub_255D73480(&qword_27F7E71C0);
  v26 = a2;
  v19 = sub_255E3A4B8();
  v29 = v4;
  v20 = *(v4 + 48);
  *v9 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v11 + 32))(&v9[v20], v17, v10);
  }

  else
  {
    (*(v11 + 8))(v17, v10);
    v21 = v26;
    v18(&v9[v20], v26, v10);
    v18(v15, v21, v10);
    sub_255E3A908();
  }

  v22 = v28;
  sub_255D734C4(v9, v28);
  v23 = *v22;
  (*(v11 + 32))(v30, &v22[*(v29 + 48)], v10);
  return v23;
}

uint64_t sub_255D73130@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E71D0, &unk_255E45BC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D73660();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
  LOBYTE(v23) = 0;
  sub_255D45734();
  sub_255E3ABA8();
  v21 = v26;
  v22 = v27;
  v36 = v28;
  v37 = 1;
  sub_255E3ABA8();
  (*(v6 + 8))(v9, v5);
  v20 = v33;
  v12 = v34;
  v19 = *(&v33 + 1);
  v13 = v35;
  v14 = v21;
  v23 = v21;
  v15 = v22;
  *&v24 = v22;
  v16 = v36;
  BYTE8(v24) = v36;
  *v25 = v33;
  *&v25[16] = v34;
  v25[24] = v35;
  v17 = v24;
  *v11 = v21;
  v11[1] = v17;
  v11[2] = *v25;
  *(v11 + 41) = *&v25[9];
  sub_255D736B4(&v23, &v26);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v20;
  v30 = v19;
  v31 = v12;
  v32 = v13;
  return sub_255D736EC(&v26);
}

uint64_t sub_255D73434()
{
  v0 = sub_255E3AB48();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D73480(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_255E393D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255D734C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E71B0, &qword_255E45880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13ReferenceableOySbGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D73558(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_255D735A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

unint64_t sub_255D7360C()
{
  result = qword_27F7E71C8;
  if (!qword_27F7E71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E71C8);
  }

  return result;
}

unint64_t sub_255D73660()
{
  result = qword_27F7E71D8;
  if (!qword_27F7E71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E71D8);
  }

  return result;
}

unint64_t sub_255D7371C()
{
  result = qword_27F7E71E0;
  if (!qword_27F7E71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E71E0);
  }

  return result;
}

unint64_t sub_255D73784()
{
  result = qword_27F7E71E8;
  if (!qword_27F7E71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E71E8);
  }

  return result;
}

unint64_t sub_255D737DC()
{
  result = qword_27F7E71F0;
  if (!qword_27F7E71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E71F0);
  }

  return result;
}

unint64_t sub_255D73834()
{
  result = qword_27F7E71F8;
  if (!qword_27F7E71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E71F8);
  }

  return result;
}

uint64_t sub_255D738E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_255D73934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI17SystemFontOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_255D739D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 153))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 88);
  if (v3 >= 0xFE)
  {
    v4 = 254;
  }

  else
  {
    v4 = *(a1 + 88);
  }

  v5 = (v4 ^ 0xFF) - 2;
  if (v3 <= 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_255D73A2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 88) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_255D73AAC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        return MEMORY[0x282132620]();
      }

      else
      {
        return MEMORY[0x282132530]();
      }
    }

    else if (a1 == 2)
    {
      return MEMORY[0x282132750]();
    }

    else if (a1 == 3)
    {
      return MEMORY[0x282132768]();
    }

    else
    {
      return MEMORY[0x2821327D8]();
    }
  }

  else if (a1 > 7u)
  {
    if (a1 == 8)
    {
      return MEMORY[0x2821327D0]();
    }

    else if (a1 == 9)
    {
      return MEMORY[0x2821327A0]();
    }

    else
    {
      return MEMORY[0x2821327C0]();
    }
  }

  else if (a1 == 5)
  {
    return MEMORY[0x282132548]();
  }

  else if (a1 == 6)
  {
    return MEMORY[0x2821325D0]();
  }

  else
  {
    return MEMORY[0x282132790]();
  }
}

uint64_t sub_255D73B28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746867696577;
  if (v2 != 1)
  {
    v3 = 0x6E6769736564;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1702521203;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x746867696577;
  if (*a2 != 1)
  {
    v6 = 0x6E6769736564;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1702521203;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D73C14()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D73CA8()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D73D28()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D73DB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D777D8();
  *a2 = result;
  return result;
}

void sub_255D73DE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x746867696577;
  if (v2 != 1)
  {
    v4 = 0x6E6769736564;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1702521203;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_255D73E38()
{
  v1 = 0x746867696577;
  if (*v0 != 1)
  {
    v1 = 0x6E6769736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_255D73E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D777D8();
  *a1 = result;
  return result;
}

uint64_t sub_255D73EAC(uint64_t a1)
{
  v2 = sub_255D77624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D73EE8(uint64_t a1)
{
  v2 = sub_255D77624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D73F24@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7380, &unk_255E47730);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D77624();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v33 = v5;
  LOBYTE(v36) = 0;
  sub_255D64774();
  sub_255E3ABA8();
  v30 = a1;
  v34 = v43;
  v31 = v44;
  v32 = *(&v43 + 1);
  v60 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
  LOBYTE(v36) = 0;
  sub_255D38950(&qword_27F7E7398, &qword_27F7E7390, &qword_255E55340);
  sub_255E3ABA8();
  v28 = *(&v43 + 1);
  v29 = v43;
  v11 = v44;
  v12 = v45;
  LOBYTE(v36) = 1;
  sub_255E3ABA8();
  v25 = v43;
  v26 = v44;
  v27 = v45;
  v61 = 2;
  sub_255E3ABA8();
  (*(v33 + 8))(v8, v4);
  v33 = v57;
  v23 = v58;
  v24 = *(&v57 + 1);
  HIDWORD(v22) = v59;
  v13 = v31;
  v14 = v32;
  *&v36 = v34;
  *(&v36 + 1) = v32;
  *&v37 = v31;
  v15 = v60;
  BYTE8(v37) = v60;
  v17 = v28;
  v16 = v29;
  *&v38 = v29;
  *(&v38 + 1) = v28;
  *&v39 = v11;
  BYTE8(v39) = v12;
  v40 = v25;
  *&v41 = v26;
  BYTE8(v41) = v27;
  v42[0] = v57;
  *&v42[1] = v58;
  BYTE8(v42[1]) = v59;
  v18 = v39;
  v19 = v35;
  v35[2] = v38;
  v19[3] = v18;
  v20 = v41;
  v19[4] = v40;
  v19[5] = v20;
  v21 = v37;
  *v19 = v36;
  v19[1] = v21;
  *(v19 + 105) = *(v42 + 9);
  v19[6] = v42[0];
  sub_255D76A50(&v36, &v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  *&v43 = v34;
  *(&v43 + 1) = v14;
  v44 = v13;
  v45 = v15;
  v46 = v16;
  v47 = v17;
  v48 = v11;
  v49 = v12;
  v50 = v25;
  v51 = v26;
  v52 = v27;
  v53 = v33;
  v54 = v24;
  v55 = v23;
  v56 = BYTE4(v22);
  return sub_255D77690(&v43);
}

uint64_t sub_255D74390(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7258, &qword_255E46908);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v27 = *(v1 + 72);
  v28 = v12;
  v26 = *(v1 + 80);
  v13 = *(v1 + 88);
  v14 = *(v1 + 96);
  v30 = *(v1 + 104);
  v31 = v14;
  v29 = *(v1 + 112);
  v15 = *(v1 + 120);
  if (v11 != 255)
  {
    sub_255DDEDA0(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), v11 & 1);
    v16 = sub_255D76920();
    if (v16 <= 1u)
    {
      if (v16)
      {
        [objc_opt_self() buttonFontSize];
      }

      else
      {
        [objc_opt_self() labelFontSize];
      }

      goto LABEL_13;
    }

    if (v16 == 2)
    {
      [objc_opt_self() smallSystemFontSize];
      goto LABEL_13;
    }

    if (v16 == 3)
    {
      [objc_opt_self() systemFontSize];
      goto LABEL_13;
    }
  }

  if (v10 <= 0xFD)
  {
    v32 = v8;
    v33 = v7;
    v34 = v9;
    v35 = v10;
    sub_255D612A0(v8, v7, v9, v10);
    sub_255D8F6FC(a1);
    sub_255D4CB98(v32, v33, v34, v35);
  }

LABEL_13:
  if (v13 != 255)
  {
    sub_255DDEDA0(a1, v28, v27, v26, v13 & 1);
  }

  if (v15 != 255)
  {
    sub_255DDEDA0(a1, v31, v30, v29, v15 & 1);
  }

  v17 = sub_255D7696C();
  if (v17 == 9)
  {
    v18 = 5;
  }

  else
  {
    v18 = v17;
  }

  v19 = sub_255D769B8();
  if (v18 <= 3u)
  {
    if (v18 > 1u)
    {
      if (v18 == 2)
      {
        sub_255E396D8();
      }

      else
      {
        sub_255E396E8();
      }
    }

    else if (v18)
    {
      sub_255E396A8();
    }

    else
    {
      sub_255E396C8();
    }
  }

  else if (v18 <= 5u)
  {
    if (v18 == 4)
    {
      sub_255E396F8();
    }

    else
    {
      sub_255E39708();
    }
  }

  else if (v18 == 6)
  {
    sub_255E39718();
  }

  else if (v18 == 7)
  {
    sub_255E396B8();
  }

  else
  {
    sub_255E39698();
  }

  if (v19 == 4)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  v21 = sub_255E39688();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v6, **(&unk_279812230 + v20), v21);
  sub_255E39688();
  (*(v22 + 56))(v6, 0, 1, v21);
  v23 = sub_255E39728();
  sub_255D395E4(v6, &qword_27F7E7258, &qword_255E46908);
  return v23;
}

uint64_t sub_255D747C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D6574737973;
  }

  else
  {
    v4 = 0x656C797473;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6D6574737973;
  }

  else
  {
    v6 = 0x656C797473;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D74860()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D748DC()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D74944()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D749BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255D74A1C(uint64_t *a1@<X8>)
{
  v2 = 0x656C797473;
  if (*v1)
  {
    v2 = 0x6D6574737973;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D74A54()
{
  if (*v0)
  {
    result = 0x6D6574737973;
  }

  else
  {
    result = 0x656C797473;
  }

  *v0;
  return result;
}

uint64_t sub_255D74A88@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_255D74AEC(uint64_t a1)
{
  v2 = sub_255D76C80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D74B28(uint64_t a1)
{
  v2 = sub_255D76C80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D74B64@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E72C0, &qword_255E46950);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D76C80();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v5;
  v11 = v50;
  LOBYTE(v27) = 0;
  sub_255D3EA0C();
  sub_255E3ABA8();
  v12 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v41 = 1;
  sub_255D76CD4();
  sub_255E3ABA8();
  (*(v10 + 8))(v8, v4);
  *&v49[23] = v43;
  *&v49[7] = v42;
  *&v49[87] = v47;
  *&v49[71] = v46;
  *&v49[103] = v48[0];
  *&v49[112] = *(v48 + 9);
  *&v49[39] = v44;
  *&v49[55] = v45;
  v13 = v12;
  v14 = v24;
  *&v27 = v12;
  *(&v27 + 1) = v24;
  v15 = v25;
  *&v28[0] = v25;
  LOBYTE(v10) = v26;
  BYTE8(v28[0]) = v26;
  *(v28 + 9) = *v49;
  *(&v28[1] + 9) = *&v49[16];
  *(&v28[5] + 9) = *&v49[80];
  *(&v28[4] + 9) = *&v49[64];
  *(&v28[6] + 9) = *&v49[96];
  *(&v28[7] + 9) = *(v48 + 9);
  *(&v28[2] + 9) = *&v49[32];
  *(&v28[3] + 9) = *&v49[48];
  v16 = v28[0];
  *v11 = v27;
  v11[1] = v16;
  v17 = v28[1];
  v18 = v28[2];
  v19 = v28[4];
  v11[4] = v28[3];
  v11[5] = v19;
  v11[2] = v17;
  v11[3] = v18;
  v20 = v28[5];
  v21 = v28[6];
  v22 = v28[7];
  *(v11 + 137) = *(&v28[7] + 9);
  v11[7] = v21;
  v11[8] = v22;
  v11[6] = v20;
  sub_255D76D28(&v27, &v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v37 = *&v49[64];
  v38 = *&v49[80];
  v39 = *&v49[96];
  v40 = *&v49[112];
  v33 = *v49;
  v34 = *&v49[16];
  v35 = *&v49[32];
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v10;
  v36 = *&v49[48];
  return sub_255D76D60(&v29);
}

uint64_t sub_255D74EF4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 80);
  v9 = *(v3 + 112);
  v56 = *(v3 + 96);
  v57 = v9;
  v10 = *(v3 + 112);
  v58[0] = *(v3 + 128);
  *(v58 + 9) = *(v3 + 137);
  v11 = *(v3 + 48);
  v52 = *(v3 + 32);
  v53 = v11;
  v12 = *(v3 + 80);
  v54 = *(v3 + 64);
  v55 = v12;
  v61 = v54;
  v62 = v8;
  v59 = v52;
  v60 = v11;
  *(v65 + 9) = *(v3 + 137);
  v13 = *(v3 + 128);
  v64 = v10;
  v65[0] = v13;
  v14 = *v3;
  v15 = *(v3 + 8);
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);
  v63 = v56;
  if (sub_255D7690C(&v59) == 1)
  {
    if (v17 <= 0xFD)
    {
      *&v45 = v14;
      *(&v45 + 1) = v15;
      *&v46 = v16;
      BYTE8(v46) = v17;
      sub_255D3E5A8(v14, v15, v16, v17);
      StringResolvable.resolved(with:)(a2);
      v18 = a3;
      if (v4)
      {
      }

      sub_255D38060(v45, *(&v45 + 1), v46, BYTE8(v46));
    }

    else
    {
      v18 = a3;
    }

    v34 = sub_255D76A04();
    if (v34 == 11)
    {
      v35 = 6;
    }

    else
    {
      v35 = v34;
    }

    v36 = a1[4];
    v66 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_255D73AAC(v35);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7240, &qword_255E468F8);
    v18[3] = sub_255E38AE8();
    sub_255D38950(&qword_27F7E7248, &qword_27F7E7240, &qword_255E468F8);
    v18[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v18);
    sub_255E39B78();
  }

  else
  {
    v19 = a2;
    v20 = a1[3];
    v38 = a1[4];
    v37 = __swift_project_boxed_opaque_existential_1(a1, v20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7240, &qword_255E468F8);
    v21 = sub_255E38AE8();
    v40 = &v37;
    v22 = *(v21 - 8);
    v66 = v4;
    v23 = v22;
    v24 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v39 = a3;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
    v43[12] = v63;
    v43[13] = v64;
    v44[0] = v65[0];
    *(v44 + 9) = *(v65 + 9);
    v43[8] = v59;
    v43[9] = v60;
    v43[10] = v61;
    v43[11] = v62;
    v47 = v54;
    v48 = v55;
    v45 = v52;
    v46 = v53;
    *(v51 + 9) = *(v58 + 9);
    v50 = v57;
    v51[0] = v58[0];
    v49 = v56;
    sub_255D76A50(&v45, v43);
    sub_255D74390(v19);
    v26 = v38;
    sub_255E39B78();

    MEMORY[0x28223BE20](v27);
    (*(v23 + 16))(&v37 - v25, &v37 - v25, v21);
    v28 = sub_255D38950(&qword_27F7E7248, &qword_27F7E7240, &qword_255E468F8);
    v41 = v26;
    v42 = v28;
    swift_getWitnessTable();
    v29 = sub_255E3A038();
    v30 = MEMORY[0x277CE11C0];
    v31 = v39;
    v39[3] = MEMORY[0x277CE11C8];
    v31[4] = v30;
    v32 = v31;
    sub_255D395E4(&v52, &qword_27F7E7250, &qword_255E46900);
    *v32 = v29;
    return (*(v23 + 8))(&v37 - v25, v21);
  }
}

uint64_t sub_255D753F8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D75450(uint64_t a1)
{
  v2 = sub_255D76C2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D7548C(uint64_t a1)
{
  v2 = sub_255D76C2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D75558@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D755B0(uint64_t a1)
{
  v2 = sub_255D76BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D755EC(uint64_t a1)
{
  v2 = sub_255D76BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D7566C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255E3AE28();
  if (!v5)
  {
    v13 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940);
    sub_255E3ABA8();
    (*(v22 + 8))(v11, v8);
    v14 = v20;
    v15 = v21;
    *v13 = v19;
    *(v13 + 16) = v14;
    *(v13 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D75880@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D758D8(uint64_t a1)
{
  v2 = sub_255D76B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D75914(uint64_t a1)
{
  v2 = sub_255D76B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D759D4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  v8 = *(v4 + 24);
  if (v8 == 255)
  {
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    a4[3] = swift_getOpaqueTypeMetadata2();
    a4[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a4);
    return a3(1, v15, v16);
  }

  else
  {
    result = sub_255DDF1BC(a2, *v4, *(v4 + 8), *(v4 + 16), v8 & 1);
    if (!v5)
    {
      v11 = result;
      v12 = a1;
      v13 = a1[3];
      v14 = a1[4];
      __swift_project_boxed_opaque_existential_1(v12, v13);
      a4[3] = swift_getOpaqueTypeMetadata2();
      a4[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(a4);
      return a3(v11 & 1, v13, v14);
    }
  }

  return result;
}

uint64_t sub_255D75B34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E399E8();
}

uint64_t sub_255D75C98@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D75CF0(uint64_t a1)
{
  v2 = sub_255D76B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D75D2C(uint64_t a1)
{
  v2 = sub_255D76B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D75E74@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D75ECC(uint64_t a1)
{
  v2 = sub_255D76ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D75F08(uint64_t a1)
{
  v2 = sub_255D76ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D75F88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255E3AE28();
  if (!v5)
  {
    v13 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    sub_255D38950(&qword_27F7E62E8, &qword_27F7E62E0, &qword_255E3C940);
    sub_255E3ABC8();
    (*(v22 + 8))(v11, v8);
    v14 = v20;
    v15 = v21;
    *v13 = v19;
    *(v13 + 16) = v14;
    *(v13 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D761B4()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D7624C()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D762F0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D76348(uint64_t a1)
{
  v2 = sub_255D76A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D76384(uint64_t a1)
{
  v2 = sub_255D76A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D76444@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, double)@<X5>, uint64_t *a4@<X8>)
{
  result = sub_255DDEF98(a2, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    v11 = a1[3];
    v12 = a1[4];
    v13 = v10;
    __swift_project_boxed_opaque_existential_1(a1, v11);
    a4[3] = swift_getOpaqueTypeMetadata2();
    a4[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a4);
    return a3(v11, v12, v13);
  }

  return result;
}

unint64_t sub_255D7652C(uint64_t a1)
{
  result = sub_255D76554();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D76554()
{
  result = qword_27F7E7200;
  if (!qword_27F7E7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7200);
  }

  return result;
}

unint64_t sub_255D765A8(uint64_t a1)
{
  result = sub_255D765D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D765D0()
{
  result = qword_27F7E7208;
  if (!qword_27F7E7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7208);
  }

  return result;
}

unint64_t sub_255D76624(uint64_t a1)
{
  result = sub_255D7664C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7664C()
{
  result = qword_27F7E7210;
  if (!qword_27F7E7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7210);
  }

  return result;
}

unint64_t sub_255D766A0(uint64_t a1)
{
  result = sub_255D766C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D766C8()
{
  result = qword_27F7E7218;
  if (!qword_27F7E7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7218);
  }

  return result;
}

unint64_t sub_255D7671C(uint64_t a1)
{
  result = sub_255D76744();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D76744()
{
  result = qword_27F7E7220;
  if (!qword_27F7E7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7220);
  }

  return result;
}

unint64_t sub_255D76798(uint64_t a1)
{
  result = sub_255D767C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D767C0()
{
  result = qword_27F7E7228;
  if (!qword_27F7E7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7228);
  }

  return result;
}

unint64_t sub_255D76814(uint64_t a1)
{
  result = sub_255D7683C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7683C()
{
  result = qword_27F7E7230;
  if (!qword_27F7E7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7230);
  }

  return result;
}

unint64_t sub_255D76890(uint64_t a1)
{
  result = sub_255D768B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D768B8()
{
  result = qword_27F7E7238;
  if (!qword_27F7E7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7238);
  }

  return result;
}

uint64_t sub_255D7690C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

uint64_t sub_255D76920()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D7696C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D769B8()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D76A04()
{
  v0 = sub_255E3AB48();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255D76A88()
{
  result = qword_27F7E7268;
  if (!qword_27F7E7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7268);
  }

  return result;
}

unint64_t sub_255D76ADC()
{
  result = qword_27F7E7278;
  if (!qword_27F7E7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7278);
  }

  return result;
}

unint64_t sub_255D76B30()
{
  result = qword_27F7E7288;
  if (!qword_27F7E7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7288);
  }

  return result;
}

unint64_t sub_255D76B84()
{
  result = qword_27F7E7298;
  if (!qword_27F7E7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7298);
  }

  return result;
}

unint64_t sub_255D76BD8()
{
  result = qword_27F7E72A8;
  if (!qword_27F7E72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E72A8);
  }

  return result;
}

unint64_t sub_255D76C2C()
{
  result = qword_27F7E72B8;
  if (!qword_27F7E72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E72B8);
  }

  return result;
}

unint64_t sub_255D76C80()
{
  result = qword_27F7E72C8;
  if (!qword_27F7E72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E72C8);
  }

  return result;
}

unint64_t sub_255D76CD4()
{
  result = qword_27F7E72D0;
  if (!qword_27F7E72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E72D0);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_255D76E2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 121))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_255D76E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 56) = ~a2;
    }
  }

  return result;
}

unint64_t sub_255D76EF0()
{
  result = qword_27F7E72D8;
  if (!qword_27F7E72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E72D8);
  }

  return result;
}

unint64_t sub_255D76F48()
{
  result = qword_27F7E72E0;
  if (!qword_27F7E72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E72E0);
  }

  return result;
}

unint64_t sub_255D76FA0()
{
  result = qword_27F7E72E8;
  if (!qword_27F7E72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E72E8);
  }

  return result;
}

unint64_t sub_255D76FF8()
{
  result = qword_27F7E72F0;
  if (!qword_27F7E72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E72F0);
  }

  return result;
}

unint64_t sub_255D77050()
{
  result = qword_27F7E72F8;
  if (!qword_27F7E72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E72F8);
  }

  return result;
}

unint64_t sub_255D770A8()
{
  result = qword_27F7E7300;
  if (!qword_27F7E7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7300);
  }

  return result;
}

unint64_t sub_255D77100()
{
  result = qword_27F7E7308;
  if (!qword_27F7E7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7308);
  }

  return result;
}

unint64_t sub_255D77158()
{
  result = qword_27F7E7310;
  if (!qword_27F7E7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7310);
  }

  return result;
}

unint64_t sub_255D771B0()
{
  result = qword_27F7E7318;
  if (!qword_27F7E7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7318);
  }

  return result;
}

unint64_t sub_255D77208()
{
  result = qword_27F7E7320;
  if (!qword_27F7E7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7320);
  }

  return result;
}

unint64_t sub_255D77260()
{
  result = qword_27F7E7328;
  if (!qword_27F7E7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7328);
  }

  return result;
}

unint64_t sub_255D772B8()
{
  result = qword_27F7E7330;
  if (!qword_27F7E7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7330);
  }

  return result;
}

unint64_t sub_255D77310()
{
  result = qword_27F7E7338;
  if (!qword_27F7E7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7338);
  }

  return result;
}

unint64_t sub_255D77368()
{
  result = qword_27F7E7340;
  if (!qword_27F7E7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7340);
  }

  return result;
}

unint64_t sub_255D773C0()
{
  result = qword_27F7E7348;
  if (!qword_27F7E7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7348);
  }

  return result;
}

unint64_t sub_255D77418()
{
  result = qword_27F7E7350;
  if (!qword_27F7E7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7350);
  }

  return result;
}

unint64_t sub_255D77470()
{
  result = qword_27F7E7358;
  if (!qword_27F7E7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7358);
  }

  return result;
}

unint64_t sub_255D774C8()
{
  result = qword_27F7E7360;
  if (!qword_27F7E7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7360);
  }

  return result;
}

unint64_t sub_255D77520()
{
  result = qword_27F7E7368;
  if (!qword_27F7E7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7368);
  }

  return result;
}

unint64_t sub_255D77578()
{
  result = qword_27F7E7370;
  if (!qword_27F7E7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7370);
  }

  return result;
}

unint64_t sub_255D775D0()
{
  result = qword_27F7E7378;
  if (!qword_27F7E7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7378);
  }

  return result;
}

unint64_t sub_255D77624()
{
  result = qword_27F7E7388;
  if (!qword_27F7E7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7388);
  }

  return result;
}

uint64_t sub_255D77678(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_255D38090(result, a2, a3, a4 & 1);
  }

  return result;
}

unint64_t sub_255D776D4()
{
  result = qword_27F7E73A0;
  if (!qword_27F7E73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E73A0);
  }

  return result;
}

unint64_t sub_255D7772C()
{
  result = qword_27F7E73A8;
  if (!qword_27F7E73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E73A8);
  }

  return result;
}

unint64_t sub_255D77784()
{
  result = qword_27F7E73B0;
  if (!qword_27F7E73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E73B0);
  }

  return result;
}

uint64_t sub_255D777D8()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D77848()
{
  sub_255E3A578();
}

uint64_t sub_255D77940()
{
  sub_255E3A578();
}

uint64_t sub_255D77A70()
{
  sub_255E3A578();
}

uint64_t sub_255D77BD0()
{
  sub_255E3A578();
}

uint64_t sub_255D77D34()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D77E2C()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D77F3C()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D78070()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D781B4()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D782C0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

LiftUI::HTTPRequestMethod_optional __swiftcall HTTPRequestMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255E3AB48();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HTTPRequestMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 7628135;
  v3 = 0x6574656C6564;
  if (v1 != 6)
  {
    v3 = 0x4554454C4544;
  }

  v4 = 7632240;
  if (v1 != 4)
  {
    v4 = 5526864;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1953722224;
  if (v1 != 2)
  {
    v5 = 1414745936;
  }

  if (*v0)
  {
    v2 = 5522759;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_255D78504()
{
  result = qword_27F7E73B8;
  if (!qword_27F7E73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E73B8);
  }

  return result;
}

void sub_255D78580(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7628135;
  v5 = 0xE600000000000000;
  v6 = 0x6574656C6564;
  if (v2 != 6)
  {
    v6 = 0x4554454C4544;
    v5 = 0xE600000000000000;
  }

  v7 = 7632240;
  if (v2 != 4)
  {
    v7 = 5526864;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE300000000000000;
  }

  v8 = 1953722224;
  if (v2 != 2)
  {
    v8 = 1414745936;
  }

  if (*v1)
  {
    v4 = 5522759;
    v3 = 0xE300000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_255D786B8()
{
  result = qword_27F7E73C0;
  if (!qword_27F7E73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E73C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13ReferenceableOySDySSAA14DecodableStateOGGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_255D7875C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D787A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D7881C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v5;
  v9 = v4[16];
  v10 = v4[18];
  v24 = v4[17];

  sub_255D3D51C(v9);
  sub_255D3D51C(v10);
  v11 = v24;
  result = sub_255D3CE1C(a1, a4);
  v13 = *(v24 + 16);
  if (!v13)
  {
  }

  v14 = 0;
  v15 = v24 + 32;
  while (v14 < *(v11 + 16))
  {
    sub_255D3CE1C(v15, v21);
    v17 = v22;
    v16 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(*(v16 + 8) + 16))(v20, a4, a2, a3, v17);
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a4);

      return __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    ++v14;
    __swift_destroy_boxed_opaque_existential_1Tm(a4);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    result = sub_255D34630(v20, a4);
    v15 += 40;
    if (v13 == v14)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255D78980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_255E38408();
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v9 = *(v8 + 64) + 15;
  v6[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v12 = sub_255E38588();
  v6[25] = v12;
  v13 = *(v12 - 8);
  v6[26] = v13;
  v14 = *(v13 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255D78B28, 0, 0);
}

uint64_t sub_255D78B28()
{
  v109 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v1 + 9);
  *(v0 + 16) = *v1;
  *(v0 + 25) = v3;
  *v108 = *v1;
  *&v108[9] = *(v1 + 9);
  sub_255D7B16C(v0 + 16, v0 + 48);
  StringResolvable.resolved(with:)(v2);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  sub_255D38060(*v108, *&v108[8], *&v108[16], v108[24]);
  sub_255E38578();

  if ((*(v5 + 48))(v6, 1, v4) != 1)
  {
    v17 = *(v0 + 232);
    v18 = *(v0 + 176);
    v19 = *(v0 + 136);
    (*(*(v0 + 208) + 32))(v17, *(v0 + 192), *(v0 + 200));
    v20 = *(v19 + 152);
    v21 = *(v19 + 160);
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(v17, ObjectType, v21);
    v23 = *(v0 + 136);
    v24 = *(v23 + 56);
    if (v24 <= 0xFD)
    {
      v25 = *(v0 + 144);
      v26 = *(v23 + 40);
      v27 = *(v23 + 48);
      *v108 = *(v23 + 32);
      *&v108[8] = v26;
      *&v108[16] = v27;
      v108[24] = v24;
      sub_255D3E5A8(*v108, v26, v27, v24);
      v28 = StringResolvable.resolved(with:)(v25);
      v30 = v29;
      sub_255D38060(*v108, *&v108[8], *&v108[16], v108[24]);
      v31._countAndFlagsBits = v28;
      v31._object = v30;
      HTTPRequestMethod.init(rawValue:)(v31);
      if (v108[0] < 8u)
      {
        v32 = *(v0 + 176);
        sub_255E38388();
      }
    }

    v33 = *(v0 + 136);
    v34 = *(v33 + 88);
    if (v34 == 255)
    {
LABEL_31:
      v57 = *(v33 + 120);
      if (v57 != 255)
      {
        v66 = sub_255DDF580(*(v0 + 144), *(v33 + 96), *(v33 + 104), *(v33 + 112), v57 & 1);
        v67 = sub_255E38498();
        v68 = *(v67 + 48);
        v69 = *(v67 + 52);
        swift_allocObject();
        sub_255E38488();
        *(v0 + 120) = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
        sub_255D7B390();
        sub_255E38478();
        v70 = *(v0 + 176);

        sub_255E383E8();
      }

      v104 = ObjectType;
      if (qword_27F7E5E80 == -1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v35 = sub_255DDF580(*(v0 + 144), *(v33 + 64), *(v33 + 72), *(v33 + 80), v34 & 1);
      v36 = v35;
      v104 = ObjectType;
      v101 = v21;
      v102 = v35;
      v37 = 0;
      v21 = v35 + 64;
      v38 = -1;
      v39 = -1 << *(v35 + 32);
      if (-v39 < 64)
      {
        v38 = ~(-1 << -v39);
      }

      v40 = v38 & *(v35 + 64);
      v41 = (63 - v39) >> 6;
      while (v40)
      {
LABEL_17:
        v44 = __clz(__rbit64(v40)) | (v37 << 6);
        v45 = (*(v36 + 48) + 16 * v44);
        v46 = v45[1];
        v47 = *(*(v36 + 56) + 8 * v44);
        v48 = v47 >> 61;
        v105 = *v45;
        if ((v47 >> 61) <= 1)
        {
          if (v48)
          {
            *(v0 + 128) = *((v47 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

            sub_255E3AC28();
          }

          else
          {
            v52 = *(v47 + 16);
            v53 = *(v47 + 24);
          }
        }

        else if (v48 == 2)
        {
          v54 = *((v47 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          *(v0 + 96) = 0;
          *(v0 + 104) = 0xE000000000000000;

          sub_255E3A7A8();
          v55 = *(v0 + 96);
          v56 = *(v0 + 104);
        }

        else
        {
          if (v48 != 3)
          {
            v93 = *(v0 + 232);
            v94 = *(v0 + 200);
            v95 = *(v0 + 208);
            v97 = *(v0 + 168);
            v96 = *(v0 + 176);
            v98 = *(v0 + 160);
            sub_255D7B470();
            swift_allocError();
            v99 = MEMORY[0x277D837D0];
            *v100 = v47;
            v100[1] = v99;
            swift_willThrow();
            swift_retain_n();

            (*(v97 + 8))(v96, v98);
            (*(v95 + 8))(v93, v94);

            goto LABEL_33;
          }

          v49 = *((v47 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          *v108 = 0;
          *&v108[8] = 0xE000000000000000;
          if (v49)
          {
            v50 = 1702195828;
          }

          else
          {
            v50 = 0x65736C6166;
          }

          if (v49)
          {
            v51 = 0xE400000000000000;
          }

          else
          {
            v51 = 0xE500000000000000;
          }

          MEMORY[0x259C4E8F0](v50, v51);

          v36 = v102;
        }

        v40 &= v40 - 1;
        v42 = *(v0 + 176);
        sub_255E383F8();
      }

      while (1)
      {
        v43 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v43 >= v41)
        {

          v33 = *(v0 + 136);
          v21 = v101;
          ObjectType = v104;
          goto LABEL_31;
        }

        v40 = *(v21 + 8 * v43);
        ++v37;
        if (v40)
        {
          v37 = v43;
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    swift_once();
LABEL_37:
    v72 = *(v0 + 224);
    v71 = *(v0 + 232);
    v74 = *(v0 + 200);
    v73 = *(v0 + 208);
    v75 = sub_255E386A8();
    *(v0 + 240) = __swift_project_value_buffer(v75, qword_27F8152D8);
    v76 = *(v73 + 16);
    *(v0 + 248) = v76;
    *(v0 + 256) = (v73 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v76(v72, v71, v74);
    v77 = sub_255E38688();
    v78 = sub_255E3A868();
    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v0 + 224);
    v82 = *(v0 + 200);
    v81 = *(v0 + 208);
    if (v79)
    {
      v83 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v108 = v106;
      *v83 = 136315138;
      sub_255D7B2F8(&qword_27F7E73E0, MEMORY[0x277CC9260]);
      v84 = sub_255E3AC28();
      v86 = v85;
      v103 = v78;
      v87 = *(v81 + 8);
      v87(v80, v82);
      v88 = sub_255D378C0(v84, v86, v108);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_255D2E000, v77, v103, "HTTP Request Action: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      MEMORY[0x259C4F9E0](v106, -1, -1);
      MEMORY[0x259C4F9E0](v83, -1, -1);
    }

    else
    {

      v87 = *(v81 + 8);
      v87(v80, v82);
    }

    *(v0 + 264) = v87;
    v89 = *(v21 + 16);
    v107 = (v89 + *v89);
    v90 = v89[1];
    v91 = swift_task_alloc();
    *(v0 + 272) = v91;
    *v91 = v0;
    v91[1] = sub_255D79740;
    v92 = *(v0 + 176);

    return v107(v92, v104, v21);
  }

  v7 = *(v0 + 184);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  sub_255D7B1C8(*(v0 + 192));
  v11 = *(v10 + 136);
  v12 = sub_255E3A778();
  v13 = *(*(v12 - 8) + 56);
  v13(v7, 1, 1, v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v11;
  v14[5] = v9;
  v14[6] = v8;

  sub_255D52540(0, 0, v7, &unk_255E5A580, v14);

  v15 = *(v10 + 144);
  v13(v7, 1, 1, v12);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  v16[5] = v9;
  v16[6] = v8;

  sub_255D52540(0, 0, v7, &unk_255E48070, v16);

  type metadata accessor for RemoteLoaderError(0);
  sub_255D7B2F8(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_33:
  v59 = *(v0 + 224);
  v58 = *(v0 + 232);
  v60 = *(v0 + 216);
  v62 = *(v0 + 184);
  v61 = *(v0 + 192);
  v63 = *(v0 + 176);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_255D79740(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 272);
  v9 = *v3;
  *(*v3 + 280) = v2;

  if (v2)
  {
    v7 = sub_255D79AB4;
  }

  else
  {
    sub_255D37E60(a1, a2);
    v7 = sub_255D79870;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_255D79870()
{
  v1 = *(v0 + 184);
  v20 = *(v0 + 176);
  v21 = *(v0 + 208);
  v18 = *(v0 + 168);
  v19 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v4 + 128);
  v6 = sub_255E3A778();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v3;
  v8[6] = v2;

  sub_255D52540(0, 0, v1, &unk_255E48090, v8);

  v9 = *(v4 + 144);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = v3;
  v10[6] = v2;

  sub_255D52540(0, 0, v1, &unk_255E48098, v10);

  (*(v18 + 8))(v20, v19);
  v11 = *(v0 + 224);
  v12 = *(v0 + 216);
  v13 = *(v0 + 192);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  (*(v0 + 264))(*(v0 + 232), *(v0 + 200));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_255D79AB4()
{
  v47 = v0;
  v0[14] = v0[35];
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[25];
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
  sub_255E3AAC8();
  v7 = v0[10];
  v8 = v0[11];
  v2(v5, v3, v6);

  v9 = sub_255E38688();
  v10 = sub_255E3A868();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[33];
  v14 = v0[26];
  v13 = v0[27];
  v15 = v0[25];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v16 = 136315394;
    sub_255D7B2F8(&qword_27F7E73E0, MEMORY[0x277CC9260]);
    v40 = v7;
    v17 = sub_255E3AC28();
    v42 = v10;
    v19 = v18;
    v12(v13, v15);
    v20 = sub_255D378C0(v17, v19, &v46);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_255D378C0(v40, v8, &v46);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_255D2E000, v9, v42, "Network request failed with url: %s | Error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C4F9E0](v44, -1, -1);
    MEMORY[0x259C4F9E0](v16, -1, -1);
  }

  else
  {

    v12(v13, v15);
  }

  v22 = v0[23];
  v39 = v0[35];
  v41 = v0[21];
  v43 = v0[20];
  v45 = v0[22];
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[17];
  v26 = *(v25 + 136);
  v27 = sub_255E3A778();
  v28 = *(*(v27 - 8) + 56);
  v28(v22, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v26;
  v29[5] = v24;
  v29[6] = v23;

  sub_255D52540(0, 0, v22, &unk_255E48080, v29);

  v30 = *(v25 + 144);
  v28(v22, 1, 1, v27);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v30;
  v31[5] = v24;
  v31[6] = v23;

  sub_255D52540(0, 0, v22, &unk_255E48088, v31);

  (*(v41 + 8))(v45, v43);
  v32 = v0[28];
  v33 = v0[27];
  v34 = v0[24];
  v36 = v0[22];
  v35 = v0[23];
  (v0[33])(v0[29], v0[25]);

  v37 = v0[1];

  return v37();
}

uint64_t sub_255D79F58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D7BA14();
  *a2 = result;
  return result;
}

void sub_255D79F88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  v5 = 0xEC0000006E6F6974;
  v6 = 0x656C706D6F436E6FLL;
  if (v2 != 6)
  {
    v6 = 2036625250;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE900000000000073;
  v8 = 0x7365636375536E6FLL;
  if (v2 != 4)
  {
    v8 = 0x726F7272456E6FLL;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF6E6F6974656C70;
  v10 = 0x6D6F437469617761;
  if (v2 != 2)
  {
    v10 = 0x73726564616568;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x646F6874656DLL;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_255D7A088()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x656C706D6F436E6FLL;
  if (v1 != 6)
  {
    v3 = 2036625250;
  }

  v4 = 0x7365636375536E6FLL;
  if (v1 != 4)
  {
    v4 = 0x726F7272456E6FLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6D6F437469617761;
  if (v1 != 2)
  {
    v5 = 0x73726564616568;
  }

  if (*v0)
  {
    v2 = 0x646F6874656DLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_255D7A184@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D7BA14();
  *a1 = result;
  return result;
}

uint64_t sub_255D7A1B8(uint64_t a1)
{
  v2 = sub_255D7B588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D7A1F4(uint64_t a1)
{
  v2 = sub_255D7B588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D7A230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7408, &unk_255E480B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v57 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_255E3AE18();
  if (qword_27F7E5E68 != -1)
  {
    swift_once();
  }

  v11 = sub_255E3AAE8();
  v12 = __swift_project_value_buffer(v11, qword_27F8152C0);
  if (!*(v10 + 16) || (v13 = sub_255D3CA98(v12), (v14 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_255D3951C(*(v10 + 56) + 32 * v13, &v90);

  type metadata accessor for AnyWeakRemoteLoader();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    type metadata accessor for RemoteLoaderError(0);
    sub_255D7B2F8(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v79;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_11;
  }

  v17 = Strong;
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {

    goto LABEL_11;
  }

  v77 = v18;
  v78 = v15;
  v75 = *(v17 + 136);
  v76 = v5;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D7B588();
  sub_255E3AE28();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    v74 = v17;
    LOBYTE(v79) = 0;
    sub_255D3EA0C();
    sub_255E3ABC8();
    v71 = v90;
    v72 = v91;
    v21 = v92;
    LOBYTE(v79) = 1;
    sub_255E3ABA8();
    v73 = v21;
    v69 = v90;
    v70 = v91;
    v68 = v92;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7418, qword_255E567D0);
    LOBYTE(v79) = 3;
    sub_255D7B5F4();
    *(&v63 + 1) = v22;
    v67 = 0;
    sub_255E3ABA8();
    v64 = v90;
    v65 = v91;
    v66 = v92;
    LOBYTE(v79) = 7;
    sub_255E3ABA8();
    v63 = v90;
    v62 = v91;
    v61 = v92;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
    LOBYTE(v79) = 4;
    v58 = sub_255D7B658();
    sub_255E3ABA8();
    if (v90)
    {
      v24 = v90;
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v25 = *(v24 + 16);
    v57[2] = v23;
    if (v25)
    {
      v111 = MEMORY[0x277D84F90];
      v26 = v24;
      v27 = v25;
      sub_255DE5EF0(0, v25, 0);
      v28 = v111;
      v59 = v26;
      v29 = v26 + 32;
      do
      {
        sub_255D7B730(v29, &v79);
        sub_255D34630(&v79, &v90);
        v111 = v28;
        v31 = *(v28 + 16);
        v30 = *(v28 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          v60 = v31 + 1;
          sub_255DE5EF0((v30 > 1), v31 + 1, 1);
          v32 = v60;
          v28 = v111;
        }

        *(v28 + 16) = v32;
        sub_255D34630(&v90, v28 + 40 * v31 + 32);
        v29 += 40;
        --v27;
      }

      while (v27);
      v60 = v28;
    }

    else
    {

      v60 = MEMORY[0x277D84F90];
    }

    LOBYTE(v79) = 5;
    sub_255E3ABA8();
    if (v90)
    {
      v33 = v90;
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    if (*(v33 + 16))
    {
      v34 = *(v33 + 16);
      v111 = MEMORY[0x277D84F90];
      sub_255DE5EF0(0, v34, 0);
      v35 = v111;
      v57[1] = v33;
      v36 = v33 + 32;
      do
      {
        sub_255D7B730(v36, &v79);
        sub_255D34630(&v79, &v90);
        v111 = v35;
        v38 = *(v35 + 16);
        v37 = *(v35 + 24);
        v39 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          v59 = v38 + 1;
          sub_255DE5EF0((v37 > 1), v38 + 1, 1);
          v39 = v59;
          v35 = v111;
        }

        *(v35 + 16) = v39;
        sub_255D34630(&v90, v35 + 40 * v38 + 32);
        v36 += 40;
        --v34;
      }

      while (v34);
      v59 = v35;
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
    }

    LOBYTE(v79) = 6;
    sub_255E3ABA8();
    v40 = v90;
    if (!v90)
    {
      v40 = MEMORY[0x277D84F90];
    }

    v67 = v40;
    v41 = *(v40 + 16);
    if (v41)
    {
      v42 = v41;
      v111 = MEMORY[0x277D84F90];
      sub_255DE5EF0(0, v41, 0);
      v43 = v111;
      v44 = v67 + 32;
      do
      {
        sub_255D7B730(v44, &v79);
        sub_255D34630(&v79, &v90);
        v111 = v43;
        v46 = *(v43 + 16);
        v45 = *(v43 + 24);
        v47 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          v58 = v46 + 1;
          sub_255DE5EF0((v45 > 1), v46 + 1, 1);
          v47 = v58;
          v43 = v111;
        }

        *(v43 + 16) = v47;
        sub_255D34630(&v90, v43 + 40 * v46 + 32);
        v44 += 40;
        --v42;
      }

      while (v42);
      (*(v76 + 8))(v8, v4);
    }

    else
    {

      (*(v76 + 8))(v8, v4);
      v43 = MEMORY[0x277D84F90];
    }

    v48 = v71;
    v79 = v71;
    v49 = v72;
    *&v80 = v72;
    BYTE8(v80) = v73;
    *(&v80 + 9) = v115[0];
    HIDWORD(v80) = *(v115 + 3);
    v81 = v69;
    *&v82 = v70;
    BYTE8(v82) = v68;
    *(&v82 + 9) = *v114;
    HIDWORD(v82) = *&v114[3];
    v83 = v64;
    *&v84 = v65;
    BYTE8(v84) = v66;
    *(&v84 + 9) = *v113;
    HIDWORD(v84) = *&v113[3];
    v85 = v63;
    *&v86 = v62;
    BYTE8(v86) = v61;
    *(&v86 + 9) = *v112;
    HIDWORD(v86) = *&v112[3];
    *&v87 = v60;
    *(&v87 + 1) = v59;
    *&v88 = v43;
    *(&v88 + 1) = v77;
    v50 = v75;
    v89 = v75;
    v51 = v116;
    *(v116 + 160) = v75;
    v52 = v80;
    *v51 = v79;
    v51[1] = v52;
    v53 = v82;
    v51[2] = v81;
    v51[3] = v53;
    v54 = v88;
    v51[8] = v87;
    v51[9] = v54;
    v55 = v86;
    v51[6] = v85;
    v51[7] = v55;
    v56 = v84;
    v51[4] = v83;
    v51[5] = v56;
    sub_255D5C4D4(&v79, &v90);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v90 = v48;
    v91 = v49;
    v92 = v73;
    *v93 = v115[0];
    *&v93[3] = *(v115 + 3);
    v94 = v69;
    v95 = v70;
    v96 = v68;
    *v97 = *v114;
    *&v97[3] = *&v114[3];
    v98 = v64;
    v99 = v65;
    v100 = v66;
    *&v101[3] = *&v113[3];
    *v101 = *v113;
    v102 = v63;
    v103 = v62;
    v104 = v61;
    *&v105[3] = *&v112[3];
    *v105 = *v112;
    v106 = v60;
    v107 = v59;
    v108 = v43;
    v109 = v77;
    v110 = v50;
    return sub_255D7B78C(&v90);
  }
}

uint64_t sub_255D7AE2C(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  v5 = *(v2 + 144);
  *(v3 + 144) = *(v2 + 128);
  *(v3 + 160) = v5;
  *(v3 + 176) = *(v2 + 160);
  v6 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  v7 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  v9 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v9;

  return MEMORY[0x2822009F8](sub_255D7AEF8, 0, 0);
}

uint64_t sub_255D7AEF8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = sub_255E3A778();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = *(v0 + 160);
  *(v5 + 160) = *(v0 + 144);
  *(v5 + 176) = v6;
  v7 = *(v0 + 176);
  v8 = *(v0 + 96);
  *(v5 + 96) = *(v0 + 80);
  *(v5 + 112) = v8;
  v9 = *(v0 + 128);
  *(v5 + 128) = *(v0 + 112);
  *(v5 + 144) = v9;
  v10 = *(v0 + 32);
  *(v5 + 32) = *(v0 + 16);
  *(v5 + 48) = v10;
  v11 = *(v0 + 64);
  *(v5 + 64) = *(v0 + 48);
  *(v5 + 80) = v11;
  *(v5 + 192) = v7;
  *(v5 + 200) = v3;
  *(v5 + 208) = v1;
  sub_255D5C4D4(v0 + 16, v0 + 184);

  sub_255D51B90(0, 0, v2, &unk_255E3EF78, v5);

  v12 = *(v0 + 8);

  return v12();
}

unint64_t sub_255D7B074(uint64_t a1)
{
  result = sub_255D7B09C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7B09C()
{
  result = qword_27F7E73C8;
  if (!qword_27F7E73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E73C8);
  }

  return result;
}

unint64_t sub_255D7B0F0(uint64_t a1)
{
  result = sub_255D7B118();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7B118()
{
  result = qword_27F7E73D0;
  if (!qword_27F7E73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E73D0);
  }

  return result;
}

uint64_t sub_255D7B1C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255D7B230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255D5D0A4;

  return sub_255D52970(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_255D7B2F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_1()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_255D7B390()
{
  result = qword_27F7E73F0;
  if (!qword_27F7E73F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E73F0);
  }

  return result;
}

unint64_t sub_255D7B41C()
{
  result = qword_27F7E73F8;
  if (!qword_27F7E73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E73F8);
  }

  return result;
}

unint64_t sub_255D7B470()
{
  result = qword_27F7E7400;
  if (!qword_27F7E7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7400);
  }

  return result;
}

uint64_t sub_255D7B4C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = v1[26];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D50138;

  return sub_255D78980(a1, v4, v5, (v1 + 4), v6, v7);
}

unint64_t sub_255D7B588()
{
  result = qword_27F7E7410;
  if (!qword_27F7E7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7410);
  }

  return result;
}

uint64_t sub_255D7B5DC(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_255D380E0(result, a2, a3, a4 & 1);
  }

  return result;
}

unint64_t sub_255D7B5F4()
{
  result = qword_27F7E7420;
  if (!qword_27F7E7420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7418, qword_255E567D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7420);
  }

  return result;
}

unint64_t sub_255D7B658()
{
  result = qword_27F7E7430;
  if (!qword_27F7E7430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7428, &qword_255E480C0);
    sub_255D7B6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7430);
  }

  return result;
}

unint64_t sub_255D7B6DC()
{
  result = qword_27F7E7438;
  if (!qword_27F7E7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7438);
  }

  return result;
}

uint64_t sub_255D7B7BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_255D7B84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255D7B910()
{
  result = qword_27F7E7440;
  if (!qword_27F7E7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7440);
  }

  return result;
}

unint64_t sub_255D7B968()
{
  result = qword_27F7E7448;
  if (!qword_27F7E7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7448);
  }

  return result;
}

unint64_t sub_255D7B9C0()
{
  result = qword_27F7E7450;
  if (!qword_27F7E7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7450);
  }

  return result;
}

uint64_t sub_255D7BA14()
{
  v0 = sub_255E3AB48();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for DynamicKeyError()
{
  result = qword_27F7E7458;
  if (!qword_27F7E7458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255D7BAC0()
{
  sub_255D7BB38();
  if (v0 <= 0x3F)
  {
    sub_255D7BB80();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_255D7BB38()
{
  if (!qword_27F7E7468)
  {
    v0 = sub_255E3A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7E7468);
    }
  }
}

void sub_255D7BB80()
{
  if (!qword_27F7E7470)
  {
    sub_255E3A9F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F7E7470);
    }
  }
}

uint64_t sub_255D7BBEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_255D7BC34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D7BC88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_255D7BC9C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_255D7BCA8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_255D7BCB8(uint64_t a1)
{
  v2 = sub_255D3CAFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D7BCF4(uint64_t a1)
{
  v2 = sub_255D3CAFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D7BD30(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_255E3AC68();
  }
}

uint64_t sub_255D7BD60@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DynamicKeyError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255E3A9F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D7BFB4(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v7 + 1);

    v7 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7488, &qword_255E48378) + 48);
  }

  v14 = *(v9 + 32);
  v14(v12, v7, v8);
  v14(a1, v12, v8);
  return (*(v9 + 56))(a1, 0, 1, v8);
}

unint64_t sub_255D7BF08()
{
  result = qword_27F7E7478;
  if (!qword_27F7E7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7478);
  }

  return result;
}

unint64_t sub_255D7BF60()
{
  result = qword_27F7E7480;
  if (!qword_27F7E7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7480);
  }

  return result;
}

uint64_t sub_255D7BFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicKeyError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D7C028@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DDF1BC(a2, v7, v8, v9, v10);
  if (v4)
  {
  }

  a3[3] = sub_255E38AE8();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39A08();
}

unint64_t sub_255D7C13C(uint64_t a1)
{
  result = sub_255D7C164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7C164()
{
  result = qword_27F7E7490;
  if (!qword_27F7E7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7490);
  }

  return result;
}

uint64_t sub_255D7C1C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940);
    sub_255E3ACB8();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D7C308@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E74A0, &unk_255E538A0);
    a3[3] = sub_255E38AE8();
    sub_255D38950(&qword_27F7E74A8, &qword_27F7E74A0, &unk_255E538A0);
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_255E39C78();
  }

  return result;
}

unint64_t sub_255D7C44C(uint64_t a1)
{
  result = sub_255D7C474();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D7C474()
{
  result = qword_27F7E7498;
  if (!qword_27F7E7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7498);
  }

  return result;
}

uint64_t sub_255D7C4C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_255DE5CE0(0, v2, 0);
    v3 = v11;
    v5 = (a1 + 32);
    while (1)
    {
      v6 = *v5++;

      sub_255D7D920(v10);
      if (v1)
      {
        break;
      }

      v11 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_255DE5CE0((v7 > 1), v8 + 1, 1);
        v3 = v11;
      }

      *(v3 + 16) = v8 + 1;
      sub_255D31B4C(v10, (v3 + 32 * v8 + 32));
      if (!--v2)
      {
        return v3;
      }
    }
  }

  return v3;
}

uint64_t sub_255D7C5D8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_255E3A7D8();
  if (!v26)
  {
    return sub_255E3A6A8();
  }

  v48 = v26;
  v52 = sub_255E3AA98();
  v39 = sub_255E3AAA8();
  sub_255E3AA48();
  result = sub_255E3A7C8();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_255E3A7F8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_255E3AA88();
      result = sub_255E3A7E8();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255D7C9F8()
{
  v1 = *v0;
  v2 = v1 >> 61;
  if ((v1 >> 61) > 2)
  {
    if ((v2 - 4) < 2)
    {
      sub_255D7B470();
      swift_allocError();
      v4 = MEMORY[0x277D837D0];
      *v5 = v1;
      v5[1] = v4;
      swift_willThrow();
    }

    if (*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    MEMORY[0x259C4E8F0](v8, v9);
  }

  else
  {
    if (!v2)
    {
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);

      return v7;
    }

    if (v2 == 1)
    {
      v11 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      return sub_255E3AC28();
    }

    v10 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_255E3A7A8();
  }

  return 0;
}

uint64_t DecodableState.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E74B0, &unk_255E48630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (v2)
  {

    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_255D395E4(v22, &qword_27F7E74B8, &qword_255E48640);
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_255E3ADF8();
    sub_255D34630(v22, v24);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v10 = sub_255E3AC48();
    v11 = MEMORY[0x277D84F90];
    if ((v10 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
        sub_255D7D39C();
        sub_255E3AC38();
        v17 = *&v22[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_255DE55B4(0, *(v11 + 2) + 1, 1, v11);
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        if (v19 >= v18 >> 1)
        {
          v11 = sub_255DE55B4((v18 > 1), v19 + 1, 1, v11);
        }

        *(v11 + 2) = v19 + 1;
        *&v11[8 * v19 + 32] = v17;
        __swift_project_boxed_opaque_existential_1(v24, v25);
      }

      while ((sub_255E3AC48() & 1) == 0);
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v16 = v12 | 0x8000000000000000;
  }

  else
  {
    sub_255D34630(v22, v24);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v13 = sub_255E3AC78();
    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  *a2 = v16;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D7D1D4(uint64_t *a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  sub_255D7D39C();
  sub_255E3ABC8();
  if (v2)
  {
  }

  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  sub_255D82054(v12, v5, v4, isUniquelyReferenced_nonNull_native);

  *a1 = v9;
  return result;
}

uint64_t sub_255D7D2E4(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v13 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 56); ; i += 32)
    {
      v8 = *i;
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11[0] = *(i - 3);
      v11[1] = v10;
      v11[2] = v9;
      v12 = v8;

      a2(&v13, v11);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v13;
      }
    }
  }

  return result;
}

unint64_t sub_255D7D39C()
{
  result = qword_27F7E74C8;
  if (!qword_27F7E74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E74C8);
  }

  return result;
}

uint64_t DecodableState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E74D0, &unk_255E48650);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - v8;
  v10 = *v1;
  v11 = *v1 >> 61;
  if (v11 <= 2)
  {
    if (v11)
    {
      v12 = v10 & 0x1FFFFFFFFFFFFFFFLL;
      if (v11 == 1)
      {
        v13 = *(v12 + 16);
        v14 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_255E3AE48();
        __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
        sub_255E3ACF8();
      }

      else
      {
        v22 = *(v12 + 16);
        v23 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_255E3AE48();
        __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
        sub_255E3ACE8();
      }
    }

    else
    {
      v17 = *(v10 + 16);
      v18 = *(v10 + 24);
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);

      sub_255E3AE48();
      __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
      sub_255E3ACC8();
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  if (v11 == 3)
  {
    v20 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_255E3AE48();
    __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    sub_255E3ACD8();
    return __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  if (v11 == 4)
  {
    v15 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    sub_255E3AE38();
    v46 = v15;
    __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D832F4(&qword_27F7E74D8);
    sub_255D7B41C();
    sub_255E3AC58();

    return __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  v41 = v7;
  v43 = v6;
  v25 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D3CAFC();

  result = sub_255E3AE58();
  v27 = 0;
  v29 = v25 + 64;
  v28 = *(v25 + 64);
  v42 = v25;
  v30 = 1 << *(v25 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v28;
  v33 = (v30 + 63) >> 6;
  if ((v31 & v28) != 0)
  {
    while (1)
    {
      v34 = v27;
LABEL_19:
      v35 = __clz(__rbit64(v32)) | (v34 << 6);
      v36 = (*(v42 + 48) + 16 * v35);
      v37 = *(*(v42 + 56) + 8 * v35);
      v38 = *v36;
      v39 = v36[1];
      v46 = v37;
      v44[0] = v38;
      v44[1] = v39;
      v44[2] = 0;
      LOBYTE(v45) = 1;
      sub_255D7B41C();

      sub_255E3AC18();
      if (v2)
      {
        break;
      }

      v32 &= v32 - 1;

      v27 = v34;
      if (!v32)
      {
        goto LABEL_16;
      }
    }

    (*(v41 + 8))(v9, v43);
  }

  else
  {
LABEL_16:
    while (1)
    {
      v34 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v34 >= v33)
      {

        return (*(v41 + 8))(v9, v43);
      }

      v32 = *(v29 + 8 * v34);
      ++v27;
      if (v32)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_255D7D920(void *a1@<X8>)
{
  v3 = v2;
  v4 = *v1;
  v5 = *v1 >> 61;
  if (v5 <= 2)
  {
    if (v5)
    {
      v6 = v4 & 0x1FFFFFFFFFFFFFFFLL;
      if (v5 == 1)
      {
        v7 = *(v6 + 16);
        a1[3] = MEMORY[0x277D83B88];
        *a1 = v7;
      }

      else
      {
        v19 = *(v6 + 16);
        a1[3] = MEMORY[0x277D839F8];
        *a1 = v19;
      }
    }

    else
    {
      v17 = *(v4 + 16);
      v16 = *(v4 + 24);
      a1[3] = MEMORY[0x277D837D0];
      *a1 = v17;
      a1[1] = v16;
    }

    return;
  }

  if (v5 == 3)
  {
    v18 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    a1[3] = MEMORY[0x277D839B0];
    *a1 = v18;
    return;
  }

  if (v5 == 4)
  {
    v9 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *(v9 + 16);
    v11 = MEMORY[0x277D84F90];
    if (!v10)
    {
LABEL_33:
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
      *a1 = v11;
      return;
    }

    v48 = MEMORY[0x277D84F90];

    sub_255DE5CE0(0, v10, 0);
    v12 = 0;
    v11 = v48;
    while (v12 < *(v9 + 16))
    {
      v46 = *(v9 + 8 * v12 + 32);

      sub_255D7D920(v47, v13);
      if (v2)
      {

        goto LABEL_35;
      }

      v48 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_255DE5CE0((v14 > 1), v15 + 1, 1);
        v11 = v48;
      }

      ++v12;
      *(v11 + 16) = v15 + 1;
      sub_255D31B4C(v47, (v11 + 32 * v15 + 32));
      if (v10 == v12)
      {

        goto LABEL_33;
      }
    }

    goto LABEL_37;
  }

  v20 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
  v21 = sub_255E3AB08();
  v22 = v21;
  v23 = v20 + 64;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v20 + 64);
  v27 = (v24 + 63) >> 6;
  v42 = v21 + 64;
  v44 = v20;

  v28 = 0;
  v43 = v22;
  if (!v26)
  {
LABEL_22:
    v30 = v28;
    while (1)
    {
      v28 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);
        *a1 = v22;
        return;
      }

      v31 = *(v23 + 8 * v28);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v45 = (v31 - 1) & v31;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  while (1)
  {
    v29 = __clz(__rbit64(v26));
    v45 = (v26 - 1) & v26;
LABEL_27:
    v32 = v29 | (v28 << 6);
    v33 = (*(v44 + 48) + 16 * v32);
    v34 = *v33;
    v35 = v33[1];
    v48 = *(*(v44 + 56) + 8 * v32);

    sub_255D7D920(v47, v36);

    if (v3)
    {
      break;
    }

    v22 = v43;
    *(v42 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (v43[6] + 16 * v32);
    *v37 = v34;
    v37[1] = v35;
    sub_255D31B4C(v47, (v43[7] + 32 * v32));
    v38 = v43[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_38;
    }

    v43[2] = v40;
    v26 = v45;
    if (!v45)
    {
      goto LABEL_22;
    }
  }

LABEL_35:
}

uint64_t sub_255D7DD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = *v4;
      v9 = v7 >> 61;
      if ((v7 >> 61) > 2)
      {
        if (v9 == 3)
        {
          if (v8 >> 61 != 3 || *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
          {
            return 0;
          }
        }

        else
        {
          v10 = v8 >> 61;
          if (v9 == 4)
          {
            if (v10 != 4)
            {
              return 0;
            }

            v11 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v12 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();
            swift_retain_n();

            v13 = sub_255D7DD14(v11, v12);
          }

          else
          {
            if (v10 != 5)
            {
              return 0;
            }

            v15 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v16 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();
            swift_retain_n();

            v13 = sub_255D7DF20(v15, v16);
          }

          v5 = v13;

          if ((v5 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {
          if (v8 >> 61 != 1 || *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
          {
            return 0;
          }
        }

        else if (v8 >> 61 != 2 || *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          return 0;
        }
      }

      else
      {
        if (v8 >> 61)
        {
          return 0;
        }

        v14 = *(v6 + 16) == *(v8 + 16) && *(v6 + 24) == *(v8 + 24);
        if (!v14 && (sub_255E3AC68() & 1) == 0)
        {
          return 0;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_255D7DF20(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v129 = a1;
  while (1)
  {
    while (1)
    {
LABEL_6:
      if (v7)
      {
        v9 = __clz(__rbit64(v7));
        v130 = (v7 - 1) & v7;
      }

      else
      {
        v10 = v3;
        do
        {
          v3 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_189:

LABEL_197:

            goto LABEL_198;
          }

          if (v3 >= v8)
          {
            return 1;
          }

          v11 = *(v4 + 8 * v3);
          ++v10;
        }

        while (!v11);
        v9 = __clz(__rbit64(v11));
        v130 = (v11 - 1) & v11;
      }

      v12 = v9 | (v3 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);
      v17 = v16 & 0x1FFFFFFFFFFFFFFFLL;
      v18 = v14 == 0;

      if (!v14)
      {
        return v18;
      }

      v19 = sub_255D3CA20(v15, v14);
      v21 = v20;

      if ((v21 & 1) == 0)
      {
LABEL_184:

        return 0;
      }

      v22 = *(*(a2 + 56) + 8 * v19);
      v23 = v22 >> 61;
      if ((v22 >> 61) > 2)
      {
        break;
      }

      if (v23)
      {
        if (v23 == 1)
        {
          if (v16 >> 61 != 1)
          {
            goto LABEL_184;
          }

          v24 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v25 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v26 = v24 == v25;
        }

        else
        {
          if (v16 >> 61 != 2)
          {
            goto LABEL_184;
          }

          v36 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v37 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v26 = v36 == v37;
        }

LABEL_38:
        a1 = v129;
        v7 = v130;
        if (!v26)
        {
          return v18;
        }
      }

      else
      {
        if (v16 >> 61)
        {
          v106 = *(*(a2 + 56) + 8 * v19);

          return 0;
        }

        if (*(v22 + 16) == *(v16 + 16) && *(v22 + 24) == *(v16 + 24))
        {
          v40 = *(*(a2 + 56) + 8 * v19);

LABEL_45:

          goto LABEL_46;
        }

        v33 = sub_255E3AC68();

        a1 = v129;
        v7 = v130;
        if ((v33 & 1) == 0)
        {
          return v18;
        }
      }
    }

    if (v23 == 3)
    {
      if (v16 >> 61 != 3)
      {
        goto LABEL_184;
      }

      v34 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v26 = v34 == v35;
      goto LABEL_38;
    }

    if (v23 == 4)
    {
      break;
    }

    if (v16 >> 61 != 5)
    {
      goto LABEL_184;
    }

    v38 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v39 = *(v17 + 16);
    swift_retain_n();

    LOBYTE(v38) = sub_255D7DF20(v38, v39);

    a1 = v129;
    v7 = v130;
    if ((v38 & 1) == 0)
    {
      return v18;
    }
  }

  if (v16 >> 61 != 4)
  {
    goto LABEL_184;
  }

  v27 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v28 = *(v17 + 16);
  v29 = *(v27 + 16);
  if (v29 != *(v28 + 16))
  {
    goto LABEL_184;
  }

  if (!v29 || v27 == v28)
  {
    goto LABEL_45;
  }

  v127 = v28 + 32;
  v128 = v27 + 32;
  swift_retain_n();

  v31 = 0;
  v125 = v27;
  v126 = v29;
  while (1)
  {
    if (v31 >= *(v27 + 16))
    {
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      return result;
    }

    if (v31 >= *(v28 + 16))
    {
      goto LABEL_206;
    }

    v43 = *(v128 + 8 * v31);
    v44 = *(v127 + 8 * v31);
    v45 = v43 >> 61;
    if ((v43 >> 61) <= 2)
    {
      if (v45)
      {
        if (v45 == 1)
        {
          if (v44 >> 61 != 1)
          {
            goto LABEL_185;
          }

          v46 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v47 = *((v44 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v26 = v46 == v47;
          v27 = v125;
          v29 = v126;
          if (!v26)
          {
            goto LABEL_201;
          }
        }

        else
        {
          if (v44 >> 61 != 2)
          {
            goto LABEL_185;
          }

          v53 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v54 = *((v44 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          if (v53 != v54)
          {
            goto LABEL_201;
          }
        }
      }

      else
      {
        if (v44 >> 61)
        {
          goto LABEL_185;
        }

        result = *(v43 + 16);
        if (result != *(v44 + 16) || *(v43 + 24) != *(v44 + 24))
        {
          result = sub_255E3AC68();
          if ((result & 1) == 0)
          {
            goto LABEL_201;
          }
        }
      }

      goto LABEL_80;
    }

    if (v45 != 3)
    {
      break;
    }

    if (v44 >> 61 != 3)
    {
      goto LABEL_185;
    }

    v41 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v42 = *((v44 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v26 = v41 == v42;
    v27 = v125;
    v29 = v126;
    if (!v26)
    {
      goto LABEL_201;
    }

LABEL_80:
    if (++v31 == v29)
    {

LABEL_46:
      a1 = v129;
      v7 = v130;
      goto LABEL_6;
    }
  }

  if (v45 != 4)
  {
    if (v44 >> 61 != 5)
    {
LABEL_185:

      goto LABEL_202;
    }

    v55 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v56 = *((v44 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();
    swift_retain_n();

    LOBYTE(v55) = sub_255D7DF20(v55, v56);
    v29 = v126;

    v27 = v125;

    if ((v55 & 1) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_80;
  }

  if (v44 >> 61 != 4)
  {
    goto LABEL_185;
  }

  v48 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v49 = *((v44 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v50 = *(v48 + 16);
  if (v50 != *(v49 + 16))
  {

    goto LABEL_199;
  }

  if (v50)
  {
    v51 = v48 == v49;
  }

  else
  {
    v51 = 1;
  }

  if (v51)
  {

    goto LABEL_80;
  }

  v120 = *(v48 + 16);
  v122 = v49 + 32;
  v123 = v48 + 32;
  v57 = *((v44 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v121 = v48;
  swift_retain_n();
  swift_retain_n();
  v124 = v57;

  v58 = v121;
  v59 = 0;
  v113 = v28;
  while (2)
  {
    if (v59 >= *(v58 + 16))
    {
      goto LABEL_207;
    }

    if (v59 >= *(v124 + 16))
    {
      goto LABEL_208;
    }

    v60 = *(v123 + 8 * v59);
    v61 = *(v122 + 8 * v59);
    v62 = v60 >> 61;
    if ((v60 >> 61) <= 2)
    {
      if (v62)
      {
        if (v62 == 1)
        {
          if (v61 >> 61 != 1)
          {
            goto LABEL_187;
          }

          v63 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v64 = *((v61 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v58 = v121;
          v65 = v63 == v64;
          goto LABEL_82;
        }

        if (v61 >> 61 != 2)
        {
LABEL_187:

          goto LABEL_200;
        }

        v74 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v75 = *((v61 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v58 = v121;
        if (v74 != v75)
        {
          goto LABEL_194;
        }
      }

      else
      {
        if (v61 >> 61)
        {
          goto LABEL_187;
        }

        result = *(v60 + 16);
        if (result != *(v61 + 16) || *(v60 + 24) != *(v61 + 24))
        {
          result = sub_255E3AC68();
          v58 = v121;
          if ((result & 1) == 0)
          {
            goto LABEL_194;
          }
        }
      }

LABEL_84:
      ++v59;
      v29 = v126;
      if (v59 == v120)
      {

        goto LABEL_80;
      }

      continue;
    }

    break;
  }

  v66 = v61 >> 61;
  if (v62 == 3)
  {
    if (v66 != 3)
    {
      goto LABEL_187;
    }

    v72 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v73 = *((v61 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v58 = v121;
    v65 = v72 == v73;
LABEL_82:
    v27 = v125;
    if (!v65)
    {
      goto LABEL_194;
    }

    goto LABEL_84;
  }

  if (v62 != 4)
  {
    if (v66 != 5)
    {
LABEL_192:

      goto LABEL_201;
    }

    v76 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v77 = *((v61 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();
    swift_retain_n();

    LOBYTE(v76) = sub_255D7DF20(v76, v77);
    v27 = v125;

    v28 = v113;

    v58 = v121;
    if ((v76 & 1) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_84;
  }

  if (v66 != 4)
  {
    goto LABEL_192;
  }

  v67 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v68 = *((v61 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v69 = *(v67 + 16);
  if (v69 == *(v68 + 16))
  {
    if (v69)
    {
      v70 = v67 == v68;
    }

    else
    {
      v70 = 1;
    }

    if (v70)
    {

      v58 = v121;
      goto LABEL_84;
    }

    v118 = v67 + 32;
    v119 = v67;
    v116 = *(v67 + 16);
    v117 = v68 + 32;
    swift_retain_n();
    swift_retain_n();

    v78 = 0;
    v112 = v68;
    while (2)
    {
      if (v78 >= *(v119 + 16))
      {
        goto LABEL_209;
      }

      if (v78 >= *(v68 + 16))
      {
        goto LABEL_210;
      }

      v82 = *(v118 + 8 * v78);
      v83 = *(v117 + 8 * v78);
      v84 = v82 >> 61;
      if ((v82 >> 61) > 2)
      {
        if (v84 != 3)
        {
          if (v84 == 4)
          {
            if (v83 >> 61 != 4)
            {
              goto LABEL_190;
            }

            v87 = v82 & 0x1FFFFFFFFFFFFFFFLL;
            v88 = *(v87 + 16);
            v89 = *(v88 + 16);
            if (v89 != *(*((v83 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16))
            {

LABEL_196:

              goto LABEL_197;
            }

            if (v89)
            {
              v110 = *(v88 + 16);
              v111 = *(v87 + 16);
              v114 = *((v83 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

              if (v111 != v114)
              {
                swift_retain_n();

                v91 = v111 + 32;
                v90 = v110;
                v92 = v111;
                v93 = 0;
                while (v93 < *(v92 + 16))
                {
                  if (v93 >= *(v114 + 16))
                  {
                    goto LABEL_212;
                  }

                  v100 = *(v91 + 8 * v93);
                  v101 = *(v114 + 8 * v93 + 32);
                  v102 = v100 >> 61;
                  if ((v100 >> 61) > 2)
                  {
                    v103 = v101 >> 61;
                    if (v102 == 3)
                    {
                      if (v103 != 3 || *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v101 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
                      {
                        goto LABEL_189;
                      }
                    }

                    else
                    {
                      if (v102 == 4)
                      {
                        if (v103 != 4)
                        {
                          goto LABEL_189;
                        }

                        v107 = *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v98 = *((v101 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        swift_retain_n();
                        swift_retain_n();

                        v99 = sub_255D7DD14(v107, v98);
                      }

                      else
                      {
                        if (v103 != 5)
                        {
                          goto LABEL_189;
                        }

                        v109 = *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v104 = *((v101 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        swift_retain_n();
                        swift_retain_n();

                        v99 = sub_255D7DF20(v109, v104);
                      }

                      v108 = v99;

                      v27 = v125;

                      v91 = v111 + 32;
                      v90 = v110;
                      v92 = v111;
                      if ((v108 & 1) == 0)
                      {
                        goto LABEL_189;
                      }
                    }
                  }

                  else if (v102)
                  {
                    if (v102 == 1)
                    {
                      if (v101 >> 61 != 1 || *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v101 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
                      {
                        goto LABEL_189;
                      }
                    }

                    else if (v101 >> 61 != 2 || *((v100 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v101 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
                    {
                      goto LABEL_189;
                    }
                  }

                  else
                  {
                    if (v101 >> 61)
                    {
                      goto LABEL_189;
                    }

                    result = *(v100 + 16);
                    if (result != *(v101 + 16) || *(v100 + 24) != *(v101 + 24))
                    {
                      result = sub_255E3AC68();
                      v91 = v111 + 32;
                      v90 = v110;
                      v92 = v111;
                      if ((result & 1) == 0)
                      {
                        goto LABEL_189;
                      }
                    }
                  }

                  if (v90 == ++v93)
                  {

                    v68 = v112;
                    goto LABEL_121;
                  }
                }

                goto LABEL_211;
              }
            }

            else
            {
            }
          }

          else
          {
            if (v83 >> 61 != 5)
            {
LABEL_190:

              goto LABEL_198;
            }

            v115 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v97 = *((v83 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();
            swift_retain_n();

            LOBYTE(v115) = sub_255D7DF20(v115, v97);
            v68 = v112;

            v27 = v125;

            if ((v115 & 1) == 0)
            {
              goto LABEL_196;
            }
          }

          goto LABEL_121;
        }

        if (v83 >> 61 != 3)
        {
          goto LABEL_190;
        }

        v95 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v96 = *((v83 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v81 = v95 == v96;
      }

      else
      {
        if (!v84)
        {
          if (v83 >> 61)
          {
            goto LABEL_190;
          }

          result = *(v82 + 16);
          if (result != *(v83 + 16) || *(v82 + 24) != *(v83 + 24))
          {
            result = sub_255E3AC68();
            if ((result & 1) == 0)
            {
              goto LABEL_196;
            }
          }

          goto LABEL_121;
        }

        if (v84 != 1)
        {
          if (v83 >> 61 != 2)
          {
            goto LABEL_190;
          }

          v85 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v86 = *((v83 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          if (v85 != v86)
          {
            goto LABEL_196;
          }

          goto LABEL_121;
        }

        if (v83 >> 61 != 1)
        {
          goto LABEL_190;
        }

        v79 = *((v82 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v80 = *((v83 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v81 = v79 == v80;
      }

      v68 = v112;
      v27 = v125;
      if (!v81)
      {
        goto LABEL_196;
      }

LABEL_121:
      if (++v78 == v116)
      {

        v28 = v113;
        v58 = v121;
        goto LABEL_84;
      }

      continue;
    }
  }

LABEL_194:

LABEL_198:

LABEL_199:

LABEL_200:

LABEL_201:

LABEL_202:

  return 0;
}

uint64_t DecodableState.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 > 2)
  {
    v8 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    if (v4 == 3)
    {
      v14 = *(v8 + 16);
      MEMORY[0x259C4F100](3);
      return sub_255E3ADB8();
    }

    if (v4 == 4)
    {
      v9 = *(v8 + 16);
      MEMORY[0x259C4F100](4);
      result = MEMORY[0x259C4F100](*(v9 + 16));
      v10 = *(v9 + 16);
      if (!v10)
      {
        return result;
      }

      v11 = 32;
      do
      {
        v18 = *(v9 + v11);

        DecodableState.hash(into:)(a1);

        v11 += 8;
        --v10;
      }

      while (v10);
    }

    else
    {
      v17 = *(v8 + 16);
      MEMORY[0x259C4F100](5);

      sub_255D82F34(a1, v17);
    }
  }

  else
  {
    if (v4)
    {
      v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      if (v4 == 1)
      {
        v6 = *(v5 + 16);
        MEMORY[0x259C4F100](1);
        return MEMORY[0x259C4F100](v6);
      }

      else
      {
        v15 = *(v5 + 16);
        MEMORY[0x259C4F100](2);
        v16 = 0.0;
        if (v15 != 0.0)
        {
          v16 = v15;
        }

        return MEMORY[0x259C4F120](*&v16);
      }
    }

    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    MEMORY[0x259C4F100](0);

    sub_255E3A578();
  }
}

uint64_t DecodableState.hashValue.getter()
{
  v2[9] = *v0;
  sub_255E3AD98();
  DecodableState.hash(into:)(v2);
  return sub_255E3ADD8();
}

uint64_t sub_255D7EF80()
{
  v2[9] = *v0;
  sub_255E3AD98();
  DecodableState.hash(into:)(v2);
  return sub_255E3ADD8();
}

uint64_t sub_255D7EFD0()
{
  v2[9] = *v0;
  sub_255E3AD98();
  DecodableState.hash(into:)(v2);
  return sub_255E3ADD8();
}

uint64_t DecodableState.id.getter()
{
  v0 = sub_255E385D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255E385C8();
  v5 = sub_255E385B8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_255D7F0F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_255E385D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255E385C8();
  v7 = sub_255E385B8();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t String.asDecodable.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = v6;
}

uint64_t sub_255D7F25C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = v5;
}

uint64_t sub_255D7F2B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  result = sub_255D7C9F8();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t Int.asDecodable.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result | 0x2000000000000000;
  return result;
}

uint64_t static Int.create(with:)(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 61 == 1)
  {
    return *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  sub_255D7B470();
  swift_allocError();
  v3 = MEMORY[0x277D83B88];
  *v4 = v1;
  v4[1] = v3;
  swift_willThrow();
}

uint64_t sub_255D7F3B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result | 0x2000000000000000;
  return result;
}

uint64_t *sub_255D7F3F8@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result >> 61 == 1)
  {
    *a2 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    sub_255D7B470();
    swift_allocError();
    *v4 = v3;
    v4[1] = v2;
    swift_willThrow();
  }

  return result;
}

uint64_t *sub_255D7F46C@<X0>(uint64_t *result@<X0>, double *a2@<X8>)
{
  v3 = *result;
  v4 = *result >> 61;
  if (v4 == 1)
  {
    v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_5:
    *a2 = v5;
    return result;
  }

  sub_255D7B470();
  swift_allocError();
  *v6 = v3;
  v6[1] = v2;
  swift_willThrow();
}

uint64_t Bool.asDecodable.getter@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result | 0x6000000000000000;
  return result;
}

uint64_t static Bool.create(with:)(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 61 == 3)
  {
    v2 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    sub_255D7B470();
    swift_allocError();
    v3 = MEMORY[0x277D839B0];
    *v4 = v1;
    v4[1] = v3;
    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t sub_255D7F5B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result | 0x6000000000000000;
  return result;
}

uint64_t *sub_255D7F5FC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (*result >> 61 == 3)
  {
    *a2 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    sub_255D7B470();
    swift_allocError();
    *v4 = v3;
    v4[1] = v2;
    swift_willThrow();
  }

  return result;
}

uint64_t Array<A>.asDecodable.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v13[5] = a1;
  v13[2] = a2;
  v13[3] = a3;
  v9 = sub_255E3A6F8();
  WitnessTable = swift_getWitnessTable();
  result = sub_255D7C5D8(sub_255D83254, v13, v9, &type metadata for DecodableState, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  *(v8 + 16) = result;
  *a4 = v8 | 0x8000000000000000;
  return result;
}

uint64_t static Array<A>.create(with:)(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 61 == 4)
  {
    v12[1] = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    MEMORY[0x28223BE20](a1);
    v11[2] = v2;
    v11[3] = v3;
    v4 = v2;

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
    v7 = sub_255D832F4(&qword_27F7E6E80);
    v1 = sub_255D7C5D8(sub_255D83298, v11, v5, v4, v6, v7, MEMORY[0x277D84950], v12);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D7B470();
    swift_allocError();
    *v9 = v1;
    v9[1] = v8;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_255D7F900@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 - 8);
  v7 = *(a2 + 16);
  result = static Array<A>.create(with:)(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Dictionary<>.asDecodable.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_255E3A438();
  *(v2 + 16) = result;
  *a1 = v2 | 0xA000000000000000;
  return result;
}

uint64_t static Dictionary<>.create(with:)(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 61 == 5)
  {
    v2 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    MEMORY[0x28223BE20](a1);

    v3 = sub_255E3A438();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v4 = v1;
    v4[1] = v3;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_255D7FB04@<X0>(unint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  v6 = *(a2 + 24);
  return Dictionary<>.asDecodable.getter(a1);
}

uint64_t sub_255D7FB18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 - 8);
  v7 = *(a2 + 24);
  result = static Dictionary<>.create(with:)(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t NSString.asDecodable.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_255E3A4D8();
  *(v2 + 16) = result;
  *(v2 + 24) = v4;
  *a1 = v2;
  return result;
}

uint64_t static NSString.create(with:)(uint64_t *a1)
{
  v4 = *a1;
  result = sub_255D7C9F8();
  if (!v1)
  {
    v3 = sub_255E3A4C8();

    return v3;
  }

  return result;
}

uint64_t sub_255D7FC5C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  result = sub_255E3A4D8();
  *(v4 + 16) = result;
  *(v4 + 24) = v6;
  *a1 = v4;
  return result;
}

uint64_t sub_255D7FCB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  result = sub_255D7C9F8();
  if (!v2)
  {
    v5 = sub_255E3A4C8();

    *a2 = v5;
  }

  return result;
}

uint64_t CGFloat.asDecodable.getter@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = result | 0x4000000000000000;
  return result;
}

uint64_t *sub_255D7FD78(uint64_t *result)
{
  v1 = *result;
  v2 = *result >> 61;
  if (v2 == 1)
  {
    v4 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else if (v2 == 2)
  {
    v3 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    sub_255D7B470();
    swift_allocError();
    v5 = MEMORY[0x277D839F8];
    *v6 = v1;
    v6[1] = v5;
    swift_willThrow();
  }

  return result;
}

uint64_t *sub_255D7FE08@<X0>(uint64_t *result@<X0>, double *a2@<X8>)
{
  v2 = *result;
  v3 = *result >> 61;
  if (v3 == 1)
  {
    v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_5:
    *a2 = v4;
    return result;
  }

  sub_255D7B470();
  swift_allocError();
  v5 = MEMORY[0x277D839F8];
  *v6 = v2;
  v6[1] = v5;
  swift_willThrow();
}

uint64_t NSDictionary.asDecodable.getter@<X0>(unint64_t *a1@<X8>)
{
  sub_255E3A818();
  sub_255E3A828();
  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  if (!*(&v36 + 1))
  {
    v1 = MEMORY[0x277D84F98];
LABEL_24:

    result = swift_allocObject();
    *(result + 16) = v1;
    *a1 = result | 0xA000000000000000;
    return result;
  }

  v1 = MEMORY[0x277D84F98];
  v2 = MEMORY[0x277D84F70];
  while (1)
  {
    sub_255D31B4C(&v41, v34);
    sub_255D31B4C(&v39, &v35);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
LABEL_5:
    sub_255E3A828();
    v39 = v35;
    v40 = v36;
    v41 = v37;
    v42 = v38;
    if (!*(&v36 + 1))
    {
      goto LABEL_24;
    }
  }

  v5 = v33[0];
  v6 = v33[1];
  sub_255D3951C(v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E74E0, &qword_255E48670);
  if (!swift_dynamicCast())
  {
    *&v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_255D395E4(&v35, &qword_27F7E74E8, &qword_255E48678);
    v20 = sub_255D3CA20(v5, v6);
    v22 = v21;

    if (v22)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = v1;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_255D827EC();
        v1 = v35;
      }

      v3 = *(v1[6] + 16 * v20 + 8);

      v4 = *(v1[7] + 8 * v20);

      sub_255D81B20(v20, v1);
    }

    goto LABEL_4;
  }

  v7 = v2;
  v8 = *(&v36 + 1);
  v9 = v37;
  __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
  (*(v9 + 8))(&v32, v8, v9);
  v10 = v32;
  __swift_destroy_boxed_opaque_existential_1Tm(&v35);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *&v35 = v1;
  v13 = sub_255D3CA20(v5, v6);
  v14 = v1[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (!__OFADD__(v14, v15))
  {
    v17 = v12;
    if (v1[3] >= v16)
    {
      if (v11)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_255D827EC();
        if ((v17 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_255D80F40(v16, v11);
      v18 = sub_255D3CA20(v5, v6);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_27;
      }

      v13 = v18;
      if ((v17 & 1) == 0)
      {
LABEL_20:
        v1 = v35;
        *(v35 + 8 * (v13 >> 6) + 64) |= 1 << v13;
        v26 = (v1[6] + 16 * v13);
        *v26 = v5;
        v26[1] = v6;
        *(v1[7] + 8 * v13) = v10;
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        v27 = v1[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_26;
        }

        v1[2] = v29;
        goto LABEL_22;
      }
    }

    v1 = v35;
    v24 = *(v35 + 56);
    v25 = *(v24 + 8 * v13);
    *(v24 + 8 * v13) = v10;

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
LABEL_22:
    v2 = v7;
    goto LABEL_5;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_255E3AD28();
  __break(1u);
  return result;
}

uint64_t sub_255D80270@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255D83388(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NSArray.asDecodable.getter@<X0>(unint64_t *a1@<X8>)
{
  v15 = a1;
  v1 = sub_255E38538();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255E3A898();
  sub_255D87070();
  sub_255E3A8C8();
  if (v23)
  {
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_255D31B4C(&v22, v21);
      sub_255D3951C(v21, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E74E0, &qword_255E48670);
      if (swift_dynamicCast())
      {
        v6 = *(&v19 + 1);
        v7 = v20;
        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
        (*(v7 + 8))(&v16, v6, v7);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v8 = v16;
        __swift_destroy_boxed_opaque_existential_1Tm(&v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_255DE55B4(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_255DE55B4((v9 > 1), v10 + 1, 1, v5);
        }

        *(v5 + 2) = v10 + 1;
        *&v5[8 * v10 + 32] = v8;
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        sub_255D395E4(&v18, &qword_27F7E74E8, &qword_255E48678);
      }

      sub_255E3A8C8();
    }

    while (v23);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v11 = swift_allocObject();
  result = (*(v14 + 8))(v4, v1);
  *(v11 + 16) = v5;
  *v15 = v11 | 0x8000000000000000;
  return result;
}

uint64_t sub_255D80570@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255D870C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id NSNumber.asDecodable.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  result = [v1 doubleValue];
  *(v3 + 16) = v5;
  *a1 = v3 | 0x4000000000000000;
  return result;
}

uint64_t static NSNumber.create(with:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 >> 61;
  if (v2 == 1)
  {
    v3 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    if (v2 != 2)
    {
      sub_255D7B470();
      swift_allocError();
      v7 = MEMORY[0x277D839F8];
      *v8 = v1;
      v8[1] = v7;

      return swift_willThrow();
    }

    v3 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    return result;
  }

  sub_255D7B470();
  swift_allocError();
  *v6 = xmmword_255E48620;
  return swift_willThrow();
}

id sub_255D806F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  result = [v3 doubleValue];
  *(v4 + 16) = v6;
  *a1 = v4 | 0x4000000000000000;
  return result;
}

uint64_t sub_255D80750@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSNumber.create(with:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_255D8077C(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_255DE5CE0(result, v5, 0);
  }

  return result;
}

double sub_255D807F4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_255D3CA98(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_255D82988(&qword_27F7E7550, &qword_255E48B40, sub_255D8B0B0);
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_255E3AAE8();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_255D31B4C((*(v11 + 56) + 32 * v8), a2);
    sub_255D8186C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_255D808F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_255D3CA20(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_255D827EC();
      v12 = v14;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    *a3 = *(*(v12 + 56) + 8 * v9);
    result = sub_255D81B20(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0xF000000000000007;
  }

  return result;
}

uint64_t sub_255D80994(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7558, &qword_255E48B48);
  v46 = a2;
  result = sub_255E3AB18();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
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
    v45 = result;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v49 = *v25;
      v27 = *(v5 + 56) + 32 * v24;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = *(v27 + 24);
      if ((v46 & 1) == 0)
      {

        sub_255D5C258(v28, v29, v30, v31);
      }

      v48 = v30;
      v32 = v29;
      v33 = v28;
      v34 = *(v45 + 40);
      sub_255E3AD98();
      sub_255E3A578();
      result = sub_255E3ADD8();
      v8 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v17 = v48;
        v18 = v31;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v17 = v48;
      v18 = v31;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v45 + 48) + 16 * v16);
      *v19 = v49;
      v19[1] = v26;
      v20 = *(v45 + 56) + 32 * v16;
      *v20 = v33;
      *(v20 + 8) = v32;
      *(v20 + 16) = v17;
      *(v20 + 24) = v18;
      ++*(v45 + 16);
      v5 = v44;
      v13 = v47;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_35;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_255D80CA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7528, &unk_255E48B20);
  v38 = a2;
  result = sub_255E3AB18();
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
      sub_255E3AD98();
      sub_255E3A578();
      result = sub_255E3ADD8();
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

uint64_t sub_255D80F40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  v37 = a2;
  result = sub_255E3AB18();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_255E3AD98();
      sub_255E3A578();
      result = sub_255E3ADD8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_255D81210(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, void (*a5)(unint64_t, _BYTE *))
{
  v49 = a5;
  v8 = v5;
  v11 = sub_255E3AAE8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v17 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_255E3AB18();
  v19 = result;
  if (*(v16 + 16))
  {
    v51 = v15;
    v52 = v11;
    v43 = v8;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v44 = (v12 + 16);
    v45 = v12;
    v48 = (v12 + 32);
    v26 = result + 64;
    v46 = v16;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v31 = v28 | (v20 << 6);
      v32 = *(v16 + 48);
      v50 = *(v12 + 72);
      v33 = v32 + v50 * v31;
      if (v47)
      {
        (*v48)(v51, v33, v52);
        v49(*(v16 + 56) + 32 * v31, v53);
      }

      else
      {
        (*v44)(v51, v33, v52);
        sub_255D3951C(*(v16 + 56) + 32 * v31, v53);
      }

      v34 = *(v19 + 40);
      result = sub_255E3A478();
      v35 = -1 << *(v19 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v26 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v12 = v45;
        v16 = v46;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v26 + 8 * v37);
          if (v41 != -1)
          {
            v27 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v36) & ~*(v26 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v12 = v45;
      v16 = v46;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v48)((*(v19 + 48) + v50 * v27), v51, v52);
      result = (v49)(v53, *(v19 + 56) + 32 * v27);
      ++*(v19 + 16);
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v20 >= v25)
      {
        break;
      }

      v30 = v21[v20];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v16 + 32);
    v8 = v43;
    if (v42 >= 64)
    {
      bzero(v21, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v42;
    }

    *(v16 + 16) = 0;
  }

LABEL_36:
  *v8 = v19;
  return result;
}

uint64_t sub_255D815C8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = a2;
  result = sub_255E3AB18();
  v10 = result;
  if (*(v7 + 16))
  {
    v37 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = 16 * (v21 | (v11 << 6));
      v25 = (*(v7 + 48) + v24);
      v26 = *v25;
      v27 = v25[1];
      v39 = *(*(v7 + 56) + v24);
      if ((v38 & 1) == 0)
      {
      }

      v28 = *(v10 + 40);
      sub_255E3AD98();
      sub_255E3A578();
      result = sub_255E3ADD8();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = 16 * v18;
      v20 = (*(v10 + 48) + v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v10 + 56) + v19) = v39;
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero((v7 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t sub_255D8186C(int64_t a1, uint64_t a2)
{
  v4 = sub_255E3AAE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_255E3A948();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_255E3A478();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_255D81B20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_255E3A948() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_255E3AD98();

      sub_255E3A578();
      v13 = sub_255E3ADD8();

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

_OWORD *sub_255D81CD0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_255E3AAE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_255D3CA98(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_255D82988(&qword_27F7E7550, &qword_255E48B40, sub_255D8B0B0);
      goto LABEL_7;
    }

    sub_255D81210(v18, a3 & 1, &qword_27F7E7550, &qword_255E48B40, sub_255D8B0B0);
    v24 = *v4;
    v25 = sub_255D3CA98(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_255D823CC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_255E3AD28();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  return sub_255D31B4C(a1, v22);
}

unint64_t sub_255D81EF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_255D3CA20(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_255D80CA0(v16, a4 & 1);
      v20 = *v5;
      result = sub_255D3CA20(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_255E3AD28();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_255D82684();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_255D82054(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_255D3CA20(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_255D80F40(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_255D3CA20(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_255E3AD28();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_255D827EC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_255D821F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v16 = *v7;
  result = sub_255D3CA20(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_255D815C8(v22, a5 & 1, a6, a7);
      v26 = *v10;
      result = sub_255D3CA20(a3, a4);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_16:
        result = sub_255E3AD28();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = result;
      sub_255D82C1C(a6, a7);
      result = v25;
    }
  }

  v28 = *v10;
  if (v23)
  {
    v29 = (v28[7] + 16 * result);
    *v29 = a1;
    v29[1] = a2;
    return result;
  }

  v28[(result >> 6) + 8] |= 1 << result;
  v30 = (v28[6] + 16 * result);
  *v30 = a3;
  v30[1] = a4;
  v31 = (v28[7] + 16 * result);
  *v31 = a1;
  v31[1] = a2;
  v32 = v28[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28[2] = v33;
}

_OWORD *sub_255D823CC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_255E3AAE8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_255D31B4C(a3, (a4[7] + 32 * a1));
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

unint64_t sub_255D8248C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void *sub_255D824D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7558, &qword_255E48B48);
  v27 = v0;
  v1 = *v0;
  v2 = sub_255E3AB08();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = *(v1 + 56);
        v19 = (*(v1 + 48) + 16 * v16);
        v20 = v19[1];
        v16 *= 32;
        v21 = *(v18 + v16);
        v22 = *(v18 + v16 + 8);
        v23 = *(v18 + v16 + 16);
        v24 = *(v18 + v16 + 24);
        v25 = (*(v3 + 48) + v17);
        *v25 = *v19;
        v25[1] = v20;
        v26 = *(v3 + 56) + v16;
        *v26 = v21;
        *(v26 + 8) = v22;
        *(v26 + 16) = v23;
        *(v26 + 24) = v24;

        result = sub_255D5C258(v21, v22, v23, v24);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v3;
  }

  return result;
}

void *sub_255D82684()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7528, &unk_255E48B20);
  v2 = *v0;
  v3 = sub_255E3AB08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_255D827EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  v2 = *v0;
  v3 = sub_255E3AB08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_255D82988(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(_BYTE *, unint64_t))
{
  v39 = a3;
  v6 = v3;
  v38 = sub_255E3AAE8();
  v41 = *(v38 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *v3;
  v10 = sub_255E3AB08();
  v11 = v10;
  if (*(v9 + 16))
  {
    v34 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v40 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = v41;
        v27 = *(v41 + 72) * v25;
        v28 = v37;
        v29 = v38;
        (*(v41 + 16))(v37, *(v9 + 48) + v27, v38);
        v25 *= 32;
        sub_255D3951C(*(v9 + 56) + v25, v43);
        v30 = v9;
        v31 = v40;
        (*(v26 + 32))(*(v40 + 48) + v27, v28, v29);
        v32 = *(v31 + 56);
        v9 = v30;
        result = v39(v43, v32 + v25);
        v20 = v42;
      }

      while (v42);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v34;
        v11 = v40;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v42 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_255D82C1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_255E3AB08();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_255D82D74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
  result = sub_255E3AB08();
  v3 = result;
  v4 = 0;
  v24 = a1;
  v25 = result;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v23 = result + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v24 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v28 = *(*(v24 + 56) + 8 * v15);

      sub_255D7D920(v27);

      if (v26)
      {
        break;
      }

      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v3 = v25;
      v19 = (v25[6] + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      result = sub_255D31B4C(v27, (v25[7] + 32 * v15));
      v20 = v25[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v25[2] = v22;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v3 = v25;

    return v3;
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}