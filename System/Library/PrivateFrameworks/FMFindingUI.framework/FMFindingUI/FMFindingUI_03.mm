void sub_24A553A10(uint64_t a1, void *a2)
{
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v36 = v4;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v37 = v3;
      v12 = sub_24A62E314();
      sub_24A506EB8(v12, qword_27EF5C118);
      v13 = sub_24A62E2F4();
      v14 = sub_24A62EF64();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMFindingLocalizer: Did not update range estimate so reset state", v15, 2u);
        MEMORY[0x24C21BBE0](v15, -1, -1);
      }

      v17 = a2[3];
      v16 = a2[4];
      v18 = sub_24A50A204(a2, v17);
      v19 = *(v16 + 8);
      v34 = v18;
      v35 = v19;
      v19(v38, v17, v16);
      v20 = v39;
      v21 = v40;
      sub_24A50A204(v38, v39);
      (*(v21 + 16))(v20, v21);
      swift_beginAccess();
      v22 = sub_24A554CF0(v7, &v44);
      v36 = *(v36 + 8);
      (v36)(v7, v37, v22);
      v42[4] = v48;
      v42[5] = *v49;
      v43 = *&v49[16];
      v42[0] = v44;
      v42[1] = v45;
      v42[2] = v46;
      v42[3] = v47;
      sub_24A50D6A4(v42, &qword_27EF4F650, &unk_24A633E00);
      swift_endAccess();
      sub_24A508C54(v38);
      v23 = &v9[OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = *(v23 + 1);
        ObjectType = swift_getObjectType();
        v41[3] = type metadata accessor for FMFindingLocalizer();
        v41[4] = &off_285DA5430;
        v41[0] = v11;
        v25 = *&v11[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 16];
        v24 = *&v11[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 32];
        v44 = *&v11[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement];
        v45 = v25;
        v46 = v24;
        v27 = *&v11[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 64];
        v26 = *&v11[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 80];
        v28 = *&v11[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 48];
        *&v49[15] = *&v11[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 95];
        v48 = v27;
        *v49 = v26;
        v47 = v28;
        v29 = v11;
        sub_24A55B388(&v44, v38);
        v35(v38, v17, v16);
        v30 = v39;
        v31 = v40;
        sub_24A50A204(v38, v39);
        (*(v31 + 16))(v30, v31);
        (*(v32 + 16))(v41, &v44, 3, v7, ObjectType);
        sub_24A55B3E4(&v44);

        swift_unknownObjectRelease();
        (v36)(v7, v37);
        sub_24A508C54(v38);
        sub_24A508C54(v41);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_24A553E20(uint64_t a1, uint64_t a2, void *a3)
{
  v75 = a3;
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 32);
  v96 = *(a1 + 48);
  v97 = v6;
  v98[0] = v7;
  v9 = *(a1 + 16);
  v93 = *a1;
  v94 = v9;
  *(v98 + 15) = *(a1 + 95);
  v95 = v8;
  v10 = sub_24A62E214();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v76 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v73 = v11;
    v74 = v10;
    v16 = *(a1 + 98);
    if (v16 == 255)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0x4000000;
    }

    else
    {
      v30 = *a1;
      v31 = *(a1 + 8);
      v32 = *(a1 + 24);
      v71 = *(a1 + 16);
      ObjectType = v30;
      v70 = v32;
      v33 = *(a1 + 32);
      v68 = *(a1 + 40);
      v69 = v33;
      v34 = *(a1 + 56);
      v67 = *(a1 + 48);
      v65 = a2;
      v66 = v34;
      v35 = *(a1 + 64);
      v62 = *(a1 + 72);
      v63 = v35;
      v36 = *(a1 + 96) | (v16 << 16);
      v37 = *(a1 + 80);
      v61 = *(a1 + 88);
      Strong = swift_unknownObjectWeakLoadStrong();
      v64 = v37;
      if (Strong)
      {
        v39 = Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement;
        v41 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 16);
        v40 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 32);
        v80 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement);
        v81 = v41;
        v82 = v40;
        v43 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 64);
        v42 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 80);
        v44 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 48);
        *(v85 + 15) = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 95);
        v84 = v43;
        v85[0] = v42;
        v83 = v44;
        v45 = v71;
        *v39 = ObjectType;
        *(v39 + 8) = v31;
        v60 = v31;
        v46 = v69;
        v47 = v70;
        *(v39 + 16) = v45;
        *(v39 + 24) = v47;
        *(v39 + 32) = v46;
        v48 = v67;
        *(v39 + 40) = v68;
        *(v39 + 48) = v48;
        v26 = v62;
        v25 = v63;
        *(v39 + 56) = v66;
        *(v39 + 64) = v25;
        *(v39 + 72) = v26;
        *(v39 + 80) = v37;
        v49 = v61;
        *(v39 + 88) = v61;
        *(v39 + 98) = BYTE2(v36);
        *(v39 + 96) = v36;
        *&v91[15] = *(v98 + 15);
        v90 = v97;
        *v91 = v98[0];
        v88 = v95;
        v89 = v96;
        v86 = v93;
        v87 = v94;
        v50 = Strong;
        sub_24A50D63C(a1, v77, &qword_27EF50210, &qword_24A635DE0);
        sub_24A55B388(&v86, v77);
        sub_24A55B3E4(&v80);

        v19 = v71;
        v17 = ObjectType;
        v18 = v60;
        v21 = v69;
        v20 = v70;
        v23 = v67;
        v22 = v68;
        v24 = v66;
        v28 = v49;
      }

      else
      {
        v90 = v97;
        *v91 = v98[0];
        *&v91[15] = *(v98 + 15);
        v86 = v93;
        v87 = v94;
        v88 = v95;
        v89 = v96;
        sub_24A55B388(&v86, &v80);
        v19 = v71;
        v17 = ObjectType;
        v18 = v31;
        v21 = v69;
        v20 = v70;
        v23 = v67;
        v22 = v68;
        v24 = v66;
        v26 = v62;
        v25 = v63;
        v28 = v61;
      }

      v27 = v64;
      v29 = v36 & 0xFFFFFFFF00FFFFFFLL | (v65 << 24) | 0x300000000;
    }

    *&v86 = v17;
    *(&v86 + 1) = v18;
    *&v87 = v19;
    *(&v87 + 1) = v20;
    *&v88 = v21;
    *(&v88 + 1) = v22;
    *&v89 = v23;
    *(&v89 + 1) = v24;
    *&v90 = v25;
    *(&v90 + 1) = v26;
    *v91 = v27;
    *&v91[8] = v28;
    *&v91[16] = v29;
    v51 = v3 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    v92 = BYTE4(v29);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v52 = *(v51 + 8);
      ObjectType = swift_getObjectType();
      *(&v81 + 1) = type metadata accessor for FMFindingLocalizer();
      *&v82 = &off_285DA5430;
      *&v80 = v15;
      v53 = v75[3];
      v54 = v75[4];
      sub_24A50A204(v75, v53);
      v55 = *(v54 + 8);
      v56 = v15;
      v55(v77, v53, v54);
      v57 = v78;
      v58 = v79;
      sub_24A50A204(v77, v78);
      v59 = v76;
      (*(v58 + 16))(v57, v58);
      (*(v52 + 8))(&v80, &v86, v59, ObjectType, v52);
      swift_unknownObjectRelease();
      sub_24A50D6A4(a1, &qword_27EF50210, &qword_24A635DE0);

      (*(v73 + 8))(v59, v74);
      sub_24A508C54(v77);
      return sub_24A508C54(&v80);
    }

    else
    {

      return sub_24A50D6A4(a1, &qword_27EF50210, &qword_24A635DE0);
    }
  }

  return result;
}

uint64_t sub_24A554278(void *a1, void *a2, uint64_t *a3, char a4)
{
  v8 = type metadata accessor for FMFindingLocalizerError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    swift_getErrorValue();
    if (sub_24A62F684() == 300)
    {
      swift_getErrorValue();
      v14 = sub_24A62F694();
      v16 = v15;
      v17 = *a3;
      if (v14 == sub_24A62EC14() && v16 == v18)
      {

LABEL_7:
        swift_storeEnumTagMultiPayload();
        sub_24A54D82C(v11, 0);

        return sub_24A55B484(v11, type metadata accessor for FMFindingLocalizerError);
      }

      v19 = sub_24A62F634();

      if (v19)
      {
        goto LABEL_7;
      }
    }

    v20 = *(sub_24A508FA4(&unk_27EF4FE70, &unk_24A635DC0) + 48);
    v21 = a2[3];
    v22 = a2[4];
    sub_24A50A204(a2, v21);
    (*(v22 + 8))(v27, v21, v22);
    v23 = v28;
    v24 = v29;
    sub_24A50A204(v27, v28);
    (*(v24 + 16))(v23, v24);
    *&v11[v20] = a1;
    swift_storeEnumTagMultiPayload();
    v25 = a1;
    sub_24A54D82C(v11, a4 & 1);

    sub_24A55B484(v11, type metadata accessor for FMFindingLocalizerError);
    return sub_24A508C54(v27);
  }

  return result;
}

void sub_24A5544F0(char a1, void *a2)
{
  v4 = type metadata accessor for FMFindingLocalizerError(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 == 3)
    {
      v9 = a2[3];
      v10 = a2[4];
      v13 = Strong;
      sub_24A50A204(a2, v9);
      (*(v10 + 8))(v14, v9, v10);
      v11 = v15;
      v12 = v16;
      sub_24A50A204(v14, v15);
      (*(v12 + 16))(v11, v12);
      swift_storeEnumTagMultiPayload();
      sub_24A54D82C(v7, 0);

      sub_24A55B484(v7, type metadata accessor for FMFindingLocalizerError);
      sub_24A508C54(v14);
    }

    else
    {
    }
  }
}

void sub_24A554678(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v6 = v2 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v12[3] = type metadata accessor for FMFindingLocalizer();
      v12[4] = &off_285DA5430;
      v12[0] = v11;
      v9 = *(v7 + 32);
      v10 = v11;
      v9(v12, a1, a2, ObjectType, v7);
      swift_unknownObjectRelease();

      sub_24A508C54(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_24A554788()
{
  v1 = [v0 description];
  v2 = sub_24A62EC14();

  return v2;
}

uint64_t sub_24A554858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 3)
    {
      return v12 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24A554934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

void sub_24A554A1C()
{
  sub_24A554AFC(319, &qword_27EF4FE40);
  if (v0 <= 0x3F)
  {
    sub_24A55B9CC(319, &qword_27EF4FE48, &qword_27EF4FE50, &qword_24A634BB0);
    if (v1 <= 0x3F)
    {
      sub_24A554AFC(319, &unk_27EF4FE58);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24A554AFC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24A62F1C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FMExperienceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMExperienceType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A554C9C()
{
  result = qword_27EF4FE68;
  if (!qword_27EF4FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FE68);
  }

  return result;
}

double sub_24A554CF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_24A515AC8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A558C5C();
      v11 = v19;
    }

    v12 = *(v11 + 48);
    v13 = sub_24A62E214();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56) + 104 * v8;
    v15 = *(v14 + 80);
    *(a2 + 64) = *(v14 + 64);
    *(a2 + 80) = v15;
    *(a2 + 96) = *(v14 + 96);
    v16 = *(v14 + 16);
    *a2 = *v14;
    *(a2 + 16) = v16;
    v17 = *(v14 + 48);
    *(a2 + 32) = *(v14 + 32);
    *(a2 + 48) = v17;
    sub_24A55715C(v8, v11);
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 82) = 0u;
  }

  return result;
}

uint64_t sub_24A554E04(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_24A508FA4(&qword_27EF4FF38, &qword_24A635E58);
  v49 = a2;
  result = sub_24A62F484();
  v54 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v12;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = v54 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
LABEL_17:
      v29 = *(v12 + 48);
      v51 = *(v47 + 72);
      v30 = v51 * (v26 | (v15 << 6));
      if (v49)
      {
        v31 = *v50;
        v32 = v48;
        (*v50)(v48, v29 + v30, v6);
      }

      else
      {
        v31 = *v45;
        v32 = v48;
        (*v45)(v48, v29 + v30, v6);
      }

      v31(v53, *(v12 + 56) + v30, v6);
      v33 = v54;
      v34 = *(v54 + 40);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0]);
      result = sub_24A62EBB4();
      v35 = -1 << *(v33 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v54;
      v24 = v51 * v22;
      v25 = *v50;
      (*v50)((*(v54 + 48) + v51 * v22), v32, v6);
      result = (v25)(*(v23 + 56) + v24, v53, v6);
      ++*(v23 + 16);
      v12 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v54;
  return result;
}

uint64_t sub_24A555250(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_24A508FA4(&qword_27EF4FF30, &qword_24A635E50);
  v44 = a2;
  result = sub_24A62F484();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0]);
      result = sub_24A62EBB4();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24A555610(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A508FA4(&qword_27EF4FF68, &qword_24A635E88);
  result = sub_24A62F484();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_24A62F714();
      MEMORY[0x24C21B040](v21);
      result = sub_24A62F754();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A5558A0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_24A508FA4(&qword_27EF4FEB8, &qword_24A635DF0);
  v54 = a2;
  result = sub_24A62F484();
  v14 = result;
  if (*(v11 + 16))
  {
    v51[0] = v3;
    v15 = 0;
    v53 = v11;
    v18 = *(v11 + 64);
    v17 = (v11 + 64);
    v16 = v18;
    v19 = 1 << *(v17 - 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v16;
    v22 = (v19 + 63) >> 6;
    v51[1] = v7 + 16;
    v55 = (v7 + 32);
    v23 = result + 64;
    v52 = v7;
    v57 = v6;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v29 = v26 | (v15 << 6);
      v30 = v10;
      v31 = v53;
      v32 = *(v53 + 48);
      v56 = *(v7 + 72);
      v33 = v30;
      if (v54)
      {
        (*(v7 + 32))(v30, v32 + v56 * v29, v57);
        v34 = *(v31 + 56) + 104 * v29;
        v67 = *(v34 + 48);
        v68 = *(v34 + 64);
        *v69 = *(v34 + 80);
        *&v69[13] = *(v34 + 93);
        v64 = *v34;
        v65 = *(v34 + 16);
        v66 = *(v34 + 32);
      }

      else
      {
        (*(v7 + 16))(v30, v32 + v56 * v29, v57);
        v35 = *(v31 + 56) + 104 * v29;
        v36 = *(v35 + 93);
        v38 = *(v35 + 64);
        v37 = *(v35 + 80);
        v61 = *(v35 + 48);
        v62 = v38;
        v63[0] = v37;
        *(v63 + 13) = v36;
        v40 = *(v35 + 16);
        v39 = *(v35 + 32);
        v58 = *v35;
        v59 = v40;
        v60 = v39;
        sub_24A508CE4(&v58, &v64);
        v68 = v62;
        *v69 = v63[0];
        *&v69[13] = *(v63 + 13);
        v64 = v58;
        v65 = v59;
        v66 = v60;
        v67 = v61;
      }

      v41 = *(v14 + 40);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0]);
      result = sub_24A62EBB4();
      v42 = -1 << *(v14 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      v10 = v33;
      if (((-1 << v43) & ~*(v23 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v7 = v52;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v23 + 8 * v44);
          if (v48 != -1)
          {
            v24 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v43) & ~*(v23 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v7 = v52;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = (*v55)(*(v14 + 48) + v56 * v24, v33, v57);
      v25 = *(v14 + 56) + 104 * v24;
      *(v25 + 32) = v66;
      *(v25 + 16) = v65;
      *v25 = v64;
      *(v25 + 93) = *&v69[13];
      *(v25 + 80) = *v69;
      *(v25 + 64) = v68;
      *(v25 + 48) = v67;
      ++*(v14 + 16);
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v15 >= v22)
      {
        break;
      }

      v28 = v17[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v51[0];
      goto LABEL_37;
    }

    v49 = v53;
    v50 = 1 << *(v53 + 32);
    v3 = v51[0];
    if (v50 >= 64)
    {
      bzero(v17, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v50;
    }

    *(v49 + 16) = 0;
  }

LABEL_37:
  *v3 = v14;
  return result;
}

uint64_t sub_24A555E0C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_24A508FA4(&unk_27EF4FE80, &unk_24A635DD0);
  v56 = a2;
  result = sub_24A62F484();
  v14 = result;
  if (*(v11 + 16))
  {
    v71 = v10;
    v52 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v53 = v7 + 16;
    v55 = v7;
    v57 = (v7 + 32);
    v21 = result + 64;
    v54 = v11;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v70 = *(v55 + 72);
      if (v56)
      {
        (*(v55 + 32))(v71, v29 + v70 * v28, v6);
        v30 = *(v11 + 56) + 104 * v28;
        v60 = *v30;
        v58 = *(v30 + 8);
        v31 = *(v30 + 24);
        *&v61 = *(v30 + 16);
        *(&v61 + 1) = v31;
        v32 = *(v30 + 32);
        v62 = *(v30 + 40);
        v33 = *(v30 + 48);
        v63 = *(v30 + 56);
        v64 = *(v30 + 57);
        v34 = *(v30 + 64);
        v65 = *(v30 + 72);
        v66 = *(v30 + 73);
        v67 = *(v30 + 74);
        v35 = *(v30 + 80);
        v68 = *(v30 + 88);
        v59 = *(v30 + 96);
        v69 = *(v30 + 97);
      }

      else
      {
        (*(v55 + 16))(v71, v29 + v70 * v28, v6);
        v36 = *(v11 + 56) + 104 * v28;
        v37 = *(v36 + 48);
        v38 = *(v36 + 64);
        v39 = *(v36 + 80);
        v85 = *(v36 + 96);
        v83 = v38;
        v84 = v39;
        v82 = v37;
        v40 = *v36;
        v41 = *(v36 + 32);
        v80 = *(v36 + 16);
        v81 = v41;
        v79 = v40;
        v69 = HIBYTE(v85);
        v68 = *(&v84 + 1);
        v59 = v85;
        v35 = v84;
        v67 = BYTE10(v38);
        v66 = BYTE9(v38);
        v65 = BYTE8(v38);
        v34 = v38;
        v64 = BYTE9(v82);
        v63 = BYTE8(v82);
        v33 = v82;
        v62 = BYTE8(v41);
        v32 = v41;
        v61 = v80;
        v60 = v40;
        v58 = BYTE8(v40);
        sub_24A51C914(&v79, v78);
      }

      v42 = *(v14 + 40);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0]);
      result = sub_24A62EBB4();
      v43 = -1 << *(v14 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v21 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v21 + 8 * v45);
          if (v49 != -1)
          {
            v22 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v44) & ~*(v21 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v77 = v58;
      v72 = v59;
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v57)(*(v14 + 48) + v70 * v22, v71, v6);
      v23 = *(v14 + 56) + 104 * v22;
      *v23 = v60;
      *(v23 + 8) = v77;
      *(v23 + 12) = *(&v79 + 3);
      *(v23 + 9) = v79;
      v24 = *(&v61 + 1);
      *(v23 + 16) = v61;
      *(v23 + 24) = v24;
      *(v23 + 32) = v32;
      *(v23 + 40) = v62;
      *(v23 + 44) = *(v78 + 3);
      *(v23 + 41) = v78[0];
      *(v23 + 48) = v33;
      *(v23 + 56) = v63;
      *(v23 + 57) = v64;
      *(v23 + 62) = v76;
      *(v23 + 58) = v75;
      *(v23 + 64) = v34;
      *(v23 + 72) = v65;
      *(v23 + 73) = v66;
      *(v23 + 74) = v67;
      *(v23 + 75) = v73;
      *(v23 + 79) = v74;
      *(v23 + 80) = v35;
      *(v23 + 88) = v68;
      *(v23 + 96) = v72;
      *(v23 + 97) = v69;
      ++*(v14 + 16);
      v11 = v54;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_36;
    }

    v50 = 1 << *(v11 + 32);
    v3 = v52;
    if (v50 >= 64)
    {
      bzero(v16, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v50;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24A556510(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_24A62E214();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_24A508FA4(a3, a4);
  v47 = a2;
  result = sub_24A62F484();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0]);
      result = sub_24A62EBB4();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_24A5568EC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_24A508FA4(&qword_27EF4FF60, &qword_24A635E80);
  v42 = a2;
  result = sub_24A62F484();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_24A508CA0((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_24A508AE4(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0]);
      result = sub_24A62EBB4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_24A508CA0(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24A556CD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A508FA4(&unk_27EF4FEC0, &qword_24A635DF8);
  v56 = a2;
  result = sub_24A62F484();
  v8 = result;
  if (*(v5 + 16))
  {
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
    for (i = v5; ; v5 = i)
    {
      if (!v13)
      {
        v23 = v9;
        while (1)
        {
          v9 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_52;
          }

          if (v9 >= v14)
          {
            break;
          }

          v24 = v10[v9];
          ++v23;
          if (v24)
          {
            v22 = __clz(__rbit64(v24));
            v13 = (v24 - 1) & v24;
            goto LABEL_17;
          }
        }

        if (v56)
        {
          v54 = 1 << *(v5 + 32);
          if (v54 >= 64)
          {
            bzero(v10, ((v54 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v10 = -1 << v54;
          }

          *(v5 + 16) = 0;
        }

        break;
      }

      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      if (v56)
      {
        v26 = *(v5 + 56);
        v27 = *(v5 + 48) + 104 * v25;
        v28 = *(v27 + 48);
        v67 = *(v27 + 32);
        v68 = v28;
        v29 = *(v27 + 80);
        v30 = *v27;
        v31 = *(v27 + 16);
        v32 = *(v27 + 96) | (*(v27 + 100) << 32);
        v69 = *(v27 + 64);
        v70 = v29;
        v65 = v30;
        v66 = v31;
        v33 = (v26 + 40 * v25);
        v57 = *v33;
        v34 = *(v33 + 2);
        v35 = *(v33 + 6);
        v36 = *(v33 + 4);
      }

      else
      {
        v37 = *(v5 + 48) + 104 * v25;
        v38 = *(v37 + 48);
        v39 = *(v37 + 64);
        v40 = *(v37 + 80);
        *&v64[13] = *(v37 + 93);
        v63 = v39;
        *v64 = v40;
        v62 = v38;
        v42 = *(v37 + 16);
        v41 = *(v37 + 32);
        v59 = *v37;
        v60 = v42;
        v61 = v41;
        v43 = *(v5 + 56) + 40 * v25;
        v57 = *v43;
        v34 = *(v43 + 16);
        v35 = *(v43 + 24);
        v36 = *(v43 + 32);
        sub_24A508CE4(&v59, v58);
        v67 = v61;
        v68 = v62;
        v69 = v63;
        v70 = *v64;
        v32 = *&v64[16] | (v64[20] << 32);
        v65 = v59;
        v66 = v60;
      }

      v44 = *(v8 + 40);
      sub_24A62F714();
      v45 = (((v32 & 0xFF000000) - 0x4000000) >> 24);
      if (v45 > 1)
      {
        if (v45 == 2)
        {
          v46 = 4;
          goto LABEL_31;
        }

        if (v45 == 3)
        {
          v46 = 5;
          goto LABEL_31;
        }
      }

      else
      {
        if (!(((v32 & 0xFF000000) - 0x4000000) >> 24))
        {
          v46 = 1;
          goto LABEL_31;
        }

        if (v45 == 1)
        {
          v46 = 2;
LABEL_31:
          MEMORY[0x24C21B040](v46);
          goto LABEL_32;
        }
      }

      v73 = v67;
      v74 = v68;
      v75 = v69;
      v76 = v70;
      v71 = v65;
      v72 = v66;
      v78 = BYTE2(v32);
      v77 = v32;
      MEMORY[0x24C21B040](3);
      sub_24A5AFE14();
      MEMORY[0x24C21B040](BYTE3(v32));
      if (BYTE4(v32) != 3)
      {
        sub_24A62F734();
        if (BYTE4(v32) == 2)
        {
          MEMORY[0x24C21B040](1);
          goto LABEL_32;
        }

        MEMORY[0x24C21B040](0);
      }

      sub_24A62F734();
LABEL_32:
      result = sub_24A62F754();
      v47 = -1 << *(v8 + 32);
      v48 = result & ~v47;
      v49 = v48 >> 6;
      if (((-1 << v48) & ~*(v15 + 8 * (v48 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v47) >> 6;
        while (++v49 != v51 || (v50 & 1) == 0)
        {
          v52 = v49 == v51;
          if (v49 == v51)
          {
            v49 = 0;
          }

          v50 |= v52;
          v53 = *(v15 + 8 * v49);
          if (v53 != -1)
          {
            v16 = __clz(__rbit64(~v53)) + (v49 << 6);
            goto LABEL_9;
          }
        }

LABEL_52:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v48) & ~*(v15 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 104 * v16;
      v18 = v68;
      *(v17 + 32) = v67;
      *(v17 + 48) = v18;
      v19 = v70;
      *(v17 + 64) = v69;
      *(v17 + 80) = v19;
      v20 = v66;
      *v17 = v65;
      *(v17 + 16) = v20;
      *(v17 + 100) = BYTE4(v32);
      *(v17 + 96) = v32;
      v21 = *(v8 + 56) + 40 * v16;
      *v21 = v57;
      *(v21 + 16) = v34;
      *(v21 + 24) = v35;
      *(v21 + 32) = v36;
      ++*(v8 + 16);
    }
  }

  *v3 = v8;
  return result;
}

char *sub_24A55715C(int64_t a1, uint64_t a2)
{
  v35 = sub_24A62E214();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v37 = a2;
    v12 = ~v10;
    v13 = sub_24A62F274();
    v14 = v12;
    a2 = v37;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v33 = (v13 + 1) & v14;
    v34 = v16;
    v17 = *(v15 + 56);
    v32 = (v15 - 8);
    v36 = v17;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v35;
      v21 = v15;
      v34(v8, *(a2 + 48) + v17 * v11, v35);
      v22 = *(a2 + 40);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0]);
      v23 = sub_24A62EBB4();
      result = (*v32)(v8, v20);
      v14 = v19;
      v24 = v23 & v19;
      if (a1 >= v33)
      {
        if (v24 >= v33 && a1 >= v24)
        {
LABEL_15:
          v15 = v21;
          if (v36 * a1 < v18 || *(v37 + 48) + v36 * a1 >= (*(v37 + 48) + v18 + v36))
          {
            swift_arrayInitWithTakeFrontToBack();
LABEL_20:
            v14 = v19;
          }

          else if (v36 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
            goto LABEL_20;
          }

          a2 = v37;
          v27 = *(v37 + 56);
          result = (v27 + 104 * a1);
          v28 = (v27 + 104 * v11);
          if (104 * a1 < (104 * v11) || result >= v28 + 104 || a1 != v11)
          {
            result = memmove(result, v28, 0x68uLL);
            v14 = v19;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v33 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v21;
      a2 = v37;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v36;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A557460(int64_t a1, uint64_t a2)
{
  v43 = sub_24A62E214();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_24A62F274();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0]);
      v26 = sub_24A62EBB4();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_24A557780(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24A5160C8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24A555610(v16, a4 & 1);
      v20 = *v5;
      result = sub_24A5160C8(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_24A62F674();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_24A5587B8();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_24A5578E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A62E214();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24A515AC8(a2);
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
      sub_24A55891C();
      goto LABEL_7;
    }

    sub_24A5558A0(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_24A515AC8(a2);
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
      return sub_24A558010(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24A62F674();
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
  v22 = v21[7] + 104 * v15;

  return sub_24A55B4E4(a1, v22);
}

uint64_t sub_24A557AB0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A62E214();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24A515AC8(a2);
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
      sub_24A558C5C();
      goto LABEL_7;
    }

    sub_24A555E0C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_24A515AC8(a2);
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
      return sub_24A5580EC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24A62F674();
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
  v22 = v21[7] + 104 * v15;

  return sub_24A55B2CC(a1, v22);
}

void sub_24A557CA8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v29 = a4;
  v30 = a5;
  v6 = v5;
  v10 = sub_24A62E214();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_24A515AC8(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_24A558FC4(v29, v30);
      goto LABEL_7;
    }

    sub_24A556510(v20, a3 & 1, v29, v30);
    v26 = *v6;
    v27 = sub_24A515AC8(a2);
    if ((v21 & 1) == (v28 & 1))
    {
      v17 = v27;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      sub_24A5581C8(v17, v14, a1, v23);
      return;
    }

LABEL_15:
    sub_24A62F674();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

unint64_t sub_24A557E84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_24A515A5C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_24A556CD0(v14, a3 & 1);
      v18 = *v4;
      result = sub_24A515A5C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_15:
        result = sub_24A62F674();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_24A5594C0();
      result = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 40 * result;
    v22 = *(a1 + 16);
    *v21 = *a1;
    *(v21 + 16) = v22;
    *(v21 + 32) = *(a1 + 32);
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  v23 = v20[6] + 104 * result;
  v25 = *(a2 + 16);
  v24 = *(a2 + 32);
  *v23 = *a2;
  *(v23 + 16) = v25;
  *(v23 + 32) = v24;
  v26 = *(a2 + 48);
  v27 = *(a2 + 64);
  v28 = *(a2 + 80);
  *(v23 + 93) = *(a2 + 93);
  *(v23 + 64) = v27;
  *(v23 + 80) = v28;
  *(v23 + 48) = v26;
  v29 = v20[7] + 40 * result;
  v30 = *(a1 + 16);
  *v29 = *a1;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a1 + 32);
  v31 = v20[2];
  v13 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20[2] = v32;
  return sub_24A508CE4(a2, v33);
}

uint64_t sub_24A558010(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A62E214();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 104 * a1;
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  *(v11 + 93) = *(a3 + 93);
  v13 = *(a3 + 80);
  *(v11 + 64) = *(a3 + 64);
  *(v11 + 80) = v13;
  v14 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v14;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_24A5580EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A62E214();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 104 * a1;
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  *(v11 + 96) = *(a3 + 96);
  v13 = *(a3 + 80);
  *(v11 + 64) = *(a3 + 64);
  *(v11 + 80) = v13;
  v14 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v14;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_24A5581C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A62E214();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

char *sub_24A558280()
{
  v1 = v0;
  v35 = sub_24A62E214();
  v39 = *(v35 - 8);
  v2 = v39[8];
  v3 = MEMORY[0x28223BE20](v35);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v31 - v5;
  sub_24A508FA4(&qword_27EF4FF38, &qword_24A635E58);
  v6 = *v0;
  v7 = sub_24A62F474();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_24A558548()
{
  v1 = v0;
  v32 = sub_24A62E214();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&qword_27EF4FF30, &qword_24A635E50);
  v4 = *v0;
  v5 = sub_24A62F474();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24A5587B8()
{
  v1 = v0;
  sub_24A508FA4(&qword_27EF4FF68, &qword_24A635E88);
  v2 = *v0;
  v3 = sub_24A62F474();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

char *sub_24A55891C()
{
  v1 = v0;
  v44 = sub_24A62E214();
  v46 = *(v44 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&qword_27EF4FEB8, &qword_24A635DF0);
  v4 = *v0;
  v5 = sub_24A62F474();
  v6 = v5;
  if (*(v4 + 16))
  {
    v39 = v1;
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v40 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v45 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v42 = v46 + 16;
    v41 = v46 + 32;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v47 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v46;
        v21 = *(v46 + 72) * v19;
        v22 = v43;
        v23 = v44;
        (*(v46 + 16))(v43, *(v4 + 48) + v21, v44);
        v19 *= 104;
        v24 = *(v4 + 56) + v19;
        v25 = *(v24 + 48);
        v26 = *(v24 + 64);
        v27 = *(v24 + 80);
        *&v54[13] = *(v24 + 93);
        v53 = v26;
        *v54 = v27;
        v52 = v25;
        v29 = *(v24 + 16);
        v28 = *(v24 + 32);
        v49 = *v24;
        v50 = v29;
        v51 = v28;
        v30 = v4;
        v31 = v45;
        (*(v20 + 32))(*(v45 + 48) + v21, v22, v23);
        v32 = *(v31 + 56);
        v4 = v30;
        v33 = v32 + v19;
        v34 = v52;
        v35 = v53;
        v36 = *v54;
        *(v33 + 93) = *&v54[13];
        *(v33 + 64) = v35;
        *(v33 + 80) = v36;
        *(v33 + 48) = v34;
        v37 = v51;
        v38 = v50;
        *v33 = v49;
        *(v33 + 16) = v38;
        *(v33 + 32) = v37;
        result = sub_24A508CE4(&v49, v48);
        v14 = v47;
      }

      while (v47);
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

        v1 = v39;
        v6 = v45;
        goto LABEL_18;
      }

      v18 = *(v40 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v47 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_24A558C5C()
{
  v1 = v0;
  v44 = sub_24A62E214();
  v46 = *(v44 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&unk_27EF4FE80, &unk_24A635DD0);
  v4 = *v0;
  v5 = sub_24A62F474();
  v6 = v5;
  if (*(v4 + 16))
  {
    v39 = v1;
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v40 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v45 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v42 = v46 + 16;
    v41 = v46 + 32;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v47 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v46;
        v21 = *(v46 + 72) * v19;
        v22 = v43;
        v23 = v44;
        (*(v46 + 16))(v43, *(v4 + 48) + v21, v44);
        v19 *= 104;
        v24 = *(v4 + 56) + v19;
        v25 = *(v24 + 48);
        v26 = *(v24 + 64);
        v27 = *(v24 + 80);
        v55 = *(v24 + 96);
        v53 = v26;
        v54 = v27;
        v52 = v25;
        v29 = *(v24 + 16);
        v28 = *(v24 + 32);
        v49 = *v24;
        v50 = v29;
        v51 = v28;
        v30 = v4;
        v31 = v45;
        (*(v20 + 32))(*(v45 + 48) + v21, v22, v23);
        v32 = *(v31 + 56);
        v4 = v30;
        v33 = v32 + v19;
        v34 = v52;
        v35 = v53;
        v36 = v54;
        *(v33 + 96) = v55;
        *(v33 + 64) = v35;
        *(v33 + 80) = v36;
        *(v33 + 48) = v34;
        v37 = v51;
        v38 = v50;
        *v33 = v49;
        *(v33 + 16) = v38;
        *(v33 + 32) = v37;
        result = sub_24A51C914(&v49, v48);
        v14 = v47;
      }

      while (v47);
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

        v1 = v39;
        v6 = v45;
        goto LABEL_18;
      }

      v18 = *(v40 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v47 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_24A558FC4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_24A62E214();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(a1, a2);
  v8 = *v2;
  v9 = sub_24A62F474();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        result = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_24A559238()
{
  v1 = v0;
  v30 = sub_24A62E214();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&qword_27EF4FF60, &qword_24A635E80);
  v4 = *v0;
  v5 = sub_24A62F474();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_24A508AE4(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_24A508CA0(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
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

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24A5594C0()
{
  v1 = v0;
  sub_24A508FA4(&unk_27EF4FEC0, &qword_24A635DF8);
  v2 = *v0;
  v3 = sub_24A62F474();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_24A508CE4(v32, v31))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 104 * v16;
      v18 = (*(v2 + 48) + 104 * v16);
      v19 = *(v18 + 3);
      v20 = *(v18 + 4);
      v21 = *(v18 + 5);
      *(v33 + 13) = *(v18 + 93);
      v32[4] = v20;
      v33[0] = v21;
      v32[3] = v19;
      v23 = *(v18 + 1);
      v22 = *(v18 + 2);
      v32[0] = *v18;
      v32[1] = v23;
      v32[2] = v22;
      v24 = 40 * v16;
      v25 = *(v2 + 56) + 40 * v16;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      v28 = *(v25 + 32);
      v30 = *v25;
      memmove((*(v4 + 48) + v17), v18, 0x65uLL);
      v29 = *(v4 + 56) + v24;
      *v29 = v30;
      *(v29 + 16) = v26;
      *(v29 + 24) = v27;
      *(v29 + 32) = v28;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
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

    *v1 = v4;
  }

  return result;
}

void sub_24A5596B4(uint64_t a1, char a2, void *a3)
{
  v7 = sub_24A62E214();
  v63 = *(v7 - 8);
  v8 = v63[8];
  v9 = MEMORY[0x28223BE20](v7);
  v64 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v56 - v11;
  v13 = sub_24A508FA4(&unk_27EF52460, &unk_24A63C120);
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v56 - v16;
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_24;
  }

  v56[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = *(v15 + 48);
  v19 = *(v62 + 80);
  v61 = a1;
  v20 = (v63 + 4);
  v58 = a1 + ((v19 + 32) & ~v19);
  sub_24A50D63C(v58, v17, &unk_27EF52460, &unk_24A63C120);
  v21 = *v20;
  (*v20)(v12, v17, v7);
  v59 = v18;
  v57 = v21;
  v21(v64, &v17[v18], v7);
  v22 = *a3;
  v24 = sub_24A515AC8(v12);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (a2)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_24A558280();
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_24A554E04(v27, a2 & 1);
  v29 = *a3;
  v30 = sub_24A515AC8(v12);
  if ((v28 & 1) == (v31 & 1))
  {
    v24 = v30;
    if ((v28 & 1) == 0)
    {
LABEL_14:
      v35 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v36 = v63[9] * v24;
      v37 = v57;
      v57((v35[6] + v36), v12, v7);
      v37((v35[7] + v36), v64, v7);
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v35[2] = v40;
      if (v60 != 1)
      {
        v41 = 1;
        while (v41 < *(v61 + 16))
        {
          sub_24A50D63C(v58 + *(v62 + 72) * v41, v17, &unk_27EF52460, &unk_24A63C120);
          v42 = *v20;
          (*v20)(v12, v17, v7);
          v42(v64, &v17[v59], v7);
          v43 = *a3;
          v44 = sub_24A515AC8(v12);
          v46 = v43[2];
          v47 = (v45 & 1) == 0;
          v39 = __OFADD__(v46, v47);
          v48 = v46 + v47;
          if (v39)
          {
            goto LABEL_26;
          }

          v49 = v45;
          if (v43[3] < v48)
          {
            sub_24A554E04(v48, 1);
            v50 = *a3;
            v44 = sub_24A515AC8(v12);
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v49)
          {
            goto LABEL_11;
          }

          v52 = *a3;
          *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
          v53 = v63[9] * v44;
          v42((v52[6] + v53), v12, v7);
          v42((v52[7] + v53), v64, v7);
          v54 = v52[2];
          v39 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v39)
          {
            goto LABEL_27;
          }

          ++v41;
          v52[2] = v55;
          if (v60 == v41)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v32 = swift_allocError();
    swift_willThrow();
    v67 = v32;
    v33 = v32;
    sub_24A508FA4(&unk_27EF4F990, &unk_24A6349E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v34 = v63[1];
      v34(v64, v7);
      v34(v12, v7);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_24A62F674();
  __break(1u);
LABEL_29:
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_24A62F384();
  MEMORY[0x24C21A5D0](0xD00000000000001BLL, 0x800000024A63ECC0);
  sub_24A62F434();
  MEMORY[0x24C21A5D0](39, 0xE100000000000000);
  sub_24A62F444();
  __break(1u);
}

void sub_24A559C88(uint64_t a1, char a2, void *a3)
{
  v7 = sub_24A62E214();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A508FA4(&unk_27EF4FF10, &unk_24A635E30);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = v58 - v16;
  v63 = *(a1 + 16);
  if (!v63)
  {
    goto LABEL_22;
  }

  v58[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v62 = *(v15 + 72);
  v64 = a1;
  sub_24A50D63C(a1 + v19, v58 - v16, &unk_27EF4FF10, &unk_24A635E30);
  v59 = v8;
  v65 = *(v8 + 32);
  v66 = v7;
  v65(v11, v17, v7);
  v61 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_24A515AC8(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_24A555250(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_24A515AC8(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_24A62F674();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v20;
  v34 = v22;
  sub_24A558548();
  v22 = v34;
  v20 = v33;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();

    v69 = v31;
    v32 = v31;
    sub_24A508FA4(&unk_27EF4F990, &unk_24A6349E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v59 + 8))(v11, v66);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v35 = v20;
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v60 = *(v59 + 72);
  v38 = v22;
  v65((v37 + v60 * v22), v11, v66);
  *(v36[7] + 8 * v38) = v35;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    v41 = v64;
    if (v63 == 1)
    {
LABEL_22:

      return;
    }

    v42 = v64 + v62 + v19;
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      sub_24A50D63C(v42, v17, &unk_27EF4FF10, &unk_24A635E30);
      v65(v11, v17, v66);
      v44 = *&v17[v61];
      v45 = *a3;
      v46 = sub_24A515AC8(v11);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v26 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v26)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        sub_24A555250(v50, 1);
        v52 = *a3;
        v46 = sub_24A515AC8(v11);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v54 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v55 = v46;
      v65((v54[6] + v60 * v46), v11, v66);
      *(v54[7] + 8 * v55) = v44;
      v56 = v54[2];
      v26 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v43;
      v54[2] = v57;
      v42 += v62;
      v41 = v64;
      if (v63 == v43)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_24A62F384();
  MEMORY[0x24C21A5D0](0xD00000000000001BLL, 0x800000024A63ECC0);
  sub_24A62F434();
  MEMORY[0x24C21A5D0](39, 0xE100000000000000);
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A55A1D4(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = sub_24A508FA4(&qword_27EF4FEA8, &qword_24A635DE8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  LOBYTE(v15) = *(a2 + 8);
  if (a1[1])
  {
    if ((a2[1] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[1])
    {
      return 0;
    }

    v17 = *a1;
    v18 = *a2;
    if ((sub_24A62E804() & 1) == 0)
    {
      return 0;
    }
  }

  v19 = type metadata accessor for FindingEstimate(0);
  v20 = *(v19 + 20);
  v21 = a1;
  v22 = *(v13 + 48);
  v38 = v19;
  v39 = v21;
  sub_24A50D63C(v21 + v20, v16, &unk_27EF4FE20, &qword_24A634BA0);
  v40 = a2;
  sub_24A50D63C(a2 + v20, &v16[v22], &unk_27EF4FE20, &qword_24A634BA0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    sub_24A50D63C(v16, v12, &unk_27EF4FE20, &qword_24A634BA0);
    if (v23(&v16[v22], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v22], v4);
      sub_24A518A6C(&qword_27EF4FEB0, &qword_27EF4FE50, &qword_24A634BB0);
      v24 = sub_24A62EBD4();
      v25 = *(v5 + 8);
      v25(v8, v4);
      v25(v12, v4);
      sub_24A50D6A4(v16, &unk_27EF4FE20, &qword_24A634BA0);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v12, v4);
LABEL_11:
    sub_24A50D6A4(v16, &qword_27EF4FEA8, &qword_24A635DE8);
    return 0;
  }

  if (v23(&v16[v22], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_24A50D6A4(v16, &unk_27EF4FE20, &qword_24A634BA0);
LABEL_13:
  if (*(v39 + v38[6]) == *(v40 + v38[6]))
  {
    v26 = v38[7];
    v27 = *(v39 + v26);
    v28 = *(v40 + v26);
    if (v27 == 5)
    {
      if (v28 != 5)
      {
        return 0;
      }

LABEL_18:
      v29 = v38[8];
      v30 = (v39 + v29);
      v31 = *(v39 + v29 + 8);
      v32 = (v40 + v29);
      v33 = *(v32 + 8);
      if (v31)
      {
        if ((v32[1] & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v32[1])
        {
          return 0;
        }

        v34 = *v30;
        v35 = *v32;
        if ((sub_24A62E804() & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    if (v27 == v28)
    {
      goto LABEL_18;
    }
  }

  return 0;
}

uint64_t sub_24A55A5C8(uint64_t a1, uint64_t a2, int a3)
{
  v56 = a3;
  v6 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - v8;
  v10 = sub_24A62E214();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v63 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v48 - v15;
  v16 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v58 = v9;
    v48 = v3;
    v64 = MEMORY[0x277D84F90];
    sub_24A62F404();
    v18 = -1 << *(a1 + 32);
    v60 = a1 + 64;
    result = sub_24A62F264();
    v19 = result;
    v20 = 0;
    v21 = *(a2 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_productUUIDsByFindableUUID);
    v57 = v11 + 16;
    v62 = *(a1 + 36);
    v54 = (v11 + 56);
    v55 = v21;
    v52 = (v11 + 8);
    v53 = (v11 + 48);
    v49 = a1 + 72;
    v50 = v16;
    v22 = v11;
    v23 = v61;
    v24 = a1;
    v51 = v11;
    v59 = a1;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v24 + 32))
    {
      v27 = v19 >> 6;
      if ((*(v60 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_29;
      }

      if (v62 != *(v24 + 36))
      {
        goto LABEL_30;
      }

      v28 = *(v22 + 72);
      v29 = *(v22 + 16);
      v29(v23, *(v24 + 48) + v28 * v19, v10);
      v29(v63, v23, v10);
      v30 = v55;
      if (*(v55 + 16) && (v31 = sub_24A515AC8(v23), (v32 & 1) != 0))
      {
        v29(v58, *(v30 + 56) + v31 * v28, v10);
        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v34 = v58;
      (*v54)(v58, v33, 1, v10);
      v35 = sub_24A62E1D4();
      v36 = (*v53)(v34, 1, v10);
      v37 = v52;
      if (v36 == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = sub_24A62E1D4();
        (*v37)(v34, v10);
      }

      [objc_allocWithZone(MEMORY[0x277D43C48]) initWithUUID:v35 productUUID:v38 isOwned:v56 == 0];

      v39 = *v37;
      (*v37)(v63, v10);
      v39(v61, v10);
      sub_24A62F3E4();
      v40 = *(v64 + 16);
      sub_24A62F414();
      sub_24A62F424();
      result = sub_24A62F3F4();
      v24 = v59;
      v25 = 1 << *(v59 + 32);
      if (v19 >= v25)
      {
        goto LABEL_31;
      }

      v41 = *(v60 + 8 * v27);
      if ((v41 & (1 << v19)) == 0)
      {
        goto LABEL_32;
      }

      if (v62 != *(v59 + 36))
      {
        goto LABEL_33;
      }

      v42 = v41 & (-2 << (v19 & 0x3F));
      if (v42)
      {
        v25 = __clz(__rbit64(v42)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v26 = v50;
      }

      else
      {
        v43 = v27 << 6;
        v44 = v27 + 1;
        v26 = v50;
        v45 = (v49 + 8 * v27);
        while (v44 < (v25 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            result = sub_24A55B6DC(v19, v62, 0);
            v25 = __clz(__rbit64(v46)) + v43;
            goto LABEL_25;
          }
        }

        result = sub_24A55B6DC(v19, v62, 0);
LABEL_25:
        v24 = v59;
      }

      ++v20;
      v19 = v25;
      v22 = v51;
      v23 = v61;
      if (v20 == v26)
      {
        return v64;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_24A55AAAC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A55AAE4(uint64_t a1, const char *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v9 = sub_24A62E314();
  sub_24A506EB8(v9, qword_27EF5C118);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_24A62E2F4();
  v11 = sub_24A62EF64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    sub_24A55B628(&qword_27EF4F660, MEMORY[0x277CC95F0]);
    v14 = sub_24A62F614();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_24A509BA8(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_24A503000, v10, v11, a2, v12, 0xCu);
    sub_24A508C54(v13);
    MEMORY[0x24C21BBE0](v13, -1, -1);
    MEMORY[0x24C21BBE0](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

void sub_24A55AD54(void *a1)
{
  v2 = sub_24A62E214();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A62E314();
  sub_24A506EB8(v7, qword_27EF5C118);
  v18 = a1;
  v8 = sub_24A62E2F4();
  v9 = sub_24A62EF64();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    v12 = [v18 uuid];
    sub_24A62E1F4();

    sub_24A55B628(&qword_27EF4F660, MEMORY[0x277CC95F0]);
    v13 = sub_24A62F614();
    v15 = v14;
    (*(v3 + 8))(v6, v2);
    v16 = sub_24A509BA8(v13, v15, &v19);

    *(v10 + 4) = v16;
    *(v10 + 12) = 1024;
    LODWORD(v16) = [v18 rssi];

    *(v10 + 14) = v16;
    _os_log_impl(&dword_24A503000, v8, v9, "🧭 FMFindingLocalizer: Will integrate BT RSSI measurement for %s: %d", v10, 0x12u);
    sub_24A508C54(v11);
    MEMORY[0x24C21BBE0](v11, -1, -1);
    MEMORY[0x24C21BBE0](v10, -1, -1);
  }

  else
  {

    v17 = v18;
  }
}

void sub_24A55B024(void *a1)
{
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v9 = v1 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      v24[3] = type metadata accessor for FMFindingLocalizer();
      v24[4] = &off_285DA5430;
      v24[0] = v20;
      memset(v25, 0, sizeof(v25));
      v27 = 0;
      v26 = 117440512;
      v11 = a1[3];
      v10 = a1[4];
      sub_24A50A204(a1, v11);
      v12 = *(v10 + 8);
      v13 = v20;
      v12(v21, v11, v10);
      v14 = v22;
      v15 = v23;
      sub_24A50A204(v21, v22);
      (*(v15 + 16))(v14, v15);
      (*(v18 + 8))(v24, v25, v7, ObjectType);

      swift_unknownObjectRelease();
      (*(v4 + 8))(v7, v3);
      sub_24A508C54(v21);
      sub_24A508C54(v24);
    }

    else
    {
      v16 = v20;
    }
  }
}

void *sub_24A55B284(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

uint64_t sub_24A55B328()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A55B370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A55B438()
{
  v1 = *(v0 + 16);

  sub_24A508C54((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A55B484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A55B628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A55B670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingLocalizerError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A55B6DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_24A55B6E8()
{
  result = qword_27EF50500;
  if (!qword_27EF50500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50500);
  }

  return result;
}

uint64_t sub_24A55B73C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A55B7E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A508FA4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_24A55B898()
{
  sub_24A55B96C();
  if (v0 <= 0x3F)
  {
    sub_24A55BA20(319, &qword_27EF4FF90, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      sub_24A55BA6C();
      if (v2 <= 0x3F)
      {
        sub_24A55BA20(319, &qword_27EF4FFA0, sub_24A55BAEC);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24A55B96C()
{
  if (!qword_27EF4FF80)
  {
    sub_24A55B9CC(0, &qword_27EF523E0, &unk_27EF4F990, &unk_24A6349E0);
    if (!v1)
    {
      atomic_store(v0, &qword_27EF4FF80);
    }
  }
}

void sub_24A55B9CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_24A50E1E0(a3, a4);
    v5 = sub_24A62F1C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A55BA20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A55BA6C()
{
  if (!qword_27EF4FF98)
  {
    sub_24A62E214();
    sub_24A50E1E0(&unk_27EF4F990, &unk_24A6349E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF4FF98);
    }
  }
}

unint64_t sub_24A55BAEC()
{
  result = qword_27EF4FFA8;
  if (!qword_27EF4FFA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EF4FFA8);
  }

  return result;
}

uint64_t sub_24A55BB74(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = sub_24A62E814();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A62E024();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24[-1] - v15;
  v24[0] = a1;
  v24[1] = a2;
  sub_24A62DFF4();
  sub_24A62E014();
  v17 = *(v10 + 8);
  v17(v16, v9);
  sub_24A55BEBC();
  sub_24A62F1F4();
  v17(v14, v9);

  v24[0] = 0;
  v18 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v19 = sub_24A62EBE4();
  v20 = [v18 initWithString_];

  [v20 scanHexLongLong_];
  sub_24A62EC84();

  (*(v5 + 104))(v8, *MEMORY[0x277CE0EE0], v4);
  result = sub_24A62E874();
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_24A55BEBC()
{
  result = qword_27EF4FFB0;
  if (!qword_27EF4FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FFB0);
  }

  return result;
}

void sub_24A55BF10(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  _Q7 = *(v2 + 8);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 64);
  v12 = *(v2 + 80);
  v11 = *(v2 + 88);
  v13 = *(v2 + 96);
  v14 = *(v2 + 104);
  v15 = fabs(*&_Q7);
  if (vabdd_f64(*v2, v8) > *&v9 || v15 > *(v2 + 56))
  {
    v34 = *(v2 + 8);
    __x = *(v2 + 24);
    v17 = v5 - v8;
    v18 = vmovn_s64(vmvnq_s8(vceqq_f64(v7, v10)));
    if ((v18.i32[0] | v18.i32[1]))
    {
      v12 = vmuld_lane_f64(0.5, v7, 1);
      v11 = sqrt(v7.f64[0]);
      v13 = sqrt(v11 * v11 - v12 * v12);
      v14 = sqrt(v12 * v12 - v11 * v11);
    }

    v19 = exp(-(v12 * a2));
    v20 = *&v34 + v17 * v12;
    if (v12 >= v11)
    {
      v35 = -v12;
      if (v11 < v12)
      {
        v26 = v14 * a2;
        v33 = v20 / v14;
        v32 = cosh(v26);
        v27 = sinh(v26);
        v24 = v17 * v32 + v33 * v27;
        v25 = v19 * v35 * v24 + v19 * (v14 * (v33 * v32) + v14 * (v17 * v27));
        v7 = __x;
LABEL_14:
        v5 = v8 + v19 * v24;
        __asm { FMOV            V7.2D, #1.0 }

        *&_Q7 = v25;
        v9 = 0uLL;
        v10 = v7;
        goto LABEL_15;
      }

      v24 = v17 + v20 * a2;
      v25 = v19 * v20 + v19 * v35 * v24;
    }

    else
    {
      v21 = v13 * a2;
      v22 = v20 / v13;
      v23 = __sincos_stret(v21);
      v24 = v17 * v23.__cosval + v22 * v23.__sinval;
      v25 = v19 * -v12 * v24 + v19 * (v13 * (v22 * v23.__cosval) - v13 * (v17 * v23.__sinval));
    }

    v7 = __x;
    goto LABEL_14;
  }

LABEL_15:
  *a1 = v5;
  *(a1 + 8) = _Q7;
  *(a1 + 24) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *(a1 + 80) = v12;
  *(a1 + 88) = v11;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
}

double sub_24A55C118@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  v3 = 6.28318531 / *(v1 + 128) * (6.28318531 / *(v1 + 128));
  v4 = sqrt(v3);
  v5 = *(v1 + 16) * (v4 + v4);
  *a1 = *v1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v2;
  *(a1 + 48) = *(v1 + 352);
  *(a1 + 64) = vdupq_n_s64(0x4341C37937E08000uLL);
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

BOOL sub_24A55C180()
{
  v1 = v0[30];
  v2 = fabs(v0[1]);
  if (vabdd_f64(*v0, v1) > v0[44] || v2 > v0[45])
  {
    return 0;
  }

  if (vabdd_f64(v1, v0[35]) > v0[36])
  {
    return 0;
  }

  if (fabs(v0[31]) > v0[37])
  {
    return 0;
  }

  if (vabdd_f64(v0[2], v0[7]) > v0[8])
  {
    return 0;
  }

  if (fabs(v0[3]) > v0[9])
  {
    return 0;
  }

  if (vabdd_f64(v0[16], v0[21]) <= v0[22])
  {
    return fabs(v0[17]) <= v0[23];
  }

  return 0;
}

__n128 sub_24A55C248@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = v2[6];
  v59 = v2[5];
  v60 = v5;
  v6 = v2[8];
  v61 = v2[7];
  v7 = v2[2];
  v55 = v2[1];
  v56 = v7;
  v8 = v2[4];
  v57 = v2[3];
  v58 = v8;
  v9 = v2[9];
  v10 = v2[10];
  v48 = v6;
  v49 = v9;
  v11 = v2[14];
  v53 = v2[13];
  v54 = v11;
  v12 = v2[12];
  v51 = v2[11];
  v52 = v12;
  v50 = v10;
  v13 = v2[16];
  v41 = v2[15];
  v42 = v13;
  v14 = v2[17];
  v15 = v2[18];
  v16 = v2[21];
  v46 = v2[20];
  v47 = v16;
  v17 = v2[19];
  v44 = v15;
  v45 = v17;
  v43 = v14;
  v18 = *(v2 + 44);
  v19 = *(v2 + 45);
  sub_24A55BF10(&v55, a2);
  sub_24A55BF10(&v48, a2);
  sub_24A55BF10(&v41, a2);
  v20 = *(v2 + 30);
  v21 = 6.28318531 / *(v2 + 16) * (6.28318531 / *(v2 + 16));
  v22 = sqrt(v21);
  v23 = *(v2 + 2) * (v22 + v22);
  v62 = *v2;
  v63 = 0x3FF0000000000000;
  v64 = v21;
  v65 = v23;
  v66 = v20;
  v67 = v18;
  v68 = v19;
  v69 = vdupq_n_s64(0x4341C37937E08000uLL);
  v70 = 0u;
  v71 = 0u;
  sub_24A55BF10(v72, a2);
  v24 = v72[0];
  v25 = v59;
  v26 = v60;
  v27 = v57;
  *(a1 + 64) = v58;
  *(a1 + 80) = v25;
  v28 = v61;
  *(a1 + 96) = v26;
  *(a1 + 112) = v28;
  v29 = v55;
  v30 = v56;
  *a1 = v24;
  *(a1 + 16) = v29;
  *(a1 + 32) = v30;
  *(a1 + 48) = v27;
  v31 = v49;
  *(a1 + 128) = v48;
  *(a1 + 144) = v31;
  v32 = v50;
  v33 = v51;
  v34 = v53;
  v35 = v54;
  *(a1 + 192) = v52;
  *(a1 + 208) = v34;
  *(a1 + 160) = v32;
  *(a1 + 176) = v33;
  v36 = v41;
  v37 = v43;
  v38 = v44;
  *(a1 + 256) = v42;
  *(a1 + 272) = v37;
  *(a1 + 224) = v35;
  *(a1 + 240) = v36;
  result = v45;
  v40 = v47;
  *(a1 + 320) = v46;
  *(a1 + 336) = v40;
  *(a1 + 288) = v38;
  *(a1 + 304) = result;
  *(a1 + 352) = v18;
  *(a1 + 360) = v19;
  return result;
}

void *sub_24A55C3F8(double a1)
{
  v3 = &v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring_offsetParameters];
  *v3 = xmmword_24A635EB0;
  *(v3 + 1) = xmmword_24A635EC0;
  v4 = &v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters];
  *v4 = xmmword_24A635EB0;
  *(v4 + 1) = xmmword_24A635EC0;
  v5 = &v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0x3FF0000000000000;
  *(v5 + 9) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  v6 = vdupq_n_s64(0x4341C37937E08000uLL);
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 5) = v6;
  *(v5 + 6) = 0u;
  *(v5 + 18) = 0x3FF0000000000000;
  *(v5 + 23) = 0;
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 15) = 0u;
  *(v5 + 12) = v6;
  *(v5 + 13) = 0u;
  *(v5 + 32) = 0x3FF0000000000000;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 37) = 0;
  *(v5 + 21) = 0u;
  *(v5 + 22) = 0u;
  *(v5 + 19) = v6;
  *(v5 + 20) = 0u;
  v7 = &v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0x3FF0000000000000;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 7) = 0;
  *(v7 + 4) = v6;
  *(v7 + 5) = 0u;
  *(v7 + 6) = 0u;
  *&v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring__targetVelocity] = 0;
  *&v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring__previousTarget] = a1;
  *&v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold] = 0x3F50624DD2F1A9FCLL;
  *&v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableVelocityThreshold] = 0x3F50624DD2F1A9FCLL;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for FLSpring();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*((*MEMORY[0x277D85000] & *v8) + 0x1B0))(a1);
  return v8;
}

uint64_t sub_24A55C5A0(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v6 = *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 8);
  v7 = *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16);
  v8 = *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 24);
  if (v5 != a1 || v6 != a2 || v7 != a3 || v8 != a4)
  {
    v12 = v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    swift_beginAccess();
    v13 = 0.0;
    if (v6 == 0.0)
    {
      v14 = 24;
      v15 = 16;
      v16 = v5;
      v17 = 0.0;
    }

    else
    {
      v16 = 6.28318531 / v6 * (6.28318531 / v6);
      v18 = sqrt(v16);
      v17 = v18 + v18;
      v14 = 48;
      v15 = 40;
    }

    *(v12 + v15) = v16;
    *(v12 + v14) = v17;
    *(v12 + 56) = v5;
    if (v8 == 0.0)
    {
      v19 = 136;
      v20 = 128;
      v21 = v7;
    }

    else
    {
      v21 = 6.28318531 / v8 * (6.28318531 / v8);
      v22 = sqrt(v21);
      v13 = v22 + v22;
      v19 = 160;
      v20 = 152;
    }

    *(v12 + v20) = v21;
    *(v12 + v19) = v13;
    *(v12 + 168) = v7;
    return swift_endAccess();
  }

  return result;
}

double sub_24A55C6B4(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16);
  v5 = v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = 0;
  *(v5 + 16) = v3;
  *(v5 + 24) = xmmword_24A635ED0;
  *(v5 + 40) = xmmword_24A635EE0;
  *(v5 + 56) = v3;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  v6 = vdupq_n_s64(0x4341C37937E08000uLL);
  *(v5 + 80) = v6;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = v4;
  *(v5 + 136) = xmmword_24A635ED0;
  *(v5 + 152) = xmmword_24A635EE0;
  *(v5 + 168) = v4;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 192) = v6;
  *(v5 + 240) = a1;
  *(v5 + 248) = xmmword_24A635ED0;
  *(v5 + 264) = 0x4063BD3CC9BE45DELL;
  *(v5 + 272) = 0x403921FB54442D18;
  *(v5 + 280) = a1;
  *(v5 + 288) = 0;
  *(v5 + 296) = 0;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0u;
  *(v5 + 304) = v6;
  *(v5 + 320) = 0u;
  result = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold);
  *(v5 + 352) = result;
  v8 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableVelocityThreshold);
  *(v5 + 360) = v8;
  v9 = 6.28318531 / *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_offsetParameters + 16) * (6.28318531 / *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_offsetParameters + 16));
  v10 = sqrt(v9);
  v11 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_offsetParameters) * (v10 + v10);
  v12 = v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0x3FF0000000000000;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  *(v12 + 64) = v6;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 48) = result;
  *(v12 + 56) = v8;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__previousTarget) = a1;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__targetVelocity) = 0;
  return result;
}

__n128 sub_24A55C858(double a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  v5 = v4[35];
  v6 = v5 - *(v2 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__previousTarget);
  *(v2 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__previousTarget) = v5;
  *(v2 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__targetVelocity) = v6 / a1 * 0.25 + *(v2 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__targetVelocity) * 0.75;
  sub_24A55C248(__src, a1);
  swift_beginAccess();
  memcpy(v4, __src, 0x170uLL);
  v7 = v2 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  sub_24A55BF10(v12, a1);
  v8 = v12[5];
  *(v7 + 64) = v12[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v12[6];
  v9 = v12[1];
  *v7 = v12[0];
  *(v7 + 16) = v9;
  result = v12[3];
  *(v7 + 32) = v12[2];
  *(v7 + 48) = result;
  return result;
}

id sub_24A55C98C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FLSpring();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_24A55C9E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24A55CA08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A55CA28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 112) = v3;
  return result;
}

uint64_t sub_24A55CA88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A55CAA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 368) = v3;
  return result;
}

uint64_t sub_24A55CBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 96);
  v6 = *(a1 + 98);
  v7 = *(a5 + 24);
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  v9 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v9;
  v10 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v10;
  v14 = v6;
  v13 = v5;
  return v7(v12);
}

unint64_t sub_24A55CCA0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A56604C(*a1);
  *a2 = result;
  return result;
}

char *sub_24A55CD7C(uint64_t *a1, char *a2, __int16 *a3, void *a4)
{
  v7 = *a2;
  v8 = *a3;
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_hasCalledConfigure] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_error] = 0;
  v9 = &v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_backgroundTaskID];
  *v9 = 0;
  v9[8] = 1;
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_skipWaitingForPrewarm] = 0;
  v10 = &v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_decrementNISessionHandler];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] = 0;
  v12 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession;
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_applicationIsInBackground] = 0;
  sub_24A508AE4(a1, &v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable]);
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_connectionContext] = v7;
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType] = v8;
  *&v4[v12] = a4;
  sub_24A508AE4(a1, v56);
  v13 = a4;
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if (swift_dynamicCast())
  {
    sub_24A508CA0(v54, v59);
    LOWORD(v56[0]) = v8;
    v14 = sub_24A565B6C(v56, v59, 2);
    if (v14)
    {
      *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration] = v14;
      v15 = v14;
      v52.receiver = v4;
      v52.super_class = type metadata accessor for FMNearbyInteractionLocalizerContext();
      v16 = v15;
      v17 = objc_msgSendSuper2(&v52, sel_init);
      v18 = *&v17[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession];
      if (v18)
      {
        [v18 setDelegate_];
      }

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v19 = sub_24A62E314();
      sub_24A506EB8(v19, qword_27EF5C118);
      sub_24A508AE4(v59, v56);
      v20 = v17;
      v21 = sub_24A62E2F4();
      v22 = sub_24A62EF64();

      if (os_log_type_enabled(v21, v22))
      {
        v51 = v13;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v54[0] = v24;
        *v23 = 136315394;
        v50 = v16;
        v25 = [v20 description];
        v26 = sub_24A62EC14();
        v28 = v27;

        v29 = sub_24A509BA8(v26, v28, v54);

        *(v23 + 4) = v29;
        *(v23 + 12) = 2080;
        v30 = v57;
        v31 = v58;
        sub_24A50A204(v56, v57);
        v32 = (*(v31 + 16))(v30, v31);
        v33 = [v32 description];
        v34 = sub_24A62EC14();
        v36 = v35;

        sub_24A508C54(v56);
        v37 = sub_24A509BA8(v34, v36, v54);

        *(v23 + 14) = v37;
        _os_log_impl(&dword_24A503000, v21, v22, "🧭 FMR1NIContxt%s: init with discovery token: %s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21BBE0](v24, -1, -1);
        MEMORY[0x24C21BBE0](v23, -1, -1);

        sub_24A508C54(a1);
        sub_24A508C54(v59);
      }

      else
      {

        sub_24A508C54(a1);
        sub_24A508C54(v59);
        sub_24A508C54(v56);
      }

      return v20;
    }

    sub_24A508C54(v59);
  }

  else
  {
    v55 = 0;
    memset(v54, 0, sizeof(v54));
    sub_24A50D6A4(v54, &unk_27EF501C0, &unk_24A636238);
  }

  v38 = objc_allocWithZone(MEMORY[0x277CD8A30]);
  v39 = sub_24A62E114();
  v40 = [v38 initWithBytes_];

  v41 = [objc_allocWithZone(MEMORY[0x277CD8A38]) initWithRole:0 discoveryToken:v40 preferredUpdateRate:2];
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration] = v41;
  v53.receiver = v4;
  v53.super_class = type metadata accessor for FMNearbyInteractionLocalizerContext();
  v42 = v41;
  v43 = objc_msgSendSuper2(&v53, sel_init);
  v44 = qword_27EF4E9A0;
  v20 = v43;
  if (v44 != -1)
  {
    swift_once();
  }

  v45 = sub_24A62E314();
  sub_24A506EB8(v45, qword_27EF5C118);
  v46 = sub_24A62E2F4();
  v47 = sub_24A62EF44();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_24A503000, v46, v47, "🧭 FMR1NIContxt: Error initializing FMNearbyInteractionLocalizerContext. Findable does not conform to FMNIFindable protocol.", v48, 2u);
    MEMORY[0x24C21BBE0](v48, -1, -1);
  }

  else
  {
  }

  sub_24A508C54(a1);

  return v20;
}

uint64_t sub_24A55D3DC()
{
  v1 = v0;
  v2 = sub_24A62F784();
  v4 = v3;
  sub_24A62F384();

  sub_24A516B88(9, v2, v4);
  v6 = v5;
  v8 = v7;

  v25 = 7876668;
  v26 = 0xE300000000000000;
  v22[2] = v6;
  v23 = v8;
  sub_24A55B6E8();
  sub_24A62ECA4();

  v22[0] = 7876668;
  v22[1] = 0xE300000000000000;

  MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

  MEMORY[0x24C21A5D0](7876668, 0xE300000000000000);

  MEMORY[0x24C21A5D0](0x25202C2740252720, 0xEE003E6275732064);
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A633A00;
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v22);
  v10 = v23;
  v11 = v24;
  sub_24A50A204(v22, v23);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_24A508FEC();
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  v15 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v21 = *(v1 + v15);
    }

    v17 = sub_24A62F464();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D83C10];
  *(v9 + 96) = MEMORY[0x277D83B88];
  *(v9 + 104) = v18;
  *(v9 + 72) = v17;
  sub_24A508C54(v22);
  v19 = sub_24A62EC24();

  return v19;
}

uint64_t sub_24A55D754(void *a1, void *a2)
{
  v3 = v2;
  sub_24A508AE4(v2 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v58);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v62 = 0;
    memset(v61, 0, sizeof(v61));
  }

  v6 = [a2 discoveryToken];
  sub_24A569614(v61, v58);
  v7 = v59;
  if (!v59)
  {
    sub_24A50D6A4(v58, &unk_27EF501C0, &unk_24A636238);
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_15:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v18 = sub_24A62E314();
    sub_24A506EB8(v18, qword_27EF5C118);
    v19 = v3;
    v20 = a1;
    v21 = sub_24A62E2F4();
    v22 = sub_24A62EF64();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412546;
      *(v23 + 4) = v19;
      *v24 = v19;
      *(v23 + 12) = 2112;
      v25 = v19;
      v26 = [v20 configuration];
      *(v23 + 14) = v26;
      v24[1] = v26;
      _os_log_impl(&dword_24A503000, v21, v22, "🧭 FMR1NIContxt%@: nearby object discover token matches!! setting ready. Config: %@", v23, 0x16u);
      sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v24, -1, -1);
      MEMORY[0x24C21BBE0](v23, -1, -1);
    }

    v53 = v19[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState];
    v19[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState] = 2;
    v19[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState] = 1;
    v27 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v57 = v19;
    v28 = *&v19[v27];
    if (v28 >> 62)
    {
      if (v28 < 0)
      {
        v52 = *&v19[v27];
      }

      v3 = sub_24A62F464();
    }

    else
    {
      v3 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v3)
    {
LABEL_34:

      if (!v53)
      {
        v45 = v57;
        v46 = sub_24A62E2F4();
        v47 = sub_24A62EF64();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          *(v48 + 4) = v45;
          *v49 = v45;
          v50 = v45;
          _os_log_impl(&dword_24A503000, v46, v47, "🧭 FMR1NIContxt%@: extra updateRangingOrLocalizerRunningState.", v48, 0xCu);
          sub_24A50D6A4(v49, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v49, -1, -1);
          MEMORY[0x24C21BBE0](v48, -1, -1);
        }

        sub_24A560664();
      }

      return sub_24A50D6A4(v61, &unk_27EF501C0, &unk_24A636238);
    }

    v29 = 0;
    v54 = v28 & 0xFFFFFFFFFFFFFF8;
    v55 = v28 & 0xC000000000000001;
    while (1)
    {
      if (v55)
      {
        v30 = MEMORY[0x24C21ACB0](v29, v28);
      }

      else
      {
        if (v29 >= *(v54 + 16))
        {
          goto LABEL_40;
        }

        v30 = *(v28 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = &v30[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v33 + 1);
        v56 = v31;
        v35 = v3;
        v36 = v28;
        ObjectType = swift_getObjectType();
        v59 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v60 = &off_285DA58A0;
        v58[0] = v57;
        v38 = *(v34 + 32);
        v39 = v57;
        v40 = ObjectType;
        v28 = v36;
        v3 = v35;
        v31 = v56;
        v38(2, v58, v40, v34);
        swift_unknownObjectRelease();
        sub_24A508C54(v58);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = *(v33 + 1);
        v42 = swift_getObjectType();
        v59 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v60 = &off_285DA58A0;
        v58[0] = v57;
        v43 = *(v41 + 48);
        v44 = v57;
        v43(1, v58, v42, v41);
        swift_unknownObjectRelease();

        sub_24A508C54(v58);
      }

      else
      {
      }

      ++v29;
      if (v32 == v3)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v8 = v60;
  sub_24A50A204(v58, v59);
  v9 = (v8[2])(v7, v8);
  sub_24A508C54(v58);
  if (!v6)
  {
    v6 = v9;
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (!v9)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_24A50D7EC(0, &qword_27EF501E8, 0x277CD8A30);
  v10 = sub_24A62F164();

  if (v10)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (qword_27EF4E9A0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v11 = sub_24A62E314();
  sub_24A506EB8(v11, qword_27EF5C118);
  v12 = v3;
  v13 = sub_24A62E2F4();
  v14 = sub_24A62EF64();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1NIContxt%@: nearby object discover token doesn't match", v15, 0xCu);
    sub_24A50D6A4(v16, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v16, -1, -1);
    MEMORY[0x24C21BBE0](v15, -1, -1);
  }

  return sub_24A50D6A4(v61, &unk_27EF501C0, &unk_24A636238);
}

uint64_t sub_24A55DFE8(id *a1, uint64_t a2)
{
  v3 = [*a1 discoveryToken];
  sub_24A569614(a2, v9);
  v4 = v10;
  if (!v10)
  {
    sub_24A50D6A4(v9, &unk_27EF501C0, &unk_24A636238);
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_10:
    v7 = 1;
    return v7 & 1;
  }

  v5 = v11;
  sub_24A50A204(v9, v10);
  v6 = (*(v5 + 16))(v4, v5);
  sub_24A508C54(v9);
  if (!v3)
  {
    if (v6)
    {
      v7 = 0;
      v3 = v6;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_9;
  }

  sub_24A50D7EC(0, &qword_27EF501E8, 0x277CD8A30);
  v7 = sub_24A62F164();

LABEL_9:
  return v7 & 1;
}

void sub_24A55E390()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
  if (v3)
  {
    v4 = v3;
    [v4 setDelegate_];
    v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession];
    if (v5)
    {
      [v5 setDelegate_];
    }

    v6 = sub_24A62F784();
    v8 = v7;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v9 = sub_24A62E314();
    sub_24A506EB8(v9, qword_27EF5C118);
    v10 = v0;
    v11 = sub_24A62E2F4();
    v12 = sub_24A62EF64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v13 = 138412546;
      *(v13 + 4) = v10;
      *v28 = v10;
      *(v13 + 12) = 2080;
      v14 = v10;
      sub_24A516B88(9, v6, v8);
      v30 = v4;

      sub_24A55B6E8();
      sub_24A62ECA4();

      MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

      v15 = sub_24A509BA8(7876668, 0xE300000000000000, &v31);

      *(v13 + 14) = v15;
      v4 = v30;
      _os_log_impl(&dword_24A503000, v11, v12, "🧭 FMR1NIContxt%@: released NI session <%s> and reset state to unknown", v13, 0x16u);
      sub_24A50D6A4(v28, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v28, -1, -1);
      sub_24A508C54(v29);
      MEMORY[0x24C21BBE0](v29, -1, -1);
      MEMORY[0x24C21BBE0](v13, -1, -1);
    }

    else
    {
    }

    [*&v1[v2] invalidate];
    v23 = *&v1[v2];
    *&v1[v2] = 0;

    v24 = &v10[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_decrementNISessionHandler];
    v25 = *&v10[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_decrementNISessionHandler];
    if (v25)
    {
      v26 = *(v24 + 1);

      v25(v27);

      sub_24A50D844(v25);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v16 = sub_24A62E314();
    sub_24A506EB8(v16, qword_27EF5C118);
    v17 = v0;
    v18 = sub_24A62E2F4();
    v19 = sub_24A62EF64();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_24A503000, v18, v19, "🧭 FMR1NIContxt%@: reset item localizer state to unknown", v20, 0xCu);
      sub_24A50D6A4(v21, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v21, -1, -1);
      MEMORY[0x24C21BBE0](v20, -1, -1);
    }
  }

  v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_hasCalledConfigure] = 0;
}

void sub_24A55E7F4()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_applicationIsInBackground] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
    v3 = (v2 >> 13) & 3;
    v4 = BYTE1(v2);
    v5 = (v2 >> 8) & 0x9F;
    if ((v2 & 0x80000000) != 0)
    {
      v6 = (v2 >> 8) & 0x1F;
    }

    else
    {
      v6 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
    }

    if (v3 == 1)
    {
      v6 = v5;
    }

    if (!v3)
    {
      v6 = v4;
    }

    if (v6 == 2)
    {

      sub_24A5604F0();
    }

    else
    {
      sub_24A560248();
    }
  }

  else
  {
    v7 = &v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_backgroundTaskID];
    v8 = *MEMORY[0x277D767B0];
    if ((v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_backgroundTaskID + 8] & 1) == 0)
    {
      v9 = *v7;
      if (*v7 != v8)
      {
        v10 = [objc_opt_self() sharedApplication];
        [v10 endBackgroundTask_];
      }
    }

    *v7 = v8;
    v7[8] = 0;
    v11 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession;
    if (*&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession])
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v12 = sub_24A62E314();
      sub_24A506EB8(v12, qword_27EF5C118);
      v13 = v1;
      v14 = sub_24A62E2F4();
      v15 = sub_24A62EF64();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&dword_24A503000, v14, v15, "🧭 FMR1NIContxt%@: entering foreground", v16, 0xCu);
        sub_24A50D6A4(v17, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v17, -1, -1);
        MEMORY[0x24C21BBE0](v16, -1, -1);
      }
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x277CD8A68]) init];
      v20 = *&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession];
      if (v20)
      {
        v21 = v20;
        [v19 setARSession_];
        [v21 setDelegate_];
      }

      [v19 setDelegate_];
      v22 = sub_24A62F784();
      v24 = v23;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v25 = sub_24A62E314();
      sub_24A506EB8(v25, qword_27EF5C118);
      v26 = v1;
      v27 = sub_24A62E2F4();
      v28 = sub_24A62EF64();

      if (os_log_type_enabled(v27, v28))
      {
        v44 = v19;
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v45 = v43;
        *v29 = 138412546;
        *(v29 + 4) = v26;
        *v42 = v1;
        *(v29 + 12) = 2080;
        v30 = v26;
        sub_24A516B88(9, v22, v24);

        sub_24A55B6E8();
        sub_24A62ECA4();

        MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

        v31 = sub_24A509BA8(7876668, 0xE300000000000000, &v45);

        *(v29 + 14) = v31;
        _os_log_impl(&dword_24A503000, v27, v28, "🧭 FMR1NIContxt%@: entering foreground, created item localizer <%s> and will reconfigure", v29, 0x16u);
        sub_24A50D6A4(v42, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v42, -1, -1);
        sub_24A508C54(v43);
        MEMORY[0x24C21BBE0](v43, -1, -1);
        v32 = v29;
        v19 = v44;
        MEMORY[0x24C21BBE0](v32, -1, -1);
      }

      else
      {
      }

      v33 = &v26[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler];
      v34 = *&v26[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler];
      if (v34)
      {
        v35 = *(v33 + 1);

        v34(v36);
        sub_24A50D844(v34);
      }

      v37 = *&v1[v11];
      *&v1[v11] = v19;
    }

    v38 = *&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration];
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v40 = v39;
      v41 = v38;
      if ([v40 preferredUpdateRate] == 3)
      {
        sub_24A55FD50();

        return;
      }
    }

    sub_24A55F608();
  }
}

uint64_t sub_24A55EDF0(void *a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C118);
  v4 = a1;
  v5 = v1;
  v6 = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  v8 = &unk_27EF5C000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48[0] = v47;
    *v9 = 138412802;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v4;
    *v10 = v5;
    v10[1] = v4;
    *(v9 + 22) = 2080;
    v11 = &v4[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v46 = v7;
      v12 = *(v11 + 1);
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);
      v15 = v4;
      v16 = v5;
      v17 = v12;
      v7 = v46;
      v18 = v14(ObjectType, v17);
      v8 = &unk_27EF5C000;
      v19 = v18;
      v21 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = v4;
      v23 = v5;
      v21 = 0xE100000000000000;
      v19 = 63;
    }

    v24 = sub_24A509BA8(v19, v21, v48);

    *(v9 + 24) = v24;
    _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1NIContxt%@: subscribing %@ for %s", v9, 0x20u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v10, -1, -1);
    sub_24A508C54(v47);
    MEMORY[0x24C21BBE0](v47, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  v25 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v26 = v4;
  MEMORY[0x24C21A660]();
  if (*((*(v5 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v25) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v45 = *((*(v5 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A62ED84();
  }

  sub_24A62EDA4();
  swift_endAccess();
  v27 = &v26[v8[25]];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 1);
    v29 = swift_getObjectType();
    v30 = *(v5 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState);
    v49 = type metadata accessor for FMNearbyInteractionLocalizerContext();
    v50 = &off_285DA58A0;
    v48[0] = v5;
    v31 = *(v28 + 32);
    v32 = v5;
    v31(v30, v48, v29, v28);
    swift_unknownObjectRelease();
    sub_24A508C54(v48);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(v27 + 1);
    v35 = swift_getObjectType();
    v36 = *(v5 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState);
    v49 = type metadata accessor for FMNearbyInteractionLocalizerContext();
    v50 = &off_285DA58A0;
    v48[0] = v5;
    v37 = *(v34 + 48);
    v38 = v5;
    v37(v36, v48, v35, v34);
    swift_unknownObjectRelease();
    result = sub_24A508C54(v48);
  }

  v39 = *(v5 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_error);
  if (v39)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v40 = *(v27 + 1);
      v41 = swift_getObjectType();
      v49 = type metadata accessor for FMNearbyInteractionLocalizerContext();
      v50 = &off_285DA58A0;
      v48[0] = v5;
      v42 = *(v40 + 40);
      v43 = v5;
      v44 = v39;
      v42(v39, v48, v41, v40);
      swift_unknownObjectRelease();

      return sub_24A508C54(v48);
    }
  }

  return result;
}

void sub_24A55F21C(void *a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C118);
  v4 = v1;
  v5 = a1;
  v6 = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v4;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v4;
    v9[1] = v5;
    v10 = v4;
    v11 = v5;
    _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1NIContxt%@: unsubscribing %@", v8, 0x16u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  v12 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v13 = v5;
  v14 = sub_24A569868(&v4[v12]);

  v15 = *&v4[v12];
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v17 = *&v4[v12];
    }

    v16 = sub_24A62F464();
    if (v16 >= v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 >= v14)
    {
LABEL_7:
      sub_24A575AC4(v14, v16);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

BOOL sub_24A55F418()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v12 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_24A62E214();
      sub_24A569AD8(&qword_27EF501E0, MEMORY[0x277CC95F0]);
      if (sub_24A62EBD4())
      {
      }

      else
      {
        sub_24A62F3E4();
        v5 = *(v12 + 16);
        sub_24A62F414();
        sub_24A62F424();
        sub_24A62F3F4();
      }

      ++v4;
      if (v8 == i)
      {
        v9 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v10 = sub_24A62F464();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  return v10 != 0;
}

uint64_t sub_24A55F608()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity;
  if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] == 1)
  {
    if (qword_27EF4E9A0 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_3;
  }

  sub_24A508AE4(&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable], v68);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    sub_24A50D6A4(v66, &unk_27EF501C0, &unk_24A636238);
LABEL_32:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v49 = sub_24A62E314();
    sub_24A506EB8(v49, qword_27EF5C118);
    v50 = v1;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF44();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v50;
      *v8 = v50;
      v51 = v50;
      v10 = "🧭 FMR1NIContxt%@: Findable does not conform to FMNIFindable protocol.";
LABEL_36:
      _os_log_impl(&dword_24A503000, v5, v6, v10, v7, 0xCu);
      sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

LABEL_37:

    return 0;
  }

  sub_24A508CA0(v66, v71);
  LOWORD(v68[0]) = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
  v11 = sub_24A565B6C(v68, v71, 2);
  if (!v11)
  {
    sub_24A508C54(v71);
    goto LABEL_32;
  }

  v12 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration;
  v13 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration];
  *&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration] = v11;
  v54 = v11;

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24A62E314();
  sub_24A506EB8(v14, qword_27EF5C118);
  v15 = v1;
  v16 = sub_24A62E2F4();
  v17 = sub_24A62EF64();

  v55 = v2;
  v56 = v1;
  v63 = v15;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v68[0] = v64;
    *v18 = 138412802;
    *(v18 + 4) = v15;
    *v19 = v15;
    *(v18 + 12) = 2080;
    *&v66[0] = *&v15[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
    v20 = *&v66[0];
    v21 = v15;
    sub_24A508FA4(&qword_27EF501D8, &qword_24A636248);
    v22 = sub_24A62EC44();
    v24 = sub_24A509BA8(v22, v23, v68);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = *&v1[v12];
    v26 = [v25 description];
    v27 = sub_24A62EC14();
    v29 = v28;

    v30 = sub_24A509BA8(v27, v29, v68);
    v15 = v63;

    *(v18 + 24) = v30;
    _os_log_impl(&dword_24A503000, v16, v17, "🧭 FMR1NIContxt%@: starting niSession %s with configuration: %s", v18, 0x20u);
    sub_24A50D6A4(v19, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v64, -1, -1);
    MEMORY[0x24C21BBE0](v18, -1, -1);
  }

  v31 = *&v15[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
  if (v31)
  {
    [v31 runWithConfiguration_];
  }

  v32 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v33 = *&v15[v32];
  if (v33 >> 62)
  {
    if (v33 < 0)
    {
      v53 = *&v15[v32];
    }

    v34 = sub_24A62F464();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState;
  v59 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState;

  if (v34)
  {
    v35 = 0;
    v61 = v33 & 0xFFFFFFFFFFFFFF8;
    v62 = v33 & 0xC000000000000001;
    v57 = v33;
    v60 = v34;
    do
    {
      if (v62)
      {
        v36 = MEMORY[0x24C21ACB0](v35, v33);
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
        if (v35 >= *(v61 + 16))
        {
          __break(1u);
LABEL_40:
          swift_once();
LABEL_3:
          v3 = sub_24A62E314();
          sub_24A506EB8(v3, qword_27EF5C118);
          v4 = v1;
          v5 = sub_24A62E2F4();
          v6 = sub_24A62EF64();

          if (os_log_type_enabled(v5, v6))
          {
            v7 = swift_slowAlloc();
            v8 = swift_slowAlloc();
            *v7 = 138412290;
            *(v7 + 4) = v4;
            *v8 = v4;
            v9 = v4;
            v10 = "🧭 FMR1NIContxt%@: not starting niSession: already started)";
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        v36 = *(v33 + 8 * v35 + 32);
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_28;
        }
      }

      v65 = v36;
      v38 = &v36[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = *(v38 + 1);
        ObjectType = swift_getObjectType();
        v41 = v63[v59];
        v69 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v70 = &off_285DA58A0;
        v68[0] = v63;
        v1 = *(v39 + 32);
        v42 = v63;
        v43 = ObjectType;
        v33 = v57;
        (v1)(v41, v68, v43, v39);
        swift_unknownObjectRelease();
        sub_24A508C54(v68);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v44 = *(v38 + 1);
        v45 = swift_getObjectType();
        v46 = v63[v58];
        v69 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v70 = &off_285DA58A0;
        v68[0] = v63;
        v1 = (v44 + 48);
        v47 = *(v44 + 48);
        v48 = v63;
        v47(v46, v68, v45, v44);
        swift_unknownObjectRelease();

        sub_24A508C54(v68);
      }

      else
      {
      }

      ++v35;
    }

    while (v37 != v60);
  }

  sub_24A508C54(v71);
  v56[v55] = 1;
  return 0;
}

uint64_t sub_24A55FD50()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity;
  if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] == 5)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v2 = sub_24A62E314();
    sub_24A506EB8(v2, qword_27EF5C118);
    v3 = v0;
    v4 = sub_24A62E2F4();
    v5 = sub_24A62EF64();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    v9 = "🧭 FMR1NIContxt%@: not starting niSession with low preferred update rate: already started)";
LABEL_19:
    _os_log_impl(&dword_24A503000, v4, v5, v9, v6, 0xCu);
    sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
LABEL_20:

    return 0;
  }

  sub_24A508AE4(&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable], v35);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_24A50D6A4(v33, &unk_27EF501C0, &unk_24A636238);
LABEL_15:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v26 = sub_24A62E314();
    sub_24A506EB8(v26, qword_27EF5C118);
    v27 = v0;
    v4 = sub_24A62E2F4();
    v5 = sub_24A62EF44();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v27;
    *v7 = v27;
    v28 = v27;
    v9 = "🧭 FMR1NIContxt%@: Findable does not conform to FMNIFindable protocol.";
    goto LABEL_19;
  }

  sub_24A508CA0(v33, v36);
  LOWORD(v35[0]) = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
  v10 = sub_24A565B6C(v35, v36, 3);
  if (!v10)
  {
    sub_24A508C54(v36);
    goto LABEL_15;
  }

  v11 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration];
  *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration] = v10;
  v12 = v10;

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v13 = sub_24A62E314();
  sub_24A506EB8(v13, qword_27EF5C118);
  v14 = v12;
  v32 = v0;
  v15 = v0;
  v16 = sub_24A62E2F4();
  v17 = sub_24A62EF64();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v18 = 138412546;
    *(v18 + 4) = v15;
    *v30 = v15;
    *(v18 + 12) = 2080;
    v19 = v14;
    v20 = v15;
    v21 = [v19 description];
    v22 = sub_24A62EC14();
    v24 = v23;

    v25 = sub_24A509BA8(v22, v24, v35);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_24A503000, v16, v17, "🧭 FMR1NIContxt%@: starting niSession (low update rate) with configuration: %s", v18, 0x16u);
    sub_24A50D6A4(v30, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v30, -1, -1);
    sub_24A508C54(v31);
    MEMORY[0x24C21BBE0](v31, -1, -1);
    MEMORY[0x24C21BBE0](v18, -1, -1);
  }

  [*&v15[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] runWithConfiguration_];
  sub_24A508C54(v36);
  v32[v1] = 5;
  return 0;
}

uint64_t sub_24A560248()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity;
  if ((v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] | 4) == 5)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v0;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMR1NIContxt%@: stopping niSession", v7, 0xCu);
      sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

    v10 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession;
    [*&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] invalidate];
    v11 = *&v4[v10];
    *&v4[v10] = 0;

    v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState] = 0;
    v1[v2] = 2;
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v12 = sub_24A62E314();
    sub_24A506EB8(v12, qword_27EF5C118);
    v13 = v0;
    v14 = sub_24A62E2F4();
    v15 = sub_24A62EF64();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_24A503000, v14, v15, "🧭 FMR1NIContxt%@: not stopping niSession: not running", v16, 0xCu);
      sub_24A50D6A4(v17, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v17, -1, -1);
      MEMORY[0x24C21BBE0](v16, -1, -1);
    }
  }

  return 0;
}

id sub_24A5604F0()
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C118);
  v2 = v0;
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMR1NIContxt%@: pausing NISession", v5, 0xCu);
    sub_24A50D6A4(v6, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  result = [*&v2[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] pause];
  v2[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState] = 1;
  v2[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] = 2;
  return result;
}

void sub_24A560664()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    v3 = sub_24A62F464();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      goto LABEL_15;
    }

    if ((v2 & 0xC000000000000001) == 0)
    {
      if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v2 + 8 * v4 + 32);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_86;
    }

    v6 = MEMORY[0x24C21ACB0](v4, v2);
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

LABEL_8:
    v8 = v6[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_wantsSession];

    ++v4;
    if (v8 == 1)
    {
      v4 = v7;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        goto LABEL_97;
      }
    }
  }

  __break(1u);
LABEL_15:

  v10 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState;
  if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState] != 2 && (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_skipWaitingForPrewarm] & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v36 = sub_24A62E314();
    sub_24A506EB8(v36, qword_27EF5C118);
    v37 = v0;
    v38 = v0;
    v39 = sub_24A62E2F4();
    v40 = sub_24A62EF64();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v93[0] = v43;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v42 = v38;
      *(v41 + 12) = 2080;
      LOBYTE(v92[0]) = v37[v10];
      v44 = v38;
      v45 = sub_24A62EC44();
      v47 = sub_24A509BA8(v45, v46, v93);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_24A503000, v39, v40, "🧭 FMR1NIContxt%@: waiting to be ready: itemLocalizerState: %s", v41, 0x16u);
      sub_24A50D6A4(v42, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v42, -1, -1);
      sub_24A508C54(v43);
      MEMORY[0x24C21BBE0](v43, -1, -1);
      MEMORY[0x24C21BBE0](v41, -1, -1);
    }

    if (v5 || v38[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] != 1)
    {
      return;
    }

    v48 = v38;
    v49 = sub_24A62E2F4();
    v50 = sub_24A62EF64();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&dword_24A503000, v49, v50, "🧭 FMR1NIContxt%@: asked to stop everything now", v51, 0xCu);
      sub_24A50D6A4(v52, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v52, -1, -1);
      MEMORY[0x24C21BBE0](v51, -1, -1);
    }

    goto LABEL_62;
  }

  v11 = v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState];
  v12 = v11 > 4;
  v13 = (1 << v11) & 0x13;
  v14 = v12 || v13 == 0;
  if (!v14 || (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_skipWaitingForPrewarm] & 1) != 0)
  {
    if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_applicationIsInBackground] == 1)
    {
      if (qword_27EF4E9A0 != -1)
      {
LABEL_97:
        swift_once();
      }

      v15 = sub_24A62E314();
      sub_24A506EB8(v15, qword_27EF5C118);
      v16 = v0;
      v17 = sub_24A62E2F4();
      v18 = sub_24A62EF64();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMR1NIContxt%@: application is in background", v19, 0xCu);
        sub_24A50D6A4(v20, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v20, -1, -1);
        MEMORY[0x24C21BBE0](v19, -1, -1);
      }

      v22 = *&v16[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
      v23 = (v22 >> 13) & 3;
      v24 = BYTE1(v22);
      v25 = (v22 >> 8) & 0x9F;
      if ((v22 & 0x80000000) != 0)
      {
        v26 = (v22 >> 8) & 0x1F;
      }

      else
      {
        v26 = *&v16[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
      }

      if (v23 == 1)
      {
        v26 = v25;
      }

      if (!v23)
      {
        v26 = v24;
      }

      if (v26 == 2)
      {
        sub_24A5604F0();
      }

      return;
    }

    v27 = v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity];
    if (v5 >= 1)
    {
      if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] > 1u)
      {
        if (v27 != 5 && v27 != 2)
        {
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v84 = sub_24A62E314();
          sub_24A506EB8(v84, qword_27EF5C118);
          v85 = v0;
          v30 = sub_24A62E2F4();
          v31 = sub_24A62EF64();

          if (!os_log_type_enabled(v30, v31))
          {
            goto LABEL_92;
          }

          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          *(v32 + 4) = v85;
          *v33 = v85;
          v86 = v85;
          v35 = "🧭 FMR1NIContxt%@: asked to start localizer (but waiting to be stopped first)";
LABEL_91:
          _os_log_impl(&dword_24A503000, v30, v31, v35, v32, 0xCu);
          sub_24A50D6A4(v33, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v33, -1, -1);
          MEMORY[0x24C21BBE0](v32, -1, -1);
          goto LABEL_92;
        }
      }

      else if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity])
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v28 = sub_24A62E314();
        sub_24A506EB8(v28, qword_27EF5C118);
        v29 = v0;
        v30 = sub_24A62E2F4();
        v31 = sub_24A62EF64();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          *(v32 + 4) = v29;
          *v33 = v29;
          v34 = v29;
          v35 = "🧭 FMR1NIContxt%@: asked to start localizer (but already is)";
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v66 = sub_24A62E314();
      sub_24A506EB8(v66, qword_27EF5C118);
      v67 = v0;
      v68 = sub_24A62E2F4();
      v69 = sub_24A62EF64();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138412290;
        *(v70 + 4) = v67;
        *v71 = v67;
        v72 = v67;
        _os_log_impl(&dword_24A503000, v68, v69, "🧭 FMR1NIContxt%@: asked to start localizer now", v70, 0xCu);
        sub_24A50D6A4(v71, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v71, -1, -1);
        MEMORY[0x24C21BBE0](v70, -1, -1);
      }

      sub_24A55F608();
LABEL_73:

      return;
    }

    if (v27 != 1)
    {
      return;
    }

    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v58 = sub_24A62E314();
    sub_24A506EB8(v58, qword_27EF5C118);
    v59 = v0;
    v60 = sub_24A62E2F4();
    v61 = sub_24A62EF64();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      *(v62 + 4) = v59;
      *v63 = v59;
      v64 = v59;
      _os_log_impl(&dword_24A503000, v60, v61, "🧭 FMR1NIContxt%@: asked to stop everything now", v62, 0xCu);
      sub_24A50D6A4(v63, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v63, -1, -1);
      MEMORY[0x24C21BBE0](v62, -1, -1);
    }

LABEL_62:
    sub_24A560248();
    goto LABEL_73;
  }

  v54 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_hasCalledConfigure;
  if ((v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_hasCalledConfigure] & 1) == 0)
  {
    sub_24A508AE4(&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable], v92);
    sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
    sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v91 = 0;
      memset(v90, 0, sizeof(v90));
      sub_24A50D6A4(v90, &unk_27EF501C0, &unk_24A636238);
LABEL_87:
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v87 = sub_24A62E314();
      sub_24A506EB8(v87, qword_27EF5C118);
      v88 = v0;
      v30 = sub_24A62E2F4();
      v31 = sub_24A62EF44();

      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_92;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v88;
      *v33 = v88;
      v89 = v88;
      v35 = "🧭 FMR1NIContxt%@: Findable does not conform to FMNIFindable protocol.";
      goto LABEL_91;
    }

    sub_24A508CA0(v90, v93);
    v92[0] = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
    v73 = sub_24A565B6C(v92, v93, 2);
    if (v73)
    {
      v74 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration];
      *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration] = v73;
      v75 = v73;

      v0[v54] = 1;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v76 = sub_24A62E314();
      sub_24A506EB8(v76, qword_27EF5C118);
      v77 = v0;
      v78 = sub_24A62E2F4();
      v79 = sub_24A62EF64();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v80 = 138412290;
        *(v80 + 4) = v77;
        *v81 = v77;
        v82 = v77;
        _os_log_impl(&dword_24A503000, v78, v79, "🧭 FMR1NIContxt%@: completed configuring", v80, 0xCu);
        sub_24A50D6A4(v81, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v81, -1, -1);
        MEMORY[0x24C21BBE0](v80, -1, -1);
        v83 = v75;
      }

      else
      {
        v83 = v78;
        v78 = v75;
      }

      sub_24A508C54(v93);
      return;
    }

LABEL_86:
    sub_24A508C54(v93);
    goto LABEL_87;
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v55 = sub_24A62E314();
  sub_24A506EB8(v55, qword_27EF5C118);
  v56 = v0;
  v30 = sub_24A62E2F4();
  v31 = sub_24A62EF64();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v56;
    *v33 = v56;
    v57 = v56;
    v35 = "🧭 FMR1NIContxt%@: waiting to be findable";
    goto LABEL_91;
  }

LABEL_92:
}

void sub_24A5613AC(void *a1)
{
  v3 = sub_24A62E1A4();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A62E314();
  sub_24A506EB8(v7, qword_27EF5C118);
  v8 = v1;
  v9 = a1;
  v10 = sub_24A62E2F4();
  v11 = sub_24A62EF34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    *(v12 + 4) = v8;
    *v13 = v8;
    *(v12 + 12) = 2112;
    v14 = v8;
    v15 = [v9 timestamp];
    sub_24A62E174();

    [v9 trueHeading];
    v17 = v16;
    [v9 magneticHeading];
    v19 = v18;
    [v9 0x1FB55B688];
    v21 = v20;
    v22 = objc_allocWithZone(MEMORY[0x277CD8A40]);
    v23 = sub_24A62E154();
    v24 = [v22 initWithTimestamp:v23 trueHeading:v17 magneticHeading:v19 headingAccuracy:v21];

    v25 = v38;
    (*(v38 + 8))(v6, v39);
    *(v12 + 14) = v24;
    v13[1] = v24;
    _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMR1NIContxt%@: Updating local device heading: %@", v12, 0x16u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v13, -1, -1);
    MEMORY[0x24C21BBE0](v12, -1, -1);
  }

  else
  {

    v25 = v38;
  }

  v26 = *&v8[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
  if (v26)
  {
    v27 = [v26 findingNotifier];
    v28 = [v9 timestamp];
    sub_24A62E174();

    [v9 trueHeading];
    v30 = v29;
    [v9 magneticHeading];
    v32 = v31;
    [v9 headingAccuracy];
    v34 = v33;
    v35 = objc_allocWithZone(MEMORY[0x277CD8A40]);
    v36 = sub_24A62E154();
    v37 = [v35 initWithTimestamp:v36 trueHeading:v30 magneticHeading:v32 headingAccuracy:v34];

    (*(v25 + 8))(v6, v39);
    [v27 notifyUpdatedHeadingForLocalDevice_];
  }
}

uint64_t sub_24A561788(uint64_t a1, void *a2)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C118);
  sub_24A508AE4(a1, v35);
  v6 = v2;
  v7 = a2;
  v8 = sub_24A62E2F4();
  v9 = sub_24A62EF34();

  if (os_log_type_enabled(v8, v9))
  {
    v31 = a1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34[0] = v30;
    *v10 = 138412802;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2080;
    v13 = v36;
    v12 = v37;
    sub_24A50A204(v35, v36);
    log = v8;
    v14 = *(v12 + 8);
    v15 = v6;
    v16 = v14(v13, v12);
    v18 = v17;
    sub_24A508C54(v35);
    v19 = sub_24A509BA8(v16, v18, v34);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2112;
    v20 = sub_24A608A14();
    *(v10 + 24) = v20;
    v11[1] = v20;
    _os_log_impl(&dword_24A503000, log, v9, "🧭 FMR1NIContxt%@: Updating findable location findable: %s, location: %@", v10, 0x20u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v11, -1, -1);
    sub_24A508C54(v30);
    MEMORY[0x24C21BBE0](v30, -1, -1);
    v21 = v10;
    a1 = v31;
    MEMORY[0x24C21BBE0](v21, -1, -1);
  }

  else
  {

    sub_24A508C54(v35);
  }

  sub_24A508AE4(a1, v34);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if (swift_dynamicCast())
  {
    sub_24A508CA0(v32, v35);
    v22 = *&v6[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
    if (v22)
    {
      v23 = [v22 findingNotifier];
      v24 = sub_24A608A14();
      v25 = v36;
      v26 = v37;
      sub_24A50A204(v35, v36);
      v27 = (*(v26 + 16))(v25, v26);
      [v23 notifyUpdatedLocation:v24 forNearbyObjectWithToken:v27];
    }

    return sub_24A508C54(v35);
  }

  else
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    return sub_24A50D6A4(v32, &unk_27EF501C0, &unk_24A636238);
  }
}

uint64_t sub_24A561B7C(uint64_t a1, uint64_t a2)
{
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v2;
    v2 = sub_24A62E2F4();
    v5 = sub_24A62EF34();

    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v4;
      *v7 = v4;
      v8 = v4;
      _os_log_impl(&dword_24A503000, v2, v5, "🧭 FMR1NIContxt%@: didUpdate ARFrame", v6, 0xCu);
      sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    v9 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v10 = *(&v4->isa + v9);
    v11 = v10 >> 62 ? sub_24A62F464() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v11)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C21ACB0](i, v10);
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v16 = &v13[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v18 = *(v16 + 1);
        ObjectType = swift_getObjectType();
        (*(v18 + 72))(a1, a2, ObjectType, v18);
        swift_unknownObjectRelease();
      }

      if (v15 == v11)
      {
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }
}

id sub_24A561E64(void *a1)
{
  v1 = a1;
  sub_24A54C688();

  v2 = sub_24A62EBE4();

  return v2;
}

id sub_24A561EF0(const char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A62E314();
  sub_24A506EB8(v7, qword_27EF5C118);
  v8 = v3;
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v13 = [v8 description];
    v14 = sub_24A62EC14();
    v23 = a2;
    v15 = a3;
    v16 = a1;
    v18 = v17;

    v19 = sub_24A509BA8(v14, v18, &v24);

    *(v11 + 4) = v19;
    v20 = v16;
    a3 = v15;
    a2 = v23;
    _os_log_impl(&dword_24A503000, v9, v10, v20, v11, 0xCu);
    sub_24A508C54(v12);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  v21 = a3(a2);
  v25.receiver = v8;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, sel_dealloc);
}

uint64_t type metadata accessor for FMNearbyInteractionManagerSubscription()
{
  result = qword_27EF50158;
  if (!qword_27EF50158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A5621CC(char a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        *(v6 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState) = 2;
        *(v6 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState) = 1;
        v8 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
        swift_beginAccess();
        v9 = *&v7[v8];
        v59 = v5;
        v61 = v2;
        if (v9 >> 62)
        {
          v10 = sub_24A62F464();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v10)
        {
          v5 = 0;
          do
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x24C21ACB0](v5, v9);
              v2 = (v5 + 1);
              if (__OFADD__(v5, 1))
              {
LABEL_19:
                __break(1u);
                goto LABEL_20;
              }
            }

            else
            {
              if (v5 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_44:
                swift_once();
LABEL_30:
                v27 = sub_24A62E314();
                sub_24A506EB8(v27, qword_27EF5C118);
                v28 = v2;
                v29 = sub_24A62E2F4();
                v30 = sub_24A62EF64();

                if (os_log_type_enabled(v29, v30))
                {
                  v31 = swift_slowAlloc();
                  v32 = swift_slowAlloc();
                  *v31 = 138412290;
                  *(v31 + 4) = v28;
                  *v32 = v28;
                  v33 = v28;
                  _os_log_impl(&dword_24A503000, v29, v30, "🧭 FMR1NISubscr%@: asking to start localizer", v31, 0xCu);
                  sub_24A50D6A4(v32, &qword_27EF4FED0, &unk_24A635E00);
                  MEMORY[0x24C21BBE0](v32, -1, -1);
                  MEMORY[0x24C21BBE0](v31, -1, -1);
                }

                goto LABEL_42;
              }

              v11 = *(v9 + 8 * v5 + 32);
              v2 = (v5 + 1);
              if (__OFADD__(v5, 1))
              {
                goto LABEL_19;
              }
            }

            oslog = v11;
            v12 = v11 + OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v13 = *(v12 + 1);
              ObjectType = swift_getObjectType();
              v71 = type metadata accessor for FMNearbyInteractionLocalizerContext();
              v72 = &off_285DA58A0;
              v68 = v7;
              v14 = *(v13 + 32);
              v15 = v7;
              v14(2, &v68, ObjectType, v13);
              swift_unknownObjectRelease();
              sub_24A508C54(&v68);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v16 = *(v12 + 1);
              v17 = swift_getObjectType();
              v71 = type metadata accessor for FMNearbyInteractionLocalizerContext();
              v72 = &off_285DA58A0;
              v68 = v7;
              v18 = *(v16 + 48);
              v19 = v7;
              v18(1, &v68, v17, v16);
              swift_unknownObjectRelease();

              sub_24A508C54(&v68);
            }

            else
            {
            }

            ++v5;
          }

          while (v2 != v10);
        }

        v5 = v59;
        v2 = v61;
      }
    }

    v26 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession;
    if (*(v5 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession))
    {
      if (qword_27EF4E9A0 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_30;
    }

    v34 = [objc_allocWithZone(MEMORY[0x277CD8A68]) init];
    v35 = *(v5 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession);
    if (v35)
    {
      v36 = v35;
      [v34 setARSession:v36];
      [v36 setDelegate_];
    }

    v60 = v5;
    [v34 setDelegate:v5];
    v68 = v34;
    v37 = sub_24A62F784();
    v39 = v38;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v40 = sub_24A62E314();
    sub_24A506EB8(v40, qword_27EF5C118);
    v62 = v2;
    v41 = v2;
    v42 = sub_24A62E2F4();
    v43 = sub_24A62EF64();

    if (os_log_type_enabled(v42, v43))
    {
      oslogb = v34;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v75 = v64;
      *v44 = 138412546;
      *(v44 + 4) = v41;
      *v45 = v41;
      *(v44 + 12) = 2080;
      v46 = v41;
      v47 = sub_24A516B88(9, v37, v39);
      v49 = v48;
      v51 = v50;
      v53 = v52;

      v73 = 7876668;
      v74 = 0xE300000000000000;
      v68 = v47;
      v69 = v49;
      v70 = v51;
      v71 = v53;
      sub_24A55B6E8();
      sub_24A62ECA4();

      v68 = v73;
      v69 = v74;

      MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

      v54 = sub_24A509BA8(v68, v69, &v75);

      *(v44 + 14) = v54;
      _os_log_impl(&dword_24A503000, v42, v43, "🧭 FMR1NISubscr%@: asking to start localizer, created item localizer <%s> and will re-configure", v44, 0x16u);
      sub_24A50D6A4(v45, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v45, -1, -1);
      sub_24A508C54(v64);
      MEMORY[0x24C21BBE0](v64, -1, -1);
      v55 = v44;
      v34 = oslogb;
      MEMORY[0x24C21BBE0](v55, -1, -1);
    }

    else
    {
    }

    v5 = v60;
    v2 = v62;
    v56 = *&v60[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler];
    if (v56)
    {
      v57 = *&v60[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler + 8];

      v56(v58);
      sub_24A50D844(v56);
    }

    v29 = *&v60[v26];
    *&v60[v26] = v34;
LABEL_42:

    *(v2 + OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_wantsSession) = 1;
    sub_24A560664();
  }

  else
  {
LABEL_20:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v20 = sub_24A62E314();
    sub_24A506EB8(v20, qword_27EF5C118);
    v21 = v2;
    osloga = sub_24A62E2F4();
    v22 = sub_24A62EF64();

    if (os_log_type_enabled(osloga, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v21;
      *v24 = v21;
      v25 = v21;
      _os_log_impl(&dword_24A503000, osloga, v22, "🧭 FMR1NISubscr%@: asking to start localizer but no context", v23, 0xCu);
      sub_24A50D6A4(v24, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v24, -1, -1);
      MEMORY[0x24C21BBE0](v23, -1, -1);
    }
  }
}

uint64_t sub_24A5629C4()
{
  result = sub_24A62E214();
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

id sub_24A562A7C(void *a1)
{
  v33 = a1;
  v32 = sub_24A62F004();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EFD4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_24A62EAD4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *&v1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_contexts] = MEMORY[0x277D84F98];
  v10 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_subscriptions] = MEMORY[0x277D84F90];
  v1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground] = 0;
  *&v1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_itemLocalizersCount] = 0;
  v31 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  sub_24A62EAC4();
  v35 = v10;
  sub_24A569AD8(&unk_27EF4F9E0, MEMORY[0x277D85230]);
  sub_24A508FA4(&unk_27EF50240, &unk_24A634A08);
  sub_24A569B20();
  sub_24A62F254();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v32);
  *&v1[v31] = sub_24A62F044();
  v11 = v33;
  *&v1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession] = v33;
  v12 = type metadata accessor for FMNearbyInteractionManager();
  v34.receiver = v1;
  v34.super_class = v12;
  v13 = v11;
  v14 = objc_msgSendSuper2(&v34, sel_init);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 defaultCenter];
  [v17 addObserver:v16 selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

  v18 = [v15 defaultCenter];
  [v18 addObserver:v16 selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v19 = sub_24A62E314();
  sub_24A506EB8(v19, qword_27EF5C118);
  v20 = v16;
  v21 = sub_24A62E2F4();
  v22 = sub_24A62EF64();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136315138;
    v25 = [v20 description];
    v26 = sub_24A62EC14();
    v28 = v27;

    v29 = sub_24A509BA8(v26, v28, &v35);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_24A503000, v21, v22, "🧭 FMR1NIMgr%s: init (v14)", v23, 0xCu);
    sub_24A508C54(v24);
    MEMORY[0x24C21BBE0](v24, -1, -1);
    MEMORY[0x24C21BBE0](v23, -1, -1);
  }

  return v20;
}

uint64_t sub_24A562FA0(const char *a1, char a2)
{
  if (qword_27EF4E9A0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C118);
  v6 = v2;
  v7 = sub_24A62E2F4();
  v8 = sub_24A62EF64();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_24A503000, v7, v8, a1, v9, 0xCu);
    sub_24A50D6A4(v10, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v10, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  *(v6 + OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground) = a2;
  v2 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_contexts;
  swift_beginAccess();
  v12 = *&v2[v6];
  a1 = (v12 + 64);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = *(*(v12 + 56) + ((v18 << 9) | (8 * v19)));
      v20[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_applicationIsInBackground] = a2;
      v2 = v20;
      sub_24A55E7F4();
      sub_24A560664();

      if (!v15)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *&a1[8 * v18];
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_12;
    }
  }
}

uint64_t sub_24A563234(void *a1, char *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_24A50A204(a1, v9);
  (*(v10 + 16))(v9, v10);
  v11 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_contexts;
  swift_beginAccess();
  v12 = *&a2[v11];
  if (*(v12 + 16))
  {

    v13 = sub_24A515AC8(v8);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      if (a2[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground])
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v16 = sub_24A62E314();
        sub_24A506EB8(v16, qword_27EF5C118);
        v17 = sub_24A62E2F4();
        v18 = sub_24A62EF64();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_24A503000, v17, v18, "FMR1NIMgr: Cannot start discovering while application is in the background. Discovery will start when it's foregrounded", v19, 2u);
          MEMORY[0x24C21BBE0](v19, -1, -1);

          v15 = v17;
        }

        else
        {
        }
      }

      else
      {
        v23 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession;
        if (*(&v15->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession))
        {
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v24 = sub_24A62E314();
          sub_24A506EB8(v24, qword_27EF5C118);
          v25 = a2;
          v26 = sub_24A62E2F4();
          v27 = sub_24A62EF64();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *v28 = 138412290;
            *(v28 + 4) = v25;
            *v29 = v25;
            v30 = v25;
            _os_log_impl(&dword_24A503000, v26, v27, "🧭 FMR1NISubscr%@: asking to start discovering", v28, 0xCu);
            sub_24A50D6A4(v29, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v29, -1, -1);
            MEMORY[0x24C21BBE0](v28, -1, -1);
          }
        }

        else
        {
          v69 = [objc_allocWithZone(MEMORY[0x277CD8A68]) init];
          v31 = *(&v15->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession);
          if (v31)
          {
            v32 = v31;
            [v69 setARSession_];
            [v32 setDelegate_];
          }

          v33 = v69;
          [v69 setDelegate_];
          v70 = v33;
          v68 = sub_24A62F784();
          v35 = v34;
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v36 = sub_24A62E314();
          sub_24A506EB8(v36, qword_27EF5C118);
          v37 = a2;
          v38 = sub_24A62E2F4();
          v39 = sub_24A62EF64();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v66 = v23;
            v41 = v40;
            v42 = v35;
            v43 = swift_slowAlloc();
            v65 = v43;
            v67 = swift_slowAlloc();
            v76 = v67;
            v64 = v41;
            *v41 = 138412546;
            *(v41 + 4) = v37;
            *v43 = v37;
            *(v41 + 12) = 2080;
            v23 = v66;
            v44 = v37;
            v45 = sub_24A516B88(9, v68, v42);
            v68 = v38;
            v46 = v45;
            v48 = v47;
            v63 = v39;
            v50 = v49;
            v52 = v51;

            v74 = 7876668;
            v75 = 0xE300000000000000;
            v70 = v46;
            v71 = v48;
            v72 = v50;
            v73 = v52;
            sub_24A55B6E8();
            sub_24A62ECA4();

            v70 = v74;
            v71 = v75;

            MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

            v53 = sub_24A509BA8(v70, v71, &v76);

            v54 = v64;
            *(v64 + 14) = v53;
            v55 = v68;
            _os_log_impl(&dword_24A503000, v68, v63, "🧭 FMR1NISubscr%@: asking to start discovering, created item localizer <%s> and will re-configure", v54, 0x16u);
            v56 = v65;
            sub_24A50D6A4(v65, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v56, -1, -1);
            v57 = v67;
            sub_24A508C54(v67);
            MEMORY[0x24C21BBE0](v57, -1, -1);
            MEMORY[0x24C21BBE0](v54, -1, -1);
          }

          else
          {
          }

          v58 = *(&v15->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler);
          if (v58)
          {
            v59 = *(&v15[1].isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler);

            v58(v60);
            sub_24A50D844(v58);
          }

          v26 = *(&v15->isa + v23);
          *(&v15->isa + v23) = v69;
        }

        sub_24A55FD50();
      }

      goto LABEL_30;
    }
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v20 = sub_24A62E314();
  sub_24A506EB8(v20, qword_27EF5C118);
  v15 = sub_24A62E2F4();
  v21 = sub_24A62EF64();
  if (os_log_type_enabled(v15, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_24A503000, v15, v21, "FMR1NIMgr: Cannot start discovering without subscribing first.", v22, 2u);
    MEMORY[0x24C21BBE0](v22, -1, -1);
  }

LABEL_30:

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24A563960@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t **a7@<X8>)
{
  v161 = a7;
  v159 = a6;
  v160 = a5;
  LODWORD(v158) = a4;
  v10 = sub_24A62E214();
  v163 = *(v10 - 8);
  v164 = v10;
  v11 = *(v163 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v156 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v150 - v14;
  v16 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession;
  v17 = *&a1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession];
  *&a1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession] = a2;

  v18 = a3[3];
  v19 = a3[4];
  v162 = a3;
  sub_24A50A204(a3, v18);
  v20 = *(v19 + 16);
  v155 = a2;
  v21 = a2;
  v20(v18, v19);
  v22 = v15;
  v23 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_contexts;
  swift_beginAccess();
  v24 = *&a1[v23];
  v25 = *(v24 + 16);
  v157 = v15;
  if (v25)
  {

    v26 = sub_24A515AC8(v15);
    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v26);

      v29 = *&v28[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];

      LOWORD(v166[0]) = v29;
      LOWORD(v165) = v158;
      if ((_s11FMFindingUI21FindingExperienceTypeO2eeoiySbAC_ACtFZ_0(v166, &v165) & 1) == 0)
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v30 = sub_24A62E314();
        sub_24A506EB8(v30, qword_27EF5C118);
        v31 = a1;
        v32 = sub_24A62E2F4();
        v33 = sub_24A62EF64();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412546;
          *(v34 + 4) = v31;
          *v35 = v31;
          *(v34 + 12) = 2048;
          *(v34 + 14) = *(v31 + OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_itemLocalizersCount);
          _os_log_impl(&dword_24A503000, v32, v33, "🧭 FMR1NIMgr%@: Clearing previous item localizer context with mismatched findingType (%ld)", v34, 0x16u);
          sub_24A50D6A4(v35, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v35, -1, -1);
          v36 = v34;
          v22 = v157;
          MEMORY[0x24C21BBE0](v36, -1, -1);
        }

        else
        {

          v32 = v31;
        }

        v37 = *&a1[v23];
        if (*(v37 + 16))
        {
          v38 = *&a1[v23];

          v39 = sub_24A515AC8(v22);
          if (v40)
          {
            v41 = *(*(v37 + 56) + 8 * v39);

            sub_24A55E390();
          }

          else
          {
          }
        }

        v42 = v156;
        (*(v163 + 16))(v156, v22, v164);
        swift_beginAccess();
        sub_24A56AFAC(0, v42);
        swift_endAccess();
      }
    }

    else
    {
    }
  }

  if (!*(*&a1[v23] + 16) || (v43 = *&a1[v23], , sub_24A515AC8(v22), v45 = v44, , (v45 & 1) == 0))
  {
    v71 = v162;
    sub_24A508AE4(v162, v166);
    v72 = (v158 >> 13) & 3;
    v154 = v21;
    if (v72)
    {
      if (v72 == 1)
      {
        v73 = (v158 >> 8) & 0x9F;
      }

      else if ((v158 & 0x8000) != 0)
      {
        v73 = (v158 >> 8) & 0x1F;
      }

      else
      {
        LOBYTE(v73) = v158;
      }
    }

    else
    {
      LOBYTE(v73) = BYTE1(v158);
    }

    v170 = v73;
    LOWORD(v165) = v158;
    v81 = *&a1[v16];
    v82 = objc_allocWithZone(type metadata accessor for FMNearbyInteractionLocalizerContext());
    v83 = v81;
    v84 = sub_24A55CD7C(v166, &v170, &v165, v81);
    swift_beginAccess();
    v85 = v84;
    v86 = *&a1[v23];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v165 = *&a1[v23];
    *&a1[v23] = 0x8000000000000000;
    sub_24A557C80(v85, v22, isUniquelyReferenced_nonNull_native);
    *&a1[v23] = v165;
    swift_endAccess();
    sub_24A508AE4(v71, v166);
    v88 = objc_allocWithZone(type metadata accessor for FMNearbyInteractionManagerSubscription());
    v89 = swift_unknownObjectRetain();
    v90 = sub_24A5696D8(v89, v159, v166);
    swift_unknownObjectRelease();
    sub_24A55EDF0(v90);
    v91 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_subscriptions;
    swift_beginAccess();
    v92 = v90;
    MEMORY[0x24C21A660]();
    if (*((*&a1[v91] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v91] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v148 = *((*&a1[v91] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24A62ED84();
    }

    sub_24A62EDA4();
    swift_endAccess();
    if (a1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground])
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v93 = sub_24A62E314();
      sub_24A506EB8(v93, qword_27EF5C118);
      sub_24A508AE4(v71, v166);
      v94 = a1;
      v95 = sub_24A62E2F4();
      v96 = sub_24A62EF64();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v160 = v98;
        v162 = swift_slowAlloc();
        v165 = v162;
        *v97 = 138412546;
        *(v97 + 4) = v94;
        *v98 = v94;
        *(v97 + 12) = 2080;
        v159 = v95;
        v99 = v92;
        v100 = v167;
        v101 = v168;
        sub_24A50A204(v166, v167);
        LODWORD(v158) = v96;
        v102 = *(v101 + 16);
        v103 = v94;
        v104 = v156;
        v105 = v101;
        v92 = v99;
        v102(v100, v105);
        sub_24A569AD8(&qword_27EF4F660, MEMORY[0x277CC95F0]);
        v106 = v164;
        v107 = sub_24A62F614();
        v109 = v108;
        v110 = *(v163 + 8);
        v110(v104, v106);
        sub_24A508C54(v166);
        v111 = sub_24A509BA8(v107, v109, &v165);

        *(v97 + 14) = v111;
        v112 = v159;
        _os_log_impl(&dword_24A503000, v159, v158, "🧭 FMR1NIMgr%@: setting up for '%s', but in background", v97, 0x16u);
        v113 = v160;
        sub_24A50D6A4(v160, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v113, -1, -1);
        v114 = v162;
        sub_24A508C54(v162);
        MEMORY[0x24C21BBE0](v114, -1, -1);
        MEMORY[0x24C21BBE0](v97, -1, -1);

        result = (v110)(v157, v106);
        goto LABEL_68;
      }
    }

    else
    {
      v116 = [objc_allocWithZone(MEMORY[0x277CD8A68]) init];
      if (v155)
      {
        v117 = v154;
        [v116 setARSession_];
        [v117 setDelegate_];
      }

      [v116 setDelegate_];
      v118 = *&v85[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler];
      if (v118)
      {
        v119 = *&v85[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler + 8];

        v118(v120);
        sub_24A50D844(v118);
      }

      v121 = *&v85[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
      *&v85[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] = v116;
      v95 = v116;

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v122 = sub_24A62E314();
      sub_24A506EB8(v122, qword_27EF5C118);
      sub_24A508AE4(v71, v166);
      v123 = a1;
      v124 = sub_24A62E2F4();
      v125 = sub_24A62EF64();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v158 = v127;
        v159 = swift_slowAlloc();
        v165 = v159;
        *v126 = 138412546;
        *(v126 + 4) = v123;
        *v127 = v123;
        *(v126 + 12) = 2080;
        v160 = v95;
        v129 = v167;
        v128 = v168;
        sub_24A50A204(v166, v167);
        LODWORD(v155) = v125;
        v162 = v92;
        v130 = *(v128 + 16);
        v131 = v123;
        v132 = v156;
        v130(v129, v128);
        sub_24A569AD8(&qword_27EF4F660, MEMORY[0x277CC95F0]);
        v133 = v164;
        v134 = sub_24A62F614();
        v136 = v135;
        v137 = *(v163 + 8);
        v137(v132, v133);
        sub_24A508C54(v166);
        v138 = sub_24A509BA8(v134, v136, &v165);

        *(v126 + 14) = v138;
        _os_log_impl(&dword_24A503000, v124, v155, "🧭 FMR1NIMgr%@: setting up for '%s', created niSession", v126, 0x16u);
        v139 = v158;
        sub_24A50D6A4(v158, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v139, -1, -1);
        v140 = v159;
        sub_24A508C54(v159);
        MEMORY[0x24C21BBE0](v140, -1, -1);
        MEMORY[0x24C21BBE0](v126, -1, -1);

        result = (v137)(v157, v133);
        v92 = v162;
        goto LABEL_68;
      }
    }

    (*(v163 + 8))(v157, v164);
    result = sub_24A508C54(v166);
    goto LABEL_68;
  }

  v46 = v162;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v47 = sub_24A62E314();
  sub_24A506EB8(v47, qword_27EF5C118);
  sub_24A508AE4(v46, v166);
  v48 = a1;
  v49 = sub_24A62E2F4();
  v50 = sub_24A62EF64();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v158 = v48;
    v52 = v51;
    v53 = swift_slowAlloc();
    v152 = v53;
    v153 = swift_slowAlloc();
    v165 = v153;
    *v52 = 138412802;
    *(v52 + 4) = v158;
    *v53 = v158;
    *(v52 + 12) = 2080;
    v151 = v49;
    v55 = v167;
    v54 = v168;
    sub_24A50A204(v166, v167);
    v169 = v50;
    v56 = *(v54 + 16);
    v150 = v158;
    v154 = v21;
    v57 = v156;
    v56(v55, v54);
    sub_24A569AD8(&qword_27EF4F660, MEMORY[0x277CC95F0]);
    v58 = v164;
    v59 = sub_24A62F614();
    v61 = v60;
    v62 = v57;
    v21 = v154;
    (*(v163 + 8))(v62, v58);
    sub_24A508C54(v166);
    v63 = sub_24A509BA8(v59, v61, &v165);

    *(v52 + 14) = v63;
    *(v52 + 22) = 2080;
    if (v150[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground])
    {
      v64 = 0x6B636162206E6928;
    }

    else
    {
      v64 = 0;
    }

    if (v150[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground])
    {
      v65 = 0xEF29646E756F7267;
    }

    else
    {
      v65 = 0xE000000000000000;
    }

    v66 = sub_24A509BA8(v64, v65, &v165);

    *(v52 + 24) = v66;
    v22 = v157;
    v67 = v151;
    _os_log_impl(&dword_24A503000, v151, v169, "🧭 FMR1NIMgr%@: setting up for '%s' but item already known %s", v52, 0x20u);
    v68 = v152;
    sub_24A50D6A4(v152, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v68, -1, -1);
    v69 = v153;
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v69, -1, -1);
    v70 = v52;
    v48 = v158;
    v46 = v162;
    MEMORY[0x24C21BBE0](v70, -1, -1);
  }

  else
  {

    sub_24A508C54(v166);
  }

  v74 = *&a1[v23];
  if (*(v74 + 16))
  {
    v75 = *&a1[v23];

    v76 = sub_24A515AC8(v22);
    if (v77)
    {
      v78 = *(*(v74 + 56) + 8 * v76);
      v79 = v78;
    }

    else
    {
      v78 = 0;
    }

    if (!v155)
    {
      goto LABEL_63;
    }

    goto LABEL_41;
  }

  v78 = 0;
  if (v155)
  {
LABEL_41:
    if (v78)
    {
      [*&v78[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] setARSession_];
      v80 = v78;
    }

    else
    {
      v141 = v21;
      v80 = 0;
    }

    [v21 setDelegate_];
  }

LABEL_63:
  sub_24A508AE4(v46, v166);
  v142 = objc_allocWithZone(type metadata accessor for FMNearbyInteractionManagerSubscription());
  v143 = v78;
  v144 = swift_unknownObjectRetain();
  v145 = sub_24A5696D8(v144, v159, v166);
  swift_unknownObjectRelease();

  if (v78)
  {
    v146 = v143;
    sub_24A55EDF0(v145);
  }

  v147 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_subscriptions;
  swift_beginAccess();
  v92 = v145;
  MEMORY[0x24C21A660]();
  if (*((*&v48[v147] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v48[v147] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v149 = *((*&v48[v147] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A62ED84();
  }

  sub_24A62EDA4();
  swift_endAccess();

  result = (*(v163 + 8))(v22, v164);
LABEL_68:
  *v161 = v92;
  return result;
}

uint64_t sub_24A564938(char *a1, void *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v90 - v10;
  v100 = a2;
  sub_24A508AE4(a2 + OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_findable, v102);
  v12 = v103;
  v13 = v104;
  sub_24A50A204(v102, v103);
  v13[2](v12, v13);
  sub_24A508C54(v102);
  v14 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_contexts;
  swift_beginAccess();
  v15 = *&a1[v14];
  if (*(v15 + 16))
  {
    v16 = *&a1[v14];

    v17 = sub_24A515AC8(v11);
    if (v18)
    {
      v13 = *(*(v15 + 56) + 8 * v17);

      if (sub_24A55F418())
      {
        if (qword_27EF4E9A0 != -1)
        {
          goto LABEL_38;
        }

        while (1)
        {
          v19 = sub_24A62E314();
          sub_24A506EB8(v19, qword_27EF5C118);
          v13 = v13;
          v20 = a1;
          v21 = sub_24A62E2F4();
          v22 = sub_24A62EF64();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            LODWORD(v97) = v22;
            v24 = v23;
            v25 = swift_slowAlloc();
            v96 = v25;
            v98 = swift_slowAlloc();
            v101[0] = v98;
            v95 = v24;
            *v24 = 138412546;
            *(v24 + 4) = v20;
            *v25 = v20;
            *(v24 + 12) = 2080;
            sub_24A508AE4(v13 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v102);
            v26 = v103;
            v27 = v104;
            sub_24A50A204(v102, v103);
            v94 = v21;
            v99 = v4;
            v28 = v13;
            v29 = v27[1];
            v30 = v20;
            v31 = (v29)(v26, v27);
            v13 = v28;
            v4 = v99;
            v32 = v31;
            v34 = v33;
            sub_24A508C54(v102);
            v35 = sub_24A509BA8(v32, v34, v101);

            v36 = v94;
            v37 = v95;
            *(v95 + 14) = v35;
            _os_log_impl(&dword_24A503000, v36, v97, "🧭 FMR1NIMgr%@: unsubscribing, did not tear down, subscriptions still exist '%s'", v37, 0x16u);
            v38 = v96;
            sub_24A50D6A4(v96, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v38, -1, -1);
            v39 = v98;
            sub_24A508C54(v98);
            MEMORY[0x24C21BBE0](v39, -1, -1);
            MEMORY[0x24C21BBE0](v37, -1, -1);
          }

          else
          {
          }

          sub_24A55F21C(v100);
LABEL_27:

          (*(v5 + 8))(v11, v4);
          v5 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_subscriptions;
          swift_beginAccess();
          v85 = v100;
          v41 = sub_24A569868(&a1[v5]);

          v86 = *&a1[v5];
          if (v86 >> 62)
          {
            if (v86 < 0)
            {
              v89 = *&a1[v5];
            }

            v43 = sub_24A62F464();
            if (v43 >= v41)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v43 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v43 >= v41)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_38:
          swift_once();
        }
      }

LABEL_11:
      if ((*(v13 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity) | 4) == 5)
      {
        v96 = v9;
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v44 = sub_24A62E314();
        sub_24A506EB8(v44, qword_27EF5C118);
        v45 = v13;
        v46 = a1;
        v47 = sub_24A62E2F4();
        v48 = sub_24A62EF64();
        v98 = v45;

        v49 = v46;
        LODWORD(v95) = v48;
        if (os_log_type_enabled(v47, v48))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v93 = v51;
          v94 = swift_slowAlloc();
          v101[0] = v94;
          v92 = v50;
          *v50 = 138412546;
          *(v50 + 4) = v49;
          v51->isa = v49;
          *(v50 + 12) = 2080;
          sub_24A508AE4(v98 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v102);
          v99 = v4;
          v97 = v13;
          v53 = v103;
          v52 = v104;
          sub_24A50A204(v102, v103);
          v54 = v47;
          v91 = v52[1];
          v55 = v49;
          v56 = v53;
          v4 = v99;
          v57 = (v91)(v56, v52);
          v59 = v58;
          sub_24A508C54(v102);
          v60 = sub_24A509BA8(v57, v59, v101);
          v13 = v97;

          v61 = v92;
          *(v92 + 14) = v60;
          _os_log_impl(&dword_24A503000, v54, v95, "🧭 FMR1NIMgr%@: tore down '%s' (stopping first)", v61, 0x16u);
          v62 = v93;
          sub_24A50D6A4(v93, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v62, -1, -1);
          v63 = v94;
          sub_24A508C54(v94);
          MEMORY[0x24C21BBE0](v63, -1, -1);
          MEMORY[0x24C21BBE0](v61, -1, -1);
        }

        else
        {
        }

        v9 = v96;
        sub_24A55E390();
      }

      else
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v64 = sub_24A62E314();
        sub_24A506EB8(v64, qword_27EF5C118);
        v97 = v13;
        v65 = v13;
        v66 = a1;
        v67 = sub_24A62E2F4();
        v68 = sub_24A62EF64();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          LODWORD(v96) = v68;
          v70 = v69;
          v71 = swift_slowAlloc();
          v99 = v65;
          v72 = v71;
          v95 = v71;
          v98 = swift_slowAlloc();
          v101[0] = v98;
          v94 = v70;
          *v70 = 138412546;
          *(v70 + 4) = v66;
          *v72 = v66;
          *(v70 + 12) = 2080;
          sub_24A508AE4(v99 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v102);
          v73 = v103;
          v74 = v104;
          sub_24A50A204(v102, v103);
          v93 = v67;
          v99 = v4;
          v92 = v74[1];
          v75 = v66;
          v76 = (v92)(v73, v74);
          v4 = v99;
          v77 = v76;
          v79 = v78;
          sub_24A508C54(v102);
          v80 = sub_24A509BA8(v77, v79, v101);

          v81 = v93;
          v82 = v94;
          *(v94 + 14) = v80;
          _os_log_impl(&dword_24A503000, v81, v96, "🧭 FMR1NIMgr%@: unsubscribing, tore down '%s'", v82, 0x16u);
          v83 = v95;
          sub_24A50D6A4(v95, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v83, -1, -1);
          v84 = v98;
          sub_24A508C54(v98);
          MEMORY[0x24C21BBE0](v84, -1, -1);
          MEMORY[0x24C21BBE0](v82, -1, -1);
        }

        else
        {
        }

        v13 = v97;
      }

      sub_24A55E390();
      (*(v5 + 16))(v9, v11, v4);
      swift_beginAccess();
      sub_24A56AFAC(0, v9);
      swift_endAccess();
      goto LABEL_27;
    }
  }

  (*(v5 + 8))(v11, v4);
  v5 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_subscriptions;
  swift_beginAccess();
  v40 = v100;
  v41 = sub_24A569868(&a1[v5]);

  v42 = *&a1[v5];
  if (v42 >> 62)
  {
    if (v42 < 0)
    {
      v88 = *&a1[v5];
    }

    v43 = sub_24A62F464();
    if (v43 < v41)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43 < v41)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }
  }

LABEL_29:
  sub_24A575AC4(v41, v43);
  return swift_endAccess();
}

id sub_24A5652EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNearbyInteractionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24A5653C4()
{
  result = qword_27EF501A0;
  if (!qword_27EF501A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF501A0);
  }

  return result;
}

uint64_t sub_24A565418(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_24A565478(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_24A565618(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_24A569684(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x24C21BBE0](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_24A565618(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v31 = a1;
  v6 = sub_24A62E2B4();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v28 - v12;
  v34 = *(a3 + 16);
  if (v34)
  {
    v30 = 0;
    v13 = 0;
    v39 = *(v11 + 16);
    v40 = v11 + 16;
    v33 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v11 + 72);
    v37 = a4 + 56;
    v38 = v14;
    v15 = (v11 + 8);
    v36 = a4;
    while (1)
    {
      v35 = v13;
      v39(v41, v33 + v38 * v13, v6);
      v18 = *(a4 + 40);
      sub_24A569AD8(&qword_27EF501F8, MEMORY[0x277CD89F8]);
      v19 = sub_24A62EBB4();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
      {
        break;
      }

      v32 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v24 = ~v20;
      while (1)
      {
        v39(v10, *(v36 + 48) + v21 * v38, v6);
        sub_24A569AD8(&qword_27EF50200, MEMORY[0x277CD89F8]);
        v25 = sub_24A62EBD4();
        v16 = *v15;
        (*v15)(v10, v6);
        if (v25)
        {
          break;
        }

        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
        {
          a4 = v36;
          goto LABEL_4;
        }
      }

      result = (v16)(v41, v6);
      v27 = v31[v22];
      v31[v22] = v27 | v23;
      if ((v27 & v23) != 0)
      {
        a4 = v36;
LABEL_5:
        v17 = v35;
        goto LABEL_6;
      }

      v17 = v35;
      a4 = v36;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        return result;
      }

      ++v30;
LABEL_6:
      v13 = v17 + 1;
      if (v13 == v34)
      {
        goto LABEL_17;
      }
    }

    v16 = *v15;
LABEL_4:
    v16(v41, v6);
    goto LABEL_5;
  }

  v30 = 0;
LABEL_17:

  return sub_24A619570(v31, v29, v30, a4);
}

unint64_t sub_24A565964(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_24A62F464();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C21ACB0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = sub_24A62E1E4();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_24A565A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  sub_24A50D7EC(0, &qword_27EF501D0, 0x277CD8A60);
  v6 = sub_24A62ED54();

  v12[0] = 0;
  v7 = [v3 initWithDiscoveryToken:a1 regions:v6 preferredUpdateRate:a3 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_24A62E084();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_24A565B6C(__int16 *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A635FE0;
  v7 = objc_allocWithZone(MEMORY[0x277CD8A60]);
  v8 = sub_24A62EBE4();
  v9 = [v7 initWithName:v8 devicePresencePreset:1];

  *(v6 + 32) = v9;
  v10 = objc_allocWithZone(MEMORY[0x277CD8A60]);
  v11 = sub_24A62EBE4();
  v12 = [v10 initWithName:v11 devicePresencePreset:4];

  *(v6 + 40) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CD8A60]);
  v14 = sub_24A62EBE4();
  v15 = [v13 initWithName:v14 devicePresencePreset:5];

  *(v6 + 48) = v15;
  v16 = (v5 >> 13) & 3;
  if (!v16)
  {

    v23 = a2[3];
    v24 = a2[4];
    sub_24A50A204(a2, v23);
    v25 = (*(v24 + 16))(v23, v24);
    v26 = [objc_allocWithZone(MEMORY[0x277CD8A38]) initWithDiscoveryToken:v25 requestedUpdateRate:a3 requestedMeasaurementQuality:1];
LABEL_8:
    v33 = v26;

    v34 = objc_opt_self();
    v21 = v33;
    v35 = [objc_msgSend(v34 deviceCapabilities)];
    swift_unknownObjectRelease();
    [v21 setCameraAssistanceEnabled_];
    goto LABEL_9;
  }

  if (v16 == 1)
  {
    v17 = a2[3];
    v18 = a2[4];
    sub_24A50A204(a2, v17);
    v19 = (*(v18 + 16))(v17, v18);
    v20 = [objc_allocWithZone(MEMORY[0x277CD8A38]) initWithDiscoveryToken:v19 requestedUpdateRate:a3 requestedMeasaurementQuality:3];

    sub_24A50D7EC(0, &qword_27EF501D0, 0x277CD8A60);
    v21 = v20;
    v22 = sub_24A62ED54();

    [v21 setMonitoredRegions_];

LABEL_9:
    return v21;
  }

  if ((v5 & 0x80000000) != 0)
  {

    v31 = a2[3];
    v32 = a2[4];
    sub_24A50A204(a2, v31);
    v25 = (*(v32 + 16))(v31, v32);
    v26 = [objc_allocWithZone(MEMORY[0x277CD8A38]) initWithRole:0 discoveryToken:v25 preferredUpdateRate:a3];
    goto LABEL_8;
  }

  v27 = a2[3];
  v28 = a2[4];
  sub_24A50A204(a2, v27);
  v29 = (*(v28 + 16))(v27, v28);
  v30 = objc_allocWithZone(MEMORY[0x277CD8A28]);
  v21 = sub_24A565A68(v29, v6, a3);

  return v21;
}

unint64_t sub_24A56604C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_24A56605C()
{
  result = qword_27EF501A8;
  if (!qword_27EF501A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF501A8);
  }

  return result;
}

uint64_t sub_24A5660B0(unint64_t a1)
{
  sub_24A508AE4(v1 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v123);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  v3 = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
    v127 = 0;
    memset(v126, 0, sizeof(v126));
  }

  MEMORY[0x28223BE20](v3);
  v112[2] = v126;
  v4 = sub_24A60DE9C(sub_24A569B88, v112, a1);
  if (!v4)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v27 = sub_24A62E314();
    sub_24A506EB8(v27, qword_27EF5C118);
    v28 = v121;
    v29 = sub_24A62E2F4();
    v30 = sub_24A62EF64();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_24A503000, v29, v30, "🧭 FMR1NIContxt%@: nearby objects updated!! However, nearby object discover token don't match", v31, 0xCu);
      sub_24A50D6A4(v32, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v32, -1, -1);
      MEMORY[0x24C21BBE0](v31, -1, -1);
    }

    goto LABEL_68;
  }

  isa = v4;
  v6 = [v4 motionState];
  v7 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState;
  v8 = v121[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState];
  if (v6 == 2)
  {
    if (v8 != 4)
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v9 = sub_24A62E314();
      sub_24A506EB8(v9, qword_27EF5C118);
      v10 = sub_24A62E2F4();
      v11 = sub_24A62EF64();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMR1NIContxt: Findable motion state changed to moving", v12, 2u);
        MEMORY[0x24C21BBE0](v12, -1, -1);
      }

      v13 = v121;
      v121[v7] = 4;
      v14 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
      swift_beginAccess();
      v15 = *&v13[v14];
      if (v15 >> 62)
      {
        if (v15 < 0)
        {
          v110 = *&v13[v14];
        }

        v16 = sub_24A62F464();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v16)
      {
        goto LABEL_46;
      }

      v118 = isa;
      v17 = 0;
      v120 = v15 & 0xC000000000000001;
      v119 = (v15 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v120)
        {
          v23 = MEMORY[0x24C21ACB0](v17, v15);
        }

        else
        {
          if (v17 >= v119[2])
          {
            goto LABEL_73;
          }

          v23 = *(v15 + 8 * v17 + 32);
        }

        v24 = v23;
        v25 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_71;
        }

        v26 = &v23[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
        if (swift_unknownObjectWeakLoadStrong())
        {
          isa = v16;
          v18 = *(v26 + 1);
          ObjectType = swift_getObjectType();
          v124 = type metadata accessor for FMNearbyInteractionLocalizerContext();
          v125 = &off_285DA58A0;
          v123[0] = v121;
          v20 = *(v18 + 48);
          v21 = v121;
          v22 = v18;
          v16 = isa;
          v20(4, v123, ObjectType, v22);
          swift_unknownObjectRelease();

          sub_24A508C54(v123);
        }

        else
        {
        }

        ++v17;
      }

      while (v25 != v16);
LABEL_45:
      isa = v118;
LABEL_46:
    }
  }

  else if (v8 == 4)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v34 = sub_24A62E314();
    sub_24A506EB8(v34, qword_27EF5C118);
    v35 = sub_24A62E2F4();
    v36 = sub_24A62EF64();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_24A503000, v35, v36, "🧭 FMR1NIContxt: Findable motion state changed to stopped moving", v37, 2u);
      MEMORY[0x24C21BBE0](v37, -1, -1);
    }

    v38 = v121;
    v121[v7] = 5;
    v39 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v40 = *&v38[v39];
    if (v40 >> 62)
    {
      if (v40 < 0)
      {
        v111 = *&v38[v39];
      }

      v41 = sub_24A62F464();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v41)
    {
      goto LABEL_46;
    }

    v118 = isa;
    v42 = 0;
    v120 = v40 & 0xC000000000000001;
    v119 = (v40 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v120)
      {
        v48 = MEMORY[0x24C21ACB0](v42, v40);
      }

      else
      {
        if (v42 >= v119[2])
        {
          goto LABEL_74;
        }

        v48 = *(v40 + 8 * v42 + 32);
      }

      v49 = v48;
      v50 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_72;
      }

      v51 = &v48[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        isa = v41;
        v43 = *(v51 + 1);
        v44 = swift_getObjectType();
        v124 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v125 = &off_285DA58A0;
        v123[0] = v121;
        v45 = *(v43 + 48);
        v46 = v121;
        v47 = v43;
        v41 = isa;
        v45(5, v123, v44, v47);
        swift_unknownObjectRelease();

        sub_24A508C54(v123);
      }

      else
      {
      }

      ++v42;
    }

    while (v50 != v41);
    goto LABEL_45;
  }

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v52 = sub_24A62E314();
    sub_24A506EB8(v52, qword_27EF5C118);
    v53 = isa;
    isa = sub_24A62E2F4();
    v54 = sub_24A62EF34();

    if (os_log_type_enabled(isa, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v123[0] = v56;
      *v55 = 136315138;
      [v53 boundedRegionRange];
      v57 = sub_24A62EE44();
      v59 = sub_24A509BA8(v57, v58, v123);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_24A503000, isa, v54, "FMNearbyInteractionContext: btUpdate: RSSI update: %s", v55, 0xCu);
      sub_24A508C54(v56);
      MEMORY[0x24C21BBE0](v56, -1, -1);
      MEMORY[0x24C21BBE0](v55, -1, -1);
    }

    v60 = v121;
    v29 = v53;
    v61 = sub_24A62E2F4();
    v62 = sub_24A62EF34();

    v63 = os_log_type_enabled(v61, v62);
    v116 = v29;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v123[0] = v121;
      *v64 = 138413826;
      *(v64 + 4) = v60;
      *v65 = v60;
      *(v64 + 12) = 2080;
      v66 = v60;
      v67 = [v29 discoveryToken];
      v68 = [v67 description];
      v69 = sub_24A62EC14();
      v71 = v70;

      v72 = sub_24A509BA8(v69, v71, v123);

      *(v64 + 14) = v72;
      *(v64 + 22) = 2080;
      v73 = sub_24A62EF94();
      LODWORD(v122) = v73;
      BYTE4(v122) = BYTE4(v73) & 1;
      sub_24A508FA4(&unk_27EF50220, &qword_24A636268);
      v74 = sub_24A62EC44();
      v76 = sub_24A509BA8(v74, v75, v123);

      *(v64 + 24) = v76;
      *(v64 + 32) = 2080;
      v77 = sub_24A62EF74();
      LODWORD(v122) = v77;
      BYTE4(v122) = BYTE4(v77) & 1;
      v78 = sub_24A62EC44();
      v80 = sub_24A509BA8(v78, v79, v123);

      *(v64 + 34) = v80;
      v29 = v116;
      *(v64 + 42) = 2080;
      v81 = sub_24A62EF84();
      LODWORD(v122) = v81;
      BYTE4(v122) = BYTE4(v81) & 1;
      v82 = sub_24A62EC44();
      v84 = sub_24A509BA8(v82, v83, v123);

      *(v64 + 44) = v84;
      *(v64 + 52) = 2080;
      v122 = [v29 motionState];
      type metadata accessor for NIMotionActivityState(0);
      v85 = sub_24A62EC44();
      v87 = sub_24A509BA8(v85, v86, v123);

      *(v64 + 54) = v87;
      *(v64 + 62) = 2080;
      [v29 boundedRegionRange];
      v88 = sub_24A62EE44();
      isa = sub_24A509BA8(v88, v89, v123);

      *(v64 + 64) = isa;
      _os_log_impl(&dword_24A503000, v61, v62, "🧭 FMR1NIContxt%@: nearby object updated!!  %s, distance: %s Angle: %s Angle Accuracy: %s Motion State: %s Prox Measurement: %s", v64, 0x48u);
      sub_24A50D6A4(v65, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v65, -1, -1);
      v90 = v121;
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v90, -1, -1);
      MEMORY[0x24C21BBE0](v64, -1, -1);
    }

    v91 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v92 = *&v60[v91];
    v115 = v60;
    v93 = v92 >> 62 ? sub_24A62F464() : *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v93)
    {
      break;
    }

    v94 = 0;
    v118 = v92 & 0xC000000000000001;
    v117 = v92 & 0xFFFFFFFFFFFFFF8;
    v114 = v93;
    v113 = v92;
    while (1)
    {
      if (v118)
      {
        v95 = MEMORY[0x24C21ACB0](v94, v92);
      }

      else
      {
        if (v94 >= *(v117 + 16))
        {
          goto LABEL_70;
        }

        v95 = *(v92 + 8 * v94 + 32);
      }

      v96 = v95;
      v97 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        break;
      }

      v98 = [v29 verticalDirectionEstimate];
      isa = &v96[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v99 = 5;
        if (v98 < 5)
        {
          v99 = v98;
        }

        v121 = v99;
        isa = isa[1].isa;
        v120 = swift_getObjectType();
        v100 = sub_24A62EF94();
        v101 = sub_24A62EF74();
        v102 = sub_24A62EF84();
        v119 = [v29 motionState];
        [v29 boundedRegionRange];
        v104 = v103;
        v124 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v125 = &off_285DA58A0;
        v123[0] = v115;
        v105 = isa[2].isa;
        v106 = v115;
        v107 = HIDWORD(v101) & 1;
        v108 = v101;
        v93 = v114;
        v105(v100 | ((HIDWORD(v100) & 1) << 32), v108 | (v107 << 32), v102 | ((HIDWORD(v102) & 1) << 32), v121, v119, v123, v120, isa, v104);
        v92 = v113;
        v29 = v116;
        swift_unknownObjectRelease();

        sub_24A508C54(v123);
      }

      else
      {
      }

      ++v94;
      if (v97 == v93)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

LABEL_67:

LABEL_68:

  return sub_24A50D6A4(v126, &unk_27EF501C0, &unk_24A636238);
}