void sub_24A5A6F8C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = 0x4000000;
  if ((v2 & 0xFF000000) == 0x4000000)
  {
    v5 = 0;
    v6 = 0;
    v8 = 0;
    v10 = 0;
    LOWORD(v12) = 0;
    v14 = 0;
    LOBYTE(v15) = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23 = 0;
    LOBYTE(v48) = 0;
    v64[0] = 0;
    v3 = 0x303040000;
    v22 = 0x4014000000000000;
    v7 = 0x7FEFFFFFFFFFFFFFLL;
    v4 = 0x3FA999999999999ALL;
    v16 = 256;
    v13 = 0x10000;
    v11 = 17;
    v9 = 0x3FA999999999999ALL;
    goto LABEL_14;
  }

  if ((v2 & 0xFF000000) == 0x5000000)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    LOWORD(v12) = 0;
    v13 = 0;
    v14 = 0;
    LOBYTE(v15) = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1;
    goto LABEL_14;
  }

  v4 = *v1;
  v24 = *(v1 + 8);
  v25 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v26 = *(v1 + 40);
  v8 = *(v1 + 48);
  v15 = *(v1 + 56);
  v9 = *(v1 + 64);
  v12 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v27 = v2 | (*(v1 + 100) << 32);
  if ((v2 & 0xFE000000) == 0x6000000)
  {
    v28 = v1;
    v29 = a1;
    v42 = v4;
    v44 = v11;
    v30 = v15;
    v31 = v12;
    v32 = v9;
    v33 = v10;
    v34 = v7;
    v35 = v8;
    v36 = v6;
    v37 = v25;
    v38 = v26;
    v46 = v24;
    v47 = v27;
    sub_24A508CE4(v28, &v48);
    v18 = v38;
    v5 = v37;
    v6 = v36;
    v8 = v35;
    v7 = v34;
    v10 = v33;
    v9 = v32;
    v12 = v31;
    v15 = v30;
    v4 = v42;
    v11 = v44;
LABEL_13:
    a1 = v29;
    v22 = 0;
    v20 = v46;
    v3 = v47;
    v21 = v46 & 0xFFFFFFFFFFFFFF00;
    v19 = v18 & 0xFFFFFFFFFFFFFF00;
    v17 = v15 & 0xFFFFFFFFFFFF0000;
    v14 = v12 & 0xFFFFFFFFFF000000;
    v23 = 1;
    v13 = v12;
    v16 = v15;
    goto LABEL_14;
  }

  if ((v2 & 0xFF0000) != 0x40000)
  {
    v48 = *v1;
    v49 = v24;
    v50 = v25;
    v51 = v6;
    v52 = v7;
    v53 = v26;
    v54 = v8;
    v55 = v15;
    v56 = v9;
    v57 = v12;
    v58 = v10;
    v59 = v11;
    v60 = v27;
    v61 = BYTE4(v27);
    v43 = v26;
    v45 = v25;
    v29 = a1;
    v46 = v24;
    v47 = v27;
    sub_24A50D63C(&v48, v64, &qword_27EF4F670, &qword_24A634D70);
    v18 = v43;
    v5 = v45;
    goto LABEL_13;
  }

  v20 = 0;
  v4 = 0;
  v22 = 0x3FF0000000000000;
  v3 = 83886080;
  if (v25 == 1 || (v27 & 1) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    LOWORD(v12) = 0;
    v13 = 0;
    v14 = 0;
    LOBYTE(v15) = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOWORD(v12) = 0;
    v13 = 0;
    v14 = 0;
    LOBYTE(v15) = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v40 = v11 - 1;
    v39 = v11 < 1;
    v11 = 0;
    if (!v39)
    {
      v41 = a1;
      sub_24A5A7B90(v40, &v48);
      a1 = v41;
      v4 = v48;
      v20 = v49;
      v5 = v50;
      v6 = v51;
      v7 = v52;
      LOBYTE(v18) = v53;
      v8 = v54;
      LOBYTE(v15) = v55;
      v9 = v56;
      LOWORD(v12) = v57;
      v3 = v60 | (v61 << 32);
      v21 = v49 & 0xFFFFFFFFFFFFFF00;
      v19 = v53 & 0xFFFFFFFFFFFFFF00;
      v10 = v58;
      v11 = v59;
      v17 = v55 & 0xFFFFFFFFFFFF0000;
      v14 = v57 & 0xFFFFFFFFFF000000;
      v22 = v62;
      v13 = v57;
      v16 = v55;
      v23 = v63;
    }
  }

LABEL_14:
  *a1 = v4;
  *(a1 + 8) = v21 | v20;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v19 | v18;
  *(a1 + 48) = v8;
  *(a1 + 56) = v16 & 0xFF00 | v15 | v17;
  *(a1 + 64) = v9;
  *(a1 + 72) = *&v13 & 0xFF0000 | v12 | v14;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 96) = v3;
  *(a1 + 100) = BYTE4(v3);
  *(a1 + 104) = v22;
  *(a1 + 112) = v23 & 1;
}

uint64_t sub_24A5A7334()
{
  v66 = sub_24A62E214();
  v1 = *(v66 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v66);
  v65 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &v55 - v5;
  v6 = sub_24A508FA4(&qword_27EF510A8, &qword_24A638718);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v55 - v11;
  swift_beginAccess();
  v62 = v0;
  v12 = *(v0 + 40);
  v13 = *(v12 + 64);
  v56 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v55 = (v14 + 63) >> 6;
  v57 = v1 + 16;
  v64 = (v1 + 32);
  v59 = v1;
  v60 = v12;
  v61 = (v1 + 8);

  v18 = 0;
  v67 = v10;
  if (!v16)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v26 = v18;
LABEL_14:
      v30 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v31 = v30 | (v26 << 6);
      v32 = v59;
      v33 = v60;
      v34 = v58;
      v35 = v66;
      (*(v59 + 16))(v58, *(v60 + 48) + *(v59 + 72) * v31, v66);
      v36 = *(v33 + 56) + 104 * v31;
      v37 = *(v36 + 93);
      v39 = *(v36 + 64);
      v38 = *(v36 + 80);
      v72 = *(v36 + 48);
      v73 = v39;
      *v74 = v38;
      *&v74[13] = v37;
      v41 = *(v36 + 16);
      v40 = *(v36 + 32);
      v69 = *v36;
      v70 = v41;
      v71 = v40;
      v42 = sub_24A508FA4(&qword_27EF510B0, &qword_24A638720);
      v43 = &v67[*(v42 + 48)];
      (*(v32 + 32))(v67, v34, v35);
      v44 = *v74;
      *(v43 + 4) = v73;
      *(v43 + 5) = v44;
      *(v43 + 93) = *&v74[13];
      v45 = v70;
      *v43 = v69;
      *(v43 + 1) = v45;
      v46 = v72;
      *(v43 + 2) = v71;
      *(v43 + 3) = v46;
      v10 = v67;
      (*(*(v42 - 8) + 56))(v67, 0, 1, v42);
      sub_24A508CE4(&v69, &v68);
      v28 = v26;
      v29 = v63;
LABEL_15:
      sub_24A5A7AB8(v10, v29);
      v47 = sub_24A508FA4(&qword_27EF510B0, &qword_24A638720);
      v48 = (*(*(v47 - 8) + 48))(v29, 1, v47);
      v49 = v62;
      if (v48 == 1)
      {
      }

      v50 = v29 + *(v47 + 48);
      v51 = *(v50 + 80);
      v75[4] = *(v50 + 64);
      v76[0] = v51;
      *(v76 + 13) = *(v50 + 93);
      v52 = *(v50 + 16);
      v75[0] = *v50;
      v75[1] = v52;
      v53 = *(v50 + 48);
      v75[2] = *(v50 + 32);
      v75[3] = v53;
      (*v64)(v65, v29, v66);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        break;
      }

      v19 = *(v49 + 24);
      ObjectType = swift_getObjectType();
      v21 = v65;
      v22 = ObjectType;
      *(&v70 + 1) = type metadata accessor for FMFindingMockLocalizer();
      *&v71 = &off_285DA76B0;
      *&v69 = v49;
      v18 = v28;
      v23 = *(v19 + 8);

      v24 = v19;
      v10 = v67;
      v23(&v69, v75, v21, v22, v24);
      v25 = v66;
      swift_unknownObjectRelease();
      sub_24A517ABC(v75);
      (*v61)(v21, v25);
      result = sub_24A508C54(&v69);
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    sub_24A517ABC(v75);
    result = (*v61)(v65, v66);
    v18 = v28;
  }

  while (v16);
LABEL_7:
  if (v55 <= v18 + 1)
  {
    v27 = v18 + 1;
  }

  else
  {
    v27 = v55;
  }

  v28 = v27 - 1;
  v29 = v63;
  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v55)
    {
      v54 = sub_24A508FA4(&qword_27EF510B0, &qword_24A638720);
      (*(*(v54 - 8) + 56))(v10, 1, 1, v54);
      v16 = 0;
      goto LABEL_15;
    }

    v16 = *(v56 + 8 * v26);
    ++v18;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A5A78A0(uint64_t a1, void (*a2)(_OWORD *__return_ptr, void *))
{
  v4 = v2;
  swift_beginAccess();
  v6 = *(v2 + 40);
  if (*(v6 + 16))
  {

    v7 = sub_24A515AC8(a1);
    if (v8)
    {
      v9 = *(v6 + 56) + 104 * v7;
      v11 = *(v9 + 16);
      v10 = *(v9 + 32);
      v25[0] = *v9;
      v25[1] = v11;
      v25[2] = v10;
      v12 = *(v9 + 48);
      v13 = *(v9 + 64);
      v14 = *(v9 + 80);
      *&v26[13] = *(v9 + 93);
      v25[4] = v13;
      *v26 = v14;
      v25[3] = v12;
      sub_24A508CE4(v25, v20);

      LOWORD(v19[0]) = *(v4 + 32);
      a2(v20, v19);
      sub_24A517ABC(v25);
      v23[4] = v20[4];
      v24[0] = *v21;
      *(v24 + 13) = *&v21[13];
      v23[0] = v20[0];
      v23[1] = v20[1];
      v23[2] = v20[2];
      v23[3] = v20[3];
      v15 = v22;
      swift_beginAccess();
      sub_24A50D63C(v20, v19, &qword_27EF510B8, qword_24A638728);
      v16 = *(v4 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19[0] = *(v4 + 40);
      *(v4 + 40) = 0x8000000000000000;
      sub_24A5578E0(v23, a1, isUniquelyReferenced_nonNull_native);
      *(v4 + 40) = v19[0];
      swift_endAccess();
      sub_24A5A7334();
      sub_24A5A7B28(v20);
      return v15;
    }
  }

  return 0;
}

uint64_t sub_24A5A7A44()
{
  sub_24A52358C(v0 + 16);
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_24A5A7AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF510A8, &qword_24A638718);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5A7B28(uint64_t a1)
{
  v2 = sub_24A508FA4(&qword_27EF510B8, qword_24A638728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A5A7B90@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 0x11)
  {
    __break(1u);
  }

  else
  {
    v2 = (&unk_285D9EE98 + 40 * result);
    v3 = v2[4];
    v4 = v2[5];
    v5 = *(v2 + 48);
    v6 = *(v2 + 49);
    v7 = *(v2 + 7);
    v8 = *(v2 + 64);
    v9 = (v3 + -1.0) / 9.0;
    v10 = fmin(v9, 1.0);
    v11 = v9 < 0.0;
    v12 = 0.0;
    if (v11)
    {
      v10 = 0.0;
    }

    v13 = v5 == 0;
    if (!v5)
    {
      v12 = v10 * 45.0 + (1.0 - v10) * 20.0;
    }

    v14 = fabs(v4);
    v15 = *&v4;
    v16 = v5 ^ 1u;
    if (!v13)
    {
      v15 = 0x7FEFFFFFFFFFFFFFLL;
    }

    v17 = 1.79769313e308;
    if (v13)
    {
      v17 = v14;
    }

    *a2 = v3;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (v17 <= v12)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v13 = v6 == 0;
    v19 = 256;
    if (v13)
    {
      v19 = 0;
    }

    *(a2 + 24) = 0;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = v12;
    *(a2 + 56) = v19 | v18;
    *(a2 + 64) = v3;
    *(a2 + 72) = xmmword_24A6386B0;
    *(a2 + 88) = result;
    *(a2 + 100) = 3;
    *(a2 + 96) = 50593792;
    *(a2 + 104) = v7;
    *(a2 + 112) = v8;
  }

  return result;
}

uint64_t sub_24A5A7CC0(uint64_t a1, uint64_t a2)
{
  v15.receiver = v2;
  v15.super_class = type metadata accessor for FMR1DevicePoseProvider();
  objc_msgSendSuper2(&v15, sel_session_didUpdateFrame_, a1, a2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = v6 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        v14[3] = type metadata accessor for FMFindingLocalizer();
        v14[4] = &off_285DA5430;
        v14[0] = v8;
        v12 = *(v10 + 32);
        v13 = v8;
        v12(v14, a1, a2, ObjectType, v10);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return sub_24A508C54(v14);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_24A5A7F9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMR1DevicePoseProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A5A8004(void *a1)
{
  v2 = type metadata accessor for FMFindingLocalizerError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      *v5 = a1;
      swift_storeEnumTagMultiPayload();
      v9 = a1;
      sub_24A54D82C(v5, 0);
      swift_unknownObjectRelease();

      return sub_24A5A8120(v5);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24A5A8120(uint64_t a1)
{
  v2 = type metadata accessor for FMFindingLocalizerError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_24A5A817C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_24A5A81B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_24A5A8200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24A5A827C()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76968];
  v2 = [v0 preferredFontForTextStyle_];

  v3 = sub_24A59679C(2);
  v4 = *MEMORY[0x277D769A8];
  v5 = [v0 preferredFontForTextStyle_];

  v6 = sub_24A59679C(2);
  v7 = *MEMORY[0x277D76A28];
  v8 = [v0 preferredFontForTextStyle_];

  v9 = sub_24A59679C(2);
  v10 = *MEMORY[0x277D76918];
  v11 = [v0 preferredFontForTextStyle_];

  v12 = sub_24A59679C(2);
  *&xmmword_27EF5C560 = v3;
  *(&xmmword_27EF5C560 + 1) = v6;
  qword_27EF5C570 = v9;
  unk_27EF5C578 = v12;
  xmmword_27EF5C580 = xmmword_24A638780;
  unk_27EF5C590 = xmmword_24A638790;
  xmmword_27EF5C5A0 = xmmword_24A6387A0;
  unk_27EF5C5B0 = xmmword_24A6387B0;
  xmmword_27EF5C5C0 = xmmword_24A6387C0;
  unk_27EF5C5D0 = xmmword_24A6387D0;
  xmmword_27EF5C5E0 = xmmword_24A6387E0;
  unk_27EF5C5F0 = xmmword_24A6387F0;
  result = 65.0;
  xmmword_27EF5C600 = xmmword_24A638800;
  qword_27EF5C610 = 0x4020000000000000;
  return result;
}

uint64_t sub_24A5A8458(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

char *FMItemBTConnectionManager.init(findables:connectionContext:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = [objc_allocWithZone(MEMORY[0x277D49698]) init];
  type metadata accessor for FMIPConnectionManager();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMItemBTConnectionManager_fmipConnectionManager) = sub_24A520AAC(v6);
  v25 = v5;
  v7 = sub_24A509448(a1, &v25);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 defaultCenter];
  [v10 addObserver:v9 selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

  v11 = [v8 defaultCenter];
  [v11 addObserver:v9 selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];

  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v12 = sub_24A62E314();
  sub_24A506EB8(v12, qword_27EF5C100);
  v13 = sub_24A62E2F4();
  v14 = sub_24A62EF64();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = *&v9[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers];

    v19 = MEMORY[0x24C21A690](v18, MEMORY[0x277D837D0]);
    v21 = v20;

    v22 = sub_24A509BA8(v19, v21, &v24);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_24A503000, v13, v14, "FMItemBTConnectionManager: initialized for items: %s", v15, 0xCu);
    sub_24A508C54(v16);
    MEMORY[0x24C21BBE0](v16, -1, -1);
    MEMORY[0x24C21BBE0](v15, -1, -1);
  }

  return v9;
}

id FMItemBTConnectionManager.__deallocating_deinit()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D76758] object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x277D76660] object:0];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for FMItemBTConnectionManager();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_24A5A89BC(uint64_t a1, const char *a2, void (*a3)(void, void, void))
{
  v6 = v3;
  if (qword_27EF4E998 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v7 = sub_24A62E314();
    sub_24A506EB8(v7, qword_27EF5C100);
    v8 = v6;
    v9 = sub_24A62E2F4();
    v10 = sub_24A62EF64();

    v26 = v8;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315138;
      v13 = MEMORY[0x24C21A690](*(v8 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers), MEMORY[0x277D837D0]);
      v15 = sub_24A509BA8(v13, v14, &v29);

      *(v11 + 4) = v15;
      v8 = v26;
      _os_log_impl(&dword_24A503000, v9, v10, a1, v11, 0xCu);
      sub_24A508C54(v12);
      MEMORY[0x24C21BBE0](v12, -1, -1);
      MEMORY[0x24C21BBE0](v11, -1, -1);
    }

    a1 = *(v8 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers);
    v28 = *(a1 + 16);
    if (!v28)
    {
      break;
    }

    v16 = 0;
    v27 = OBJC_IVAR____TtC11FMFindingUI25FMItemBTConnectionManager_fmipConnectionManager;
    v6 = (a1 + 40);
    while (v16 < *(a1 + 16))
    {
      v19 = *(v6 - 1);
      v18 = *v6;

      v20 = sub_24A62E2F4();
      v21 = sub_24A62EF64();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = a3;
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_24A503000, v20, v21, a2, v23, 2u);
        v24 = v23;
        a3 = v22;
        v8 = v26;
        MEMORY[0x24C21BBE0](v24, -1, -1);
      }

      ++v16;

      v17 = *(v8 + v27);

      a3(v19, v18, v17);

      v6 += 2;
      if (v28 == v16)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }
}

uint64_t sub_24A5A8D00(const char *a1, uint64_t (*a2)(void))
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C100);
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A503000, v4, v5, a1, v6, 2u);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  return a2();
}

void (*sub_24A5A8E68(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A5AB618;
}

char *FMItemR1ConnectionManager.init(findables:connectionContext:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_localizerSubscriptions) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27EF4E9C0 != -1)
  {
    swift_once();
  }

  v5 = qword_27EF5C210;
  *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_proximityManager) = qword_27EF5C210;
  v23 = v4;
  v6 = v5;
  v7 = sub_24A509448(a1, &v23);
  v8 = qword_27EF4E998;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A62E314();
  sub_24A506EB8(v10, qword_27EF5C100);
  v11 = sub_24A62E2F4();
  v12 = sub_24A62EF64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    v15 = *&v9[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers];

    v17 = MEMORY[0x24C21A690](v16, MEMORY[0x277D837D0]);
    v19 = v18;

    v20 = sub_24A509BA8(v17, v19, &v22);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_24A503000, v11, v12, "FMItemR1ConnectionManager: initialized for items: %s", v13, 0xCu);
    sub_24A508C54(v14);
    MEMORY[0x24C21BBE0](v14, -1, -1);
    MEMORY[0x24C21BBE0](v13, -1, -1);
  }

  return v9;
}

uint64_t sub_24A5A9160()
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C100);
  v2 = v0;
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x24C21A690](*&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers], MEMORY[0x277D837D0]);
    v9 = sub_24A509BA8(v7, v8, v25);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A503000, v3, v4, "FMItemR1ConnectionManager: requesting connection for items: %s", v5, 0xCu);
    sub_24A508C54(v6);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v10 = *&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_findables];
  v11 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v12 = *(v10 + 16);
  if (v12)
  {
    v24 = OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_proximityManager;
    v13 = OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_connectionContext;
    v14 = v10 + 32;
    do
    {
      v15 = sub_24A508AE4(v14, v25);
      v16 = *&v2[v24];
      v17 = v2[v13];
      v18 = *&v16[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_serialQueue];
      MEMORY[0x28223BE20](v15);
      type metadata accessor for FMR1ProximityManagerSubscription();
      v19 = v16;
      sub_24A62F024();

      v20 = sub_24A508C54(v25);
      MEMORY[0x24C21A660](v20);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24A62ED84();
      }

      sub_24A62EDA4();
      v14 += 40;
      --v12;
    }

    while (v12);
    v11 = v26;
  }

  v22 = *&v2[OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_localizerSubscriptions];
  *&v2[OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_localizerSubscriptions] = v11;
}

void sub_24A5A9434()
{
  v42 = sub_24A62EA94();
  v1 = *(v42 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24A62EAD4();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v7 = sub_24A62E314();
  sub_24A506EB8(v7, qword_27EF5C100);
  v8 = v0;
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x24C21A690](*&v8[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers], MEMORY[0x277D837D0]);
    v15 = sub_24A509BA8(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24A503000, v9, v10, "FMItemR1ConnectionManager: requesting disconnection for items: %s", v11, 0xCu);
    sub_24A508C54(v12);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  v16 = *&v8[OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_localizerSubscriptions];
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v16 < 0)
  {
    v30 = *&v8[OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_localizerSubscriptions];
  }

  v17 = sub_24A62F464();
  if (v17)
  {
LABEL_7:
    if (v17 < 1)
    {
      __break(1u);
    }

    else
    {
      v38 = v8;
      v34 = v16 & 0xC000000000000001;
      v35 = OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_proximityManager;
      v32 = (v1 + 8);
      v33 = v45;
      v31 = (v4 + 8);

      v18 = 0;
      v36 = v17;
      v37 = v16;
      do
      {
        if (v34)
        {
          v19 = MEMORY[0x24C21ACB0](v18, v16);
        }

        else
        {
          v19 = *(v16 + 8 * v18 + 32);
        }

        v20 = v19;
        ++v18;
        v21 = *&v38[v35];
        v22 = *&v21[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_serialQueue];
        v23 = swift_allocObject();
        *(v23 + 16) = v21;
        *(v23 + 24) = v20;
        v45[2] = sub_24A5763AC;
        v45[3] = v23;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v45[0] = sub_24A5A8458;
        v45[1] = &unk_285DA7808;
        v24 = _Block_copy(aBlock);
        v25 = v21;
        v26 = v20;
        v27 = v39;
        sub_24A62EAB4();
        v43 = MEMORY[0x277D84F90];
        sub_24A545F60();
        sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
        sub_24A529464();
        v28 = v41;
        v29 = v42;
        sub_24A62F254();
        MEMORY[0x24C21A950](0, v27, v28, v24);
        _Block_release(v24);

        (*v32)(v28, v29);
        (*v31)(v27, v40);

        v16 = v37;
      }

      while (v36 != v18);
    }
  }
}

uint64_t sub_24A5A98E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_localizerSubscriptions);

  v2 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_delegate;

  return sub_24A52358C(v2);
}

void sub_24A5A99A4(unsigned __int8 a1)
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C100);
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
    *v6 = 136315138;
    v10 = 0xE500000000000000;
    v11 = 0x7964616572;
    v12 = 0xE500000000000000;
    v13 = 0x726F727265;
    if (a1 != 3)
    {
      v13 = 0x666F206574617473;
      v12 = 0xE900000000000066;
    }

    if (a1 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (a1)
    {
      v9 = 0x6461657220746F6ELL;
      v8 = 0xE900000000000079;
    }

    if (a1 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    if (a1 <= 1u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_24A509BA8(v14, v15, &v23);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_24A503000, v4, v5, "FMItemR1ConnectionManager: item localizer: entered state: %s", v6, 0xCu);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  if (a1)
  {
    v17 = v1 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(v1, a1 == 2, 0, ObjectType, v18);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = sub_24A62E2F4();
    v20 = sub_24A62EF64();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A503000, oslog, v20, "FMItemR1ConnectionManager: ignoring unknown state, waiting for a decision to be made before forwarding.", v21, 2u);
      MEMORY[0x24C21BBE0](v21, -1, -1);
    }
  }
}

uint64_t sub_24A5A9CA0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, 0, a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A5A9D3C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_24A5A9D9C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24A5A9DE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24A5A9EAC(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_24A5A9F04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A5A9F6C(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A5AA00C;
}

char *FMItemNIConnectionManager.init(findables:findingType:arSession:)(uint64_t a1, __int16 *a2, void *a3)
{
  v6 = *a2;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_subscriptions) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession) = 0;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27EF4E9C8 != -1)
  {
    swift_once();
  }

  v8 = qword_27EF5C218;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_nearbyInteractionManager) = qword_27EF5C218;
  swift_beginAccess();
  v9 = *(v3 + v7);
  *(v3 + v7) = a3;
  v10 = v8;
  v11 = a3;

  *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_findingType) = v6;
  v12 = (v6 >> 13) & 3;
  if (v12)
  {
    if (v12 == 1)
    {
      v6 = (v6 >> 8) & 0x9F;
    }

    else if ((v6 & 0x80000000) != 0)
    {
      v6 = (v6 >> 8) & 0x1F;
    }
  }

  else
  {
    LOBYTE(v6) = BYTE1(v6);
  }

  LOBYTE(v28) = v6;
  v13 = sub_24A509448(a1, &v28);
  v14 = qword_27EF4E998;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_24A62E314();
  sub_24A506EB8(v16, qword_27EF5C100);
  v17 = sub_24A62E2F4();
  v18 = sub_24A62EF64();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v21 = *&v15[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers];

    v23 = MEMORY[0x24C21A690](v22, MEMORY[0x277D837D0]);
    v25 = v24;

    v26 = sub_24A509BA8(v23, v25, &v28);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_24A503000, v17, v18, "FMItemNIConnectionManager: initialized for items: %s", v19, 0xCu);
    sub_24A508C54(v20);
    MEMORY[0x24C21BBE0](v20, -1, -1);
    MEMORY[0x24C21BBE0](v19, -1, -1);
  }

  return v15;
}

void sub_24A5AA2EC(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_findingType);
  v3 = (v2 >> 13) & 3;
  if (!v3)
  {
    goto LABEL_7;
  }

  if (v3 == 1 || (v2 & 0x80000000) == 0)
  {
    *a1 = 2;
    return;
  }

  if (v2)
  {
    *a1 = 1;
  }

  else
  {
LABEL_7:
    *a1 = 0;
  }
}

uint64_t sub_24A5AA330()
{
  if (qword_27EF4E998 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v1 = sub_24A62E314();
    sub_24A506EB8(v1, qword_27EF5C100);
    v2 = v0;
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();

    v5 = os_log_type_enabled(v3, v4);
    v36 = v2;
    if (v5)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      v8 = MEMORY[0x24C21A690](*(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers), MEMORY[0x277D837D0]);
      v10 = sub_24A509BA8(v8, v9, aBlock);
      v2 = v36;

      *(v6 + 4) = v10;
      _os_log_impl(&dword_24A503000, v3, v4, "FMItemNIConnectionManager: requesting connection for items: %s", v6, 0xCu);
      sub_24A508C54(v7);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    v11 = *(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_findables);
    v12 = MEMORY[0x277D84F90];
    v43 = MEMORY[0x277D84F90];
    v13 = *(v11 + 16);
    if (!v13)
    {
      break;
    }

    v35 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_nearbyInteractionManager;
    v33 = *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_findingType);
    v14 = v11 + 32;
    v34 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
    swift_beginAccess();
    v32[1] = v40;
    while (1)
    {
      v37 = v13;
      v15 = sub_24A508AE4(v14, v42);
      v38 = v32;
      v16 = v36;
      v17 = v35;
      v18 = *(v36 + v35);
      v19 = *(v36 + v34);
      v20 = *&v18[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      MEMORY[0x28223BE20](v15);
      v32[-6] = v18;
      v32[-5] = v19;
      v32[-4] = v42;
      LOWORD(v32[-3]) = v33;
      v32[-2] = v16;
      v32[-1] = &off_285DA7978;
      type metadata accessor for FMNearbyInteractionManagerSubscription();
      v21 = v18;
      v22 = v19;
      sub_24A62F024();

      v23 = *(v16 + v17);
      v24 = *&v23[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      sub_24A508AE4(v42, v41);
      v0 = swift_allocObject();
      sub_24A508CA0(v41, (v0 + 2));
      v0[7] = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_24A594B48;
      *(v25 + 24) = v0;
      v40[2] = sub_24A517E48;
      v40[3] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v40[0] = sub_24A592ED8;
      v40[1] = &unk_285DA7880;
      v26 = _Block_copy(aBlock);
      v27 = v23;

      dispatch_sync(v24, v26);
      _Block_release(v26);
      sub_24A508C54(v42);

      LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

      if (v26)
      {
        break;
      }

      MEMORY[0x24C21A660](v28);
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24A62ED84();
      }

      sub_24A62EDA4();
      v14 += 40;
      v13 = v37 - 1;
      if (v37 == 1)
      {
        v12 = v43;
        v2 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

LABEL_11:
  v30 = *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_subscriptions);
  *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_subscriptions) = v12;
}

void sub_24A5AA80C()
{
  if (qword_27EF4E998 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v1 = sub_24A62E314();
    sub_24A506EB8(v1, qword_27EF5C100);
    v2 = v0;
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock[0] = v6;
      *v5 = 136315138;
      v7 = MEMORY[0x24C21A690](*&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers], MEMORY[0x277D837D0]);
      v9 = sub_24A509BA8(v7, v8, aBlock);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_24A503000, v3, v4, "FMItemNIConnectionManager: requesting disconnection for items: %s", v5, 0xCu);
      sub_24A508C54(v6);
      MEMORY[0x24C21BBE0](v6, -1, -1);
      MEMORY[0x24C21BBE0](v5, -1, -1);
    }

    v10 = *&v2[OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_subscriptions];
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v25 = *&v2[OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_subscriptions];
      }

      v26 = *&v2[OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_subscriptions];
      v27 = sub_24A62F464();
      v10 = v26;
      v11 = v27;
      if (!v27)
      {
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        return;
      }
    }

    if (v11 < 1)
    {
      break;
    }

    v29 = v10 & 0xC000000000000001;
    v30 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_nearbyInteractionManager;
    v12 = v10;

    v13 = v12;
    v14 = 0;
    v28 = v12;
    while (1)
    {
      v0 = v11;
      v15 = v29 ? MEMORY[0x24C21ACB0](v14, v13) : *(v13 + 8 * v14 + 32);
      v16 = v15;
      v17 = v2;
      v18 = *&v2[v30];
      v19 = *&v18[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v16;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_24A55B77C;
      *(v21 + 24) = v20;
      aBlock[4] = sub_24A5193D4;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A592ED8;
      aBlock[3] = &unk_285DA78F8;
      v22 = _Block_copy(aBlock);
      v23 = v18;
      v24 = v16;

      dispatch_sync(v19, v22);

      _Block_release(v22);
      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if (v23)
      {
        break;
      }

      v14 = v14 + 1;
      v11 = v0;
      v2 = v17;
      v13 = v28;
      if (v0 == v14)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_24A5AAB98()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_subscriptions);

  v2 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_delegate;

  return sub_24A52358C(v2);
}

id sub_24A5AAC10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A5AACB8(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, a1 & 1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A5AAD74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5AADB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A5AADF0()
{
  sub_24A508C54((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_24A5AAE7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24A5AAEF4@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_24A5AAF58(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2 + *a5;
  swift_beginAccess();
  *(v7 + 8) = v6;
  return swift_unknownObjectWeakAssign();
}

void sub_24A5AB26C(unsigned __int8 a1)
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C100);
  oslog = sub_24A62E2F4();
  v3 = sub_24A62EF64();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    *v4 = 136315138;
    v8 = 0xE500000000000000;
    v9 = 0x7964616572;
    v10 = 0xE500000000000000;
    v11 = 0x726F727265;
    if (a1 != 3)
    {
      v11 = 0x666F206574617473;
      v10 = 0xE900000000000066;
    }

    if (a1 != 2)
    {
      v9 = v11;
      v8 = v10;
    }

    if (a1)
    {
      v7 = 0x6461657220746F6ELL;
      v6 = 0xE900000000000079;
    }

    if (a1 <= 1u)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    if (a1 <= 1u)
    {
      v13 = v6;
    }

    else
    {
      v13 = v8;
    }

    v14 = sub_24A509BA8(v12, v13, &v16);

    *(v4 + 4) = v14;
    _os_log_impl(&dword_24A503000, oslog, v3, "FMItemNIConnectionManager: entered state: %s", v4, 0xCu);
    sub_24A508C54(v5);
    MEMORY[0x24C21BBE0](v5, -1, -1);
    MEMORY[0x24C21BBE0](v4, -1, -1);
  }
}

void sub_24A5AB458(uint64_t a1, void *a2, const char *a3)
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C100);
  v6 = a2;
  oslog = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = a2;
    sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
    v11 = sub_24A62EC44();
    v13 = sub_24A509BA8(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24A503000, oslog, v7, a3, v8, 0xCu);
    sub_24A508C54(v9);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A5AB630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A62E214();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A5AB6F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A62E214();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FMFindingSessionState()
{
  result = qword_27EF51110;
  if (!qword_27EF51110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A5AB7E0()
{
  sub_24A5AB8BC();
  if (v0 <= 0x3F)
  {
    sub_24A5AB99C();
    if (v1 <= 0x3F)
    {
      sub_24A5ABA70();
      if (v2 <= 0x3F)
      {
        sub_24A5ABAD4();
        if (v3 <= 0x3F)
        {
          sub_24A62E214();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24A5AB8BC()
{
  if (!qword_27EF51120)
  {
    sub_24A62E214();
    sub_24A50E1E0(&unk_27EF501B0, &unk_24A633B00);
    sub_24A5AB944();
    v0 = sub_24A62EBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF51120);
    }
  }
}

unint64_t sub_24A5AB944()
{
  result = qword_27EF52310;
  if (!qword_27EF52310)
  {
    sub_24A62E214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52310);
  }

  return result;
}

void sub_24A5AB99C()
{
  if (!qword_27EF51128)
  {
    sub_24A50E1E0(&qword_27EF51130, &qword_24A6389E0);
    sub_24A5ABA0C();
    v0 = sub_24A62EEA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF51128);
    }
  }
}

unint64_t sub_24A5ABA0C()
{
  result = qword_27EF522F0;
  if (!qword_27EF522F0)
  {
    sub_24A50E1E0(&qword_27EF51130, &qword_24A6389E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF522F0);
  }

  return result;
}

void sub_24A5ABA70()
{
  if (!qword_27EF51138)
  {
    sub_24A50E1E0(&unk_27EF501B0, &unk_24A633B00);
    v0 = sub_24A62F1C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF51138);
    }
  }
}

void sub_24A5ABAD4()
{
  if (!qword_27EF51140)
  {
    sub_24A62E214();
    sub_24A5AB944();
    v0 = sub_24A62EBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF51140);
    }
  }
}

uint64_t sub_24A5ABB40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 8);
  if (*(v4 + 16) && (v5 = type metadata accessor for FMFindingSessionState(), v6 = sub_24A515AC8(v2 + *(v5 + 36)), (v7 & 1) != 0))
  {
    v8 = *(v4 + 56) + 40 * v6;

    return sub_24A508AE4(v8, a1);
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5ABC04()
{
  sub_24A5ABB40(v21);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&qword_27EF51148, &qword_24A6389E8);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_24A50D6A4(&v18, &qword_27EF51150, &qword_24A6389F0);
    sub_24A5ABB40(v24);
    v8 = v25;
    v9 = v26;
    sub_24A50A204(v24, v25);
    v10 = (*(v9 + 8))(v8, v9);
LABEL_9:
    v7 = v10;
    goto LABEL_10;
  }

  sub_24A508CA0(&v18, v24);
  sub_24A5AD108(v0 + 24, &v18);
  if (!*(&v19 + 1))
  {
    sub_24A50D6A4(&v18, &unk_27EF522E0, qword_24A637660);
    sub_24A5AD108(v0 + 24, v21);
    v12 = v22;
    sub_24A50D6A4(v21, &unk_27EF522E0, qword_24A637660);
    if (!v12 && *(*(v0 + 16) + 16) >= 2uLL || (v13 = v25, v14 = v26, sub_24A50A204(v24, v25), v10 = (*(v14 + 16))(v13, v14), !v15))
    {
      v16 = v25;
      v17 = v26;
      sub_24A50A204(v24, v25);
      v10 = (*(*(v17 + 8) + 8))(v16, *(v17 + 8));
    }

    goto LABEL_9;
  }

  sub_24A508CA0(&v18, v21);
  if (*(*(v0 + 8) + 16) != 1 || *(*(v0 + 16) + 16) != 1 || (v1 = v25, v2 = v26, sub_24A50A204(v24, v25), v3 = (*(v2 + 16))(v1, v2), !v4))
  {
    v5 = v22;
    v6 = v23;
    sub_24A50A204(v21, v22);
    v3 = (*(v6 + 8))(v5, v6);
  }

  v7 = v3;
  sub_24A508C54(v21);
LABEL_10:
  sub_24A508C54(v24);
  return v7;
}

uint64_t sub_24A5ABE68(void *a1, void *a2)
{
  v81 = a2;
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v70 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v69 = &v68 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v68 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v68 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v68 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v68 - v19;
  sub_24A508AE4(a1, v75);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
  if (swift_dynamicCast())
  {
    v68 = v3;
    sub_24A508CA0(v73, v78);
    sub_24A508AE4(v81, v73);
    if (swift_dynamicCast())
    {
      sub_24A508CA0(v71, v75);
      v21 = v79;
      v22 = v80;
      sub_24A50A204(v78, v79);
      (*(v22 + 32))(v73, v21, v22);
      v23 = SLOBYTE(v73[0]);
      v24 = v76;
      v25 = v77;
      sub_24A50A204(v75, v76);
      (*(v25 + 32))(v71, v24, v25);
      v26 = flt_24A6389FC[v23];
      v27 = flt_24A6389FC[SLOBYTE(v71[0])];
      v28 = v79;
      v29 = v80;
      sub_24A50A204(v78, v79);
      v30 = v69;
      (*(*(v29 + 8) + 16))(v28);
      v31 = sub_24A62E1C4();
      v33 = v32;
      v34 = *(v4 + 8);
      v35 = v68;
      v34(v30, v68);
      v37 = v76;
      v36 = v77;
      sub_24A50A204(v75, v76);
      v38 = v70;
      (*(*(v36 + 8) + 16))(v37);
      v39 = sub_24A62E1C4();
      v41 = v40;
      v34(v38, v35);
      if (v31 == v39 && v33 == v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = sub_24A62F634();
      }

      v54 = (v26 < v27) & v42;
      sub_24A508C54(v75);
    }

    else
    {
      v72 = 0;
      memset(v71, 0, sizeof(v71));
      sub_24A50D6A4(v71, &unk_27EF50520, &unk_24A633B10);
      v55 = a1[3];
      v56 = a1[4];
      sub_24A50A204(a1, v55);
      (*(v56 + 16))(v55, v56);
      v57 = sub_24A62E1C4();
      v59 = v58;
      v60 = *(v4 + 8);
      v61 = v68;
      v60(v15, v68);
      v62 = v81[3];
      v63 = v81[4];
      sub_24A50A204(v81, v62);
      (*(v63 + 16))(v62, v63);
      v64 = sub_24A62E1C4();
      v66 = v65;
      v60(v12, v61);
      if (v57 == v64 && v59 == v66)
      {
        v54 = 0;
      }

      else
      {
        v54 = sub_24A62F634();
      }
    }

    sub_24A508C54(v78);
  }

  else
  {
    v74 = 0;
    memset(v73, 0, sizeof(v73));
    sub_24A50D6A4(v73, &unk_27EF50520, &unk_24A633B10);
    v43 = a1[3];
    v44 = a1[4];
    sub_24A50A204(a1, v43);
    (*(v44 + 16))(v43, v44);
    v45 = sub_24A62E1C4();
    v47 = v46;
    v48 = *(v4 + 8);
    v48(v20, v3);
    v49 = v81[3];
    v50 = v81[4];
    sub_24A50A204(v81, v49);
    (*(v50 + 16))(v49, v50);
    v51 = sub_24A62E1C4();
    v53 = v52;
    v48(v18, v3);
    if (v45 == v51 && v47 == v53)
    {

      v54 = 0;
    }

    else
    {
      v54 = sub_24A62F634();
    }
  }

  return v54 & 1;
}

uint64_t sub_24A5AC4A8(void *a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(a2 + 64);
  v10 = a1[3];
  v11 = a1[4];
  sub_24A50A204(a1, v10);
  (*(v11 + 16))(v10, v11);
  if (*(v9 + 16) && (v12 = sub_24A515AC8(v8), (v13 & 1) != 0))
  {
    v14 = *(v9 + 56) + 104 * v12;
    v16 = *(v14 + 16);
    v15 = *(v14 + 32);
    v24[0] = *v14;
    v24[1] = v16;
    v24[2] = v15;
    v17 = *(v14 + 48);
    v18 = *(v14 + 64);
    v19 = *(v14 + 80);
    *&v25[13] = *(v14 + 93);
    v24[4] = v18;
    *v25 = v19;
    v24[3] = v17;
    sub_24A508CE4(v24, v23);
    (*(v5 + 8))(v8, v4);
    if ((*&v25[16] & 0xFC000000 | 0x2000000) != 0x6000000)
    {
      v21 = (*&v25[16] & 0xFF0000) != 196608;
      sub_24A517ABC(v24);
      return v21;
    }

    sub_24A517ABC(v24);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }

  return 1;
}

uint64_t sub_24A5AC684(void *a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(a2 + 64);
  v10 = a1[3];
  v11 = a1[4];
  sub_24A50A204(a1, v10);
  (*(v11 + 16))(v10, v11);
  if (*(v9 + 16) && (v12 = sub_24A515AC8(v8), (v13 & 1) != 0))
  {
    v14 = *(v9 + 56) + 104 * v12;
    v16 = *(v14 + 16);
    v15 = *(v14 + 32);
    v23[0] = *v14;
    v23[1] = v16;
    v23[2] = v15;
    v17 = *(v14 + 48);
    v18 = *(v14 + 64);
    v19 = *(v14 + 80);
    *&v24[13] = *(v14 + 93);
    v23[4] = v18;
    *v24 = v19;
    v23[3] = v17;
    sub_24A508CE4(v23, v22);
    (*(v5 + 8))(v8, v4);
    if ((*&v24[16] | 0x2000000u) >> 25 != 3)
    {
      sub_24A517ABC(v23);
      return 1;
    }

    sub_24A517ABC(v23);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

uint64_t sub_24A5AC844@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = sub_24A62E214();
  v12 = *(v79 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v79);
  v80 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - v16;
  v73 = *a1;
  v18 = MEMORY[0x277D84F90];
  v19 = sub_24A59C820(MEMORY[0x277D84F90]);
  v20 = sub_24A59CA10(v18);
  v21 = *(a2 + 16);
  if (!v21)
  {

LABEL_29:
    *a6 = v73;
    *(a6 + 8) = v19;
    v66 = *(a3 + 16);
    *(a6 + 24) = *a3;
    *(a6 + 40) = v66;
    *(a6 + 56) = *(a3 + 32);
    *(a6 + 64) = v20;
    v67 = type metadata accessor for FMFindingSessionState();
    result = (*(v12 + 32))(a6 + *(v67 + 36), a4, v79);
    *(a6 + 16) = a5;
    return result;
  }

  v69 = a3;
  v70 = a4;
  v71 = a6;
  v72 = a5;
  v22 = 0;
  v23 = a2 + 32;
  v76 = v12 + 16;
  v77 = v12;
  v78 = (v12 + 8);
  v74 = v21 - 1;
  v75 = v17;
  while (1)
  {
    sub_24A508AE4(v23, v84);
    v24 = v85;
    v25 = v86;
    sub_24A50A204(v84, v85);
    (*(v25 + 16))(v24, v25);
    sub_24A508AE4(v84, v81);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v19;
    v28 = sub_24A515AC8(v17);
    v29 = v19[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v19[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v83;
        if (v27)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_24A559238();
        v19 = v83;
        if (v32)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_24A5568EC(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_24A515AC8(v17);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_34;
      }

      v28 = v33;
      v19 = v83;
      if (v32)
      {
LABEL_10:
        v35 = (v19[7] + 40 * v28);
        sub_24A508C54(v35);
        sub_24A508CA0(v81, v35);
        v36 = *v78;
        (*v78)(v17, v79);
        goto LABEL_14;
      }
    }

    v19[(v28 >> 6) + 8] |= 1 << v28;
    v37 = v77;
    v38 = v79;
    (*(v77 + 16))(v19[6] + *(v77 + 72) * v28, v17, v79);
    sub_24A508CA0(v81, v19[7] + 40 * v28);
    v36 = *(v37 + 8);
    v36(v17, v38);
    v39 = v19[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_32;
    }

    v19[2] = v41;
LABEL_14:
    v42 = v85;
    v43 = v86;
    sub_24A50A204(v84, v85);
    v44 = v80;
    (*(v43 + 16))(v42, v43);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v20;
    v46 = sub_24A515AC8(v44);
    v48 = v20[2];
    v49 = (v47 & 1) == 0;
    v40 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (v40)
    {
      goto LABEL_31;
    }

    v51 = v47;
    if (v20[3] < v50)
    {
      sub_24A5558A0(v50, v45);
      v46 = sub_24A515AC8(v80);
      v17 = v75;
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_34;
      }

LABEL_19:
      if ((v51 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v17 = v75;
    if (v45)
    {
      goto LABEL_19;
    }

    v59 = v46;
    sub_24A55891C();
    v46 = v59;
    if ((v51 & 1) == 0)
    {
LABEL_22:
      v20 = v83;
      v83[(v46 >> 6) + 8] |= 1 << v46;
      v60 = v46;
      v61 = v79;
      v62 = v80;
      (*(v77 + 16))(v20[6] + *(v77 + 72) * v46, v80, v79);
      v63 = v20[7] + 104 * v60;
      *v63 = 0u;
      *(v63 + 16) = 0u;
      *(v63 + 32) = 0u;
      *(v63 + 48) = 0u;
      *(v63 + 64) = 0u;
      *(v63 + 80) = 0u;
      *(v63 + 100) = 0;
      *(v63 + 96) = 0x4000000;
      v36(v62, v61);
      v64 = v20[2];
      v40 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v40)
      {
        goto LABEL_33;
      }

      v20[2] = v65;
      goto LABEL_24;
    }

LABEL_20:
    v20 = v83;
    v53 = v83[7] + 104 * v46;
    v55 = *(v53 + 16);
    v54 = *(v53 + 32);
    v81[0] = *v53;
    v81[1] = v55;
    v81[2] = v54;
    v57 = *(v53 + 64);
    v56 = *(v53 + 80);
    v58 = *(v53 + 48);
    *&v82[13] = *(v53 + 93);
    v81[4] = v57;
    *v82 = v56;
    v81[3] = v58;
    *(v53 + 64) = 0u;
    *(v53 + 80) = 0u;
    *(v53 + 32) = 0u;
    *(v53 + 48) = 0u;
    *v53 = 0u;
    *(v53 + 16) = 0u;
    *(v53 + 100) = 0;
    *(v53 + 96) = 0x4000000;
    sub_24A517ABC(v81);
    v36(v80, v79);
LABEL_24:
    sub_24A508C54(v84);
    if (v74 == v22)
    {
      goto LABEL_27;
    }

    ++v22;
    v23 += 40;
    if (v22 >= *(a2 + 16))
    {
      __break(1u);
LABEL_27:

      a5 = v72;
      a6 = v71;
      a4 = v70;
      v12 = v77;
      a3 = v69;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_24A62F674();
  __break(1u);
  return result;
}

uint64_t sub_24A5ACE64@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v39 = sub_24A62E214();
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v1;
  v5 = *(v1 + 8);
  sub_24A508FA4(&qword_27EF4FEB8, &qword_24A635DF0);
  result = sub_24A62F474();
  v7 = result;
  v8 = 0;
  v10 = v5 + 64;
  v9 = *(v5 + 64);
  v36 = v5;
  v11 = 1 << *(v5 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v38 = (v2 + 16);
  v34 = v2 + 32;
  v35 = result + 64;
  if ((v12 & v9) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v8 << 6);
      v19 = v37;
      v20 = *(v2 + 72) * v18;
      v21 = v39;
      (*(v2 + 16))(v37, *(v36 + 48) + v20, v39);
      *(v35 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = (*(v2 + 32))(v7[6] + v20, v19, v21);
      v22 = v7[7] + 104 * v18;
      *v22 = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 80) = 0u;
      *(v22 + 100) = 0;
      *(v22 + 96) = 0x4000000;
      v23 = v7[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v7[2] = v25;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v14)
      {
        v26 = v32;
        v27 = v33;
        v28 = *v32;
        v29 = *(v32 + 1);
        sub_24A5AD108((v32 + 12), v33 + 24);
        v30 = type metadata accessor for FMFindingSessionState();
        (*v38)(v27 + *(v30 + 36), v26 + *(v30 + 36), v39);
        v31 = *(v26 + 2);
        *v27 = v28;
        *(v27 + 64) = v7;
        *(v27 + 8) = v29;
        *(v27 + 16) = v31;
      }

      v17 = *(v10 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A5AD108(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF522E0, qword_24A637660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5AD18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24A62E214();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24A5AD2D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  else
  {
    v11 = sub_24A62E214();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24A5AD420()
{
  sub_24A5AD540();
  if (v0 <= 0x3F)
  {
    sub_24A554AFC(319, &qword_27EF51170);
    if (v1 <= 0x3F)
    {
      sub_24A554AFC(319, &qword_27EF51178);
      if (v2 <= 0x3F)
      {
        sub_24A596750();
        if (v3 <= 0x3F)
        {
          sub_24A62E214();
          if (v4 <= 0x3F)
          {
            sub_24A5AD598();
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

void sub_24A5AD540()
{
  if (!qword_27EF51168)
  {
    sub_24A62E214();
    v0 = sub_24A62F1C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF51168);
    }
  }
}

void sub_24A5AD598()
{
  if (!qword_27EF51180)
  {
    sub_24A5AD5F4();
    v0 = sub_24A62EEA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF51180);
    }
  }
}

unint64_t sub_24A5AD5F4()
{
  result = qword_27EF51188;
  if (!qword_27EF51188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51188);
  }

  return result;
}

uint64_t sub_24A5AD65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A62E214();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24A5AD7A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24A62E214();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24A5AD8F0()
{
  sub_24A62E214();
  if (v0 <= 0x3F)
  {
    sub_24A5AD598();
    if (v1 <= 0x3F)
    {
      sub_24A554AFC(319, &qword_27EF51178);
      if (v2 <= 0x3F)
      {
        sub_24A5AD540();
        if (v3 <= 0x3F)
        {
          sub_24A554AFC(319, &qword_27EF51170);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24A5ADA04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a3;
  v59 = a2;
  v6 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v49 - v8;
  v10 = sub_24A62E214();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508AE4(a1, &v61);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v75 = 0;
    memset(v74, 0, sizeof(v74));
  }

  v15 = a1[3];
  v16 = a1[4];
  sub_24A50A204(a1, v15);
  v56 = (*(v16 + 8))(v15, v16);
  v55 = v17;
  v18 = a1[3];
  v19 = a1[4];
  sub_24A50A204(a1, v18);
  (*(v19 + 16))(v18, v19);
  sub_24A50D63C(v74, &v61, &unk_27EF50520, &unk_24A633B10);
  v20 = *(&v62 + 1);
  if (*(&v62 + 1))
  {
    v21 = v63;
    sub_24A50A204(&v61, *(&v62 + 1));
    (*(v21 + 16))(v20, v21);
    sub_24A508C54(&v61);
  }

  else
  {
    sub_24A5AE970(&v61);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  v58 = v10;
  v22 = a1[3];
  v23 = a1[4];
  sub_24A50A204(a1, v22);
  (*(v23 + 24))(v72, v22, v23);
  v54 = v72[0];
  v53 = v72[1];
  v52 = v72[2];
  v51 = v73;
  sub_24A50D63C(v74, &v61, &unk_27EF50520, &unk_24A633B10);
  v24 = *(&v62 + 1);
  v57 = v14;
  if (*(&v62 + 1))
  {
    v25 = v63;
    sub_24A50A204(&v61, *(&v62 + 1));
    (*(v25 + 32))(v69, v24, v25);
    v26 = v69[0];
    sub_24A508C54(&v61);
  }

  else
  {
    sub_24A5AE970(&v61);
    v26 = 4;
  }

  v27 = v9;
  sub_24A50D63C(v74, v69, &unk_27EF50520, &unk_24A633B10);
  v28 = v70;
  if (v70)
  {
    v29 = v71;
    sub_24A50A204(v69, v70);
    (*(v29 + 24))(&v61, v28, v29);
    v49 = v62;
    v50 = v61;
    v30 = v63;
    sub_24A508C54(v69);
  }

  else
  {
    sub_24A5AE970(v69);
    v30 = 0;
    v50 = 0u;
    v49 = 0u;
  }

  v31 = a1[3];
  v32 = a1[4];
  sub_24A50A204(a1, v31);
  v33 = (*(v32 + 32))(v31, v32);
  v34 = a1[3];
  v35 = a1[4];
  sub_24A50A204(a1, v34);
  (*(v35 + 40))(&v61, v34, v35);
  v36 = v55;
  *a4 = v56;
  a4[1] = v36;
  v37 = type metadata accessor for FMFindableGroupItem(0);
  (*(v11 + 32))(a4 + v37[5], v57, v58);
  sub_24A5AEA48(v27, a4 + v37[9]);
  v38 = a4 + v37[6];
  v39 = v53;
  *v38 = v54;
  *(v38 + 1) = v39;
  *(v38 + 2) = v52;
  v38[24] = v51;
  *(a4 + v37[10]) = v26;
  v40 = a4 + v37[11];
  v41 = v49;
  *v40 = v50;
  *(v40 + 1) = v41;
  v40[32] = v30;
  v42 = (a4 + v37[8]);
  v43 = v60;
  *v42 = v59;
  v42[1] = v43;
  *(a4 + v37[7]) = v33;
  v44 = a4 + v37[12];
  v45 = v66;
  *(v44 + 4) = v65;
  *(v44 + 5) = v45;
  *(v44 + 6) = v67;
  *(v44 + 14) = v68;
  v46 = v62;
  *v44 = v61;
  *(v44 + 1) = v46;
  v47 = v64;
  *(v44 + 2) = v63;
  *(v44 + 3) = v47;
  sub_24A5AE970(v74);
  return sub_24A508C54(a1);
}

uint64_t sub_24A5ADFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = *(v3 + 32);
  return sub_24A5AE92C(v4, v5);
}

uint64_t sub_24A5AE02C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_24A5AE070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 48);
  v4 = *(v3 + 64);
  v6 = *(v3 + 96);
  v14 = *(v3 + 80);
  v5 = v14;
  v15 = v6;
  v16 = *(v3 + 112);
  v8 = *(v3 + 16);
  v13[0] = *v3;
  v7 = v13[0];
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v4;
  *(a2 + 112) = v16;
  *(a2 + 80) = v5;
  *(a2 + 96) = v6;
  *(a2 + 48) = v10;
  *(a2 + 64) = v4;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *a2 = v7;
  return sub_24A595890(v13, v12);
}

uint64_t sub_24A5AE0E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a3;
  v66 = a2;
  v6 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v56 - v8;
  v10 = sub_24A62E214();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508AE4(a1, &v68);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v82 = 0;
    memset(v81, 0, sizeof(v81));
  }

  v16 = a1[3];
  v15 = a1[4];
  sub_24A50A204(a1, v16);
  v64 = (*(*(v15 + 8) + 8))(v16);
  v63 = v17;
  v19 = a1[3];
  v18 = a1[4];
  sub_24A50A204(a1, v19);
  v20 = *(*(v18 + 8) + 16);
  v65 = v14;
  v20(v19);
  sub_24A50D63C(v81, &v68, &unk_27EF50520, &unk_24A633B10);
  v21 = *(&v69 + 1);
  if (*(&v69 + 1))
  {
    v22 = v70;
    sub_24A50A204(&v68, *(&v69 + 1));
    (*(v22 + 16))(v21, v22);
    sub_24A508C54(&v68);
  }

  else
  {
    sub_24A5AE970(&v68);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  v24 = a1[3];
  v23 = a1[4];
  sub_24A50A204(a1, v24);
  (*(*(v23 + 8) + 24))(v79, v24);
  v62 = v79[0];
  v61 = v79[1];
  v60 = v79[2];
  v59 = v80;
  sub_24A50D63C(v81, &v68, &unk_27EF50520, &unk_24A633B10);
  v25 = *(&v69 + 1);
  if (*(&v69 + 1))
  {
    v26 = v70;
    sub_24A50A204(&v68, *(&v69 + 1));
    (*(v26 + 32))(v76, v25, v26);
    v58 = LOBYTE(v76[0]);
    sub_24A508C54(&v68);
  }

  else
  {
    sub_24A5AE970(&v68);
    v58 = 4;
  }

  sub_24A50D63C(v81, v76, &unk_27EF50520, &unk_24A633B10);
  v27 = v77;
  if (v77)
  {
    v28 = v78;
    sub_24A50A204(v76, v77);
    (*(v28 + 24))(&v68, v27, v28);
    v56 = v69;
    v57 = v68;
    v29 = v70;
    sub_24A508C54(v76);
  }

  else
  {
    sub_24A5AE970(v76);
    v29 = 0;
    v57 = 0u;
    v56 = 0u;
  }

  v31 = a1[3];
  v30 = a1[4];
  sub_24A50A204(a1, v31);
  v32 = (*(*(v30 + 8) + 32))(v31);
  v34 = a1[3];
  v33 = a1[4];
  sub_24A50A204(a1, v34);
  (*(*(v33 + 8) + 40))(&v68, v34);
  v35 = a1[3];
  v36 = a1[4];
  sub_24A50A204(a1, v35);
  v37 = (*(v36 + 16))(v35, v36);
  (*(v11 + 56))(a4, 1, 1, v10);
  v38 = type metadata accessor for FMNIFindableGroupItem(0);
  v39 = a4 + v38[5];
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  v40 = v10;
  v41 = (a4 + v38[7]);
  v42 = (a4 + v38[9]);
  v43 = v63;
  *v42 = v64;
  v42[1] = v43;
  (*(v11 + 32))(a4 + v38[10], v65, v40);
  sub_24A5AE9D8(v9, a4);
  v44 = a4 + v38[11];
  v45 = v61;
  *v44 = v62;
  *(v44 + 8) = v45;
  *(v44 + 16) = v60;
  *(v44 + 24) = v59;
  *(a4 + v38[6]) = v58;
  v46 = *(v39 + 16);
  v47 = *(v39 + 24);
  v48 = *(v39 + 32);
  sub_24A50D2B4(*v39, *(v39 + 8));
  v49 = v56;
  *v39 = v57;
  *(v39 + 16) = v49;
  *(v39 + 32) = v29;
  v50 = v67;
  *v41 = v66;
  v41[1] = v50;
  *(a4 + v38[12]) = v32;
  v51 = a4 + v38[13];
  v52 = v73;
  *(v51 + 64) = v72;
  *(v51 + 80) = v52;
  *(v51 + 96) = v74;
  *(v51 + 112) = v75;
  v53 = v69;
  *v51 = v68;
  *(v51 + 16) = v53;
  v54 = v71;
  *(v51 + 32) = v70;
  *(v51 + 48) = v54;
  *(a4 + v38[8]) = v37;
  sub_24A5AE970(v81);
  return sub_24A508C54(a1);
}

uint64_t sub_24A5AE760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = *(v3 + 32);
  return sub_24A5AE92C(v4, v5);
}

uint64_t sub_24A5AE794(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_24A5AE7D8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_24A5AE810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_24A62E214();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_24A5AE884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 24);
  *(a2 + 24) = v7;
  return sub_24A595770(v4, v5, v6, v7);
}

uint64_t sub_24A5AE8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *(v3 + 64);
  v6 = *(v3 + 96);
  v14 = *(v3 + 80);
  v5 = v14;
  v15 = v6;
  v16 = *(v3 + 112);
  v8 = *(v3 + 16);
  v13[0] = *v3;
  v7 = v13[0];
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v4;
  *(a2 + 112) = v16;
  *(a2 + 80) = v5;
  *(a2 + 96) = v6;
  *(a2 + 48) = v10;
  *(a2 + 64) = v4;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *a2 = v7;
  return sub_24A595890(v13, v12);
}

uint64_t sub_24A5AE92C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24A5AE970(uint64_t a1)
{
  v2 = sub_24A508FA4(&unk_27EF50520, &unk_24A633B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A5AE9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5AEA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_24A5AEAB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24A5AEAE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 99))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 98);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24A5AEB2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 99) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 99) = 0;
    }

    if (a2)
    {
      *(result + 98) = -a2;
    }
  }

  return result;
}

double sub_24A5AEBA8@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 name];
  v4 = sub_24A62EC14();
  v6 = v5;

  v7 = v4 == 0x646E756F66 && v6 == 0xE500000000000000;
  if (v7 || (sub_24A62F634() & 1) != 0)
  {

    v8 = 196608;
  }

  else
  {
    v10 = v4 == 1701995880 && v6 == 0xE400000000000000;
    if (v10 || (sub_24A62F634() & 1) != 0)
    {

      v8 = 0x20000;
    }

    else
    {
      v11 = v4 == 1918985582 && v6 == 0xE400000000000000;
      if (v11 || (sub_24A62F634() & 1) != 0)
      {

        v8 = 0x10000;
      }

      else if (v4 == 7496038 && v6 == 0xE300000000000000)
      {

        v8 = 0;
      }

      else
      {
        v12 = sub_24A62F634();

        if (v12)
        {
          v8 = 0;
        }

        else
        {
          v8 = -65536;
        }
      }
    }
  }

  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = v8;
  *(a1 + 98) = BYTE2(v8);
  return result;
}

uint64_t sub_24A5AED58(uint64_t a1)
{
  v2 = *(v1 + 98);
  if (v2 <= 1)
  {
    v3 = *(a1 + 98) == 255;
    v4 = ((*(a1 + 96) | (*(a1 + 98) << 16)) >> 13) & 0x7F8;
    if (*(v1 + 98))
    {
      v5 = 33686273;
    }

    else
    {
      v5 = 33686019;
    }
  }

  else if (v2 == 2)
  {
    v3 = *(a1 + 98) == 255;
    v4 = ((*(a1 + 96) | (*(a1 + 98) << 16)) >> 13) & 0x7F8;
    v5 = 33751297;
  }

  else
  {
    if (v2 != 3)
    {
      return 0;
    }

    v3 = *(a1 + 98) == 255;
    v4 = ((*(a1 + 96) | (*(a1 + 98) << 16)) >> 13) & 0x7F8;
    v5 = 50397441;
  }

  v7 = v5 >> v4;
  if (v3)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_24A5AEE40()
{
  v1 = *(v0 + 98);
  if (v1 <= 1)
  {
    if (*(v0 + 98))
    {
      v3 = 1918985582;
    }

    else
    {
      v3 = 7496038;
    }

    if (*(v0 + 98))
    {
      v2 = 0xE400000000000000;
    }

    else
    {
      v2 = 0xE300000000000000;
    }
  }

  else if (v1 == 2)
  {
    v2 = 0xE400000000000000;
    v3 = 1701995880;
  }

  else if (v1 == 3)
  {
    v2 = 0xE500000000000000;
    v3 = 0x646E756F66;
  }

  else
  {
    if (v0[2] == 1)
    {
      v4 = 0xE300000000000000;
      v5 = 7104878;
    }

    else
    {
      v9 = *v0;
      v10 = v0[1];
      v11 = v0[2];
      v13 = *(v0 + 5);
      v14 = *(v0 + 7);
      *v15 = *(v0 + 9);
      *&v15[10] = *(v0 + 82);
      v12 = *(v0 + 3);
      v5 = sub_24A51A740();
      v4 = v6;
    }

    MEMORY[0x24C21A5D0](v5, v4);

    v3 = 0x3A65736963657270;
    v2 = 0xE900000000000020;
  }

  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24A633830;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_24A508FEC();
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;

  return sub_24A62EC24();
}

uint64_t sub_24A5AEFD8(void *a1, int a2)
{
  v35 = a2;
  v3 = sub_24A508FA4(&qword_27EF51258, &qword_24A638F08);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = sub_24A508FA4(&qword_27EF51260, &qword_24A638F10);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = sub_24A508FA4(&qword_27EF51268, &qword_24A638F18);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = sub_24A508FA4(&qword_27EF51270, &qword_24A638F20);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = sub_24A508FA4(&qword_27EF51278, &qword_24A638F28);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A5B1330();
  sub_24A62F774();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_24A5B13D8();
      v12 = v29;
      sub_24A62F564();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_24A5B1384();
      v12 = v32;
      sub_24A62F564();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_24A5B142C();
    sub_24A62F564();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_24A5B1480();
  sub_24A62F564();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_24A5AF414()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x656C62617473;
  if (*v0 == 2)
  {
    v2 = 0x6973616572636564;
  }

  if (*v0)
  {
    v1 = 0x6973616572636E69;
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

uint64_t sub_24A5AF488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A5B03F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A5AF4B0(uint64_t a1)
{
  v2 = sub_24A5B1330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AF4EC(uint64_t a1)
{
  v2 = sub_24A5B1330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5AF528(uint64_t a1)
{
  v2 = sub_24A5B13D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AF564(uint64_t a1)
{
  v2 = sub_24A5B13D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5AF5A0(uint64_t a1)
{
  v2 = sub_24A5B142C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AF5DC(uint64_t a1)
{
  v2 = sub_24A5B142C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5AF618(uint64_t a1)
{
  v2 = sub_24A5B1384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AF654(uint64_t a1)
{
  v2 = sub_24A5B1384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5AF690(uint64_t a1)
{
  v2 = sub_24A5B1480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AF6CC(uint64_t a1)
{
  v2 = sub_24A5B1480();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24A5AF708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A5B0558(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_24A5AF750(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x65636E6174736964;
  v5 = 0x800000024A63CEA0;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001BLL;
    v3 = 0x800000024A63CEA0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701869940;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x65636E6174736964;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A62F634();
  }

  return v11 & 1;
}

uint64_t sub_24A5AF844()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A5AF8E4()
{
  *v0;
  *v0;
  sub_24A62EC74();
}

uint64_t sub_24A5AF970()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A5AFA0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A5B0B98();
  *a2 = result;
  return result;
}

void sub_24A5AFA3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x65636E6174736964;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001BLL;
    v4 = 0x800000024A63CEA0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A5AFA98()
{
  v1 = 0x65636E6174736964;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_24A5AFAF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A5B0B98();
  *a1 = result;
  return result;
}

uint64_t sub_24A5AFB18(uint64_t a1)
{
  v2 = sub_24A5B0F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AFB54(uint64_t a1)
{
  v2 = sub_24A5B0F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5AFB90(void *a1)
{
  v3 = v1;
  v5 = sub_24A508FA4(&qword_27EF511C8, &unk_24A638CB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A5B0F88();
  sub_24A62F774();
  v11 = *v3;
  v12 = *(v3 + 98);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      LOBYTE(v17) = 0;
    }

    else
    {
      if (v12 != 3)
      {
        LOBYTE(v17) = 0;
        sub_24A62F5C4();
        if (!v2)
        {
          v17 = v11;
          v13 = *(v3 + 7);
          v20 = *(v3 + 5);
          v21 = v13;
          v22[0] = *(v3 + 9);
          *(v22 + 10) = *(v3 + 82);
          v14 = *(v3 + 3);
          v18 = *(v3 + 1);
          v19 = v14;
          v23 = 1;
          sub_24A508FA4(&qword_27EF4F650, &unk_24A633E00);
          sub_24A5B1084();
LABEL_15:
          sub_24A62F5D4();
          return (*(v6 + 8))(v9, v5);
        }

        return (*(v6 + 8))(v9, v5);
      }

      LOBYTE(v17) = 0;
    }

    goto LABEL_8;
  }

  if (!*(v3 + 98))
  {
    LOBYTE(v17) = 0;
LABEL_8:
    sub_24A62F5C4();
    if (!v2)
    {
      v17 = v11;
      v23 = 2;
LABEL_14:
      sub_24A5B115C();
      goto LABEL_15;
    }

    return (*(v6 + 8))(v9, v5);
  }

  LOBYTE(v17) = 0;
  sub_24A62F5C4();
  if (!v2)
  {
    v17 = v11;
    v23 = 2;
    goto LABEL_14;
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24A5AFE14()
{
  v1 = *v0;
  v2 = *(v0 + 98);
  if (v2 <= 1)
  {
    if (*(v0 + 98))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else if (v2 == 2)
  {
    v3 = 3;
  }

  else
  {
    if (v2 != 3)
    {
      v4 = *(v0 + 8);
      v5 = *(v0 + 16);
      MEMORY[0x24C21B040](5);
      if (v5 == 1)
      {
        return sub_24A62F734();
      }

      v9 = *(v0 + 40);
      v10 = *(v0 + 56);
      *v11 = *(v0 + 72);
      *&v11[10] = *(v0 + 82);
      v8 = *(v0 + 24);
      sub_24A62F734();
      return sub_24A51AF98();
    }

    v3 = 4;
  }

  MEMORY[0x24C21B040](v3);
  v7 = 0.0;
  if (v1 != 0.0)
  {
    v7 = v1;
  }

  return MEMORY[0x24C21B060](*&v7);
}

uint64_t sub_24A5AFF24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v12[0] = v2;
  *(v12 + 15) = *(a1 + 95);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  *&v14[15] = *(a2 + 95);
  v13[4] = v8;
  *v14 = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_24A5B00E4(v11, v13) & 1;
}

uint64_t sub_24A5AFF90()
{
  sub_24A62F714();
  sub_24A5AFE14();
  return sub_24A62F754();
}

uint64_t sub_24A5AFFD4()
{
  sub_24A62F714();
  sub_24A5AFE14();
  return sub_24A62F754();
}

__n128 sub_24A5B0010@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A5B0BE4(a1, v7);
  if (!v2)
  {
    v5 = *v8;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 95) = *&v8[15];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_24A5B0090()
{
  result = qword_27EF511A0;
  if (!qword_27EF511A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511A0);
  }

  return result;
}

uint64_t sub_24A5B00E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 98);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = *(a2 + 98) == 2;
      return v3 & 1;
    }

    if (v2 == 3)
    {
      v3 = *(a2 + 98) == 3;
      return v3 & 1;
    }

    if (*(a2 + 98) != 4)
    {
      v3 = 0;
      return v3 & 1;
    }

    v4 = *a1;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    v8 = *(a1 + 40);
    v9 = *(a1 + 72);
    v42 = *(a1 + 56);
    v43[0] = v9;
    *(v43 + 10) = *(a1 + 82);
    v40 = *(a1 + 24);
    v41 = v8;
    *&v39[6] = *a2;
    if (v6 == 1)
    {
      if (v7 == 1)
      {
        *&v24 = v4;
        v3 = 1;
        *(&v24 + 1) = v5;
        *v25 = 1;
        *&v25[24] = *(a1 + 40);
        *&v25[40] = *(a1 + 56);
        *&v25[56] = *(a1 + 72);
        *&v25[66] = *(a1 + 82);
        *&v25[8] = *(a1 + 24);
        sub_24A55B388(a1, &v26);
        sub_24A55B388(a2, &v26);
        v11 = &v24;
LABEL_17:
        sub_24A50D6A4(v11, &qword_27EF4F650, &unk_24A633E00);
        return v3 & 1;
      }
    }

    else if (v7 != 1)
    {
      v22 = *a2;
      *v23 = v7;
      *&v23[8] = *(a2 + 24);
      *&v23[24] = *(a2 + 40);
      *&v23[66] = *(a2 + 82);
      *&v23[56] = *(a2 + 72);
      *&v23[40] = *(a2 + 56);
      v24 = v22;
      *v25 = *v23;
      *&v25[80] = *&v23[80];
      *&v25[48] = *&v23[48];
      *&v25[64] = *&v23[64];
      *&v25[16] = *&v23[16];
      *&v25[32] = *&v23[32];
      v16 = *(a1 + 24);
      v17 = *(a1 + 40);
      v18 = *(a1 + 56);
      *(v48 + 10) = *(a1 + 82);
      v19 = *(a1 + 72);
      v47 = v18;
      v48[0] = v19;
      v45 = v16;
      v46 = v17;
      v44[0] = v4;
      v44[1] = v5;
      v44[2] = v6;
      sub_24A55B388(a1, &v26);
      sub_24A55B388(a2, &v26);
      v3 = sub_24A51B4E4(v44, &v24);
      sub_24A50D6A4(&v22, &qword_27EF4F650, &unk_24A633E00);
      v26 = v4;
      v27 = v5;
      v28 = v6;
      v30 = v41;
      v31 = v42;
      *v32 = v43[0];
      *&v32[10] = *(v43 + 10);
      v29 = v40;
      v11 = &v26;
      goto LABEL_17;
    }

    v26 = v4;
    v27 = v5;
    v28 = v6;
    v30 = *(a1 + 40);
    v31 = *(a1 + 56);
    *v32 = *(a1 + 72);
    *&v32[10] = *(a1 + 82);
    v29 = *(a1 + 24);
    *v33 = *v39;
    *&v33[14] = *&v39[14];
    v34 = v7;
    v12 = *(a2 + 24);
    *&v38[10] = *(a2 + 82);
    v13 = *(a2 + 72);
    v37 = *(a2 + 56);
    *v38 = v13;
    v14 = *(a2 + 40);
    v35 = v12;
    v36 = v14;
    sub_24A55B388(a1, &v24);
    sub_24A55B388(a2, &v24);
    sub_24A50D6A4(&v26, &qword_27EF4F648, &qword_24A633DF8);
    v3 = 0;
    return v3 & 1;
  }

  if (*(a1 + 98))
  {
    v3 = *(a2 + 98) == 1;
  }

  else
  {
    v3 = *(a2 + 98) == 0;
  }

  return v3 & 1;
}

uint64_t sub_24A5B03F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24A62F634() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973616572636E69 && a2 == 0xEA0000000000676ELL || (sub_24A62F634() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973616572636564 && a2 == 0xEA0000000000676ELL || (sub_24A62F634() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C62617473 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24A62F634();

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

void *sub_24A5B0558(uint64_t *a1)
{
  v46 = sub_24A508FA4(&qword_27EF51208, &qword_24A638ED8);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v38 - v3;
  v47 = sub_24A508FA4(&qword_27EF51210, &qword_24A638EE0);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - v5;
  v6 = sub_24A508FA4(&qword_27EF51218, &qword_24A638EE8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = sub_24A508FA4(&qword_27EF51220, &qword_24A638EF0);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = sub_24A508FA4(&qword_27EF51228, &qword_24A638EF8);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  sub_24A50A204(a1, v20);
  sub_24A5B1330();
  v21 = v50;
  sub_24A62F764();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_24A62F554();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_24A51B47C();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_24A5B142C();
        v36 = v40;
        sub_24A62F4C4();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_24A5B1480();
        v29 = v40;
        sub_24A62F4C4();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          sub_24A508C54(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_24A5B13D8();
      v35 = v40;
      sub_24A62F4C4();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_24A5B1384();
      v37 = v40;
      sub_24A62F4C4();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_24A62F3C4();
  swift_allocError();
  v15 = v31;
  v32 = *(sub_24A508FA4(&qword_27EF4F758, &qword_24A638F00) + 48);
  *v15 = &type metadata for FMFindingTrend;
  sub_24A62F4D4();
  sub_24A62F3B4();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x277D84160], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_24A508C54(v51);
  return v15;
}

uint64_t sub_24A5B0B98()
{
  v0 = sub_24A62F4B4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A5B0BE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A508FA4(&qword_27EF511A8, &qword_24A638CA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A5B0F88();
  sub_24A62F764();
  if (v2)
  {
    return sub_24A508C54(a1);
  }

  LOBYTE(v26) = 0;
  v11 = sub_24A62F534();
  v33 = 2;
  sub_24A5B0FDC();
  v12 = v9;
  sub_24A62F544();
  *&v13 = v34;
  if (v11 <= 2)
  {
    v24 = v13;
    if (v11 == 1)
    {
      (*(v6 + 8))(v9, v5);
      v15 = 0;
      goto LABEL_15;
    }

    if (v11 == 2)
    {
      (*(v6 + 8))(v9, v5);
      v15 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    switch(v11)
    {
      case 3:
        v24 = v13;
        (*(v6 + 8))(v9, v5);
        v15 = 2;
        goto LABEL_15;
      case 4:
        v24 = v13;
        (*(v6 + 8))(v9, v5);
        v15 = 3;
LABEL_15:
        result = sub_24A508C54(a1);
        v16 = v23;
        *a2 = v24;
        *(a2 + 16) = v16;
        v17 = v21;
        *(a2 + 32) = v22;
        *(a2 + 48) = v17;
        v18 = v19;
        *(a2 + 64) = v20;
        *(a2 + 80) = v18;
        *(a2 + 96) = v12;
        *(a2 + 98) = v15;
        return result;
      case 5:
        v25 = 1;
        sub_24A5B1030();
        sub_24A62F544();
        v23 = v27;
        v24 = v26;
        v21 = v29;
        v22 = v28;
        v19 = v31;
        v20 = v30;
        v12 = v32;
        (*(v6 + 8))(v9, v5);
        v15 = 4;
        goto LABEL_15;
    }
  }

  result = sub_24A62F444();
  __break(1u);
  return result;
}

unint64_t sub_24A5B0F88()
{
  result = qword_27EF511B0;
  if (!qword_27EF511B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511B0);
  }

  return result;
}

unint64_t sub_24A5B0FDC()
{
  result = qword_27EF511B8;
  if (!qword_27EF511B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511B8);
  }

  return result;
}

unint64_t sub_24A5B1030()
{
  result = qword_27EF511C0;
  if (!qword_27EF511C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511C0);
  }

  return result;
}

unint64_t sub_24A5B1084()
{
  result = qword_27EF511D0;
  if (!qword_27EF511D0)
  {
    sub_24A50E1E0(&qword_27EF4F650, &unk_24A633E00);
    sub_24A5B1108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511D0);
  }

  return result;
}

unint64_t sub_24A5B1108()
{
  result = qword_27EF511D8;
  if (!qword_27EF511D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511D8);
  }

  return result;
}

unint64_t sub_24A5B115C()
{
  result = qword_27EF511E0;
  if (!qword_27EF511E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511E0);
  }

  return result;
}

unint64_t sub_24A5B11D4()
{
  result = qword_27EF511E8;
  if (!qword_27EF511E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511E8);
  }

  return result;
}

unint64_t sub_24A5B122C()
{
  result = qword_27EF511F0;
  if (!qword_27EF511F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511F0);
  }

  return result;
}

unint64_t sub_24A5B1284()
{
  result = qword_27EF511F8;
  if (!qword_27EF511F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511F8);
  }

  return result;
}

unint64_t sub_24A5B12DC()
{
  result = qword_27EF51200;
  if (!qword_27EF51200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51200);
  }

  return result;
}

unint64_t sub_24A5B1330()
{
  result = qword_27EF51230;
  if (!qword_27EF51230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51230);
  }

  return result;
}

unint64_t sub_24A5B1384()
{
  result = qword_27EF51238;
  if (!qword_27EF51238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51238);
  }

  return result;
}

unint64_t sub_24A5B13D8()
{
  result = qword_27EF51240;
  if (!qword_27EF51240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51240);
  }

  return result;
}

unint64_t sub_24A5B142C()
{
  result = qword_27EF51248;
  if (!qword_27EF51248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51248);
  }

  return result;
}

unint64_t sub_24A5B1480()
{
  result = qword_27EF51250;
  if (!qword_27EF51250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51250);
  }

  return result;
}

unint64_t sub_24A5B1530()
{
  result = qword_27EF51280;
  if (!qword_27EF51280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51280);
  }

  return result;
}

unint64_t sub_24A5B1588()
{
  result = qword_27EF51288;
  if (!qword_27EF51288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51288);
  }

  return result;
}

unint64_t sub_24A5B15E0()
{
  result = qword_27EF51290;
  if (!qword_27EF51290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51290);
  }

  return result;
}

unint64_t sub_24A5B1638()
{
  result = qword_27EF51298;
  if (!qword_27EF51298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51298);
  }

  return result;
}

unint64_t sub_24A5B1690()
{
  result = qword_27EF512A0;
  if (!qword_27EF512A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512A0);
  }

  return result;
}

unint64_t sub_24A5B16E8()
{
  result = qword_27EF512A8;
  if (!qword_27EF512A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512A8);
  }

  return result;
}

unint64_t sub_24A5B1740()
{
  result = qword_27EF512B0;
  if (!qword_27EF512B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512B0);
  }

  return result;
}

unint64_t sub_24A5B1798()
{
  result = qword_27EF512B8;
  if (!qword_27EF512B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512B8);
  }

  return result;
}

unint64_t sub_24A5B17F0()
{
  result = qword_27EF512C0;
  if (!qword_27EF512C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512C0);
  }

  return result;
}

unint64_t sub_24A5B1848()
{
  result = qword_27EF512C8;
  if (!qword_27EF512C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512C8);
  }

  return result;
}

unint64_t sub_24A5B18A0()
{
  result = qword_27EF512D0;
  if (!qword_27EF512D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512D0);
  }

  return result;
}

double sub_24A5B18FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget);
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget + 8))
  {
    v2 = 1.79769313e308;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget);
  }

  v3 = v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
  swift_beginAccess();
  v4 = v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  if (*(v3 + 280) + v5 == 1.79769313e308)
  {
    sub_24A55C6B4(v2);
    *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v5 = *(v4 + 40);
  }

  result = v2 - v5;
  *(v3 + 280) = result;
  *(v3 + 240) = result;
  *(v3 + 248) = 0;
  return result;
}

BOOL sub_24A5B19C4()
{
  v1 = (v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  v2 = (v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  if (v1[35] + v3 == 1.79769313e308)
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) == 1)
  {
    memcpy(__dst, v1, sizeof(__dst));
    if (sub_24A55C180() && vabdd_f64(*v2, v3) <= v2[6])
    {
      return fabs(v2[1]) <= v2[7];
    }
  }

  return 0;
}

id sub_24A5B1AD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFFluidSpring();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_24A5B1B3C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = objc_allocWithZone(type metadata accessor for FMPFFluidSpring());
  v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
  v13 = &v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget];
  *v14 = 0;
  v14[8] = 1;
  v15 = sub_24A55C3F8(0.0);
  v16 = v15;
  if (a6)
  {
    v17 = 0.5;
  }

  else
  {
    v17 = *&a5;
  }

  v18 = (v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse);
  *v18 = v17;
  *(v18 + 8) = 0;
  v19 = (v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v20 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v21 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 8);
  v22 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16);
  v23 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 24);
  *v19 = xmmword_24A639330;
  v19[2] = v17;
  v19[3] = 0.0;
  sub_24A55C5A0(v20, v21, v22, v23);
  if (a2)
  {
    v24 = 1.79769313e308;
  }

  else
  {
    v24 = *&a1;
  }

  v25 = (v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  *v25 = v24;
  v26 = (v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  v27 = *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  v28 = v25[35] + v27;
  v29 = OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold;
  if (vabdd_f64(v28, v24 + *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v30 = v24 + *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v30 = v25[35] + v27;
  }

  if (v28 == 1.79769313e308)
  {
    sub_24A55C6B4(v30);
    *(v16 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v27 = v26[5];
  }

  v31 = v30 - v27;
  v25[35] = v31;
  v25[30] = v31;
  v25[31] = 0.0;
  v32 = *&a3;
  if (a4)
  {
    v32 = 0.0;
  }

  *(v16 + v29) = v32;
  v25[44] = v32;
  v26[6] = v32;
  *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableVelocityThreshold) = 0x3F847AE147AE147BLL;
  v25[45] = 0.01;
  v26[7] = 0.01;
  return v16;
}

void *sub_24A5B1D38(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = objc_allocWithZone(type metadata accessor for FMPFFluidSpring());
  v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
  v13 = &v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget];
  *v14 = 0;
  v14[8] = 1;
  v15 = sub_24A55C3F8(0.0);
  if (a4)
  {
    v16 = sub_24A5EB5CC(0x20000000000001);
    v17 = (vcvtd_n_f64_u64(v16, 0x35uLL) * 100.0 + 0.0) / 100.0;
    if (v16 == 0x20000000000000)
    {
      v17 = 1.0;
    }
  }

  else
  {
    v17 = *&a3;
  }

  v18 = v17 + 1.0 - v17 + 1.0 - v17;
  v19 = (v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse);
  *v19 = v18;
  *(v19 + 8) = 0;
  v20 = (v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v21 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v22 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 8);
  v23 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16);
  v24 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 24);
  *v20 = xmmword_24A639330;
  v20[2] = v18;
  v20[3] = 0.0;
  sub_24A55C5A0(v21, v22, v23, v24);
  if (a2)
  {
    v25 = 1.79769313e308;
  }

  else
  {
    v25 = *&a1;
  }

  v26 = (v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  *v26 = v25;
  v27 = (v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  v28 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  v29 = v26[35] + v28;
  v30 = OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold;
  if (vabdd_f64(v29, v25 + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v31 = v25 + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v31 = v26[35] + v28;
  }

  if (v29 == 1.79769313e308)
  {
    sub_24A55C6B4(v31);
    *(v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v28 = v27[5];
  }

  v32 = v31 - v28;
  v26[35] = v32;
  v26[30] = v32;
  v26[31] = 0.0;
  v33 = *&a5;
  if (a6)
  {
    v33 = 0.0;
  }

  *(v15 + v30) = v33;
  v26[44] = v33;
  v27[6] = v33;
  *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableVelocityThreshold) = 0x3F847AE147AE147BLL;
  v26[45] = 0.01;
  v27[7] = 0.01;
  return v15;
}

void *sub_24A5B1FA4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, __n128 a6)
{
  v11 = objc_allocWithZone(type metadata accessor for FMPFFluidSpring());
  v11[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
  v12 = &v11[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v11[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget];
  *v13 = 0;
  v13[8] = 1;
  v14 = sub_24A55C3F8(0.0);
  v15 = v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse;
  *v15 = a5;
  v15[8] = 0;
  v16 = (v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v17 = *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v18 = *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 8);
  v19 = *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16);
  v20 = *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 24);
  *v16 = xmmword_24A639330;
  v16[1] = a6;
  sub_24A55C5A0(v17, v18, v19, v20);
  if (a2)
  {
    v21 = 1.79769313e308;
  }

  else
  {
    v21 = *&a1;
  }

  v22 = (v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  *v22 = v21;
  v23 = (v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  v24 = *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  v25 = v22[35] + v24;
  v26 = OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold;
  if (vabdd_f64(v25, v21 + *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v27 = v21 + *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v27 = v22[35] + v24;
  }

  if (v25 == 1.79769313e308)
  {
    sub_24A55C6B4(v27);
    *(v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v24 = v23[5];
  }

  v28 = v27 - v24;
  v22[35] = v28;
  v22[30] = v28;
  v22[31] = 0.0;
  v29 = *&a3;
  if (a4)
  {
    v29 = 0.0;
  }

  *(v14 + v26) = v29;
  v22[44] = v29;
  v23[6] = v29;
  *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableVelocityThreshold) = 0x3F847AE147AE147BLL;
  v22[45] = 0.01;
  v23[7] = 0.01;
  return v14;
}

__n128 sub_24A5B2184(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24A5B21A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24A5B21E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24A5B224C()
{
  v0 = sub_24A62EBE4();
  v1 = objc_opt_self();
  v2 = [v1 fontWithName:v0 size:14.0];

  v3 = *MEMORY[0x277D76968];
  if (!v2)
  {
    v4 = v3;
    v2 = [v1 preferredFontForTextStyle_];
  }

  v5 = v3;
  v6 = [v1 preferredFontForTextStyle_];

  v7 = sub_24A59679C(2);
  *&xmmword_27EF5C618 = v2;
  *(&xmmword_27EF5C618 + 1) = v7;
  xmmword_27EF5C628 = xmmword_24A639390;
  *&xmmword_27EF5C638 = 0x4020000000000000;
  *(&xmmword_27EF5C638 + 1) = &unk_285D9F1F0;
  qword_27EF5C648 = &unk_285D9F240;
  result = 0.75;
  unk_27EF5C650 = xmmword_24A6393A0;
  qword_27EF5C660 = 0x4010000000000000;
  return result;
}

uint64_t sub_24A5B238C(void *a1, int a2)
{
  v22 = a2;
  v23 = a2;
  v3 = sub_24A508FA4(&qword_27EF51328, &qword_24A639528);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = sub_24A508FA4(&qword_27EF51330, &qword_24A639530);
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = sub_24A508FA4(&qword_27EF51338, &qword_24A639538);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  v16 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A5B323C();
  sub_24A62F774();
  if (v23 == 2)
  {
    v25 = 1;
    sub_24A5B3290();
    sub_24A62F564();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v24 = 0;
    sub_24A5B32E4();
    sub_24A62F564();
    sub_24A62F594();
    (*(v19 + 8))(v10, v7);
  }

  return (*(v12 + 8))(v15, v11);
}

unint64_t sub_24A5B268C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_24A5B26C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000014 && 0x800000024A63CFB0 == a2;
  if (v5 || (sub_24A62F634() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A641550 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A62F634();

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

uint64_t sub_24A5B27AC(uint64_t a1)
{
  v2 = sub_24A5B323C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5B27E8(uint64_t a1)
{
  v2 = sub_24A5B323C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5B2824(uint64_t a1)
{
  v2 = sub_24A5B3290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5B2860(uint64_t a1)
{
  v2 = sub_24A5B3290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5B28B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A62F634();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A5B2948(uint64_t a1)
{
  v2 = sub_24A5B32E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5B2984(uint64_t a1)
{
  v2 = sub_24A5B32E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5B29C0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t sub_24A5B29F8()
{
  v1 = *v0;
  sub_24A62F714();
  if (v1 == 2)
  {
    MEMORY[0x24C21B040](1);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    sub_24A62F734();
  }

  return sub_24A62F754();
}

uint64_t sub_24A5B2A60()
{
  if (*v0 == 2)
  {
    return MEMORY[0x24C21B040](1);
  }

  MEMORY[0x24C21B040](0);
  return sub_24A62F734();
}

uint64_t getEnumTagSinglePayload for FMFindingConvergenceHint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMFindingConvergenceHint(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24A5B2C10(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24A5B2C2C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_24A5B2C58()
{
  result = qword_27EF512F0;
  if (!qword_27EF512F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512F0);
  }

  return result;
}

uint64_t sub_24A5B2CAC()
{
  v1 = *v0;
  sub_24A62F714();
  if (v1 == 2)
  {
    MEMORY[0x24C21B040](1);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    sub_24A62F734();
  }

  return sub_24A62F754();
}

uint64_t sub_24A5B2D10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A5B2D58(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_24A5B2D58(uint64_t *a1)
{
  v34 = sub_24A508FA4(&qword_27EF512F8, &qword_24A639508);
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v4 = &v33 - v3;
  v5 = sub_24A508FA4(&qword_27EF51300, &qword_24A639510);
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = sub_24A508FA4(&qword_27EF51308, &unk_24A639518);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v38 = a1;
  v16 = sub_24A50A204(a1, v15);
  sub_24A5B323C();
  v17 = v37;
  sub_24A62F764();
  if (!v17)
  {
    v33 = v5;
    v18 = v36;
    v37 = v10;
    v19 = sub_24A62F554();
    v20 = (2 * *(v19 + 16)) | 1;
    v39 = v19;
    v40 = v19 + 32;
    v41 = 0;
    v42 = v20;
    v21 = sub_24A51B4B0();
    if (v21 == 2 || v41 != v42 >> 1)
    {
      v16 = v13;
      v23 = v9;
      v24 = sub_24A62F3C4();
      swift_allocError();
      v26 = v25;
      v27 = *(sub_24A508FA4(&qword_27EF4F758, &qword_24A638F00) + 48);
      *v26 = &type metadata for FMFindingConvergenceHint;
      sub_24A62F4D4();
      sub_24A62F3B4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v37 + 8))(v16, v23);
      swift_unknownObjectRelease();
    }

    else if (v21)
    {
      v43 = 1;
      sub_24A5B3290();
      sub_24A62F4C4();
      v22 = v37;
      (*(v18 + 8))(v4, v34);
      (*(v22 + 8))(v13, v9);
      swift_unknownObjectRelease();
      v16 = 2;
    }

    else
    {
      v43 = 0;
      sub_24A5B32E4();
      v29 = v8;
      sub_24A62F4C4();
      v30 = v37;
      v31 = v33;
      v32 = sub_24A62F504();
      (*(v35 + 8))(v29, v31);
      (*(v30 + 8))(v13, v9);
      swift_unknownObjectRelease();
      v16 = v32 & 1;
    }
  }

  sub_24A508C54(v38);
  return v16;
}

unint64_t sub_24A5B323C()
{
  result = qword_27EF51310;
  if (!qword_27EF51310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51310);
  }

  return result;
}

unint64_t sub_24A5B3290()
{
  result = qword_27EF51318;
  if (!qword_27EF51318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51318);
  }

  return result;
}

unint64_t sub_24A5B32E4()
{
  result = qword_27EF51320;
  if (!qword_27EF51320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51320);
  }

  return result;
}

unint64_t sub_24A5B336C()
{
  result = qword_27EF51340;
  if (!qword_27EF51340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51340);
  }

  return result;
}

unint64_t sub_24A5B33C4()
{
  result = qword_27EF51348;
  if (!qword_27EF51348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51348);
  }

  return result;
}

unint64_t sub_24A5B341C()
{
  result = qword_27EF51350;
  if (!qword_27EF51350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51350);
  }

  return result;
}

unint64_t sub_24A5B3474()
{
  result = qword_27EF51358;
  if (!qword_27EF51358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51358);
  }

  return result;
}

unint64_t sub_24A5B34CC()
{
  result = qword_27EF51360;
  if (!qword_27EF51360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51360);
  }

  return result;
}

unint64_t sub_24A5B3524()
{
  result = qword_27EF51368;
  if (!qword_27EF51368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51368);
  }

  return result;
}

unint64_t sub_24A5B357C()
{
  result = qword_27EF51370;
  if (!qword_27EF51370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51370);
  }

  return result;
}

unint64_t sub_24A5B35D4()
{
  result = qword_27EF51378;
  if (!qword_27EF51378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51378);
  }

  return result;
}

void sub_24A5B3634(unint64_t *a1@<X8>)
{
  v2 = 0xEF65646F4D6E6F69;
  v3 = 0x74617262696C6163;
  v4 = 0x800000024A63DD60;
  if (*v1 != 2)
  {
    v4 = 0x800000024A63DD40;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000024A63DD80;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

id sub_24A5B36C8()
{
  *&xmmword_27EF5C668 = *MEMORY[0x277D76A20];
  *(&xmmword_27EF5C668 + 8) = vdupq_n_s64(0x4040000000000000uLL);
  unk_27EF5C680 = xmmword_24A639840;
  qword_27EF5C690 = 2;
  __asm { FMOV            V0.2D, #3.0 }

  xmmword_27EF5C698 = _Q0;
  xmmword_27EF5C6A8 = _Q0;
  return xmmword_27EF5C668;
}

id sub_24A5B370C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_stackView;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v6 = &v2[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_value];
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v7 = &v2[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_style];
  v8 = *(a2 + 48);
  *(v7 + 2) = *(a2 + 32);
  *(v7 + 3) = v8;
  *(v7 + 4) = *(a2 + 64);
  v9 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 1) = v9;
  *&v2[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_findables] = a1;
  if (*(a1 + 16))
  {
    sub_24A508AE4(a1 + 32, v18);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  swift_beginAccess();
  sub_24A5B60F0(a2, v17);
  sub_24A50D1D4(v18, v6);
  swift_endAccess();
  v10 = [objc_opt_self() effectWithStyle_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v2[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_platterEffectView] = v11;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FMFindingSymbolBasedPartPickerView();
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A5B4198(v13);
  sub_24A5B47A8();
  sub_24A5B4308();
  v14 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel_toggle];
  [v12 addGestureRecognizer_];

  sub_24A5B6128(a2);
  return v12;
}

uint64_t sub_24A5B3990()
{
  v1 = sub_24A62E214();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24A508FA4(&unk_27EF52480, &unk_24A633B20);
  v5 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v7 = &v44 - v6;
  v8 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v59 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  v16 = *&v0[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_findables];
  v17 = *(v16 + 16);
  v55 = v0;
  v54 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_value;
  result = swift_beginAccess();
  v51 = v17;
  if (!v17)
  {
LABEL_15:
    v39 = 0;
LABEL_18:
    v40 = *(v16 + 16);
    if (v39 >= v40)
    {
      if (!v40)
      {
        v65 = 0;
        v63 = 0u;
        v64 = 0u;
        goto LABEL_23;
      }

      v41 = v16 + 32;
    }

    else
    {
      v41 = v16 + 40 * v39 + 32;
    }

    sub_24A508AE4(v41, &v63);
LABEL_23:
    sub_24A50D63C(&v63, v60, &unk_27EF522E0, qword_24A637660);
    v42 = v55;
    v43 = v54;
    swift_beginAccess();
    sub_24A50D244(v60, v42 + v43);
    swift_endAccess();
    sub_24A5B47A8();
    sub_24A50D6A4(v60, &unk_27EF522E0, qword_24A637660);
    [v42 sendActionsForControlEvents_];
    return sub_24A50D6A4(&v63, &unk_27EF522E0, qword_24A637660);
  }

  v19 = 0;
  v20 = v16 + 32;
  v58 = (v2 + 56);
  v45 = (v2 + 32);
  v47 = (v2 + 8);
  v50 = v16;
  v48 = v7;
  v57 = v15;
  v49 = (v2 + 48);
  while (v19 < *(v16 + 16))
  {
    sub_24A508AE4(v20, &v63);
    v21 = *(&v64 + 1);
    v22 = v65;
    sub_24A50A204(&v63, *(&v64 + 1));
    (*(v22 + 16))(v21, v22);
    v23 = *v58;
    (*v58)(v15, 0, 1, v1);
    sub_24A50D63C(v55 + v54, v60, &unk_27EF522E0, qword_24A637660);
    v24 = v61;
    if (v61)
    {
      v25 = v62;
      v26 = sub_24A50A204(v60, v61);
      v56 = &v44;
      v27 = v59;
      v28 = v1;
      v29 = *(v24 - 8);
      v30 = *(v29 + 64);
      MEMORY[0x28223BE20](v26);
      v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v32);
      sub_24A50D6A4(v60, &unk_27EF522E0, qword_24A637660);
      (*(v25 + 16))(v24, v25);
      (*(v29 + 8))(v32, v24);
      v1 = v28;
      v23(v27, 0, 1, v28);
      v7 = v48;
    }

    else
    {
      sub_24A50D6A4(v60, &unk_27EF522E0, qword_24A637660);
      v23(v59, 1, 1, v1);
    }

    v33 = *(v53 + 48);
    v15 = v57;
    sub_24A50D63C(v57, v7, &unk_27EF4FEE0, &qword_24A6369F0);
    sub_24A50D63C(v59, &v7[v33], &unk_27EF4FEE0, &qword_24A6369F0);
    v34 = *v49;
    if ((*v49)(v7, 1, v1) == 1)
    {
      sub_24A50D6A4(v59, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v15, &unk_27EF4FEE0, &qword_24A6369F0);
      if (v34(&v7[v33], 1, v1) == 1)
      {
        sub_24A50D6A4(v7, &unk_27EF4FEE0, &qword_24A6369F0);
        sub_24A508C54(&v63);
        v16 = v50;
LABEL_17:
        v39 = v19 + 1;
        goto LABEL_18;
      }

      goto LABEL_4;
    }

    sub_24A50D63C(v7, v52, &unk_27EF4FEE0, &qword_24A6369F0);
    if (v34(&v7[v33], 1, v1) == 1)
    {
      sub_24A50D6A4(v59, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v15, &unk_27EF4FEE0, &qword_24A6369F0);
      (*v47)(v52, v1);
LABEL_4:
      sub_24A50D6A4(v7, &unk_27EF52480, &unk_24A633B20);
      result = sub_24A508C54(&v63);
      v16 = v50;
      goto LABEL_5;
    }

    v35 = v46;
    (*v45)(v46, &v7[v33], v1);
    sub_24A5B7014();
    v36 = v52;
    LODWORD(v56) = sub_24A62EBD4();
    v37 = *v47;
    v38 = v35;
    v15 = v57;
    (*v47)(v38, v1);
    sub_24A50D6A4(v59, &unk_27EF4FEE0, &qword_24A6369F0);
    sub_24A50D6A4(v15, &unk_27EF4FEE0, &qword_24A6369F0);
    v37(v36, v1);
    sub_24A50D6A4(v7, &unk_27EF4FEE0, &qword_24A6369F0);
    result = sub_24A508C54(&v63);
    v16 = v50;
    if (v56)
    {
      goto LABEL_17;
    }

LABEL_5:
    ++v19;
    v20 += 40;
    if (v51 == v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

id sub_24A5B4198(double a1)
{
  LODWORD(a1) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:a1];
  v2 = *&v1[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_platterEffectView];
  [v1 addSubview_];
  v3 = [v2 contentView];
  v4 = *&v1[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_stackView];
  [v3 addSubview_];

  v5 = [v2 layer];
  [v5 setCornerCurve_];

  v6 = [v2 layer];
  [v6 setMasksToBounds_];

  [v1 setOverrideUserInterfaceStyle_];
  [v4 setDirectionalLayoutMargins_];
  [v4 setLayoutMarginsRelativeArrangement_];

  return [v4 setAxis_];
}

void sub_24A5B4308()
{
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A633810;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_platterEffectView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_stackView];
  *(inited + 40) = v3;
  v4 = v2;
  v5 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v4; ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v7 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v8 = MEMORY[0x24C21ACB0](1, inited);
LABEL_7:
  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  swift_setDeallocating();
  v10 = *(inited + 16);
  swift_arrayDestroy();
  v37 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24A639850;
  v12 = [v5 leadingAnchor];
  v13 = [v4 &selRef_initWithFrame_ + 1];
  v14 = [v12 constraintEqualToAnchor_];

  *(v11 + 32) = v14;
  v15 = [v5 trailingAnchor];
  v16 = [v4 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v11 + 40) = v17;
  v18 = [v5 topAnchor];
  v19 = [v4 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v11 + 48) = v20;
  v21 = [v5 bottomAnchor];
  v22 = [v4 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v11 + 56) = v23;
  v24 = [v0 leadingAnchor];
  v25 = [v4 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v11 + 64) = v26;
  v27 = [v0 trailingAnchor];
  v28 = [v4 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v11 + 72) = v29;
  v30 = [v0 topAnchor];
  v31 = [v4 topAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v11 + 80) = v32;
  v33 = [v0 bottomAnchor];
  v34 = [v4 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v11 + 88) = v35;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v36 = sub_24A62ED54();

  [v37 activateConstraints_];
}

void sub_24A5B47A8()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_stackView] arrangedSubviews];
  sub_24A50D7EC(0, &qword_27EF513A8, 0x277D75D18);
  v3 = sub_24A62ED64();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = objc_opt_self();
  v10 = *&v1[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_style];
  v11 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v12 = [v9 preferredFontForTextStyle:v10 compatibleWithTraitCollection:v11];

  v13 = sub_24A59679C(2);
  v29 = [objc_opt_self() configurationWithFont:v13 scale:3];

  v32 = *&v1[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_findables];
  v14 = v1;

  sub_24A5B6F7C(&v32, v14);

  v15 = v32;
  v16 = v32[2];
  if (v16)
  {
    v27 = v12;
    v34 = MEMORY[0x277D84F90];
    sub_24A62F404();
    v17 = 0;
    v28 = v15[2];
    v18 = (v15 + 4);
    do
    {
      if (v28 == v17)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v17 >= v15[2])
      {
        goto LABEL_33;
      }

      sub_24A508AE4(v18, v33);
      v30 = v17;
      sub_24A508CA0(v33, v31);
      sub_24A5B518C(v17, v31, v29, v14);
      sub_24A50D6A4(&v30, &qword_27EF513B0, &qword_24A639900);
      sub_24A62F3E4();
      v19 = v15;
      v20 = *(v34 + 16);
      sub_24A62F414();
      v15 = v19;
      sub_24A62F424();
      sub_24A62F3F4();
      v18 += 40;
      ++v17;
    }

    while (v16 != v17);

    v21 = v34;
    v12 = v27;
    if (v34 >> 62)
    {
      goto LABEL_30;
    }
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_30:
      v22 = sub_24A62F464();
      if (v22)
      {
        goto LABEL_21;
      }

LABEL_31:

      return;
    }
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_31;
  }

LABEL_21:
  v23 = 0;
  while (1)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x24C21ACB0](v23, v21);
    }

    else
    {
      if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v24 = *(v21 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    v32 = v24;
    sub_24A5B59E4(&v32, v14);

    ++v23;
    if (v26 == v22)
    {
      goto LABEL_31;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);

  __break(1u);
}

uint64_t sub_24A5B4BB0(void *a1, void *a2, void *a3)
{
  v54 = a3;
  v64 = a2;
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v53 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  sub_24A508AE4(a1, v58);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
  if (swift_dynamicCast())
  {
    sub_24A508CA0(v56, v61);
    sub_24A508AE4(v64, v56);
    if (swift_dynamicCast())
    {
      sub_24A508CA0((v55 + 2), v58);
      v18 = [v54 traitCollection];
      v19 = [v18 layoutDirection];

      v20 = v19 == 1;
      v21 = v62;
      v22 = v63;
      sub_24A50A204(v61, v62);
      (*(v22 + 32))(v56, v21, v22);
      v23 = LOBYTE(v56[0]);
      v24 = v59;
      v25 = v60;
      sub_24A50A204(v58, v59);
      (*(v25 + 32))(v55 + 2, v24, v25);
      if (v23 == 2)
      {
        if (BYTE2(v55[0]) == 3)
        {
          v20 = v19 != 1;
LABEL_19:
          sub_24A508C54(v58);
          sub_24A508C54(v61);
          return v20 & 1;
        }
      }

      else if (v23 == 3 && BYTE2(v55[0]) == 2)
      {
        goto LABEL_19;
      }

      v47 = v62;
      v48 = v63;
      sub_24A50A204(v61, v62);
      (*(v48 + 32))(v55 + 1, v47, v48);
      v49 = SBYTE1(v55[0]);
      v50 = v59;
      v51 = v60;
      sub_24A50A204(v58, v59);
      (*(v51 + 32))(v55, v50, v51);
      v20 = flt_24A63990C[v49] < flt_24A63990C[SLOBYTE(v55[0])];
      goto LABEL_19;
    }

    *(&v55[4] + 2) = 0;
    memset(v55 + 2, 0, 32);
    sub_24A50D6A4(v55 + 2, &unk_27EF50520, &unk_24A633B10);
    v36 = a1[3];
    v37 = a1[4];
    sub_24A50A204(a1, v36);
    (*(v37 + 16))(v36, v37);
    v38 = sub_24A62E1C4();
    v40 = v39;
    v41 = *(v5 + 8);
    v41(v12, v4);
    v42 = v64[3];
    v43 = v64[4];
    sub_24A50A204(v64, v42);
    (*(v43 + 16))(v42, v43);
    v44 = sub_24A62E1C4();
    v46 = v45;
    v41(v9, v4);
    if (v38 == v44 && v40 == v46)
    {
      v20 = 0;
    }

    else
    {
      v20 = sub_24A62F634();
    }

    sub_24A508C54(v61);
  }

  else
  {
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    sub_24A50D6A4(v56, &unk_27EF50520, &unk_24A633B10);
    v26 = a1[3];
    v27 = a1[4];
    sub_24A50A204(a1, v26);
    (*(v27 + 16))(v26, v27);
    v54 = sub_24A62E1C4();
    v29 = v28;
    v30 = *(v5 + 8);
    v30(v17, v4);
    v31 = v64[3];
    v32 = v64[4];
    sub_24A50A204(v64, v31);
    (*(v32 + 16))(v31, v32);
    v33 = sub_24A62E1C4();
    v35 = v34;
    v30(v15, v4);
    if (v54 == v33 && v29 == v35)
    {

      v20 = 0;
    }

    else
    {
      v20 = sub_24A62F634();
    }
  }

  return v20 & 1;
}

uint64_t sub_24A5B518C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v7 = sub_24A62E214();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v63 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24A508FA4(&unk_27EF52480, &unk_24A633B20);
  v11 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v13 = &v63 - v12;
  v14 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v64 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v63 - v19;
  MEMORY[0x28223BE20](v18);
  v69 = &v63 - v21;
  v22 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  sub_24A508AE4(a2, v75);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v79 = 0;
    memset(v78, 0, sizeof(v78));
  }

  sub_24A50D63C(v78, v75, &unk_27EF50520, &unk_24A633B10);
  v23 = v76;
  v70 = v20;
  v68 = v22;
  if (v76)
  {
    v24 = v77;
    sub_24A50A204(v75, v76);
    (*(v24 + 24))(&v71, v23, v24);
    v25 = v72;
    if (!v72)
    {
      result = sub_24A508C54(v75);
      v20 = v70;
      v35 = a1 + 1;
      if (!__OFADD__(a1, 1))
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }

    v26 = v73;
    v27 = a2;
    v28 = v13;
    v29 = v7;
    v30 = a3;
    v31 = v8;
    v32 = v71;
    LODWORD(v65) = v74;

    v33 = v32;
    v8 = v31;
    a3 = v30;
    v7 = v29;
    v13 = v28;
    a2 = v27;
    v22 = v68;
    sub_24A50D2B4(v33, v25);
    result = sub_24A508C54(v75);
    v20 = v70;
    if (v26)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = sub_24A50D6A4(v75, &unk_27EF50520, &unk_24A633B10);
  }

  v35 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
LABEL_9:
    v71 = v35;
    v75[0] = sub_24A62F614();
    v75[1] = v36;
    MEMORY[0x24C21A5D0](0x6C6C69662ELL, 0xE500000000000000);

LABEL_10:
    v37 = sub_24A62EBE4();

    v38 = [objc_opt_self() systemImageNamed:v37 withConfiguration:a3];

    v65 = v38;
    [v22 setImage_];
    [v22 setContentMode_];
    v39 = a2[3];
    v40 = a2[4];
    sub_24A50A204(a2, v39);
    v41 = v69;
    (*(v40 + 16))(v39, v40);
    v42 = v8;
    v43 = *(v8 + 56);
    v43(v41, 0, 1, v7);
    v44 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_value;
    v45 = v66;
    swift_beginAccess();
    sub_24A50D63C(v45 + v44, v75, &unk_27EF522E0, qword_24A637660);
    v46 = v76;
    if (v76)
    {
      v47 = v77;
      v48 = sub_24A50A204(v75, v76);
      v49 = *(v46 - 8);
      v50 = *(v49 + 64);
      MEMORY[0x28223BE20](v48);
      v52 = &v63 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v52);
      sub_24A50D6A4(v75, &unk_27EF522E0, qword_24A637660);
      (*(v47 + 16))(v46, v47);
      (*(v49 + 8))(v52, v46);
      v41 = v69;
      v43(v70, 0, 1, v7);
      v20 = v70;
    }

    else
    {
      sub_24A50D6A4(v75, &unk_27EF522E0, qword_24A637660);
      v43(v20, 1, 1, v7);
    }

    v53 = *(v67 + 48);
    sub_24A50D63C(v41, v13, &unk_27EF4FEE0, &qword_24A6369F0);
    sub_24A50D63C(v20, &v13[v53], &unk_27EF4FEE0, &qword_24A6369F0);
    v54 = v42;
    v55 = *(v42 + 48);
    if (v55(v13, 1, v7) == 1)
    {
      sub_24A50D6A4(v20, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v41, &unk_27EF4FEE0, &qword_24A6369F0);
      v56 = v55(&v13[v53], 1, v7);
      v57 = v68;
      if (v56 == 1)
      {
        sub_24A50D6A4(v13, &unk_27EF4FEE0, &qword_24A6369F0);
        v58 = 1;
LABEL_20:
        [v57 setHighlighted_];

        sub_24A50D6A4(v78, &unk_27EF50520, &unk_24A633B10);
        return v57;
      }
    }

    else
    {
      v59 = v64;
      sub_24A50D63C(v13, v64, &unk_27EF4FEE0, &qword_24A6369F0);
      v60 = v55(&v13[v53], 1, v7);
      v57 = v68;
      if (v60 != 1)
      {
        v61 = v63;
        (*(v54 + 32))(v63, &v13[v53], v7);
        sub_24A5B7014();
        v58 = sub_24A62EBD4();
        v62 = *(v54 + 8);
        v62(v61, v7);
        sub_24A50D6A4(v70, &unk_27EF4FEE0, &qword_24A6369F0);
        sub_24A50D6A4(v69, &unk_27EF4FEE0, &qword_24A6369F0);
        v62(v59, v7);
        sub_24A50D6A4(v13, &unk_27EF4FEE0, &qword_24A6369F0);
        goto LABEL_20;
      }

      sub_24A50D6A4(v70, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v69, &unk_27EF4FEE0, &qword_24A6369F0);
      (*(v54 + 8))(v59, v7);
    }

    sub_24A50D6A4(v13, &unk_27EF52480, &unk_24A633B20);
    v58 = 0;
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_24A5B59E4(id *a1, uint64_t a2)
{
  v3 = *a1;
  [*a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v3 isHighlighted];
  v5 = 40;
  if (v4)
  {
    v5 = 32;
  }

  v6 = *(a2 + OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_style + v5);
  v24 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_opt_self() effectForBlurEffect:v24 style:v6];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [v8 contentView];
  [v9 addSubview_];

  v23 = objc_opt_self();
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24A633820;
  v11 = [v8 widthAnchor];
  v12 = a2 + OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_style;
  v13 = [v11 constraintEqualToConstant_];

  *(v10 + 32) = v13;
  v14 = [v8 heightAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v10 + 40) = v15;
  v16 = [v8 centerXAnchor];
  v17 = [v3 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v10 + 48) = v18;
  v19 = [v8 centerYAnchor];

  v20 = [v3 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v10 + 56) = v21;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v22 = sub_24A62ED54();

  [v23 activateConstraints_];

  [*(a2 + OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_stackView) addArrangedSubview_];
}

id sub_24A5B5E78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindingSymbolBasedPartPickerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A5B5F60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_value;
  swift_beginAccess();
  return sub_24A50D63C(v1 + v3, a1, &unk_27EF522E0, qword_24A637660);
}

uint64_t sub_24A5B5FC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_value;
  swift_beginAccess();
  sub_24A50D244(a1, v1 + v3);
  swift_endAccess();
  sub_24A5B47A8();
  return sub_24A50D6A4(a1, &unk_27EF522E0, qword_24A637660);
}

id sub_24A5B6054(uint64_t a1)
{
  if (qword_27EF4EA48 != -1)
  {
    swift_once();
  }

  v5[2] = unk_27EF5C688;
  v5[3] = xmmword_27EF5C698;
  v5[4] = xmmword_27EF5C6A8;
  v5[0] = xmmword_27EF5C668;
  v5[1] = unk_27EF5C678;
  v2 = objc_allocWithZone(type metadata accessor for FMFindingSymbolBasedPartPickerView());
  sub_24A5B60F0(v5, &v4);
  return sub_24A5B370C(a1, v5);
}

uint64_t sub_24A5B6158(char *__dst, char *__src, unint64_t a3, char *a4, void *a5)
{
  v41 = a5;
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = (__src - __dst) / 40;
  v12 = a3 - __src;
  v13 = (a3 - __src) / 40;
  if (v11 >= v13)
  {
    if (a4 != __src || &__src[40 * v13] <= a4)
    {
      memmove(a4, __src, 40 * v13);
    }

    v14 = v6 + 40 * v13;
    if (v12 < 40 || v8 <= v9)
    {
LABEL_43:
      v21 = v8;
      goto LABEL_44;
    }

    v22 = -v6;
    while (1)
    {
      v21 = v8 - 40;
      v23 = v14 - 40;
      v24 = v22 + v14;
      v7 -= 40;
      while (1)
      {
        sub_24A508AE4(v23, v40);
        sub_24A508AE4((v8 - 40), v39);
        v27 = sub_24A5B4BB0(v40, v39, v41);
        if (v5)
        {
          sub_24A508C54(v39);
          sub_24A508C54(v40);
          v36 = v24 / 40;
          if (v8 >= v6 && v8 < v6 + 40 * v36 && v8 == v6)
          {
            goto LABEL_49;
          }

          v34 = 40 * v36;
          v35 = v8;
          goto LABEL_48;
        }

        v28 = v27;
        sub_24A508C54(v39);
        sub_24A508C54(v40);
        if (v28)
        {
          break;
        }

        if (v7 + 40 != v23 + 40)
        {
          v29 = *v23;
          v30 = *(v23 + 16);
          *(v7 + 32) = *(v23 + 32);
          *v7 = v29;
          *(v7 + 16) = v30;
        }

        v25 = v23 - 40;
        v24 -= 40;
        v7 -= 40;
        v26 = v23 > v6;
        v23 -= 40;
        if (!v26)
        {
          v14 = v25 + 40;
          goto LABEL_43;
        }
      }

      if ((v7 + 40) != v8)
      {
        v31 = *v21;
        v32 = *(v8 - 24);
        *(v7 + 32) = *(v8 - 1);
        *v7 = v31;
        *(v7 + 16) = v32;
      }

      v14 = v23 + 40;
      if (v23 + 40 > v6)
      {
        v8 -= 40;
        v22 = -v6;
        if (v21 > v9)
        {
          continue;
        }
      }

      v14 = v23 + 40;
      goto LABEL_44;
    }
  }

  if (a4 != __dst || &__dst[40 * v11] <= a4)
  {
    memmove(a4, __dst, 40 * v11);
  }

  v14 = v6 + 40 * v11;
  if (v10 < 40 || v8 >= v7)
  {
LABEL_16:
    v21 = v9;
LABEL_44:
    v37 = (v14 - v6) / 40;
    if (v21 >= v6 && v21 < v6 + 40 * v37 && v21 == v6)
    {
      goto LABEL_49;
    }

    v34 = 40 * v37;
    v35 = v21;
LABEL_48:
    memmove(v35, v6, v34);
    goto LABEL_49;
  }

  while (1)
  {
    sub_24A508AE4(v8, v40);
    sub_24A508AE4(v6, v39);
    v15 = sub_24A5B4BB0(v40, v39, v41);
    if (v5)
    {
      break;
    }

    v16 = v15;
    sub_24A508C54(v39);
    sub_24A508C54(v40);
    if ((v16 & 1) == 0)
    {
      v17 = v6;
      v18 = v9 == v6;
      v6 += 40;
      if (v18)
      {
        goto LABEL_14;
      }

LABEL_13:
      v19 = *v17;
      v20 = *(v17 + 1);
      *(v9 + 4) = *(v17 + 4);
      *v9 = v19;
      *(v9 + 1) = v20;
      goto LABEL_14;
    }

    v17 = v8;
    v18 = v9 == v8;
    v8 += 40;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_14:
    v9 += 40;
    if (v6 >= v14 || v8 >= v7)
    {
      goto LABEL_16;
    }
  }

  sub_24A508C54(v39);
  sub_24A508C54(v40);
  v33 = (v14 - v6) / 40;
  if (v9 < v6 || v9 >= v6 + 40 * v33 || v9 != v6)
  {
    v34 = 40 * v33;
    v35 = v9;
    goto LABEL_48;
  }

LABEL_49:

  return 1;
}

void sub_24A5B6504(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a3[1];
  v105 = a5;
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v103 = *a1;
    if (*a1)
    {
      v105 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_95;
    }

    goto LABEL_136;
  }

  v99 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
      goto LABEL_23;
    }

    v13 = v6;
    v14 = *a3;
    sub_24A508AE4(*a3 + 40 * v12, v111);
    sub_24A508AE4(v14 + 40 * v11, v110);
    v15 = sub_24A5B4BB0(v111, v110, v105);
    if (v13)
    {
LABEL_104:
      sub_24A508C54(v110);
      sub_24A508C54(v111);

      return;
    }

    v16 = v15;
    sub_24A508C54(v110);
    sub_24A508C54(v111);
    v17 = v11 + 2;
    v106 = v11;
    v18 = 40 * v11;
    v19 = v14 + v18 + 80;
    v6 = 0;
    while (v8 != v17)
    {
      sub_24A508AE4(v19, v111);
      sub_24A508AE4(v19 - 40, v110);
      v20 = sub_24A5B4BB0(v111, v110, v105);
      sub_24A508C54(v110);
      sub_24A508C54(v111);
      ++v17;
      v19 += 40;
      if ((v16 ^ v20))
      {
        v8 = v17 - 1;
        break;
      }
    }

    if (v16)
    {
      v21 = v106;
      if (v8 < v106)
      {
        goto LABEL_130;
      }

      if (v106 >= v8)
      {
        v11 = v106;
        goto LABEL_23;
      }

      v22 = 40 * v8 - 40;
      v23 = v8;
      do
      {
        if (v21 != --v23)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v24 = v28 + v18;
          v25 = v28 + v22;
          sub_24A508CA0((v28 + v18), v111);
          v26 = *(v25 + 32);
          v27 = *(v25 + 16);
          *v24 = *v25;
          *(v24 + 16) = v27;
          *(v24 + 32) = v26;
          sub_24A508CA0(v111, v25);
        }

        ++v21;
        v22 -= 40;
        v18 += 40;
      }

      while (v21 < v23);
      v6 = 0;
    }

    v11 = v106;
LABEL_23:
    v29 = a3[1];
    if (v8 >= v29)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_126;
    }

    if (v8 - v11 >= v99)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v11, v99))
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:

      __break(1u);
LABEL_132:

      __break(1u);
      goto LABEL_133;
    }

    if (v11 + v99 >= v29)
    {
      v30 = a3[1];
    }

    else
    {
      v30 = v11 + v99;
    }

    if (v30 < v11)
    {
      goto LABEL_129;
    }

    if (v8 == v30)
    {
LABEL_32:
      v31 = v8;
      if (v8 < v11)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v81 = v11;
      v82 = *a3;
      v83 = *a3 + 40 * v8;
      v108 = v81;
      v84 = (v81 - v8);
      v101 = v30;
      do
      {
        v103 = v84;
        v85 = v84;
        v86 = v83;
        do
        {
          sub_24A508AE4(v83, v111);
          sub_24A508AE4(v83 - 40, v110);
          v87 = sub_24A5B4BB0(v111, v110, v105);
          if (v6)
          {
            goto LABEL_104;
          }

          v88 = v87;
          sub_24A508C54(v110);
          sub_24A508C54(v111);
          if ((v88 & 1) == 0)
          {
            break;
          }

          if (!v82)
          {
            goto LABEL_132;
          }

          sub_24A508CA0(v83, v111);
          v89 = *(v83 - 24);
          *v83 = *(v83 - 40);
          *(v83 + 16) = v89;
          *(v83 + 32) = *(v83 - 8);
          sub_24A508CA0(v111, v83 - 40);
          v83 -= 40;
        }

        while (!__CFADD__(v85++, 1));
        ++v8;
        v83 = v86 + 40;
        v84 = v103 - 1;
        v31 = v101;
      }

      while (v8 != v101);
      v11 = v108;
      if (v101 < v108)
      {
        goto LABEL_125;
      }
    }

    v107 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_24A5E802C(0, *(v10 + 2) + 1, 1, v10);
    }

    v6 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v6 + 1;
    if (v6 >= v32 >> 1)
    {
      v10 = sub_24A5E802C((v32 > 1), v6 + 1, 1, v10);
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v6];
    *(v34 + 4) = v11;
    *(v34 + 5) = v31;
    v100 = v31;
    v103 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v6)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v100;
    v6 = v107;
    if (v100 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v10[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_112;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_113;
      }

      v47 = &v10[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_115;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_118;
      }

      if (v51 >= v43)
      {
        v69 = &v10[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_124;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v33 == 3)
    {
      v36 = *(v10 + 4);
      v37 = *(v10 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_52:
      if (v39)
      {
        goto LABEL_114;
      }

      v52 = &v10[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_117;
      }

      v58 = &v10[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_120;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_121;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    v62 = &v10[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_66:
    if (v57)
    {
      goto LABEL_116;
    }

    v65 = &v10[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_119;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_73:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    v74 = *a3;
    if (!*a3)
    {
      goto LABEL_131;
    }

    v75 = *&v10[16 * v73 + 32];
    v6 = *&v10[16 * v35 + 40];
    v76 = (v74 + 40 * v75);
    v77 = (v74 + 40 * *&v10[16 * v35 + 32]);
    v78 = v74 + 40 * v6;
    v79 = v105;
    sub_24A5B6158(v76, v77, v78, v103, v79);
    if (v107)
    {

      return;
    }

    if (v6 < v75)
    {
      goto LABEL_110;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_24A5E8018(v10);
    }

    if (v73 >= *(v10 + 2))
    {
      goto LABEL_111;
    }

    v80 = &v10[16 * v73];
    *(v80 + 4) = v75;
    *(v80 + 5) = v6;
    v112 = v10;
    sub_24A5E7F8C(v35);
    v10 = v112;
    v33 = *(v112 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
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
  v10 = sub_24A5E8018(v10);
LABEL_95:
  v109 = v6;
  v112 = v10;
  v91 = *(v10 + 2);
  if (v91 < 2)
  {
LABEL_105:
  }

  else
  {
    while (1)
    {
      v92 = *a3;
      if (!*a3)
      {
        break;
      }

      v93 = *&v10[16 * v91];
      v6 = *&v10[16 * v91 + 24];
      v94 = (v92 + 40 * v93);
      v95 = (v92 + 40 * *&v10[16 * v91 + 16]);
      v96 = v92 + 40 * v6;
      v97 = v105;
      sub_24A5B6158(v94, v95, v96, v103, v97);
      if (v109)
      {

        return;
      }

      if (v6 < v93)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_24A5E8018(v10);
      }

      if (v91 - 2 >= *(v10 + 2))
      {
        goto LABEL_123;
      }

      v98 = &v10[16 * v91];
      *v98 = v93;
      *(v98 + 1) = v6;
      v112 = v10;
      sub_24A5E7F8C(v91 - 1);
      v10 = v112;
      v91 = *(v112 + 2);
      if (v91 <= 1)
      {
        goto LABEL_105;
      }
    }

LABEL_133:

    __break(1u);
LABEL_134:

    __break(1u);
LABEL_135:

    __break(1u);
LABEL_136:

    __break(1u);
  }
}

uint64_t sub_24A5B6D18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 40 * a3;
    v10 = result - a3;
LABEL_4:
    v11 = v10;
    v18 = v9;
    while (1)
    {
      sub_24A508AE4(v9, v17);
      sub_24A508AE4(v9 - 40, v16);
      v12 = sub_24A5B4BB0(v17, v16, a5);
      sub_24A508C54(v16);
      result = sub_24A508C54(v17);
      if (v5)
      {
        break;
      }

      if (v12)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_24A508CA0(v9, v17);
        v13 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v13;
        *(v9 + 32) = *(v9 - 8);
        result = sub_24A508CA0(v17, v9 - 40);
        v9 -= 40;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 40;
      --v10;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_24A5B6E3C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_24A62F5F4();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
        v8 = sub_24A62ED94();
        *(v8 + 16) = v7;
      }

      v10[0] = (v8 + 32);
      v10[1] = v7;
      v9 = v4;
      sub_24A5B6504(v10, v11, a1, v6, v9);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_24A5B6D18(0, v3, 1, a1, v4);
  }
}

void sub_24A5B6F7C(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24A5E87E4(v3);
  }

  v5 = v3[2];
  v7[0] = (v3 + 4);
  v7[1] = v5;
  v6 = v4;
  sub_24A5B6E3C(v7, v6);

  *a1 = v3;
}

unint64_t sub_24A5B7014()
{
  result = qword_27EF501E0;
  if (!qword_27EF501E0)
  {
    sub_24A62E214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF501E0);
  }

  return result;
}

__n128 sub_24A5B706C(uint64_t a1, uint64_t a2)
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

uint64_t sub_24A5B7088(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_24A5B70D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24A5B7130()
{
  v0 = [objc_opt_self() whiteColor];
  *&xmmword_27EF5C6B8 = 0xD000000000000012;
  *(&xmmword_27EF5C6B8 + 1) = 0x800000024A641650;
  *&xmmword_27EF5C6C8 = v0;
  *(&xmmword_27EF5C6C8 + 1) = 0x4046000000000000;
  *&result = 2;
  xmmword_27EF5C6D8 = xmmword_24A639920;
  qword_27EF5C6E8 = 0;
  byte_27EF5C6F0 = 0;
  return result;
}

__n128 sub_24A5B71B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_24A5B71D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_24A5B722C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24A5B72B8()
{
  if (!v0[4])
  {
    v2 = v0[5];
    type metadata accessor for PFAnimationCoordinator();
    v3 = &qword_27EF4F440;
    v4 = type metadata accessor for PFAnimationCoordinator;
LABEL_8:
    sub_24A5BB9D0(v3, v4);
    result = sub_24A62E454();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E354();

  if ((v6 & 1) == 0)
  {
    return result;
  }

  if (!v0[2])
  {
    v5 = v0[3];
    type metadata accessor for VFXManager.Values(0);
    v3 = &qword_27EF50A08;
    v4 = type metadata accessor for VFXManager.Values;
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E354();
}

uint64_t sub_24A5B744C()
{
  if (*(v0 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if (v5 * 57.2957795 <= 0.0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      v2 = v5 * 57.2957795 + 360.0;
    }

    else
    {

      result = sub_24A5B72B8();
    }

    v3 = (v2 + *(v0 + 48)) / 360.0;
  }

  else
  {
    v4 = *(v0 + 24);
    type metadata accessor for VFXManager.Values(0);
    sub_24A5BB9D0(&qword_27EF50A08, type metadata accessor for VFXManager.Values);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5B75D0()
{
  if (*(v0 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if (v5 * 57.2957795 <= 0.0)
    {

      v3 = 360.0 - *(v0 + 48);
      return sub_24A5B72B8();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      v2 = v5 * 57.2957795 - *(v0 + 48);
    }
  }

  else
  {
    v4 = *(v0 + 24);
    type metadata accessor for VFXManager.Values(0);
    sub_24A5BB9D0(&qword_27EF50A08, type metadata accessor for VFXManager.Values);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5B775C()
{
  if (v0[4])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v1 = v0[2];
    if (v7)
    {
      if (v1)
      {
        goto LABEL_6;
      }
    }

    else if (v1)
    {
LABEL_6:
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24A62E354();
    }

    v6 = v0[3];
    type metadata accessor for VFXManager.Values(0);
    v4 = &qword_27EF50A08;
    v5 = type metadata accessor for VFXManager.Values;
  }

  else
  {
    v3 = v0[5];
    type metadata accessor for PFAnimationCoordinator();
    v4 = &qword_27EF4F440;
    v5 = type metadata accessor for PFAnimationCoordinator;
  }

  sub_24A5BB9D0(v4, v5);
  result = sub_24A62E454();
  __break(1u);
  return result;
}

uint64_t sub_24A5B797C()
{
  if (v0[2])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if (v0[4])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24A62E354();
    }

    v5 = v0[5];
    type metadata accessor for PFAnimationCoordinator();
    v3 = &qword_27EF4F440;
    v4 = type metadata accessor for PFAnimationCoordinator;
  }

  else
  {
    v2 = v0[3];
    type metadata accessor for VFXManager.Values(0);
    v3 = &qword_27EF50A08;
    v4 = type metadata accessor for VFXManager.Values;
  }

  sub_24A5BB9D0(v3, v4);
  result = sub_24A62E454();
  __break(1u);
  return result;
}

uint64_t sub_24A5B7B44()
{
  if (v0[2])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if (v0[4])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24A62E354();
    }

    v5 = v0[5];
    type metadata accessor for PFAnimationCoordinator();
    v3 = &qword_27EF4F440;
    v4 = type metadata accessor for PFAnimationCoordinator;
  }

  else
  {
    v2 = v0[3];
    type metadata accessor for VFXManager.Values(0);
    v3 = &qword_27EF50A08;
    v4 = type metadata accessor for VFXManager.Values;
  }

  sub_24A5BB9D0(v3, v4);
  result = sub_24A62E454();
  __break(1u);
  return result;
}

uint64_t sub_24A5B7D08(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v253 = v2;
  v3 = sub_24A508FA4(&qword_27EF513C0, &qword_24A639A80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v234 - v5;
  v317 = sub_24A508FA4(&qword_27EF513C8, &qword_24A639A88);
  v7 = *(*(v317 - 8) + 64);
  MEMORY[0x28223BE20](v317);
  v9 = &v234 - v8;
  v319 = COERCE_DOUBLE(sub_24A508FA4(&qword_27EF513D0, &qword_24A639A90));
  v10 = *(*(*&v319 - 8) + 64);
  v11 = MEMORY[0x28223BE20](*&v319);
  v13 = &v234 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v234 - v15;
  MEMORY[0x28223BE20](v14);
  v320 = &v234 - v17;
  if (!v1[4])
  {
    v232 = v1[5];
    type metadata accessor for PFAnimationCoordinator();
    v230 = &qword_27EF4F440;
    v231 = type metadata accessor for PFAnimationCoordinator;
    goto LABEL_145;
  }

  v18 = v1[4];
  swift_retain_n();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_24A62E354();

  v318 = v13;
  if (v480[0])
  {
    if (qword_27EF4EA78 != -1)
    {
      swift_once();
    }

    v19 = &qword_27EF5C750;
  }

  else
  {
    if (qword_27EF4EA80 != -1)
    {
      swift_once();
    }

    v19 = &qword_27EF5C758;
  }

  v20 = *v19;

  sub_24A62EA64();
  sub_24A62E3F4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v480[0])
  {
    v21 = 360.0;
  }

  else
  {
    v21 = 92.864789;
  }

  sub_24A5B7B44();
  v23 = v22 * 0.0174532925;
  sub_24A62EA64();
  v25 = v24;
  v27 = v26;
  v28 = *(v3 + 36);
  v29 = *MEMORY[0x277CE13B8];
  v30 = sub_24A62EA54();
  (*(*(v30 - 8) + 104))(&v6[v28], v29, v30);
  v31 = v641;
  *v6 = v640;
  *(v6 + 1) = v31;
  *(v6 + 4) = v642;
  *(v6 + 5) = 0x4062C00000000000;
  *(v6 + 6) = v21;
  *(v6 + 7) = v23;
  *(v6 + 8) = v25;
  *(v6 + 9) = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v480[0])
  {
    v32 = 1.0;
  }

  else
  {
    v32 = 0.0;
  }

  sub_24A55B7E0(v6, v9, &qword_27EF513C0, &qword_24A639A80);
  *&v9[*(v317 + 36)] = v32;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v480[0])
  {
    v33 = 0.63;
  }

  else
  {
    v33 = 1.0;
  }

  sub_24A62EA64();
  v35 = v34;
  v37 = v36;
  sub_24A55B7E0(v9, v16, &qword_27EF513C8, &qword_24A639A88);
  v38 = &v16[*(*&v319 + 36)];
  *v38 = v33;
  *(v38 + 1) = v33;
  *(v38 + 2) = v35;
  *(v38 + 3) = v37;
  sub_24A55B7E0(v16, v320, &qword_27EF513D0, &qword_24A639A90);
  v39 = *v1;
  if (!*v1)
  {
    v233 = v1[1];
    type metadata accessor for VFXManager(0);
    v230 = &qword_27EF4F438;
    v231 = type metadata accessor for VFXManager;
    goto LABEL_145;
  }

  v40 = *(v39 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view);
  if (v40)
  {
    v41 = v40;

    v42 = v41;
    sub_24A62E9C4();
    sub_24A62E434();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v43 = 0.0;
    if (v480[0])
    {
      v43 = 1.0;
    }

    *&v480[56] = v413[3];
    *&v480[72] = v413[4];
    *&v480[88] = v413[5];
    *&v480[104] = v413[6];
    *&v480[8] = v413[0];
    *&v480[24] = v413[1];
    *v480 = v42;
    *&v480[40] = v413[2];
    *&v480[120] = v43;
    nullsub_1(v480);
    v636 = *&v480[64];
    v637 = *&v480[80];
    v638 = *&v480[96];
    v639 = *&v480[112];
    v632 = *v480;
    v633 = *&v480[16];
    v634 = *&v480[32];
    v635 = *&v480[48];
  }

  else
  {
    v44 = *v1;

    sub_24A5BB980(&v632);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v298 = v39;
  if (v480[0] == 1)
  {
    if (qword_27EF4EA68 != -1)
    {
      swift_once();
    }

    v45 = &qword_27EF5C740;
  }

  else
  {
    if (qword_27EF4EA70 != -1)
    {
      swift_once();
    }

    v45 = &qword_27EF5C748;
  }

  v46 = *v45;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v47 = 0.0;
  sub_24A62E3C4();
  v48 = sub_24A62E9C4();
  v50 = v49;
  sub_24A62E9C4();
  sub_24A62E3D4();
  sub_24A62EA64();
  v52 = v51;
  v54 = v53;
  sub_24A5B72B8();
  v251 = v55;
  sub_24A62EA64();
  v57 = v56;
  v59 = v58;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v60 = 0.0;
  if (v480[0] == 1)
  {
    if (!v1[2])
    {
      goto LABEL_142;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v60 = cos((*v480 * 57.2957795 + -90.0) * 3.14159265 / 180.0) * -300.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v480[0] == 1)
  {
    if (!v1[2])
    {
      goto LABEL_142;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v47 = sin((*v480 * 57.2957795 + -90.0) * 3.14159265 / 180.0) * -300.0;
  }

  *&v252 = 0x3F91DF46A2529D39;
  v621 = v627;
  v622 = v628;
  v623 = v629;
  v618 = v624;
  v619 = v625;
  v620 = v626;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v61 = v480[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v249) = v480[0];
  sub_24A5B744C();
  v63 = v62;
  sub_24A5B75D0();
  v308 = v64;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v250) = v61;
  if (v480[0] == 1)
  {
    if (qword_27EF4EA68 != -1)
    {
      swift_once();
    }

    v65 = &qword_27EF5C740;
  }

  else
  {
    if (qword_27EF4EA70 != -1)
    {
      swift_once();
    }

    v65 = &qword_27EF5C748;
  }

  v307 = *v65;

  v319 = 0.0;
  sub_24A62E3C4();
  v306 = sub_24A62E9C4();
  v305 = v66;
  sub_24A62E9C4();
  sub_24A62E3D4();
  sub_24A62EA64();
  v304 = v67;
  v303 = v68;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v69 = 0.0;
  if (v480[0] == 1)
  {
    if (!v1[2])
    {
      goto LABEL_142;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v69 = cos((*v480 * 57.2957795 + -90.0) * 3.14159265 / 180.0) * -300.0;
  }

  v302 = v69;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v480[0] != 1)
  {
    goto LABEL_50;
  }

  if (!v1[2])
  {
LABEL_142:
    v229 = v1[3];
    type metadata accessor for VFXManager.Values(0);
    v230 = &qword_27EF50A08;
    v231 = type metadata accessor for VFXManager.Values;
LABEL_145:
    sub_24A5BB9D0(v230, v231);
    result = sub_24A62E454();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E354();

  v319 = sin((*v480 * 57.2957795 + -90.0) * 3.14159265 / 180.0) * -300.0;
LABEL_50:
  v607 = v613;
  v608 = v614;
  v609 = v615;
  v604 = v610;
  v605 = v611;
  v606 = v612;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v248) = v480[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v247) = v480[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v246) = v480[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v317 = v46;
  v316 = v48;
  v315 = v50;
  if (v480[0] == 1)
  {

    v301 = sub_24A62E854();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (v480[0] == 1)
    {
      if (qword_27EF4EA68 != -1)
      {
        swift_once();
      }

      v70 = qword_27EF5C740;
    }

    else
    {
      if (qword_27EF4EA70 != -1)
      {
        swift_once();
      }

      v70 = qword_27EF5C748;
    }

    v301 = v70;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  sub_24A62E3C4();
  v300 = sub_24A62E9C4();
  v299 = v71;
  sub_24A62E9C4();
  sub_24A62E3D4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v257) = v480[0];
  sub_24A62EA64();
  v73 = v72;
  v297 = v74;
  sub_24A5B775C();
  v244 = v75;
  sub_24A62EA64();
  v296 = v76;
  v295 = v77;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v243) = v480[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v265) = v480[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v263) = v480[0];
  v294 = sub_24A62E854();
  sub_24A62E3C4();
  v78 = sub_24A62E9C4();
  v292 = v79;
  v293 = v78;
  sub_24A62E9C4();
  sub_24A62E3D4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v254) = v480[0];
  sub_24A62EA64();
  v290 = v81;
  v291 = v80;
  sub_24A5B797C();
  v266 = v82;
  sub_24A62EA64();
  v288 = v84;
  v289 = v83;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v267) = v480[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  DWORD2(v267) = v480[0];
  v85 = sub_24A62E9C4();
  v286 = v86;
  sub_24A5BB1A4(v1, v480);
  memcpy(v594, v480, sizeof(v594));
  memcpy(v595, v480, sizeof(v595));
  sub_24A50D63C(v594, v413, &qword_27EF513D8, &qword_24A639DB0);
  sub_24A50D6A4(v595, &qword_27EF513D8, &qword_24A639DB0);
  memcpy(v585, v594, sizeof(v585));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (!v1[2])
  {
    goto LABEL_142;
  }

  LODWORD(v259) = v480[0];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E354();

  v261 = *v480;
  sub_24A62EA64();
  v284 = v88;
  v285 = v87;
  memcpy(v584, v585, sizeof(v584));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  sub_24A62E9C4();
  sub_24A62E3D4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v264) = v480[0];
  *&v89 = COERCE_DOUBLE(type metadata accessor for VFXManager(0));
  sub_24A5BB9D0(&qword_27EF4F438, type metadata accessor for VFXManager);
  v237 = *&v89;
  v90 = sub_24A62E474();
  v282 = v91;
  v283 = v90;
  type metadata accessor for VFXManager.Values(0);
  sub_24A5BB9D0(&qword_27EF50A08, type metadata accessor for VFXManager.Values);
  v92 = sub_24A62E474();
  v280 = v93;
  v281 = v92;
  type metadata accessor for PFAnimationCoordinator();
  sub_24A5BB9D0(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator);
  v94 = sub_24A62E474();
  v278 = v95;
  v279 = v94;
  sub_24A62E9C4();
  sub_24A62E3D4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v255) = v480[0];
  sub_24A62EA64();
  v276 = v97;
  v277 = v96;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v287 = v85;
  if (v480[0])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v98 = 0.0634920635;
    if (v480[0])
    {
      v98 = 0.114285714;
    }
  }

  else
  {

    v98 = 1.0;
  }

  v245 = v98;
  sub_24A62EA64();
  v274 = v100;
  v275 = v99;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v256) = v480[0];
  sub_24A62EA64();
  v272 = v102;
  v273 = v101;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v314 = v52;
  v309 = v63;
  if (v480[0] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v103 = *v480 * 300.0;
  }

  else
  {

    v103 = 0.0;
  }

  v271 = v103;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v258) = v480[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v104 = *v480;
  sub_24A62EA64();
  v269 = v106;
  v270 = v105;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v262) = v480[0];
  v242 = sub_24A62E854();
  sub_24A62E9C4();
  sub_24A62E3D4();
  *&v580[3] = v643;
  *&v580[11] = v644;
  *&v580[19] = v645;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v260) = v480[0];
  sub_24A62EA64();
  v240 = v108;
  v241 = v107;
  sub_24A5B797C();
  v110 = v109;
  sub_24A62EA64();
  v238 = v112;
  v239 = v111;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v113 = v480[0];
  v114 = *(v298 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);

  v115 = (v114 >> 13) & 3;
  v313 = v57;
  v312 = v59;
  v311 = v47;
  v310 = v60;
  if (v115)
  {
    if (v115 == 1)
    {
      v114 = (v114 >> 8) & 0xFFFFFF9F;
    }

    else if ((v114 & 0x8000) != 0)
    {
      v114 = (v114 >> 8) & 0x1F;
    }

    else
    {
      v114 = v114;
    }
  }

  else
  {
    v114 >>= 8;
  }

  v298 = v73;
  v268 = v54;

  if (v114 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (v480[0])
    {
      v116 = 1.0;
    }

    else
    {
      v116 = 0.0;
    }

    v117 = sub_24A62E844();
    sub_24A62E3C4();
    v118 = sub_24A62E9C4();
    v120 = v119;
    sub_24A62E9C4();
    sub_24A62E3D4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (v480[0])
    {
      v121 = 1.0;
    }

    else
    {
      v121 = 0.0;
    }

    *v480 = 0;
    *&v480[8] = v116;
    *&v480[16] = v453;
    *&v480[32] = v454;
    *&v480[48] = v455;
    *&v480[56] = v117;
    *&v480[64] = 256;
    *&v480[72] = v118;
    *&v480[80] = v120;
    *&v480[120] = *&v340[32];
    *&v480[104] = *&v340[16];
    *&v480[88] = *v340;
    *&v480[136] = v121;
    sub_24A5BBD2C(v480);
  }

  else
  {

    v122 = sub_24A62E474();
    v124 = v123;
    v125 = sub_24A62E474();
    v127 = v126;
    sub_24A62E9C4();
    sub_24A62E3D4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v128 = 0.0;
    if (v480[0])
    {
      v128 = 1.0;
    }

    *v480 = v122;
    *&v480[8] = v124;
    *&v480[16] = v125;
    *&v480[24] = v127;
    *&v480[32] = *v340;
    *&v480[48] = *&v340[16];
    *&v480[64] = *&v340[32];
    *&v480[80] = v128;
    sub_24A5BBA60(v480);
  }

  v413[6] = *&v480[96];
  v413[7] = *&v480[112];
  v413[8] = *&v480[128];
  LOBYTE(v413[9]) = v480[144];
  v413[2] = *&v480[32];
  v413[3] = *&v480[48];
  v413[4] = *&v480[64];
  v413[5] = *&v480[80];
  v413[0] = *v480;
  v413[1] = *&v480[16];
  sub_24A508FA4(&qword_27EF513E0, &qword_24A63A040);
  sub_24A508FA4(&qword_27EF513E8, &qword_24A63A048);
  sub_24A5BBA6C();
  sub_24A5BBBB0();
  sub_24A62E604();
  if (v113)
  {
    v129 = 1.0;
  }

  else
  {
    v129 = 0.0;
  }

  v236 = v110 * *&v252;
  v237 = v129;
  v130 = 0.6;
  if (LODWORD(v260))
  {
    v131 = 0.6;
  }

  else
  {
    v131 = 1.0;
  }

  v235 = v131;
  if (LODWORD(v262))
  {
    v132 = 1.0;
  }

  else
  {
    v132 = 0.0;
  }

  v262 = v132;
  v260 = v104 * 57.2957795 * *&v252;
  v133 = -150.0;
  if (LODWORD(v258))
  {
    v133 = 0.0;
  }

  v258 = v133;
  v134 = 1.6;
  if (!LODWORD(v256))
  {
    v134 = 1.0;
  }

  v256 = v134;
  v135 = 0.2;
  if (!LODWORD(v255))
  {
    v135 = 1.0;
  }

  v255 = v135;
  if (LODWORD(v264))
  {
    v136 = 1.0;
  }

  else
  {
    v136 = 0.0;
  }

  v264 = v136;
  v261 = v261 * 57.2957795 * *&v252;
  v137 = 300.0;
  if (!LODWORD(v259))
  {
    v137 = 0.0;
  }

  v259 = v137;
  if (DWORD2(v267))
  {
    v138 = 0.0;
  }

  else
  {
    v138 = 1.0;
  }

  if (v267)
  {
    v139 = 1.0;
  }

  else
  {
    v139 = 0.0;
  }

  *&v267 = v139;
  *(&v267 + 1) = v138;
  if (LODWORD(v254))
  {
    v140 = 0.6;
  }

  else
  {
    v140 = 1.0;
  }

  v254 = v140;
  v141 = 0.25;
  if (LODWORD(v263))
  {
    v141 = 1.0;
  }

  v263 = v141;
  if (LODWORD(v265))
  {
    v142 = 0.0;
  }

  else
  {
    v142 = 1.0;
  }

  v265 = v142;
  v266 = v266 * *&v252;
  if (LODWORD(v243))
  {
    v143 = 1.0;
  }

  else
  {
    v143 = 0.0;
  }

  v144 = v244 * *&v252;
  v243 = v143;
  v244 = v244 * *&v252;
  if (!LODWORD(v257))
  {
    v130 = 1.0;
  }

  v257 = v130;
  if (LODWORD(v246))
  {
    v145 = 0.0;
  }

  else
  {
    v145 = 1.0;
  }

  if (LODWORD(v247))
  {
    v146 = 1.0;
  }

  else
  {
    v146 = 0.0;
  }

  v246 = v145;
  v247 = v146;
  if (LODWORD(v248))
  {
    v147 = 0.0;
  }

  else
  {
    v147 = 1.0;
  }

  if (LODWORD(v249))
  {
    v148 = 1.0;
  }

  else
  {
    v148 = 0.0;
  }

  v248 = v147;
  v249 = v148;
  if (LODWORD(v250))
  {
    v149 = 0.0;
  }

  else
  {
    v149 = 1.0;
  }

  v250 = v149;
  v251 = v251 * *&v252;
  v150 = v251;
  v151 = v318;
  sub_24A50D63C(v320, v318, &qword_27EF513D0, &qword_24A639A90);
  v369 = v636;
  v370 = v637;
  v371 = v638;
  v372 = v639;
  v365 = v632;
  v366 = v633;
  v367 = v634;
  v368 = v635;
  v362 = v621;
  v363 = v622;
  v364 = v623;
  v359 = v618;
  v360 = v619;
  v361 = v620;
  v356 = v607;
  v357 = v608;
  v358 = v609;
  v353 = v604;
  v354 = v605;
  v355 = v606;
  v350 = v599;
  v351 = v600;
  v352 = v601;
  v347 = v596;
  v348 = v597;
  v349 = v598;
  v344 = v591;
  v345 = v592;
  v346 = v593;
  v341 = v586;
  v342 = v587;
  v343 = v588;
  memcpy(v340, v584, sizeof(v340));
  v337 = v581;
  v338 = v582;
  v339 = v583;
  v334 = *&v580[27];
  v335 = *&v580[35];
  v336 = *&v580[43];
  v331 = *v580;
  v332 = *&v580[8];
  v333[0] = *&v580[16];
  *(v333 + 14) = *&v580[23];
  v327 = *&v578[29];
  v328 = *&v578[31];
  v329 = *&v578[33];
  v330 = v579;
  v323 = *&v578[21];
  v324 = *&v578[23];
  v325 = *&v578[25];
  v326 = *&v578[27];
  v321 = *&v578[17];
  v322 = *&v578[19];
  v152 = v253;
  sub_24A50D63C(v151, v253, &qword_27EF513D0, &qword_24A639A90);
  v153 = sub_24A508FA4(&qword_27EF51438, &qword_24A63A068);
  v154 = (v152 + v153[12]);
  v155 = v370;
  v373[4] = v369;
  v373[5] = v370;
  v154[4] = v369;
  v154[5] = v155;
  v156 = v372;
  v373[6] = v371;
  v373[7] = v372;
  v154[6] = v371;
  v154[7] = v156;
  v157 = v366;
  v373[0] = v365;
  v373[1] = v366;
  *v154 = v365;
  v154[1] = v157;
  v158 = v368;
  v373[3] = v368;
  v373[2] = v367;
  v154[2] = v367;
  v154[3] = v158;
  v159 = v152 + v153[16];
  v252 = xmmword_24A6399C0;
  v375 = v622;
  v374[0] = xmmword_24A6399C0;
  v374[1] = v621;
  *&v376 = v623;
  *(&v376 + 1) = v317;
  LOWORD(v377) = 256;
  *(&v377 + 2) = v630;
  WORD3(v377) = v631;
  *(&v377 + 1) = v316;
  *&v378[0] = v315;
  *(&v378[2] + 8) = v620;
  *(&v378[1] + 8) = v619;
  *(v378 + 8) = v618;
  *(&v378[3] + 1) = 0xBFF921FB54442D18;
  *&v379 = v314;
  *(&v379 + 1) = v268;
  *&v380 = v150;
  *(&v380 + 1) = v313;
  *&v381 = v312;
  *(&v381 + 1) = v310;
  *&v382 = v311;
  *(&v382 + 1) = v149;
  v383 = v148;
  v160 = v621;
  *v159 = xmmword_24A6399C0;
  *(v159 + 16) = v160;
  v161 = v378[0];
  *(v159 + 64) = v377;
  *(v159 + 80) = v161;
  v162 = v376;
  *(v159 + 32) = v375;
  *(v159 + 48) = v162;
  v163 = v379;
  *(v159 + 128) = v378[3];
  *(v159 + 144) = v163;
  v164 = v378[2];
  *(v159 + 96) = v378[1];
  *(v159 + 112) = v164;
  v165 = v382;
  v166 = v380;
  v167 = v381;
  *(v159 + 208) = v383;
  *(v159 + 176) = v167;
  *(v159 + 192) = v165;
  *(v159 + 160) = v166;
  v168 = (v152 + v153[20]);
  *&v384 = v309;
  *(&v384 + 1) = v308;
  v385 = v607;
  v386 = v608;
  *&v387 = v609;
  *(&v387 + 1) = v307;
  LOWORD(v388) = 256;
  *(&v388 + 2) = v616;
  WORD3(v388) = v617;
  *(&v388 + 1) = v306;
  *&v389[0] = v305;
  *(&v389[2] + 8) = v606;
  *(&v389[1] + 8) = v605;
  *(v389 + 8) = v604;
  *(&v389[3] + 1) = 0xBFF921FB54442D18;
  *&v390 = v304;
  *(&v390 + 1) = v303;
  *&v391 = v302;
  *(&v391 + 1) = v319;
  *&v392 = v147;
  *(&v392 + 1) = v146;
  v169 = v387;
  v168[2] = v608;
  v168[3] = v169;
  v170 = v385;
  *v168 = v384;
  v168[1] = v170;
  v171 = v389[2];
  v168[6] = v389[1];
  v168[7] = v171;
  v172 = v389[0];
  v168[4] = v388;
  v168[5] = v172;
  v173 = v392;
  v168[10] = v391;
  v168[11] = v173;
  v174 = v390;
  v168[8] = v389[3];
  v168[9] = v174;
  v175 = (v152 + v153[24]);
  *&v393 = 0;
  *(&v393 + 1) = v145;
  v394 = v599;
  v395 = v600;
  *&v396 = v601;
  *(&v396 + 1) = v301;
  LOWORD(v397) = 256;
  *(&v397 + 2) = v602;
  WORD3(v397) = v603;
  *(&v397 + 1) = v300;
  *&v398[0] = v299;
  *(&v398[2] + 8) = v598;
  *(&v398[1] + 8) = v597;
  *(v398 + 8) = v596;
  *(&v398[3] + 1) = v257;
  *&v399 = v257;
  *(&v399 + 1) = v298;
  *&v400 = v297;
  *(&v400 + 1) = v144;
  *&v401 = v296;
  *(&v401 + 1) = v295;
  *&v402 = v143;
  *(&v402 + 1) = v265;
  v176 = v396;
  v175[2] = v600;
  v175[3] = v176;
  v177 = v394;
  *v175 = v393;
  v175[1] = v177;
  v178 = v398[2];
  v175[6] = v398[1];
  v175[7] = v178;
  v179 = v398[0];
  v175[4] = v397;
  v175[5] = v179;
  v180 = v402;
  v181 = v400;
  v175[11] = v401;
  v175[12] = v180;
  v182 = v399;
  v175[8] = v398[3];
  v175[9] = v182;
  v175[10] = v181;
  v183 = (v152 + v153[28]);
  *&v403 = 0;
  *(&v403 + 1) = v263;
  v404 = v591;
  v405 = v592;
  *&v406 = v593;
  *(&v406 + 1) = v294;
  LOWORD(v407) = 256;
  *(&v407 + 2) = v589;
  WORD3(v407) = v590;
  *(&v407 + 1) = v293;
  *&v408[0] = v292;
  *(&v408[2] + 8) = v588;
  *(&v408[1] + 8) = v587;
  *(v408 + 8) = v586;
  *(&v408[3] + 1) = v254;
  *&v409 = v254;
  *(&v409 + 1) = v291;
  *&v410 = v290;
  *(&v410 + 1) = v266;
  *&v411 = v289;
  *(&v411 + 1) = v288;
  v412 = v267;
  v184 = v406;
  v183[2] = v592;
  v183[3] = v184;
  v185 = v404;
  *v183 = v403;
  v183[1] = v185;
  v186 = v408[2];
  v183[6] = v408[1];
  v183[7] = v186;
  v187 = v408[0];
  v183[4] = v407;
  v183[5] = v187;
  v188 = v412;
  v189 = v410;
  v183[11] = v411;
  v183[12] = v188;
  v190 = v409;
  v183[8] = v408[3];
  v183[9] = v190;
  v183[10] = v189;
  v191 = v153[32];
  *&v413[0] = v287;
  *(&v413[0] + 1) = v286;
  memcpy(&v413[1], v584, 0x128uLL);
  *(&v413[19] + 1) = 0;
  *&v413[20] = v259;
  *(&v413[20] + 1) = v261;
  *&v413[21] = v285;
  *(&v413[21] + 1) = v284;
  v413[22] = v581;
  v413[23] = v582;
  v413[24] = v583;
  *&v413[25] = v264;
  memcpy((v152 + v191), v413, 0x198uLL);
  v192 = (v152 + v153[36]);
  *&v414 = v283;
  *(&v414 + 1) = v282;
  *&v415 = v281;
  *(&v415 + 1) = v280;
  *&v416 = v279;
  *(&v416 + 1) = v278;
  v417 = v334;
  v418 = v335;
  v419 = v336;
  *&v420 = v255;
  *(&v420 + 1) = v255;
  *&v421 = v277;
  *(&v421 + 1) = v276;
  v193 = v245;
  *&v422 = v245;
  *(&v422 + 1) = v245;
  *&v423 = v275;
  *(&v423 + 1) = v274;
  *&v424 = v256;
  *(&v424 + 1) = v256;
  *&v425 = v273;
  *(&v425 + 1) = v272;
  *&v426 = 0;
  *(&v426 + 1) = v271;
  *&v427 = 0;
  *(&v427 + 1) = v258;
  *&v428 = v260;
  *(&v428 + 1) = v270;
  *&v429 = v269;
  *(&v429 + 1) = v262;
  v194 = v414;
  v195 = v415;
  v196 = v334;
  v192[2] = v416;
  v192[3] = v196;
  *v192 = v194;
  v192[1] = v195;
  v197 = v418;
  v198 = v419;
  v199 = v421;
  v192[6] = v420;
  v192[7] = v199;
  v192[4] = v197;
  v192[5] = v198;
  v200 = v422;
  v201 = v423;
  v202 = v425;
  v192[10] = v424;
  v192[11] = v202;
  v192[8] = v200;
  v192[9] = v201;
  v203 = v426;
  v204 = v427;
  v205 = v429;
  v192[14] = v428;
  v192[15] = v205;
  v192[12] = v203;
  v192[13] = v204;
  v206 = (v152 + v153[40]);
  v207 = v242;
  *&v430[0] = v242;
  WORD4(v430[0]) = 256;
  *(v430 + 10) = v331;
  *(&v430[1] + 10) = v332;
  *(&v430[2] + 10) = v333[0];
  *(&v430[3] + 1) = *(v333 + 14);
  v208 = v235;
  v209 = v236;
  *&v431 = v235;
  *(&v431 + 1) = v235;
  v210 = v240;
  v211 = v241;
  *&v432 = v241;
  *(&v432 + 1) = v240;
  *&v433 = v236;
  v213 = v238;
  v212 = v239;
  *(&v433 + 1) = v239;
  *&v434 = v238;
  v214 = v237;
  *(&v434 + 1) = v237;
  v215 = v432;
  v206[4] = v431;
  v206[5] = v215;
  v216 = v434;
  v206[6] = v433;
  v206[7] = v216;
  v217 = v430[1];
  *v206 = v430[0];
  v206[1] = v217;
  v218 = v430[3];
  v206[2] = v430[2];
  v206[3] = v218;
  v219 = v321;
  v220 = v322;
  v435[1] = v322;
  v435[0] = v321;
  v221 = v325;
  v222 = v326;
  v435[5] = v326;
  v435[4] = v325;
  v223 = v323;
  v224 = v324;
  v435[3] = v324;
  v435[2] = v323;
  v226 = v328;
  v225 = v329;
  v435[8] = v329;
  v435[7] = v328;
  v435[6] = v327;
  v227 = v152 + v153[44];
  *(v227 + 96) = v327;
  *(v227 + 112) = v226;
  *(v227 + 128) = v225;
  *(v227 + 32) = v223;
  *(v227 + 48) = v224;
  v436 = v330;
  *(v227 + 144) = v330;
  *(v227 + 64) = v221;
  *(v227 + 80) = v222;
  *v227 = v219;
  *(v227 + 16) = v220;
  sub_24A50D63C(v373, v480, &qword_27EF51440, &qword_24A63A070);
  sub_24A50D63C(v374, v480, &qword_27EF51448, &qword_24A63A078);
  sub_24A50D63C(&v384, v480, &qword_27EF51450, &qword_24A63A080);
  sub_24A50D63C(&v393, v480, &qword_27EF51458, &qword_24A63A088);
  sub_24A50D63C(&v403, v480, &qword_27EF51458, &qword_24A63A088);
  sub_24A50D63C(v413, v480, &qword_27EF51460, &qword_24A63A090);
  sub_24A50D63C(&v414, v480, &qword_27EF51468, &qword_24A63A098);
  sub_24A50D63C(v430, v480, &qword_27EF51470, &qword_24A63A0A0);
  sub_24A50D63C(v435, v480, &qword_27EF51478, &qword_24A63A0A8);
  sub_24A50D6A4(v320, &qword_27EF513D0, &qword_24A639A90);
  v437[6] = v327;
  v437[7] = v328;
  v437[8] = v329;
  v438 = v330;
  v437[2] = v323;
  v437[3] = v324;
  v437[4] = v325;
  v437[5] = v326;
  v437[0] = v321;
  v437[1] = v322;
  sub_24A50D6A4(v437, &qword_27EF51478, &qword_24A63A0A8);
  v442 = v331;
  v439 = v207;
  v440 = 0;
  v441 = 1;
  v443 = v332;
  *v444 = v333[0];
  *&v444[14] = *(v333 + 14);
  v445 = v208;
  v446 = v208;
  v447 = v211;
  v448 = v210;
  v449 = v209;
  v450 = v212;
  v451 = v213;
  v452 = v214;
  sub_24A50D6A4(&v439, &qword_27EF51470, &qword_24A63A0A0);
  *&v453 = v283;
  *(&v453 + 1) = v282;
  *&v454 = v281;
  *(&v454 + 1) = v280;
  v455 = v279;
  v456 = v278;
  v457 = v334;
  v458 = v335;
  v459 = v336;
  v460 = v255;
  v461 = v255;
  v462 = v277;
  v463 = v276;
  v464 = v193;
  v465 = v193;
  v466 = v275;
  v467 = v274;
  v468 = v256;
  v469 = v256;
  v470 = v273;
  v471 = v272;
  v472 = 0;
  v473 = v271;
  v474 = 0;
  v475 = v258;
  v476 = v260;
  v477 = v270;
  v478 = v269;
  v479 = v262;
  sub_24A50D6A4(&v453, &qword_27EF51468, &qword_24A63A098);
  *v480 = v287;
  *&v480[8] = v286;
  memcpy(&v480[16], v340, 0x128uLL);
  v481 = 0;
  v482 = v259;
  v483 = v261;
  v484 = v285;
  v485 = v284;
  v486 = v337;
  v487 = v338;
  v488 = v339;
  v489 = v264;
  sub_24A50D6A4(v480, &qword_27EF51460, &qword_24A63A090);
  v490[0] = 0;
  *&v490[1] = v263;
  v491 = v344;
  v492 = v345;
  v493 = v346;
  v494 = v294;
  v495 = 0;
  v496 = 1;
  v497 = v589;
  v498 = v590;
  v499 = v293;
  v500 = v292;
  v503 = v343;
  v502 = v342;
  v501 = v341;
  v504 = v254;
  v505 = v254;
  v506 = v291;
  v507 = v290;
  v508 = v266;
  v509 = v289;
  v510 = v288;
  v511 = v267;
  sub_24A50D6A4(v490, &qword_27EF51458, &qword_24A63A088);
  v512[0] = 0;
  *&v512[1] = v246;
  v513 = v350;
  v514 = v351;
  v515 = v352;
  v516 = v301;
  v517 = 0;
  v518 = 1;
  v519 = v602;
  v520 = v603;
  v521 = v300;
  v522 = v299;
  v525 = v349;
  v524 = v348;
  v523 = v347;
  v526 = v257;
  v527 = v257;
  v528 = v298;
  v529 = v297;
  v530 = v244;
  v531 = v296;
  v532 = v295;
  v533 = v243;
  v534 = v265;
  sub_24A50D6A4(v512, &qword_27EF51458, &qword_24A63A088);
  v535[0] = v309;
  v535[1] = v308;
  v536 = v356;
  v537 = v357;
  v538 = v358;
  v539 = v307;
  v540 = 0;
  v541 = 1;
  v542 = v616;
  v543 = v617;
  v544 = v306;
  v545 = v305;
  v548 = v355;
  v547 = v354;
  v546 = v353;
  v549 = 0xBFF921FB54442D18;
  v550 = v304;
  v551 = v303;
  v552 = v302;
  v553 = v319;
  v554 = v248;
  v555 = v247;
  sub_24A50D6A4(v535, &qword_27EF51450, &qword_24A63A080);
  v556[0] = v252;
  v556[1] = v362;
  v556[2] = v363;
  v557 = v364;
  v558 = v317;
  v559 = 0;
  v560 = 1;
  v561 = v630;
  v562 = v631;
  v563 = v316;
  v564 = v315;
  v567 = v361;
  v566 = v360;
  v565 = v359;
  v568 = 0xBFF921FB54442D18;
  v569 = v314;
  v570 = v268;
  v571 = v251;
  v572 = v313;
  v573 = v312;
  v574 = v310;
  v575 = v311;
  v576 = v250;
  v577 = v249;
  sub_24A50D6A4(v556, &qword_27EF51448, &qword_24A63A078);
  *&v578[8] = v369;
  *&v578[10] = v370;
  *&v578[12] = v371;
  *&v578[14] = v372;
  *v578 = v365;
  *&v578[2] = v366;
  *&v578[4] = v367;
  *&v578[6] = v368;
  sub_24A50D6A4(v578, &qword_27EF51440, &qword_24A63A070);
  return sub_24A50D6A4(v318, &qword_27EF513D0, &qword_24A639A90);
}