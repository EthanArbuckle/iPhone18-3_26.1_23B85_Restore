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

uint64_t sub_243BC1B7C(uint64_t a1, int a2)
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

uint64_t sub_243BC1BC4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_243BC1C5C()
{
  v1 = *v0;
  sub_243BD0FB8();
  MEMORY[0x245D4BD40](v1);
  return sub_243BD0FE8();
}

uint64_t sub_243BC1CD0()
{
  v1 = *v0;
  sub_243BD0FB8();
  MEMORY[0x245D4BD40](v1);
  return sub_243BD0FE8();
}

uint64_t sub_243BC1D14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6300, &qword_243BD1778);
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6308, &qword_243BD1780);
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6310, &qword_243BD1788);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6318, &qword_243BD1790);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6320, &qword_243BD1798);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v56 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - v27;
  v29 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v30 = *(v65 + 16);

  v31 = 1;
  if (!v30)
  {
    *v17 = sub_243BD0A28();
    *(v17 + 1) = 0;
    v17[16] = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6350, &qword_243BD1800);
    sub_243BC23F0(&v17[*(v32 + 44)]);
    sub_243BC86BC(v17, v15, &qword_27EDA6310, &qword_243BD1788);
    sub_243BC86BC(v15, v22, &qword_27EDA6310, &qword_243BD1788);
    v33 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6358, &qword_243BD1808) + 48)];
    *v33 = 0;
    v33[8] = 1;
    sub_243BC8724(v17, &qword_27EDA6310, &qword_243BD1788);
    sub_243BC8724(v15, &qword_27EDA6310, &qword_243BD1788);
    v34 = [objc_opt_self() systemGroupedBackgroundColor];
    v35 = sub_243BD0C68();
    v36 = sub_243BD0B08();
    v37 = &v22[*(v18 + 36)];
    *v37 = v35;
    v37[8] = v36;
    sub_243BC77B0(v22, v28, &qword_27EDA6318, &qword_243BD1790);
    v31 = 0;
  }

  v38 = *(v19 + 56);
  v55 = v28;
  v39 = v38(v28, v31, 1, v18);
  MEMORY[0x28223BE20](v39);
  *(&v54 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6328, &qword_243BD17E8);
  sub_243BC894C(&qword_27EDA6330, &qword_27EDA6328, &qword_243BD17E8);
  v40 = v57;
  sub_243BD0B78();
  v66 = *(v2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
  v41 = sub_243BD0CD8();
  MEMORY[0x28223BE20](v41);
  *(&v54 - 2) = v2;
  sub_243BC894C(&qword_27EDA6340, &qword_27EDA6300, &qword_243BD1778);
  v42 = v58;
  v43 = v60;
  sub_243BD0C18();

  (*(v59 + 8))(v40, v43);
  v44 = v28;
  v45 = v56;
  sub_243BC86BC(v44, v56, &qword_27EDA6320, &qword_243BD1798);
  v47 = v61;
  v46 = v62;
  v48 = *(v62 + 16);
  v49 = v63;
  v48(v61, v42, v63);
  v50 = v64;
  sub_243BC86BC(v45, v64, &qword_27EDA6320, &qword_243BD1798);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6348, &qword_243BD17F8);
  v48((v50 + *(v51 + 48)), v47, v49);
  v52 = *(v46 + 8);
  v52(v42, v49);
  sub_243BC8724(v55, &qword_27EDA6320, &qword_243BD1798);
  v52(v47, v49);
  return sub_243BC8724(v45, &qword_27EDA6320, &qword_243BD1798);
}

uint64_t sub_243BC23F0@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  v1 = sub_243BD0AC8();
  v2 = *(v1 - 8);
  v44 = v1;
  v45 = v2;
  v3 = *(v2 + 64);
  (MEMORY[0x28223BE20])();
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6360, &qword_243BD1810);
  v43 = *(v6 - 8);
  v7 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v9 = &v39 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6368, &qword_243BD1818);
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  type metadata accessor for CACUILocaleUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_243BD0898();
  v20 = v19;

  v47 = v18;
  v48 = v20;
  sub_243BC7098();
  v21 = sub_243BD0BA8();
  v23 = v22;
  v40 = v24;
  v26 = v25;
  v39 = v25;
  sub_243BD0978();
  v27 = v5;
  sub_243BD0AB8();
  sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810);
  sub_243BC8390(&qword_27EDA6380, MEMORY[0x277CDE328]);
  v28 = v6;
  v29 = v44;
  sub_243BD0BD8();
  (*(v45 + 8))(v27, v29);
  (*(v43 + 8))(v9, v28);
  v30 = v10;
  v31 = *(v10 + 16);
  v32 = v41;
  v33 = v42;
  v31(v42, v15, v41);
  v34 = v46;
  *v46 = v21;
  v34[1] = v23;
  LOBYTE(v9) = v40 & 1;
  *(v34 + 16) = v40 & 1;
  v34[3] = v26;
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6388, &unk_243BD1820);
  v31(v35 + *(v36 + 48), v33, v32);
  sub_243BC70EC(v21, v23, v9);
  v37 = *(v30 + 8);

  v37(v15, v32);
  v37(v33, v32);
  sub_243BC70FC(v21, v23, v9);
}

uint64_t sub_243BC284C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v85 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63A8, &qword_243BD1838);
  v2 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v82 = &v68 - v3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63B0, &qword_243BD1840);
  v4 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v69 = &v68 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63B8, &qword_243BD1848);
  v78 = *(v81 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63C0, &qword_243BD1850);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v68 - v13;
  MEMORY[0x28223BE20](v12);
  v80 = &v68 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63C8, &qword_243BD1858);
  v15 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v17 = &v68 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63D0, &qword_243BD1860);
  v18 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63D8, &qword_243BD1868);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v68 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63E0, &qword_243BD1870);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v74 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v68 - v31;
  MEMORY[0x28223BE20](v30);
  v73 = &v68 - v33;
  type metadata accessor for CACUILocaleUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = objc_opt_self();
  v70 = ObjCClassFromMetadata;
  v36 = [v35 bundleForClass_];
  v37 = sub_243BD0898();
  v39 = v38;

  v87 = v37;
  v88 = v39;
  sub_243BC7098();
  v87 = sub_243BD0BA8();
  v88 = v40;
  v89 = v41 & 1;
  v90 = v42;
  v43 = v85;
  v86 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63E8, &qword_243BD1878);
  sub_243BC7208();
  sub_243BD0D08();
  v44 = *(v43 + 8);
  v45 = *(sub_243BCDB4C() + 16);

  v46 = *(v22 + 16);
  if (v45)
  {
    v46(v17, v25, v21);
    swift_storeEnumTagMultiPayload();
    sub_243BC72E0();
    sub_243BC7720(&qword_27EDA6408, &qword_27EDA63D8, &qword_243BD1868, sub_243BC7208);
    sub_243BD0AA8();
  }

  else
  {
    v46(v20, v25, v21);
    sub_243BC86BC(v20, v17, &qword_27EDA63D0, &qword_243BD1860);
    swift_storeEnumTagMultiPayload();
    sub_243BC72E0();
    sub_243BC7720(&qword_27EDA6408, &qword_27EDA63D8, &qword_243BD1868, sub_243BC7208);
    sub_243BD0AA8();
    sub_243BC8724(v20, &qword_27EDA63D0, &qword_243BD1860);
  }

  (*(v22 + 8))(v25, v21);
  v47 = v73;
  sub_243BC73EC(v32, v73);
  v48 = [v35 bundleForClass_];
  v49 = sub_243BD0898();
  v51 = v50;

  v87 = v49;
  v88 = v51;
  v87 = sub_243BD0BA8();
  v88 = v52;
  v89 = v53 & 1;
  v90 = v54;
  MEMORY[0x28223BE20](v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6418, &qword_243BD1880);
  sub_243BC7464();
  v55 = v77;
  sub_243BD0D08();
  v56 = *(sub_243BCDCC0() + 16);

  v57 = v78;
  v58 = *(v78 + 16);
  v59 = v75;
  if (v56)
  {
    v60 = v81;
    v58(v82, v55, v81);
    swift_storeEnumTagMultiPayload();
    sub_243BC7668();
    sub_243BC7720(&qword_27EDA6460, &qword_27EDA63B8, &qword_243BD1848, sub_243BC7464);
    sub_243BD0AA8();
  }

  else
  {
    v61 = v69;
    v60 = v81;
    v58(v69, v55, v81);
    sub_243BC86BC(v61, v82, &qword_27EDA63B0, &qword_243BD1840);
    swift_storeEnumTagMultiPayload();
    sub_243BC7668();
    sub_243BC7720(&qword_27EDA6460, &qword_27EDA63B8, &qword_243BD1848, sub_243BC7464);
    sub_243BD0AA8();
    sub_243BC8724(v61, &qword_27EDA63B0, &qword_243BD1840);
  }

  (*(v57 + 8))(v55, v60);
  v62 = v80;
  sub_243BC77B0(v59, v80, &qword_27EDA63C0, &qword_243BD1850);
  v63 = v74;
  sub_243BC86BC(v47, v74, &qword_27EDA63E0, &qword_243BD1870);
  v64 = v83;
  sub_243BC86BC(v62, v83, &qword_27EDA63C0, &qword_243BD1850);
  v65 = v84;
  sub_243BC86BC(v63, v84, &qword_27EDA63E0, &qword_243BD1870);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6468, &unk_243BD18A0);
  sub_243BC86BC(v64, v65 + *(v66 + 48), &qword_27EDA63C0, &qword_243BD1850);
  sub_243BC8724(v62, &qword_27EDA63C0, &qword_243BD1850);
  sub_243BC8724(v47, &qword_27EDA63E0, &qword_243BD1870);
  sub_243BC8724(v64, &qword_27EDA63C0, &qword_243BD1850);
  return sub_243BC8724(v63, &qword_27EDA63E0, &qword_243BD1870);
}

uint64_t sub_243BC3284(uint64_t a1)
{
  v2 = *(a1 + 8);
  v9 = sub_243BCDB4C();
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 80);
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = v4;
  *(v3 + 112) = *(a1 + 96);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  v6 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v6;
  sub_243BC71C8(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6470, &qword_243BD18C8);
  sub_243BC894C(&qword_27EDA6480, &qword_27EDA6470, &qword_243BD18C8);
  sub_243BC7820();
  sub_243BC728C();
  return sub_243BD0CF8();
}

uint64_t sub_243BC33B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v10 = v18[0];
  v11 = v18[1];
  v12 = swift_allocObject();
  v13 = *(a2 + 80);
  *(v12 + 80) = *(a2 + 64);
  *(v12 + 96) = v13;
  v14 = *(a2 + 96);
  v15 = *(a2 + 16);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v15;
  v16 = *(a2 + 48);
  *(v12 + 48) = *(a2 + 32);
  *(v12 + 64) = v16;
  *(v12 + 112) = v14;
  *(v12 + 120) = v6;
  *(v12 + 128) = v5;
  *(v12 + 136) = v7;
  *(v12 + 144) = v8;
  v19 = v8;
  *a3 = 0;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v6;
  *(a3 + 32) = v5;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = sub_243BC7B60;
  *(a3 + 64) = v12;
  swift_bridgeObjectRetain_n();
  return sub_243BC71C8(a2, v18);
}

uint64_t sub_243BC34D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v10[13] = sub_243BCDCC0();
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 80);
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = v4;
  *(v3 + 112) = *(a1 + 96);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  v6 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v6;
  sub_243BC71C8(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6470, &qword_243BD18C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6478, &qword_243BD18D0);
  sub_243BC894C(&qword_27EDA6480, &qword_27EDA6470, &qword_243BD18C8);
  sub_243BC7820();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6428, &qword_243BD1888);
  v8 = sub_243BC7524();
  v10[0] = v7;
  v10[1] = v8;
  swift_getOpaqueTypeConformance2();
  return sub_243BD0CF8();
}

uint64_t sub_243BC3664(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v8 = v43[0];
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  v10 = *(a2 + 80);
  *(v9 + 112) = *(a2 + 64);
  *(v9 + 128) = v10;
  *(v9 + 144) = *(a2 + 96);
  v11 = *(a2 + 16);
  *(v9 + 48) = *a2;
  *(v9 + 64) = v11;
  v12 = *(a2 + 48);
  *(v9 + 80) = *(a2 + 32);
  *(v9 + 96) = v12;
  swift_bridgeObjectRetain_n();
  sub_243BC71C8(a2, v43);
  v13 = *(sub_243BCDB4C() + 16);

  *v39 = 0;
  *&v39[8] = v8;
  *&v39[24] = v4;
  *&v40 = v3;
  *(&v40 + 1) = v5;
  LOBYTE(v41) = v6;
  *(&v41 + 1) = sub_243BC78EC;
  v42 = v9;
  if (v13 || (v6 & 1) != 0)
  {
    v34 = v40;
    v35 = v41;
    *&v36 = v42;
    v32 = *v39;
    v33 = *&v39[16];
    LOBYTE(v25) = 1;
    v38 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6440, &qword_243BD1890);
    sub_243BC75B0();
    sub_243BC728C();
    sub_243BD0AA8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    v27 = v40;
    v28 = v41;
    *&v29 = v42;
    *(&v29 + 1) = KeyPath;
    v25 = *v39;
    v26 = *&v39[16];
    v20 = v40;
    v21 = v41;
    v18 = *v39;
    v19 = *&v39[16];
    *&v22 = v42;
    *(&v22 + 1) = KeyPath;
    *&v23 = sub_243BC7934;
    *(&v23 + 1) = v15;
    *&v30 = sub_243BC7934;
    *(&v30 + 1) = v15;
    sub_243BC794C(v39, v43);
    sub_243BC86BC(&v18, v43, &qword_27EDA6440, &qword_243BD1890);
    sub_243BC8724(&v25, &qword_27EDA6440, &qword_243BD1890);
    v34 = v20;
    v35 = v21;
    v36 = v22;
    v37 = v23;
    v32 = v18;
    v33 = v19;
    v24 = 0;
    v38 = 0;
    sub_243BC86BC(&v18, v43, &qword_27EDA6440, &qword_243BD1890);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6440, &qword_243BD1890);
    sub_243BC75B0();
    sub_243BC728C();
    sub_243BD0AA8();
    sub_243BC7984(v39);
    sub_243BC8724(&v18, &qword_27EDA6440, &qword_243BD1890);
  }

  v29 = v43[4];
  v30 = v43[5];
  v31 = v44;
  v25 = v43[0];
  v26 = v43[1];
  v27 = v43[2];
  v28 = v43[3];
  v18 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
  v16 = sub_243BD0CD8();
  MEMORY[0x28223BE20](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6428, &qword_243BD1888);
  sub_243BC7524();
  sub_243BD0C18();

  v36 = v29;
  v37 = v30;
  v38 = v31;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v28;
  return sub_243BC8724(&v32, &qword_27EDA6428, &qword_243BD1888);
}

void sub_243BC3A58(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {
    v20 = *(a5 + 80);
    v21 = *(a5 + 96);
    *&v23 = a1;
    *(&v23 + 1) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
    sub_243BD0CC8();
    v20 = *(a5 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
    sub_243BD0CC8();
    sub_243BD0E68();
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    sub_243BD0F48();
    v23 = v20;
    MEMORY[0x245D4BBA0](0xD000000000000015, 0x8000000243BD40F0);
    *&v20 = a1;
    *(&v20 + 1) = a2;
    v21 = a3;
    v22 = 0;
    sub_243BD0F68();
    sub_243BC79BC();
    v9 = sub_243BD0EE8();
    v10 = v9;
    if (qword_27EDA62F8 == -1)
    {
      goto LABEL_7;
    }

LABEL_17:
    v9 = swift_once();
    goto LABEL_7;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return;
    }

    v20 = *(a5 + 40);
    v21 = *(a5 + 56);
    *&v23 = a1;
    *(&v23 + 1) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
    sub_243BD0CC8();
    v20 = *(a5 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
    sub_243BD0CC8();
    sub_243BD0E68();
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    sub_243BD0F48();
    v23 = v20;
    MEMORY[0x245D4BBA0](0xD00000000000001FLL, 0x8000000243BD40C0);
    *&v20 = a1;
    *(&v20 + 1) = a2;
    v21 = 3;
    v22 = 1;
    sub_243BD0F68();
    sub_243BC79BC();
    v17 = sub_243BD0EE8();
    v10 = v17;
    if (qword_27EDA62F8 != -1)
    {
      v17 = swift_once();
    }

    *&v20 = v10;
    MEMORY[0x28223BE20](v17);
    v19 = &v20;
    v12 = sub_243BC7A60;
    goto LABEL_8;
  }

  if (a3)
  {
    v20 = *(a5 + 80);
    v21 = *(a5 + 96);
    *&v23 = a1;
    *(&v23 + 1) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
    sub_243BD0CC8();
    v20 = *(a5 + 64);
    LOBYTE(v23) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
    sub_243BD0CC8();
    return;
  }

  v20 = *(a5 + 40);
  v21 = *(a5 + 56);
  *&v23 = a1;
  *(&v23 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
  sub_243BD0CC8();
  v20 = *(a5 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
  sub_243BD0CC8();
  sub_243BD0E68();
  *&v20 = 0;
  *(&v20 + 1) = 0xE000000000000000;
  sub_243BD0F48();
  v23 = v20;
  MEMORY[0x245D4BBA0](0xD000000000000017, 0x8000000243BD4110);
  *&v20 = a1;
  *(&v20 + 1) = a2;
  v21 = 0;
  v22 = 1;
  sub_243BD0F68();
  sub_243BC79BC();
  v9 = sub_243BD0EE8();
  v10 = v9;
  if (qword_27EDA62F8 != -1)
  {
    goto LABEL_17;
  }

LABEL_7:
  *&v20 = v10;
  MEMORY[0x28223BE20](v9);
  v19 = &v20;
  v12 = sub_243BC8B6C;
LABEL_8:
  if (sub_243BCA3C4(v12, &v18, v11))
  {
    v13 = sub_243BD0DE8();
    v15 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_243BD1690;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_243BC710C();
    *(v16 + 32) = v13;
    *(v16 + 40) = v15;
    sub_243BD08D8();
  }

  else
  {
  }
}

uint64_t sub_243BC4054@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_243BD0C58();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v59 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = v49 - v7;
  v51 = sub_243BD08C8();
  v50 = *(v51 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CACUILocaleUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  v14 = sub_243BD0898();
  v16 = v15;

  *&v61 = v14;
  *(&v61 + 1) = v16;
  sub_243BC7098();
  v57 = sub_243BD0BA8();
  v56 = v17;
  v54 = v18;
  v55 = v19;
  v52 = v12;
  v53 = ObjCClassFromMetadata;
  v20 = [v12 bundleForClass_];
  v49[1] = sub_243BD0898();
  v49[2] = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_243BD1690;
  v61 = *(v2 + 40);
  v62 = *(v2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
  sub_243BD0CB8();
  if (v64)
  {
    v23 = v63;
  }

  else
  {
    v23 = 4271950;
  }

  if (v64)
  {
    v24 = v64;
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  v25 = [objc_opt_self() currentLocale];
  sub_243BD08B8();

  v26 = sub_243BD08A8();
  v28 = v27;
  (*(v50 + 8))(v10, v51);
  if (v28)
  {
    *&v61 = v26;
    *(&v61 + 1) = v28;
    v23 = sub_243BD0F08();
    v30 = v29;

    v24 = v30;
  }

  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_243BC710C();
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  v31 = sub_243BD0DF8();
  v33 = v32;

  *&v61 = v31;
  *(&v61 + 1) = v33;
  v51 = sub_243BD0BA8();
  v50 = v34;
  sub_243BD0C38();
  v35 = [v52 bundleForClass_];
  v36 = sub_243BD0898();
  v38 = v37;

  *&v61 = v36;
  *(&v61 + 1) = v38;
  v39 = sub_243BD0BA8();
  v41 = v40;
  v43 = v42;
  v44 = swift_allocObject();
  v45 = *(v2 + 80);
  *(v44 + 80) = *(v2 + 64);
  *(v44 + 96) = v45;
  *(v44 + 112) = *(v2 + 96);
  v46 = *(v2 + 16);
  *(v44 + 16) = *v2;
  *(v44 + 32) = v46;
  v47 = *(v2 + 48);
  *(v44 + 48) = *(v2 + 32);
  *(v44 + 64) = v47;
  sub_243BC71C8(v2, &v61);
  sub_243BD0C48();

  sub_243BC70FC(v39, v41, v43 & 1);

  return sub_243BD0C28();
}

uint64_t sub_243BC4648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_243BD0C58();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v59 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = v49 - v7;
  v51 = sub_243BD08C8();
  v50 = *(v51 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CACUILocaleUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  v14 = sub_243BD0898();
  v16 = v15;

  *&v61 = v14;
  *(&v61 + 1) = v16;
  sub_243BC7098();
  v57 = sub_243BD0BA8();
  v56 = v17;
  v54 = v18;
  v55 = v19;
  v52 = v12;
  v53 = ObjCClassFromMetadata;
  v20 = [v12 bundleForClass_];
  v49[1] = sub_243BD0898();
  v49[2] = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_243BD1690;
  v61 = *(v2 + 80);
  v62 = *(v2 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
  sub_243BD0CB8();
  if (v64)
  {
    v23 = v63;
  }

  else
  {
    v23 = 4271950;
  }

  if (v64)
  {
    v24 = v64;
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  v25 = [objc_opt_self() currentLocale];
  sub_243BD08B8();

  v26 = sub_243BD08A8();
  v28 = v27;
  (*(v50 + 8))(v10, v51);
  if (v28)
  {
    *&v61 = v26;
    *(&v61 + 1) = v28;
    v23 = sub_243BD0F08();
    v30 = v29;

    v24 = v30;
  }

  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_243BC710C();
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  v31 = sub_243BD0DF8();
  v33 = v32;

  *&v61 = v31;
  *(&v61 + 1) = v33;
  v51 = sub_243BD0BA8();
  v50 = v34;
  sub_243BD0C38();
  v35 = [v52 bundleForClass_];
  v36 = sub_243BD0898();
  v38 = v37;

  *&v61 = v36;
  *(&v61 + 1) = v38;
  v39 = sub_243BD0BA8();
  v41 = v40;
  v43 = v42;
  v44 = swift_allocObject();
  v45 = *(v2 + 80);
  *(v44 + 80) = *(v2 + 64);
  *(v44 + 96) = v45;
  *(v44 + 112) = *(v2 + 96);
  v46 = *(v2 + 16);
  *(v44 + 16) = *v2;
  *(v44 + 32) = v46;
  v47 = *(v2 + 48);
  *(v44 + 48) = *(v2 + 32);
  *(v44 + 64) = v47;
  sub_243BC71C8(v2, &v61);
  sub_243BD0C48();

  sub_243BC70FC(v39, v41, v43 & 1);

  return sub_243BD0C28();
}

uint64_t sub_243BC4C40@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_243BC1D14(a1);
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

uint64_t sub_243BC4CD4(uint64_t a1)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
  result = sub_243BD0CB8();
  if (v5)
  {
    v3 = *(a1 + 8);
    sub_243BCE094(v4, v5);
  }

  return result;
}

uint64_t sub_243BC4D54(uint64_t a1)
{
  v6 = *(a1 + 80);
  v7 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
  result = sub_243BD0CB8();
  if (v5)
  {
    v3 = *(a1 + 8);
    sub_243BCE940(v4, v5);
  }

  return result;
}

uint64_t sub_243BC4DD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v20[0] = sub_243BD08C8();
  v3 = *(v20[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243BD0A68();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_243BD0A88();
  v26 = 1;
  sub_243BC5128(v2, v28);
  *&v25[55] = v29;
  *&v25[39] = v28[2];
  *&v25[23] = v28[1];
  *&v25[7] = v28[0];
  *&v24[17] = *&v25[16];
  *&v24[33] = *&v25[32];
  *&v24[49] = *&v25[48];
  v23 = v9;
  v24[0] = v26;
  *&v24[64] = *(&v29 + 1);
  *&v24[1] = *v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA65F0, &qword_243BD1C88);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_243BD1690;
  sub_243BD0A58();
  sub_243BD0A48();
  v27[0] = *v2;
  *(v27 + 9) = *(v2 + 9);
  v11 = objc_opt_self();

  v12 = [v11 currentLocale];
  sub_243BD08B8();

  v13 = sub_243BD08A8();
  v15 = v14;
  (*(v3 + 8))(v6, v20[0]);
  if (v15)
  {
    *&v21[0] = v13;
    *(&v21[0] + 1) = v15;
    sub_243BC7098();
    sub_243BD0F08();

    sub_243BC8994(v27);
  }

  sub_243BD0A38();

  sub_243BD0A48();
  *(v10 + 32) = sub_243BD0A78();
  *(v10 + 40) = v16;
  *(v10 + 48) = v17 & 1;
  *(v10 + 56) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA65F8, &qword_243BD1C90);
  sub_243BC894C(&qword_27EDA6600, &qword_27EDA65F8, &qword_243BD1C90);
  sub_243BD0C08();

  v21[2] = *&v24[16];
  v21[3] = *&v24[32];
  v21[4] = *&v24[48];
  v22 = *&v24[64];
  v21[0] = v23;
  v21[1] = *v24;
  return sub_243BC8724(v21, &qword_27EDA65F8, &qword_243BD1C90);
}

uint64_t sub_243BC5128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243BD0A18();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v4);
  v71 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243BD08C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  v70 = *(a1 + 16);
  LODWORD(v74) = *(a1 + 24);
  v14 = [objc_opt_self() currentLocale];
  sub_243BD08B8();

  v15 = sub_243BD08A8();
  v17 = v16;
  (*(v8 + 8))(v11, v7);
  if (v17)
  {
    v76 = v15;
    v77 = v17;
    sub_243BC7098();
    v12 = sub_243BD0F08();
    v13 = v18;
  }

  else
  {
  }

  v76 = v12;
  v77 = v13;
  v68 = sub_243BC7098();
  v19 = sub_243BD0BA8();
  v21 = v20;
  v23 = v22;
  v79 = *(a1 + 40);
  v24 = *(a1 + 32);
  v78 = v24;
  v69 = v79;
  if (v79 == 1)
  {
    if (v24)
    {
LABEL_6:
      v25 = &selRef_labelColor;
      goto LABEL_9;
    }
  }

  else
  {

    sub_243BD0E98();
    v26 = sub_243BD0AF8();
    sub_243BD08D8();

    v27 = v71;
    sub_243BD0A08();
    swift_getAtKeyPath();
    sub_243BC8724(&v78, &qword_27EDA6608, &qword_243BD1C98);
    (*(v72 + 8))(v27, v73);
    if (v76)
    {
      goto LABEL_6;
    }
  }

  v25 = &selRef_secondaryLabelColor;
LABEL_9:
  v28 = [objc_opt_self() *v25];
  sub_243BD0C68();
  v29 = sub_243BD0B88();
  v31 = v30;
  v75 = v32;
  v34 = v33;

  sub_243BC70FC(v19, v21, v23 & 1);

  v35 = 0;
  if (v74)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    if (v70 >= 3)
    {
      type metadata accessor for CACUILocaleUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v40 = [objc_opt_self() bundleForClass_];
      v41 = sub_243BD0898();
      v43 = v42;

      v76 = v41;
      v77 = v43;
      v44 = sub_243BD0BA8();
      v46 = v45;
      v48 = v47;
      sub_243BD0B68();
      v70 = sub_243BD0B98();
      v68 = v49;
      v65 = v50;
      v74 = v51;

      sub_243BC70FC(v44, v46, v48 & 1);

      v66 = v29;
      v67 = v34;
      v64 = v31;
      if (!v69)
      {

        sub_243BD0E98();
        v52 = sub_243BD0AF8();
        sub_243BD08D8();

        v53 = v71;
        sub_243BD0A08();
        swift_getAtKeyPath();
        sub_243BC8724(&v78, &qword_27EDA6608, &qword_243BD1C98);
        (*(v72 + 8))(v53, v73);
      }

      v54 = [objc_opt_self() secondaryLabelColor];
      sub_243BD0C68();
      v55 = v65;
      v56 = v70;
      v57 = v68;
      v35 = sub_243BD0B88();
      v36 = v58;
      v60 = v59;
      v38 = v61;

      sub_243BC70FC(v56, v57, v55 & 1);

      v37 = v60 & 1;
      sub_243BC70EC(v35, v36, v37);

      v29 = v66;
      v34 = v67;
      v31 = v64;
    }
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
  }

  v62 = v75 & 1;
  sub_243BC70EC(v29, v31, v75 & 1);

  sub_243BC89E8(v35, v36, v37, v38);
  sub_243BC8A2C(v35, v36, v37, v38);
  LOBYTE(v76) = v62;
  *a2 = v29;
  *(a2 + 8) = v31;
  *(a2 + 16) = v62;
  *(a2 + 24) = v34;
  *(a2 + 32) = v35;
  *(a2 + 40) = v36;
  *(a2 + 48) = v37;
  *(a2 + 56) = v38;
  sub_243BC8A2C(v35, v36, v37, v38);
  sub_243BC70FC(v29, v31, v62);
}

uint64_t sub_243BC57B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return sub_243BC4DD4(a1);
}

uint64_t sub_243BC57F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243BD0A28();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64D8, &qword_243BD1AA8);
  return sub_243BC5848(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_243BC5848@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v137 = a2;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64E0, &qword_243BD1AB0);
  v3 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v5 = &v114 - v4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64E8, &qword_243BD1AB8);
  v6 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v130 = &v114 - v7;
  *(&v135 + 1) = sub_243BD0AC8();
  v8 = *(*(&v135 + 1) - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](*(&v135 + 1));
  v121 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6360, &qword_243BD1810);
  v120 = *(v135 - 8);
  v11 = *(v120 + 64);
  MEMORY[0x28223BE20](v135);
  v119 = &v114 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6368, &qword_243BD1818);
  v122 = *(v131 - 8);
  v13 = *(v122 + 64);
  MEMORY[0x28223BE20](v131);
  v123 = &v114 - v14;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64F0, &qword_243BD1AC0);
  v15 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v136 = &v114 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64F8, &qword_243BD1AC8);
  v17 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v19 = &v114 - v18;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6500, &qword_243BD1AD0);
  v20 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v126 = &v114 - v21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6508, &qword_243BD1AD8);
  v22 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v127 = &v114 - v23;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6510, &qword_243BD1AE0);
  v24 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v26 = &v114 - v25;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6518, &qword_243BD1AE8);
  v27 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v128 = &v114 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6520, &qword_243BD1AF0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v144 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v114 - v33;
  v35 = a1[3];
  v36 = a1[4];
  v37 = a1[5];
  v38 = *(a1 + 48);
  KeyPath = swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  v140 = sub_243BD0B08();
  sub_243BD0948();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  LOBYTE(v152) = v38;
  LOBYTE(v147) = 0;
  v160 = 0;
  v142 = v38;
  v143 = v35;
  v146 = v34;
  v145 = v36;
  if (v38 == 1)
  {
    v116 = v8;
    v47 = *(&v135 + 1);
    v48 = v135;
    v117 = v19;
    v118 = v37;
    if (v37 > 1)
    {
      if (v37 == 2)
      {

        v69 = v143;
        if (v143 == a1[1] && v36 == a1[2] || (sub_243BD0F98() & 1) != 0)
        {
          v70 = sub_243BD0C78();
          sub_243BD0B28();
          sub_243BD0B38();
          v71 = sub_243BD0B58();

          v72 = swift_getKeyPath();
          v73 = sub_243BD0B18();
          sub_243BD0948();
          LOBYTE(v152) = 0;
          v160 = 0;
          *&v147 = v70;
          *(&v147 + 1) = v72;
          *&v148 = v71;
          BYTE8(v148) = v73;
          *&v149 = v74;
          *(&v149 + 1) = v75;
          *&v150 = v76;
          *(&v150 + 1) = v77;
          *v151 = 0;
        }

        else
        {
          v160 = 1;
          v151[1] = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6528, &qword_243BD1B28);
        sub_243BC8080();
        sub_243BD0AA8();
        v34 = v146;
        v99 = v155;
        v100 = v136;
        *(v136 + 32) = v154;
        *(v100 + 48) = v99;
        *(v100 + 64) = v156;
        v101 = v153;
        *v100 = v152;
        *(v100 + 16) = v101;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6558, &qword_243BD1B40);
        sub_243BC81C4();
        sub_243BC8630();
        sub_243BD0AA8();
        goto LABEL_17;
      }

      v88 = v26;

      v89 = sub_243BD0C78();
      sub_243BD0B28();
      sub_243BD0B48();
      v90 = sub_243BD0B58();

      v91 = swift_getKeyPath();
      *&v152 = v89;
      *(&v152 + 1) = v91;
      *&v153 = v90;
      type metadata accessor for CACUILocaleUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v93 = [objc_opt_self() bundleForClass_];
      v94 = sub_243BD0898();
      v96 = v95;

      *&v147 = v94;
      *(&v147 + 1) = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6540, &unk_243BD1B30);
      sub_243BC810C();
      sub_243BC7098();
      v97 = v128;
      sub_243BD0BF8();

      sub_243BC86BC(v97, v126, &qword_27EDA6518, &qword_243BD1AE8);
      swift_storeEnumTagMultiPayload();
      sub_243BC82D4();
      v98 = v127;
      sub_243BD0AA8();
      sub_243BC86BC(v98, v117, &qword_27EDA6508, &qword_243BD1AD8);
      swift_storeEnumTagMultiPayload();
      sub_243BC8250();
      sub_243BC83D8();
      sub_243BD0AA8();
      sub_243BC8724(v98, &qword_27EDA6508, &qword_243BD1AD8);
      sub_243BC86BC(v88, v136, &qword_27EDA6510, &qword_243BD1AE0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6558, &qword_243BD1B40);
      sub_243BC81C4();
      sub_243BC8630();
      v34 = v146;
      v36 = v145;
      sub_243BD0AA8();
      sub_243BC8724(v88, &qword_27EDA6510, &qword_243BD1AE0);
      v60 = v97;
    }

    else
    {
      v115 = v26;
      if (v37)
      {

        v78 = v119;
        sub_243BD0978();
        v79 = v121;
        sub_243BD0AB8();
        v80 = sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810);
        v81 = sub_243BC8390(&qword_27EDA6380, MEMORY[0x277CDE328]);
        v82 = v123;
        v83 = v48;
        v84 = v80;
        sub_243BD0BD8();
        v36 = v145;
        (*(v116 + 8))(v79, v47);
        (*(v120 + 8))(v78, v83);
        v85 = v122;
        (*(v122 + 16))(v5, v82, v131);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6590, &qword_243BD1B48);
        v152 = __PAIR128__(v47, v83);
        *&v153 = v84;
        *(&v153 + 1) = v81;
        swift_getOpaqueTypeConformance2();
        sub_243BC8524();
        v86 = v130;
        sub_243BD0AA8();
        sub_243BC86BC(v86, v117, &qword_27EDA64E8, &qword_243BD1AB8);
        swift_storeEnumTagMultiPayload();
        sub_243BC8250();
        sub_243BC83D8();
        v87 = v115;
        sub_243BD0AA8();
        sub_243BC8724(v86, &qword_27EDA64E8, &qword_243BD1AB8);
        sub_243BC86BC(v87, v136, &qword_27EDA6510, &qword_243BD1AE0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6558, &qword_243BD1B40);
        sub_243BC81C4();
        sub_243BC8630();
        v34 = v146;
        sub_243BD0AA8();
        sub_243BC8724(v87, &qword_27EDA6510, &qword_243BD1AE0);
        (*(v85 + 8))(v123, v131);
LABEL_14:
        v69 = v143;
LABEL_17:
        v37 = v118;
        goto LABEL_18;
      }

      v49 = sub_243BD0C78();
      sub_243BD0B28();
      sub_243BD0B48();
      v50 = sub_243BD0B58();

      v51 = swift_getKeyPath();
      *&v152 = v49;
      *(&v152 + 1) = v51;
      *&v153 = v50;
      type metadata accessor for CACUILocaleUtilities();
      v52 = swift_getObjCClassFromMetadata();
      v53 = [objc_opt_self() bundleForClass_];
      v54 = sub_243BD0898();
      v56 = v55;

      *&v147 = v54;
      *(&v147 + 1) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6540, &unk_243BD1B30);
      sub_243BC810C();
      v57 = v115;
      sub_243BC7098();
      v58 = v128;
      sub_243BD0BF8();

      sub_243BC86BC(v58, v126, &qword_27EDA6518, &qword_243BD1AE8);
      swift_storeEnumTagMultiPayload();
      sub_243BC82D4();
      v59 = v127;
      sub_243BD0AA8();
      sub_243BC86BC(v59, v117, &qword_27EDA6508, &qword_243BD1AD8);
      swift_storeEnumTagMultiPayload();
      sub_243BC8250();
      sub_243BC83D8();
      sub_243BD0AA8();
      sub_243BC8724(v59, &qword_27EDA6508, &qword_243BD1AD8);
      sub_243BC86BC(v57, v136, &qword_27EDA6510, &qword_243BD1AE0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6558, &qword_243BD1B40);
      sub_243BC81C4();
      sub_243BC8630();
      v34 = v146;
      sub_243BD0AA8();
      sub_243BC8724(v57, &qword_27EDA6510, &qword_243BD1AE0);
      v60 = v58;
    }

    sub_243BC8724(v60, &qword_27EDA6518, &qword_243BD1AE8);
    goto LABEL_14;
  }

  v61 = *a1;
  v62 = sub_243BD0D38();
  v63 = sub_243BD0AD8();
  sub_243BD0D48();
  *v5 = v37;
  *(v5 + 1) = v35;
  *(v5 + 2) = v36;
  *(v5 + 3) = v62;
  *(v5 + 8) = v63;
  *(v5 + 5) = v64;
  *(v5 + 6) = v65;
  v5[56] = 1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6590, &qword_243BD1B48);
  v66 = sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810);
  v67 = sub_243BC8390(&qword_27EDA6380, MEMORY[0x277CDE328]);
  v152 = v135;
  *&v153 = v66;
  *(&v153 + 1) = v67;
  swift_getOpaqueTypeConformance2();
  sub_243BC8524();
  v68 = v130;
  sub_243BD0AA8();
  sub_243BC86BC(v68, v19, &qword_27EDA64E8, &qword_243BD1AB8);
  swift_storeEnumTagMultiPayload();
  sub_243BC8250();
  sub_243BC83D8();
  sub_243BD0AA8();
  sub_243BC8724(v68, &qword_27EDA64E8, &qword_243BD1AB8);
  sub_243BC86BC(v26, v136, &qword_27EDA6510, &qword_243BD1AE0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6558, &qword_243BD1B40);
  sub_243BC81C4();
  sub_243BC8630();
  sub_243BD0AA8();
  sub_243BC8724(v26, &qword_27EDA6510, &qword_243BD1AE0);
  v69 = v143;
LABEL_18:
  v102 = v144;
  sub_243BC86BC(v34, v144, &qword_27EDA6520, &qword_243BD1AF0);
  *&v147 = v69;
  *(&v147 + 1) = v36;
  *&v148 = v37;
  v103 = v142;
  BYTE8(v148) = v142;
  *(&v148 + 9) = v163[0];
  HIDWORD(v148) = *(v163 + 3);
  v104 = KeyPath;
  *&v149 = KeyPath;
  BYTE8(v149) = 0;
  HIDWORD(v149) = *&v162[3];
  *(&v149 + 9) = *v162;
  v105 = v140;
  LOBYTE(v150) = v140;
  DWORD1(v150) = *&v161[3];
  *(&v150 + 1) = *v161;
  *(&v150 + 1) = v40;
  *v151 = v42;
  *&v151[8] = v44;
  *&v151[16] = v46;
  v151[24] = 0;
  v106 = v148;
  v107 = v69;
  v108 = v137;
  *v137 = v147;
  v108[1] = v106;
  v109 = v149;
  v110 = v150;
  v111 = *v151;
  *(v108 + 73) = *&v151[9];
  v108[3] = v110;
  v108[4] = v111;
  v108[2] = v109;
  *(v108 + 12) = 0;
  *(v108 + 104) = 1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA65B8, &qword_243BD1B58);
  sub_243BC86BC(v102, v108 + *(v112 + 64), &qword_27EDA6520, &qword_243BD1AF0);
  sub_243BC86BC(&v147, &v152, &qword_27EDA65C0, &qword_243BD1B60);
  sub_243BC8724(v146, &qword_27EDA6520, &qword_243BD1AF0);
  sub_243BC8724(v102, &qword_27EDA6520, &qword_243BD1AF0);
  *&v152 = v107;
  *(&v152 + 1) = v145;
  *&v153 = v37;
  BYTE8(v153) = v103;
  *(&v153 + 9) = v163[0];
  HIDWORD(v153) = *(v163 + 3);
  *&v154 = v104;
  BYTE8(v154) = 0;
  *(&v154 + 9) = *v162;
  HIDWORD(v154) = *&v162[3];
  LOBYTE(v155) = v105;
  DWORD1(v155) = *&v161[3];
  *(&v155 + 1) = *v161;
  *(&v155 + 1) = v40;
  v156 = v42;
  v157 = v44;
  v158 = v46;
  v159 = 0;
  return sub_243BC8724(&v152, &qword_27EDA65C0, &qword_243BD1B60);
}

uint64_t sub_243BC6DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  sub_243BC794C(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64C0, &qword_243BD1A98);
  sub_243BC894C(&qword_27EDA64C8, &qword_27EDA64C0, &qword_243BD1A98);
  sub_243BD0CE8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64D0, &qword_243BD1AA0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_243BC6F28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  *a2 = v5;
  return result;
}

uint64_t sub_243BC6FA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243BD0928();
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

unint64_t sub_243BC7098()
{
  result = qword_27EDA6370;
  if (!qword_27EDA6370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6370);
  }

  return result;
}

uint64_t sub_243BC70EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_243BC70FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_243BC710C()
{
  result = qword_27EDA63A0;
  if (!qword_27EDA63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA63A0);
  }

  return result;
}

uint64_t sub_243BC7160@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243BD09E8();
  *a1 = result & 1;
  return result;
}

unint64_t sub_243BC7208()
{
  result = qword_27EDA63F0;
  if (!qword_27EDA63F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA63E8, &qword_243BD1878);
    sub_243BC728C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA63F0);
  }

  return result;
}

unint64_t sub_243BC728C()
{
  result = qword_27EDA63F8;
  if (!qword_27EDA63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA63F8);
  }

  return result;
}

unint64_t sub_243BC72E0()
{
  result = qword_27EDA6400;
  if (!qword_27EDA6400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA63D0, &qword_243BD1860);
    sub_243BC7720(&qword_27EDA6408, &qword_27EDA63D8, &qword_243BD1868, sub_243BC7208);
    sub_243BC7398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6400);
  }

  return result;
}

unint64_t sub_243BC7398()
{
  result = qword_27EDA6410;
  if (!qword_27EDA6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6410);
  }

  return result;
}

uint64_t sub_243BC73EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63E0, &qword_243BD1870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243BC7464()
{
  result = qword_27EDA6420;
  if (!qword_27EDA6420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6418, &qword_243BD1880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6428, &qword_243BD1888);
    sub_243BC7524();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6420);
  }

  return result;
}

unint64_t sub_243BC7524()
{
  result = qword_27EDA6430;
  if (!qword_27EDA6430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6428, &qword_243BD1888);
    sub_243BC75B0();
    sub_243BC728C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6430);
  }

  return result;
}

unint64_t sub_243BC75B0()
{
  result = qword_27EDA6438;
  if (!qword_27EDA6438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6440, &qword_243BD1890);
    sub_243BC728C();
    sub_243BC894C(&qword_27EDA6448, &qword_27EDA6450, &qword_243BD1898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6438);
  }

  return result;
}

unint64_t sub_243BC7668()
{
  result = qword_27EDA6458;
  if (!qword_27EDA6458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA63B0, &qword_243BD1840);
    sub_243BC7720(&qword_27EDA6460, &qword_27EDA63B8, &qword_243BD1848, sub_243BC7464);
    sub_243BC7398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6458);
  }

  return result;
}

uint64_t sub_243BC7720(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243BC77B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_243BC7820()
{
  result = qword_27EDA6488;
  if (!qword_27EDA6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6488);
  }

  return result;
}

uint64_t sub_243BC787C()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[10];

  v4 = v0[12];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[18];

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

unint64_t sub_243BC79BC()
{
  result = qword_27EDA6490;
  if (!qword_27EDA6490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDA6490);
  }

  return result;
}

uint64_t sub_243BC7A08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243BD09C8();
  *a1 = result;
  return result;
}

uint64_t sub_243BC7A34(uint64_t *a1)
{
  v1 = *a1;

  return sub_243BD09D8();
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_243BC7AF0()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 145, 7);
}

uint64_t sub_243BC7B60()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[3];
  return sub_243BCF12C(v1, v2);
}

__n128 sub_243BC7B88@<Q0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_243BD0CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6498, &qword_243BD1950);
  sub_243BD0CA8();
  sub_243BD0CA8();
  sub_243BD0CA8();
  type metadata accessor for CACUILanguageViewModel();
  sub_243BC8390(&qword_27EDA64A0, type metadata accessor for CACUILanguageViewModel);
  *a2 = sub_243BD0998();
  *(a2 + 8) = v4;
  *(a2 + 16) = a1;
  *(a2 + 24) = v6.n128_u8[0];
  *(a2 + 32) = v6.n128_u64[1];
  result = v6;
  *(a2 + 40) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v6.n128_u8[0];
  *(a2 + 72) = v6.n128_u64[1];
  *(a2 + 80) = v6;
  *(a2 + 96) = v7;
  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_243BC7D28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_243BC7D70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CACUILanguageView.ContextView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CACUILanguageView.ContextView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243BC7F88()
{
  result = qword_27EDA64B8;
  if (!qword_27EDA64B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA64B8);
  }

  return result;
}

uint64_t sub_243BC7FF8()
{
  v1 = v0[4];

  v2 = v0[6];

  if (v0[9])
  {
    v3 = v0[10];
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_243BC8048()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 80);
    return v1();
  }

  return result;
}

unint64_t sub_243BC8080()
{
  result = qword_27EDA6530;
  if (!qword_27EDA6530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6528, &qword_243BD1B28);
    sub_243BC810C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6530);
  }

  return result;
}

unint64_t sub_243BC810C()
{
  result = qword_27EDA6538;
  if (!qword_27EDA6538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6540, &unk_243BD1B30);
    sub_243BC894C(&qword_27EDA6548, &qword_27EDA6550, &qword_243BD2080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6538);
  }

  return result;
}

unint64_t sub_243BC81C4()
{
  result = qword_27EDA6560;
  if (!qword_27EDA6560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6510, &qword_243BD1AE0);
    sub_243BC8250();
    sub_243BC83D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6560);
  }

  return result;
}

unint64_t sub_243BC8250()
{
  result = qword_27EDA6568;
  if (!qword_27EDA6568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6508, &qword_243BD1AD8);
    sub_243BC82D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6568);
  }

  return result;
}

unint64_t sub_243BC82D4()
{
  result = qword_27EDA6570;
  if (!qword_27EDA6570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6518, &qword_243BD1AE8);
    sub_243BC810C();
    sub_243BC8390(&qword_27EDA6578, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6570);
  }

  return result;
}

uint64_t sub_243BC8390(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243BC83D8()
{
  result = qword_27EDA6580;
  if (!qword_27EDA6580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA64E8, &qword_243BD1AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6360, &qword_243BD1810);
    sub_243BD0AC8();
    sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810);
    sub_243BC8390(&qword_27EDA6380, MEMORY[0x277CDE328]);
    swift_getOpaqueTypeConformance2();
    sub_243BC8524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6580);
  }

  return result;
}

unint64_t sub_243BC8524()
{
  result = qword_27EDA6588;
  if (!qword_27EDA6588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6590, &qword_243BD1B48);
    sub_243BC85DC();
    sub_243BC894C(&qword_27EDA65A0, &qword_27EDA65A8, &qword_243BD1B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6588);
  }

  return result;
}

unint64_t sub_243BC85DC()
{
  result = qword_27EDA6598;
  if (!qword_27EDA6598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6598);
  }

  return result;
}

unint64_t sub_243BC8630()
{
  result = qword_27EDA65B0;
  if (!qword_27EDA65B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6558, &qword_243BD1B40);
    sub_243BC8080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA65B0);
  }

  return result;
}

uint64_t sub_243BC86BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_243BC8724(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243BC87A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_243BC87EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243BC884C()
{
  result = qword_27EDA65C8;
  if (!qword_27EDA65C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA64D0, &qword_243BD1AA0);
    sub_243BC894C(&qword_27EDA65D0, &qword_27EDA65D8, &qword_243BD1C28);
    sub_243BC894C(&qword_27EDA65E0, &qword_27EDA65E8, qword_243BD1C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA65C8);
  }

  return result;
}

uint64_t sub_243BC894C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_243BC89E8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_243BC70EC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_243BC8A2C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_243BC70FC(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_243BC8A74()
{
  result = qword_27EDA6610;
  if (!qword_27EDA6610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6618, &unk_243BD1CA0);
    sub_243BC894C(&qword_27EDA6600, &qword_27EDA65F8, &qword_243BD1C90);
    sub_243BC8390(&qword_27EDA6578, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6610);
  }

  return result;
}

uint64_t sub_243BC8B98()
{
  sub_243BC79BC();
  result = sub_243BD0EF8();
  qword_27EDA6F70 = result;
  return result;
}

uint64_t sub_243BC8BFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6628, &unk_243BD1CC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_243BD1CB0;
  if (qword_27EDA62F0 != -1)
  {
    v1 = v0;
    swift_once();
    v0 = v1;
  }

  *(v0 + 32) = qword_27EDA6F70;
  qword_27EDA6620 = v0;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_243BC8D00()
{
  v1 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_243BC8DB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_243BC8E08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id CACLanguageViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CACLanguageViewBridge.init()()
{
  v1 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model;
  v2 = type metadata accessor for CACUILanguageViewModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *&v0[v1] = sub_243BCDE2C(MEMORY[0x277D84F90]);
  *&v0[OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for CACLanguageViewBridge();
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = *&v5[OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model];
  v7 = *(v6 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate);
  *(v6 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate) = v5;
  v8 = v5;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_243BC8FE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model);

  sub_243BC7B88(0, v4);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6640, &qword_243BD1CD0));
  return sub_243BD0A98();
}

uint64_t sub_243BC911C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model;
  v4 = *(v1 + OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model);

  sub_243BC7B88(0, v19);
  if (a1)
  {
    v5 = *(a1 + 16);
    v16 = *(v1 + v3);

    if (v5)
    {
      sub_243BC7098();
      v6 = (a1 + 40);
      v7 = MEMORY[0x277D84F90];
      do
      {
        v17 = *(v6 - 1);
        v18 = *v6;
        v8 = sub_243BD0F18();
        v10 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_243BCA5F0(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_243BCA5F0((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        v13 = &v7[32 * v12];
        *(v13 + 4) = v8;
        *(v13 + 5) = v10;
        *(v13 + 6) = 0;
        v13[56] = 1;
        v6 += 2;
        --v5;
      }

      while (v5);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    sub_243BCF364(v7);
  }

  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6640, &qword_243BD1CD0));
  return sub_243BD0A98();
}

uint64_t sub_243BC9378()
{
  v1 = *(v0 + OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model);
  sub_243BC7098();

  sub_243BD0F18();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_243BD0928();
}

void sub_243BC9460(void *a1)
{
  v3 = sub_243BCA768(a1);
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model);

    sub_243BCF364(v4);
  }

  else
  {
    sub_243BD0EA8();
    sub_243BD0F48();

    v18[0] = 0xD000000000000026;
    v18[1] = 0x8000000243BD42D0;
    v6 = [a1 description];
    v7 = sub_243BD0DD8();
    v9 = v8;

    MEMORY[0x245D4BBA0](v7, v9);

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v10 = sub_243BD0EE8();
    v11 = v10;
    if (qword_27EDA62F8 != -1)
    {
      v10 = swift_once();
    }

    v18[0] = v11;
    MEMORY[0x28223BE20](v10);
    v17[2] = v18;
    if (sub_243BCA3C4(sub_243BCACA0, v17, v12))
    {
      v13 = sub_243BD0DE8();
      v15 = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_243BD1690;
      *(v16 + 56) = MEMORY[0x277D837D0];
      *(v16 + 64) = sub_243BC710C();
      *(v16 + 32) = v13;
      *(v16 + 40) = v15;
      sub_243BD08D8();
    }

    else
    {
    }
  }
}

uint64_t sub_243BC9750(void *a1)
{
  result = sub_243BCB2B0(a1);
  if (v3)
  {
    v6 = result;
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = *(v1 + OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6648, &qword_243BD2240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243BD1690;
    *(inited + 32) = v6;
    *(inited + 40) = v7;
    *(inited + 48) = v8;
    *(inited + 56) = v9 & 1;

    sub_243BCF364(inited);

    swift_setDeallocating();
    return sub_243BC8994(inited + 32);
  }

  return result;
}

id CACLanguageViewBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CACLanguageViewBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CACLanguageViewBridge.downloadLanguage(withIdentifier:)(Swift::String withIdentifier)
{
  v2 = v1;
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v5 = qword_27EDA6F70;
  sub_243BD0F48();

  v16[0] = 0xD000000000000015;
  v16[1] = 0x8000000243BD4300;
  v6 = MEMORY[0x245D4BBA0](countAndFlagsBits, object);
  if (qword_27EDA62F8 != -1)
  {
    v6 = swift_once();
  }

  v16[0] = v5;
  MEMORY[0x28223BE20](v6);
  v15[2] = v16;
  if (sub_243BCA3C4(sub_243BCC0F0, v15, v7))
  {
    v8 = sub_243BD0DE8();
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_243BD1690;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_243BC710C();
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    sub_243BD08D8();
  }

  v12 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13)
  {
    swift_unknownObjectRetain();
    v14 = sub_243BD0DC8();
    [v13 downloadLanguageWithIdentifier_];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall CACLanguageViewBridge.cancelDownload(withIdentifier:)(Swift::String withIdentifier)
{
  v2 = v1;
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v5 = qword_27EDA6F70;
  sub_243BD0F48();

  v16[0] = 0xD000000000000013;
  v16[1] = 0x8000000243BD4320;
  v6 = MEMORY[0x245D4BBA0](countAndFlagsBits, object);
  if (qword_27EDA62F8 != -1)
  {
    v6 = swift_once();
  }

  v16[0] = v5;
  MEMORY[0x28223BE20](v6);
  v15[2] = v16;
  if (sub_243BCA3C4(sub_243BCC0F0, v15, v7))
  {
    v8 = sub_243BD0DE8();
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_243BD1690;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_243BC710C();
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    sub_243BD08D8();
  }

  v12 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13)
  {
    swift_unknownObjectRetain();
    v14 = sub_243BD0DC8();
    [v13 cancelDownloadWithIdentifier_];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall CACLanguageViewBridge.selectedLanguage(withIdentifier:)(Swift::String withIdentifier)
{
  v2 = v1;
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v5 = qword_27EDA6F70;
  sub_243BD0F48();

  v16[0] = 0xD000000000000015;
  v16[1] = 0x8000000243BD4340;
  v6 = MEMORY[0x245D4BBA0](countAndFlagsBits, object);
  if (qword_27EDA62F8 != -1)
  {
    v6 = swift_once();
  }

  v16[0] = v5;
  MEMORY[0x28223BE20](v6);
  v15[2] = v16;
  if (sub_243BCA3C4(sub_243BCC0F0, v15, v7))
  {
    v8 = sub_243BD0DE8();
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_243BD1690;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_243BC710C();
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    sub_243BD08D8();
  }

  v12 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13)
  {
    swift_unknownObjectRetain();
    v14 = sub_243BD0DC8();
    [v13 selectedLanguageWithIdentifier_];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_243BCA11C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_243BD0DD8();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_243BCA188(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_243BCF964(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_243BCC090(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_243BCF964((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_243BCA2C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_243BCA340(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243BD0928();
}

uint64_t sub_243BCA3C4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x245D4BCD0](v5, a3);
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
      v13 = sub_243BD0F78();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

char *sub_243BCA4EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6660, &qword_243BD1D88);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_243BCA5F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6648, &qword_243BD2240);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_243BCA6FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
  return sub_243BD0ED8() & 1;
}

char *sub_243BCA768(void *a1)
{
  v39 = a1;
  v1 = [a1 allKeys];
  v2 = sub_243BD0E48();

  v3 = sub_243BCA188(v2);

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v35 = v3;
  v36 = "No status string for ";
  v38 = 0x8000000243BD4540;
  v5 = (v3 + 40);
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D837D0];
  v37 = xmmword_243BD1690;
  do
  {
    v8 = *(v5 - 1);
    v9 = *v5;

    v10 = sub_243BD0DC8();
    v11 = [v39 objectForKey_];

    if (v11)
    {
      sub_243BD0F28();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    v44[0] = v42;
    v44[1] = v43;
    if (*(&v43 + 1))
    {
      if (swift_dynamicCast())
      {
        *&v44[0] = v8;
        *(&v44[0] + 1) = v9;
        *&v42 = 95;
        *(&v42 + 1) = 0xE100000000000000;
        v40 = 45;
        v41 = 0xE100000000000000;
        v33 = sub_243BC7098();
        v34 = v33;
        v32[0] = v7;
        v32[1] = v33;
        v12 = sub_243BD0F18();
        v14 = v13;

        if (sub_243BD0E38())
        {

          v15 = 2;
        }

        else if (sub_243BD0E38())
        {

          v15 = 1;
        }

        else
        {
          v27 = sub_243BD0E38();

          v15 = v27 & 1;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_243BCA5F0(0, *(v6 + 2) + 1, 1, v6);
        }

        v29 = *(v6 + 2);
        v28 = *(v6 + 3);
        if (v29 >= v28 >> 1)
        {
          v6 = sub_243BCA5F0((v28 > 1), v29 + 1, 1, v6);
        }

        *(v6 + 2) = v29 + 1;
        v30 = &v6[32 * v29];
        *(v30 + 4) = v12;
        *(v30 + 5) = v14;
        *(v30 + 6) = v15;
        v30[56] = 1;
        goto LABEL_5;
      }
    }

    else
    {
      sub_243BCBFE0(v44);
    }

    sub_243BD0E88();
    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    sub_243BD0F48();

    *&v44[0] = 0xD000000000000015;
    *(&v44[0] + 1) = v38;
    MEMORY[0x245D4BBA0](v8, v9);

    MEMORY[0x245D4BBA0](8238, 0xE200000000000000);
    v16 = [v39 description];
    v17 = sub_243BD0DD8();
    v19 = v18;

    MEMORY[0x245D4BBA0](v17, v19);

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v20 = sub_243BD0EE8();
    v21 = v20;
    if (qword_27EDA62F8 != -1)
    {
      v20 = swift_once();
    }

    *&v44[0] = v21;
    MEMORY[0x28223BE20](v20);
    v33 = v44;
    if (sub_243BCA3C4(sub_243BCC0F0, v32, v22))
    {
      v23 = sub_243BD0DE8();
      v25 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
      v26 = swift_allocObject();
      *(v26 + 16) = v37;
      *(v26 + 56) = MEMORY[0x277D837D0];
      *(v26 + 64) = sub_243BC710C();
      *(v26 + 32) = v23;
      *(v26 + 40) = v25;
      sub_243BD08D8();
    }

    else
    {
    }

LABEL_5:
    v5 += 2;
    --v4;
    v7 = MEMORY[0x277D837D0];
  }

  while (v4);

  return v6;
}

unint64_t sub_243BCACBC(void *a1)
{
  v2 = sub_243BD0DC8();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_243BD0F28();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {
    goto LABEL_15;
  }

  sub_243BCC048(0, &qword_27EDA6658, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_243BD0E88();
    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v12 = sub_243BD0EE8();
    v13 = v12;
    if (qword_27EDA62F8 != -1)
    {
      v12 = swift_once();
    }

    *&v33 = v13;
    MEMORY[0x28223BE20](v12);
    v29 = &v33;
    if ((sub_243BCA3C4(sub_243BCC0F0, v28, v14) & 1) == 0)
    {
      goto LABEL_21;
    }

    v15 = sub_243BD0DE8();
    v17 = v16;
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_243BD1690;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_243BC710C();
    *(v18 + 32) = v15;
    *(v18 + 40) = v17;
    sub_243BD08D8();

LABEL_21:

    return 0;
  }

  [v30 floatValue];
  v5 = v4;

  v6 = sub_243BD0DC8();
  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_243BD0F28();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {
LABEL_15:
    sub_243BCBFE0(&v33);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  [v30 floatValue];
  v9 = v8;

  if (v5 <= 0.0 || v9 < 0.0)
  {
    goto LABEL_16;
  }

  v10 = sub_243BD0DC8();
  v11 = [a1 objectForKey_];

  if (v11)
  {
    sub_243BD0F28();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {
    sub_243BCBFE0(&v33);
    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0 || ([v30 floatValue], v21 = v20, v30, v21 < 0.0))
  {
LABEL_29:
    sub_243BD0E88();
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_243BD0F48();

    strcpy(&v31, "Issue in time ");
    HIBYTE(v31) = -18;
    v22 = sub_243BD0DC8();
    v23 = [a1 objectForKey_];

    if (v23)
    {
      sub_243BD0F28();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6650, &qword_243BD1D80);
    v24 = sub_243BD0E08();
    MEMORY[0x245D4BBA0](v24);

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v25 = sub_243BD0EE8();
    v13 = v25;
    if (qword_27EDA62F8 != -1)
    {
      v25 = swift_once();
    }

    *&v33 = v13;
    MEMORY[0x28223BE20](v25);
    v29 = &v33;
    if ((sub_243BCA3C4(sub_243BCC0F0, v28, v26) & 1) == 0)
    {

      return 0;
    }

    v15 = sub_243BD0DE8();
    v17 = v27;

    goto LABEL_20;
  }

  return COERCE_UNSIGNED_INT(v9 / v5) | (LODWORD(v21) << 32);
}

uint64_t sub_243BCB2B0(void *a1)
{
  *&v41 = 0x65676175676E614CLL;
  *(&v41 + 1) = 0xE800000000000000;
  v2 = MEMORY[0x277D837D0];
  v3 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_243BD0F28();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {
    sub_243BCBFE0(&v43);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_243BD0E88();
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_243BD0F48();
    MEMORY[0x245D4BBA0](0xD000000000000033, 0x8000000243BD4450);
    v6 = [a1 description];
    v7 = sub_243BD0DD8();
    v9 = v8;

    MEMORY[0x245D4BBA0](v7, v9);

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v10 = sub_243BD0EE8();
    v11 = v10;
    if (qword_27EDA62F8 != -1)
    {
      v10 = swift_once();
    }

    *&v43 = v11;
    MEMORY[0x28223BE20](v10);
    v39 = &v43;
    goto LABEL_12;
  }

  *&v41 = 0x6573616850;
  *(&v41 + 1) = 0xE500000000000000;
  v4 = MEMORY[0x277D837D0];
  v5 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_243BD0F28();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {

    sub_243BCBFE0(&v43);
LABEL_26:
    sub_243BD0E88();
    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v17 = sub_243BD0EE8();
    v18 = v17;
    if (qword_27EDA62F8 != -1)
    {
      v17 = swift_once();
    }

    *&v43 = v18;
    MEMORY[0x28223BE20](v17);
    v39 = &v43;
    if (sub_243BCA3C4(sub_243BCC0F0, v38, v19))
    {
      v20 = sub_243BD0DE8();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_243BD1690;
      *(v23 + 56) = v4;
      *(v23 + 64) = sub_243BC710C();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      sub_243BD08D8();
    }

    return 0;
  }

  v2 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_26;
  }

  if (v40 == __PAIR128__(0xE400000000000000, 1701602377) || (sub_243BD0F98() & 1) != 0 || v40 == __PAIR128__(0xE700000000000000, 0x64656C6C617453) || (sub_243BD0F98() & 1) != 0)
  {

    return 0;
  }

  if (v40 == __PAIR128__(0xE900000000000064, 0x656C6C65636E6143) || (sub_243BD0F98() & 1) != 0 || v40 == __PAIR128__(0xEA00000000006465, 0x64616F6C6E776F44) || (sub_243BD0F98() & 1) != 0)
  {
    goto LABEL_34;
  }

  if (v40 == __PAIR128__(0xEB00000000676E69, 0x64616F6C6E776F44) || (sub_243BD0F98() & 1) != 0)
  {

    sub_243BCACBC(a1);
    if ((v26 & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_243BD0E88();
    sub_243BD0F48();

    *&v43 = 0xD00000000000002ALL;
    *(&v43 + 1) = 0x8000000243BD44F0;
    v27 = [a1 description];
    v28 = sub_243BD0DD8();
    v30 = v29;

    MEMORY[0x245D4BBA0](v28, v30);

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v31 = sub_243BD0EE8();
    v11 = v31;
    if (qword_27EDA62F8 != -1)
    {
      v31 = swift_once();
    }

    *&v43 = v11;
    MEMORY[0x28223BE20](v31);
    v39 = &v43;
LABEL_12:
    if (sub_243BCA3C4(sub_243BCC0F0, v38, v12))
    {
      v13 = sub_243BD0DE8();
      v15 = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_243BD1690;
      *(v16 + 56) = v2;
      *(v16 + 64) = sub_243BC710C();
      *(v16 + 32) = v13;
      *(v16 + 40) = v15;
      sub_243BD08D8();
LABEL_14:

      return 0;
    }

    goto LABEL_15;
  }

  if (v40 != __PAIR128__(0xEE0064656C696146, 0x64616F6C6E776F44) && (sub_243BD0F98() & 1) == 0)
  {

    sub_243BD0E98();
    sub_243BD0F48();

    *&v43 = 0xD000000000000024;
    *(&v43 + 1) = 0x8000000243BD44C0;
    MEMORY[0x245D4BBA0](v40, *(&v40 + 1));

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v32 = sub_243BD0EE8();
    v11 = v32;
    if (qword_27EDA62F8 != -1)
    {
      v32 = swift_once();
    }

    *&v43 = v11;
    MEMORY[0x28223BE20](v32);
    v39 = &v43;
    if (sub_243BCA3C4(sub_243BCC0F0, v38, v33))
    {
      v34 = sub_243BD0DE8();
      v36 = v35;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_243BD1690;
      *(v37 + 56) = v2;
      *(v37 + 64) = sub_243BC710C();
      *(v37 + 32) = v34;
      *(v37 + 40) = v36;
      sub_243BD08D8();
      goto LABEL_14;
    }

LABEL_15:

    return 0;
  }

LABEL_34:

LABEL_35:
  v43 = v40;
  *&v41 = 95;
  *(&v41 + 1) = 0xE100000000000000;
  *&v40 = 45;
  *(&v40 + 1) = 0xE100000000000000;
  v38[0] = v2;
  v38[1] = sub_243BC7098();
  v25 = sub_243BD0F18();

  return v25;
}

uint64_t sub_243BCBD0C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
  return sub_243BD0ED8() & 1;
}

uint64_t sub_243BCBD74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_243BCBFE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6650, &qword_243BD1D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243BCC048(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_243BCC090(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_243BCC154(uint64_t a1, int a2)
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

uint64_t sub_243BCC19C(uint64_t result, int a2, int a3)
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

uint64_t sub_243BCC24C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v3 = 3;
      }

      else
      {
        v3 = 4;
      }
    }

    else
    {
      v3 = a2 != 0;
    }

    return MEMORY[0x245D4BD40](v3);
  }

  else
  {
    MEMORY[0x245D4BD40](2);
    sub_243BD0FD8();
    return sub_243BD0FD8();
  }
}

uint64_t sub_243BCC2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_243BD0E18();
  if (a5)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v7 = 3;
      }

      else
      {
        v7 = 4;
      }
    }

    else
    {
      v7 = a4 != 0;
    }

    return MEMORY[0x245D4BD40](v7);
  }

  else
  {
    MEMORY[0x245D4BD40](2);
    sub_243BD0FD8();
    return sub_243BD0FD8();
  }
}

uint64_t sub_243BCC3B8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_243BD0FB8();
  sub_243BCC1FC();
  return sub_243BD0FE8();
}

uint64_t sub_243BCC40C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_243BCC1FC();
}

uint64_t sub_243BCC414()
{
  v1 = *v0;
  v2 = v0[1];
  sub_243BD0FB8();
  sub_243BCC1FC();
  return sub_243BD0FE8();
}

BOOL sub_243BCC464(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v3 == 1)
        {
          v11 = *(a2 + 8);
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          return 1;
        }
      }

      else
      {
        if (v3)
        {
          LOBYTE(v5) = 0;
        }

        else
        {
          v5 = *(a2 + 8);
        }

        if (v5)
        {
          return 1;
        }
      }

      return 0;
    }

    if (v2 == 2)
    {
      if (v3 == 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    if (v3 > 2)
    {
      v12 = *(a2 + 8);
    }

    else
    {
      v12 = 0;
    }

    return v12 == 1;
  }

  else
  {
    if (a2[1])
    {
      return 0;
    }

    v8 = HIDWORD(*a1);
    return *(&v2 + 1) == *(&v3 + 1) && *&v2 == COERCE_FLOAT(*a2);
  }
}

uint64_t sub_243BCC518()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_243BD0FB8();
  sub_243BCC24C(v4, v1, v2);
  return sub_243BD0FE8();
}

uint64_t sub_243BCC574()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_243BD0FB8();
  sub_243BCC24C(v4, v1, v2);
  return sub_243BD0FE8();
}

BOOL sub_243BCC5C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_243BD0F98(), result = 0, (v7 & 1) != 0))
  {
    if (!v3)
    {
      if (v5)
      {
        return 0;
      }

      return *&v2 == *&v4 && *(&v2 + 1) == *(&v4 + 1);
    }

    if (v2 > 1)
    {
      if (v2 != 2)
      {
        if (v4 > 2)
        {
          v12 = v5;
        }

        else
        {
          v12 = 0;
        }

        return v12 == 1;
      }

      v9 = v4 == 2;
    }

    else if (v2)
    {
      v9 = v4 == 1;
    }

    else
    {
      v9 = v4 == 0;
    }

    if (v9)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    return (v11 & 1) != 0;
  }

  return result;
}

uint64_t sub_243BCC6A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_243BD0FB8();
  sub_243BCC2E8(v6, v1, v2, v3, v4);
  return sub_243BD0FE8();
}

uint64_t sub_243BCC714()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_243BD0FB8();
  sub_243BCC2E8(v6, v1, v2, v3, v4);
  return sub_243BD0FE8();
}

uint64_t sub_243BCC774@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_243BCC784()
{
  result = qword_27EDA6668;
  if (!qword_27EDA6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6668);
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CACUILanguageData.InstallationStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CACUILanguageData.InstallationStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_243BCC838(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243BCC854(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_243BCC888()
{
  result = qword_27EDA6670;
  if (!qword_27EDA6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6670);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CACUILanguageData.InstallationStatus.DownloadProgress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CACUILanguageData.InstallationStatus.DownloadProgress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_243BCC944()
{
  result = qword_27EDA6678;
  if (!qword_27EDA6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6678);
  }

  return result;
}

uint64_t sub_243BCC9C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_243BD0C88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 defaultMetrics];
  [v8 scaledValueForValue_];

  sub_243BD0958();
  v9 = v81;
  v48 = v82;
  v10 = v83;
  v46 = v84;
  v11 = v85;
  v12 = [objc_opt_self() secondarySystemFillColor];
  v47 = sub_243BD0C68();
  KeyPath = swift_getKeyPath();
  v13 = COERCE_DOUBLE(sub_243BD0AE8());
  if (v14)
  {
    v13 = 0.0;
  }

  v15 = fmax(v13, 0.1);
  v16 = [v7 0x278DE602ELL];
  [v16 scaledValueForValue_];

  sub_243BD0958();
  v43 = sub_243BD0D28();
  v42 = sub_243BD0AE8();
  HIDWORD(v41) = v17 & 1;
  v80 = v17 & 1;
  sub_243BD0D48();
  v19 = v18;
  v21 = v20;
  sub_243BD0C78();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE8], v2);
  v44 = sub_243BD0C98();

  (*(v3 + 8))(v6, v2);
  v22 = [v7 defaultMetrics];
  [v22 scaledValueForValue_];

  v23 = [v7 defaultMetrics];
  [v23 scaledValueForValue_];

  sub_243BD0D18();
  sub_243BD0988();
  v24 = v86;
  v25 = v87;
  v26 = v88;
  v27 = v89;
  *&v59 = v9;
  *(&v59 + 1) = v48;
  *&v60 = v10;
  v29 = KeyPath;
  v28 = v46;
  *(&v60 + 1) = v46;
  *&v61 = v11;
  *(&v61 + 1) = KeyPath;
  v62 = v47;
  *&v54[0] = v47;
  v51 = v59;
  v52 = v60;
  v53 = v61;
  *&v63[0] = 0;
  *(v63 + 1) = v15;
  v63[1] = v56;
  v63[2] = v57;
  v30 = v42;
  v31 = v43;
  *&v64 = v58;
  *(&v64 + 1) = v43;
  *&v65 = v42;
  v32 = BYTE4(v41);
  BYTE8(v65) = BYTE4(v41);
  HIDWORD(v65) = *&v55[3];
  *(&v65 + 9) = *v55;
  *&v66 = 0xBFF921FB54442D18;
  *(&v66 + 1) = v19;
  v67 = v21;
  *(&v54[2] + 8) = v57;
  *(&v54[1] + 8) = v56;
  *(v54 + 8) = v63[0];
  *(&v54[6] + 1) = v21;
  *(&v54[5] + 8) = v66;
  *(&v54[4] + 8) = v65;
  *(&v54[3] + 8) = v64;
  v50 = v87;
  v49 = v89;
  v33 = v60;
  *a1 = v59;
  *(a1 + 16) = v33;
  v34 = v53;
  v35 = v54[0];
  v36 = v54[2];
  *(a1 + 64) = v54[1];
  *(a1 + 80) = v36;
  *(a1 + 32) = v34;
  *(a1 + 48) = v35;
  v37 = v54[3];
  v38 = v54[4];
  v39 = v54[6];
  *(a1 + 128) = v54[5];
  *(a1 + 144) = v39;
  *(a1 + 96) = v37;
  *(a1 + 112) = v38;
  *(a1 + 160) = v44;
  *(a1 + 168) = v24;
  *(a1 + 176) = v25;
  *(a1 + 184) = v26;
  *(a1 + 192) = v27;
  *(a1 + 200) = v90;
  sub_243BC86BC(&v59, v68, &qword_27EDA66D0, &qword_243BD2150);
  sub_243BC86BC(v63, v68, &qword_27EDA66D8, &qword_243BD2158);
  v68[0] = 0;
  *&v68[1] = v15;
  v69 = v56;
  v70 = v57;
  v71 = v58;
  v72 = v31;
  v73 = v30;
  v74 = v32;
  *v75 = *v55;
  *&v75[3] = *&v55[3];
  v76 = 0xBFF921FB54442D18;
  v77 = v19;
  v78 = v21;
  sub_243BC8724(v68, &qword_27EDA66D8, &qword_243BD2158);
  v79[0] = v9;
  v79[1] = v48;
  v79[2] = v10;
  v79[3] = v28;
  v79[4] = v11;
  v79[5] = v29;
  v79[6] = v47;
  return sub_243BC8724(v79, &qword_27EDA66D0, &qword_243BD2150);
}

double sub_243BCCF20@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_243BD0D18();
  v4 = v3;
  sub_243BCC9C4(&v13);
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v27 = v13;
  v28 = v14;
  v41[10] = v23;
  v41[11] = v24;
  v41[12] = v25;
  v41[6] = v19;
  v41[7] = v20;
  v41[8] = v21;
  v41[9] = v22;
  v41[2] = v15;
  v41[3] = v16;
  v41[4] = v17;
  v41[5] = v18;
  v40 = v26;
  v42 = v26;
  v41[0] = v13;
  v41[1] = v14;
  sub_243BC86BC(&v27, &v12, &qword_27EDA66C8, &qword_243BD2118);
  sub_243BC8724(v41, &qword_27EDA66C8, &qword_243BD2118);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v38;
  *(a1 + 176) = v37;
  *(a1 + 192) = v5;
  *(a1 + 208) = v39;
  *(a1 + 224) = v40;
  v6 = v34;
  *(a1 + 112) = v33;
  *(a1 + 128) = v6;
  v7 = v36;
  *(a1 + 144) = v35;
  *(a1 + 160) = v7;
  v8 = v30;
  *(a1 + 48) = v29;
  *(a1 + 64) = v8;
  v9 = v32;
  *(a1 + 80) = v31;
  *(a1 + 96) = v9;
  result = *&v27;
  v11 = v28;
  *(a1 + 16) = v27;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_243BCD070@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v34 = a1;
  v3 = sub_243BD0C88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6680, &unk_243BD2058);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6360, &qword_243BD1810);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6688, &qword_243BD2068);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  if (a2 == 0.0)
  {
    sub_243BD0C78();
    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE8], v3);
    v21 = sub_243BD0C98();

    (*(v4 + 8))(v7, v3);
    sub_243BD0B28();
    sub_243BD0B48();
    v22 = sub_243BD0B58();

    KeyPath = swift_getKeyPath();
    v24 = objc_opt_self();
    v25 = [v24 defaultMetrics];
    [v25 scaledValueForValue_];

    v26 = [v24 defaultMetrics];
    [v26 scaledValueForValue_];

    sub_243BD0D18();
    sub_243BD0988();
    *v11 = v21;
    *(v11 + 1) = KeyPath;
    *(v11 + 2) = v22;
    v27 = v37;
    *(v11 + 24) = v36;
    *(v11 + 40) = v27;
    *(v11 + 56) = v38;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA66A0, &unk_243BD2070);
    sub_243BCD700();
    sub_243BCD810();
    return sub_243BD0AA8();
  }

  else
  {
    *&v36 = a2;
    BYTE4(v36) = 0;
    v35 = 1065353216;
    sub_243BCD5E8();
    sub_243BD0968();
    sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810);
    sub_243BCD63C();
    sub_243BD0BD8();
    (*(v13 + 8))(v16, v12);
    v29 = objc_opt_self();
    v30 = [v29 defaultMetrics];
    [v30 scaledValueForValue_];

    v31 = [v29 defaultMetrics];
    [v31 scaledValueForValue_];

    sub_243BD0D18();
    sub_243BD0988();
    v32 = &v20[*(v17 + 36)];
    v33 = v37;
    *v32 = v36;
    *(v32 + 1) = v33;
    *(v32 + 2) = v38;
    sub_243BCD690(v20, v11);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA66A0, &unk_243BD2070);
    sub_243BCD700();
    sub_243BCD810();
    sub_243BD0AA8();
    return sub_243BCD89C(v20);
  }
}

unint64_t sub_243BCD5E8()
{
  result = qword_27EDA6690;
  if (!qword_27EDA6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6690);
  }

  return result;
}

unint64_t sub_243BCD63C()
{
  result = qword_27EDA6698;
  if (!qword_27EDA6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6698);
  }

  return result;
}

uint64_t sub_243BCD690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6688, &qword_243BD2068);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243BCD700()
{
  result = qword_27EDA66A8;
  if (!qword_27EDA66A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6688, &qword_243BD2068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6360, &qword_243BD1810);
    sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810);
    sub_243BCD63C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA66A8);
  }

  return result;
}

unint64_t sub_243BCD810()
{
  result = qword_27EDA66B0;
  if (!qword_27EDA66B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA66A0, &unk_243BD2070);
    sub_243BC810C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA66B0);
  }

  return result;
}

uint64_t sub_243BCD89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6688, &qword_243BD2068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243BCD920()
{
  result = qword_27EDA66B8;
  if (!qword_27EDA66B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA66C0, &qword_243BD20D8);
    sub_243BCD700();
    sub_243BCD810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA66B8);
  }

  return result;
}

uint64_t sub_243BCD9C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243BD09A8();
  *a1 = result;
  return result;
}

uint64_t sub_243BCD9F4(uint64_t *a1)
{
  v1 = *a1;

  return sub_243BD09B8();
}

uint64_t sub_243BCDA64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  return v1;
}

uint64_t sub_243BCDAD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  return v1;
}

uint64_t sub_243BCDB4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v1 = 0;
  v2 = *(v13 + 16);
  v3 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = 32 * v1;
  while (1)
  {
    if (v2 == v1)
    {

      return v3;
    }

    if (v1 >= *(v13 + 16))
    {
      break;
    }

    v5 = v4 + 32;
    ++v1;
    v6 = v13 + v4;
    v7 = *(v6 + 56) == 1 && *(v6 + 48) == 2;
    v4 = v5;
    if (v7)
    {
      v9 = *(v13 + v5);
      v8 = *(v13 + v5 + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_243BCF944(0, *(v3 + 16) + 1, 1);
      }

      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_243BCF944((v10 > 1), v11 + 1, 1);
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 32 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      *(v12 + 48) = 2;
      *(v12 + 56) = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243BCDCC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v1 = 0;
  v2 = *(v15 + 16);
  v3 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = 32 * v1;
  while (1)
  {
    if (v2 == v1)
    {

      return v3;
    }

    if (v1 >= *(v15 + 16))
    {
      break;
    }

    v5 = v4 + 32;
    ++v1;
    v6 = v15 + v4;
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
    v9 = v8 == 1 && v7 == 2;
    v4 = v5;
    if (!v9)
    {
      v11 = *(v15 + v5);
      v10 = *(v15 + v5 + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_243BCF944(0, *(v3 + 16) + 1, 1);
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_243BCF944((v12 > 1), v13 + 1, 1);
      }

      *(v3 + 16) = v13 + 1;
      v14 = v3 + 32 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      *(v14 + 48) = v7;
      *(v14 + 56) = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243BCDE2C(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6748, &qword_243BD2298);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6740, &qword_243BD2290);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  v13 = OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel__languages;
  v18[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6470, &qword_243BD18C8);
  sub_243BD08F8();
  (*(v9 + 32))(v1 + v13, v12, v8);
  v14 = OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel__selectedLanguageIdentifier;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_243BD08F8();
  (*(v4 + 32))(v1 + v14, v7, v3);
  *(v1 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate) = 0;
  v18[0] = a1;

  sub_243BCFB9C(v18);

  v15 = v18[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v18[0] = v15;

  sub_243BD0928();
  return v1;
}

uint64_t sub_243BCE094(uint64_t a1, uint64_t a2)
{
  v4 = sub_243BD0D68();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_243BD0D88();
  v49 = *(v51 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_243BD0D58();
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_243BD0DB8();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  LODWORD(v43) = sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v20 = qword_27EDA6F70;
  strcpy(&aBlock, "UI: Download ");
  HIWORD(aBlock) = -4864;
  v21 = a1;
  v47 = a2;
  v22 = MEMORY[0x245D4BBA0](a1, a2);
  if (qword_27EDA62F8 != -1)
  {
    v22 = swift_once();
  }

  *&aBlock = v20;
  MEMORY[0x28223BE20](v22);
  *(&v43 - 2) = &aBlock;
  if (sub_243BCA3C4(sub_243BC8B6C, (&v43 - 4), v23))
  {
    v24 = sub_243BD0DE8();
    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_243BD1690;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_243BC710C();
    *(v27 + 32) = v24;
    *(v27 + 40) = v26;
    sub_243BD08D8();
  }

  v28 = *(v54 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate);
  v29 = v47;
  if (v28)
  {
    v30 = *(v54 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate);
    swift_unknownObjectRetain();
    v31 = sub_243BD0DC8();
    [v28 downloadLanguageWithIdentifier_];

    swift_unknownObjectRelease();
  }

  sub_243BD06EC();
  v43 = sub_243BD0EC8();
  sub_243BD0D98();
  *v12 = 1;
  v32 = v44;
  (*(v9 + 104))(v12, *MEMORY[0x277D85188], v44);
  sub_243BD0DA8();
  (*(v9 + 8))(v12, v32);
  v33 = *(v45 + 8);
  v34 = v17;
  v35 = v46;
  v33(v34, v46);
  v36 = swift_allocObject();
  v36[2] = v54;
  v36[3] = v21;
  v36[4] = v29;
  v58 = sub_243BD0864;
  v59 = v36;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v56 = sub_243BCE8FC;
  v57 = &block_descriptor_25;
  v37 = _Block_copy(&aBlock);

  v38 = v48;
  sub_243BD0D78();
  *&aBlock = MEMORY[0x277D84F90];
  sub_243BD0760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6730, &qword_243BD21F0);
  sub_243BD07B8();
  v39 = v50;
  v40 = v53;
  sub_243BD0F38();
  v41 = v43;
  MEMORY[0x245D4BC30](v19, v38, v39, v37);
  _Block_release(v37);

  (*(v52 + 8))(v39, v40);
  (*(v49 + 8))(v38, v51);
  return (v33)(v19, v35);
}

uint64_t sub_243BCE6EC(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v6 = v17[0];
  v7 = *(v17[0] + 16);
  if (!v7)
  {
  }

  v8 = 0;
  for (i = 56; ; i += 32)
  {
    v10 = *(v17[0] + i - 24) == a2 && *(v17[0] + i - 16) == a3;
    if (v10 || (sub_243BD0F98() & 1) != 0)
    {
      break;
    }

    if (v7 == ++v8)
    {
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  if (v8 >= *(v17[0] + 16))
  {
    __break(1u);
LABEL_20:
    result = sub_243BD06D8(v6);
    v6 = result;
    *v7 = result;
LABEL_16:
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      v16 = (v6 + i);
      *(v16 - 1) = 1;
      *v16 = 1;
      a1(v17, 0);
    }

    return result;
  }

  v12 = *(v17[0] + i - 8);
  v13 = *(v17[0] + i);

  if (v13 == 1 && (v12 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    a1 = sub_243BD0908();
    v7 = v15;
    v6 = *v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v6;
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_243BCE8FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_243BCE940(uint64_t a1, uint64_t a2)
{
  v4 = sub_243BD0D68();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_243BD0D88();
  v49 = *(v51 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_243BD0D58();
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_243BD0DB8();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  LODWORD(v43) = sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v20 = qword_27EDA6F70;
  aBlock = 0x636E6143203A4955;
  v56 = 0xEB00000000206C65;
  v21 = a1;
  v47 = a2;
  v22 = MEMORY[0x245D4BBA0](a1, a2);
  if (qword_27EDA62F8 != -1)
  {
    v22 = swift_once();
  }

  aBlock = v20;
  MEMORY[0x28223BE20](v22);
  *(&v43 - 2) = &aBlock;
  if (sub_243BCA3C4(sub_243BC8B6C, (&v43 - 4), v23))
  {
    v24 = sub_243BD0DE8();
    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_243BD1690;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_243BC710C();
    *(v27 + 32) = v24;
    *(v27 + 40) = v26;
    sub_243BD08D8();
  }

  v28 = *(v54 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate);
  v29 = v47;
  if (v28)
  {
    v30 = *(v54 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate);
    swift_unknownObjectRetain();
    v31 = sub_243BD0DC8();
    [v28 cancelDownloadWithIdentifier_];

    swift_unknownObjectRelease();
  }

  sub_243BD06EC();
  v43 = sub_243BD0EC8();
  sub_243BD0D98();
  *v12 = 1;
  v32 = v44;
  (*(v9 + 104))(v12, *MEMORY[0x277D85188], v44);
  sub_243BD0DA8();
  (*(v9 + 8))(v12, v32);
  v33 = *(v45 + 8);
  v34 = v17;
  v35 = v46;
  v33(v34, v46);
  v36 = swift_allocObject();
  v36[2] = v54;
  v36[3] = v21;
  v36[4] = v29;
  v59 = sub_243BD073C;
  v60 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_243BCE8FC;
  v58 = &block_descriptor;
  v37 = _Block_copy(&aBlock);

  v38 = v48;
  sub_243BD0D78();
  aBlock = MEMORY[0x277D84F90];
  sub_243BD0760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6730, &qword_243BD21F0);
  sub_243BD07B8();
  v39 = v50;
  v40 = v53;
  sub_243BD0F38();
  v41 = v43;
  MEMORY[0x245D4BC30](v19, v38, v39, v37);
  _Block_release(v37);

  (*(v52 + 8))(v39, v40);
  (*(v49 + 8))(v38, v51);
  return (v33)(v19, v35);
}

uint64_t sub_243BCEF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v5 = *(v15[0] + 16);
  if (!v5)
  {
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = *(v15[0] + v6 + 32) == a2 && *(v15[0] + v6 + 40) == a3;
    if (v8 || (sub_243BD0F98() & 1) != 0)
    {
      break;
    }

    ++v7;
    v6 += 32;
    if (v5 == v7)
    {
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = sub_243BD0908();
  v12 = v11;
  v13 = *v11;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((result & 1) == 0)
  {
    result = sub_243BD06D8(v13);
    v13 = result;
    *v12 = result;
  }

  if (v7 >= *(v13 + 16))
  {
    __break(1u);
  }

  else
  {
    v14 = v13 + v6;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    v10(v15, 0);
  }

  return result;
}

uint64_t sub_243BCF12C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v6 = qword_27EDA6F70;
  strcpy(v18, "UI: Selected ");
  HIWORD(v18[1]) = -4864;
  v7 = MEMORY[0x245D4BBA0](a1, a2);
  if (qword_27EDA62F8 != -1)
  {
    v7 = swift_once();
  }

  v18[0] = v6;
  MEMORY[0x28223BE20](v7);
  v17[2] = v18;
  if (sub_243BCA3C4(sub_243BC7A60, v17, v8))
  {
    v9 = sub_243BD0DE8();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_243BD1690;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_243BC710C();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_243BD08D8();
  }

  v14 = *(v3 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate);
  if (v14)
  {
    v15 = *(v3 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate);
    swift_unknownObjectRetain();
    v16 = sub_243BD0DC8();
    [v14 selectedLanguageWithIdentifier_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_243BCF364(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v2 = v22;
  v21 = *(a1 + 16);
  if (!v21)
  {
LABEL_21:
    v22 = v2;

    sub_243BCFB9C(&v22);

    v18 = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v18;

    return sub_243BD0928();
  }

  v3 = 0;
  v20 = a1 + 32;
  while (1)
  {
    v5 = (v20 + 32 * v3);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = *(v5 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_243BD0918();

    v10 = *(v22 + 2);
    if (!v10)
    {
LABEL_13:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_243BCA5F0(0, *(v2 + 2) + 1, 1, v2);
      }

      v15 = *(v2 + 2);
      v14 = *(v2 + 3);
      if (v15 >= v14 >> 1)
      {
        v2 = sub_243BCA5F0((v14 > 1), v15 + 1, 1, v2);
      }

      *(v2 + 2) = v15 + 1;
      v4 = &v2[32 * v15];
      *(v4 + 4) = v6;
      *(v4 + 5) = v7;
      *(v4 + 6) = v8;
      v4[56] = v9;
      goto LABEL_4;
    }

    v11 = 0;
    v12 = 56;
    while (1)
    {
      v13 = *&v22[v12 - 24] == v6 && *&v22[v12 - 16] == v7;
      if (v13 || (sub_243BD0F98() & 1) != 0)
      {
        break;
      }

      ++v11;
      v12 += 32;
      if (v10 == v11)
      {
        goto LABEL_13;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_243BD06D8(v2);
    }

    if (v11 >= *(v2 + 2))
    {
      break;
    }

    v16 = &v2[v12];
    v17 = *&v2[v12 - 16];
    *(v16 - 3) = v6;
    *(v16 - 2) = v7;
    *(v16 - 1) = v8;
    *v16 = v9;

LABEL_4:
    if (++v3 == v21)
    {
      goto LABEL_21;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_243BCF618()
{
  v1 = OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel__languages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6740, &qword_243BD2290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel__selectedLanguageIdentifier;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6748, &qword_243BD2298);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate);
  swift_unknownObjectRelease();
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for CACUILanguageViewModel()
{
  result = qword_27EDA6700;
  if (!qword_27EDA6700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243BCF770()
{
  sub_243BCF844();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_243BCF8A8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_243BCF844()
{
  if (!qword_27EDA6710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6470, &qword_243BD18C8);
    v0 = sub_243BD0938();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA6710);
    }
  }
}

void sub_243BCF8A8()
{
  if (!qword_27EDA6718)
  {
    v0 = sub_243BD0938();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA6718);
    }
  }
}

uint64_t sub_243BCF904@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CACUILanguageViewModel();
  result = sub_243BD08E8();
  *a1 = result;
  return result;
}

char *sub_243BCF944(char *a1, int64_t a2, char a3)
{
  result = sub_243BCF984(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243BCF964(char *a1, int64_t a2, char a3)
{
  result = sub_243BCFA90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243BCF984(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6648, &qword_243BD2240);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_243BCFA90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA6750, &qword_243BD22A0);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_243BCFB9C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_243BD0878(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_243BCFC08(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_243BCFC08(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_243BD0F88();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_243BD0E58();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_243BCFDE4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_243BCFD00(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_243BCFD00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 + 24;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 - 24);
      v11 = (v10 - 24);
      v12 = result == *(v10 - 56) && *(v10 - 16) == *(v10 - 48);
      if (v12 || (result = sub_243BD0F98(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 - 56);
      v13 = *(v10 - 40);
      *(v10 - 32) = *v10;
      v10 -= 32;
      v15 = *(v10 + 8);
      v16 = *(v10 + 16);
      v17 = *(v10 + 24);
      *v11 = v14;
      v11[1] = v13;
      *(v10 - 24) = v15;
      *(v10 - 16) = v16;
      *(v10 - 8) = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_243BCFDE4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v103 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_109:
    v9 = *v103;
    if (!*v103)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_142:
      result = sub_243BD06C4(v8);
      v8 = result;
    }

    v94 = v5;
    v95 = v8 + 16;
    v96 = *(v8 + 2);
    if (v96 >= 2)
    {
      while (*a3)
      {
        v97 = &v8[16 * v96];
        v5 = *v97;
        v98 = &v95[2 * v96];
        v99 = v98[1];
        sub_243BD0418((*a3 + 32 * *v97), (*a3 + 32 * *v98), (*a3 + 32 * v99), v9);
        if (v94)
        {
        }

        if (v99 < v5)
        {
          goto LABEL_134;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_135;
        }

        *v97 = v5;
        *(v97 + 1) = v99;
        v100 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_136;
        }

        v96 = *v95 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v95 = v96;
        if (v96 <= 1)
        {
        }
      }

      goto LABEL_146;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 32 * v7);
      result = *v10;
      v11 = (*a3 + 32 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_243BD0F98();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 5;
        v15 = v11 + 5;
        do
        {
          result = v14[3];
          v17 = v15[4];
          v15 += 4;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_25;
            }
          }

          else
          {
            result = sub_243BD0F98();
            if ((v13 ^ result))
            {
              goto LABEL_24;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_24:
      if (v13)
      {
LABEL_25:
        if (v7 < v9)
        {
          goto LABEL_139;
        }

        if (v9 < v7)
        {
          v19 = 32 * v7 - 32;
          v20 = 32 * v9;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v26 = (v25 + v20);
              v27 = (v25 + v19);
              v28 = *(v25 + v20);
              v29 = *(v25 + v20 + 8);
              v30 = *(v25 + v20 + 16);
              v31 = *(v25 + v20 + 24);
              if (v20 != v19 || (result = (v27 + 2), v26 >= v27 + 2))
              {
                v23 = v27[1];
                *v26 = *v27;
                v26[1] = v23;
              }

              v24 = v25 + v19;
              *v24 = v28;
              *(v24 + 8) = v29;
              *(v24 + 16) = v30;
              *(v24 + 24) = v31;
            }

            ++v22;
            v19 -= 32;
            v20 += 32;
          }

          while (v22 < v21);
        }
      }
    }

    v32 = a3[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_138;
      }

      if (v7 - v9 < a4)
      {
        v33 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_140;
        }

        if (v33 >= v32)
        {
          v33 = a3[1];
        }

        if (v33 < v9)
        {
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v7 < v9)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v47 = v5;
    if ((result & 1) == 0)
    {
      result = sub_243BCA4EC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_243BCA4EC((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v103;
    if (!*v103)
    {
      goto LABEL_147;
    }

    if (v49)
    {
      v5 = v47;
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_78:
          if (v57)
          {
            goto LABEL_125;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_128;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_132;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_92:
        if (v75)
        {
          goto LABEL_127;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_130;
        }

        if (v86 < v74)
        {
          goto LABEL_4;
        }

LABEL_99:
        v9 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v91 = *&v8[16 * v9 + 32];
        v92 = *&v8[16 * v53 + 40];
        sub_243BD0418((*a3 + 32 * v91), (*a3 + 32 * *&v8[16 * v53 + 32]), (*a3 + 32 * v92), v52);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_243BD06C4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_122;
        }

        v93 = &v8[16 * v9];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = sub_243BD0638(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_4;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_123;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_124;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_126;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_129;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_133;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

    v5 = v47;
LABEL_4:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_109;
    }
  }

  v101 = v9;
  v34 = *a3;
  v35 = *a3 + 32 * v7 + 24;
  v36 = (v9 - v7);
  v104 = v33;
LABEL_46:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = (v38 - 24);
    v40 = *(v38 - 24) == *(v38 - 56) && *(v38 - 16) == *(v38 - 48);
    if (v40 || (result = sub_243BD0F98(), (result & 1) == 0))
    {
LABEL_45:
      ++v7;
      v35 += 32;
      --v36;
      if (v7 != v104)
      {
        goto LABEL_46;
      }

      v7 = v104;
      v9 = v101;
      goto LABEL_57;
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 - 56);
    v41 = *(v38 - 40);
    *(v38 - 32) = *v38;
    v38 -= 32;
    v43 = *(v38 + 8);
    v44 = *(v38 + 16);
    v45 = *(v38 + 24);
    *v39 = v42;
    v39[1] = v41;
    *(v38 - 24) = v43;
    *(v38 - 16) = v44;
    *(v38 - 8) = v45;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_243BD0418(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v18 && (sub_243BD0F98() & 1) != 0)
      {
        break;
      }

      v16 = v4;
      v18 = v7 == v4;
      v4 += 32;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v18 = v7 == v6;
    v6 += 32;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  v19 = 32 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v20 = v6 - 32;
    v5 -= 32;
    v21 = v15;
    do
    {
      v22 = *(v21 - 4);
      v23 = *(v21 - 3);
      v21 -= 32;
      v24 = v22 == *(v6 - 4) && v23 == *(v6 - 3);
      if (!v24 && (sub_243BD0F98() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v26 = *(v6 - 1);
          *v5 = *v20;
          *(v5 + 1) = v26;
        }

        if (v15 <= v4 || (v6 -= 32, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v15)
      {
        v25 = *(v21 + 1);
        *v5 = *v21;
        *(v5 + 1) = v25;
      }

      v5 -= 32;
      v15 = v21;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_43:
  v27 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

uint64_t sub_243BD0638(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_243BD06C4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_243BD06EC()
{
  result = qword_27EDA6720;
  if (!qword_27EDA6720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDA6720);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243BD0760()
{
  result = qword_27EDA6728;
  if (!qword_27EDA6728)
  {
    sub_243BD0D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6728);
  }

  return result;
}

unint64_t sub_243BD07B8()
{
  result = qword_27EDA6738;
  if (!qword_27EDA6738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6730, &qword_243BD21F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6738);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}