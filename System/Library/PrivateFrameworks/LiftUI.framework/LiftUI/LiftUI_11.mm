uint64_t sub_255E12E5C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v21 = *(v1 + 56);
  v22 = *(v1 + 48);
  v20 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 104);
  v23 = *(v1 + 112);
  v9 = *(v1 + 128);
  v10 = *(v1 + 136);
  if (v8 > 0xFD)
  {
    if (v6 <= 0xFD)
    {
      v24 = *(v1 + 16);
      LOWORD(v25) = *(v1 + 24);
      if (!v9)
      {
        v11 = *(v1 + 16);
        v12 = *(v1 + 24);
        v13 = *(v1 + 32);
        LOBYTE(v8) = *(v1 + 40);
        goto LABEL_12;
      }

      sub_255D94C04(v4, v3, v5, v6);
      StringResolvable.resolved(with:)(v9);
      sub_255D38060(v4, v3, v5, v6);

      if (v7 <= 0xFD)
      {
        v24 = v22;
        LOWORD(v25) = v21;

        sub_255D94C04(v22, v21, v20, v7);
        StringResolvable.resolved(with:)(v9);
        sub_255D38060(v22, v21, v20, v7);

        v17 = sub_255E3A4C8();

        v18 = [objc_opt_self() bundleWithIdentifier_];

        v19 = sub_255E39EE8();
        Image.applyModifiers(_:)(v23, v19);
      }

      else
      {
      }
    }

    sub_255E39258();
    goto LABEL_9;
  }

  v11 = *(v1 + 80);
  v12 = *(v1 + 88);
  v13 = *(v1 + 96);
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = *(v1 + 104);
  if (v9)
  {
    sub_255D94C04(v11, v12, v13, v8);

    StringResolvable.resolved(with:)(v14);
    sub_255D38060(v24, v25, v26, v27);

    v15 = sub_255E39EA8();
    Image.applyModifiers(_:)(v23, v15);

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6738, &unk_255E5BC00);
    sub_255E15830(&qword_27F7E6730, &qword_27F7E6738, &unk_255E5BC00);
    result = sub_255E39258();
    *a1 = v24;
    *(a1 + 8) = v25;
    return result;
  }

LABEL_12:
  sub_255D3E5A8(v11, v12, v13, v8);
  type metadata accessor for RemoteStateStore(0);
  sub_255DA2D14();
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255E1322C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E13310()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E133E0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E134C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E15D0C();
  *a2 = result;
  return result;
}

void sub_255E134F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEE00737265696669;
  v6 = 0x646F4D6567616D69;
  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000255E659F0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x614E6D6574737973;
    v3 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_255E13590()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x646F4D6567616D69;
  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x614E6D6574737973;
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

uint64_t sub_255E1362C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E15D0C();
  *a1 = result;
  return result;
}

uint64_t sub_255E13654(uint64_t a1)
{
  v2 = sub_255E15A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E13690(uint64_t a1)
{
  v2 = sub_255E15A58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E136CC@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v56 = a2;
  v3 = sub_255E385D8();
  v4 = *(v3 - 8);
  v57 = v3;
  v58 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8FF8, &unk_255E5BC50);
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  type metadata accessor for RemoteStateStore(0);
  sub_255DA2D14();
  v92 = sub_255E38CC8();
  v13 = v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E15A58();
  v15 = v60;
  sub_255E3AE28();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v58;
  v60 = v13;
  LOBYTE(v70) = 0;
  v17 = sub_255E3AB88();
  v54 = v11;
  v55 = v8;
  if (v18)
  {
    v51 = v17;
    v53 = v18;
  }

  else
  {
    sub_255E385C8();
    v51 = sub_255E385B8();
    v53 = v20;
    (*(v16 + 8))(v7, v57);
  }

  v52 = a1;
  LOBYTE(v62[0]) = 1;
  sub_255D3EA0C();
  sub_255E3ABA8();
  v58 = 0;
  v57 = *(&v70 + 1);
  v48 = v70;
  v50 = v71;
  v49 = BYTE8(v71);
  LOBYTE(v62[0]) = 3;
  sub_255E3ABA8();
  v45 = v70;
  v46 = v71;
  v47 = BYTE8(v71);
  LOBYTE(v62[0]) = 4;
  sub_255E3ABA8();
  v42 = v70;
  v43 = v71;
  v44 = BYTE8(v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8FE0, &unk_255E5BC40);
  LOBYTE(v70) = 2;
  sub_255E158F4();
  sub_255E3ABA8();
  v21 = v59;
  v22 = v88;
  v23 = MEMORY[0x277D84F90];
  if (v88)
  {
    v24 = *(v88 + 16);
    if (v24)
    {
      v61 = MEMORY[0x277D84F90];
      sub_255DE5F70(0, v24, 0);
      v23 = v61;
      v25 = v22 + 32;
      do
      {
        sub_255E159FC(v25, v62);
        sub_255D34630(v62, &v70);
        v61 = v23;
        v27 = *(v23 + 16);
        v26 = *(v23 + 24);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v58 = v27 + 1;
          sub_255DE5F70((v26 > 1), v27 + 1, 1);
          v28 = v58;
          v23 = v61;
        }

        *(v23 + 16) = v28;
        sub_255D34630(&v70, v23 + 40 * v27 + 32);
        v25 += 40;
        --v24;
      }

      while (v24);

      v29 = v56;
      v21 = v59;
      v30 = MEMORY[0x277D84F90];
      goto LABEL_16;
    }
  }

  v30 = v23;
  v29 = v56;
LABEL_16:
  (*(v21 + 8))(v54, v55);
  v31 = v53;
  *&v62[0] = v51;
  *(&v62[0] + 1) = v53;
  v62[1] = v45;
  *&v63 = v46;
  BYTE8(v63) = v47;
  *(&v63 + 9) = v91[0];
  HIDWORD(v63) = *(v91 + 3);
  v64 = v42;
  *&v65 = v43;
  BYTE8(v65) = v44;
  *(&v65 + 9) = *v90;
  HIDWORD(v65) = *&v90[3];
  v32 = v48;
  *&v66 = v48;
  *(&v66 + 1) = v57;
  *&v67 = v50;
  BYTE8(v67) = v49;
  HIDWORD(v67) = *&v89[3];
  *(&v67 + 9) = *v89;
  *&v68 = v23;
  *(&v68 + 1) = v30;
  v33 = v60;
  *&v69 = v92;
  *(&v69 + 1) = v60;
  v34 = v62[0];
  v35 = v45;
  v36 = v42;
  v29[2] = v63;
  v29[3] = v36;
  *v29 = v34;
  v29[1] = v35;
  v37 = v65;
  v38 = v66;
  v39 = v69;
  v40 = v67;
  v29[7] = v68;
  v29[8] = v39;
  v29[5] = v38;
  v29[6] = v40;
  v29[4] = v37;
  sub_255D4D4F8(v62, &v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  *&v70 = v51;
  *(&v70 + 1) = v31;
  v71 = v45;
  v72 = v46;
  v73 = v47;
  *v74 = v91[0];
  *&v74[3] = *(v91 + 3);
  v75 = v42;
  v76 = v43;
  v77 = v44;
  *v78 = *v90;
  *&v78[3] = *&v90[3];
  v79 = v32;
  v80 = v57;
  v81 = v50;
  v82 = v49;
  *v83 = *v89;
  *&v83[3] = *&v89[3];
  v84 = v23;
  v85 = MEMORY[0x277D84F90];
  v86 = v92;
  v87 = v33;
  return sub_255E15AAC(&v70);
}

uint64_t sub_255E13E0C@<X0>(uint64_t *a1@<X8>)
{
  sub_255E12E5C(&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6720, &unk_255E3E1A0);
  sub_255D4D394();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255E13EE8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v54 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6770, &unk_255E3E1C0);
  v4 = *(v55 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v55);
  v7 = &v48 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8FB8, &unk_255E5BC10);
  v8 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v48 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6760, &qword_255E3E1B8);
  v50 = *(v53 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v48 = &v48 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v48 - v22;
  v24 = *(v1 + 40);
  if (v24 <= 0xFD)
  {
    v25 = *(v1 + 16);
    v26 = *(v1 + 24);
    v27 = *(v1 + 32);
    v60 = v25;
    *&v61 = v26;
    *(&v61 + 1) = v27;
    v62 = v24;
    v28 = *(v1 + 136);
    if (!v28)
    {
      v31 = *(v1 + 144);
      sub_255D3E5A8(v25, v26, v27, v24);
LABEL_15:
      v32 = type metadata accessor for RemoteStateStore(0);
      sub_255DA2D14();
      sub_255E38CB8();
      __break(1u);
      goto LABEL_16;
    }

    sub_255D94C04(v25, v26, v27, v24);

    StringResolvable.resolved(with:)(v29);
    sub_255D38060(v60, v61, *(&v61 + 1), v62);
  }

  sub_255E38578();
  v60 = *(v1 + 80);
  v30 = v60;
  sub_255D3957C(v1 + 88, &v61, &qword_27F7E6558, &qword_255E3DD80);
  if (!v30)
  {

    sub_255D395E4(&v61, &qword_27F7E6558, &qword_255E3DD80);
LABEL_10:
    sub_255D3957C(v23, v16, &qword_27F7E6B28, &unk_255E48060);
    v41 = *(v1 + 48);
    v2 = *(v3 + 56);
    v42 = *(v3 + 64);
    LOBYTE(v28) = *(v3 + 72);
    v60 = *(v3 + 48);
    *&v61 = v2;
    *(&v61 + 1) = v42;
    v62 = v28;
    v43 = *(v3 + 136);
    if (v43)
    {
      v44 = *(v3 + 136);

      sub_255D612A0(v41, v2, v42, v28);
      sub_255D8F6FC(v43);

      sub_255D4CB98(v60, v61, *(&v61 + 1), v62);
      sub_255E38798();
      v45 = v55;
      (*(v4 + 16))(v52, v7, v55);
      swift_storeEnumTagMultiPayload();
      sub_255E15630(&qword_27F7E6758, &qword_27F7E6760, &qword_255E3E1B8);
      sub_255E15630(&qword_27F7E6768, &qword_27F7E6770, &unk_255E3E1C0);
      sub_255E39258();
      (*(v4 + 8))(v7, v45);
      v40 = v23;
      return sub_255D395E4(v40, &qword_27F7E6B28, &unk_255E48060);
    }

    v31 = *(v3 + 144);
    sub_255D612A0(v41, v2, v42, v28);
    goto LABEL_15;
  }

  if (!v63)
  {

    goto LABEL_10;
  }

  sub_255D34630(&v61, v59);
  sub_255D3957C(v23, v21, &qword_27F7E6B28, &unk_255E48060);
  v31 = *(v1 + 48);
  v32 = *(v1 + 56);
  v2 = *(v3 + 64);
  LOBYTE(v28) = *(v3 + 72);
  *&v56 = *(v3 + 48);
  *(&v56 + 1) = v32;
  v57 = v2;
  v58 = v28;
  v33 = *(v3 + 136);
  if (v33)
  {

    sub_255D612A0(v31, v32, v2, v28);
    sub_255D8F6FC(v33);

    sub_255D4CB98(v56, *(&v56 + 1), v57, v58);
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    sub_255D3CE1C(v59, &v56);
    v35 = swift_allocObject();
    sub_255D34630(&v56, v35 + 16);
    sub_255D3957C(v21, v48, &qword_27F7E6B28, &unk_255E48060);
    v36 = swift_allocObject();
    v36[2] = sub_255E15684;
    v36[3] = v34;
    v36[4] = sub_255E1568C;
    v36[5] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8FC0, &unk_255E5BC20);
    sub_255E15830(&qword_27F7E8FC8, &qword_27F7E8FC0, &unk_255E5BC20);
    v37 = v49;
    sub_255E38788();
    sub_255D395E4(v21, &qword_27F7E6B28, &unk_255E48060);
    v38 = v50;
    v39 = v53;
    (*(v50 + 16))(v52, v37, v53);
    swift_storeEnumTagMultiPayload();
    sub_255E15630(&qword_27F7E6758, &qword_27F7E6760, &qword_255E3E1B8);
    sub_255E15630(&qword_27F7E6768, &qword_27F7E6770, &unk_255E3E1C0);
    sub_255E39258();

    (*(v38 + 8))(v37, v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    v40 = v23;
    return sub_255D395E4(v40, &qword_27F7E6B28, &unk_255E48060);
  }

LABEL_16:
  v47 = *(v3 + 144);

  sub_255D612A0(v31, v32, v2, v28);
  type metadata accessor for RemoteStateStore(0);
  sub_255DA2D14();
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255E14738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 32;

    do
    {
      sub_255D3CE1C(v6, v10);
      v7 = v11;
      v8 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      a1 = (*(v8 + 16))(a1, v7, v8);

      result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
  }

  *a3 = a1;
  return result;
}

uint64_t sub_255E14810()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E148F0()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E149BC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E14A98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E15D58();
  *a2 = result;
  return result;
}

void sub_255E14AC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x656C616373;
  v7 = 0xEB00000000726564;
  v8 = 0x6C6F686563616C70;
  if (v2 != 3)
  {
    v8 = 0x646F4D6567616D69;
    v7 = 0xEE00737265696669;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7107189;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_255E14B64()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C616373;
  v4 = 0x6C6F686563616C70;
  if (v1 != 3)
  {
    v4 = 0x646F4D6567616D69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7107189;
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

uint64_t sub_255E14BFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E15D58();
  *a1 = result;
  return result;
}

uint64_t sub_255E14C24(uint64_t a1)
{
  v2 = sub_255E158A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E14C60(uint64_t a1)
{
  v2 = sub_255E158A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E14C9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_255E385D8();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8FD0, &unk_255E5BC30);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v76 = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255DA2D14();
  v49 = sub_255E38CC8();
  v77 = v49;
  v78 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E158A0();
  v13 = v79;
  sub_255E3AE28();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14 = v47;
  v79 = a1;
  v53.i8[0] = 0;
  v15 = sub_255E3AB88();
  v17 = v7;
  v45 = v10;
  if (!v16)
  {
    sub_255E385C8();
    v19 = sub_255E385B8();
    v21 = v20;
    (*(v14 + 8))(v6, v3);
    v16 = v21;
    v15 = v19;
  }

  v22 = MEMORY[0x277D84F90];
  v63[0] = v15;
  v63[1] = v16;
  LOBYTE(v50[0]) = 2;
  sub_255D64774();
  sub_255E3ABA8();
  v24 = v54;
  v25.i32[0] = 253;
  if (BYTE8(v54) <= 0xFDu)
  {
    v26 = BYTE8(v54);
  }

  else
  {
    v26 = 0;
  }

  v23.i32[0] = BYTE8(v54);
  v27 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v23, v25), 0), xmmword_255E5AF70, v53);
  if (BYTE8(v54) > 0xFDu)
  {
    v24 = 0;
  }

  v67 = v27;
  v68 = v24;
  v69 = v26;
  LOBYTE(v50[0]) = 1;
  sub_255D3EA0C();
  sub_255E3ABC8();
  v64 = v53;
  v65 = v54;
  v66 = BYTE8(v54);
  LOBYTE(v50[0]) = 3;
  sub_255D447E8();
  sub_255E3ABA8();
  if (v53.i64[1])
  {
    v47 = sub_255D44794();
    v28 = swift_allocObject();
    v29 = v60;
    v30 = v61;
    v31 = v58;
    *(v28 + 112) = v59;
    *(v28 + 128) = v29;
    *(v28 + 144) = v30;
    *(v28 + 160) = v62;
    v32 = v56;
    *(v28 + 48) = v55;
    *(v28 + 64) = v32;
    *(v28 + 80) = v57;
    *(v28 + 96) = v31;
    v33 = v54;
    *(v28 + 16) = v53;
    *(v28 + 32) = v33;
    v34 = &type metadata for ViewContent;
  }

  else
  {
    sub_255D395E4(&v53, &qword_27F7E6C20, &qword_255E58D80);
    v34 = 0;
    v47 = 0;
    v28 = 0;
  }

  v71 = v28;
  v72 = 0;
  v73 = 0;
  v74 = v34;
  v35 = v46;
  v75 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8FE0, &unk_255E5BC40);
  v53.i8[0] = 4;
  sub_255E158F4();
  sub_255E3ABA8();
  v36 = v52;
  v37 = v48;
  if (v52)
  {
    v38 = v35;
    v49 = v17;
    v39 = *(v52 + 16);
    if (!v39)
    {

      (*(v37 + 8))(v45, v49);
      v40 = MEMORY[0x277D84F90];
      v44 = v79;
      v35 = v38;
      goto LABEL_24;
    }

    v51 = v22;
    sub_255DE5F70(0, v39, 0);
    v40 = v51;
    v41 = v36 + 32;
    do
    {
      sub_255E159FC(v41, v50);
      sub_255D34630(v50, &v53);
      v51 = v40;
      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_255DE5F70((v42 > 1), v43 + 1, 1);
        v40 = v51;
      }

      *(v40 + 16) = v43 + 1;
      sub_255D34630(v53.i8, v40 + 40 * v43 + 32);
      v41 += 40;
      --v39;
    }

    while (v39);
    (*(v48 + 8))(v45, v49);

    v35 = v46;
  }

  else
  {
    (*(v48 + 8))(v45, v17);
    v40 = 0;
  }

  v44 = v79;
LABEL_24:
  v70 = v40;
  sub_255D4D688(v63, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  return sub_255E159CC(v63);
}

uint64_t sub_255E15360@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6748, &qword_255E3E1B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255E13EE8(&v11 - v7);
  sub_255D3957C(v8, v6, &qword_27F7E6748, &qword_255E3E1B0);
  sub_255D4D554();
  v9 = sub_255E3A038();
  result = sub_255D395E4(v8, &qword_27F7E6748, &qword_255E3E1B0);
  *a1 = v9;
  return result;
}

uint64_t sub_255E154C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255E15538(uint64_t a1)
{
  result = sub_255E15560();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255E15560()
{
  result = qword_27F7E8FA8;
  if (!qword_27F7E8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8FA8);
  }

  return result;
}

unint64_t sub_255E155B4(uint64_t a1)
{
  result = sub_255E155DC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255E155DC()
{
  result = qword_27F7E8FB0;
  if (!qword_27F7E8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8FB0);
  }

  return result;
}

uint64_t sub_255E15630(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_255E1568C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  result = (*(v4 + 24))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_255E156E8(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  if (sub_255E38A98())
  {
    a2(&v7);
    swift_retain_n();
    sub_255E39258();
  }

  else
  {
    a4(&v7);
    sub_255E39258();
  }

  return v7;
}

uint64_t sub_255E157F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 40);
  result = sub_255E156E8(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_255E15830(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_255E158A0()
{
  result = qword_27F7E8FD8;
  if (!qword_27F7E8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8FD8);
  }

  return result;
}

unint64_t sub_255E158F4()
{
  result = qword_27F7E8FE8;
  if (!qword_27F7E8FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8FE0, &unk_255E5BC40);
    sub_255E15978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8FE8);
  }

  return result;
}

unint64_t sub_255E15978()
{
  result = qword_27F7E8FF0;
  if (!qword_27F7E8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8FF0);
  }

  return result;
}

unint64_t sub_255E15A58()
{
  result = qword_27F7E9000;
  if (!qword_27F7E9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9000);
  }

  return result;
}

unint64_t sub_255E15B00()
{
  result = qword_27F7E9008;
  if (!qword_27F7E9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9008);
  }

  return result;
}

unint64_t sub_255E15B58()
{
  result = qword_27F7E9010;
  if (!qword_27F7E9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9010);
  }

  return result;
}

unint64_t sub_255E15BB0()
{
  result = qword_27F7E9018;
  if (!qword_27F7E9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9018);
  }

  return result;
}

unint64_t sub_255E15C08()
{
  result = qword_27F7E9020;
  if (!qword_27F7E9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9020);
  }

  return result;
}

unint64_t sub_255E15C60()
{
  result = qword_27F7E9028;
  if (!qword_27F7E9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9028);
  }

  return result;
}

unint64_t sub_255E15CB8()
{
  result = qword_27F7E9030;
  if (!qword_27F7E9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9030);
  }

  return result;
}

uint64_t sub_255E15D0C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255E15D58()
{
  v0 = sub_255E3AB48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255E15DA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 98;
    }

    else
    {
      v3 = 0x7974696361706FLL;
    }

    if (v2 == 2)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 103;
    }

    else
    {
      v3 = 114;
    }

    v4 = 0xE100000000000000;
  }

  v5 = 114;
  v6 = 0xE100000000000000;
  v7 = 98;
  if (a2 != 2)
  {
    v7 = 0x7974696361706FLL;
    v6 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 103;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE100000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_255E3AC68();
  }

  return v10 & 1;
}

uint64_t sub_255E15EB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x5472657461657267;
  v5 = 0xEB000000006E6168;
  v6 = 0xE800000000000000;
  v7 = 0x6E6168547373656CLL;
  if (a1 != 4)
  {
    v7 = 0x4F6C616369676F6CLL;
    v6 = 0xEF726F7461726570;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6F546C61757165;
  if (a1 != 1)
  {
    v9 = 0x6C61757145746F6ELL;
    v8 = 0xEA00000000006F54;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7496054;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEB000000006E6168;
      if (v10 != 0x5472657461657267)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E6168547373656CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEF726F7461726570;
      if (v10 != 0x4F6C616369676F6CLL)
      {
LABEL_34:
        v13 = sub_255E3AC68();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6F546C61757165)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006F54;
      if (v10 != 0x6C61757145746F6ELL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 7496054)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_255E160C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6C6562616CLL;
    }

    else
    {
      v3 = 0x5365746176697270;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xED0000616D656863;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x74616E6974736564;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEB000000006E6F69;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (a2 != 2)
  {
    v8 = 0x5365746176697270;
    v7 = 0xED0000616D656863;
  }

  if (a2)
  {
    v6 = 0x74616E6974736564;
    v5 = 0xEB000000006E6F69;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E16220(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1702063205;
    }

    else
    {
      v3 = 0x6F697469646E6F63;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE90000000000006ELL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1852139636;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE400000000000000;
  v8 = 1702063205;
  if (a2 != 2)
  {
    v8 = 0x6F697469646E6F63;
    v7 = 0xE90000000000006ELL;
  }

  if (a2)
  {
    v6 = 1852139636;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E16344(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6874654D70747468;
    }

    else
    {
      v3 = 2036625250;
    }

    if (v2 == 2)
    {
      v4 = 0xEA0000000000646FLL;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 7107189;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x6874654D70747468;
  v8 = 0xEA0000000000646FLL;
  if (a2 != 2)
  {
    v7 = 2036625250;
    v8 = 0xE400000000000000;
  }

  if (a2)
  {
    v6 = 7107189;
    v5 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E16468(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6E65736572507369;
    }

    else
    {
      v4 = 0x656C746974;
    }

    if (v2)
    {
      v3 = 0xEB00000000646574;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x736956656C746974;
    v3 = 0xEF7974696C696269;
  }

  else
  {
    v3 = 0xE700000000000000;
    if (a1 == 3)
    {
      v4 = 0x736E6F69746361;
    }

    else
    {
      v4 = 0x6567617373656DLL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6E65736572507369;
    }

    else
    {
      v8 = 0x656C746974;
    }

    if (a2)
    {
      v7 = 0xEB00000000646574;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x736E6F69746361;
    if (a2 != 3)
    {
      v5 = 0x6567617373656DLL;
    }

    if (a2 == 2)
    {
      v6 = 0x736956656C746974;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xEF7974696C696269;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_255E3AC68();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_255E16614(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7265746E6563;
    }

    else
    {
      v3 = 0x676E696461656CLL;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x676E696C69617274;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0xD000000000000018;
    }

    if (v2 == 3)
    {
      v4 = 0x8000000255E64E40;
    }

    else
    {
      v4 = 0x8000000255E64E60;
    }
  }

  if (a2 <= 1u)
  {
    v5 = 0xE700000000000000;
    v6 = 0xE600000000000000;
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0x7265746E6563;
    }

    else
    {
      v8 = 0x676E696461656CLL;
    }

    goto LABEL_24;
  }

  if (a2 != 2)
  {
    v5 = 0x8000000255E64E40;
    v6 = 0x8000000255E64E60;
    v7 = a2 == 3;
    if (a2 == 3)
    {
      v8 = 0xD000000000000017;
    }

    else
    {
      v8 = 0xD000000000000018;
    }

LABEL_24:
    if (v7)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    if (v3 != v8)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v9 = 0xE800000000000000;
  if (v3 != 0x676E696C69617274)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v4 != v9)
  {
LABEL_31:
    v10 = sub_255E3AC68();
    goto LABEL_32;
  }

  v10 = 1;
LABEL_32:

  return v10 & 1;
}

uint64_t sub_255E16790(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7265746E6563;
    }

    else
    {
      v3 = 0x746E656964617267;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x656C676E61;
  }

  else if (a1 == 3)
  {
    v3 = 0x676E417472617473;
    v4 = 0xEA0000000000656CLL;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x656C676E41646E65;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7265746E6563;
    }

    else
    {
      v9 = 0x746E656964617267;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x676E417472617473;
    v6 = 0xEA0000000000656CLL;
    if (a2 != 3)
    {
      v5 = 0x656C676E41646E65;
      v6 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x656C676E61;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_255E3AC68();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_255E16914(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E656964617267;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6461527472617473;
    }

    else
    {
      v4 = 0x7569646152646E65;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000737569;
    }

    else
    {
      v5 = 0xE900000000000073;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7265746E6563;
    }

    else
    {
      v4 = 0x746E656964617267;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x6461527472617473;
  v8 = 0xEB00000000737569;
  if (a2 != 2)
  {
    v7 = 0x7569646152646E65;
    v8 = 0xE900000000000073;
  }

  if (a2)
  {
    v2 = 0x7265746E6563;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E16A68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7265746E6563;
    }

    else
    {
      v3 = 7368564;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x6D6F74746F62;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0x8000000255E64DF0;
    }

    else
    {
      v4 = 0x8000000255E64E10;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x7265746E6563;
    }

    else
    {
      v7 = 7368564;
    }

    if (a2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE600000000000000;
    if (v3 != 0x6D6F74746F62)
    {
LABEL_37:
      v8 = sub_255E3AC68();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 3)
    {
      v6 = 0x8000000255E64DF0;
    }

    else
    {
      v6 = 0x8000000255E64E10;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_255E16BFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x676E6963617073;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6E656D6E67696C61;
    v4 = 0xE900000000000074;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7377656976;
    }

    else
    {
      v3 = 0x695664656E6E6970;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xEB00000000737765;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x676E6963617073;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE900000000000074;
    if (v3 != 0x6E656D6E67696C61)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x7377656976)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEB00000000737765;
    if (v3 != 0x695664656E6E6970)
    {
LABEL_34:
      v7 = sub_255E3AC68();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_255E16DA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x656C7573706163;
    }

    else
    {
      v4 = 0x6974616D6F747561;
    }

    if (v2)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xE900000000000063;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000255E658C0;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x656C63726963;
  }

  else
  {
    v4 = 0x6F426E6F74747562;
    v3 = 0xEC00000072656472;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656C7573706163;
    }

    else
    {
      v9 = 0x6974616D6F747561;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000063;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x656C63726963;
    if (a2 != 3)
    {
      v6 = 0x6F426E6F74747562;
      v5 = 0xEC00000072656472;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000255E658C0;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_255E3AC68();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_255E16F3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6E656D6E67696C61;
    }

    else
    {
      v3 = 0x7377656976;
    }

    if (v2 == 2)
    {
      v4 = 0xE900000000000074;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x676E6963617073;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x6E656D6E67696C61;
  v8 = 0xE900000000000074;
  if (a2 != 2)
  {
    v7 = 0x7377656976;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v6 = 0x676E6963617073;
    v5 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E17078(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6F546C61757165;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x5472657461657267;
    }

    else
    {
      v4 = 0x6E6168547373656CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xEB000000006E6168;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C61757145746F6ELL;
    }

    else
    {
      v4 = 0x6F546C61757165;
    }

    if (v3)
    {
      v5 = 0xEA00000000006F54;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x5472657461657267;
  v8 = 0xEB000000006E6168;
  if (a2 != 2)
  {
    v7 = 0x6E6168547373656CLL;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6C61757145746F6ELL;
    v6 = 0xEA00000000006F54;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E171D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6874646977;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F69746172;
    }

    else
    {
      v4 = 0x4D746E65746E6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xEB0000000065646FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746867696568;
    }

    else
    {
      v4 = 0x6874646977;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x6F69746172;
  if (a2 != 2)
  {
    v8 = 0x4D746E65746E6F63;
    v7 = 0xEB0000000065646FLL;
  }

  if (a2)
  {
    v2 = 0x746867696568;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E17314(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x74616E6974736564;
    }

    else
    {
      v3 = 0x65756C6176;
    }

    if (v2 == 2)
    {
      v4 = 0xEB000000006E6F69;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x74616E6974736564;
  v8 = 0xEB000000006E6F69;
  if (a2 != 2)
  {
    v7 = 0x65756C6176;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v6 = 0x656C746974;
    v5 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E1744C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7628135;
  v3 = a1;
  v4 = 0xE300000000000000;
  v5 = 0xE600000000000000;
  v6 = 0x6574656C6564;
  if (a1 != 6)
  {
    v6 = 0x4554454C4544;
    v5 = 0xE600000000000000;
  }

  v7 = 7632240;
  if (a1 != 4)
  {
    v7 = 5526864;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE300000000000000;
  }

  v8 = 1953722224;
  if (a1 != 2)
  {
    v8 = 1414745936;
  }

  v9 = 5522759;
  if (a1)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v9 = 7628135;
  }

  if (a1 > 1u)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v8 = v9;
  }

  if (a1 <= 3u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v3 <= 3)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v12 = 0xE600000000000000;
      if (a2 == 6)
      {
        if (v10 != 0x6574656C6564)
        {
          goto LABEL_43;
        }
      }

      else if (v10 != 0x4554454C4544)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (a2 != 4)
      {
        v13 = 21840;
LABEL_36:
        if (v10 != (v13 | 0x540000))
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      if (v10 != 7632240)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      v12 = 0xE400000000000000;
      if (a2 == 2)
      {
        if (v10 != 1953722224)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 1414745936;
    }

    else
    {
      v12 = 0xE300000000000000;
      if (a2)
      {
        v13 = 17735;
        goto LABEL_36;
      }
    }

    if (v10 != v2)
    {
LABEL_43:
      v14 = sub_255E3AC68();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v11 != v12)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

uint64_t sub_255E17630(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x656C706D6F436E6FLL;
  v5 = 0xEC0000006E6F6974;
  if (a1 != 6)
  {
    v4 = 2036625250;
    v5 = 0xE400000000000000;
  }

  v6 = 0x7365636375536E6FLL;
  v7 = 0xE900000000000073;
  if (a1 != 4)
  {
    v6 = 0x726F7272456E6FLL;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6D6F437469617761;
  v9 = 0xEF6E6F6974656C70;
  if (a1 != 2)
  {
    v8 = 0x73726564616568;
    v9 = 0xE700000000000000;
  }

  v10 = 0x646F6874656DLL;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v10 = 7107189;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEC0000006E6F6974;
        if (v11 != 0x656C706D6F436E6FLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v11 != 2036625250)
        {
LABEL_45:
          v14 = sub_255E3AC68();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000073;
      if (v11 != 0x7365636375536E6FLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x726F7272456E6FLL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEF6E6F6974656C70;
      if (v11 != 0x6D6F437469617761)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x73726564616568)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x646F6874656DLL)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7107189)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_255E178B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1768843629;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x72616C75676572;
    }

    else
    {
      v4 = 0x656772616CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C6C616D73;
    }

    else
    {
      v4 = 1768843629;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x72616C75676572;
  if (a2 != 2)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6C6C616D73;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E179DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 26223;
    }

    else
    {
      v5 = 0x736E6F69746361;
    }

    if (v2)
    {
      v3 = 0xE200000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v5 = 0x6C616974696E69;
  }

  else
  {
    v3 = 0xE800000000000000;
    if (a1 == 3)
    {
      v4 = 1449421935;
    }

    else
    {
      v4 = 1450665326;
    }

    v5 = v4 | 0x65756C6100000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 26223;
    }

    else
    {
      v9 = 0x736E6F69746361;
    }

    if (a2)
    {
      v8 = 0xE200000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v5 != v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x65756C6156646C6FLL;
    if (a2 != 3)
    {
      v6 = 0x65756C615677656ELL;
    }

    if (a2 == 2)
    {
      v7 = 0x6C616974696E69;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v5 != v7)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v8)
  {
LABEL_34:
    v10 = sub_255E3AC68();
    goto LABEL_35;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_255E17B44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7373616C67;
  if (a1 != 5)
  {
    v5 = 0x6F72507373616C67;
    v4 = 0xEE00746E656E696DLL;
  }

  v6 = 0x656C726564726F62;
  v7 = 0xEA00000000007373;
  if (a1 != 3)
  {
    v6 = 0x6974616D6F747561;
    v7 = 0xE900000000000063;
  }

  if (a1 > 4u)
  {
    v8 = v4;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0xD000000000000011;
  v10 = 0x8000000255E653D0;
  if (a1 != 1)
  {
    v9 = 0x6E69616C70;
    v10 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v10;
  }

  else
  {
    v9 = 0x6465726564726F62;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0x8000000255E653D0;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6E69616C70)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x6465726564726F62)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x7373616C67)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v13 = 0xEE00746E656E696DLL;
      if (v11 != 0x6F72507373616C67)
      {
LABEL_40:
        v14 = sub_255E3AC68();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xEA00000000007373;
    if (v11 != 0x656C726564726F62)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v13 = 0xE900000000000063;
    if (v11 != 0x6974616D6F747561)
    {
      goto LABEL_40;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_40;
  }

  v14 = 1;
LABEL_41:

  return v14 & 1;
}

uint64_t sub_255E17D88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726F6C6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 120;
    }

    else
    {
      v4 = 121;
    }

    v5 = 0xE100000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x737569646172;
    }

    else
    {
      v4 = 0x726F6C6F63;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 120;
  if (a2 != 2)
  {
    v7 = 121;
  }

  if (a2)
  {
    v2 = 0x737569646172;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE100000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_255E3AC68();
  }

  return v10 & 1;
}

uint64_t sub_255E17E90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 0x676E696C69617274;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E696461656CLL;
    }

    else
    {
      v4 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74746F62;
  if (a2 != 2)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x676E696461656CLL;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E17FC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7107189;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x656C616373;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6C6F686563616C70;
    }

    else
    {
      v3 = 0x646F4D6567616D69;
    }

    if (v2 == 3)
    {
      v4 = 0xEB00000000726564;
    }

    else
    {
      v4 = 0xEE00737265696669;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 7107189;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x656C616373)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000726564;
    if (v3 != 0x6C6F686563616C70)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEE00737265696669;
    if (v3 != 0x646F4D6567616D69)
    {
LABEL_34:
      v7 = sub_255E3AC68();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_255E18168(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x646E4973776F6873;
    }

    else
    {
      v3 = 2003134838;
    }

    if (v2 == 2)
    {
      v4 = 0xEF73726F74616369;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1936029793;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x646E4973776F6873;
  v8 = 0xEF73726F74616369;
  if (a2 != 2)
  {
    v7 = 2003134838;
    v8 = 0xE400000000000000;
  }

  if (a2)
  {
    v6 = 1936029793;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E18298(char a1, char a2)
{
  if (qword_255E5C3F0[a1] == qword_255E5C3F0[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_255E3AC68();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_255E18300(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x6E656D6E67696C61;
    v13 = 0xE900000000000074;
    if (a1 != 2)
    {
      v12 = 0x68746469576E696DLL;
      v13 = 0xE800000000000000;
    }

    v14 = 0x746867696568;
    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v14 = 0x6874646977;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x68676965486E696DLL;
    v4 = 0xE900000000000074;
    v5 = 0x6965486C61656469;
    v6 = 0xEB00000000746867;
    if (a1 != 7)
    {
      v5 = 0x686769654878616DLL;
      v6 = 0xE900000000000074;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6469576C61656469;
    v8 = 0xEA00000000006874;
    if (a1 != 4)
    {
      v7 = 0x687464695778616DLL;
      v8 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x746867696568)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x6874646977)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 2)
    {
      v16 = 0x6E656D6E67696C61;
      goto LABEL_46;
    }

    v15 = 0xE800000000000000;
    v18 = 1466853741;
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v17 = 1215195501;
      }

      else
      {
        if (a2 == 7)
        {
          v15 = 0xEB00000000746867;
          if (v9 != 0x6965486C61656469)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        v17 = 1215848813;
      }

      v16 = v17 | 0x6867696500000000;
LABEL_46:
      v15 = 0xE900000000000074;
      if (v9 != v16)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (a2 == 4)
    {
      v15 = 0xEA00000000006874;
      if (v9 != 0x6469576C61656469)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v15 = 0xE800000000000000;
    v18 = 1467507053;
  }

  if (v9 != (v18 | 0x6874646900000000))
  {
LABEL_52:
    v19 = sub_255E3AC68();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v19 = 1;
LABEL_53:

  return v19 & 1;
}

uint64_t sub_255E185AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x746E6F7A69726F68;
  v5 = 0xEA00000000006C61;
  v6 = 0xE800000000000000;
  if (a1 != 5)
  {
    v4 = 0x6C61636974726576;
    v5 = 0xE800000000000000;
  }

  v7 = 0x676E696C69617274;
  if (a1 != 3)
  {
    v7 = 7105633;
    v6 = 0xE300000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x676E696461656CLL;
  if (a1 != 1)
  {
    v9 = 0x6D6F74746F62;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7368564;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x676E696461656CLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x6D6F74746F62)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7368564)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEA00000000006C61;
      if (v10 != 0x746E6F7A69726F68)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6C61636974726576)
      {
LABEL_39:
        v13 = sub_255E3AC68();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x676E696C69617274)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 7105633)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_255E187C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x676E696C69617274;
    if (a1 != 2)
    {
      v13 = 7368564;
      v12 = 0xE300000000000000;
    }

    v14 = 0x676E696461656CLL;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 0x7265746E6563;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x6C69617254706F74;
    v4 = 0xEB00000000676E69;
    v5 = 0x654C6D6F74746F62;
    v6 = 0xED0000676E696461;
    if (a1 != 7)
    {
      v5 = 0x72546D6F74746F62;
      v6 = 0xEE00676E696C6961;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6D6F74746F62;
    if (a1 != 4)
    {
      v8 = 0x696461654C706F74;
      v7 = 0xEA0000000000676ELL;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x676E696C69617274)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE300000000000000;
        if (v9 != 7368564)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x676E696461656CLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x7265746E6563)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6D6F74746F62)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEA0000000000676ELL;
      if (v9 != 0x696461654C706F74)
      {
LABEL_52:
        v16 = sub_255E3AC68();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xEB00000000676E69;
    if (v9 != 0x6C69617254706F74)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xED0000676E696461;
    if (v9 != 0x654C6D6F74746F62)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xEE00676E696C6961;
    if (v9 != 0x72546D6F74746F62)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_255E18AAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x736E6F69746361;
    }

    else
    {
      v4 = 0x6567617373656DLL;
    }

    v5 = 0xE700000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E65736572507369;
    }

    else
    {
      v4 = 0x656C746974;
    }

    if (v3)
    {
      v5 = 0xEB00000000646574;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x736E6F69746361;
  if (a2 != 2)
  {
    v7 = 0x6567617373656DLL;
  }

  if (a2)
  {
    v2 = 0x6E65736572507369;
    v6 = 0xEB00000000646574;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_255E3AC68();
  }

  return v10 & 1;
}

uint64_t sub_255E18BFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x726564616568;
    }

    else
    {
      v3 = 0x7265746F6F66;
    }

    v4 = 0xE600000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 0x746E65746E6F63;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x726564616568;
  if (a2 != 2)
  {
    v7 = 0x7265746F6F66;
  }

  if (a2)
  {
    v6 = 0x746E65746E6F63;
    v5 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_255E3AC68();
  }

  return v10 & 1;
}

uint64_t sub_255E18D28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x736D657469;
    }

    else
    {
      v3 = 0x656D614E6D657469;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 2003134838;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x736D657469;
  if (a2 != 2)
  {
    v8 = 0x656D614E6D657469;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v6 = 2003134838;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E18E4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x614E6D6574737973;
    }

    else
    {
      v5 = 25705;
    }

    if (v2)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701667182;
    if (a1 != 3)
    {
      v4 = 0xD000000000000010;
      v3 = 0x8000000255E659F0;
    }

    if (a1 == 2)
    {
      v5 = 0x646F4D6567616D69;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xEE00737265696669;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x614E6D6574737973;
    }

    else
    {
      v11 = 25705;
    }

    if (a2)
    {
      v10 = 0xEA0000000000656DLL;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 1701667182;
    v8 = 0x8000000255E659F0;
    if (a2 == 3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x646F4D6567616D69;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEE00737265696669;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_255E3AC68();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_255E18FE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE700000000000000;
  v6 = 0x746E65746E6F63;
  v7 = 0x6F697463656C6573;
  v8 = 0xE90000000000006ELL;
  if (a1 != 4)
  {
    v7 = 0xD000000000000011;
    v8 = 0x8000000255E65870;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x656C746974;
  if (a1 != 1)
  {
    v9 = 0x6C6562616CLL;
  }

  if (a1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x746E65746E6F63)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE90000000000006ELL;
      if (v10 != 0x6F697463656C6573)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = 0x8000000255E65870;
      if (v10 != 0xD000000000000011)
      {
LABEL_33:
        v13 = sub_255E3AC68();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE500000000000000;
    if (a2 == 1)
    {
      if (v10 != 0x656C746974)
      {
        goto LABEL_33;
      }
    }

    else if (v10 != 0x6C6562616CLL)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v12 = 0xE200000000000000;
    if (v10 != 25705)
    {
      goto LABEL_33;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_33;
  }

  v13 = 1;
LABEL_34:

  return v13 & 1;
}

uint64_t sub_255E191B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6C6562616CLL;
    }

    else
    {
      v3 = 1701605234;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x736E6F69746361;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (a2 != 2)
  {
    v8 = 1701605234;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v6 = 0x736E6F69746361;
    v5 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E192D4()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E193D0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E194E8(uint64_t *a1, unint64_t *a2, unsigned __int8 a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1 & 0xF000000000000007;
  if (a3 <= 1u)
  {
    if (!a3)
    {
      if (v5 == 0xF000000000000007)
      {
        sub_255D5C30C(*a1);
        sub_255D5C30C(v4);
        if ((~v4 & 0xF000000000000007) == 0)
        {
          v6 = v3;
LABEL_25:
          sub_255D5C324(v6);
          v10 = 1;
          return v10 & 1;
        }
      }

      else
      {
        v22 = *a1;
        if ((~v4 & 0xF000000000000007) != 0)
        {
          v21 = v4;
          sub_255D5C30C(v3);
          sub_255D5C30C(v4);
          sub_255D5C30C(v3);
          v10 = _s6LiftUI14DecodableStateO2eeoiySbAC_ACtFZ_0(&v22, &v21);

          sub_255D5C324(v3);
          return v10 & 1;
        }

        sub_255D5C30C(v3);
        sub_255D5C30C(v4);
        sub_255D5C30C(v3);
      }

      sub_255D5C324(v3);
      v8 = v4;
      goto LABEL_21;
    }

    if (v5 == 0xF000000000000007)
    {
      sub_255D5C30C(*a1);
      sub_255D5C30C(v4);
      if ((~v4 & 0xF000000000000007) == 0)
      {
        v8 = v3;
LABEL_21:
        sub_255D5C324(v8);
LABEL_48:
        v10 = 0;
        return v10 & 1;
      }
    }

    else
    {
      v22 = *a1;
      if ((~v4 & 0xF000000000000007) != 0)
      {
        v21 = v4;
        sub_255D5C30C(v3);
        sub_255D5C30C(v4);
        sub_255D5C30C(v3);
        v11 = _s6LiftUI14DecodableStateO2eeoiySbAC_ACtFZ_0(&v22, &v21);

        sub_255D5C324(v3);
        v10 = v11 ^ 1;
        return v10 & 1;
      }

      sub_255D5C30C(v3);
      sub_255D5C30C(v4);
      sub_255D5C30C(v3);
    }

    sub_255D5C324(v3);
    v6 = v4;
    goto LABEL_25;
  }

  if (a3 != 2)
  {
    if (v5 != 0xF000000000000007)
    {
      if (v3 >> 61 == 1)
      {
        v9 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      }

      else
      {
        if (v3 >> 61 != 2)
        {
          goto LABEL_42;
        }

        v9 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      }

      if ((~v4 & 0xF000000000000007) != 0)
      {
        if (v4 >> 61 == 1)
        {
          v18 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          goto LABEL_52;
        }

        if (v4 >> 61 == 2)
        {
          v18 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_52:
          v12 = v9 < v18;
          goto LABEL_53;
        }
      }
    }

LABEL_42:
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v19 = sub_255E386A8();
    __swift_project_value_buffer(v19, qword_27F8152D8);
    v14 = sub_255E38688();
    v15 = sub_255E3A848();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_47;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "LogicOperation <, unable to determine rhs or lhs value";
    goto LABEL_46;
  }

  if (v5 == 0xF000000000000007)
  {
    goto LABEL_33;
  }

  if (v3 >> 61 != 1)
  {
    if (v3 >> 61 == 2)
    {
      v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      goto LABEL_29;
    }

LABEL_33:
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v13 = sub_255E386A8();
    __swift_project_value_buffer(v13, qword_27F8152D8);
    v14 = sub_255E38688();
    v15 = sub_255E3A848();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_47;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "LogicOperation >, unable to determine rhs or lhs value";
LABEL_46:
    _os_log_impl(&dword_255D2E000, v14, v15, v17, v16, 2u);
    MEMORY[0x259C4F9E0](v16, -1, -1);
LABEL_47:

    goto LABEL_48;
  }

  v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_29:
  if ((~v4 & 0xF000000000000007) == 0)
  {
    goto LABEL_33;
  }

  if (v4 >> 61 != 1)
  {
    if (v4 >> 61 == 2)
    {
      v12 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) < v7;
      goto LABEL_53;
    }

    goto LABEL_33;
  }

  v12 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) < v7;
LABEL_53:
  v10 = v12;
  return v10 & 1;
}

uint64_t sub_255E19908()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E199D8()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E19A94()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E19B60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E1B0D8();
  *a2 = result;
  return result;
}

void sub_255E19B90(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6F546C61757165;
  v4 = 0xEB000000006E6168;
  v5 = 0x5472657461657267;
  if (*v1 != 2)
  {
    v5 = 0x6E6168547373656CLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C61757145746F6ELL;
    v2 = 0xEA00000000006F54;
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

uint64_t sub_255E19C1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 29295;
  }

  else
  {
    v4 = 6581857;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (*a2)
  {
    v6 = 29295;
  }

  else
  {
    v6 = 6581857;
  }

  if (*a2)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
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

uint64_t sub_255E19CB0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E19D20()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E19D7C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E19DF4(uint64_t *a1@<X8>)
{
  v2 = 6581857;
  if (*v1)
  {
    v2 = 29295;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E19E80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F697469646E6F63;
  }

  else
  {
    v4 = 0x726F74617265706FLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v6 = 0x6F697469646E6F63;
  }

  else
  {
    v6 = 0x726F74617265706FLL;
  }

  if (*a2)
  {
    v7 = 0xE90000000000006ELL;
  }

  else
  {
    v7 = 0xE800000000000000;
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

uint64_t sub_255E19F2C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E19FB4()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E1A028()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E1A0B8(uint64_t *a1@<X8>)
{
  v2 = 0x726F74617265706FLL;
  if (*v1)
  {
    v2 = 0x6F697469646E6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E1A0FC()
{
  if (*v0)
  {
    result = 0x6F697469646E6F63;
  }

  else
  {
    result = 0x726F74617265706FLL;
  }

  *v0;
  return result;
}

uint64_t sub_255E1A13C@<X0>(char *a1@<X8>)
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

uint64_t sub_255E1A1A0(uint64_t a1)
{
  v2 = sub_255E1B030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1A1DC(uint64_t a1)
{
  v2 = sub_255E1B030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E1A218@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255E1AE54(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_255E1A260()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E1A368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E1B3BC();
  *a2 = result;
  return result;
}

void sub_255E1A398(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7496054;
  v5 = 0xEB000000006E6168;
  v6 = 0x5472657461657267;
  v7 = 0xE800000000000000;
  v8 = 0x6E6168547373656CLL;
  if (v2 != 4)
  {
    v8 = 0x4F6C616369676F6CLL;
    v7 = 0xEF726F7461726570;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6F546C61757165;
  if (v2 != 1)
  {
    v10 = 0x6C61757145746F6ELL;
    v9 = 0xEA00000000006F54;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_255E1A468()
{
  v1 = *v0;
  v2 = 7496054;
  v3 = 0x5472657461657267;
  v4 = 0x6E6168547373656CLL;
  if (v1 != 4)
  {
    v4 = 0x4F6C616369676F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F546C61757165;
  if (v1 != 1)
  {
    v5 = 0x6C61757145746F6ELL;
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

uint64_t sub_255E1A534@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E1B3BC();
  *a1 = result;
  return result;
}

uint64_t sub_255E1A55C(uint64_t a1)
{
  v2 = sub_255E1ADAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1A598(uint64_t a1)
{
  v2 = sub_255E1ADAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E1A5D4(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9040, &qword_255E5C078);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - v7;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v30 = v1;
  v31 = a1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_255E1ADAC();
  sub_255E3AE28();
  if (v2)
  {
    v11 = v30;
LABEL_4:
    v16 = *(v11 + 88);

    type metadata accessor for Condition();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v12 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
  v35 = 0;
  sub_255E04D8C();
  v13 = v8;
  sub_255E3ABC8();
  v14 = v33;
  v15 = v34;
  v11 = v30;
  *(v30 + 16) = v32;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  v35 = 1;
  sub_255E3ABA8();
  v18 = v34;
  if (v34 == 255)
  {
    v35 = 2;
    sub_255E3ABA8();
    v18 = v34;
    if (v34 == 255)
    {
      v35 = 3;
      sub_255E3ABA8();
      v18 = v34;
      if (v34 == 255)
      {
        v35 = 4;
        sub_255E3ABA8();
        v18 = v34;
        if (v34 == 255)
        {
          v24 = sub_255E3AA08();
          swift_allocError();
          v26 = v25;
          v29[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7868, &qword_255E4BDC0) + 48);
          *(v26 + 24) = &type metadata for Condition.CodingKeys;
          *(v26 + 32) = v10;
          *v26 = 1;
          v27 = v4;
          v28 = v31[4];
          __swift_project_boxed_opaque_existential_1(v31, v31[3]);
          sub_255E3ADE8();
          sub_255E3A9C8();
          (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84158], v24);
          swift_willThrow();
          v11 = v30;
          (*(v12 + 8))(v13, v27);
          sub_255D4DE84(*(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40));
          goto LABEL_4;
        }

        v20 = v33;
        v21 = v32;
        v19 = 3;
      }

      else
      {
        v20 = v33;
        v21 = v32;
        v19 = 2;
      }
    }

    else
    {
      v20 = v33;
      v21 = v32;
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
    v20 = v33;
    v21 = v32;
  }

  *(v11 + 41) = v19;
  *(v11 + 48) = v21;
  *(v11 + 64) = v20;
  *(v11 + 72) = v18 & 1;
  LOBYTE(v32) = 5;
  if (sub_255E3ABE8())
  {
    v35 = 5;
    sub_255E1AE00();
    sub_255E3ABC8();
    (*(v5 + 8))(v13, v4);
    v22 = *(&v32 + 1);
    v23 = *(v11 + 88);
    *(v11 + 80) = v32;
    *(v11 + 88) = v22;
  }

  else
  {
    (*(v5 + 8))(v13, v4);
  }

LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v11;
}

uint64_t sub_255E1AAC0(uint64_t a1)
{
  v3 = *(v1 + 41);
  sub_255DDEBF8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), &v11);
  v4 = v11;
  sub_255DDEBF8(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v10);
  v5 = v10[0];
  v6 = sub_255E194E8(&v11, v10, v3);
  sub_255D5C324(v5);
  sub_255D5C324(v4);
  if (!*(v1 + 88))
  {
    return v6 & 1;
  }

  if ((*(v1 + 80) & 1) == 0)
  {
    if ((v6 & 1) == 0)
    {
      LOBYTE(v6) = 0;
      return v6 & 1;
    }

LABEL_6:
    v7 = *(v1 + 88);

    v8 = sub_255E1AAC0(a1);

    return v8 & 1;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  LOBYTE(v6) = 1;
  return v6 & 1;
}

uint64_t sub_255E1ABDC()
{
  sub_255D4DE84(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255D4DE84(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_255E1AC58(uint64_t a1, int a2)
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

uint64_t sub_255E1ACA0(uint64_t result, int a2, int a3)
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

unint64_t sub_255E1AD00()
{
  result = qword_27F7E9038;
  if (!qword_27F7E9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9038);
  }

  return result;
}

uint64_t sub_255E1AD54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Condition();
  v5 = swift_allocObject();
  result = sub_255E1A5D4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_255E1ADAC()
{
  result = qword_27F7E9048;
  if (!qword_27F7E9048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9048);
  }

  return result;
}

unint64_t sub_255E1AE00()
{
  result = qword_27F7E9050;
  if (!qword_27F7E9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9050);
  }

  return result;
}

uint64_t sub_255E1AE54(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9058, &qword_255E5C080);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1B030();
  sub_255E3AE28();
  v10[30] = 0;
  sub_255E1B084();
  sub_255E3ABC8();
  v8 = v10[31];
  type metadata accessor for Condition();
  v10[15] = 1;
  sub_255DCEF44();
  sub_255E3ABC8();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_255E1B030()
{
  result = qword_27F7E9060;
  if (!qword_27F7E9060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9060);
  }

  return result;
}

unint64_t sub_255E1B084()
{
  result = qword_27F7E9068;
  if (!qword_27F7E9068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9068);
  }

  return result;
}

uint64_t sub_255E1B0D8()
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

unint64_t sub_255E1B158()
{
  result = qword_27F7E9070;
  if (!qword_27F7E9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9070);
  }

  return result;
}

unint64_t sub_255E1B1B0()
{
  result = qword_27F7E9078;
  if (!qword_27F7E9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9078);
  }

  return result;
}

unint64_t sub_255E1B208()
{
  result = qword_27F7E9080;
  if (!qword_27F7E9080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9080);
  }

  return result;
}

unint64_t sub_255E1B260()
{
  result = qword_27F7E9088;
  if (!qword_27F7E9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9088);
  }

  return result;
}

unint64_t sub_255E1B2B8()
{
  result = qword_27F7E9090;
  if (!qword_27F7E9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9090);
  }

  return result;
}

unint64_t sub_255E1B310()
{
  result = qword_27F7E9098;
  if (!qword_27F7E9098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9098);
  }

  return result;
}

unint64_t sub_255E1B368()
{
  result = qword_27F7E90A0;
  if (!qword_27F7E90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E90A0);
  }

  return result;
}

uint64_t sub_255E1B3BC()
{
  v0 = sub_255E3AB48();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255E1B408()
{
  result = qword_27F7E90A8;
  if (!qword_27F7E90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E90A8);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_255E1B474(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_255E1B4C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

void sub_255E1B520(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E90B8, &qword_255E5C668);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1BD88();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v24 = 0;
    sub_255D64774();
    sub_255E3ABC8();
    v11 = v19;
    v12 = v20;
    v18 = v21;
    v23 = v22;
    LOBYTE(v19) = 1;
    v13 = sub_255E3AB98();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    v14 = (v13 == 2) | v13 & 1;
    v15 = v18;
    *(a2 + 16) = v18;
    v16 = v23;
    *(a2 + 24) = v23;
    *(a2 + 25) = v14;
    sub_255D612A0(v11, v12, v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D4CB98(v11, v12, v15, v16);
  }
}

uint64_t sub_255E1B760(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x61696C6169746E61;
  }

  else
  {
    v4 = 0x737569646172;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEB00000000646573;
  }

  if (*a2)
  {
    v6 = 0x61696C6169746E61;
  }

  else
  {
    v6 = 0x737569646172;
  }

  if (*a2)
  {
    v7 = 0xEB00000000646573;
  }

  else
  {
    v7 = 0xE600000000000000;
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

uint64_t sub_255E1B80C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E1B894()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E1B908()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E1B98C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_255E1B9EC(uint64_t *a1@<X8>)
{
  v2 = 0x737569646172;
  if (*v1)
  {
    v2 = 0x61696C6169746E61;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000646573;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E1BA30()
{
  if (*v0)
  {
    result = 0x61696C6169746E61;
  }

  else
  {
    result = 0x737569646172;
  }

  *v0;
  return result;
}

uint64_t sub_255E1BA70@<X0>(char *a1@<X8>)
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

uint64_t sub_255E1BAD4(uint64_t a1)
{
  v2 = sub_255E1BD88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1BB10(uint64_t a1)
{
  v2 = sub_255E1BD88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E1BB4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 25);
  v11 = *v3;
  v12 = *(v3 + 8);
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  sub_255D612A0(*v3, v12, v13, v14);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v8;
  sub_255D4CB98(v11, v12, v13, v14);
  if (a2)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FF0, &qword_255E5C660);
  a3[3] = sub_255E38AE8();
  sub_255E1BD24();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39948();
}

unint64_t sub_255E1BCA8(uint64_t a1)
{
  result = sub_255E1BCD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E1BCD0()
{
  result = qword_27F7E90B0;
  if (!qword_27F7E90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E90B0);
  }

  return result;
}

unint64_t sub_255E1BD24()
{
  result = qword_27F7E7FF8;
  if (!qword_27F7E7FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FF0, &qword_255E5C660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7FF8);
  }

  return result;
}

unint64_t sub_255E1BD88()
{
  result = qword_27F7E90C0;
  if (!qword_27F7E90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E90C0);
  }

  return result;
}

unint64_t sub_255E1BDF0()
{
  result = qword_27F7E90C8;
  if (!qword_27F7E90C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E90C8);
  }

  return result;
}

unint64_t sub_255E1BE48()
{
  result = qword_27F7E90D0;
  if (!qword_27F7E90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E90D0);
  }

  return result;
}

unint64_t sub_255E1BEA0()
{
  result = qword_27F7E90D8;
  if (!qword_27F7E90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E90D8);
  }

  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_255E1BF30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_255E1BF78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255E1BFF4(uint64_t a1)
{
  *(v2 + 552) = v1;
  *(v2 + 544) = a1;
  v3 = sub_255E3A3B8();
  *(v2 + 560) = v3;
  v4 = *(v3 - 8);
  *(v2 + 568) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 576) = swift_task_alloc();
  v6 = sub_255E3A3D8();
  *(v2 + 584) = v6;
  v7 = *(v6 - 8);
  *(v2 + 592) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 600) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060) - 8) + 64) + 15;
  *(v2 + 608) = swift_task_alloc();
  v10 = sub_255E38588();
  *(v2 + 616) = v10;
  v11 = *(v10 - 8);
  *(v2 + 624) = v11;
  *(v2 + 632) = *(v11 + 64);
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();
  *(v2 + 656) = swift_task_alloc();
  v12 = *(v1 + 144);
  *(v2 + 144) = *(v1 + 128);
  *(v2 + 160) = v12;
  *(v2 + 176) = *(v1 + 160);
  v13 = *(v1 + 80);
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = v13;
  v14 = *(v1 + 112);
  *(v2 + 112) = *(v1 + 96);
  *(v2 + 128) = v14;
  v15 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v15;
  v16 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v16;

  return MEMORY[0x2822009F8](sub_255E1C1F8, 0, 0);
}

uint64_t sub_255E1CD4C(unsigned __int8 a1, uint64_t *a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, unint64_t a7)
{
  v36 = a7;
  v37 = a4;
  v38 = a5;
  v11 = a1;
  v12 = type metadata accessor for RemoteContent(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920);
  v20 = *(v19 + 48);
  v21 = *(v19 + 64);
  v22 = sub_255E38588();
  v23 = *(*(v22 - 8) + 16);
  if (v11 > 1)
  {
    v27 = &v16[v21];
    v23(v16, a3, v22);
    v16[v20] = a1;
    v28 = v36;
    *v27 = a6;
    v27[1] = v28;
    swift_storeEnumTagMultiPayload();
    v29 = a2[13];
    v30 = a2[14];
    v31 = a2[15];
    v32 = *(a2 + 128);
    sub_255E1DB64(a6, v28);
    v33 = sub_255DDF1BC(v37, v29, v30, v31, v32);
    v34 = *a2;
    v40[0] = v38;
    RemoteLoader.reload(content:showLoading:reloadtype:)(v16, v33 & 1, v40);
    v26 = v16;
  }

  else
  {
    v23(v18, a3, v22);
    v18[v20] = a1;
    *&v18[v21] = xmmword_255E3B900;
    swift_storeEnumTagMultiPayload();
    v24 = sub_255DDF1BC(v37, a2[13], a2[14], a2[15], *(a2 + 128));
    v25 = *a2;
    v39 = v38;
    RemoteLoader.reload(content:showLoading:reloadtype:)(v18, v24 & 1, &v39);
    v26 = v18;
  }

  return sub_255DDAA54(v26);
}

uint64_t sub_255E1CF80()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 2036625250;
  v4 = 0x64616F4C776F6873;
  if (v1 != 3)
  {
    v4 = 1701869940;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6874654D70747468;
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

uint64_t sub_255E1D010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E1DDBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E1D038(uint64_t a1)
{
  v2 = sub_255E1DC20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1D074(uint64_t a1)
{
  v2 = sub_255E1DC20();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E1D0B0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E90F0, &qword_255E5D040);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
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

  sub_255D3951C(*(v10 + 56) + 32 * v13, v60);

  type metadata accessor for AnyWeakRemoteLoader();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    type metadata accessor for RemoteLoaderError(0);
    sub_255E1DBD8(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return;
  }

  v15 = v49;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_11;
  }

  v47 = v15;
  v48 = Strong;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1DC20();
  sub_255E3AE28();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v49) = 0;
    v18 = sub_255D3EA0C();
    sub_255E3ABC8();
    v46 = *v60;
    v36 = *&v60[16];
    v19 = v61;
    LOBYTE(v49) = 1;
    sub_255E3ABA8();
    *(&v34 + 1) = v18;
    v35 = v19;
    v43 = *v60;
    v44 = *&v60[8];
    v45 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7418, qword_255E567D0);
    LOBYTE(v49) = 2;
    sub_255D38950(&qword_27F7E7420, &qword_27F7E7418, qword_255E567D0);
    sub_255E3ABA8();
    v40 = *v60;
    v41 = *&v60[8];
    v42 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    LOBYTE(v49) = 3;
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940);
    sub_255E3ABA8();
    v20 = v61;
    if (v61 == 255)
    {
      v38 = 0;
      v39 = 0;
      v37 = 0;
      v20 = 0;
    }

    else
    {
      v37 = *&v60[16];
      v38 = *&v60[8];
      v39 = *v60;
    }

    v85 = v20 & 1;
    v60[0] = 4;
    sub_255E3ABA8();
    v21 = v83;
    if (v83 <= 0xFDu)
    {
      v34 = v82;
      v22 = v81;
    }

    else
    {
      v21 = 0;
      v34 = 0xEB00000000617461;
      v22 = 0x44646E4177656976;
    }

    v33 = v22;

    (*(v5 + 8))(v8, v4);
    *&v49 = v48;
    *(&v49 + 1) = v46;
    v23 = v36;
    *&v50 = *(&v46 + 1);
    *(&v50 + 1) = v36;
    LOBYTE(v51) = v35;
    *(&v51 + 1) = v88[0];
    DWORD1(v51) = *(v88 + 3);
    *(&v51 + 1) = v43;
    v52 = v44;
    LOBYTE(v53) = v45;
    *(&v53 + 1) = *v87;
    DWORD1(v53) = *&v87[3];
    *(&v53 + 1) = v40;
    v54 = v41;
    LOBYTE(v55) = v42;
    *(&v55 + 1) = *v86;
    DWORD1(v55) = *&v86[3];
    *(&v55 + 1) = v39;
    *&v56 = v38;
    *(&v56 + 1) = v37;
    LODWORD(v47) = v85;
    LOBYTE(v57) = v85;
    *(&v57 + 1) = *v84;
    DWORD1(v57) = *&v84[3];
    v25 = v33;
    v24 = v34;
    *(&v57 + 1) = v33;
    v58 = v34;
    v26 = *(&v34 + 1);
    v59 = v21;
    v27 = v89;
    *(v89 + 160) = v21;
    v28 = v54;
    v27[4] = v53;
    v27[5] = v28;
    v29 = v58;
    v27[8] = v57;
    v27[9] = v29;
    v30 = v52;
    v27[2] = v51;
    v27[3] = v30;
    v31 = v50;
    *v27 = v49;
    v27[1] = v31;
    v32 = v56;
    v27[6] = v55;
    v27[7] = v32;
    sub_255D5C7BC(&v49, v60);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *v60 = v48;
    *&v60[8] = v46;
    v61 = v23;
    v62 = v35;
    *v63 = v88[0];
    *&v63[3] = *(v88 + 3);
    v64 = v43;
    v65 = v44;
    v66 = v45;
    *v67 = *v87;
    *&v67[3] = *&v87[3];
    v68 = v40;
    v69 = v41;
    v70 = v42;
    *v71 = *v86;
    *&v71[3] = *&v86[3];
    v72 = v39;
    v73 = v38;
    v74 = v37;
    v75 = v47;
    *v76 = *v84;
    *&v76[3] = *&v84[3];
    v77 = v25;
    v78 = v24;
    v79 = v26;
    v80 = v21;
    sub_255E1DC74(v60);
  }
}

uint64_t sub_255E1D8FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255D50138;

  return sub_255E1BFF4(a1);
}

unint64_t sub_255E1D9A8(uint64_t a1)
{
  result = sub_255E1D9D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E1D9D0()
{
  result = qword_27F7E90E0;
  if (!qword_27F7E90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E90E0);
  }

  return result;
}

unint64_t sub_255E1DA24(uint64_t a1)
{
  result = sub_255E1DA4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E1DA4C()
{
  result = qword_27F7E90E8;
  if (!qword_27F7E90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E90E8);
  }

  return result;
}

uint64_t sub_255E1DAA0()
{
  v1 = *(sub_255E38588() - 8);
  v2 = (*(v1 + 80) + 185) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = (v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v4 + 8);
  v10 = *(v0 + 16);

  return sub_255E1CD4C(v10, (v0 + 24), v0 + v2, v5, v9, v7, v8);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_255E1DB64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255D37E0C(a1, a2);
  }

  return a1;
}

uint64_t sub_255E1DB78(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_255E1DBD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255E1DC20()
{
  result = qword_27F7E90F8;
  if (!qword_27F7E90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E90F8);
  }

  return result;
}

unint64_t sub_255E1DCB8()
{
  result = qword_27F7E9100;
  if (!qword_27F7E9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9100);
  }

  return result;
}

unint64_t sub_255E1DD10()
{
  result = qword_27F7E9108;
  if (!qword_27F7E9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9108);
  }

  return result;
}

unint64_t sub_255E1DD68()
{
  result = qword_27F7E9110;
  if (!qword_27F7E9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9110);
  }

  return result;
}

uint64_t sub_255E1DDBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_255E3AC68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874654D70747468 && a2 == 0xEA0000000000646FLL || (sub_255E3AC68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F4C776F6873 && a2 == 0xEB00000000676E69 || (sub_255E3AC68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_255E3AC68();

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

uint64_t sub_255E1DF78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 89))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFE)
  {
    v4 = 254;
  }

  else
  {
    v4 = *(a1 + 56);
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

uint64_t sub_255E1DFD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 56) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_255E1E040@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 56);
  v9 = *(v3 + 9);
  v10 = *(v3 + 10);
  v11 = *(v3 + 88);
  v30 = *(v3 + 8);
  v31 = v9;
  v32 = v10;
  v33 = v11;
  sub_255D3E5A8(v30, v9, v10, v11);
  v12 = StringResolvable.resolved(with:)(a2);
  v14 = v13;
  result = sub_255D38060(v30, v31, v32, v33);
  if (!v4)
  {
    if (v8 == 254)
    {
      v34 = 0;
    }

    else
    {
      v16 = v3[1];
      v22 = *v3;
      v23 = v16;
      *v24 = v3[2];
      *&v24[16] = *(v3 + 6);
      v24[24] = v8;
      v25[0] = v22;
      v25[1] = v16;
      v25[2] = *v24;
      v26 = *&v24[16];
      v27 = v8;
      sub_255D8DD84(v25, v20);
      v17 = sub_255D8D5DC(a2);
      v20[0] = v22;
      v20[1] = v23;
      v21[0] = *v24;
      *(v21 + 9) = *&v24[9];
      v34 = v17;
      sub_255D8DDBC(v20);
    }

    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    RemoteStateStore.subscript.getter(v12, v14, v25);

    *&v22 = *&v25[0];
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E9120, &qword_255E5D6E8);
    a3[3] = sub_255E38AE8();
    v19 = sub_255E1E778();
    v28 = v18;
    v29 = v19;
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E1E7DC();
    sub_255E39CB8();

    return sub_255D5C324(v22);
  }

  return result;
}

uint64_t sub_255E1E28C()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 0x6F6974616D696E61;
  }

  *v0;
  return result;
}

uint64_t sub_255E1E2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974616D696E61 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255E1E3A8(uint64_t a1)
{
  v2 = sub_255E1E860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1E3E4(uint64_t a1)
{
  v2 = sub_255E1E860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E1E420@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9138, &qword_255E5D6F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1E860();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v35;
  v28 = 0;
  sub_255DFB06C();
  sub_255E3ABA8();
  v32 = v29;
  v33 = v30;
  *v34 = v31[0];
  *&v34[9] = *(v31 + 9);
  v24 = 1;
  sub_255D3EA0C();
  sub_255E3ABC8();
  (*(v5 + 8))(v8, v4);
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v15 = *v34;
  v14 = *&v34[16];
  v19[2] = *v34;
  v19[3] = *&v34[16];
  v16 = v33;
  v19[0] = v32;
  v19[1] = v33;
  v20[0] = v25;
  *&v20[1] = v26;
  BYTE8(v20[1]) = v27;
  *v10 = v32;
  v10[1] = v16;
  v17 = v20[0];
  *(v10 + 73) = *(v20 + 9);
  v10[3] = v14;
  v10[4] = v17;
  v10[2] = v15;
  sub_255E1E91C(v19, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v21[0] = v32;
  v21[1] = v33;
  v21[2] = *v34;
  v21[3] = *&v34[16];
  v21[4] = v11;
  v22 = v12;
  v23 = v13;
  return sub_255E1E954(v21);
}

unint64_t sub_255E1E6FC(uint64_t a1)
{
  result = sub_255E1E724();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E1E724()
{
  result = qword_27F7E9118;
  if (!qword_27F7E9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9118);
  }

  return result;
}

unint64_t sub_255E1E778()
{
  result = qword_27F7E9128;
  if (!qword_27F7E9128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E9120, &qword_255E5D6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9128);
  }

  return result;
}

unint64_t sub_255E1E7DC()
{
  result = qword_27F7E9130;
  if (!qword_27F7E9130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255D8AE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9130);
  }

  return result;
}

unint64_t sub_255E1E860()
{
  result = qword_27F7E9140;
  if (!qword_27F7E9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9140);
  }

  return result;
}

uint64_t sub_255E1E8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E86F8, &qword_255E5D700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E1E998()
{
  result = qword_27F7E9148;
  if (!qword_27F7E9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9148);
  }

  return result;
}

unint64_t sub_255E1E9F0()
{
  result = qword_27F7E9150;
  if (!qword_27F7E9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9150);
  }

  return result;
}

unint64_t sub_255E1EA48()
{
  result = qword_27F7E9158;
  if (!qword_27F7E9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9158);
  }

  return result;
}

uint64_t sub_255E1EAAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x736E6D756C6F63;
  if (v2 != 1)
  {
    v3 = 0x646570756F7267;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000063;
  }

  v6 = 0x736E6D756C6F63;
  if (*a2 != 1)
  {
    v6 = 0x646570756F7267;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE900000000000063;
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

uint64_t sub_255E1EBB0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E1EC58()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E1ECEC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E1ED90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E1F71C();
  *a2 = result;
  return result;
}

void sub_255E1EDC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0x736E6D756C6F63;
  if (v2 != 1)
  {
    v4 = 0x646570756F7267;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6974616D6F747561;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_255E1EED4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255E1EF28@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255E1EF80(uint64_t a1)
{
  v2 = sub_255E1F458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1EFBC(uint64_t a1)
{
  v2 = sub_255E1F458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E1EFF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9168, &qword_255E5D8A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1F458();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255E1F4AC();
    sub_255E3ABC8();
    if (v17)
    {
      if (v17 == 1)
      {
        *(&v15 + 1) = sub_255E38B28();
        v16 = sub_255E1F500(&qword_27F7E9188, MEMORY[0x277CDDA70]);
        __swift_allocate_boxed_opaque_existential_1(&v14);
        sub_255E3A2E8();
      }

      else
      {
        *(&v15 + 1) = sub_255E38B78();
        v16 = sub_255E1F500(&qword_27F7E9180, MEMORY[0x277CDDAB8]);
        __swift_allocate_boxed_opaque_existential_1(&v14);
        sub_255E3A2F8();
      }
    }

    else
    {
      *(&v15 + 1) = sub_255E38E28();
      v16 = sub_255E1F500(&qword_27F7E9190, MEMORY[0x277CDDE18]);
      __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_255E38E18();
    }

    (*(v6 + 8))(v9, v5);
    v11 = v15;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E1F2A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6.val[0] = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, *&v6.val[0].f64[0]);
  v6.val[1] = *(v2 + 24);
  __swift_project_boxed_opaque_existential_1(v2, *&v6.val[1].f64[0]);
  v4 = v7;
  v8 = v6;
  vst2q_f64(v4, v8);
  a2[3] = swift_getOpaqueTypeMetadata2();
  v9 = v6;
  vst2q_f64(v7, v9);
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39CE8();
}

unint64_t sub_255E1F3DC(uint64_t a1)
{
  result = sub_255E1F404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E1F404()
{
  result = qword_27F7E9160;
  if (!qword_27F7E9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9160);
  }

  return result;
}

unint64_t sub_255E1F458()
{
  result = qword_27F7E9170;
  if (!qword_27F7E9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9170);
  }

  return result;
}

unint64_t sub_255E1F4AC()
{
  result = qword_27F7E9178;
  if (!qword_27F7E9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9178);
  }

  return result;
}

uint64_t sub_255E1F500(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255E1F56C()
{
  result = qword_27F7E9198;
  if (!qword_27F7E9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9198);
  }

  return result;
}

unint64_t sub_255E1F5C4()
{
  result = qword_27F7E91A0;
  if (!qword_27F7E91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E91A0);
  }

  return result;
}

unint64_t sub_255E1F61C()
{
  result = qword_27F7E91A8;
  if (!qword_27F7E91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E91A8);
  }

  return result;
}

unint64_t sub_255E1F674()
{
  result = qword_27F7E91B0;
  if (!qword_27F7E91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E91B0);
  }

  return result;
}

unint64_t sub_255E1F6C8()
{
  result = qword_27F7E91B8;
  if (!qword_27F7E91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E91B8);
  }

  return result;
}

uint64_t sub_255E1F71C()
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

uint64_t get_enum_tag_for_layout_string_6LiftUI11ViewContentVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255E1F780(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
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

uint64_t sub_255E1F7DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_255E1F864(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_255E1F8C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_255E1F920@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E91D8, &qword_255E5DC78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1FFC4();
  sub_255E3AE28();
  if (!v2)
  {
    v10 = v40;
    sub_255D447E8();
    sub_255E3ABA8();
    (*(v5 + 8))(v8, v4);
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v11 = v29;
    v39 = v29;
    v12 = v22;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v30 = *&v20[8];
    v31 = v21;
    v13 = v27;
    v14 = v28;
    *(v10 + 96) = v26;
    *(v10 + 112) = v13;
    *(v10 + 128) = v14;
    *(v10 + 144) = v11;
    v15 = v33;
    v16 = v34;
    *(v10 + 32) = v12;
    *(v10 + 48) = v15;
    v17 = v35;
    *(v10 + 64) = v16;
    *(v10 + 80) = v17;
    v18 = v31;
    *v10 = v30;
    *(v10 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E1FB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255E1FB94(uint64_t a1)
{
  v2 = sub_255E1FEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1FBD0(uint64_t a1)
{
  v2 = sub_255E1FEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_255E1FC0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_255E1FD60(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_255E1FC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 2003134838 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255E1FCD0(uint64_t a1)
{
  v2 = sub_255E1FFC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1FD0C(uint64_t a1)
{
  v2 = sub_255E1FFC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_255E1FD60(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E91C0, &unk_255E5DC68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1FEE4();
  sub_255E3AE28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255E1FF38();
    sub_255E3ABA8();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

unint64_t sub_255E1FEE4()
{
  result = qword_27F7E91C8;
  if (!qword_27F7E91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E91C8);
  }

  return result;
}

unint64_t sub_255E1FF38()
{
  result = qword_27F7E91D0;
  if (!qword_27F7E91D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7D39C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E91D0);
  }

  return result;
}

unint64_t sub_255E1FFC4()
{
  result = qword_27F7E91E0;
  if (!qword_27F7E91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E91E0);
  }

  return result;
}

unint64_t sub_255E2003C()
{
  result = qword_27F7E91E8;
  if (!qword_27F7E91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E91E8);
  }

  return result;
}

unint64_t sub_255E20094()
{
  result = qword_27F7E91F0;
  if (!qword_27F7E91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E91F0);
  }

  return result;
}

unint64_t sub_255E200EC()
{
  result = qword_27F7E91F8;
  if (!qword_27F7E91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E91F8);
  }

  return result;
}

unint64_t sub_255E20144()
{
  result = qword_27F7E9200;
  if (!qword_27F7E9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9200);
  }

  return result;
}

unint64_t sub_255E2019C()
{
  result = qword_27F7E9208;
  if (!qword_27F7E9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9208);
  }

  return result;
}

unint64_t sub_255E201F4()
{
  result = qword_27F7E9210;
  if (!qword_27F7E9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9210);
  }

  return result;
}

uint64_t sub_255E20270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255E27D6C(v2, v6, type metadata accessor for ColorDecodingError);
  v7 = *(v6 + 1);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968) + 48);
  v9 = sub_255E3A9F8();
  v10 = *(v9 - 8);
  (*(v10 + 32))(a2, &v6[v8], v9);
  return (*(v10 + 56))(a2, 0, 1, v9);
}

uint64_t sub_255E20394(unint64_t a1)
{
  v3 = sub_255E39D38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v14 = *v1;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  sub_255D3E5A8(v14, v8, v9, v10);
  StringResolvable.resolved(with:)(a1);
  sub_255D38060(v14, v15, v16, v17);
  switch(sub_255E273D4())
  {
    case 1u:

      result = MEMORY[0x282133458]();
      break;
    case 2u:

      result = MEMORY[0x282133478]();
      break;
    case 3u:

      result = MEMORY[0x282133490]();
      break;
    case 4u:

      result = MEMORY[0x282133498]();
      break;
    case 5u:

      result = MEMORY[0x282133430]();
      break;
    case 6u:

      result = MEMORY[0x2821334A8]();
      break;
    case 7u:

      result = sub_255E39D48();
      break;
    case 8u:

      result = MEMORY[0x282133438]();
      break;
    case 9u:

      result = MEMORY[0x282133428]();
      break;
    case 0xAu:

      result = MEMORY[0x2821334B0]();
      break;
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:

      result = MEMORY[0x282133418]();
      break;
    case 0x11u:

      result = MEMORY[0x282133448]();
      break;
    case 0x12u:

      result = MEMORY[0x282133408]();
      break;
    case 0x13u:
    case 0x14u:
      (*(v4 + 104))(v7, *MEMORY[0x277CE0EE0], v3);
      result = sub_255E39E68();
      break;
    case 0x15u:
      v11 = [objc_opt_self() magentaColor];

      result = MEMORY[0x28212FFA8](v11);
      break;
    case 0x16u:

      result = MEMORY[0x282133480]();
      break;
    case 0x17u:

      result = MEMORY[0x282133520]();
      break;
    case 0x18u:
    case 0x19u:

      result = MEMORY[0x2821334C8]();
      break;
    default:

      result = MEMORY[0x2821333F8]();
      break;
  }

  return result;
}

uint64_t sub_255E20964(unint64_t a1)
{
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  sub_255D3E5A8(*v1, v7, v8, v9);
  StringResolvable.resolved(with:)(a1);
  sub_255D38060(v6, v7, v8, v9);
  switch(sub_255E273D4())
  {
    case 1u:
      v3 = [objc_opt_self() systemBrownColor];
      break;
    case 2u:
      v3 = [objc_opt_self() systemGreenColor];
      break;
    case 3u:
      v3 = [objc_opt_self() systemIndigoColor];
      break;
    case 4u:
      v3 = [objc_opt_self() systemOrangeColor];
      break;
    case 5u:
      v3 = [objc_opt_self() systemPinkColor];
      break;
    case 6u:
      v3 = [objc_opt_self() systemPurpleColor];
      break;
    case 7u:
      v3 = [objc_opt_self() systemRedColor];
      break;
    case 8u:
      v3 = [objc_opt_self() systemTealColor];
      break;
    case 9u:
      v3 = [objc_opt_self() systemMintColor];
      break;
    case 0xAu:
      v3 = [objc_opt_self() systemYellowColor];
      break;
    case 0xBu:
      v3 = [objc_opt_self() systemGrayColor];
      break;
    case 0xCu:
      v3 = [objc_opt_self() systemGray2Color];
      break;
    case 0xDu:
      v3 = [objc_opt_self() systemGray3Color];
      break;
    case 0xEu:
      v3 = [objc_opt_self() systemGray4Color];
      break;
    case 0xFu:
      v3 = [objc_opt_self() systemGray5Color];
      break;
    case 0x10u:
      v3 = [objc_opt_self() systemGray6Color];
      break;
    case 0x11u:

      JUMPOUT(0x255E39DB8);
    case 0x12u:
      v3 = [objc_opt_self() systemCyanColor];
      break;
    case 0x13u:
      v3 = [objc_opt_self() darkGrayColor];
      break;
    case 0x14u:
      v3 = [objc_opt_self() lightGrayColor];
      break;
    case 0x15u:
      v3 = [objc_opt_self() magentaColor];
      break;
    case 0x16u:

      JUMPOUT(0x255E39DE8);
    case 0x17u:

      JUMPOUT(0x255E39E48);
    case 0x18u:
    case 0x19u:

      JUMPOUT(0x255E39E38);
    default:
      v3 = [objc_opt_self() systemBlueColor];
      break;
  }

  v4 = v3;

  return MEMORY[0x28212FFA8](v4);
}

uint64_t sub_255E20EC8(uint64_t a1)
{
  v16 = sub_255E39D38();
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 24);
  v17 = *v1;
  v18 = v7;
  v19 = v8;
  v20 = v13;
  sub_255D612A0(v17, v7, v8, v13);
  sub_255D6EF88(v9, v10, v11, v12);
  sub_255D8F6FC(a1);
  sub_255D4CB98(v17, v18, v19, v20);
  if (v12 <= 0xFD)
  {
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    sub_255D8F6FC(a1);
    sub_255D4CB98(v17, v18, v19, v20);
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE0EE0], v16);
  return sub_255E39E68();
}

uint64_t sub_255E2107C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7974696361706FLL;
  }

  else
  {
    v4 = 0x6574696877;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x7974696361706FLL;
  }

  else
  {
    v6 = 0x6574696877;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
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

uint64_t sub_255E21120()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E211A0()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E2120C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E21294(uint64_t *a1@<X8>)
{
  v2 = 0x6574696877;
  if (*v1)
  {
    v2 = 0x7974696361706FLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E212D0()
{
  if (*v0)
  {
    result = 0x7974696361706FLL;
  }

  else
  {
    result = 0x6574696877;
  }

  *v0;
  return result;
}

uint64_t sub_255E21314(uint64_t a1)
{
  v2 = sub_255E271B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E21350(uint64_t a1)
{
  v2 = sub_255E271B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E2138C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E93B8, &qword_255E5F2E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E271B4();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v24) = 0;
  sub_255D64774();
  sub_255E3ABC8();
  v11 = v27;
  v22 = v28;
  v23 = v29;
  v38 = v30;
  v39 = 1;
  sub_255E3ABA8();
  (*(v6 + 8))(v9, v5);
  v21 = v35;
  v12 = v36;
  v20 = *(&v35 + 1);
  v13 = v37;
  v14 = v11;
  v15 = v22;
  *&v24 = v11;
  *(&v24 + 1) = v22;
  v16 = v23;
  *&v25 = v23;
  LOBYTE(v11) = v38;
  BYTE8(v25) = v38;
  *v26 = v35;
  *&v26[16] = v36;
  v26[24] = v37;
  v17 = v25;
  *a2 = v24;
  a2[1] = v17;
  a2[2] = *v26;
  *(a2 + 41) = *&v26[9];
  sub_255E27208(&v24, &v27);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v11;
  v31 = v21;
  v32 = v20;
  v33 = v12;
  v34 = v13;
  return sub_255E27240(&v27);
}

uint64_t sub_255E21670(uint64_t a1)
{
  v3 = sub_255E39D38();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v14 = *(v1 + 64);
  v13 = *(v1 + 72);
  v15 = *(v1 + 80);
  v16 = *(v1 + 88);
  v17 = *(v1 + 96);
  v28 = *(v1 + 104);
  v29 = v17;
  v27 = *(v1 + 112);
  v31 = *(v1 + 120);
  v18 = *(v1 + 24);
  v35 = v6;
  v36 = v7;
  v37 = v8;
  v38 = v18;
  sub_255D612A0(v6, v7, v8, v18);
  sub_255D8F6FC(a1);
  v30 = v19;
  v21 = v20;
  sub_255D4CB98(v35, v36, v37, v38);
  if (v21)
  {
    goto LABEL_4;
  }

  v35 = v10;
  v36 = v9;
  v37 = v11;
  v38 = v12;
  sub_255D612A0(v10, v9, v11, v12);
  sub_255D8F6FC(a1);
  v23 = v22;
  sub_255D4CB98(v35, v36, v37, v38);
  if (v23)
  {
    goto LABEL_4;
  }

  v35 = v14;
  v36 = v13;
  v37 = v15;
  v38 = v16;
  sub_255D612A0(v14, v13, v15, v16);
  sub_255D8F6FC(a1);
  v25 = v24;
  sub_255D4CB98(v35, v36, v37, v38);
  if (v25)
  {
LABEL_4:

    JUMPOUT(0x255E39DE8);
  }

  if (v31 <= 0xFD)
  {
    v35 = v29;
    v36 = v28;
    v37 = v27;
    v38 = v31;
    sub_255D612A0(v29, v28, v27, v31);
    sub_255D8F6FC(a1);
    sub_255D4CB98(v35, v36, v37, v38);
  }

  (*(v33 + 104))(v32, *MEMORY[0x277CE0EE0], v34);
  return sub_255E39E58();
}

uint64_t sub_255E21924()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E219C4()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E21A50()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E21AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E27428();
  *a2 = result;
  return result;
}

void sub_255E21B1C(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 114;
  v4 = 0xE100000000000000;
  v5 = 98;
  if (*v1 != 2)
  {
    v5 = 0x7974696361706FLL;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 103;
    v2 = 0xE100000000000000;
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

uint64_t sub_255E21B78()
{
  v1 = 114;
  v2 = 98;
  if (*v0 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v1 = 103;
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

uint64_t sub_255E21BD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E27428();
  *a1 = result;
  return result;
}

uint64_t sub_255E21BF8(uint64_t a1)
{
  v2 = sub_255E27270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E21C34(uint64_t a1)
{
  v2 = sub_255E27270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E21C70@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E93C8, &qword_255E5F2F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_255E27270();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  v12 = v6;
  v36 = a2;
  LOBYTE(v38) = 0;
  sub_255D64774();
  v13 = v5;
  sub_255E3ABC8();
  v34 = v45;
  v35 = v46;
  v62 = v47;
  LOBYTE(v38) = 1;
  sub_255E3ABC8();
  v32 = v45;
  v33 = v46;
  v31 = v47;
  LOBYTE(v38) = 2;
  sub_255E3ABC8();
  v29 = *(&v45 + 1);
  v30 = v45;
  v28 = v46;
  v14 = v47;
  v63 = 3;
  sub_255E3ABA8();
  (*(v12 + 8))(v9, v13);
  v26 = *(&v59 + 1);
  v27 = v59;
  v25 = v60;
  v24 = v61;
  v15 = v34;
  v38 = v34;
  v16 = v35;
  *&v39 = v35;
  v17 = v62;
  BYTE8(v39) = v62;
  v40 = v32;
  *&v41 = v33;
  LOBYTE(v12) = v31;
  BYTE8(v41) = v31;
  *&v42 = v30;
  *(&v42 + 1) = v29;
  *&v43 = v28;
  BYTE8(v43) = v14;
  v44[0] = v59;
  *&v44[1] = v60;
  BYTE8(v44[1]) = v61;
  v18 = v41;
  v19 = v36;
  v36[2] = v32;
  v19[3] = v18;
  v20 = v43;
  v19[4] = v42;
  v19[5] = v20;
  v21 = v39;
  *v19 = v38;
  v19[1] = v21;
  *(v19 + 105) = *(v44 + 9);
  v19[6] = v44[0];
  sub_255E272C4(&v38, &v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  v45 = v15;
  v46 = v16;
  v47 = v17;
  v48 = v32;
  v49 = v33;
  v50 = v12;
  v51 = v30;
  v52 = v29;
  v53 = v28;
  v54 = v14;
  v55 = v27;
  v56 = v26;
  v57 = v25;
  v58 = v24;
  return sub_255E272FC(&v45);
}

uint64_t sub_255E220D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656C646E7562;
  }

  else
  {
    v4 = 1701667182;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x656C646E7562;
  }

  else
  {
    v6 = 1701667182;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
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

uint64_t sub_255E22170()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E221E8()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E2224C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E222CC(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x656C646E7562;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E22300()
{
  if (*v0)
  {
    result = 0x656C646E7562;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_255E2233C(uint64_t a1)
{
  v2 = sub_255E2732C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E22378(uint64_t a1)
{
  v2 = sub_255E2732C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E223B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];

    v5 = sub_255E3A4C8();
    v3 = [objc_opt_self() bundleWithIdentifier_];
  }

  else
  {
    v6 = v0[1];
  }

  return MEMORY[0x282133540](v1, v2, v3);
}

uint64_t sub_255E22454@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255E26BD8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_255E22484()
{
  v1 = sub_255D60254(*v0);

  return MEMORY[0x28212FFA8](v1);
}

unint64_t sub_255E224B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E26DBC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_255E224DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  v10 = a1[3];
  v9 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = sub_255D3CAFC();
  sub_255E3AE28();
  if (!v2)
  {
    *&v47 = v11;
    v48 = v5;
    v13 = sub_255E3ABD8();
    if (*(v13 + 16))
    {
      v15 = *(v13 + 32);
      v14 = *(v13 + 40);
      v16 = *(v13 + 48);
      v17 = *(v13 + 56);

      v18 = v15 == 1701667182 && v14 == 0xE400000000000000;
      if (v18 || (sub_255E3AC68() & 1) != 0)
      {
        v53 = v15;
        v54 = v14;
        v55 = v16;
        LOBYTE(v56) = v17;
        sub_255E3AB78();

        v59 = &type metadata for NamedStandardColor;
        v60 = sub_255E270D8();
LABEL_12:
        v19 = swift_allocObject();
        *&v58 = v19;
        __swift_project_boxed_opaque_existential_1(v57, v57[3]);
        sub_255E3AE08();
        __swift_project_boxed_opaque_existential_1(&v53, v56);
        sub_255D3EA0C();
        sub_255E3ACB8();
        v47 = v50;
        v24 = v51;
        v25 = v52;
        __swift_destroy_boxed_opaque_existential_1Tm(&v53);
        *(v19 + 16) = v47;
        *(v19 + 32) = v24;
        *(v19 + 40) = v25;
        (*(v48 + 8))(v8, v4);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
LABEL_25:
        sub_255D34630(&v58, v61);
        v22 = v49;
LABEL_26:
        v26 = v61[1];
        *v22 = v61[0];
        *(v22 + 16) = v26;
        *(v22 + 32) = v62;
        return __swift_destroy_boxed_opaque_existential_1Tm(v63);
      }

      v20 = v17;
      v21 = v15 == 0x6D6574737973 && v14 == 0xE600000000000000;
      v22 = v49;
      if (v21 || (sub_255E3AC68() & 1) != 0)
      {
        v53 = v15;
        v54 = v14;
        v55 = v16;
        LOBYTE(v56) = v20;
        sub_255E3AB78();

        v59 = &type metadata for NamedSystemColor;
        v60 = sub_255E27084();
        goto LABEL_12;
      }

      v23 = v15 == 1869508461 && v14 == 0xE400000000000000;
      if (v23 || (sub_255E3AC68() & 1) != 0)
      {
        v53 = v15;
        v54 = v14;
        v55 = v16;
        LOBYTE(v56) = v20;
        sub_255E3AB78();

        v59 = &type metadata for MonoColor;
        v60 = sub_255DB163C();
        *&v58 = swift_allocObject();
        sub_255E2138C(v57, (v58 + 16));
LABEL_33:
        (*(v48 + 8))(v8, v4);
        sub_255D34630(&v58, v61);
        goto LABEL_26;
      }

      v27 = v15 == 6449010 && v14 == 0xE300000000000000;
      if (v27 || (sub_255E3AC68() & 1) != 0)
      {
        v53 = v15;
        v54 = v14;
        v55 = v16;
        LOBYTE(v56) = v20;
        sub_255E3AB78();

        v59 = &type metadata for RGBAColor;
        v60 = sub_255E27030();
        *&v58 = swift_allocObject();
        sub_255E21C70(v57, (v58 + 16));
        goto LABEL_33;
      }

      v28 = v15 == 0x656C646E7562 && v14 == 0xE600000000000000;
      if (v28 || (sub_255E3AC68() & 1) != 0)
      {
        v53 = v15;
        v54 = v14;
        v55 = v16;
        LOBYTE(v56) = v20;
        sub_255E3AB78();

        v29 = sub_255E26BD8(v57);
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v59 = &type metadata for BundleColor;
        v60 = sub_255E26FDC();
        v36 = swift_allocObject();
        *&v58 = v36;
        v36[2] = v29;
        v36[3] = v31;
        v36[4] = v33;
        v36[5] = v35;
LABEL_40:
        (*(v48 + 8))(v8, v4);
        goto LABEL_25;
      }

      v37 = v15 == 0x746E656D656C65 && v14 == 0xE700000000000000;
      if (v37 || (sub_255E3AC68() & 1) != 0)
      {
        v53 = v15;
        v54 = v14;
        v55 = v16;
        LOBYTE(v56) = v20;
        sub_255E3AB78();

        v38 = sub_255E26DBC(v57);
        v59 = &type metadata for ElementColor;
        v60 = sub_255E26F88();
        LOBYTE(v58) = v38;
        goto LABEL_40;
      }

      type metadata accessor for ColorDecodingError();
      HIDWORD(v45) = v20;
      sub_255E2716C(&qword_27F7E9388, type metadata accessor for ColorDecodingError);
      swift_allocError();
      v40 = v39;
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968) + 48);
      v46 = v40;
      *v40 = v15;
      v40[1] = v14;

      v41 = sub_255E3AB68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      v43 = v47;
      *(inited + 56) = &type metadata for DynamicKey;
      *(inited + 64) = v43;
      v44 = swift_allocObject();
      *(inited + 32) = v44;
      *(v44 + 16) = v15;
      *(v44 + 24) = v14;
      *(v44 + 32) = v16;
      *(v44 + 40) = BYTE4(v45);
      *&v58 = v41;

      sub_255D3CDA0(inited);
      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      sub_255E3A9A8();

      *&v58 = 0xD000000000000013;
      *(&v58 + 1) = 0x8000000255E66A20;
      MEMORY[0x259C4E8F0](v15, v14);

      sub_255E3A9C8();
    }

    else
    {

      type metadata accessor for DynamicKeyError();
      sub_255E2716C(&qword_27F7E61D8, type metadata accessor for DynamicKeyError);
      swift_allocError();
      sub_255E3AB68();
      sub_255E3A9C8();
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();
    (*(v48 + 8))(v8, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v63);
}

uint64_t sub_255E22E68(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6874646977;
  }

  else
  {
    v2 = 0x726F6C6F63;
  }

  if (*a2)
  {
    v3 = 0x6874646977;
  }

  else
  {
    v3 = 0x726F6C6F63;
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

uint64_t sub_255E22EE8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E22F58()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E22FAC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E23024(uint64_t *a1@<X8>)
{
  v2 = 0x726F6C6F63;
  if (*v1)
  {
    v2 = 0x6874646977;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_255E23054()
{
  if (*v0)
  {
    return 0x6874646977;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_255E2308C(uint64_t a1)
{
  v2 = sub_255E263C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E230C8(uint64_t a1)
{
  v2 = sub_255E263C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E23104@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9300, &qword_255E5E8F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E263C8();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  sub_255D65E28();
  sub_255E3ABC8();
  sub_255D34630(&v12, v15);
  v19 = 1;
  sub_255D64774();
  sub_255E3ABA8();
  (*(v6 + 8))(v9, v5);
  v16 = v12;
  v17 = v13;
  v18 = v14;
  sub_255E2641C(v15, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255E26454(v15);
}