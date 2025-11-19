uint64_t sub_1E5C92AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for TVSearchView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E5C909AC(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_1E5C92BB8()
{
  result = qword_1ED055810;
  if (!qword_1ED055810)
  {
    type metadata accessor for SearchHint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055810);
  }

  return result;
}

uint64_t sub_1E5C92C10()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for TVSearchView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SearchHint() - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1E5C90C38(v0 + v6, v9, v1, v2, v3, v4);
}

uint64_t SearchQueryMethod.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x79726F74736968;
  v2 = 0x6E656D6572636E69;
  if (a1 != 2)
  {
    v2 = 0x74696D627573;
  }

  if (a1)
  {
    v1 = 1953393000;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5C92D9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s13FitnessSearch0B11QueryMethodO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1E5C92DCC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x79726F74736968;
  v4 = 0xEB000000006C6174;
  v5 = 0x6E656D6572636E69;
  if (*v1 != 2)
  {
    v5 = 0x74696D627573;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 1953393000;
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

uint64_t sub_1E5C92EF8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x79726F74736968;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x6E656D6572636E69;
  v6 = 0xEB000000006C6174;
  if (v3 != 2)
  {
    v5 = 0x74696D627573;
    v6 = 0xE600000000000000;
  }

  v7 = 1953393000;
  if (*a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v7 = 0x79726F74736968;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = 0xE700000000000000;
  v11 = 0x6E656D6572636E69;
  v12 = 0xEB000000006C6174;
  if (*a2 != 2)
  {
    v11 = 0x74696D627573;
    v12 = 0xE600000000000000;
  }

  if (*a2)
  {
    v2 = 1953393000;
    v10 = 0xE400000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E5C9D060();
  }

  return v15 & 1;
}

uint64_t sub_1E5C93034()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t sub_1E5C930F4()
{
  *v0;
  *v0;
  *v0;
  sub_1E5C9CC60();
}

uint64_t sub_1E5C931A0()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B11QueryMethodO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1E5C9CF10();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E5C932AC()
{
  result = qword_1ED055B08;
  if (!qword_1ED055B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B08);
  }

  return result;
}

unint64_t sub_1E5C93310()
{
  result = qword_1ED055B10;
  if (!qword_1ED055B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B10);
  }

  return result;
}

uint64_t sub_1E5C93368()
{
  v1 = 0x676E696863746566;
  if (*v0 != 1)
  {
    v1 = 0x746C75736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1E5C933B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C94D88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C933E0(uint64_t a1)
{
  v2 = sub_1E5C946F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C9341C(uint64_t a1)
{
  v2 = sub_1E5C946F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C93458(uint64_t a1)
{
  v2 = sub_1E5C9479C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C93494(uint64_t a1)
{
  v2 = sub_1E5C9479C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C934D0(uint64_t a1)
{
  v2 = sub_1E5C947F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C9350C(uint64_t a1)
{
  v2 = sub_1E5C947F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C93548(uint64_t a1)
{
  v2 = sub_1E5C94748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C93584(uint64_t a1)
{
  v2 = sub_1E5C94748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchResultsState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B18, &qword_1E5CA6B10);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v30 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B20, &qword_1E5CA6B18);
  v34 = *(v37 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B28, &qword_1E5CA6B20);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B30, &qword_1E5CA6B28);
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = v1[1];
  v41 = *v1;
  v42 = v17;
  v18 = v1[3];
  v40 = v1[2];
  v19 = v1[5];
  v32 = v1[4];
  v33 = v18;
  v31 = v19;
  v30 = v1[6];
  v20 = *(v1 + 56);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C946F4();
  sub_1E5C9D130();
  if (v20)
  {
    if (v20 == 1)
    {
      LOBYTE(v46) = 2;
      sub_1E5C94748();
      v22 = v36;
      v23 = v44;
      sub_1E5C9CFC0();
      v46 = v41;
      v47 = v42;
      v48 = v40;
      v49 = v33;
      v50 = v32;
      v51 = v31;
      v52 = v30;
      sub_1E5C3DCA8();
      v24 = v39;
      sub_1E5C9D030();
      (*(v38 + 8))(v22, v24);
    }

    else
    {
      LOBYTE(v46) = 0;
      sub_1E5C947F0();
      v23 = v44;
      sub_1E5C9CFC0();
      (*(v35 + 8))(v12, v9);
    }

    return (*(v43 + 8))(v16, v23);
  }

  else
  {
    v26 = v34;
    LOBYTE(v46) = 1;
    sub_1E5C9479C();
    v27 = v44;
    sub_1E5C9CFC0();
    LOBYTE(v46) = 0;
    v28 = v37;
    v29 = v45;
    sub_1E5C9D000();
    if (!v29)
    {
      LOBYTE(v46) = v40;
      v53 = 1;
      sub_1E5C36AF8();
      sub_1E5C9D030();
    }

    (*(v26 + 8))(v8, v28);
    return (*(v43 + 8))(v16, v27);
  }
}

uint64_t SearchResultsState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B58, &qword_1E5CA6B30);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v49 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B60, &qword_1E5CA6B38);
  v55 = *(v52 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B68, &qword_1E5CA6B40);
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B70, &unk_1E5CA6B48);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E5C946F4();
  v21 = v59;
  sub_1E5C9D120();
  if (!v21)
  {
    v22 = v56;
    v50 = v10;
    v51 = v15;
    v24 = v57;
    v23 = v58;
    v59 = v18;
    v25 = sub_1E5C9CFB0();
    v26 = (2 * *(v25 + 16)) | 1;
    v67 = v25;
    v68 = v25 + 32;
    v69 = 0;
    v70 = v26;
    v27 = sub_1E5C448A0();
    if (v27 == 3 || v69 != v70 >> 1)
    {
      v32 = sub_1E5C9CE90();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
      *v34 = &type metadata for SearchResultsState;
      v36 = v59;
      sub_1E5C9CF30();
      sub_1E5C9CE80();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v51 + 8))(v36, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v27)
      {
        v28 = v59;
        if (v27 == 1)
        {
          LOBYTE(v61) = 1;
          sub_1E5C9479C();
          sub_1E5C9CF20();
          LOBYTE(v61) = 0;
          v29 = v52;
          v30 = sub_1E5C9CF70();
          v31 = v51;
          v41 = v40;
          v42 = v30;
          v71 = 1;
          sub_1E5C36DE4();
          sub_1E5C9CFA0();
          (*(v55 + 8))(v9, v29);
          (*(v31 + 8))(v59, v14);
          swift_unknownObjectRelease();
          v46 = 0;
          v47 = 0;
          v48 = v61;
        }

        else
        {
          LOBYTE(v61) = 2;
          sub_1E5C94748();
          sub_1E5C9CF20();
          sub_1E5C40834();
          v39 = v53;
          sub_1E5C9CFA0();
          (*(v54 + 8))(v24, v39);
          (*(v51 + 8))(v28, v14);
          swift_unknownObjectRelease();
          v42 = v61;
          v41 = v62;
          v48 = v63;
          v43 = v64;
          v44 = v65;
          v45 = v66;
          v47 = v63 & 0xFFFFFFFFFFFFFF00;
          v46 = 1;
        }
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_1E5C947F0();
        v38 = v59;
        sub_1E5C9CF20();
        (*(v22 + 8))(v13, v50);
        (*(v51 + 8))(v38, v14);
        swift_unknownObjectRelease();
        v42 = 0;
        v41 = 0;
        v43 = 0;
        v44 = 0;
        v48 = 0;
        v47 = 0;
        v45 = 0uLL;
        v46 = 2;
      }

      *v23 = v42;
      *(v23 + 8) = v41;
      *(v23 + 16) = v47 | v48;
      *(v23 + 24) = v43;
      *(v23 + 32) = v44;
      *(v23 + 40) = v45;
      *(v23 + 56) = v46;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t SearchResultsState.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  if (*(v1 + 56))
  {
    if (*(v1 + 56) == 1)
    {
      v6 = v1[5];
      v7 = v1[6];
      v8 = v1[3];
      v9 = v1[4];
      MEMORY[0x1E69399F0](2);
      sub_1E5C9D0F0();
      if (v4)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2A580(a1, v5);
      sub_1E5C9CC60();
      if (v7)
      {
        sub_1E5C9D0F0();

        return sub_1E5C9CC60();
      }

      else
      {
        return sub_1E5C9D0F0();
      }
    }

    else
    {
      return MEMORY[0x1E69399F0](0);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9CC60();
    sub_1E5C9CC60();
  }
}

uint64_t SearchResultsState.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchResultsState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C9446C()
{
  sub_1E5C9D0D0();
  SearchResultsState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C944B0()
{
  sub_1E5C9D0D0();
  SearchResultsState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B12ResultsStateO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v19 = *a1;
  v20 = v2;
  *v21 = a1[2];
  v3 = *v21;
  v4 = a2[1];
  v22 = *a2;
  *v23 = v4;
  v6 = *a2;
  v5 = a2[1];
  *&v23[16] = a2[2];
  *&v23[25] = *(a2 + 41);
  *&v21[9] = *(a1 + 41);
  v24[0] = v19;
  v24[1] = v2;
  v25[0] = v3;
  *(v25 + 9) = *&v21[9];
  v25[2] = v6;
  v25[3] = v5;
  v26[0] = a2[2];
  *(v26 + 9) = *(a2 + 41);
  v7 = v2;
  if (!v21[24])
  {
    if (!v23[40])
    {
      v9 = v23[0];
      if (v19 == v22 || (sub_1E5C9D060() & 1) != 0)
      {
        sub_1E5C31CB0(&v22, v18);
        sub_1E5C31CB0(&v19, v18);
        v8 = sub_1E5C76194(v7, v9);
        sub_1E5C94E9C(v24);
        return v8 & 1;
      }
    }

    goto LABEL_11;
  }

  if (v21[24] != 1)
  {
    if (v23[40] == 2)
    {
      v10 = vorrq_s8(*&v23[8], *&v23[24]);
      if (!(*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *v23 | *(&v22 + 1) | v22))
      {
        sub_1E5C94E9C(v24);
        v8 = 1;
        return v8 & 1;
      }
    }

    goto LABEL_11;
  }

  if (v23[40] != 1)
  {
LABEL_11:
    sub_1E5C31CB0(&v22, v18);
    sub_1E5C31CB0(&v19, v18);
    sub_1E5C94E9C(v24);
    v8 = 0;
    return v8 & 1;
  }

  v15[0] = v19;
  v15[1] = __PAIR128__(*(&v20 + 1), v2);
  v16 = *v21;
  v17 = *&v21[8];
  v12[0] = v22;
  v12[1] = *v23;
  v13 = *&v23[16];
  v14 = *&v23[24];
  sub_1E5C31CB0(&v22, v18);
  sub_1E5C31CB0(&v19, v18);
  sub_1E5C31CB0(&v22, v18);
  sub_1E5C31CB0(&v19, v18);
  v8 = _s13FitnessSearch0B6ResultV2eeoiySbAC_ACtFZ_0(v15, v12);
  sub_1E5C94E9C(v24);
  sub_1E5C30CAC(&v22);
  sub_1E5C30CAC(&v19);
  return v8 & 1;
}

unint64_t sub_1E5C946F4()
{
  result = qword_1ED055B38;
  if (!qword_1ED055B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B38);
  }

  return result;
}

unint64_t sub_1E5C94748()
{
  result = qword_1ED055B40;
  if (!qword_1ED055B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B40);
  }

  return result;
}

unint64_t sub_1E5C9479C()
{
  result = qword_1ED055B48;
  if (!qword_1ED055B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B48);
  }

  return result;
}

unint64_t sub_1E5C947F0()
{
  result = qword_1ED055B50;
  if (!qword_1ED055B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B50);
  }

  return result;
}

unint64_t sub_1E5C94848()
{
  result = qword_1ED055B78;
  if (!qword_1ED055B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B78);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E5C948B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5C948F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5C94944(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

unint64_t sub_1E5C949C4()
{
  result = qword_1ED055B80;
  if (!qword_1ED055B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B80);
  }

  return result;
}

unint64_t sub_1E5C94A1C()
{
  result = qword_1ED055B88;
  if (!qword_1ED055B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B88);
  }

  return result;
}

unint64_t sub_1E5C94A74()
{
  result = qword_1ED055B90;
  if (!qword_1ED055B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B90);
  }

  return result;
}

unint64_t sub_1E5C94ACC()
{
  result = qword_1ED055B98;
  if (!qword_1ED055B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B98);
  }

  return result;
}

unint64_t sub_1E5C94B24()
{
  result = qword_1ED055BA0;
  if (!qword_1ED055BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BA0);
  }

  return result;
}

unint64_t sub_1E5C94B7C()
{
  result = qword_1ED055BA8;
  if (!qword_1ED055BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BA8);
  }

  return result;
}

unint64_t sub_1E5C94BD4()
{
  result = qword_1ED055BB0;
  if (!qword_1ED055BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BB0);
  }

  return result;
}

unint64_t sub_1E5C94C2C()
{
  result = qword_1ED055BB8;
  if (!qword_1ED055BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BB8);
  }

  return result;
}

unint64_t sub_1E5C94C84()
{
  result = qword_1ED055BC0;
  if (!qword_1ED055BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BC0);
  }

  return result;
}

unint64_t sub_1E5C94CDC()
{
  result = qword_1ED055BC8;
  if (!qword_1ED055BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BC8);
  }

  return result;
}

unint64_t sub_1E5C94D34()
{
  result = qword_1ED055BD0;
  if (!qword_1ED055BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BD0);
  }

  return result;
}

uint64_t sub_1E5C94D88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E5C94E9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055BD8, &qword_1E5CA70C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SearchResult.empty(_:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1E5C9BBA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C9BB90();
  v15 = sub_1E5C9BB70();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  *a5 = v15;
  a5[1] = v17;
  a5[6] = a4;
  a5[2] = MEMORY[0x1E69E7CC0];
  a5[3] = a1;
  a5[4] = a2;
  a5[5] = a3;
}

uint64_t SearchResult.datasetIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchResult.term.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SearchResult.error.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void __swiftcall SearchResult.init(datasetIdentifier:scopes:term:error:)(FitnessSearch::SearchResult *__return_ptr retstr, Swift::String_optional datasetIdentifier, Swift::OpaquePointer scopes, Swift::String term, Swift::String_optional error)
{
  retstr->datasetIdentifier = datasetIdentifier;
  retstr->error = error;
  retstr->scopes = scopes;
  retstr->term = term;
}

unint64_t sub_1E5C950E8()
{
  v1 = 0x7365706F6373;
  v2 = 1836213620;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1E5C95158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C95E58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C95180(uint64_t a1)
{
  v2 = sub_1E5C95B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C951BC(uint64_t a1)
{
  v2 = sub_1E5C95B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055BE0, &qword_1E5CA70C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[4] = v1[3];
  v16 = v10;
  v11 = v1[4];
  v15[2] = v1[5];
  v15[3] = v11;
  v15[1] = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C95B5C();
  sub_1E5C9D130();
  v22 = 0;
  v13 = v17;
  sub_1E5C9CFD0();
  if (!v13)
  {
    v18 = v16;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055278, &unk_1E5CA49A0);
    sub_1E5C95BB0(&qword_1ED055BF0, sub_1E5C32CD8);
    sub_1E5C9D030();
    v20 = 2;
    sub_1E5C9D000();
    v19 = 3;
    sub_1E5C9CFD0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SearchResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055BF8, &qword_1E5CA70D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C95B5C();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v11 = sub_1E5C9CF40();
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055278, &unk_1E5CA49A0);
  v29 = 1;
  sub_1E5C95BB0(&qword_1ED055C00, sub_1E5C3376C);
  sub_1E5C9CFA0();
  v24 = v26;
  v28 = 2;
  v22 = sub_1E5C9CF70();
  v23 = v13;
  v27 = 3;
  v14 = sub_1E5C9CF40();
  v17 = v16;
  v18 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  v19 = v24;
  a2[1] = v25;
  a2[2] = v19;
  v20 = v23;
  a2[3] = v22;
  a2[4] = v20;
  a2[5] = v18;
  a2[6] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SearchResult.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  if (v1[1])
  {
    v8 = *v1;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C2A580(a1, v3);
  sub_1E5C9CC60();
  if (!v7)
  {
    return sub_1E5C9D0F0();
  }

  sub_1E5C9D0F0();

  return sub_1E5C9CC60();
}

uint64_t SearchResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v2)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2A580(v9, v4);
  sub_1E5C9CC60();
  sub_1E5C9D0F0();
  if (v7)
  {
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C95980()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v2)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2A580(v9, v4);
  sub_1E5C9CC60();
  sub_1E5C9D0F0();
  if (v7)
  {
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B6ResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v14 = a2[5];
  v13 = a2[6];
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_1E5C77CC0(v4, v10) & 1) != 0 && (v5 == v11 && v6 == v12 || (sub_1E5C9D060()))
  {
    if (v8)
    {
      if (v13 && (v7 == v14 && v8 == v13 || (sub_1E5C9D060() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1E5C95B5C()
{
  result = qword_1ED055BE8;
  if (!qword_1ED055BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BE8);
  }

  return result;
}

uint64_t sub_1E5C95BB0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055278, &unk_1E5CA49A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C95C2C()
{
  result = qword_1ED055C08;
  if (!qword_1ED055C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055C08);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E5C95C9C(uint64_t a1, int a2)
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

uint64_t sub_1E5C95CE4(uint64_t result, int a2, int a3)
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

unint64_t sub_1E5C95D54()
{
  result = qword_1ED055C10;
  if (!qword_1ED055C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055C10);
  }

  return result;
}

unint64_t sub_1E5C95DAC()
{
  result = qword_1ED055C18;
  if (!qword_1ED055C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055C18);
  }

  return result;
}

unint64_t sub_1E5C95E04()
{
  result = qword_1ED055C20;
  if (!qword_1ED055C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055C20);
  }

  return result;
}

uint64_t sub_1E5C95E58(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5CA7C10 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365706F6373 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1836213620 && a2 == 0xE400000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E5C9D060();

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

char *SearchViewController.init(store:searchLandingView:searchResultsView:onContentScrollViewDidChange:onPop:titleView:bottomPaletteContentView:)(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v13 = v12;
  v68 = a8;
  v69 = a5;
  v76 = a7;
  v77 = a4;
  v66 = a6;
  v60 = a3;
  v67 = a1;
  v71 = a11;
  v72 = a12;
  v75 = a10;
  v70 = a9;
  ObjectType = swift_getObjectType();
  v15 = *v12;
  v16 = *MEMORY[0x1E69E7D40];
  v65 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x58);
  v17 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](ObjectType);
  v64 = &v58 - v18;
  v62 = sub_1E5C9C400();
  v59 = *(v62 - 8);
  v19 = v59;
  v20 = *(v59 + 64);
  v21 = MEMORY[0x1EEE9AC00](v62);
  v61 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *((v16 & v15) + 0x50);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v27 = &v58 - v26;
  *&v12[qword_1EE2C4780] = MEMORY[0x1E69E7CC0];
  v28 = &v12[qword_1EE2C4788];
  *v28 = 0;
  *(v28 + 1) = 0;
  v12[qword_1EE2C4770] = 0;
  v29 = qword_1EE2C4798;
  sub_1E5C9BCB0();
  *&v13[v29] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v74 = a2;
  *&v13[qword_1EE2C4760] = v67();
  v67 = *((v16 & v15) + 0x60);
  v63 = v23;
  type metadata accessor for ScrollObservingHostingController();
  v60();
  v30 = sub_1E5C2BC2C(v27);
  (*(v24 + 8))(v27, v23);
  *&v13[qword_1EE2C47D8] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED055C30, &qword_1E5CA7350);
  v31 = *(v19 + 72);
  v32 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1E5CA3380;
  v34 = v30;
  sub_1E5C9C3E0();
  sub_1E5C9C3F0();
  v78 = v33;
  sub_1E5C99864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055C40, &qword_1E5CA7358);
  sub_1E5C27F74(&qword_1EE2C4068, &qword_1ED055C40, &qword_1E5CA7358);
  sub_1E5C9CE30();
  sub_1E5C9C220();

  v35 = v16 & v15;
  v36 = v68;
  v37 = *(v35 + 104);
  v38 = v65;
  sub_1E5C9C260();
  v69();
  *&v13[qword_1EE2C47D0] = sub_1E5C9C240();
  v39 = &v13[qword_1EE2C4768];
  v40 = v71;
  v41 = v75;
  v42 = v76;
  *v39 = v70;
  *(v39 + 1) = v41;
  v43 = &v13[qword_1EE2C47C0];
  *v43 = v42;
  v43[1] = v36;
  *&v13[qword_1EE2C47A8] = v40;
  v44 = v72;
  *&v13[qword_1EE2C47B0] = v72;

  sub_1E5C998BC(v42);
  v79.receiver = v13;
  v79.super_class = ObjectType;
  v45 = v40;
  v46 = v44;
  ObjectType = v44;
  v47 = objc_msgSendSuper2(&v79, sel_initWithNibName_bundle_, 0, 0);
  v48 = *&v47[qword_1EE2C4760];
  v49 = v47;

  v50 = sub_1E5C9CAE0();

  v78 = v50;
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v52 = swift_allocObject();
  *&v53 = v63;
  *(&v53 + 1) = v38;
  *&v54 = v67;
  *(&v54 + 1) = v37;
  *(v52 + 16) = v53;
  *(v52 + 32) = v54;
  *(v52 + 48) = v51;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1E5C998CC;
  *(v55 + 24) = v52;
  sub_1E5C9BD60();
  sub_1E5C9BD70();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED055C48, &qword_1E5CA7360);
  sub_1E5C27F74(&qword_1EE2C4070, &unk_1ED055C48, &qword_1E5CA7360);
  sub_1E5C9BD50();
  swift_endAccess();

  if (v46)
  {
    v56 = sub_1E5C9CC30();
    [v49 setTitle_];

    sub_1E5C99904(v76);
  }

  else
  {

    sub_1E5C99904(v76);
  }

  return v49;
}

void sub_1E5C96760()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E5C967B4();
  }
}

void sub_1E5C967B4()
{
  v1 = v0;
  v2 = &v0[qword_1EE2C4788];
  v4 = *&v0[qword_1EE2C4788];
  v3 = *&v0[qword_1EE2C4788 + 8];
  v5 = *&v0[qword_1EE2C4760];
  swift_getKeyPath();

  sub_1E5C9CAD0();

  if (!v3)
  {

LABEL_9:
    v8 = [v1 navigationItem];
    v9 = [v8 searchController];

    if (v9)
    {
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v10 = *(&v19[0] + 1);
      v11 = *(v2 + 1);
      *v2 = *&v19[0];
      *(v2 + 1) = v10;

      v12 = [v9 searchBar];
      if (*(v2 + 1))
      {
        v13 = *v2;
        v14 = *(v2 + 1);

        v15 = sub_1E5C9CC30();
      }

      else
      {
        v15 = 0;
      }

      [v12 setText_];

      swift_getKeyPath();
      sub_1E5C9CAD0();

      *&v20[9] = *&v18[9];
      v19[0] = v16;
      v19[1] = v17;
      *v20 = *v18;
      if (v18[24] <= 1u)
      {
        sub_1E5C30CAC(v19);
        swift_getKeyPath();
        sub_1E5C9CAD0();

        if (v16 == 1 && ([v9 isActive] & 1) == 0 && (objc_msgSend(v9, sel_isBeingPresented) & 1) == 0)
        {
          [v9 setActive_];
        }
      }
    }

    return;
  }

  if (v4 == *&v19[0] && v3 == *(&v19[0] + 1))
  {

    return;
  }

  v7 = sub_1E5C9D060();

  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }
}

id SearchViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall SearchViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_1E5C96ADC();
  sub_1E5C96EEC();
  sub_1E5C97A44();
}

id sub_1E5C96ADC()
{
  v1 = *&v0[qword_1EE2C47D8];
  [v0 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055D88, &qword_1E5CA7400);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E5CA7310;
  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  v8 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = [result leadingAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = result;
  v13 = [result trailingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  v15 = [result trailingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = result;
  v18 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = result;
  v20 = [result topAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = result;
  v23 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = objc_opt_self();
  v26 = [v24 bottomAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v6 + 56) = v27;
  sub_1E5C9A06C(0, &qword_1EE2C4038, 0x1E696ACD8);
  v28 = sub_1E5C9CCC0();

  [v25 activateConstraints_];

  return [v1 didMoveToParentViewController_];
}

void sub_1E5C96EEC()
{
  v1 = v0;
  v67 = sub_1E5C9BBF0();
  v65 = *(v67 - 8);
  v2 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v68 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5C9BC80();
  v69 = *(v4 - 1);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v66 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5C9BBD0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1E5C9CC20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = [objc_allocWithZone(sub_1E5C9BCC0()) initWithSearchResultsController_];
  v12 = [v11 searchBar];
  [v12 setAutocorrectionType_];

  v13 = [v11 searchBar];
  [v13 setDelegate_];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v14 = [v11 searchBar];
    [v14 setDirectionalLayoutMargins_];
  }

  v15 = [v11 searchBar];
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = objc_opt_self();
  v17 = ObjCClassFromMetadata;
  v18 = [v64 bundleForClass_];
  v19 = *&v1[qword_1EE2C4760];
  swift_getKeyPath();
  sub_1E5C9CAD0();

  sub_1E5C9CC50();
  v20 = sub_1E5C9CC30();

  [v15 setPlaceholder_];

  if ((_UISolariumEnabled() & 1) == 0 && *&v1[qword_1EE2C47A8])
  {
    v21 = [v11 searchBar];
    [v21 _setOverrideContentInsets_forRectEdges_];
  }

  v22 = *&v1[qword_1EE2C47B0];
  v23 = v11;
  [v23 setAutomaticallyShowsCancelButton_];
  if (v22)
  {
    [v23 setShowsSearchResultsController_];
  }

  [v23 setDelegate_];
  v24 = [v23 searchBar];
  [v24 setDelegate_];

  v25 = [v23 searchBar];
  v26 = [v25 searchTextField];

  [v26 setDelegate_];
  v27 = [v1 navigationItem];
  [v27 setSearchController_];

  v28 = [v1 navigationItem];
  [v28 setHidesSearchBarWhenScrolling_];

  v29 = [v1 navigationItem];
  [v29 setPreferredSearchBarPlacement_];

  if (_UISolariumEnabled())
  {
    v30 = [v1 navigationItem];
    [v30 setTitleView_];

    v31 = [v1 navigationItem];
    [v31 _setBottomPalette_];
  }

  if (v22)
  {
    v63 = *&v1[qword_1EE2C4798];
    sub_1E5C9CC10();
    v32 = v64;
    v33 = [v64 bundleForClass_];
    v62[0] = v1;
    swift_getKeyPath();
    sub_1E5C9CAD0();

    v34 = sub_1E5C9CC50();
    v62[1] = v35;
    v62[2] = v34;
    sub_1E5C9CC10();
    v36 = [v32 &selRef_widthAnchor + 3];
    swift_getKeyPath();
    sub_1E5C9CAD0();

    sub_1E5C9CC50();
    sub_1E5C9CC10();
    v37 = [v32 bundleForClass_];
    swift_getKeyPath();
    sub_1E5C9CAD0();

    sub_1E5C9CC50();
    (*(v65 + 104))(v68, *MEMORY[0x1E699DB70], v67);
    v38 = v66;
    sub_1E5C9BC70();
    v39 = v63;
    sub_1E5C9BCA0();
    (*(v69 + 8))(v38, v70);
    [v39 setTranslatesAutoresizingMaskIntoConstraints_];
    v40 = [v23 searchBar];
    [v40 addSubview_];

    v70 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055D88, &qword_1E5CA7400);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1E5CA7310;
    v42 = [v39 leadingAnchor];
    v43 = [v23 0x1E878ADF8];
    v44 = [v43 layoutMarginsGuide];

    v45 = [v44 leadingAnchor];
    v46 = [v42 constraintEqualToAnchor_];

    *(v41 + 32) = v46;
    v47 = [v39 widthAnchor];
    v48 = [v39 heightAnchor];
    v49 = [v47 constraintGreaterThanOrEqualToAnchor_];

    *(v41 + 40) = v49;
    v50 = [v39 topAnchor];
    v51 = [v23 0x1E878ADF8];
    v52 = [v51 searchTextField];

    v53 = [v52 topAnchor];
    v54 = [v50 constraintEqualToAnchor_];

    *(v41 + 48) = v54;
    v55 = [v39 bottomAnchor];
    v56 = [v23 0x1E878ADF8];
    v57 = [v56 searchTextField];

    v58 = [v57 bottomAnchor];
    v59 = [v55 constraintEqualToAnchor_];

    *(v41 + 56) = v59;
    sub_1E5C9A06C(0, &qword_1EE2C4038, 0x1E696ACD8);
    v60 = sub_1E5C9CCC0();

    [v70 activateConstraints_];

    v61 = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
    [v61 addTarget:v62[0] action:sel_dismissButtonTapped_];
    [v39 addGestureRecognizer_];
  }
}

void sub_1E5C97A44()
{
  v1 = *&v0[qword_1EE2C47A8];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
  if (v1)
  {
    v3 = v2;
    [v3 configureWithTransparentBackground];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055D88, &qword_1E5CA7400);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1E5CA7320;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v6 = swift_allocObject();
    v6[1] = vdupq_n_s64(0x4059000000000000uLL);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1E5C9A0BC;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1E5C9A0C0;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5C993FC;
    aBlock[3] = &block_descriptor_24;
    v8 = _Block_copy(aBlock);

    v9 = [v5 imageWithActions_];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v10 = [objc_opt_self() effectWithVariableBlurRadius:v9 imageMask:25.0];

      if (v10)
      {
        *(v4 + 32) = v10;
        sub_1E5C9A06C(0, &qword_1EE2C4040, 0x1E69DD290);
        v11 = sub_1E5C9CCC0();

        [v3 setBackgroundEffects_];

        [v3 setBackgroundImageContentMode_];
        v12 = [objc_opt_self() clearColor];
        [v3 setShadowColor_];

        v13 = [v0 navigationItem];
        [v13 setScrollEdgeAppearance_];

        v14 = [v0 navigationItem];
        [v14 setStandardAppearance_];

        return;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v2;
    [v2 configureWithDefaultBackground];
    v16 = [v0 navigationItem];
    [v16 setScrollEdgeAppearance_];

    v17 = [v0 navigationItem];
    [v17 setStandardAppearance_];
  }
}

void sub_1E5C97E24(void *a1)
{
  v1 = a1;
  SearchViewController.viewDidLoad()();
}

void sub_1E5C97E7C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  SearchViewController.viewDidAppear(_:)(a3);
}

Swift::Void __swiftcall SearchViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1);
  v3 = [v1 navigationItem];
  [v3 setTitleView_];

  v4 = *&v1[qword_1EE2C47C0];
  if (v4)
  {
    v5 = *&v1[qword_1EE2C47C0 + 8];
    v4();
  }
}

void sub_1E5C97F70(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  SearchViewController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall SearchViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillDisappear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 viewControllers];
    sub_1E5C9A06C(0, &qword_1ED055C58, 0x1E69DD258);
    v6 = sub_1E5C9CCD0();

    v12 = v1;
    MEMORY[0x1EEE9AC00](v7);
    v11[2] = &v12;
    LOBYTE(v5) = sub_1E5C9973C(sub_1E5C999CC, v11, v6);

    if ((v5 & 1) == 0)
    {
      v9 = *&v1[qword_1EE2C4768];
      v10 = *&v1[qword_1EE2C4768 + 8];
      v9(v8);
    }
  }
}

void sub_1E5C98100(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  SearchViewController.viewWillDisappear(_:)(a3);
}

uint64_t sub_1E5C98164(char a1, SEL *a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for SearchAction();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, *a2, a1 & 1);
  v10 = *&v2[qword_1EE2C4760];
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  return sub_1E5C30C50(v9);
}

void sub_1E5C98244(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  SearchViewController.viewDidDisappear(_:)(a3);
}

Swift::Void __swiftcall SearchViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v18, sel_viewDidLayoutSubviews);
  v3 = *&v0[qword_1EE2C47C0];
  if (v3)
  {
    v4 = *&v0[qword_1EE2C47C0 + 8];
    v3(v2);
  }

  sub_1E5C98488();
  if (_UISolariumEnabled())
  {
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 effectiveUserInterfaceLayoutDirection];

      v8 = [v1 navigationItem];
      v9 = [v8 searchController];

      if (v9)
      {
        v10 = [v9 searchBar];

        [v10 directionalLayoutMargins];
        v12 = v11;
      }

      else
      {
        v12 = 0.0;
      }

      v13 = [v1 navigationItem];
      v14 = [v13 searchController];

      if (v14)
      {
        v15 = [v14 searchBar];

        [*&v1[qword_1EE2C4798] frame];
        Width = CGRectGetWidth(v19);
        if (v7 == 1)
        {
          v17 = 8;
        }

        else
        {
          v17 = 2;
        }

        [v15 _setOverrideContentInsets_forRectEdges_];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E5C98488()
{
  if (!*&v0[qword_1EE2C47A8])
  {
    return;
  }

  v1 = v0;
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    v5 = [v4 items];
    if (v5)
    {
      sub_1E5C9A06C(0, &qword_1ED055D80, 0x1E69DCCE0);
      v6 = sub_1E5C9CCD0();

      if (v6 >> 62)
      {
        v7 = sub_1E5C9CED0();
        if (v7)
        {
LABEL_6:
          v8 = __OFSUB__(v7, 1);
          v9 = v7 - 1;
          if (v8)
          {
            __break(1u);
          }

          else if ((v6 & 0xC000000000000001) == 0)
          {
            if ((v9 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v10 = *(v6 + 8 * v9 + 32);
LABEL_11:
              v65 = v10;

              goto LABEL_15;
            }

            __break(1u);
            goto LABEL_44;
          }

          v10 = MEMORY[0x1E6939780](v9, v6);
          goto LABEL_11;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_6;
        }
      }
    }
  }

  v65 = 0;
LABEL_15:
  v11 = [v1 navigationItem];
  if (v65)
  {
    if (!v11)
    {

      goto _objc_release_x3;
    }

    v64 = v11;
    sub_1E5C9A06C(0, &qword_1ED055D80, 0x1E69DCCE0);
    v12 = sub_1E5C9CE10();

    if ((v12 & 1) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!v11)
  {
LABEL_23:
    v13 = [v1 navigationItem];
    v14 = [v13 standardAppearance];

    if (v14)
    {
      v15 = [v14 backgroundImage];

      if (v15)
      {
        [v15 size];
        v17 = v16;
        v18 = [v1 view];
        if (!v18)
        {
LABEL_47:
          __break(1u);
_objc_release_x3:
          MEMORY[0x1EEE66C30]();
          return;
        }

        v19 = v18;
        v20 = floor(v17);
        [v18 bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v68.origin.x = v22;
        v68.origin.y = v24;
        v68.size.width = v26;
        v68.size.height = v28;
        Width = CGRectGetWidth(v68);

        if (v20 == floor(Width))
        {
          return;
        }
      }
    }

    v30 = [v1 navigationItem];
    v31 = [v30 standardAppearance];

    if (!v31)
    {
      goto LABEL_32;
    }

    v32 = [v1 view];
    if (!v32)
    {
      goto LABEL_45;
    }

    v33 = v32;
    [v32 bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v69.origin.x = v35;
    v69.origin.y = v37;
    v69.size.width = v39;
    v69.size.height = v41;
    v42 = CGRectGetWidth(v69);
    v43 = [v1 view];
    if (!v43)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v44 = v43;
    [v43 bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v70.origin.x = v46;
    v70.origin.y = v48;
    v70.size.width = v50;
    v70.size.height = v52;
    v53 = CGRectGetWidth(v70);
    v54 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v55 = swift_allocObject();
    *(v55 + 16) = v42;
    *(v55 + 24) = v53;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1E5C9A024;
    *(v56 + 24) = v55;
    aBlock[4] = sub_1E5C9A02C;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5C993FC;
    aBlock[3] = &block_descriptor;
    v57 = _Block_copy(aBlock);

    v58 = [v54 imageWithActions_];

    _Block_release(v57);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

    if ((v54 & 1) == 0)
    {
      [v31 setBackgroundImage_];

LABEL_32:
      v59 = [v1 navigationItem];
      v60 = [v59 standardAppearance];

      if (v60)
      {
        v61 = [v1 navigationController];
        if (v61)
        {
          v62 = v61;
          v63 = [v61 navigationBar];

          [v63 setStandardAppearance_];
        }
      }

      return;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }
}

void sub_1E5C98AA8(void *a1)
{
  v1 = a1;
  SearchViewController.viewDidLayoutSubviews()();
}

Swift::Void __swiftcall SearchViewController.willPresentSearchController(_:)(UISearchController a1)
{
  v3 = type metadata accessor for SearchAction();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_UISolariumEnabled() & 1) == 0 && *(v1 + qword_1EE2C47A8))
  {
    v7 = [(objc_class *)a1.super.super.super.isa searchBar];
    [v7 _setOverrideContentInsets_forRectEdges_];
  }

  if (([(objc_class *)a1.super.super.super.isa automaticallyShowsCancelButton]& 1) == 0 && *(v1 + qword_1EE2C47B0))
  {
    v8 = [(objc_class *)a1.super.super.super.isa searchBar];
    [v8 setShowsCancelButton:1 animated:1];
  }

  v9 = *(v1 + qword_1EE2C4760);
  *v6 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  sub_1E5C30C50(v6);
}

void sub_1E5C98C54(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SearchViewController.willPresentSearchController(_:)(v4);
}

Swift::Void __swiftcall SearchViewController.willDismissSearchController(_:)(UISearchController a1)
{
  v3 = type metadata accessor for SearchAction();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_UISolariumEnabled() & 1) == 0 && *(v1 + qword_1EE2C47A8))
  {
    v7 = [(objc_class *)a1.super.super.super.isa searchBar];
    [v7 _setOverrideContentInsets_forRectEdges_];
  }

  if (([(objc_class *)a1.super.super.super.isa automaticallyShowsCancelButton]& 1) == 0 && *(v1 + qword_1EE2C47B0))
  {
    v8 = [(objc_class *)a1.super.super.super.isa searchBar];
    [v8 setShowsCancelButton:0 animated:1];

    [(objc_class *)a1.super.super.super.isa setAutomaticallyShowsCancelButton:1];
  }

  v9 = *(v1 + qword_1EE2C4760);
  *v6 = 0;
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  sub_1E5C30C50(v6);
}

void sub_1E5C98E30(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SearchViewController.willDismissSearchController(_:)(v4);
}

Swift::Void __swiftcall SearchViewController.didDismissSearchController(_:)(UISearchController a1)
{
  v3 = type metadata accessor for SearchAction();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[qword_1EE2C4770] == 1)
  {
    v1[qword_1EE2C4770] = 0;
    v7 = [(objc_class *)a1.super.super.super.isa searchBar];
    [v7 setUserInteractionEnabled_];

    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      [v8 setUserInteractionEnabled_];

      v10 = *&v1[qword_1EE2C4760];
      swift_storeEnumTagMultiPayload();
      sub_1E5C9CAF0();
      sub_1E5C30C50(v6);
      if (*&v1[qword_1EE2C47B0])
      {
        v11 = *&v1[qword_1EE2C47B0];
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          sub_1E5C9BCD0();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E5C99010(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SearchViewController.didDismissSearchController(_:)(v4);
}

uint64_t sub_1E5C99084(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1E5C9CC40();
  v7 = v6;
  v8 = a3;
  v9 = a1;
  sub_1E5C99A34(v5, v7);
}

void sub_1E5C990FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s13FitnessSearch0B14ViewControllerC28searchBarCancelButtonClickedyySo08UISearchF0CF_0();
}

void sub_1E5C99160(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s13FitnessSearch0B14ViewControllerC09searchBarB13ButtonClickedyySo08UISearchF0CF_0();
}

uint64_t sub_1E5C991C4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = _s13FitnessSearch0B14ViewControllerC20textFieldShouldClearySbSo06UITextF0CF_0();

  return a1 & 1;
}

void sub_1E5C99210(void *a1, double a2, CGFloat a3)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055D88, &qword_1E5CA7400);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E5CA7330;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 clearColor];
  v13 = [v12 CGColor];

  *(v7 + 40) = v13;
  type metadata accessor for CGColor(0);
  v14 = sub_1E5C9CCC0();

  v15 = CGGradientCreateWithColors(DeviceRGB, v14, dbl_1F5F7C658);

  if (v15)
  {
    v16 = [a1 CGContext];
    v18.y = 0.0;
    v18.x = a2 * 0.5;
    v19.x = a2 * 0.5;
    v19.y = a3;
    CGContextDrawLinearGradient(v16, v15, v18, v19, 0);
  }
}

void sub_1E5C993FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

void sub_1E5C99448(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1E5C99D0C();
}

id SearchViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E5C9CC30();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void SearchViewController.init(nibName:bundle:)()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  sub_1E5C99F00();
}

void sub_1E5C99584(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  v8 = a4;

  sub_1E5C99F00();
}

id SearchViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E5C99664(uint64_t a1)
{
  v2 = *(a1 + qword_1EE2C4768 + 8);

  v3 = *(a1 + qword_1EE2C4760);

  v4 = *(a1 + qword_1EE2C4780);

  v5 = *(a1 + qword_1EE2C4788 + 8);

  v6 = *(a1 + qword_1EE2C47C0 + 8);
  sub_1E5C99904(*(a1 + qword_1EE2C47C0));
  v7 = *(a1 + qword_1EE2C47A8);
}

uint64_t sub_1E5C9973C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1E6939780](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1E5C9CED0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_1E5C99864()
{
  result = qword_1EE2C40B8;
  if (!qword_1EE2C40B8)
  {
    sub_1E5C9C400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C40B8);
  }

  return result;
}

uint64_t sub_1E5C998BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1E5C998CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_1E5C96760();
}

uint64_t sub_1E5C998DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E5C99904(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void _s13FitnessSearch0B14ViewControllerC5coderACyxq_GSgSo7NSCoderC_tcfc_0()
{
  *(v0 + qword_1EE2C4780) = MEMORY[0x1E69E7CC0];
  v1 = (v0 + qword_1EE2C4788);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_1EE2C4770) = 0;
  v2 = qword_1EE2C4798;
  sub_1E5C9BCB0();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1E5C9CEC0();
  __break(1u);
}

uint64_t sub_1E5C999CC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1E5C9A06C(0, &qword_1ED055C58, 0x1E69DD258);
  return sub_1E5C9CE10() & 1;
}

uint64_t sub_1E5C99A34(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SearchAction();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (v2 + qword_1EE2C4788);
  v10 = *(v2 + qword_1EE2C4788 + 8);
  *v9 = a1;
  v9[1] = a2;

  v11 = *(v2 + qword_1EE2C4760);
  *v8 = a1;
  v8[1] = a2;
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  sub_1E5C9CAF0();
  return sub_1E5C30C50(v8);
}

uint64_t _s13FitnessSearch0B14ViewControllerC28searchBarCancelButtonClickedyySo08UISearchF0CF_0()
{
  v1 = type metadata accessor for SearchAction();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_1EE2C4760);
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  return sub_1E5C30C50(v4);
}

uint64_t _s13FitnessSearch0B14ViewControllerC09searchBarB13ButtonClickedyySo08UISearchF0CF_0()
{
  v1 = type metadata accessor for SearchAction();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_1EE2C4760);
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v6 = v8[1];
  *v4 = v8[0];
  *(v4 + 1) = v6;
  v4[16] = 3;
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  return sub_1E5C30C50(v4);
}

uint64_t _s13FitnessSearch0B14ViewControllerC20textFieldShouldClearySbSo06UITextF0CF_0()
{
  v1 = type metadata accessor for SearchAction();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_1EE2C4760);
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  sub_1E5C30C50(v4);
  return 1;
}

void sub_1E5C99D0C()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (v2 && (v3 = [v2 isActive], v2, v3))
  {
    v0[qword_1EE2C4770] = 1;
    v4 = [v0 navigationItem];
    v5 = [v4 searchController];

    if (v5)
    {
      v6 = [v5 searchBar];

      [v6 setUserInteractionEnabled_];
    }

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 setUserInteractionEnabled_];

      v9 = [v0 navigationItem];
      v10 = [v9 searchController];

      [v10 setActive_];
    }

    else
    {
      __break(1u);
    }
  }

  else if (*&v0[qword_1EE2C47B0])
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_1E5C9BCD0();
    }
  }
}

uint64_t sub_1E5C9A02C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E5C9A06C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1E5C9A0C8()
{
  result = qword_1ED055E50;
  if (!qword_1ED055E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E50);
  }

  return result;
}

uint64_t sub_1E5C9A140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365676775536F6ELL && a2 == 0xED0000736E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5C9D060();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5C9A1D0(uint64_t a1)
{
  v2 = sub_1E5C9A80C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C9A20C(uint64_t a1)
{
  v2 = sub_1E5C9A80C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C9A248(uint64_t a1)
{
  v2 = sub_1E5C9A860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C9A284(uint64_t a1)
{
  v2 = sub_1E5C9A860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C9A2E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055E78, &qword_1E5CA7540);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055E80, &qword_1E5CA7548);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C9A80C();
  sub_1E5C9D130();
  sub_1E5C9A860();
  sub_1E5C9CFC0();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E5C9A4C0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055E58, &qword_1E5CA7528);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055E60, &unk_1E5CA7530);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C9A80C();
  sub_1E5C9D120();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1E5C9CFB0();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if (sub_1E5C3AB5C() || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1E5C9CE90();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
    *v19 = &type metadata for SearchSuggestionError;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1E5C9A860();
  sub_1E5C9CF20();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_1E5C9A80C()
{
  result = qword_1ED055E68;
  if (!qword_1ED055E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E68);
  }

  return result;
}

unint64_t sub_1E5C9A860()
{
  result = qword_1ED055E70;
  if (!qword_1ED055E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E70);
  }

  return result;
}

unint64_t sub_1E5C9A8E8()
{
  result = qword_1ED055E88;
  if (!qword_1ED055E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E88);
  }

  return result;
}

unint64_t sub_1E5C9A940()
{
  result = qword_1ED055E90;
  if (!qword_1ED055E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E90);
  }

  return result;
}

unint64_t sub_1E5C9A998()
{
  result = qword_1ED055E98;
  if (!qword_1ED055E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E98);
  }

  return result;
}

unint64_t sub_1E5C9A9F0()
{
  result = qword_1ED055EA0;
  if (!qword_1ED055EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EA0);
  }

  return result;
}

unint64_t sub_1E5C9AA48()
{
  result = qword_1ED055EA8;
  if (!qword_1ED055EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EA8);
  }

  return result;
}

uint64_t SearchTaskIdentifier.hashValue.getter()
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](0);
  return sub_1E5C9D110();
}

unint64_t sub_1E5C9AB14()
{
  result = qword_1ED055EB0;
  if (!qword_1ED055EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EB0);
  }

  return result;
}

uint64_t SearchContentType.category.getter()
{
  if (!v0[1])
  {
    return 3;
  }

  v1 = *v0;

  result = _s13FitnessSearch0B13ScopeCategoryO8rawValueACSgSS_tcfC_0();
  if (result == 9)
  {
    return 3;
  }

  return result;
}

void __swiftcall SearchSession.init(method:query:term:datasetIdentifier:)(FitnessSearch::SearchSession *__return_ptr retstr, FitnessSearch::SearchQueryMethod method, Swift::String query, Swift::String term, Swift::String_optional datasetIdentifier)
{
  retstr->datasetIdentifier = datasetIdentifier;
  retstr->method = method;
  retstr->query = query;
  retstr->term = term;
}

void __swiftcall SearchSession.withDatasetIdentifier(_:)(FitnessSearch::SearchSession *__return_ptr retstr, Swift::String_optional a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  retstr->datasetIdentifier = a2;
  retstr->method = v3;
  retstr->query._countAndFlagsBits = v4;
  retstr->query._object = v5;
  retstr->term._countAndFlagsBits = v6;
  retstr->term._object = v7;
}

uint64_t SearchSession.query.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SearchSession.term.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SearchSession.datasetIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

unint64_t sub_1E5C9ACD0()
{
  v1 = 0x646F6874656DLL;
  v2 = 1836213620;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x7972657571;
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

uint64_t sub_1E5C9AD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C9B8DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C9AD68(uint64_t a1)
{
  v2 = sub_1E5C9B708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C9ADA4(uint64_t a1)
{
  v2 = sub_1E5C9B708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchSession.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055EB8, "pW");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v15[4] = *(v1 + 2);
  v15[5] = v10;
  v11 = *(v1 + 3);
  v15[2] = *(v1 + 4);
  v15[3] = v11;
  v12 = *(v1 + 5);
  v15[0] = *(v1 + 6);
  v15[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C9B708();
  sub_1E5C9D130();
  v20 = v9;
  v19 = 0;
  sub_1E5C36AF8();
  sub_1E5C9D030();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v18 = 1;
  sub_1E5C9D000();
  v17 = 2;
  sub_1E5C9D000();
  v16 = 3;
  sub_1E5C9CFD0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t SearchSession.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055EC8, &qword_1E5CA7818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C9B708();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  sub_1E5C36DE4();
  sub_1E5C9CFA0();
  v11 = v31;
  v29 = 1;
  v12 = sub_1E5C9CF70();
  v14 = v13;
  v26 = v12;
  v28 = 2;
  v24 = sub_1E5C9CF70();
  v25 = v15;
  v27 = 3;
  v16 = sub_1E5C9CF40();
  v18 = v17;
  v19 = *(v6 + 8);
  v23 = v16;
  v19(v9, v5);
  *a2 = v11;
  v20 = v25;
  *(a2 + 8) = v26;
  *(a2 + 16) = v14;
  v21 = v23;
  *(a2 + 24) = v24;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SearchSession.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  *v0;
  *v0;
  sub_1E5C9CC60();

  sub_1E5C9CC60();
  sub_1E5C9CC60();
  if (!v6)
  {
    return sub_1E5C9D0F0();
  }

  sub_1E5C9D0F0();

  return sub_1E5C9CC60();
}

uint64_t SearchSession.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1E5C9D0D0();
  sub_1E5C9CC60();

  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C9D0F0();
  if (v7)
  {
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C9B538()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 40);
  sub_1E5C9D0D0();
  SearchSession.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C9B5A0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 40);
  sub_1E5C9D0D0();
  SearchSession.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B7SessionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v13 = *(a2 + 40);
  v14 = *(a1 + 40);
  if (sub_1E5C76194(*a1, *a2) & 1) != 0 && (v2 == v7 && v3 == v8 || (sub_1E5C9D060()) && (v4 == v9 && v5 == v10 || (sub_1E5C9D060()))
  {
    if (v6)
    {
      if (v11 && (v14 == v13 && v6 == v11 || (sub_1E5C9D060() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1E5C9B708()
{
  result = qword_1ED055EC0;
  if (!qword_1ED055EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EC0);
  }

  return result;
}

unint64_t sub_1E5C9B760()
{
  result = qword_1ED055ED0;
  if (!qword_1ED055ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055ED0);
  }

  return result;
}

unint64_t sub_1E5C9B7D8()
{
  result = qword_1ED055ED8;
  if (!qword_1ED055ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055ED8);
  }

  return result;
}

unint64_t sub_1E5C9B830()
{
  result = qword_1ED055EE0;
  if (!qword_1ED055EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EE0);
  }

  return result;
}

unint64_t sub_1E5C9B888()
{
  result = qword_1ED055EE8;
  if (!qword_1ED055EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EE8);
  }

  return result;
}

uint64_t sub_1E5C9B8DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1836213620 && a2 == 0xE400000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5CA7C10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5C9D060();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}