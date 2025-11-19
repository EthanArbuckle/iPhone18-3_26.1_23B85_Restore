void sub_1C59B4FBC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MaterialView();
  if ((sub_1C59B46EC() & 1) == 0)
  {
    v8 = 0;
    v7 = 0;
    v9 = 0;
    v5 = 0;
LABEL_7:
    v10 = 0;
    v6 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v5 = sub_1C59B4250();
  if (!v5)
  {
    v8 = 0;
    v7 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v6 = sub_1C59B42FC(v4);
  if (!v6)
  {

    v8 = 0;
    v7 = 0;
    v9 = 0;
    v5 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  sub_1C59B5E3C(*a1, v7, *(a1 + 16));
  v10 = &off_1F45241F8;
  v11 = 15;
LABEL_9:
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v5;
  a2[4] = v10;
  a2[5] = v6;
  a2[6] = v11;
}

unint64_t sub_1C59B50B8()
{
  result = qword_1EC1919E0;
  if (!qword_1EC1919E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1919D8);
    sub_1C59B513C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1919E0);
  }

  return result;
}

unint64_t sub_1C59B513C()
{
  result = qword_1EC1919E8;
  if (!qword_1EC1919E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1919E8);
  }

  return result;
}

void sub_1C59B5190(void *a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

unint64_t sub_1C59B51F4()
{
  result = qword_1EC1919F0;
  if (!qword_1EC1919F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1919D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1919F0);
  }

  return result;
}

uint64_t sub_1C59B52CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C5BCB1E4();
  v3[5] = sub_1C5BCB1D4();
  v5 = sub_1C5BCB194();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C59B5368, v5, v4);
}

uint64_t sub_1C59B5368()
{
  v1 = type metadata accessor for MaterialView();
  v0[8] = v1;
  v2 = sub_1C59B4250();
  if (v2)
  {
    v3 = v2;

LABEL_3:
    v4 = v0[1];

    return v4();
  }

  v6 = sub_1C59B42FC(v1);
  v0[9] = v6;
  if (!v6)
  {

    goto LABEL_3;
  }

  v7 = v6;
  v8 = sub_1C59B44FC(v1);
  objc_allocWithZone(type metadata accessor for MaterialRenderer());
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1C59B54C4;

  return sub_1C5AC7EBC(v7, v8);
}

uint64_t sub_1C59B54C4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C59B55EC, v4, v3);
}

uint64_t sub_1C59B55EC()
{

  sub_1C59B42A4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C59B5674()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for MaterialView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C592ABD4;

  return sub_1C59B52CC(v0 + v5, v2, v3);
}

unint64_t sub_1C59B575C()
{
  result = qword_1EC190A00;
  if (!qword_1EC190A00)
  {
    sub_1C5BC87B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190A00);
  }

  return result;
}

uint64_t MaterialView<>.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1919F8);
  sub_1C5BCA684();
  *(a2 + 32) = v7;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = 0;
  sub_1C5BCA684();
  *(a2 + 80) = v7;
  *(a2 + 88) = *(&v7 + 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  result = sub_1C5BCA484();
  *(a2 + 24) = result;
  return result;
}

void sub_1C59B58C8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C59B5D88(319, &qword_1EC191A80, qword_1EC1919F8, &unk_1C5BE8CE0, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1C59B5D88(319, &qword_1EC191A88, &qword_1EC191A90, &unk_1C5BD3A10, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C59B5D88(319, &qword_1EC191A98, &qword_1EC191AA0, &unk_1C5BF31A0, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C59B5DEC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C59B5A2C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 17) & ~v6;
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 - 1;
    if (v20 < 0)
    {
      v20 = -1;
    }

    return (v20 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

unsigned int *sub_1C59B5B98(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = ((result + v8 + 17) & ~v8);
      if (v6 < 0x7FFFFFFE)
      {
        v20 = ((result + v9) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v20 = a2 - 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

void sub_1C59B5D88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C59B5DEC()
{
  if (!qword_1EDA4E188)
  {
    v0 = sub_1C5BCA6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA4E188);
    }
  }
}

id sub_1C59B5E3C(void *a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

unint64_t sub_1C59B5E78()
{
  result = qword_1EC191AB8[0];
  if (!qword_1EC191AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC191AB8);
  }

  return result;
}

unint64_t sub_1C59B5ECC()
{
  result = qword_1EC197E50;
  if (!qword_1EC197E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197E50);
  }

  return result;
}

uint64_t sub_1C59B5F20@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = sub_1C5BC8C84();
  *(a2 + 8) = v4;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 89) = 0;
  result = swift_getKeyPath();
  *(a2 + 96) = result;
  *(a2 + 104) = 0;
  *(a2 + 105) = a1;
  return result;
}

uint64_t sub_1C59B5F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v71 = sub_1C5BC8F34();
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  _s24HeaderArtworkPlaceholderVMa();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s32HeaderMetadataAndContextMenuViewVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v7 = sub_1C5BCA714();
  v57 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B40);
  v10 = sub_1C5BC8AB4();
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v56 - v11;
  v12 = sub_1C5BC8AB4();
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v56 - v13;
  v60 = v14;
  v15 = sub_1C5BC8AB4();
  v63 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v56 - v16;
  v64 = v17;
  v18 = sub_1C5BC8AB4();
  v65 = *(v18 - 8);
  v66 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v61 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v56 - v21;
  v22 = v2[5];
  v99[3] = v2[4];
  v99[4] = v22;
  *(&v99[4] + 10) = *(v2 + 90);
  v23 = v2[1];
  v98 = *v2;
  v99[0] = v23;
  v24 = v2[3];
  v99[1] = v2[2];
  v99[2] = v24;
  sub_1C5BC8FC4();
  v74 = v5;
  v75 = v6;
  v76 = &v98;
  v26 = v72;
  v25 = v73;
  sub_1C5BCA704();
  v96 = 0x49676E6979616C70;
  v97 = 0xEB000000006D6574;
  v102 = *&v99[5];
  v103 = BYTE8(v99[5]);
  if (BYTE8(v99[5]) == 1)
  {
    v95 = *&v99[5];
  }

  else
  {

    sub_1C5BCB4E4();
    v27 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v102, &qword_1EC191B48);
    (*(v25 + 8))(v26, v71);
  }

  sub_1C5BC9664();
  sub_1C5BCABD4();
  WitnessTable = swift_getWitnessTable();
  sub_1C59B7328();
  sub_1C5BCA114();

  (*(v57 + 8))(v9, v7);
  sub_1C5BC98C4();
  v100[0] = v99[0];
  v100[1] = v99[1];
  v100[2] = v99[2];
  *v101 = v99[3];
  *&v101[10] = *(&v99[3] + 10);
  v29 = *&v99[0];
  v92 = *(&v99[2] + 8);
  v93 = *(&v99[3] + 8);
  v94 = BYTE8(v99[4]);
  v90 = *(v99 + 8);
  v91 = *(&v99[1] + 8);
  v30 = BYTE9(v99[4]);
  if (BYTE9(v99[4]))
  {
    *(&v89[1] + 8) = *(&v99[1] + 8);
    *(&v89[2] + 8) = *(&v99[2] + 8);
    *(&v89[3] + 8) = *(&v99[3] + 8);
    BYTE8(v89[4]) = BYTE8(v99[4]);
    *(v89 + 8) = *(v99 + 8);
    *&v89[0] = *&v99[0];
    v31 = v73;
  }

  else
  {
    sub_1C59B737C(v100, v88);
    sub_1C5BCB4E4();
    v32 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v33 = v72;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v100, &qword_1EC191B58);
    v31 = v73;
    (*(v73 + 8))(v33, v71);
  }

  *&v88[32] = v89[2];
  *&v88[48] = v89[3];
  *&v88[57] = *(&v89[3] + 9);
  *v88 = v89[0];
  *&v88[16] = v89[1];
  sub_1C5AB043C();
  v34 = sub_1C59B73EC();
  v86 = WitnessTable;
  v87 = v34;
  v35 = swift_getWitnessTable();
  v36 = v68;
  sub_1C5BCA2F4();
  (*(v58 + 8))(v36, v10);
  sub_1C5BC98E4();
  if (v30)
  {
    *(&v85[1] + 8) = v91;
    *(&v85[2] + 8) = v92;
    *(&v85[3] + 8) = v93;
    BYTE8(v85[4]) = v94;
    *(v85 + 8) = v90;
    *&v85[0] = v29;
    v37 = v71;
  }

  else
  {
    sub_1C59B737C(v100, v88);
    sub_1C5BCB4E4();
    v38 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v39 = v72;
    v31 = v73;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v100, &qword_1EC191B58);
    v37 = v71;
    (*(v31 + 8))(v39, v71);
  }

  *&v88[32] = v85[2];
  *&v88[48] = v85[3];
  *&v88[57] = *(&v85[3] + 9);
  *v88 = v85[0];
  *&v88[16] = v85[1];
  sub_1C5AB0588();
  v83 = v35;
  v84 = MEMORY[0x1E697E5D8];
  v40 = v60;
  v41 = swift_getWitnessTable();
  v42 = v69;
  sub_1C5BCA2F4();
  (*(v59 + 8))(v42, v40);
  sub_1C5BC98A4();
  if (v30)
  {
    *&v88[24] = v91;
    *&v88[40] = v92;
    *&v88[56] = v93;
    v88[72] = v94;
    *&v88[8] = v90;
    *v88 = v29;
  }

  else
  {
    sub_1C59B737C(v100, v88);
    sub_1C5BCB4E4();
    v43 = v31;
    v44 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v45 = v72;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v100, &qword_1EC191B58);
    (*(v43 + 8))(v45, v37);
  }

  v81[2] = *&v88[32];
  v82[0] = *&v88[48];
  *(v82 + 9) = *&v88[57];
  v81[0] = *v88;
  v81[1] = *&v88[16];
  sub_1C5B4B500(v81);
  v79 = v41;
  v46 = MEMORY[0x1E697E5D8];
  v80 = MEMORY[0x1E697E5D8];
  v47 = v64;
  v48 = swift_getWitnessTable();
  v49 = v61;
  v50 = v70;
  sub_1C5BCA2F4();
  (*(v63 + 8))(v50, v47);
  v77 = v48;
  v78 = v46;
  v51 = v66;
  v52 = swift_getWitnessTable();
  v53 = v62;
  sub_1C593EDC0(v49, v51, v52);
  v54 = *(v65 + 8);
  v54(v49, v51);
  sub_1C593EDC0(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_1C59B6AF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0);
  v8 = _s24HeaderArtworkPlaceholderVMa();
  WitnessTable = swift_getWitnessTable();
  *&v33 = v8;
  v34 = v7;
  v35 = sub_1C5BC8BE4();
  v9 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v39 = sub_1C5BC8AB4();
  v37 = *(v39 - 8);
  v10 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v29 - v12;
  v13 = sub_1C5BCA484();
  if (qword_1EC1909E8 != -1)
  {
    swift_once();
  }

  sub_1C5BCAA54();
  v14 = sub_1C5BC85D4();
  *&v65 = v13;
  *(&v65 + 1) = v60;
  LOBYTE(v66) = v61;
  *(&v66 + 1) = v62;
  LOBYTE(v67[0]) = v63;
  *(v67 + 8) = v64;
  MEMORY[0x1EEE9AC00](v14);
  *(&v29 - 4) = a2;
  *(&v29 - 3) = a3;
  v30 = a1;
  *(&v29 - 2) = a1;
  sub_1C5BCAA54();
  v31 = a2;
  v29 = a3;
  v15 = sub_1C594C97C();
  sub_1C5BCA2C4();

  v52 = v57;
  v53 = v58;
  v54 = v59;
  v50[0] = *v55;
  v50[1] = *&v55[16];
  v51 = v56;
  v16 = swift_getWitnessTable();
  v48 = v15;
  v49 = v16;
  v17 = swift_getWitnessTable();
  v18 = v36;
  sub_1C5BCA094();
  v67[0] = v51;
  v67[1] = v52;
  v67[2] = v53;
  v68 = v54;
  v65 = v50[0];
  v66 = v50[1];
  (*(*(v9 - 8) + 8))(&v65, v9);
  v19 = sub_1C59B745C();
  v46 = v17;
  v47 = v19;
  v20 = v39;
  v34 = swift_getWitnessTable();
  v21 = v38;
  sub_1C593EDC0(v18, v20, v34);
  v22 = v37;
  v35 = *(v37 + 8);
  v35(v18, v20);
  sub_1C59498C4(*v30);
  NowPlayingController.sharedViews.getter(v43);
  v41 = v43[0];
  v23 = type metadata accessor for NowPlayingViews();
  NowPlayingViews.metadata.getter(v23, v50);
  swift_unknownObjectRelease();
  v44 = *&v50[0];
  v33 = *(v50 + 8);
  v45 = *(v50 + 8);
  v24 = _s32HeaderMetadataAndContextMenuViewVMa();
  v25 = swift_getWitnessTable();
  sub_1C593EDC0(&v44, v24, v25);

  swift_unknownObjectRelease();
  (*(v22 + 16))(v18, v21, v20);
  *&v50[0] = *v55;
  *(v50 + 8) = *&v55[8];
  v44 = v18;
  *&v45 = v50;
  swift_unknownObjectRetain();

  v43[0] = v20;
  v43[1] = v24;
  v41 = v34;
  v42 = v25;
  sub_1C594226C(&v44, 2uLL, v43);
  swift_unknownObjectRelease();

  v26 = v21;
  v27 = v35;
  v35(v26, v20);

  swift_unknownObjectRelease();
  return v27(v18, v20);
}

uint64_t sub_1C59B7068(uint64_t *a1)
{
  sub_1C59498C4(*a1);
  NowPlayingController.sharedViews.getter(v9);
  v8 = v9[0];
  type metadata accessor for NowPlayingViews();
  NowPlayingViews.artwork.getter();
  swift_unknownObjectRelease();
  v4 = v6;
  v5 = v7;
  v1 = _s24HeaderArtworkPlaceholderVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v4, v1, WitnessTable);

  v6 = v9[1];
  v7 = v10;
  sub_1C593EDC0(&v6, v1, WitnessTable);
}

uint64_t sub_1C59B718C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1C59B71F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 106))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C59B7250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1C59B7328()
{
  result = qword_1EC191B50;
  if (!qword_1EC191B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191B50);
  }

  return result;
}

uint64_t sub_1C59B737C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C59B73EC()
{
  result = qword_1EC191B60;
  if (!qword_1EC191B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191B60);
  }

  return result;
}

unint64_t sub_1C59B745C()
{
  result = qword_1EDA4E190;
  if (!qword_1EDA4E190)
  {
    sub_1C5BC97C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E190);
  }

  return result;
}

unint64_t sub_1C59B74D4()
{
  result = qword_1EC191B68;
  if (!qword_1EC191B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191B68);
  }

  return result;
}

uint64_t (*MCUINamespace<A>.isLockScreenBackgroundBlurEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C59B74D4();
  sub_1C5BC8F44();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C59B75F0;
}

uint64_t sub_1C59B761C(void (*a1)(void))
{
  a1();
  sub_1C5BC8F44();
  return v2;
}

unint64_t sub_1C59B7664()
{
  result = qword_1EC191B70;
  if (!qword_1EC191B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191B70);
  }

  return result;
}

uint64_t (*MCUINamespace<A>.isLockScreenBackgroundColorAdjustmentEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C59B7664();
  sub_1C5BC8F44();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C59B7818;
}

uint64_t sub_1C59B7878()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78);
  sub_1C5BCA684();
  return v1;
}

uint64_t sub_1C59B78D0(uint64_t a1)
{
  v2 = sub_1C5BC7AC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1C5BCA684();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1C59B79C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v5 = (a1 - 8);
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C5BC9654();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v5[4];
  v13 = v5[5];
  v36 = v5[3];
  v38 = v13;
  v14 = _s24StateObservationModifierVMa();
  v37 = v12;
  v39 = v14;
  v15 = sub_1C5BC8AB4();
  v16 = sub_1C59BD80C(&unk_1EDA461C8, MEMORY[0x1E697C998]);
  v44 = v9;
  v42 = v15;
  v40 = v16;
  v17 = sub_1C5BC8544();
  v43 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v35 - v21;
  if (*v3)
  {
    v22 = *(*v3 + 24);
    v23 = *(v3 + 40);
    v49 = *(v3 + 32);
    v50 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
    sub_1C5BCA694();
    if ((v51 & 1) == 0)
    {
      swift_beginAccess();
    }

    sub_1C5BC9644();
    (*(v6 + 16))(&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
    v24 = (*(v6 + 80) + 56) & ~*(v6 + 80);
    v25 = swift_allocObject();
    v26 = v37;
    *(v25 + 2) = v36;
    *(v25 + 3) = v26;
    v27 = *(a1 + 40);
    *(v25 + 4) = v38;
    *(v25 + 5) = v27;
    *(v25 + 6) = v22;
    (*(v6 + 32))(&v25[v24], v8, a1);
    WitnessTable = swift_getWitnessTable();
    v47 = v27;
    v48 = WitnessTable;
    v29 = v42;
    v30 = swift_getWitnessTable();
    sub_1C5A7D1C4(v11, sub_1C59BCFB4, v25, v44, v29, v40, v30);
    v46 = v30;
    v31 = swift_getWitnessTable();
    v32 = v41;
    sub_1C593EDC0(v20, v17, v31);
    v33 = *(v43 + 8);
    v33(v20, v17);
    sub_1C593EDC0(v32, v17, v31);
    return (v33)(v32, v17);
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59B7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, void *a5@<X4>, void (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v109 = a7;
  v91 = a3;
  v110 = a2;
  v105 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = &v90 - v15;
  v111 = a4;
  v112 = a6;
  v16 = _s24StateObservationModifierVMa();
  v101 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v97 = (&v90 - v18);
  v98 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v96 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a5;
  v104 = v20;
  v103 = sub_1C5BC8AB4();
  v102 = *(v103 - 8);
  v21 = MEMORY[0x1EEE9AC00](v103);
  v99 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v90 - v23;
  v123 = a4;
  v124 = a5;
  v125 = a6;
  v126 = a7;
  v24 = _s19HeadlessTimeControlVMa();
  v108 = v24;
  v25 = *(v24 - 8);
  v90 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v90 - v26;
  v107 = &v90 - v26;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270);
  v28 = *(v94 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v31 = &v90 - v30;
  (*(v28 + 16))(&v90 - v30, a1);
  v106 = *(v25 + 16);
  v106(v27, a3, v24);
  v93 = sub_1C5BCB1E4();

  v32 = sub_1C5BCB1D4();
  v33 = (*(v28 + 80) + 72) & ~*(v28 + 80);
  v34 = *(v25 + 80);
  v35 = v25;
  v36 = (v29 + v34 + v33) & ~v34;
  v92 = v34 | 7;
  v37 = swift_allocObject();
  v38 = MEMORY[0x1E69E85E0];
  *(v37 + 2) = v32;
  *(v37 + 3) = v38;
  v39 = v113;
  *(v37 + 4) = v111;
  *(v37 + 5) = v39;
  v40 = v109;
  *(v37 + 6) = v112;
  *(v37 + 7) = v40;
  *(v37 + 8) = v110;
  (*(v28 + 32))(&v37[v33], v31, v94);
  v41 = *(v35 + 32);
  v42 = &v37[v36];
  v43 = v107;
  v44 = v108;
  v41(v42, v107, v108);
  v45 = v91;
  v106(v43, v91, v44);
  v46 = sub_1C5BCB1D4();
  v47 = swift_allocObject();
  *(v47 + 2) = v46;
  v48 = v111;
  *(v47 + 3) = MEMORY[0x1E69E85E0];
  *(v47 + 4) = v48;
  v49 = v112;
  *(v47 + 5) = v113;
  *(v47 + 6) = v49;
  *(v47 + 7) = v40;
  v41(&v47[(v34 + 64) & ~v34], v107, v44);
  v50 = v45;
  sub_1C5BCA844();
  v51 = *v45;
  if (*v45)
  {
    v52 = v125;
    v107 = v123;
    v106 = v124;

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80);
    MEMORY[0x1C694EA50](&v116, v53);
    v54 = v116;
    v55 = *(v51 + 24);
    swift_beginAccess();
    if (*(v55 + 72) == 2)
    {

      v93 = 0xE500000000000000;
      v94 = 0x2D2D3A2D2DLL;
      v92 = 0x2D2D3A2D2DLL;
      v56 = 0xE500000000000000;
    }

    else
    {
      v57 = *(v55 + 32);
      v58 = v54 * v57;
      v59 = [*(v51 + 48) stringFromSeconds_];
      v94 = sub_1C5BCAE74();
      v93 = v60;

      v61 = [*(v51 + 56) stringFromSeconds_];
      v92 = sub_1C5BCAE74();
      v56 = v62;
    }

    v64 = v45[5];
    LOBYTE(v123) = *(v45 + 32);
    v63 = v123;
    v124 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
    sub_1C5BCA694();
    v65 = LOBYTE(v116);
    LOBYTE(v116) = v63;
    v117 = v64;
    sub_1C5BCA6B4();
    v66 = v123;
    v67 = v124;
    v68 = v125;
    v69 = v110;
    swift_beginAccess();
    v70 = *(v69 + 72) & 1;
    LOBYTE(v123) = v65;
    v124 = v66;
    v125 = v67;
    LOBYTE(v126) = v68;
    v127 = v107;
    v128 = v106;
    v129 = v52;
    v130 = v94;
    v131 = v93;
    v132 = v92;
    v133 = v56;
    v134 = v70;
    v71 = *(v50 + *(v108 + 68));

    v72 = v96;
    v71(&v123);
    LOBYTE(v120) = v63;
    v121 = v64;
    sub_1C5BCA6B4();
    v73 = *&v116;
    v74 = v117;
    LOBYTE(v69) = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C98);
    v75 = v95;
    sub_1C5BCA6B4();
    v76 = *(v50 + 56);
    v77 = v50[8];
    v120 = v50[6];
    LOBYTE(v121) = v76;
    v122 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191D50);
    sub_1C5BCA6B4();
    v78 = v97;
    sub_1C59B8C7C(v73, v74, v69, v75, *&v116, v117, v118, v119, v97);
    v79 = v99;
    v80 = v113;
    v81 = v104;
    v82 = v109;
    MEMORY[0x1C694E550](v78, v113, v104, v109);
    v83 = _s26HeadlessTimeControlContextVMa();
    (*(*(v83 - 8) + 8))(&v123, v83);

    (*(v101 + 8))(v78, v81);
    (*(v98 + 8))(v72, v80);
    WitnessTable = swift_getWitnessTable();
    v114 = v82;
    v115 = WitnessTable;
    v85 = v103;
    v86 = swift_getWitnessTable();
    v87 = v100;
    sub_1C593EDC0(v79, v85, v86);
    v88 = *(v102 + 8);
    v88(v79, v85);
    sub_1C593EDC0(v87, v85, v86);
    return (v88)(v87, v85);
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59B8998@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, double *a6@<X8>, uint64_t a7)
{
  v36 = a5;
  v12 = sub_1C5BC7AC4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  swift_beginAccess();
  v19 = 0.0;
  if (*(a1 + 72) != 2)
  {
    v21 = *(a1 + 56);
    v20 = *(a1 + 64);
    v23 = *(a1 + 24);
    v22 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270);
    sub_1C5BC8514();
    sub_1C5BC7A54();
    v25 = v24;
    (*(v13 + 8))(v18, v12);
    if (v22 > 0.0)
    {
      v26 = v23 + v20 * (v25 - v21);
      if (v22 < v26)
      {
        v26 = v22;
      }

      if (v26 < 0.0)
      {
        v26 = 0.0;
      }

      v19 = v26 / v22;
    }
  }

  v27 = *(a2 + 56);
  v28 = *(a2 + 64);
  v37 = *(a2 + 48);
  LOBYTE(v38) = v27;
  v39 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191D50);
  result = sub_1C5BCA694();
  if (v42)
  {
    goto LABEL_9;
  }

  v30 = v41;
  if (*(a1 + 72) == 2)
  {
    sub_1C5BC7A64();
    sub_1C5BC7A54();
    v32 = v31;
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v32 = *(a1 + 56);
  }

  v33 = *(a2 + 40);
  LOBYTE(v37) = *(a2 + 32);
  v38 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  result = sub_1C5BCA694();
  if ((LOBYTE(v41) & 1) == 0)
  {
    v37 = a3;
    v38 = a4;
    v39 = v36;
    v40 = a7;
    _s19HeadlessTimeControlVMa();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C98);
    sub_1C5BCA694();
    sub_1C5BC7A54();
    v35 = v34;
    result = (*(v13 + 8))(v16, v12);
    if (v32 >= v35)
    {
LABEL_9:
      v30 = v19;
    }
  }

  *a6 = v30;
  return result;
}

uint64_t sub_1C59B8C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>)
{
  _s11TimeControlCMa();
  sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
  *a9 = sub_1C5BC8C84();
  a9[1] = v16;
  a9[2] = sub_1C5BC8C84();
  a9[3] = v17;
  v18 = _s24StateObservationModifierVMa();
  v19 = v18[10];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);
  swift_storeEnumTagMultiPayload();
  v20 = a9 + v18[11];
  *v20 = a1;
  *(v20 + 1) = a2;
  v20[16] = a3;
  result = sub_1C59BD244(a4, a9 + v18[12]);
  v22 = a9 + v18[13];
  *v22 = a5;
  *(v22 + 1) = a6;
  *(v22 + 2) = a7;
  v22[24] = a8 & 1;
  return result;
}

uint64_t sub_1C59B8DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1C5BC7AC4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11TimeControlCMa();
  sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
  *a7 = sub_1C5BC8C84();
  *(a7 + 8) = v17;
  *(a7 + 16) = sub_1C5BC8C84();
  *(a7 + 24) = v18;
  v30 = 0;
  sub_1C5BCA684();
  v19 = v27;
  *(a7 + 32) = v26;
  *(a7 + 40) = v19;
  *(a7 + 48) = sub_1C59B7878();
  *(a7 + 56) = v20 & 1;
  *(a7 + 64) = v21;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v22 = _s19HeadlessTimeControlVMa();
  sub_1C5BC7A64();
  result = sub_1C59B78D0(v16);
  v24 = (a7 + *(v22 + 68));
  *v24 = a1;
  v24[1] = a2;
  return result;
}

uint64_t sub_1C59B8F74@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80);
  MEMORY[0x1C694EA50](&v5, v3);
  sub_1C59B9014(*(v1 + 8), *(v1 + 16), *(v1 + 24), a1, v5);
}

uint64_t sub_1C59B9014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a5;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  v6 = *(_s33HeadlessTimeControlSliderModifierVMa() + 40);
  *(a4 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C59B90AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v6 = *(v0 + 8);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0);
  MEMORY[0x1C694EA50](&v5, v3);
  return v5;
}

uint64_t sub_1C59B9160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a1;
  v75 = a3;
  v67 = *(a2 - 8);
  v79 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1C5BC9304();
  MEMORY[0x1EEE9AC00](v65);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C5BC82F4();
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v77 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D30);
  v74 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v66 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D38);
  v59 = v8;
  v73 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v50 - v9;
  swift_getWitnessTable();
  v10 = sub_1C5BC9394();
  v52 = a2;
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = _s21AccessibilityModifierVMa();
  v14 = sub_1C5BC8AB4();
  v58 = v14;
  v69 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v50 - v15;
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v83 = WitnessTable;
  v84 = v17;
  v18 = swift_getWitnessTable();
  v57 = v18;
  v56 = sub_1C5924F54(&qword_1EDA466B0, &qword_1EC191D38);
  *&v85 = v14;
  *(&v85 + 1) = v8;
  *&v86 = v18;
  *(&v86 + 1) = v56;
  v61 = MEMORY[0x1E6981348];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v54 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v50 - v21;
  v22 = v76;
  sub_1C59B9AF0(&v85, *v76);
  v88 = v85;
  v89 = v86;
  v80 = v85;
  v81 = v86;
  v82 = v87;
  MEMORY[0x1C694E550](&v80, v10, v13, WitnessTable);
  sub_1C59BA508(&v88);
  v23 = v12;
  v51 = v12;
  v50 = v11;
  v24 = sub_1C5BC8C94();
  (*(*(v24 - 8) + 8))(&v89, v24);
  sub_1C5BC9474();
  sub_1C5BC82B4();
  v25 = v67;
  v65 = *(v67 + 16);
  v26 = v78;
  v27 = v52;
  v65(v78, v22, v52);
  v28 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v11;
  *(v29 + 24) = v23;
  v30 = *(v25 + 32);
  v30(v29 + v28, v26, v27);
  sub_1C59BD80C(&qword_1EDA467D8, MEMORY[0x1E697BEA8]);
  sub_1C59BD80C(&qword_1EDA467E0, MEMORY[0x1E697BE90]);
  v31 = v66;
  v32 = v70;
  v33 = v77;
  sub_1C5BCA8E4();

  (*(v71 + 8))(v33, v32);
  v34 = v78;
  v65(v78, v76, v27);
  v35 = swift_allocObject();
  v36 = v51;
  *(v35 + 16) = v50;
  *(v35 + 24) = v36;
  v30(v35 + v28, v34, v27);
  sub_1C5924F54(&qword_1EDA46438, &qword_1EC191D30);
  v37 = v68;
  v38 = v72;
  sub_1C5BCA8D4();

  (*(v74 + 8))(v31, v38);
  sub_1C5BC8334();
  v39 = v54;
  v40 = v58;
  v41 = v59;
  v42 = v57;
  v43 = v56;
  v44 = v53;
  sub_1C5BCA0B4();
  (*(v73 + 8))(v37, v41);
  (*(v69 + 8))(v44, v40);
  *&v80 = v40;
  *(&v80 + 1) = v41;
  *&v81 = v42;
  *(&v81 + 1) = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = OpaqueTypeMetadata2;
  sub_1C593EDC0(v39, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v48 = *(v63 + 8);
  v48(v39, v47);
  sub_1C593EDC0(v46, v47, OpaqueTypeConformance2);
  return (v48)(v46, v47);
}

uint64_t sub_1C59B9AF0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  _s11TimeControlCMa();
  sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
  v4 = sub_1C5BC8C84();
  v6 = v5;
  result = sub_1C5BC8C84();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = result;
  *(a1 + 24) = v8;
  *(a1 + 32) = a2;
  return result;
}

uint64_t sub_1C59B9BA0()
{
  v0 = sub_1C5BC81D4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  _s33HeadlessTimeControlSliderModifierVMa();
  sub_1C594C72C(v6);
  (*(v1 + 104))(v4, *MEMORY[0x1E697BE38], v0);
  v7 = sub_1C5BC81C4();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if ((v7 & 1) == 0)
  {
    return sub_1C59B9104();
  }

  result = sub_1C59B90AC();
  if ((result & 1) == 0)
  {
    return sub_1C59B9104();
  }

  return result;
}

uint64_t sub_1C59B9D28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C59B9D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1C59B9DD0(uint64_t result, int a2, int a3)
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
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C59B9E40()
{
  sub_1C59BA15C(319, &qword_1EDA45FA8, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1C59BD554(319, &qword_1EDA46768, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C59B9F48()
{
  sub_1C59BA0C8();
  if (v0 <= 0x3F)
  {
    sub_1C5BC8C94();
    if (v1 <= 0x3F)
    {
      sub_1C59BA15C(319, &qword_1EDA4E188, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1C59BD5B8(319, &qword_1EC191D28, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1C59BD554(319, &qword_1EDA46000, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1C5927B74();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C59BA0C8()
{
  if (!qword_1EC191D20)
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
    v0 = sub_1C5BC8C94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC191D20);
    }
  }
}

void sub_1C59BA15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C59BA238(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0);
  MEMORY[0x1C694EA50](&v7, v5);
  return v7;
}

uint64_t sub_1C59BA2FC(uint64_t a1)
{
  v2 = sub_1C5BC7AC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48);
  sub_1C5BCA824();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1C59BA40C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = *(v2 + 2);
  LOBYTE(v2) = *(v2 + 24);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191E70);
  MEMORY[0x1C694EA50](&v7, v5);
  return v7;
}

uint64_t sub_1C59BA508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59BA570()
{
  _s33HeadlessTimeControlSliderModifierVMa();

  return sub_1C59B9BA0();
}

uint64_t sub_1C59BA664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v125 = a1;
  v118 = a3;
  v120 = sub_1C5BC81D4();
  v117 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BC7AC4();
  v114 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v106 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = *(a2 - 8);
  v127 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v9 = sub_1C5BC9394();
  WitnessTable = swift_getWitnessTable();
  *&v130 = v9;
  *(&v130 + 1) = MEMORY[0x1E69E6370];
  v122 = v9;
  v11 = MEMORY[0x1E69E6370];
  *&v131 = WitnessTable;
  *(&v131 + 1) = MEMORY[0x1E69E6388];
  v12 = WitnessTable;
  v124 = WitnessTable;
  v13 = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v91 = &v86 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B78);
  *&v130 = v9;
  *(&v130 + 1) = v11;
  *&v131 = v12;
  *(&v131 + 1) = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_1C59BD6B8();
  *&v130 = OpaqueTypeMetadata2;
  *(&v130 + 1) = v16;
  v19 = OpaqueTypeMetadata2;
  v87 = OpaqueTypeMetadata2;
  v90 = v16;
  *&v131 = OpaqueTypeConformance2;
  *(&v131 + 1) = v18;
  v20 = OpaqueTypeConformance2;
  v89 = OpaqueTypeConformance2;
  v21 = v18;
  v88 = v18;
  v22 = swift_getOpaqueTypeMetadata2();
  v103 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v86 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E68);
  *&v130 = v19;
  *(&v130 + 1) = v16;
  *&v131 = v20;
  *(&v131 + 1) = v21;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_1C59BD734();
  *&v130 = v22;
  *(&v130 + 1) = v24;
  *&v131 = v25;
  *(&v131 + 1) = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v110 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v100 = &v86 - v28;
  v104 = v22;
  *&v130 = v22;
  *(&v130 + 1) = v24;
  v97 = v24;
  v95 = v25;
  *&v131 = v25;
  *(&v131 + 1) = v26;
  v94 = v26;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_1C59BD80C(&qword_1EDA4E020, MEMORY[0x1E6969530]);
  *&v130 = v27;
  *(&v130 + 1) = v5;
  *&v131 = v29;
  *(&v131 + 1) = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v112 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v108 = &v86 - v32;
  v111 = v27;
  *&v130 = v27;
  *(&v130 + 1) = v5;
  v115 = v5;
  v98 = v29;
  *&v131 = v29;
  *(&v131 + 1) = v30;
  v96 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_1C59BD80C(&qword_1EDA467E8, MEMORY[0x1E697BE48]);
  v113 = v31;
  *&v130 = v31;
  *(&v130 + 1) = v120;
  v105 = v33;
  *&v131 = v33;
  *(&v131 + 1) = v34;
  v102 = v34;
  v109 = swift_getOpaqueTypeMetadata2();
  v107 = *(v109 - 8);
  v35 = MEMORY[0x1EEE9AC00](v109);
  v99 = &v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v101 = &v86 - v37;
  v38 = v126;
  LOBYTE(v130) = sub_1C59BA238(a2) & 1;
  v39 = v129;
  v40 = v129 + 16;
  v128 = *(v129 + 16);
  v41 = v92;
  v128(v92, v38, a2);
  v42 = *(v39 + 80);
  v43 = (v42 + 32) & ~v42;
  v127 += v43;
  v44 = swift_allocObject();
  v45 = *(a2 + 24);
  v123 = *(a2 + 16);
  *(v44 + 16) = v123;
  *(v44 + 24) = v45;
  v121 = *(v39 + 32);
  v121(v44 + v43, v41, a2);
  swift_checkMetadataState();
  v46 = v91;
  sub_1C5BCA344();

  v47 = v126;
  *&v130 = sub_1C59BA40C(a2);
  BYTE8(v130) = v48 & 1;
  v125 = v40;
  v128(v41, v47, a2);
  v124 = v42;
  v49 = swift_allocObject();
  *(v49 + 16) = v123;
  *(v49 + 24) = v45;
  v122 = v45;
  v50 = v43;
  v51 = v41;
  v52 = v41;
  v129 = v39 + 32;
  v53 = v121;
  v121(v49 + v43, v52, a2);
  v54 = v87;
  sub_1C5BCA344();

  v55 = v126;
  (*(v93 + 8))(v46, v54);
  if (*v55)
  {
    v56 = *(*v55 + 24);
    swift_beginAccess();
    v57 = *(v56 + 72);
    v58 = *(v56 + 40);
    v130 = *(v56 + 24);
    v131 = v58;
    v132 = *(v56 + 56);
    v133 = v57;
    v128(v51, v55, a2);
    v59 = swift_allocObject();
    v60 = v123;
    *(v59 + 16) = v123;
    v61 = v60;
    *(v59 + 24) = v122;
    v86 = v50;
    v53(v59 + v50, v51, a2);
    v62 = v100;
    v63 = v104;
    v64 = v119;
    sub_1C5BCA344();

    (*(v103 + 8))(v64, v63);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48);
    v66 = v106;
    MEMORY[0x1C694EA50](v65);
    v128(v51, v55, a2);
    v67 = swift_allocObject();
    v68 = v121;
    v69 = v122;
    *(v67 + 16) = v61;
    *(v67 + 24) = v69;
    v68(v67 + v50, v51, a2);
    v70 = v108;
    v71 = v111;
    v72 = v115;
    sub_1C5BCA344();

    (*(v114 + 8))(v66, v72);
    (*(v110 + 8))(v62, v71);
    v73 = v116;
    sub_1C594C72C(v116);
    v128(v51, v55, a2);
    v74 = swift_allocObject();
    v75 = v122;
    *(v74 + 16) = v123;
    *(v74 + 24) = v75;
    v121(v74 + v86, v51, a2);
    v76 = v99;
    v77 = v113;
    v78 = v120;
    v79 = v105;
    v80 = v102;
    sub_1C5BCA344();

    (*(v117 + 8))(v73, v78);
    (*(v112 + 8))(v70, v77);
    *&v130 = v77;
    *(&v130 + 1) = v78;
    *&v131 = v79;
    *(&v131 + 1) = v80;
    v81 = swift_getOpaqueTypeConformance2();
    v82 = v101;
    v83 = v109;
    sub_1C593EDC0(v76, v109, v81);
    v84 = *(v107 + 8);
    v84(v76, v83);
    sub_1C593EDC0(v82, v83, v81);
    return (v84)(v82, v83);
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59BB400(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BC81D4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24[-v11];
  v13 = sub_1C5BC7AC4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = _s24StateObservationModifierVMa();
  if (sub_1C59BA238(v16))
  {
    sub_1C5BC7AB4();
  }

  else
  {
    v26 = sub_1C59BA40C(v16);
    if ((v17 & 1) == 0)
    {
      if (!*a1)
      {
        goto LABEL_14;
      }

      v18 = *(*a1 + 24);
      swift_beginAccess();
      if (*(v18 + 72) != 2)
      {
        v19 = *(v18 + 32);
        sub_1C594C72C(v12);
        (*(v7 + 104))(v10, *MEMORY[0x1E697BE38], v6);
        v25 = sub_1C5BC81C4();
        v20 = *(v7 + 8);
        v20(v10, v6);
        v20(v12, v6);
        if (v25)
        {
          v21 = *&v26;
          sub_1C59498C4(a1[2]);
          v22 = *(a3 + 264);
          swift_unknownObjectRetain();
          v22(a2, a3, v19 * v21);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }
    }

    sub_1C5BC7A64();
  }

  sub_1C59BA2FC(v15);
LABEL_10:
  result = sub_1C59BA238(v16);
  if (result)
  {
    return result;
  }

  if (!*a1)
  {
LABEL_14:
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
    result = sub_1C5BC8C74();
    __break(1u);
    return result;
  }

  v27 = 0;
  v28 = 1;

  sub_1C5BC7F34();
}

uint64_t sub_1C59BB720(void *a1)
{
  v2 = _s24StateObservationModifierVMa();
  result = sub_1C59BA238(v2);
  if (result)
  {
    if (*a1)
    {

      sub_1C59BA40C(v2);
      sub_1C5BC7F34();
    }

    else
    {
      _s11TimeControlCMa();
      sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
      result = sub_1C5BC8C74();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C59BB7FC(uint64_t a1)
{
  v2 = sub_1C5BC7AC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s24StateObservationModifierVMa();
  result = sub_1C59BA238(v6);
  if ((result & 1) == 0)
  {
    if (*a1)
    {
      v8 = *(*a1 + 24);
      result = swift_beginAccess();
      if (*(v8 + 72) != 2)
      {
        v9 = *(v8 + 56);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48);
        MEMORY[0x1C694EA50](v10);
        sub_1C5BC7A54();
        v12 = v11;
        result = (*(v3 + 8))(v5, v2);
        if (v12 < v9)
        {
          return sub_1C59BA478();
        }
      }
    }

    else
    {
      _s11TimeControlCMa();
      sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
      result = sub_1C5BC8C74();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C59BB9CC()
{
  v0 = sub_1C5BC7AC4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  _s24StateObservationModifierVMa();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48);
  MEMORY[0x1C694EA50](v7);
  sub_1C5BC7A64();
  v8 = sub_1C5BC7A94();
  v9 = *(v1 + 8);
  v9(v4, v0);
  result = (v9)(v6, v0);
  if (v8)
  {
    return sub_1C59BA478();
  }

  return result;
}

uint64_t sub_1C59BBB3C(void (*a1)(void, void))
{
  v2 = _s24StateObservationModifierVMa();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48[-v7];
  v9 = sub_1C5BC8F34();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48[-v13];
  v15 = sub_1C5BC81D4();
  v55 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v52 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48[-v18];
  sub_1C59BDB30(a1 + *(v2 + 40), v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v55;
    (*(v55 + 4))(v19, v14, v15);
  }

  else
  {
    sub_1C5BCB4E4();
    v21 = sub_1C5BC9844();
    v51 = a1;
    v22 = v8;
    v23 = v19;
    v24 = v2;
    v25 = v6;
    v26 = v3;
    v27 = v15;
    v28 = v21;
    sub_1C5BC7C54();

    v15 = v27;
    v3 = v26;
    v6 = v25;
    v2 = v24;
    v19 = v23;
    v8 = v22;
    a1 = v51;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v53 + 8))(v11, v54);
    v20 = v55;
  }

  result = (*(v20 + 11))(v19, v15);
  if (result == *MEMORY[0x1E697BE30] || result == *MEMORY[0x1E697BE40])
  {
    return sub_1C59BA298();
  }

  if (result != *MEMORY[0x1E697BE38])
  {
    v54 = v15;
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v30 = sub_1C5BC7D64();
    __swift_project_value_buffer(v30, qword_1EDA5DA78);
    v31 = *(v3 + 16);
    v31(v8, a1, v2);
    v31(v6, a1, v2);
    v32 = v3;
    v33 = v8;
    v34 = sub_1C5BC7D44();
    v35 = sub_1C5BCB4E4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v36 = 136315394;
      v50 = v34;
      v37 = v52;
      sub_1C594C72C(v52);
      v51 = *(v55 + 1);
      v49 = v35;
      v38 = v54;
      v51(v37, v54);
      v55 = v19;
      v39 = *(v32 + 8);
      v39(v33, v2);
      *(v36 + 4) = sub_1C592ADA8(0x616850656E656353, 0xEA00000000006573, &v56);
      *(v36 + 12) = 2080;
      sub_1C594C72C(v37);
      v40 = sub_1C5BCAEA4();
      v42 = v41;
      v39(v6, v2);
      v43 = v55;
      v44 = sub_1C592ADA8(v40, v42, &v56);

      *(v36 + 14) = v44;
      v45 = v50;
      _os_log_impl(&dword_1C5922000, v50, v49, "Unhandled case for %s: %s", v36, 0x16u);
      v46 = v53;
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v46, -1, -1);
      MEMORY[0x1C69510F0](v36, -1, -1);

      return (v51)(v43, v38);
    }

    else
    {

      v47 = *(v32 + 8);
      v47(v6, v2);
      v47(v8, v2);
      return (*(v55 + 1))(v19, v54);
    }
  }

  return result;
}

uint64_t sub_1C59BC180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  OpaqueTypeConformance2 = a1;
  v71 = a3;
  v6 = sub_1C5BCAE14();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = sub_1C5BC96A4();
  v11 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v69 = a2;
  v14 = sub_1C5BC9394();
  WitnessTable = swift_getWitnessTable();
  v76[3] = v14;
  v76[4] = WitnessTable;
  v16 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &v55 - v18;
  sub_1C5BC97C4();
  v62 = OpaqueTypeMetadata2;
  v64 = sub_1C5BC8AB4();
  v68 = *(v64 - 8);
  v20 = MEMORY[0x1EEE9AC00](v64);
  v59 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v55 - v25;
  v27 = *v3;
  if (!v27)
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
    result = sub_1C5BC8C74();
    __break(1u);
    return result;
  }

  v70 = v4;
  v28 = *(v27 + 24);
  swift_beginAccess();
  v29 = *(v28 + 72) == 2;
  v65 = v24;
  v73 = v27;
  if (v29)
  {

LABEL_9:
    if (qword_1EDA4B078 != -1)
    {
      swift_once();
    }

    v36 = qword_1EDA5DB18;
    v35 = unk_1EDA5DB20;
    swift_bridgeObjectRetain_n();

    v72 = v36;
    v56 = v36;
    v57 = v35;
    goto LABEL_12;
  }

  v30 = AXDurationStringForDuration();
  if (!v30)
  {
    goto LABEL_9;
  }

  v31 = v30;
  v72 = sub_1C5BCAE74();

  v32 = AXDurationStringForDuration();
  if (!v32)
  {

    goto LABEL_9;
  }

  v33 = v32;
  v56 = sub_1C5BCAE74();
  v57 = v34;

LABEL_12:
  v66 = v26;
  v37 = swift_checkMetadataState();
  sub_1C5BC9674();
  sub_1C5BCA0C4();
  (*(v11 + 8))(v13, v58);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v39 = v38;
  *&v77 = sub_1C5BCAE94();
  *(&v77 + 1) = v40;
  v76[0] = v37;
  v76[1] = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C594A23C();
  v41 = v59;
  v42 = v62;
  sub_1C5BCA034();

  (*(v61 + 8))(v19, v42);
  sub_1C5BCAE04();
  sub_1C5BCADF4();
  sub_1C5BCADE4();
  sub_1C5BCADF4();
  sub_1C5BCADE4();

  sub_1C5BCADF4();
  sub_1C5BCAE24();
  sub_1C5BC7B14();
  *&v77 = sub_1C5BCAE94();
  *(&v77 + 1) = v43;
  v44 = v65;
  v45 = v64;
  sub_1C5BC8A34();

  v46 = *(v68 + 8);
  v46(v41, v45);
  v47 = v70;
  v77 = *(v70 + 1);
  v48 = swift_allocObject();
  v49 = *(v69 + 24);
  *(v48 + 16) = *(v69 + 16);
  *(v48 + 24) = v49;
  v50 = *(v47 + 1);
  *(v48 + 32) = *v47;
  *(v48 + 48) = v50;
  *(v48 + 64) = v47[4];

  v51 = sub_1C5BC8C94();
  (*(*(v51 - 8) + 16))(v76, &v77, v51);
  v52 = v66;
  sub_1C5BC8A94();

  v46(v44, v45);
  v53 = sub_1C59BD80C(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v74 = OpaqueTypeConformance2;
  v75 = v53;
  swift_getWitnessTable();
  sub_1C595BB1C(0xD000000000000019, 0x80000001C5BF61C0);
  return (v46)(v52, v45);
}

uint64_t sub_1C59BCAB4(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v8 = sub_1C5BC97E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    v12 = *(*a2 + 24);
    result = swift_beginAccess();
    if (*(v12 + 72) != 2)
    {
      v14 = *(v12 + 32);
      (*(v9 + 16))(v11, a1, v8);
      v15 = (*(v9 + 88))(v11, v8);
      if (v15 == *MEMORY[0x1E697CC28])
      {
        sub_1C59498C4(*(a2 + 16));
        v16 = *(a2 + 32);
        v17 = 0.05;
LABEL_7:
        v18 = v14 * (v16 + v17);
        v19 = *(a4 + 264);
        swift_unknownObjectRetain();
        v19(a3, a4, v18);
        return swift_unknownObjectRelease();
      }

      if (v15 == *MEMORY[0x1E697CC20])
      {
        sub_1C59498C4(*(a2 + 16));
        v16 = *(a2 + 32);
        v17 = -0.05;
        goto LABEL_7;
      }

      if (qword_1EDA469E0 != -1)
      {
        swift_once();
      }

      v20 = sub_1C5BC7D64();
      __swift_project_value_buffer(v20, qword_1EDA5DA78);
      v47[0] = *(a2 + 16);

      v21 = sub_1C5BC8C94();
      v38[1] = a3;
      v22 = v21;
      v23 = *(v21 - 8);
      v39 = *(v23 + 16);
      v40 = v23 + 16;
      v39(v44, v47, v21);
      v24 = sub_1C5BC7D44();
      v25 = sub_1C5BCB4E4();

      v26 = *(v23 + 8);
      v41 = v22;
      v26(v47, v22);
      v42 = v25;
      if (os_log_type_enabled(v24, v25))
      {
        v27 = swift_slowAlloc();
        v38[0] = v24;
        v28 = v27;
        v29 = swift_slowAlloc();
        v46 = v29;
        *v28 = 136315394;
        _s21AccessibilityModifierVMa();
        v30 = sub_1C5BCBFF4();
        v32 = sub_1C592ADA8(v30, v31, &v46);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v33 = *(a2 + 16);
        v44[0] = *a2;
        v44[1] = v33;
        v45 = *(a2 + 32);

        v39(v43, v47, v41);
        v34 = sub_1C5BCAEA4();
        v36 = sub_1C592ADA8(v34, v35, &v46);

        *(v28 + 14) = v36;
        v37 = v38[0];
        _os_log_impl(&dword_1C5922000, v38[0], v42, "Unhandled case for %s: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v29, -1, -1);
        MEMORY[0x1C69510F0](v28, -1, -1);
      }

      else
      {
      }

      return (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C59BD80C(&qword_1EDA4B070, _s11TimeControlCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59BCFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(_s19HeadlessTimeControlVMa() - 8);
  v10 = v2[6];
  v11 = (v2 + ((*(v9 + 80) + 56) & ~*(v9 + 80)));

  return sub_1C59B7E58(a1, v10, v11, v5, v6, v7, v8, a2);
}

uint64_t sub_1C59BD074@<X0>(double *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270) - 8);
  v8 = *(v7 + 64);
  v9 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v10 = *(_s19HeadlessTimeControlVMa() - 8);
  return sub_1C59B8998(v1[8], v1 + ((v9 + v8 + *(v10 + 80)) & ~*(v10 + 80)), v3, v4, v5, a1, v6);
}

uint64_t sub_1C59BD18C()
{
  _s19HeadlessTimeControlVMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191D50);
  return sub_1C5BCA6A4();
}

uint64_t sub_1C59BD244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59BD2B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59BD2F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C59BD34C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1C59BD3A8()
{
  sub_1C59BA0C8();
  if (v0 <= 0x3F)
  {
    sub_1C5BC8C94();
    if (v1 <= 0x3F)
    {
      sub_1C59BD554(319, &qword_1EDA46768, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C59BA15C(319, &qword_1EDA45FA8, MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1C59BD554(319, &qword_1EC191E58, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
          if (v4 <= 0x3F)
          {
            sub_1C59BD5B8(319, &qword_1EC191E60, MEMORY[0x1E6981948]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C59BD554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C59BD5B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B78);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C59BD6B8()
{
  result = qword_1EC196020;
  if (!qword_1EC196020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196020);
  }

  return result;
}

unint64_t sub_1C59BD734()
{
  result = qword_1EDA4A748;
  if (!qword_1EDA4A748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E68);
    sub_1C59BD7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A748);
  }

  return result;
}

unint64_t sub_1C59BD7B8()
{
  result = qword_1EDA4A750;
  if (!qword_1EDA4A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A750);
  }

  return result;
}

uint64_t sub_1C59BD80C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_48Tm()
{
  v1 = _s24StateObservationModifierVMa();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  swift_unknownObjectRelease();
  v3 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC81D4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 48);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48) + 32);
  v7 = sub_1C5BC7AC4();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_1C59BDA98(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(_s24StateObservationModifierVMa() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1C59BDB30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MotionView.init(url:previewFrame:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = a5;
  v19 = a6;
  v16 = a3;
  v17 = a4;
  v10 = type metadata accessor for MotionAsset();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C5BC7A24();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  swift_storeEnumTagMultiPayload();
  sub_1C59BDD68(v12, a2, v17, 1, 0, a7);
  return (*(v14 + 8))(a1, v13);
}

uint64_t sub_1C59BDD68@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, char a4@<W5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for MotionView();
  v12 = v11[17];
  if (qword_1EDA4B350 != -1)
  {
    swift_once();
  }

  *(a6 + v12) = off_1EDA4B358;
  sub_1C59C122C(a1, a6 + v11[14]);

  v14 = a2(v13);
  a3(v14);
  result = sub_1C59C1338(a1);
  *(a6 + v11[15]) = a4 & 1;
  *(a6 + v11[16]) = a5;
  return result;
}

uint64_t MotionView.init(url:previewFrame:fallback:stateObserver:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v17[1] = a7;
  v18 = a3;
  v20 = a5;
  v21 = a6;
  v19 = a4;
  v11 = type metadata accessor for MotionAsset();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C5BC7A24();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  swift_storeEnumTagMultiPayload();
  sub_1C59BDD68(v13, a2, v18, 1, v20, a8);
  return (*(v15 + 8))(a1, v14);
}

uint64_t MotionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E78);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E80);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v4 = sub_1C5BCA7F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = sub_1C5BC8AB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v24 = v21;
  v25 = v20;
  v26 = *(a1 + 32);
  v27 = v22;
  sub_1C5BCAA54();
  sub_1C5BCA7E4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA1D4();
  (*(v5 + 8))(v7, v4);
  v16 = sub_1C5943498();
  v28 = WitnessTable;
  v29 = v16;
  v17 = swift_getWitnessTable();
  sub_1C593EDC0(v12, v8, v17);
  v18 = *(v9 + 8);
  v18(v12, v8);
  sub_1C593EDC0(v14, v8, v17);
  return (v18)(v14, v8);
}

uint64_t sub_1C59BE350@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v90 = &v77 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E78);
  v13 = sub_1C5BC8AB4();
  v83 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v77 - v14;
  v103 = v15;
  v16 = sub_1C5BC8AB4();
  v85 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E80);
  v102 = v16;
  v18 = sub_1C5BC8AB4();
  v87 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v77 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  v98 = v18;
  v20 = sub_1C5BC8AB4();
  v91 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v89 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v88 = &v77 - v24;
  v81 = *(a3 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v80 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v77 - v27;
  v29 = sub_1C5BC92D4();
  v96 = *(v29 - 8);
  v97 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v95 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v101 = &v77 - v32;
  v94 = sub_1C5BCA484();
  v127 = a2;
  v128 = a3;
  v104 = a4;
  v129 = a4;
  v130 = a5;
  v92 = type metadata accessor for MotionView();
  v33 = a1;
  v34 = *(a1 + v92[17]);
  swift_getKeyPath();
  v127 = v34;
  sub_1C59C14DC(&qword_1EDA4B348, type metadata accessor for MotionEnabledState);
  sub_1C5BC7B74();

  v36 = *(v34 + 33);
  v93 = v20;
  v100 = a5;
  if (v36)
  {
    v81 = &v77;
    MEMORY[0x1EEE9AC00](v35);
    *(&v77 - 6) = a2;
    *(&v77 - 5) = a3;
    v79 = a3;
    v37 = v104;
    *(&v77 - 4) = v104;
    *(&v77 - 3) = a5;
    *(&v77 - 2) = v33;
    sub_1C5BCAA54();
    type metadata accessor for MotionPlayerView(0);
    sub_1C59C14DC(&qword_1EC191ED0, type metadata accessor for MotionPlayerView);
    v38 = v82;
    v39 = v33;
    v78 = v33;
    sub_1C5BCA2C4();
    v40 = sub_1C5924F54(&qword_1EC191EC0, &qword_1EC191E78);
    v111 = v37;
    v112 = v40;
    v41 = v103;
    v81 = MEMORY[0x1E697E858];
    WitnessTable = swift_getWitnessTable();
    v43 = v84;
    sub_1C5BC9FC4();
    (*(v83 + 8))(v38, v41);
    swift_getKeyPath();
    v44 = v92;
    v45 = v90;
    sub_1C59C122C(v39 + v92[14], v90);
    v46 = type metadata accessor for MotionAsset();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v109 = WitnessTable;
    v110 = MEMORY[0x1E69802C0];
    v47 = v102;
    v48 = swift_getWitnessTable();
    v49 = v86;
    sub_1C5BC9DF4();

    sub_1C59C1290(v45);
    (*(v85 + 8))(v43, v47);
    swift_getKeyPath();
    LOBYTE(v127) = *(v78 + v44[15]);
    v50 = sub_1C5924F54(&qword_1EC191EC8, &qword_1EC191E80);
    v107 = v48;
    v108 = v50;
    v51 = v98;
    v52 = swift_getWitnessTable();
    v53 = v89;
    sub_1C5BC9DF4();

    (*(v87 + 8))(v49, v51);
    v54 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
    v105 = v52;
    v106 = v54;
    v55 = swift_getWitnessTable();
    v56 = v88;
    sub_1C593EDC0(v53, v20, v55);
    v57 = *(v91 + 8);
    v57(v53, v20);
    sub_1C593EDC0(v56, v20, v55);
    sub_1C5941738(v53, v79, v20);
    v57(v53, v20);
    v57(v56, v20);
  }

  else
  {
    sub_1C593EDC0(v33 + v92[13], a3, a5);
    v58 = v80;
    sub_1C593EDC0(v28, a3, a5);
    v59 = sub_1C5924F54(&qword_1EC191EC0, &qword_1EC191E78);
    v126[7] = v104;
    v126[8] = v59;
    v126[5] = swift_getWitnessTable();
    v126[6] = MEMORY[0x1E69802C0];
    v60 = swift_getWitnessTable();
    v61 = sub_1C5924F54(&qword_1EC191EC8, &qword_1EC191E80);
    v126[3] = v60;
    v126[4] = v61;
    v62 = swift_getWitnessTable();
    v63 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
    v126[1] = v62;
    v126[2] = v63;
    swift_getWitnessTable();
    sub_1C5950E54(v58, a3);
    v64 = v81[1];
    v64(v58, a3);
    v64(v28, a3);
  }

  v65 = v95;
  v126[0] = v94;
  v127 = v126;
  v67 = v96;
  v66 = v97;
  v68 = v101;
  (*(v96 + 16))(v95, v101, v97);
  v128 = v65;

  v125[0] = MEMORY[0x1E69815C0];
  v125[1] = v66;
  v123 = MEMORY[0x1E6981580];
  v69 = sub_1C5924F54(&qword_1EC191EC0, &qword_1EC191E78);
  v121 = v104;
  v122 = v69;
  v119 = swift_getWitnessTable();
  v120 = MEMORY[0x1E69802C0];
  v70 = swift_getWitnessTable();
  v71 = sub_1C5924F54(&qword_1EC191EC8, &qword_1EC191E80);
  v117 = v70;
  v118 = v71;
  v72 = swift_getWitnessTable();
  v73 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
  v115 = v72;
  v116 = v73;
  v74 = swift_getWitnessTable();
  v113 = v100;
  v114 = v74;
  v124 = swift_getWitnessTable();
  sub_1C594226C(&v127, 2uLL, v125);

  v75 = *(v67 + 8);
  v75(v68, v66);
  v75(v65, v66);
}

uint64_t sub_1C59BEFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for MotionView() + 64));
  type metadata accessor for MotionViewDisplayState(0);

  sub_1C5BC8194();
  v4 = type metadata accessor for MotionPlayerView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191ED8);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  v7 = v4[8];
  if (qword_1EDA4B350 != -1)
  {
    swift_once();
  }

  *(a2 + v7) = off_1EDA4B358;
  *(a2 + v4[7]) = v3;
}

uint64_t sub_1C59BF0D4()
{
  sub_1C59C10F0();

  return sub_1C5BC8F44();
}

uint64_t MotionViewStateObserver.State.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C59BF1C8@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver);
  sub_1C5BC7B74();

  v3 = *(v1 + 16);
  swift_getKeyPath();
  sub_1C5BC7B74();

  if (*(v1 + 17))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t MotionViewStateObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1C5BC7BA4();
  return v0;
}

uint64_t MotionViewStateObserver.init()()
{
  *(v0 + 16) = 0;
  sub_1C5BC7BA4();
  return v0;
}

uint64_t sub_1C59BF340(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C59BF450(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C59BF560()
{
  swift_getKeyPath();
  sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver);
  sub_1C5BC7B74();

  return *(v0 + 16);
}

uint64_t sub_1C59BF600@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t type metadata accessor for MotionViewStateObserver()
{
  result = qword_1EDA485C8;
  if (!qword_1EDA485C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C59BF71C()
{
  swift_getKeyPath();
  sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver);
  sub_1C5BC7B74();

  return *(v0 + 17);
}

uint64_t sub_1C59BF7BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C59C14DC(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver);
  sub_1C5BC7B74();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t MotionViewStateObserver.deinit()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI23MotionViewStateObserver___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MotionViewStateObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI23MotionViewStateObserver___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t MCUINamespace<A>.motionShouldResetOnSizeChange(_:)()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C59BFA24(void (*a1)(void))
{
  a1();
  sub_1C5BC8F44();
  return v2;
}

uint64_t sub_1C59BFA6C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MotionAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1C59BFAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C59C1428();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C59BFB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C59C13D4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C59BFBA8()
{
  sub_1C59C109C();
  sub_1C5BC8F44();
  return v1;
}

uint64_t MotionViewV2.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC7A24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MotionViewV2.init(url:keyframe:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_1C5BC7A24();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a4, a1, v7);
  type metadata accessor for MotionViewV2();
  v9 = a2();
  a3(v9);
  return (*(v8 + 8))(a1, v7);
}

uint64_t MotionViewV2.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v23 = sub_1C5BC7A24();
  v3 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v5;
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v38 = a1[2];
  v6 = v38;
  v39 = v7;
  v40 = v9;
  v41 = v8;
  v10 = type metadata accessor for MotionView();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v17 = v5;
  v18 = v24;
  (*(v3 + 16))(v17, v24, v23);
  v33 = v6;
  v34 = v7;
  v35 = v9;
  v36 = v8;
  v37 = v18;
  v27 = v6;
  v28 = v7;
  v29 = v9;
  v30 = v8;
  v31 = v18;
  MotionView.init(url:previewFrame:fallback:)(v22, sub_1C59C0080, v32, sub_1C59C0108, v26, v6, v14);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v14, v10, WitnessTable);
  v20 = *(v11 + 8);
  v20(v14, v10);
  sub_1C593EDC0(v16, v10, WitnessTable);
  return (v20)(v16, v10);
}

uint64_t sub_1C59C0080@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v6 = *(v1 + 16);
  v4 = type metadata accessor for MotionViewV2();
  return (*(*(v6 - 8) + 16))(a1, v3 + *(v4 + 52));
}

uint64_t sub_1C59C0108@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v6 = *(v1 + 24);
  v4 = type metadata accessor for MotionViewV2();
  return (*(*(v6 - 8) + 16))(a1, v3 + *(v4 + 56));
}

unint64_t sub_1C59C01B8()
{
  result = qword_1EC191E90;
  if (!qword_1EC191E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191E90);
  }

  return result;
}

void sub_1C59C0228()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MotionAsset();
      if (v2 <= 0x3F)
      {
        sub_1C59C08D4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MotionEnabledState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C59C0304(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v33 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v33 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C5BC7A24() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + v13;
  v17 = *(v11 + 80) & 0xF8 | 7;
  v18 = v12 + 1;
  if (v15 >= a2)
  {
    goto LABEL_33;
  }

  v19 = ((((((v14 + v17 + (v16 & ~v13)) & ~v17) + v18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v15 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      goto LABEL_33;
    }

    v24 = *(a1 + v19);
    if (!v24)
    {
      goto LABEL_33;
    }

LABEL_30:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v15 + (v27 | v26) + 1;
  }

  if (v23 == 2)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v7 == v15)
  {
    v28 = *(v6 + 48);
    v29 = a1;
    v30 = v7;
    v31 = v5;
LABEL_37:

    return v28(v29, v30, v31);
  }

  v29 = ((a1 + v16) & ~v13);
  if (v9 == v15)
  {
    v28 = *(v8 + 48);
    v30 = v9;
    v31 = v33;
    goto LABEL_37;
  }

  v32 = *((((((v29 + v14 + v17) & ~v17) + v18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  if (v32 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  return (v32 + 1);
}

void sub_1C59C05D0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v36 = *(a4 + 16);
  v7 = *(v36 - 8);
  v34 = *(a4 + 24);
  v35 = v7;
  v8 = *(v7 + 84);
  v9 = *(v34 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_1C5BC7A24() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(v9 + 80);
  v16 = *(v7 + 64) + v15;
  v17 = *(v9 + 64);
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = v13 + 1;
  v20 = ((((((v17 + v18 + (v16 & ~v15)) & ~v18) + v19) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v23 = 0;
    v24 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (((((((v17 + v18 + (v16 & ~v15)) & ~v18) + v19) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v25 = v24;
    }

    else
    {
      v25 = 1;
    }

    if (((((((v17 + v18 + (v16 & ~v15)) & ~v18) + v19) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v26 = ~v14 + a2;
      bzero(a1, ((((((v17 + v18 + (v16 & ~v15)) & ~v18) + v19) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v26;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }
    }

    else if (v23)
    {
      *(a1 + v20) = v25;
    }

    return;
  }

  if (((((((v17 + v18 + (v16 & ~v15)) & ~v18) + v19) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = a3 - v14 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = a2 - v14;
  if (a2 > v14)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v20) = 0;
  }

  else if (v23)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v8 == v14)
  {
    v27 = v36;
    v28 = *(v35 + 56);
    v29 = a1;
    v30 = a2;
    v31 = v8;
LABEL_45:

    v28(v29, v30, v31, v27);
    return;
  }

  v29 = ((a1 + v16) & ~v15);
  if (v10 == v14)
  {
    v28 = *(v9 + 56);
    v30 = a2;
    v31 = v10;
    v27 = v34;
    goto LABEL_45;
  }

  v32 = ((((((v29 + v17 + v18) & ~v18) + v19) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((a2 & 0x80000000) != 0)
  {
    v33 = a2 & 0x7FFFFFFF;
  }

  else
  {
    v33 = (a2 - 1);
  }

  *v32 = v33;
}

void sub_1C59C08D4()
{
  if (!qword_1EDA48478[0])
  {
    type metadata accessor for MotionViewStateObserver();
    v0 = sub_1C5BCB804();
    if (!v1)
    {
      atomic_store(v0, qword_1EDA48478);
    }
  }
}

uint64_t sub_1C59C0934()
{
  result = sub_1C5BC7BB4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C59C0A30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1C5BC7A24() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(a3 + 24);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  v15 = *(v6 + 64);
  v16 = *(v10 + 80);
  v17 = *(*(*(a3 + 16) - 8) + 64);
  v18 = *(v13 + 80);
  if (v14 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 + v16;
  if (a2 <= v19)
  {
    goto LABEL_31;
  }

  v21 = ((v17 + v18 + (v20 & ~v16)) & ~v18) + *(*(v9 - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((a2 - v19 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v24 < 2)
    {
LABEL_30:
      if (v19)
      {
LABEL_31:
        if (v8 == v19)
        {
          v28 = *(v7 + 48);

          return v28(a1);
        }

        else
        {
          v30 = (a1 + v20) & ~v16;
          if (v11 == v19)
          {
            v31 = *(v10 + 48);

            return v31(v30, v11);
          }

          else
          {
            v32 = *(v13 + 48);
            v33 = (v30 + v17 + v18) & ~v18;

            return v32(v33, v14, v9);
          }
        }
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_30;
  }

LABEL_17:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = ((v17 + v18 + (v20 & ~v16)) & ~v18) + *(*(v9 - 8) + 64);
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v19 + (v27 | v25) + 1;
}

void sub_1C59C0D1C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1C5BC7A24() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = *(v16 + 80);
  if (v17 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  v23 = v18 + v19;
  v24 = ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21) + *(*(v11 - 8) + 64);
  if (a3 <= v22)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 - v22 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v22 < a2)
  {
    v26 = ~v22 + a2;
    if (v24 < 4)
    {
      v27 = (v26 >> (8 * v24)) + 1;
      if (v24)
      {
        v30 = v26 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v25 > 1)
            {
LABEL_53:
              if (v25 == 2)
              {
                *&a1[v24] = v27;
              }

              else
              {
                *&a1[v24] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v25 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v25 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v25)
    {
      a1[v24] = v27;
    }

    return;
  }

  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v24] = 0;
  }

  else if (v25)
  {
    a1[v24] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v22)
  {
    v31 = *(v9 + 56);

    v31(a1, a2);
  }

  else
  {
    v32 = &a1[v23] & ~v19;
    if (v14 == v22)
    {
      v33 = *(v13 + 56);

      v33(v32, a2, v14);
    }

    else
    {
      v34 = *(v16 + 56);
      v35 = (v32 + v20 + v21) & ~v21;

      v34(v35, a2, v17, v11);
    }
  }
}

unint64_t sub_1C59C109C()
{
  result = qword_1EC191E98;
  if (!qword_1EC191E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191E98);
  }

  return result;
}

unint64_t sub_1C59C10F0()
{
  result = qword_1EC191EA0;
  if (!qword_1EC191EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191EA0);
  }

  return result;
}

unint64_t sub_1C59C1144()
{
  result = qword_1EC191EA8;
  if (!qword_1EC191EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191EA8);
  }

  return result;
}

unint64_t sub_1C59C11A8()
{
  result = qword_1EC191EB0;
  if (!qword_1EC191EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191EB0);
  }

  return result;
}

uint64_t sub_1C59C122C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59C1290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59C12F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MotionViewDisplayState(0);
  swift_allocObject();
  result = sub_1C5A0375C();
  *a1 = result;
  return result;
}

uint64_t sub_1C59C1338(uint64_t a1)
{
  v2 = type metadata accessor for MotionAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C59C13D4()
{
  result = qword_1EC191EE0;
  if (!qword_1EC191EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191EE0);
  }

  return result;
}

unint64_t sub_1C59C1428()
{
  result = qword_1EC191EE8;
  if (!qword_1EC191EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191EB8);
    sub_1C59C14DC(&qword_1EC191EF0, type metadata accessor for MotionAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191EE8);
  }

  return result;
}

uint64_t sub_1C59C14DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NowPlayingCustomButton.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1C5951550();
}

uint64_t sub_1C59C156C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 33) = a1;
  return result;
}

uint64_t NowPlayingCustomButton.__allocating_init(_:isEnabled:content:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NowPlayingCustomButton.init(_:isEnabled:content:)(a1);
  return v2;
}

uint64_t NowPlayingCustomButton.init(_:isEnabled:content:)(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  LOBYTE(v5) = *(v4 + 16);
  *(v1 + 16) = *v4;
  *(v1 + 32) = v5;
  *(v1 + 33) = v7;
  v8();
  (*(v3 + 32))(v1 + *(*v1 + 112), v6, v2);
  return v1;
}

uint64_t NowPlayingCustomButton.__allocating_init(_:isEnabled:content:)(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v5 = 0;
  v2 = swift_allocObject();
  NowPlayingCustomButton.init(_:isEnabled:content:)(v4);
  return v2;
}

uint64_t *NowPlayingCustomButton.deinit()
{
  v1 = *v0;
  sub_1C5950CE4();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

uint64_t NowPlayingCustomButton.__deallocating_deinit()
{
  NowPlayingCustomButton.deinit();

  return swift_deallocClassInstance();
}

double static NowPlayingButton<>.none.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191EF8);
  v0 = swift_allocObject();
  *&result = 0x726563617073;
  *(v0 + 16) = xmmword_1C5BD4520;
  *(v0 + 32) = 256;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  return result;
}

uint64_t sub_1C59C19B4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C59C1B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCA864();
  MEMORY[0x1C694EA50](v5);
  sub_1C5BCACE4();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_1C59C1C14(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for MinimumLayoutMargins();

  return sub_1C5BC8194();
}

uint64_t sub_1C59C1C98()
{
  type metadata accessor for MinimumLayoutMargins();
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_1C5BC7BA4();
  return v0;
}

uint64_t sub_1C59C1CE8(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 52);
  result = *v7;
  v9 = *(v7 + 16);
  if (*(v7 + 17) != 1)
  {
    v10 = *v7;
    v11 = *(v7 + 8);

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C59CC0D8(v10, v11, v9, 0);
    (*(v4 + 8))(v6, v3);
    return v13[1];
  }

  return result;
}

uint64_t ScopePicker.init(selection:scopes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v37 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = sub_1C5BCB804();
  v34 = *(v42 - 8);
  v12 = MEMORY[0x1EEE9AC00](v42);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v17 = type metadata accessor for ScopePicker();
  *(a5 + v17[11]) = 0x4034000000000000;
  sub_1C59C1C14(sub_1C59C1C98, 0);
  v18 = a5 + v17[13];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  v19 = sub_1C5BCA864();
  v35 = *(v19 - 8);
  v36 = v19;
  v20 = *(v35 + 16);
  v39 = a1;
  v20(a5, a1);
  v38 = v17;
  v21 = v17[9];
  v40 = a5;
  v22 = v33;
  *(a5 + v21) = v33;

  v23 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v24 = sub_1C5BCB0B4();
  v41 = *(a4 + 8);
  v25 = sub_1C59CBCE4(v24, a3, v23, v41);

  v47 = v25;
  v46 = v22;
  v26 = sub_1C5BCB144();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C694F230](&v43, v26, WitnessTable);

  v45 = v43;
  sub_1C5BCBC24();
  sub_1C5BCBBF4();
  sub_1C5BCBC14();
  v28 = (v34 + 32);
  v29 = (v37 + 32);
  while (1)
  {
    sub_1C5BCBC04();
    (*v28)(v16, v14, v42);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v30 = *v16;
    (*v29)(v10, &v16[*(TupleTypeMetadata2 + 48)], a3);
    v43 = v30;
    v44 = 0;
    sub_1C5BCACD4();
    sub_1C5BCACF4();
  }

  (*(v35 + 8))(v39, v36);

  *(v40 + v38[10]) = v47;
  return result;
}

uint64_t sub_1C59C22A8(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = sub_1C5BCB804();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v12 = *(v7 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v24 - v16;
  v18 = sub_1C59C1B0C(a3);
  if (v19)
  {
    v24[1] = a1;
    v27 = *(v3 + *(a3 + 36));
    sub_1C5BCB144();
    swift_getWitnessTable();
    sub_1C5BCB444();
    if ((*(v12 + 48))(v11, 1, v7) != 1)
    {
      (*(v12 + 32))(v17, v11, v7);
      sub_1C59CD10C(v17, a3);
      return (*(v12 + 8))(v17, v7);
    }

    v18 = (*(v25 + 8))(v11, v26);
  }

  if (a2)
  {
    MEMORY[0x1EEE9AC00](v18);
    v20 = *(a3 + 24);
    v24[-4] = v7;
    v24[-3] = v20;
    v24[-2] = v21;
    v24[-1] = v3;
    sub_1C5BCAB14();
    sub_1C5BC87F4();
  }

  else
  {
    v23 = sub_1C5BCA864();
    MEMORY[0x1C694EA50](v23);
    sub_1C5BC8AE4();
    return (*(v12 + 8))(v15, v7);
  }
}

uint64_t sub_1C59C25AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScopePicker();
  v7 = sub_1C5BCA864();
  MEMORY[0x1C694EA50](v7);
  sub_1C5BC8AE4();
  return (*(v4 + 8))(v6, a3);
}

uint64_t ScopePicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v64 = *(a1 - 8);
  v65 = *(v64 + 64);
  v62 = MEMORY[0x1EEE9AC00](a1);
  v63 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(v62 + 24);
  v68 = *(v62 + 16);
  type metadata accessor for ScopePicker.ScopeButtonsWithHighlight();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v102 = MEMORY[0x1E697E5D8];
  v4 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v5 = sub_1C5BC81E4();
  v6 = swift_getWitnessTable();
  *&v105 = v5;
  *(&v105 + 1) = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v105 = v5;
  *(&v105 + 1) = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v105 = OpaqueTypeMetadata2;
  *(&v105 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v55 = v3;
  type metadata accessor for ScopePicker.FadingView();
  swift_getWitnessTable();
  sub_1C5BC8874();
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  sub_1C5BC8AB4();
  v99 = swift_getWitnessTable();
  v100 = MEMORY[0x1E69805B0];
  v97 = swift_getWitnessTable();
  v98 = MEMORY[0x1E697EBB8];
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  v9 = sub_1C5BC8AB4();
  *&v105 = OpaqueTypeMetadata2;
  *(&v105 + 1) = OpaqueTypeConformance2;
  v10 = swift_getOpaqueTypeConformance2();
  v11 = swift_getWitnessTable();
  v95 = v10;
  v96 = v11;
  v61 = v4;
  v93 = swift_getWitnessTable();
  v94 = MEMORY[0x1E69802C0];
  v12 = swift_getWitnessTable();
  v13 = *(*(v3 + 8) + 8);
  v14 = v68;
  *&v105 = v9;
  *(&v105 + 1) = v68;
  *&v106 = v12;
  *(&v106 + 1) = v13;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = sub_1C5BCB144();
  *&v105 = v9;
  *(&v105 + 1) = v14;
  *&v106 = v12;
  *(&v106 + 1) = v13;
  v17 = swift_getOpaqueTypeConformance2();
  v92 = v13;
  v18 = swift_getWitnessTable();
  *&v105 = v15;
  *(&v105 + 1) = v16;
  *&v106 = v17;
  *(&v106 + 1) = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F80);
  *&v105 = v15;
  *(&v105 + 1) = v16;
  *&v106 = v17;
  *(&v106 + 1) = v18;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_1C59CC000();
  *&v105 = v19;
  *(&v105 + 1) = v20;
  *&v106 = v21;
  *(&v106 + 1) = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  *&v105 = v19;
  *(&v105 + 1) = v20;
  *&v106 = v21;
  *(&v106 + 1) = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_1C59CC084();
  *&v105 = v23;
  *(&v105 + 1) = &type metadata for HorizontalMargins;
  *&v106 = v24;
  *(&v106 + 1) = v25;
  v54[1] = swift_getOpaqueTypeMetadata2();
  *&v105 = v23;
  *(&v105 + 1) = &type metadata for HorizontalMargins;
  *&v106 = v24;
  *(&v106 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  sub_1C5BC8BA4();
  v26 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F98);
  v57 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v27 = sub_1C5BC8AB4();
  v28 = *(v27 - 8);
  v59 = v27;
  v60 = v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v56 = v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v58 = v54 - v31;
  v32 = v63;
  v33 = v64;
  v34 = v62;
  (*(v64 + 16))(v63, v66, v62);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  v37 = v55;
  *(v36 + 16) = v68;
  *(v36 + 24) = v37;
  (*(v33 + 32))(v36 + v35, v32, v34);
  *&v85 = sub_1C5BC8B94();
  *(&v85 + 1) = v38;
  sub_1C5BC98F4();
  v39 = swift_getWitnessTable();
  sub_1C5BCA2F4();

  v103[0] = v105;
  v103[1] = v106;
  v104[0] = *v107;
  *(v104 + 9) = *&v107[9];
  v73 = v105;
  v74 = v106;
  v75[0] = *v107;
  *(v75 + 9) = *&v107[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921E8);
  sub_1C5BC81A4();
  v40 = v85;
  v41 = sub_1C5BC8AC4();
  v42 = sub_1C5BC9894();
  v81 = v40;
  v82 = v41;
  v83 = v42;
  v84 = 0;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FB0);
  v79 = v39;
  v80 = MEMORY[0x1E697E5D8];
  v43 = swift_getWitnessTable();
  sub_1C59CC110();
  sub_1C5BC9D04();

  (*(*(v26 - 8) + 8))(v103, v26);
  v76 = v89;
  v77 = v90;
  v78 = v91;
  v73 = v85;
  v74 = v86;
  v75[0] = v87;
  v75[1] = v88;
  v44 = sub_1C5924F54(qword_1EC191FD8, &qword_1EC191F98);
  v71 = v43;
  v72 = v44;
  v45 = v57;
  v46 = swift_getWitnessTable();
  v47 = v56;
  sub_1C595BB1C(0x63695065706F6373, 0xEB0000000072656BLL);
  v108 = v76;
  v109 = v77;
  v110 = v78;
  v105 = v73;
  v106 = v74;
  *v107 = v75[0];
  *&v107[16] = v75[1];
  (*(*(v45 - 8) + 8))(&v105, v45);
  v48 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v69 = v46;
  v70 = v48;
  v49 = v59;
  v50 = swift_getWitnessTable();
  v51 = v58;
  sub_1C593EDC0(v47, v49, v50);
  v52 = *(v60 + 8);
  v52(v47, v49);
  sub_1C593EDC0(v51, v49, v50);
  return (v52)(v51, v49);
}

uint64_t sub_1C59C3054@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X8>)
{
  v189 = a2;
  v187 = a1;
  v171 = a5;
  v170 = sub_1C5BC8AF4();
  v188 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v186 = v7;
  v169 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for ScopePicker();
  v190 = *(v177 - 8);
  v184 = *(v190 + 64);
  v8 = MEMORY[0x1EEE9AC00](v177);
  v185 = &v127 - v9;
  Description = a3[-1].Description;
  MEMORY[0x1EEE9AC00](v8);
  v176 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1C5BC93D4();
  v182 = *(v183 - 1);
  MEMORY[0x1EEE9AC00](v183);
  v151 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScopePicker.ScopeButtonsWithHighlight();
  v12 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v207 = MEMORY[0x1E697E5D8];
  v13 = swift_getWitnessTable();
  v181 = v12;
  v164 = v13;
  v14 = sub_1C5BC81E4();
  v180 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v178 = (&v127 - v15);
  v16 = swift_getWitnessTable();
  v194 = v14;
  v195 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v166 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v163 = &v127 - v18;
  v167 = v14;
  v194 = v14;
  v195 = v16;
  v160 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v194 = OpaqueTypeMetadata2;
  v195 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v165 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v162 = &v127 - v21;
  type metadata accessor for ScopePicker.FadingView();
  swift_getWitnessTable();
  sub_1C5BC8874();
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  v22 = sub_1C5BC8AB4();
  v204 = swift_getWitnessTable();
  v205 = MEMORY[0x1E69805B0];
  v202 = swift_getWitnessTable();
  v203 = MEMORY[0x1E697EBB8];
  v23 = swift_getWitnessTable();
  v143 = v22;
  v136 = v23;
  sub_1C5BC8BE4();
  v172 = v20;
  v24 = sub_1C5BC8AB4();
  v137 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v132 = &v127 - v25;
  v26 = sub_1C5BC8AB4();
  v156 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v175 = &v127 - v27;
  v179 = OpaqueTypeMetadata2;
  v194 = OpaqueTypeMetadata2;
  v195 = OpaqueTypeConformance2;
  v152 = OpaqueTypeConformance2;
  v28 = v189;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = swift_getWitnessTable();
  v131 = v29;
  v200 = v29;
  v201 = v30;
  v129 = v24;
  v130 = swift_getWitnessTable();
  v198 = v130;
  v199 = MEMORY[0x1E69802C0];
  v31 = swift_getWitnessTable();
  v192 = a4;
  v32 = *(a4->Description + 1);
  v194 = v26;
  v195 = a3;
  v196 = v31;
  v197 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v150 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v173 = &v127 - v34;
  v35 = sub_1C5BCB144();
  v159 = v26;
  v194 = v26;
  v195 = a3;
  v191 = a3;
  v134 = v31;
  v196 = v31;
  v197 = v32;
  v36 = swift_getOpaqueTypeConformance2();
  v133 = v32;
  v193 = v32;
  v37 = swift_getWitnessTable();
  v194 = v33;
  v195 = v35;
  v196 = v36;
  v197 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v153 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v174 = &v127 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F80);
  v155 = v33;
  v194 = v33;
  v195 = v35;
  v138 = v35;
  v139 = v36;
  v196 = v36;
  v197 = v37;
  v135 = v37;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_1C59CC000();
  v194 = v38;
  v195 = v40;
  v196 = v41;
  v197 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v157 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v148 = &v127 - v44;
  v158 = v38;
  v194 = v38;
  v195 = v40;
  v142 = v40;
  v141 = v41;
  v196 = v41;
  v197 = v42;
  v140 = v42;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_1C59CC084();
  v161 = v43;
  v194 = v43;
  v195 = &type metadata for HorizontalMargins;
  v147 = v45;
  v196 = v45;
  v197 = v46;
  v146 = v46;
  v154 = swift_getOpaqueTypeMetadata2();
  v149 = *(v154 - 8);
  v47 = MEMORY[0x1EEE9AC00](v154);
  v144 = &v127 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v145 = &v127 - v49;
  v50 = sub_1C59C1CE8(v177);
  if (v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921E8);
    sub_1C5BC81A4();
    v53 = v194;
    swift_getKeyPath();
    v194 = v53;
    sub_1C59CEDB8(&qword_1EC1921F0, type metadata accessor for MinimumLayoutMargins);
    sub_1C5BC7B74();

    v54 = *(v53 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921E8);
    sub_1C5BC81A4();
    v55 = v194;
    swift_getKeyPath();
    v194 = v55;
    sub_1C5BC7B74();

    v56 = *(v55 + 40);
  }

  else
  {
    v54 = v50;
    v56 = v51;
  }

  v57 = sub_1C5BC9854();
  MEMORY[0x1EEE9AC00](v57);
  v58 = v192;
  *(&v127 - 4) = v191;
  *(&v127 - 3) = v58;
  *(&v127 - 2) = v28;
  v59 = v178;
  sub_1C5BC81F4();
  v60 = sub_1C5BC98C4();
  v61 = v151;
  sub_1C5BC93C4();
  v62 = v163;
  v63 = v167;
  MEMORY[0x1C694E150](v60, v54, 0, v61, v167, v160);
  v64 = *(v182 + 8);
  v65 = v54;
  v128 = v54;
  v66 = v183;
  v64(v61, v183);
  (*(v180 + 1))(v59, v63);
  v67 = sub_1C5BC98E4();
  sub_1C5BC93C4();
  v68 = v162;
  v127 = v56;
  v69 = v179;
  MEMORY[0x1C694E150](v67, v56, 0, v61, v179, v152);
  v64(v61, v66);
  v70 = (*(v166 + 8))(v62, v69);
  MEMORY[0x1EEE9AC00](v70);
  v71 = v192;
  *(&v127 - 4) = v191;
  *(&v127 - 3) = v71;
  *(&v127 - 2) = v65;
  *(&v127 - 1) = v56;
  sub_1C5BCAA54();
  v72 = v132;
  v73 = v172;
  sub_1C5BCA2C4();
  (*(v165 + 8))(v68, v73);
  v74 = v129;
  sub_1C5BC9FC4();
  (*(v137 + 8))(v72, v74);
  v75 = v177;
  v76 = sub_1C5BCA864();
  v77 = v189;
  MEMORY[0x1C694EA50](v76);
  v78 = v190;
  v79 = *(v190 + 16);
  v172 = v190 + 16;
  v178 = v79;
  v80 = v185;
  (v79)(v185, v77, v75);
  v81 = v188;
  v82 = *(v188 + 16);
  v179 = v188 + 16;
  v180 = v82;
  v83 = v169;
  v84 = v170;
  v82(v169, v187, v170);
  v85 = *(v78 + 80);
  v86 = (v85 + 32) & ~v85;
  v87 = *(v81 + 80);
  v182 = v86;
  v88 = (v184 + v87 + v86) & ~v87;
  v184 = v85 | v87;
  v167 = v88;
  v89 = swift_allocObject();
  v91 = v191;
  v90 = v192;
  *(v89 + 16) = v191;
  *(v89 + 24) = v90;
  v92 = *(v78 + 32);
  v190 = v78 + 32;
  v183 = v92;
  (v92)(v89 + v86, v80, v75);
  v93 = v84;
  v181 = *(v81 + 32);
  v94 = v83;
  v95 = v83;
  v96 = v93;
  v181(v89 + v88, v94);
  v188 = v81 + 32;
  v97 = v176;
  v98 = v159;
  v99 = v175;
  sub_1C5BCA344();

  (Description)[1](v97, v91);
  (*(v156 + 8))(v99, v98);
  v100 = v75;
  v194 = *(&v189->Kind + *(v75 + 36));
  v101 = v185;
  v178(v185);
  v180(v95, v187, v96);
  v102 = v167;
  v103 = swift_allocObject();
  v104 = v192;
  *(v103 + 16) = v91;
  *(v103 + 24) = v104;
  (v183)(v103 + v182, v101, v75);
  (v181)(v103 + v102, v95, v96);

  swift_checkMetadataState();
  v105 = v155;
  v106 = v173;
  sub_1C5BCA344();

  (*(v150 + 8))(v106, v105);
  v107 = v189;
  v194 = sub_1C59C1CE8(v75);
  v195 = v108;
  LOBYTE(v196) = v109 & 1;
  v110 = v185;
  (v178)(v185, v107, v75);
  v180(v95, v187, v96);
  v111 = swift_allocObject();
  v112 = v192;
  *(v111 + 16) = v191;
  *(v111 + 24) = v112;
  (v183)(v111 + v182, v110, v100);
  (v181)(v111 + v102, v95, v96);
  v113 = v148;
  v114 = v158;
  v115 = v174;
  sub_1C5BCA344();

  (*(v153 + 8))(v115, v114);
  v194 = v128;
  v195 = v127;
  (v178)(v110, v189, v100);
  v180(v95, v187, v96);
  v116 = swift_allocObject();
  v117 = v192;
  *(v116 + 16) = v191;
  *(v116 + 24) = v117;
  (v183)(v116 + v182, v110, v100);
  (v181)(v116 + v102, v95, v96);
  v118 = v144;
  v119 = v161;
  v120 = v147;
  v121 = v146;
  sub_1C5BCA344();

  (*(v157 + 8))(v113, v119);
  v194 = v119;
  v195 = &type metadata for HorizontalMargins;
  v196 = v120;
  v197 = v121;
  v122 = swift_getOpaqueTypeConformance2();
  v123 = v145;
  v124 = v154;
  sub_1C593EDC0(v118, v154, v122);
  v125 = *(v149 + 8);
  v125(v118, v124);
  sub_1C593EDC0(v123, v124, v122);
  return (v125)(v123, v124);
}

uint64_t sub_1C59C4694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = sub_1C5BCA864();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - v8;
  v25[0] = a2;
  v25[1] = a3;
  v10 = type metadata accessor for ScopePicker.ScopeButtonsWithHighlight();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = sub_1C5BC8AB4();
  v28 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v26 = v25 - v17;
  v18 = type metadata accessor for ScopePicker();
  v19 = *(a1 + *(v18 + 36));
  sub_1C5BCA864();

  sub_1C5BCA834();
  sub_1C59C49B4(v19, v9, *(a1 + *(v18 + 40)), v12);

  sub_1C5BC98F4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  (*(v27 + 8))(v12, v10);
  v30 = WitnessTable;
  v31 = MEMORY[0x1E697E5D8];
  v21 = swift_getWitnessTable();
  v22 = v26;
  sub_1C593EDC0(v16, v13, v21);
  v23 = *(v28 + 8);
  v23(v16, v13);
  sub_1C593EDC0(v22, v13, v21);
  return (v23)(v22, v13);
}

uint64_t sub_1C59C49B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for ScopePicker.ScopeButtonsWithHighlight();
  v8 = *(v7 + 36);
  v9 = sub_1C5BCA864();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 40)] = a3;
  return result;
}

uint64_t sub_1C59C4A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v29 = a3;
  v28 = sub_1C5BCAB54();
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScopePicker.FadingView();
  swift_getWitnessTable();
  sub_1C5BC8874();
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  v12 = sub_1C5BC8AB4();
  v27 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v26 = &v26 - v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  v34 = sub_1C5BC8864();
  v35 = v18;
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC9FA4();

  v34 = v37;
  v35 = v38;
  v36 = v39;
  v20 = v28;
  (*(v9 + 104))(v11, *MEMORY[0x1E6981DC0], v28);
  v32 = WitnessTable;
  v33 = MEMORY[0x1E69805B0];
  v21 = swift_getWitnessTable();
  sub_1C5BCA394();
  (*(v9 + 8))(v11, v20);

  v30 = v21;
  v31 = MEMORY[0x1E697EBB8];
  v22 = swift_getWitnessTable();
  v23 = v26;
  sub_1C593EDC0(v15, v12, v22);
  v24 = *(v27 + 8);
  v24(v15, v12);
  sub_1C593EDC0(v23, v12, v22);
  return (v24)(v23, v12);
}

uint64_t sub_1C59C4DE0(double a1, double a2)
{
  sub_1C5BC86B4();
  *&v7[0] = v3;
  *(v7 + 1) = a2;
  v4 = type metadata accessor for ScopePicker.FadingView();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v7, v4, WitnessTable);
  v7[0] = v7[1];
  return sub_1C593EDC0(v7, v4, WitnessTable);
}

uint64_t sub_1C59C4E98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCA864();
  MEMORY[0x1C694EA50](v5);
  sub_1C5BCACE4();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_1C59C4FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = sub_1C5BC96A4();
  v118 = *(v3 - 8);
  v119 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v117 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v126 = v6;
  v127 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v129 = a1;
  v122 = sub_1C5BCA864();
  MEMORY[0x1EEE9AC00](v122);
  v109 = &v89 - v8;
  v9 = *(a1 + 24);
  v123 = v7;
  v10 = type metadata accessor for ScopePicker.ScopeButtons();
  v111 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v89 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192180);
  v12 = sub_1C5BC8AB4();
  v114 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v89 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192188);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v128 = v9;
  type metadata accessor for ScopePicker.ScopeButtonHighlight();
  swift_getWitnessTable();
  sub_1C5BC8474();
  sub_1C5BC8AB4();
  v107 = sub_1C5BC97C4();
  sub_1C5BC8AB4();
  v14 = sub_1C5BCB804();
  OpaqueTypeConformance2 = sub_1C59CD0B8();
  v112 = v10;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180);
  v102 = WitnessTable;
  v145 = WitnessTable;
  v146 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_1C5924F54(&qword_1EC192198, &qword_1EC192188);
  v143 = v17;
  v144 = v18;
  v141 = swift_getWitnessTable();
  v142 = MEMORY[0x1E69805B0];
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v139 = v19;
  v140 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v137 = v21;
  v138 = v22;
  v115 = v22;
  v136 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v147 = &type metadata for AnchorKey;
  v148 = v14;
  v108 = v14;
  v149 = OpaqueTypeConformance2;
  v150 = v23;
  v94 = v23;
  sub_1C5BC96E4();
  v116 = v12;
  v24 = sub_1C5BC8AB4();
  v96 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v95 = &v89 - v25;
  v26 = swift_getWitnessTable();
  v104 = v17;
  v134 = v17;
  v135 = v26;
  v27 = swift_getWitnessTable();
  v92 = v24;
  v147 = v24;
  v148 = v27;
  v97 = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v99 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v93 = &v89 - v29;
  v100 = v30;
  v98 = sub_1C5BC8AB4();
  v107 = *(v98 - 8);
  v31 = MEMORY[0x1EEE9AC00](v98);
  v101 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v103 = &v89 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v105 = &v89 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v106 = &v89 - v38;
  v39 = v123;
  v40 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v125;
  sub_1C59C4E98(v129);
  if (v44)
  {
    v90 = 0xE000000000000000;
    v91 = 0;
  }

  else
  {
    MEMORY[0x1C694EA50](v122);
    v45 = (*(v128 + 16))(v39);
    v90 = v46;
    v91 = v45;
    (*(v40 + 8))(v42, v39);
  }

  v47 = *v43;

  v48 = v109;
  sub_1C5BCA834();
  v49 = v110;
  v50 = v128;
  sub_1C59C5CF4(v47, v48, 0, v110);
  sub_1C59CD1DC(&v147);
  v51 = v151;
  v152 = v151;

  sub_1C59CD57C(&v147);
  v132 = v51;
  v52 = v112;
  v53 = v113;
  sub_1C5BC9F64();
  sub_1C5961F90(&v152);
  (*(v111 + 8))(v49, v52);
  v54 = v120;
  v55 = *(v120 + 16);
  v112 = v120 + 16;
  v122 = v55;
  v56 = v127;
  v57 = v129;
  v55(v127, v43, v129);
  v58 = *(v54 + 80);
  v59 = ((v58 + 32) & ~v58);
  v110 = v59;
  v111 = v58;
  v60 = swift_allocObject();
  *(v60 + 16) = v39;
  *(v60 + 24) = v50;
  v120 = *(v54 + 32);
  (v120)(&v59[v60], v56, v57);
  sub_1C5BCAA54();
  v61 = v95;
  v62 = v116;
  sub_1C5BCA144();

  (*(v114 + 8))(v53, v62);
  v63 = v117;
  sub_1C5BC9684();
  v64 = v92;
  v65 = v93;
  v66 = v97;
  sub_1C5BCA0C4();
  (*(v118 + 8))(v63, v119);
  (*(v96 + 8))(v61, v64);
  sub_1C5BC9024();
  v67 = sub_1C5BC9C94();
  v69 = v68;
  LOBYTE(v63) = v70;
  v132 = v64;
  v133 = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v100;
  v71 = v101;
  sub_1C5BCA024();
  sub_1C5953BD8(v67, v69, v63 & 1);

  (*(v99 + 8))(v65, v72);
  v132 = v91;
  v133 = v90;
  sub_1C594A23C();
  v73 = sub_1C5BC9CA4();
  v75 = v74;
  LOBYTE(v72) = v76;
  v77 = v103;
  v78 = v98;
  sub_1C5BC8A24();
  sub_1C5953BD8(v73, v75, v72 & 1);

  v79 = *(v107 + 8);
  v79(v71, v78);
  v80 = v127;
  v81 = v129;
  v122(v127, v125, v129);
  v82 = v110;
  v83 = swift_allocObject();
  v84 = v128;
  *(v83 + 16) = v123;
  *(v83 + 24) = v84;
  (v120)(&v82[v83], v80, v81);
  v85 = v105;
  sub_1C5BC8A94();

  v79(v77, v78);
  v130 = OpaqueTypeConformance2;
  v131 = v115;
  v86 = swift_getWitnessTable();
  v87 = v106;
  sub_1C593EDC0(v85, v78, v86);
  v79(v85, v78);
  sub_1C593EDC0(v87, v78, v86);
  return (v79)(v87, v78);
}

uint64_t sub_1C59C5CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for ScopePicker.ScopeButtons();
  v8 = *(v7 + 36);
  v9 = sub_1C5BCA864();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  a4[*(v7 + 40)] = a3;
  return result;
}

uint64_t sub_1C59C5D94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v138 = a2;
  v145 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = (&v113 - v9);
  v10 = type metadata accessor for ScopePicker.ScopeButtonHighlight();
  v133 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v132 = &v113 - v11;
  v12 = sub_1C5BCA864();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v117 = &v113 - v13;
  v137 = a4;
  v14 = type metadata accessor for ScopePicker.ScopeButtons();
  v119 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v113 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192180);
  v150 = v14;
  v16 = sub_1C5BC8AB4();
  v122 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v113 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192188);
  v149 = v16;
  v18 = sub_1C5BC8AB4();
  v123 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v121 = &v113 - v19;
  v148 = v20;
  v21 = sub_1C5BC8AB4();
  v128 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v113 - v22;
  WitnessTable = swift_getWitnessTable();
  v134 = v10;
  v124 = WitnessTable;
  v24 = sub_1C5BC8474();
  v144 = v21;
  v147 = v24;
  v25 = sub_1C5BC8AB4();
  v127 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v125 = &v113 - v26;
  sub_1C5BC97C4();
  v140 = v25;
  v27 = sub_1C5BC8AB4();
  v139 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v130 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v129 = &v113 - v30;
  v31 = sub_1C5BCB804();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v113 - v34;
  v36 = *(a3 - 8);
  v37 = MEMORY[0x1EEE9AC00](v33);
  v116 = &v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v136 = &v113 - v39;
  v146 = v27;
  v40 = sub_1C5BCB804();
  v142 = *(v40 - 8);
  v143 = v40;
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v113 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v141 = &v113 - v44;
  v45 = *a1;
  v46 = MEMORY[0x1E69805B0];
  if (v45)
  {
    v115 = v43;
    v47 = *v138;
    v191[0] = *v138;
    sub_1C5BCB144();
    v135 = v45;

    swift_getWitnessTable();
    sub_1C5BCB444();
    if ((*(v36 + 48))(v35, 1, a3) != 1)
    {
      v114 = v36;
      (*(v36 + 32))(v136, v35, a3);

      v58 = v117;
      sub_1C5BCA854();
      v59 = v118;
      sub_1C59C5CF4(v47, v58, 1, v118);
      sub_1C59CD1DC(v189);
      v60 = v190;
      v192 = v190;

      sub_1C59CD57C(v189);
      v191[0] = v60;
      v61 = v150;
      v62 = swift_getWitnessTable();
      v63 = v120;
      sub_1C5BC9F64();
      sub_1C5961F90(&v192);
      (*(v119 + 8))(v59, v61);
      LOBYTE(v60) = sub_1C5BC9884();
      sub_1C5BC8174();
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v71 = v70;
      sub_1C59CD1DC(v191);
      v72 = v191[7];

      sub_1C59CD57C(v191);
      v161 = v60;
      v162 = v65;
      v163 = v67;
      v164 = v69;
      v165 = v71;
      v166 = 0;
      v167 = v72;
      sub_1C5BCAA54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A8);
      v73 = sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180);
      v159 = v62;
      v160 = v73;
      v119 = MEMORY[0x1E697E858];
      v74 = v149;
      v75 = swift_getWitnessTable();
      sub_1C59CD7F4();
      v76 = v121;
      sub_1C5BC9D04();

      (*(v122 + 8))(v63, v74);
      v77 = sub_1C5924F54(&qword_1EC192198, &qword_1EC192188);
      v157 = v75;
      v158 = v77;
      v78 = v148;
      v79 = swift_getWitnessTable();
      v80 = v126;
      sub_1C5BC9FA4();
      (*(v123 + 8))(v76, v78);
      type metadata accessor for ScopePicker.ScopeButtonsWithHighlight();
      v81 = sub_1C5BCA864();
      v82 = v135;

      v83 = v116;
      MEMORY[0x1C694EA50](v81);
      v84 = v131;
      sub_1C59C6DF8(v131);
      v85 = v132;
      sub_1C59C6E58(v82, v83, v84, a3, v132);
      v155 = v79;
      v156 = MEMORY[0x1E69805B0];
      v86 = v144;
      v87 = swift_getWitnessTable();
      v88 = v125;
      v89 = v134;
      sub_1C5BCA214();
      (*(v133 + 8))(v85, v89);
      (*(v128 + 8))(v80, v86);
      v90 = swift_getWitnessTable();
      v153 = v87;
      v154 = v90;
      v91 = v140;
      v92 = swift_getWitnessTable();
      v93 = v130;
      sub_1C5BCA094();

      (*(v127 + 8))(v88, v91);
      (*(v114 + 8))(v136, a3);
      v94 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
      v151 = v92;
      v152 = v94;
      v95 = v146;
      v96 = swift_getWitnessTable();
      v97 = v129;
      sub_1C593EDC0(v93, v95, v96);
      v98 = v139;
      v99 = *(v139 + 8);
      v99(v93, v95);
      sub_1C593EDC0(v97, v95, v96);
      v99(v97, v95);
      v57 = v115;
      (*(v98 + 32))(v115, v93, v95);
      (*(v98 + 56))(v57, 0, 1, v95);
      goto LABEL_6;
    }

    (*(v32 + 8))(v35, v31);
    v46 = MEMORY[0x1E69805B0];
    v43 = v115;
  }

  (*(v139 + 56))(v43, 1, 1, v146);
  v48 = swift_getWitnessTable();
  v49 = sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180);
  v187 = v48;
  v188 = v49;
  v50 = v43;
  v51 = swift_getWitnessTable();
  v52 = sub_1C5924F54(&qword_1EC192198, &qword_1EC192188);
  v185 = v51;
  v186 = v52;
  v183 = swift_getWitnessTable();
  v184 = v46;
  v53 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  v181 = v53;
  v182 = v54;
  v55 = swift_getWitnessTable();
  v56 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v179 = v55;
  v57 = v50;
  v180 = v56;
  swift_getWitnessTable();
LABEL_6:
  v100 = v141;
  sub_1C5941600(v57, v141);
  v101 = v143;
  v102 = *(v142 + 8);
  v102(v57, v143);
  v103 = swift_getWitnessTable();
  v104 = sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180);
  v177 = v103;
  v178 = v104;
  v105 = swift_getWitnessTable();
  v106 = sub_1C5924F54(&qword_1EC192198, &qword_1EC192188);
  v175 = v105;
  v176 = v106;
  v173 = swift_getWitnessTable();
  v174 = MEMORY[0x1E69805B0];
  v107 = swift_getWitnessTable();
  v108 = swift_getWitnessTable();
  v171 = v107;
  v172 = v108;
  v109 = swift_getWitnessTable();
  v110 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v169 = v109;
  v170 = v110;
  v168 = swift_getWitnessTable();
  v111 = swift_getWitnessTable();
  sub_1C593EDC0(v100, v101, v111);
  return (v102)(v100, v101);
}

uint64_t sub_1C59C6DF8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C59C6E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for ScopePicker.ScopeButtonHighlight();
  (*(*(a4 - 8) + 32))(&a5[*(v9 + 36)], a2, a4);
  v10 = &a5[*(v9 + 40)];

  return sub_1C59CD98C(a3, v10);
}

uint64_t sub_1C59C6F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BC97E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x1E697CC28], v7);
  v11 = sub_1C5BC97D4();
  (*(v8 + 8))(v10, v7);
  v12 = type metadata accessor for ScopePicker.ScopeButtonsWithHighlight();
  result = sub_1C59C4E98(v12);
  if ((v14 & 1) == 0)
  {
    v15 = 1;
    if ((v11 & 1) == 0)
    {
      v15 = -1;
    }

    if (__OFADD__(result, v15))
    {
      __break(1u);
    }

    else
    {
      result = sub_1C5BCB0F4();
      if (!__OFSUB__(result, 1))
      {
        sub_1C5BCB174();
        sub_1C59CEE68(v6, v12);
        return (*(v4 + 8))(v6, a3);
      }
    }

    __break(1u);
  }

  return result;
}

__n128 sub_1C59C7118@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v46 = a1;
  *(&v46 + 1) = a2;
  sub_1C594A23C();

  v4 = sub_1C5BC9CA4();
  v6 = v5;
  v8 = v7;
  sub_1C59CD1DC(v41);

  sub_1C59CD57C(v41);
  v9 = sub_1C5BC9C14();
  v11 = v10;
  v13 = v12;

  sub_1C5953BD8(v4, v6, v8 & 1);

  v14 = sub_1C5BC9B44();
  v38 = v15;
  v39 = v14;
  v17 = v16;
  v19 = v18;
  sub_1C5953BD8(v9, v11, v13 & 1);

  LOBYTE(v6) = sub_1C5BC9884();
  sub_1C59CD1DC(v42);
  sub_1C59CD57C(v42);
  sub_1C5BC8174();
  v36 = v21;
  v37 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v9) = v17 & 1;
  LOBYTE(v46) = v17 & 1;
  v45[0] = 0;
  v26 = sub_1C5BC98F4();
  sub_1C59CD1DC(v43);
  sub_1C59CD57C(v43);
  sub_1C5BC8174();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1C59CD1DC(v44);
  sub_1C59CD57C(v44);
  sub_1C59CD1DC(v45);
  sub_1C59CD57C(v45);
  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  *&v40[55] = v49;
  *&v40[71] = v50;
  *&v40[87] = v51;
  *&v40[103] = v52;
  *&v40[7] = v46;
  *&v40[23] = v47;
  *&v40[39] = v48;
  *a3 = v39;
  *(a3 + 8) = v38;
  *(a3 + 16) = v9;
  *(a3 + 24) = v19;
  *(a3 + 32) = v6;
  *(a3 + 40) = v37;
  *(a3 + 48) = v36;
  *(a3 + 56) = v23;
  *(a3 + 64) = v25;
  *(a3 + 72) = 0;
  *(a3 + 80) = v26;
  *(a3 + 88) = v28;
  *(a3 + 96) = v30;
  *(a3 + 104) = v32;
  *(a3 + 112) = v34;
  *(a3 + 120) = 0;
  *(a3 + 185) = *&v40[64];
  *(a3 + 201) = *&v40[80];
  *(a3 + 217) = *&v40[96];
  *(a3 + 232) = *&v40[111];
  *(a3 + 121) = *v40;
  *(a3 + 137) = *&v40[16];
  result = *&v40[32];
  *(a3 + 153) = *&v40[32];
  *(a3 + 169) = *&v40[48];
  return result;
}

uint64_t sub_1C59C745C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = *(a1 + 16);
  v22 = sub_1C5BCB144();
  v25 = *(a1 + 24);
  v26 = v3;
  type metadata accessor for ScopePicker.ButtonLabel();
  sub_1C5BC8AB4();
  type metadata accessor for ScopePicker.AnchorPreference();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  sub_1C5BC8AB4();
  v21 = sub_1C5BC92D4();
  v47 = WitnessTable;
  v48 = sub_1C5953670();
  v5 = MEMORY[0x1E697E858];
  v45 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v20[1] = v5;
  v41 = WitnessTable;
  v42 = swift_getWitnessTable();
  v39 = WitnessTable;
  v40 = v46;
  v37 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BCA6F4();
  swift_getWitnessTable();
  v21 = *(v25 + 8);
  sub_1C5BCA724();
  sub_1C5BC8B34();
  swift_getWitnessTable();
  sub_1C59CEDB8(&qword_1EC192338, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192340);
  v6 = sub_1C5BC8AB4();
  v7 = sub_1C5BC92F4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_1C5924F54(&qword_1EC192348, &qword_1EC192340);
  v8 = swift_getWitnessTable();
  v9 = sub_1C59CEDB8(&qword_1EC192350, MEMORY[0x1E697C688]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  v49[4] = v21;
  sub_1C5BCA8C4();
  v49[0] = v6;
  v49[1] = v7;
  v49[2] = v8;
  v49[3] = v9;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v31 = swift_getWitnessTable();
  v32 = v34;
  v30 = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_1C5BCA714();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  sub_1C59CD1DC(v49);
  sub_1C59CD57C(v49);
  v27 = v26;
  v28 = v25;
  v29 = v23;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  v17 = swift_getWitnessTable();
  sub_1C593EDC0(v14, v10, v17);
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_1C593EDC0(v16, v10, v17);
  return (v18)(v16, v10);
}

uint64_t sub_1C59C7B14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a1;
  v63 = a4;
  v64 = a2;
  v67 = a3;
  v62 = type metadata accessor for ScopePicker.ScopeButtons();
  v59 = *(v62 - 8);
  v61 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v58 = v48 - v4;
  v66 = sub_1C5BCB144();
  type metadata accessor for ScopePicker.ButtonLabel();
  sub_1C5BC8AB4();
  type metadata accessor for ScopePicker.AnchorPreference();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  v6 = sub_1C5953670();
  v93 = WitnessTable;
  v94 = v6;
  v7 = MEMORY[0x1E697E858];
  v8 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v91 = v8;
  v92 = v9;
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v89 = v10;
  v90 = v11;
  v12 = swift_getWitnessTable();
  v87 = WitnessTable;
  v88 = v12;
  v13 = swift_getWitnessTable();
  v85 = WitnessTable;
  v86 = v9;
  v57 = v7;
  v14 = swift_getWitnessTable();
  v83 = v13;
  v84 = v14;
  swift_getWitnessTable();
  v15 = sub_1C5BCA6F4();
  v16 = swift_getWitnessTable();
  v65 = *(v67 + 8);
  v76 = v15;
  v77 = v64;
  v78 = v16;
  v79 = v65;
  v17 = sub_1C5BCA724();
  v18 = sub_1C5BC8B34();
  v19 = swift_getWitnessTable();
  v20 = sub_1C59CEDB8(&qword_1EC192338, MEMORY[0x1E697C248]);
  v76 = v17;
  v77 = v18;
  v78 = v19;
  v79 = v20;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192340);
  v21 = sub_1C5BC8AB4();
  v22 = sub_1C5BC92F4();
  v51 = v22;
  v76 = v17;
  v77 = v18;
  v78 = v19;
  v79 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_1C5924F54(&qword_1EC192348, &qword_1EC192340);
  v81 = OpaqueTypeConformance2;
  v82 = v24;
  v52 = v21;
  v25 = swift_getWitnessTable();
  v50 = v25;
  v49 = sub_1C59CEDB8(&qword_1EC192350, MEMORY[0x1E697C688]);
  v76 = v21;
  v77 = v22;
  v78 = v25;
  v79 = v49;
  v48[1] = MEMORY[0x1E697CDE0];
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC97C4();
  v53 = sub_1C5BC8AB4();
  v26 = sub_1C5BC8AB4();
  v48[2] = v26;
  v27 = v66;
  v55 = swift_getWitnessTable();
  v28 = v64;
  v76 = v27;
  v77 = v64;
  v78 = v26;
  v79 = v55;
  v80 = v65;
  v29 = sub_1C5BCA8C4();
  v56 = *(v29 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v54 = v48 - v33;
  v34 = v60;
  v75 = *v60;
  v68 = v28;
  v35 = v67;
  v69 = v67;
  v48[0] = swift_getKeyPath();
  v36 = v59;
  v37 = v58;
  v38 = v62;
  (*(v59 + 16))(v58, v34, v62);
  v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v28;
  *(v40 + 24) = v35;
  (*(v36 + 32))(v40 + v39, v37, v38);

  v76 = v52;
  v77 = v51;
  v78 = v50;
  v79 = v49;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v73 = v41;
  v74 = v42;
  v71 = swift_getWitnessTable();
  v72 = v42;
  v47 = swift_getWitnessTable();
  sub_1C5BCA8A4();
  v70 = v47;
  v43 = swift_getWitnessTable();
  v44 = v54;
  sub_1C593EDC0(v32, v29, v43);
  v45 = *(v56 + 8);
  v45(v32, v29);
  sub_1C593EDC0(v44, v29, v43);
  return (v45)(v44, v29);
}

uint64_t sub_1C59C83B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a3;
  v153 = a2;
  v155 = a1;
  v147 = a5;
  v154 = sub_1C5BC92F4();
  v146 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v145 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1C5BCA874();
  MEMORY[0x1EEE9AC00](v144);
  v141 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1C5BC8C04();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v140 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1C5BC8B34();
  v139 = *(v149 - 8);
  v10 = MEMORY[0x1EEE9AC00](v149);
  v138 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = *(a3 - 8);
  v137 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v152 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = a4;
  v151 = type metadata accessor for ScopePicker.ScopeButtons();
  v150 = *(v151 - 8);
  v135 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v134 = &v101 - v13;
  type metadata accessor for ScopePicker.ButtonLabel();
  sub_1C5BC8AB4();
  type metadata accessor for ScopePicker.AnchorPreference();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  sub_1C5BC8AB4();
  v15 = sub_1C5BC92D4();
  v16 = sub_1C5953670();
  v182 = WitnessTable;
  v183 = v16;
  v17 = MEMORY[0x1E697E858];
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v180 = v18;
  v181 = v19;
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v178 = v20;
  v179 = v21;
  v22 = swift_getWitnessTable();
  v176 = WitnessTable;
  v177 = v22;
  v23 = swift_getWitnessTable();
  v174 = WitnessTable;
  v175 = v19;
  v133 = v17;
  v24 = swift_getWitnessTable();
  v172 = v23;
  v173 = v24;
  v123 = v15;
  v122 = swift_getWitnessTable();
  v25 = sub_1C5BCA6F4();
  v117 = v25;
  v126 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v118 = &v101 - v26;
  v116 = swift_getWitnessTable();
  v115 = *(v156 + 8);
  v27 = v101;
  v169[0] = v25;
  v169[1] = v101;
  v170 = v116;
  v171 = v115;
  v28 = sub_1C5BCA724();
  v120 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v109 = &v101 - v29;
  v31 = v30;
  v32 = swift_getWitnessTable();
  v33 = sub_1C59CEDB8(&qword_1EC192338, MEMORY[0x1E697C248]);
  v34 = v31;
  v102 = v31;
  v35 = v149;
  v169[0] = v31;
  v169[1] = v149;
  v170 = v32;
  v171 = v33;
  v104 = v32;
  v36 = v33;
  v103 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v124 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v105 = &v101 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192340);
  v38 = sub_1C5BC8AB4();
  v129 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v107 = &v101 - v39;
  v169[0] = v34;
  v169[1] = v35;
  v170 = v32;
  v171 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = OpaqueTypeConformance2;
  v41 = sub_1C5924F54(&qword_1EC192348, &qword_1EC192340);
  v167 = OpaqueTypeConformance2;
  v168 = v41;
  v112 = v38;
  v42 = swift_getWitnessTable();
  v111 = v42;
  v110 = sub_1C59CEDB8(&qword_1EC192350, MEMORY[0x1E697C688]);
  v169[0] = v38;
  v169[1] = v154;
  v170 = v42;
  v171 = v110;
  v119 = MEMORY[0x1E697CDE0];
  v114 = swift_getOpaqueTypeMetadata2();
  v121 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v148 = &v101 - v43;
  sub_1C5BC97C4();
  v127 = sub_1C5BC8AB4();
  v131 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v108 = &v101 - v44;
  v130 = sub_1C5BC8AB4();
  v132 = *(v130 - 8);
  v45 = MEMORY[0x1EEE9AC00](v130);
  v125 = &v101 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v128 = &v101 - v47;
  v48 = v150;
  v49 = v134;
  v50 = v153;
  v51 = v151;
  (*(v150 + 16))(v134, v153, v151);
  v52 = v136;
  v53 = v152;
  (*(v136 + 16))(v152, v155, v27);
  v54 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v55 = (v135 + *(v52 + 80) + v54) & ~*(v52 + 80);
  v56 = swift_allocObject();
  v57 = v156;
  *(v56 + 16) = v27;
  *(v56 + 24) = v57;
  (*(v150 + 32))(v56 + v54, v49, v51);
  (*(v52 + 32))(v56 + v55, v53, v27);
  v157 = v27;
  v158 = v57;
  v159 = v50;
  v160 = v155;
  v58 = v118;
  sub_1C5BCA6E4();
  v59 = v109;
  v60 = v117;
  sub_1C5BCA1C4();
  (*(v126 + 8))(v58, v60);
  v61 = v138;
  sub_1C5BC8B24();
  v62 = v105;
  v63 = v102;
  v64 = v149;
  sub_1C5BC9DA4();
  (*(v139 + 8))(v61, v64);
  (*(v120 + 8))(v59, v63);
  v65 = v140;
  sub_1C5BC8BF4();
  v66 = *MEMORY[0x1E697F468];
  v67 = sub_1C5BC9044();
  v68 = v141;
  (*(*(v67 - 8) + 104))(v141, v66, v67);
  sub_1C59CEDB8(qword_1EC192358, MEMORY[0x1E6981998]);
  v69 = v107;
  v70 = OpaqueTypeMetadata2;
  sub_1C5BC9E94();
  sub_1C59CEE00(v68);
  (*(v142 + 8))(v65, v143);
  (*(v124 + 8))(v62, v70);
  v71 = v145;
  sub_1C5BC8C64();
  v72 = sub_1C5BCA864();
  v73 = v152;
  MEMORY[0x1C694EA50](v72);
  v74 = v27;
  sub_1C5BCADB4();
  (*(v52 + 8))(v73, v27);
  v75 = v112;
  v76 = v154;
  v77 = v111;
  v78 = v110;
  sub_1C5BC9E04();
  (*(v146 + 8))(v71, v76);
  (*(v129 + 8))(v69, v75);
  v79 = *(v156 + 16);
  v165 = v79(v74);
  v166 = v80;
  v169[0] = v75;
  v169[1] = v76;
  v170 = v77;
  v171 = v78;
  v81 = swift_getOpaqueTypeConformance2();
  sub_1C594A23C();
  v82 = v108;
  v83 = v114;
  v84 = v148;
  sub_1C5BCA034();

  (*(v121 + 8))(v84, v83);
  strcpy(v169, "scopeButton.");
  BYTE5(v169[1]) = 0;
  HIWORD(v169[1]) = -5120;
  v85 = (v79)(v74, v156);
  v87 = sub_1C5AC4A94(v85, v86);
  v89 = v88;

  MEMORY[0x1C694F170](v87, v89);

  v90 = v169[0];
  v91 = v169[1];
  v92 = sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v163 = v81;
  v164 = v92;
  v93 = v127;
  v94 = swift_getWitnessTable();
  v95 = v125;
  sub_1C595BB1C(v90, v91);

  (*(v131 + 8))(v82, v93);
  v161 = v94;
  v162 = v92;
  v96 = v130;
  v97 = swift_getWitnessTable();
  v98 = v128;
  sub_1C593EDC0(v95, v96, v97);
  v99 = *(v132 + 8);
  v99(v95, v96);
  sub_1C593EDC0(v98, v96, v97);
  return (v99)(v98, v96);
}

uint64_t sub_1C59C9600@<X0>(uint64_t *a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v120 = a5;
  v121 = a2;
  v8 = type metadata accessor for ScopePicker.ButtonLabel();
  v9 = sub_1C5BC8AB4();
  v10 = type metadata accessor for ScopePicker.AnchorPreference();
  v123 = v9;
  v11 = sub_1C5BC8AB4();
  v101 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v98 - v12;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C5BC8BE4();
  v127 = v11;
  v14 = sub_1C5BC8AB4();
  v103 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v102 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v113 = &v98 - v18;
  v106 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C5BCA864();
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v104 = &v98 - v22;
  v110 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v109 = &v98 - v23;
  v124 = v10;
  v24 = sub_1C5BC8AB4();
  v100 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v108 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v107 = &v98 - v27;
  v118 = v14;
  v28 = sub_1C5BC92D4();
  v115 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v114 = &v98 - v29;
  v126 = v24;
  v30 = sub_1C5BC92D4();
  v116 = *(v30 - 8);
  v117 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v125 = &v98 - v31;
  sub_1C59CD1DC(v182);
  sub_1C59CD57C(v182);
  v32 = v183;
  v33 = v184;
  v34 = *(type metadata accessor for ScopePicker.ScopeButtons() + 40);
  v111 = a1;
  LODWORD(v34) = *(a1 + v34);
  v122 = v13;
  if (v34 == 1)
  {
    v152 = (*(a4 + 16))(a3, a4);
    v153 = v35;
    v154 = v32;
    v155 = v33;
    v36 = WitnessTable;
    sub_1C593EDC0(&v152, v8, WitnessTable);

    v138 = v178;
    v139 = v179;
    v140 = v180;
    v141 = v181;
    sub_1C593EDC0(&v138, v8, v36);

    v138 = v152;
    v139 = v153;
    v140 = v154;
    v141 = v155;
    v37 = sub_1C5953670();
    v136 = v36;
    v137 = v37;
    v38 = swift_getWitnessTable();
    v39 = swift_getWitnessTable();
    v134 = v38;
    v135 = v39;
    v40 = swift_getWitnessTable();
    v41 = swift_getWitnessTable();
    v132 = v40;
    v133 = v41;
    v42 = swift_getWitnessTable();
    v43 = v114;
    sub_1C5950E54(&v138, v8);

    v130 = v36;
    v131 = v42;
    swift_getWitnessTable();
    v128 = v36;
    v129 = v39;
    swift_getWitnessTable();
    sub_1C5950E54(v43, v28);
    (*(v115 + 8))(v43, v28);
  }

  else
  {
    v99 = v28;
    if (v33)
    {
      v44 = v121;
      v178 = (*(a4 + 16))(a3, a4);
      v179 = v45;
      v180 = v32;
      v181 = 1;
      sub_1C5BCA864();
      v46 = v104;
      sub_1C5BCA834();
      v47 = v105;
      (*(v106 + 16))(v105, v44, a3);
      v48 = v109;
      sub_1C59CA438(v46, v47, a3, v109);
      v49 = v108;
      v50 = v8;
      v51 = v124;
      v36 = WitnessTable;
      MEMORY[0x1C694E550](v48, v50, v124, WitnessTable);
      (*(v110 + 8))(v48, v51);

      v52 = swift_getWitnessTable();
      v176 = v36;
      v177 = v52;
      v53 = v126;
      v54 = swift_getWitnessTable();
      v55 = v107;
      sub_1C593EDC0(v49, v53, v54);
      v121 = *(v100 + 8);
      v121(v49, v53);
      sub_1C593EDC0(v55, v53, v54);
      v56 = sub_1C5953670();
      v174 = v36;
      v175 = v56;
      v172 = swift_getWitnessTable();
      v173 = v52;
      v57 = swift_getWitnessTable();
      v58 = swift_getWitnessTable();
      v170 = v57;
      v171 = v58;
      v59 = swift_getWitnessTable();
      v168 = v36;
      v169 = v59;
      v60 = v99;
      swift_getWitnessTable();
      v61 = v108;
      sub_1C5941738(v108, v60, v53);
      v62 = v121;
      v121(v61, v53);
      v62(v107, v53);
    }

    else
    {
      v63 = v121;
      v152 = (*(a4 + 16))(a3, a4);
      v153 = v64;
      v154 = v32;
      v155 = 0;
      v98 = v8;
      v36 = WitnessTable;
      sub_1C5BCA254();

      v152 = v178;
      v153 = v179;
      v154 = v180;
      v155 = v181;
      sub_1C5BCA864();
      v65 = v104;
      sub_1C5BCA834();
      v66 = v105;
      (*(v106 + 16))(v105, v63, a3);
      v67 = v109;
      sub_1C59CA438(v65, v66, a3, v109);
      v68 = sub_1C5953670();
      v150 = v36;
      v151 = v68;
      v69 = v123;
      v70 = swift_getWitnessTable();
      v71 = v69;
      v72 = v124;
      MEMORY[0x1C694E550](v67, v71, v124, v70);
      (*(v110 + 8))(v67, v72);

      v111 = &v98;
      MEMORY[0x1EEE9AC00](v73);
      *(&v98 - 4) = a3;
      *(&v98 - 3) = a4;
      *(&v98 - 2) = v121;
      sub_1C5BCAA54();
      v121 = swift_getWitnessTable();
      v148 = v70;
      v149 = v121;
      v74 = v127;
      v75 = swift_getWitnessTable();
      v76 = v102;
      v77 = v98;
      v78 = v112;
      sub_1C5BCA2C4();
      (*(v101 + 8))(v78, v74);
      v79 = swift_getWitnessTable();
      v146 = v75;
      v147 = v79;
      v80 = v118;
      v81 = swift_getWitnessTable();
      v82 = v113;
      sub_1C593EDC0(v76, v80, v81);
      v112 = *(v103 + 8);
      (v112)(v76, v80);
      sub_1C593EDC0(v82, v80, v81);
      v83 = v114;
      sub_1C5941738(v76, v77, v80);
      v144 = v36;
      v145 = v81;
      v84 = v99;
      swift_getWitnessTable();
      v142 = v36;
      v143 = v121;
      swift_getWitnessTable();
      sub_1C5950E54(v83, v84);
      (*(v115 + 8))(v83, v84);
      v85 = v112;
      (v112)(v76, v80);
      v85(v113, v80);
    }
  }

  v86 = sub_1C5953670();
  v166 = v36;
  v167 = v86;
  v87 = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  v164 = v87;
  v165 = v88;
  v89 = swift_getWitnessTable();
  v90 = swift_getWitnessTable();
  v162 = v89;
  v163 = v90;
  v91 = swift_getWitnessTable();
  v160 = v36;
  v161 = v91;
  v92 = swift_getWitnessTable();
  v158 = v36;
  v159 = v88;
  v93 = swift_getWitnessTable();
  v156 = v92;
  v157 = v93;
  v94 = v117;
  v95 = swift_getWitnessTable();
  v96 = v125;
  sub_1C593EDC0(v125, v94, v95);
  return (*(v116 + 8))(v96, v94);
}

uint64_t sub_1C59CA438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C5BCA864();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for ScopePicker.AnchorPreference();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a2, a3);
}

uint64_t sub_1C59CA50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(a3 + 16))(a2, a3);
  v8 = v3;
  v9 = 0;
  v10 = 1;
  v4 = type metadata accessor for ScopePicker.ButtonLabel();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v7, v4, WitnessTable);

  v7 = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;
  sub_1C593EDC0(&v7, v4, WitnessTable);
}

uint64_t sub_1C59CA600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1924F8);
  v7 = sub_1C5BC8AB4();
  v21 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  sub_1C5BCA6D4();
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v5 + 32))(v14 + v13, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  type metadata accessor for CGRect(0);
  WitnessTable = swift_getWitnessTable();
  sub_1C59CD0B8();
  sub_1C5BC9FB4();

  v16 = sub_1C5924F54(&qword_1EC192500, &qword_1EC1924F8);
  v24 = WitnessTable;
  v25 = v16;
  v17 = swift_getWitnessTable();
  sub_1C593EDC0(v10, v7, v17);
  v18 = *(v21 + 8);
  v18(v10, v7);
  sub_1C593EDC0(v12, v7, v17);
  return (v18)(v12, v7);
}

uint64_t sub_1C59CA940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScopePicker.AnchorPreference();
  v9 = sub_1C5BCA864();
  MEMORY[0x1C694EA50](v9);
  v10 = sub_1C5BCADB4();
  result = (*(v6 + 8))(v8, a2);
  v12 = 0;
  if (v10)
  {

    v12 = a1;
  }

  *a3 = v12;
  return result;
}

uint64_t sub_1C59CAA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C59400B0(v2 + *(a1 + 40), &v15 - v10, &qword_1EC1921C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C5BC89D4();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C59CAC7C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v6 = *(a1 + 24);
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 24) = v6;
  (*(v2 + 32))(v5 + v4, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for ScopePicker.ScopeButtonHighlightCapsule();
  sub_1C5BC9074();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  v15 = WitnessTable;
  v16 = v8;
  swift_getWitnessTable();
  v13 = sub_1C5BC8864();
  v14 = v9;
  v10 = sub_1C5BC8874();
  v11 = swift_getWitnessTable();
  sub_1C593EDC0(&v13, v10, v11);

  v13 = v17;
  v14 = v18;
  sub_1C593EDC0(&v13, v10, v11);
}

uint64_t sub_1C59CAED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a5;
  v9 = type metadata accessor for ScopePicker.ScopeButtonHighlightCapsule();
  v43 = *(*(a4 + 8) + 8);
  v44 = v9;
  v47 = sub_1C5BC9074();
  v10 = sub_1C5BC8AB4();
  v49 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v42 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = v41 - v13;
  v14 = sub_1C5BC89D4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v41 - v19;
  type metadata accessor for CGRect(0);
  v41[1] = a1;
  sub_1C5BC86F4();
  v21 = v53;
  v22 = v54;
  v23 = v55;
  v24 = v56;
  v48 = a3;
  v25 = type metadata accessor for ScopePicker.ScopeButtonHighlight();
  v46 = a2;
  sub_1C59CAA74(v25, v20);
  (*(v15 + 104))(v18, *MEMORY[0x1E697E7D0], v14);
  v26 = sub_1C5BC89C4();
  v27 = *(v15 + 8);
  v27(v18, v14);
  v27(v20, v14);
  if (v26)
  {
    v57.origin.x = v21;
    v57.origin.y = v22;
    v57.size.width = v23;
    v57.size.height = v24;
    MinX = CGRectGetMinX(v57);
  }

  else
  {
    sub_1C5BC86C4();
    v30 = v29;
    v58.origin.x = v21;
    v58.origin.y = v22;
    v58.size.width = v23;
    v58.size.height = v24;
    MinX = v30 - CGRectGetMaxX(v58);
  }

  v59.origin.x = v21;
  v59.origin.y = v22;
  v59.size.width = v23;
  v59.size.height = v24;
  MinY = CGRectGetMinY(v59);
  v60.origin.x = v21;
  v60.origin.y = v22;
  v60.size.width = v23;
  v60.size.height = v24;
  Width = CGRectGetWidth(v60);
  v61.origin.x = v21;
  v61.origin.y = v22;
  v61.size.width = v23;
  v61.size.height = v24;
  Height = CGRectGetHeight(v61);
  v53 = MinX;
  v54 = MinY;
  v55 = Width;
  v56 = Height;
  MEMORY[0x1C694ED40](0.25, 0.8, 0.0);
  WitnessTable = swift_getWitnessTable();
  v35 = v42;
  sub_1C5BCA384();

  v36 = swift_getWitnessTable();
  v51 = WitnessTable;
  v52 = v36;
  v37 = swift_getWitnessTable();
  v38 = v45;
  sub_1C593EDC0(v35, v10, v37);
  v39 = *(v49 + 8);
  v39(v35, v10);
  sub_1C593EDC0(v38, v10, v37);
  return (v39)(v38, v10);
}

double sub_1C59CB33C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1C5BC9044();
  (*(*(v7 - 8) + 104))(a1, v6, v7);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1924E0) + 36)) = 256;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1924E8) + 36));
  *v8 = a2;
  v8[1] = a3;
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1924F0) + 36));
  *v9 = v11;
  v9[1] = v12;
  result = *&v13;
  v9[2] = v13;
  return result;
}

double sub_1C59CB480@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C5BC8FC4();
  v19 = 1;
  sub_1C59CB5E8(&v11);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v28 = v17;
  sub_1C59400B0(&v20, &v10, &qword_1EC1921D0);
  sub_1C5924EF4(v27, &qword_1EC1921D0);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[103] = v26;
  *&v18[39] = v22;
  v3 = v19;
  v4 = sub_1C5BC8AC4();
  v5 = sub_1C5BC9894();
  v6 = *&v18[32];
  *(a1 + 65) = *&v18[48];
  v7 = *&v18[80];
  *(a1 + 81) = *&v18[64];
  *(a1 + 97) = v7;
  *(a1 + 112) = *&v18[95];
  result = *v18;
  v9 = *&v18[16];
  *(a1 + 17) = *v18;
  *(a1 + 33) = v9;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 49) = v6;
  *(a1 + 128) = v4;
  *(a1 + 136) = v5;
  return result;
}

uint64_t sub_1C59CB5E8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921D8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BD21E0;
  sub_1C5BCA474();
  sub_1C5BCA4B4();

  *(v2 + 32) = sub_1C5BCA984();
  *(v2 + 40) = v3;
  sub_1C5BCA474();
  *(v2 + 48) = sub_1C5BCA984();
  *(v2 + 56) = v4;
  sub_1C5BCA474();
  *(v2 + 64) = sub_1C5BCA984();
  *(v2 + 72) = v5;
  sub_1C5BCA994();
  sub_1C5BCABE4();
  sub_1C5BCABF4();
  sub_1C5BC88B4();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v6 = v23;
  v25[4] = v23;
  v7 = v20;
  v8 = v19;
  v25[0] = v19;
  v25[1] = v20;
  *&v17[23] = v20;
  *&v17[7] = v19;
  *&v17[71] = v23;
  v9 = v21;
  v10 = v22;
  v25[2] = v21;
  v25[3] = v22;
  *&v17[55] = v22;
  *&v17[39] = v21;
  v11 = v24;
  v12 = v24;
  *&v17[87] = v24;
  *(a1 + 41) = *&v17[32];
  v13 = *&v17[64];
  *(a1 + 57) = *&v17[48];
  *(a1 + 73) = v13;
  *(a1 + 88) = *&v17[79];
  v14 = *&v17[16];
  *(a1 + 9) = *v17;
  *(a1 + 25) = v14;
  v18 = 0;
  v26 = v11;
  *(a1 + 8) = 0;
  *a1 = 0;
  v27[0] = v8;
  v27[1] = v7;
  v28 = v12;
  v27[3] = v10;
  v27[4] = v6;
  v27[2] = v9;
  sub_1C59400B0(v25, &v16, &qword_1EC1921E0);
  return sub_1C5924EF4(v27, &qword_1EC1921E0);
}

uint64_t sub_1C59CB814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5924F54(&qword_1EC192328, &qword_1EC192330);

  return MEMORY[0x1EEDDE438](a1, a2, v4);
}

void *sub_1C59CB894(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

void sub_1C59CB910(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1C59CB920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C59CC000();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C59CB984()
{
  sub_1C59CDD54();
  sub_1C5BC8F44();
  return v1;
}

uint64_t MCUINamespace<A>.scopePickerHorizontalMargins(_:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v3, v6);
  swift_getKeyPath();
  if (a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1;
  }

  v12[1] = v10;
  v12[2] = v10;
  v13 = a2 & 1;
  sub_1C5BC9DF4();

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1C59CBB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BCAD34();

  return sub_1C59CBB5C(a1, v6, a2, a3);
}

unint64_t sub_1C59CBB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1C5BCADB4();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1C59CBCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1C5BCB0F4())
  {
    sub_1C5BCBC84();
    v13 = sub_1C5BCBC74();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1C5BCB0F4();
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
        if (sub_1C5BCB0D4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1C5BCBAD4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1C59CBB00(v12, a2, v27);
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

unint64_t sub_1C59CC000()
{
  result = qword_1EC191F88;
  if (!qword_1EC191F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F80);
    sub_1C59CC084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191F88);
  }

  return result;
}

unint64_t sub_1C59CC084()
{
  result = qword_1EC191F90;
  if (!qword_1EC191F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191F90);
  }

  return result;
}

uint64_t sub_1C59CC0D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C59CC110()
{
  result = qword_1EC191FB8;
  if (!qword_1EC191FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191FB0);
    sub_1C59CC19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191FB8);
  }

  return result;
}

unint64_t sub_1C59CC19C()
{
  result = qword_1EC191FC0;
  if (!qword_1EC191FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191FC8);
    sub_1C59CC228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191FC0);
  }

  return result;
}

unint64_t sub_1C59CC228()
{
  result = qword_1EC191FD0;
  if (!qword_1EC191FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191FD0);
  }

  return result;
}

void sub_1C59CC2D4()
{
  sub_1C5BCA864();
  if (v0 <= 0x3F)
  {
    sub_1C5BCB144();
    if (v1 <= 0x3F)
    {
      sub_1C5BCACD4();
      if (v2 <= 0x3F)
      {
        sub_1C59CE4D8(319, &qword_1EC192060, type metadata accessor for MinimumLayoutMargins, MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          sub_1C59CCAF8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C59CC3F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  if (v11 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = ((v12 + 16) & ~v12) + *(v6 + 64);
  v15 = *(v10 + 80) & 0xF8;
  v16 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + 15;
  if (a2 <= v13)
  {
    goto LABEL_23;
  }

  v18 = ((*(*(v9 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v17 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v16) + 26;
  v19 = 8 * v18;
  if (v18 > 3)
  {
    goto LABEL_10;
  }

  v22 = ((a2 - v13 + ~(-1 << v19)) >> v19) + 1;
  if (HIWORD(v22))
  {
    v20 = *(a1 + v18);
    if (!v20)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v22 > 0xFF)
  {
    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v22 >= 2)
  {
LABEL_10:
    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_23;
    }

LABEL_18:
    v23 = (v20 - 1) << v19;
    if (v18 <= 3)
    {
      v24 = *a1;
    }

    else
    {
      v23 = 0;
      v24 = *a1;
    }

    return v13 + (v24 | v23) + 1;
  }

LABEL_23:
  if (v11 <= v8)
  {
    v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v28 = *(v6 + 48);

      return v28((v26 + v12 + 8) & ~v12, v7, v5);
    }

    else
    {
      v27 = *v26;
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }

  else
  {
    v25 = *(v10 + 48);

    return v25((v17 + ((((((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v16);
  }
}

void sub_1C59CC6C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v38 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  if (v13 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v14 + 16) & ~v14) + *(v8 + 64);
  v18 = *(v12 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 15;
  v21 = (*(*(v11 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v21 + ((v20 + ((((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 26;
  if (a3 <= v16)
  {
    v23 = 0;
  }

  else if (v22 <= 3)
  {
    v26 = ((a3 - v16 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
    if (HIWORD(v26))
    {
      v23 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (v16 >= a2)
  {
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        *&a1[v22] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v13 <= v10)
        {
          if (v10 >= a2)
          {
            v34 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((v9 & 0x80000000) != 0)
            {
              v37 = *(v38 + 56);

              v37((v34 + v14 + 8) & ~v14, a2, v9, v7);
            }

            else
            {
              if ((a2 & 0x80000000) != 0)
              {
                v35 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v35 = (a2 - 1);
              }

              *v34 = v35;
            }

            return;
          }

          if (v17 <= 3)
          {
            v30 = ~(-1 << (8 * v17));
          }

          else
          {
            v30 = -1;
          }

          if (!v17)
          {
            return;
          }

          v31 = v30 & (~v10 + a2);
          if (v17 <= 3)
          {
            v32 = v17;
          }

          else
          {
            v32 = 4;
          }

          bzero(a1, v17);
          if (v32 <= 2)
          {
            if (v32 == 1)
            {
              *a1 = v31;
            }

            else
            {
              *a1 = v31;
            }

            return;
          }

          if (v32 == 3)
          {
            *a1 = v31;
            a1[2] = BYTE2(v31);
            return;
          }
        }

        else
        {
          v28 = (&a1[v17 + 7] & 0xFFFFFFFFFFFFFFF8);
          if (v16 == 0x7FFFFFFF)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v29 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v29 = (a2 - 1);
            }

            *v28 = v29;
            return;
          }

          v33 = ((v20 + ((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19);
          if (v15 >= a2)
          {
            v36 = *(v12 + 56);

            v36(v33, a2);
            return;
          }

          if (v21 == -8)
          {
            return;
          }

          v31 = ~v15 + a2;
          a1 = ((v20 + ((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19);
          bzero(v33, (v21 + 8));
        }

        *a1 = v31;
        return;
      }

      *&a1[v22] = 0;
    }

    else if (v23)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  v24 = ~v16 + a2;
  if (v22 < 4)
  {
    v25 = (v24 >> (8 * v22)) + 1;
    bzero(a1, v21 + ((v20 + ((((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 26);
    *a1 = v24 & ~(-1 << (8 * v22));
    if (v23 > 1)
    {
LABEL_17:
      if (v23 == 2)
      {
        *&a1[v22] = v25;
      }

      else
      {
        *&a1[v22] = v25;
      }

      return;
    }
  }

  else
  {
    bzero(a1, v21 + ((v20 + ((((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 26);
    *a1 = v24;
    v25 = 1;
    if (v23 > 1)
    {
      goto LABEL_17;
    }
  }

  if (v23)
  {
    a1[v22] = v25;
  }
}

void sub_1C59CCAF8()
{
  if (!qword_1EC192068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F80);
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC192068);
    }
  }
}

uint64_t sub_1C59CCB5C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59CCB98()
{
  result = sub_1C5BCB144();
  if (v1 <= 0x3F)
  {
    result = sub_1C5BCA864();
    if (v2 <= 0x3F)
    {
      result = sub_1C5BCACD4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C59CCC54(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-9 - v7) | v9)) + 5) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_31:
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((a1 + v9 + 8) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v19 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void *sub_1C59CCDDC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((-2 - ((((-9 - v8) | v8) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      else
      {
        v19 = *(v5 + 56);
        v20 = (v8 + ((((result + (v8 | 7) + 8) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

        return v19(v20);
      }

      return result;
    }
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_1C59CD0B8()
{
  result = qword_1EC192190;
  if (!qword_1EC192190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192190);
  }

  return result;
}

uint64_t sub_1C59CD10C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v2);
  sub_1C5BCA864();
  return sub_1C5BCA824();
}

uint64_t sub_1C59CD1DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C5BC8914();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_1C5BC9A64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 6)
  {
    v12 = sub_1C5BC9924();
    v23 = sub_1C5BCA494();
    v13 = sub_1C5BC85E4();
    v23 = sub_1C5BCA474();
    v14 = sub_1C5BC85E4();
    LODWORD(v23) = sub_1C5BC93F4();
    result = sub_1C5BC85E4();
    v16 = xmmword_1C5BD4600;
    v17 = xmmword_1C5BD4610;
    v18 = 4.0;
    v19 = 0;
  }

  else
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E6980EF0], v6);
    v20 = sub_1C5BC9954();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    sub_1C5BC99B4();
    sub_1C5924EF4(v5, &qword_1EC190F90);
    (*(v7 + 8))(v9, v6);
    sub_1C5BC9974();
    v12 = sub_1C5BC99E4();

    sub_1C5BC9994();
    v19 = v21;
    sub_1C5BC8904();
    v13 = sub_1C5BC85E4();
    v23 = sub_1C5BCA494();
    v14 = sub_1C5BC85E4();
    LODWORD(v23) = sub_1C5BC93F4();
    result = sub_1C5BC85E4();
    v16 = xmmword_1C5BD45E0;
    v17 = xmmword_1C5BD45F0;
    v18 = 0.0;
  }

  *a1 = v12;
  *(a1 + 8) = v19;
  *(a1 + 16) = v11 == 6;
  *(a1 + 24) = v17;
  *(a1 + 40) = v16;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = result;
  *(a1 + 80) = v18;
  return result;
}

uint64_t sub_1C59CD5AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ScopePicker.ScopeButtonsWithHighlight() - 8);
  v8 = (v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));

  return sub_1C59C5D94(a1, v8, v5, v6, a2);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScopePicker.ScopeButtonsWithHighlight() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  v4 = v3 + v2[11];

  v5 = sub_1C5BCA864();
  (*(*(v1 - 8) + 8))(v4 + *(v5 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_1C59CD768(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for ScopePicker.ScopeButtonsWithHighlight() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_1C59C6F00(a1, v5, v3);
}

unint64_t sub_1C59CD7F4()
{
  result = qword_1EC1921B0;
  if (!qword_1EC1921B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1921A8);
    sub_1C59CD8AC();
    sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1921B0);
  }

  return result;
}

unint64_t sub_1C59CD8AC()
{
  result = qword_1EC1921B8;
  if (!qword_1EC1921B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1921C0);
    sub_1C59CD938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1921B8);
  }

  return result;
}

unint64_t sub_1C59CD938()
{
  result = qword_1EDA45F68;
  if (!qword_1EDA45F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F68);
  }

  return result;
}

uint64_t sub_1C59CD98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScopePicker() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_1C5BC8AF4();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v0 + v3;

  v9 = sub_1C5BCA864();
  (*(*(v1 - 8) + 8))(v8 + *(v9 + 32), v1);

  v10 = v8 + v2[14];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FA0);
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FA8);

  sub_1C59CC0D8(*(v8 + v2[15]), *(v8 + v2[15] + 8), *(v8 + v2[15] + 16), *(v8 + v2[15] + 17));
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1C59CDC48(char a1)
{
  v3 = type metadata accessor for ScopePicker();
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_1C5BC8AF4() - 8);
  return sub_1C59C22A8(v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1, v3);
}

unint64_t sub_1C59CDD54()
{
  result = qword_1EC1921F8[0];
  if (!qword_1EC1921F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC1921F8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C59CDDDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C59CDE24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C59CDE88()
{
  sub_1C59CE4D8(319, qword_1EC192280, type metadata accessor for CGRect, MEMORY[0x1E6981798]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C59CE4D8(319, &qword_1EDA46758, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C59CDF88(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1C5BC89D4() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 8) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        v20 = *(v6 + 48);

        return v20((a1 + v11 + 8) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1C59CE1EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C5BC89D4() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 8) & ~v13) + *(v8 + 64) + v14) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_49:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v9 & 0x80000000) != 0)
  {
    v23 = *(v24 + 56);

    v23(&a1[v13 + 8] & ~v13, a2, v9, v7);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = (a2 - 1);
    }

    *a1 = v22;
  }
}

void sub_1C59CE4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C59CE54C()
{
  result = sub_1C5BCB144();
  if (v1 <= 0x3F)
  {
    result = sub_1C5BCA864();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C59CE5E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  v10 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v11 = ~(((-17 - v7) | v7) - *(*(*(a3 + 16) - 8) + 64) + ((-9 - v7) | v9));
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_29:
      if (v8 != 0x7FFFFFFF)
      {
        return (*(v4 + 48))((v7 + ((((a1 + v9 + 8) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
      }

      v17 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_18:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void sub_1C59CE7AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = -2 - (((-9 - v10) & 0xFFFFFFFFFFFFFFFELL | v10 & 0xFFFFFFFFFFFFFFF8 | 6) + ((-17 - v10) | v10) - *(*(*(a4 + 16) - 8) + 64));
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v9 < a2)
  {
    v15 = ~v9 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_50:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v11] = 0;
  }

  else if (v14)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *a1 = v20;
  }

  else
  {
    v21 = *(v6 + 56);
    v22 = (v10 + (((&a1[(v10 | 7) + 8] & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10;

    v21(v22);
  }
}

unint64_t sub_1C59CEA48()
{
  result = qword_1EC192308;
  if (!qword_1EC192308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192310);
    sub_1C5924F54(&qword_1EC192318, &qword_1EC192320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192308);
  }

  return result;
}

uint64_t sub_1C59CEC34(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

uint64_t sub_1C59CECEC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ScopePicker.ScopeButtons();
  v3 = *(*(v2 - 8) + 80);
  return sub_1C59CEE68(v0 + ((((v3 + 32) & ~v3) + *(*(v2 - 8) + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v2);
}

uint64_t sub_1C59CEDB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C59CEE00(uint64_t a1)
{
  v2 = sub_1C5BCA874();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59CEE68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v2);
  sub_1C5BCA864();
  return sub_1C5BCA824();
}

uint64_t sub_1C59CEF40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59CEF7C()
{
  result = sub_1C5BCA864();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C59CF00C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v16 + v6 + 8) & ~v6);
      }

      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1C59CF1A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 16) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
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

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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

      goto LABEL_31;
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

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_1C59CF408()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59CF444(uint64_t a1, int a2)
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

uint64_t sub_1C59CF48C(uint64_t result, int a2, int a3)
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

uint64_t sub_1C59CF59C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  type metadata accessor for ScopePicker.AnchorPreference();

  return sub_1C59CA940(a1, v5, a2);
}

unint64_t sub_1C59CF638()
{
  result = qword_1EC192508;
  if (!qword_1EC192508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1924F0);
    sub_1C59CF6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192508);
  }

  return result;
}

unint64_t sub_1C59CF6C4()
{
  result = qword_1EC192510;
  if (!qword_1EC192510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1924E8);
    sub_1C59CF750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192510);
  }

  return result;
}

unint64_t sub_1C59CF750()
{
  result = qword_1EC192518;
  if (!qword_1EC192518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192520);
    sub_1C59CD938();
    sub_1C5924F54(&qword_1EC192528, &qword_1EC1924E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192518);
  }

  return result;
}