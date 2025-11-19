uint64_t sub_24FF231D8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24FF23260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24FF25B18(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_24FF2328C()
{
  sub_24FF266C4();
  sub_24FF61BE8();
  v0 = sub_24FF26764();

  return sub_24FF24B70(v0, v1, v2);
}

uint64_t sub_24FF232C4()
{
  sub_24FF266C4();
  sub_24FF61BE8();
  v0 = sub_24FF26714();

  return sub_24FF24B98(v0, v1, v2, v3);
}

uint64_t sub_24FF232FC()
{
  sub_24FF266C4();
  sub_24FF61C18();
  v0 = sub_24FF26764();

  return sub_24FF24B70(v0, v1, v2);
}

uint64_t sub_24FF23334()
{
  sub_24FF266C4();
  sub_24FF61C18();
  v0 = sub_24FF26714();

  return sub_24FF24B98(v0, v1, v2, v3);
}

uint64_t sub_24FF2336C()
{
  sub_24FF266C4();
  sub_24FF619B8();
  v0 = sub_24FF26764();

  return sub_24FF24B70(v0, v1, v2);
}

uint64_t sub_24FF233A4()
{
  sub_24FF266C4();
  sub_24FF619B8();
  v0 = sub_24FF26714();

  return sub_24FF24B98(v0, v1, v2, v3);
}

uint64_t sub_24FF23620(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24FF236C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FF61898();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_24FF24B70(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_24FF23770(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FF61898();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_24FF24B98(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24FF23874()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24FF238B4()
{
  sub_24FF277EC();
  v1 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF2552C(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  sub_24FF2552C(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_24FF277D4();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_24FF239F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24FF23A58()
{
  sub_24FF277EC();
  v1 = *(v0 + 4);
  v2 = sub_24FF61B88();
  sub_24FF2552C(v2);
  v4 = v3;
  v5 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v7 = v5 + *(v6 + 64);
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  v8 = sub_24FF61F98();
  sub_24FF2552C(v8);
  v10 = v9;
  v11 = (v7 + *(v10 + 80)) & ~*(v10 + 80);
  v13 = *(v12 + 64);
  v14 = *(v0 + 2);
  swift_unknownObjectRelease();
  v15 = *(v0 + 6);

  (*(v4 + 8))(&v0[v5], v2);
  (*(v10 + 8))(&v0[v11], v8);
  sub_24FF277D4();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_24FF23BB0()
{
  v1 = *(v0 + 32);
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  v2 = sub_24FF61F98();
  sub_24FF2552C(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 56) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v0 + v6, v2);
  v10 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v5 | 7);
}

uint64_t sub_24FF23CB8()
{
  sub_24FF277EC();
  v1 = sub_24FF61898();
  sub_24FF2552C(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (type metadata accessor for FieldStreamingSupport(0) - 8);
  v8 = (v6 + *(*v7 + 80) + 8) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  v10 = *(v0 + 32);

  v11 = *(v0 + 48);

  (*(v3 + 8))(v0 + v4, v1);
  v12 = *(v0 + v6);

  v13 = sub_24FF25460(&qword_27F3B43E0, &qword_24FF63E10);
  sub_24FF26754(v13);
  (*(v14 + 8))(v0 + v8);
  v15 = v7[7];
  v16 = sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
  sub_24FF26754(v16);
  (*(v17 + 8))(v0 + v8 + v15);
  sub_24FF277D4();

  return MEMORY[0x2821FE8E8](v18, v19, v20);
}

uint64_t sub_24FF23EA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_24FF5FA20();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_24FF23EE4()
{
  v1 = *(v0 + 40);

  sub_24FF5FA20();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_24FF23F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FF61898();
  v7 = sub_24FF5FAA8(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_24FF24B70(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FF23FC0()
{
  sub_24FF5FAB4();
  v4 = sub_24FF61898();
  result = sub_24FF5FAA8(v4);
  if (*(v6 + 84) == v3)
  {

    return sub_24FF24B98(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_24FF24058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FF25460(&qword_27F3B43E0, &qword_24FF63E10);
  v7 = sub_24FF5FAA8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
    v10 = a1 + *(a3 + 20);
  }

  return sub_24FF24B70(v10, a2, v9);
}

uint64_t sub_24FF24108()
{
  sub_24FF5FAB4();
  v4 = sub_24FF25460(&qword_27F3B43E0, &qword_24FF63E10);
  v5 = sub_24FF5FAA8(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v7 = sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
    v8 = v1 + *(v2 + 20);
  }

  return sub_24FF24B98(v8, v0, v0, v7);
}

uint64_t sub_24FF241B4()
{
  v1 = *(v0 + 24);

  sub_24FF5F914();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_24FF241E8()
{
  v1 = *(v0 + 24);

  sub_24FF5F914();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_24FF242B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19[1] = a6;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v16 = swift_allocBox();
  (*(v12 + 16))(v15, v6, a3);
  sub_24FF61F28();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = v16;
  v17[6] = a1;
  v17[7] = a2;

  return sub_24FF61FE8();
}

uint64_t sub_24FF24420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a1;
  v7[6] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[11] = AssociatedTypeWitness;
  v9 = sub_24FF62028();
  v7[12] = v9;
  v10 = *(v9 - 8);
  v7[13] = v10;
  v11 = *(v10 + 64) + 15;
  v7[14] = swift_task_alloc();
  v12 = *(AssociatedTypeWitness - 8);
  v7[15] = v12;
  v13 = *(v12 + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_getAssociatedTypeWitness();
  v7[18] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24FF245B0, 0, 0);
}

uint64_t sub_24FF245B0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[10];
  v4 = v0[8];
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_24FF24698;
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[14];

  return MEMORY[0x282200308](v10, v8, AssociatedConformanceWitness);
}

uint64_t sub_24FF24698()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_24FF24938;
  }

  else
  {
    swift_endAccess();
    v3 = sub_24FF247B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24FF247B4()
{
  v2 = v0 + 11;
  v1 = v0[11];
  v3 = v0[14];
  v4 = sub_24FF24B70(v3, 1, v1);
  v5 = v0[16];
  if (v4 == 1)
  {
    v6 = v0 + 13;
    v2 = v0 + 12;
    v7 = 1;
    v8 = v3;
  }

  else
  {
    v6 = v0 + 15;
    v7 = v0[20];
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    (*(v0[15] + 32))(v0[16], v3, v1);
    v10(v5);
    v12 = v0[16];
    if (v7)
    {
      (*(v0[15] + 8))(v0[16], v0[11]);
      v13 = v0[16];
      v14 = v0[14];

      sub_24FF24BC0();
      goto LABEL_7;
    }

    v16 = v0[14];
    v8 = v0[16];
  }

  v17 = v0[9];
  v18 = v0[5];
  (*(*v6 + 8))(v8, *v2);
  sub_24FF24B98(v18, v7, 1, v17);

  sub_24FF24BC0();
LABEL_7:

  return v15();
}

uint64_t sub_24FF24938()
{
  swift_endAccess();
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[14];

  sub_24FF24BC0();

  return v4();
}

uint64_t sub_24FF249AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24FF24A80;

  return sub_24FF24420(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_24FF24A80()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_24FF24BC0();

  return v2();
}

uint64_t sub_24FF24BC0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

char *sub_24FF24BCC(uint64_t a1, uint64_t a2)
{
  v112 = a1;
  v3 = sub_24FF25460(&qword_27F3B3E10, &qword_24FF62750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v88 - v5;
  v108 = sub_24FF61B88();
  v6 = sub_24FF2552C(v108);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_24FF25518();
  v96 = v11;
  sub_24FF25540();
  MEMORY[0x28223BE20](v12);
  v107 = &v88 - v13;
  v14 = sub_24FF61968();
  v15 = sub_24FF2552C(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_24FF25518();
  v102 = v20;
  sub_24FF25540();
  MEMORY[0x28223BE20](v21);
  v113 = &v88 - v22;
  sub_24FF25540();
  MEMORY[0x28223BE20](v23);
  v25 = &v88 - v24;
  v26 = sub_24FF61978();
  v27 = sub_24FF2552C(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_24FF25518();
  v106 = v32;
  sub_24FF25540();
  MEMORY[0x28223BE20](v33);
  v95 = &v88 - v34;
  sub_24FF25540();
  MEMORY[0x28223BE20](v35);
  v109 = &v88 - v36;
  sub_24FF25540();
  MEMORY[0x28223BE20](v37);
  v39 = &v88 - v38;
  sub_24FF61B68();
  v104 = *(v29 + 88);
  v105 = v29 + 88;
  if (v104(v39, v26) != *MEMORY[0x277D0DC68])
  {
    (*(v29 + 8))(v39, v26);
    return 0;
  }

  v99 = v8;
  v40 = *(v29 + 96);
  v103 = v26;
  v94 = v29 + 96;
  v93 = v40;
  v40(v39, v26);
  v41 = *(*v39 + 16);

  v43 = 0;
  v111 = *(v41 + 16);
  v114 = (v17 + 8);
  v115 = v17 + 16;
  v101 = (v17 + 32);
  v89 = MEMORY[0x277D84F90];
  v110 = a2;
  while (v111 != v43)
  {
    if (v43 >= *(v41 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v44 = v29;
    v45 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v46 = *(v17 + 72);
    (*(v17 + 16))(v25, v41 + v45 + v46 * v43, v14);
    if (sub_24FF61948() == v112 && v47 == a2)
    {
    }

    else
    {
      v49 = sub_24FF62158();

      if ((v49 & 1) == 0)
      {
        result = (*v114)(v25, v14);
        ++v43;
        goto LABEL_11;
      }
    }

    v50 = *v101;
    (*v101)(v102, v25, v14);
    v51 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v51;
    v100 = v50;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24FF5C9E4(0, *(v51 + 16) + 1, 1);
      v51 = v116;
    }

    v54 = *(v51 + 16);
    v53 = *(v51 + 24);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v98 = v54 + 1;
      sub_24FF5C9E4(v53 > 1, v54 + 1, 1);
      v55 = v98;
      v51 = v116;
    }

    ++v43;
    *(v51 + 16) = v55;
    v89 = v51;
    result = (v100)(v51 + v45 + v54 * v46, v102, v14);
LABEL_11:
    a2 = v110;
    v29 = v44;
  }

  v57 = *(v89 + 16);
  if (v57)
  {
    v58 = v89 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v59 = *(v17 + 72);
    v111 = *(v17 + 16);
    LODWORD(v102) = *MEMORY[0x277D0DC60];
    v101 = (v29 + 8);
    v91 = (v29 + 32);
    v90 = (v29 + 16);
    v56 = MEMORY[0x277D84F90];
    v100 = (v99 + 8);
    v99 = (v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = v103;
    v92 = v14;
    while (1)
    {
      v111(v113, v58, v14);
      sub_24FF61958();
      v61 = v107;
      sub_24FF61B78();
      v62 = v106;
      sub_24FF61B68();
      v63 = v104(v62, v60);
      if (v63 == v102)
      {
        v93(v62, v60);
        v64 = *v62;
        v65 = swift_projectBox();
        v66 = v97;
        sub_24FF254A8(v65, v97);
        v67 = *v91;
        v98 = v56;
        v68 = v57;
        v69 = v59;
        v70 = v109;
        v71 = v95;
        v67(v95, v66, v60);

        (*v90)(v70, v71, v60);
        v72 = v61;
        v73 = v96;
        v59 = v69;
        v57 = v68;
        v56 = v98;
        sub_24FF61B78();
        v74 = v60;
        v75 = sub_24FF61B58();
        v76 = *v100;
        v77 = v73;
        v78 = v108;
        (*v100)(v77, v108);
        v79 = v71;
        v14 = v92;
        (*v101)(v79, v74);
      }

      else
      {
        (*v101)(v62, v60);
        v75 = sub_24FF61B58();
        v76 = *v100;
        v72 = v61;
        v78 = v108;
      }

      v76(v72, v78);
      result = (*v114)(v113, v14);
      v80 = *(v75 + 16);
      v81 = *(v56 + 16);
      v82 = v81 + v80;
      if (__OFADD__(v81, v80))
      {
        goto LABEL_44;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v82 > *(v56 + 24) >> 1)
      {
        if (v81 <= v82)
        {
          v83 = v81 + v80;
        }

        else
        {
          v83 = v81;
        }

        result = sub_24FF4B214(result, v83, 1, v56);
        v56 = result;
      }

      if (*(v75 + 16))
      {
        if ((*(v56 + 24) >> 1) - *(v56 + 16) < v80)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        v60 = v103;
        if (v80)
        {
          v84 = *(v56 + 16);
          v85 = __OFADD__(v84, v80);
          v86 = v84 + v80;
          if (v85)
          {
            goto LABEL_47;
          }

          *(v56 + 16) = v86;
        }
      }

      else
      {

        v60 = v103;
        if (v80)
        {
          goto LABEL_45;
        }
      }

      v58 += v59;
      if (!--v57)
      {

        goto LABEL_40;
      }
    }
  }

  v56 = MEMORY[0x277D84F90];
LABEL_40:
  v87 = v110;
  if (!*(v56 + 16))
  {

    sub_24FF25460(&qword_27F3B3E18, &qword_24FF62758);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_24FF62740;
    *(v56 + 32) = v112;
    *(v56 + 40) = v87;
  }

  return v56;
}

uint64_t sub_24FF25460(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_24FF254A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FF25460(&qword_27F3B3E10, &qword_24FF62750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF255F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24FF255A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24FF2561C(uint64_t a1)
{
  v2 = sub_24FF257FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FF25658(uint64_t a1)
{
  v2 = sub_24FF257FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _GenerativeFunctionOverridableInternals_CompletionPrompt.encode(to:)(void *a1)
{
  v2 = sub_24FF25460(&qword_27F3B3E20, &qword_24FF627B0);
  sub_24FF2552C(v2);
  v4 = *(v3 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v5);
  v6 = a1[4];
  sub_24FF257B8(a1, a1[3]);
  v7 = sub_24FF257FC();
  sub_24FF26834(&type metadata for _GenerativeFunctionOverridableInternals_CompletionPrompt.CodingKeys, v8, v7);
  sub_24FF61BE8();
  sub_24FF266D4();
  v11 = sub_24FF2601C(v9, v10);
  sub_24FF26774(v11, v12);
  v13 = sub_24FF26820();
  return v14(v13);
}

void *sub_24FF257B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24FF257FC()
{
  result = qword_27F3B3E28;
  if (!qword_27F3B3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B3E28);
  }

  return result;
}

uint64_t _GenerativeFunctionOverridableInternals_CompletionPrompt.init(from:)@<X0>(uint64_t a1@<X8>)
{
  sub_24FF267D8(a1);
  v3 = sub_24FF61BE8();
  v4 = sub_24FF2552C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_24FF26704();
  v7 = sub_24FF25460(&qword_27F3B3E38, &qword_24FF627B8);
  sub_24FF2552C(v7);
  v9 = *(v8 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v10);
  v11 = sub_24FF267EC();
  v12 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt(v11);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_24FF26704();
  v16 = v15 - v14;
  v17 = v1[4];
  sub_24FF257B8(v1, v1[3]);
  v18 = sub_24FF257FC();
  sub_24FF267B4(&type metadata for _GenerativeFunctionOverridableInternals_CompletionPrompt.CodingKeys, v19, v18);
  if (!v2)
  {
    sub_24FF266D4();
    v22 = sub_24FF2601C(v20, v21);
    sub_24FF26728(v22, v23);
    v24 = sub_24FF2679C();
    v25(v24);
    v26 = sub_24FF2680C();
    v27(v26);
    sub_24FF26064(v16, v29, type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt);
  }

  return sub_24FF25A6C(v1);
}

uint64_t sub_24FF25A6C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24FF25B18(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_24FF62158();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_24FF25B8C()
{
  sub_24FF621F8();
  MEMORY[0x25305CD50](0);
  return sub_24FF62218();
}

uint64_t sub_24FF25BD0()
{
  sub_24FF621F8();
  MEMORY[0x25305CD50](0);
  return sub_24FF62218();
}

uint64_t sub_24FF25C10(uint64_t a1)
{
  v2 = sub_24FF25DAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FF25C4C(uint64_t a1)
{
  v2 = sub_24FF25DAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.encode(to:)(void *a1)
{
  v2 = sub_24FF25460(&qword_27F3B3E48, &qword_24FF627C0);
  sub_24FF2552C(v2);
  v4 = *(v3 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v5);
  v6 = a1[4];
  sub_24FF257B8(a1, a1[3]);
  v7 = sub_24FF25DAC();
  sub_24FF26834(&type metadata for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.CodingKeys, v8, v7);
  sub_24FF61C18();
  sub_24FF266EC();
  v11 = sub_24FF2601C(v9, v10);
  sub_24FF26774(v11, v12);
  v13 = sub_24FF26820();
  return v14(v13);
}

unint64_t sub_24FF25DAC()
{
  result = qword_27F3B3E50;
  if (!qword_27F3B3E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B3E50);
  }

  return result;
}

uint64_t _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.init(from:)@<X0>(uint64_t a1@<X8>)
{
  sub_24FF267D8(a1);
  v3 = sub_24FF61C18();
  v4 = sub_24FF2552C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_24FF26704();
  v7 = sub_24FF25460(&qword_27F3B3E60, &qword_24FF627C8);
  sub_24FF2552C(v7);
  v9 = *(v8 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v10);
  v11 = sub_24FF267EC();
  v12 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt(v11);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_24FF26704();
  v16 = v15 - v14;
  v17 = v1[4];
  sub_24FF257B8(v1, v1[3]);
  v18 = sub_24FF25DAC();
  sub_24FF267B4(&type metadata for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.CodingKeys, v19, v18);
  if (!v2)
  {
    sub_24FF266EC();
    v22 = sub_24FF2601C(v20, v21);
    sub_24FF26728(v22, v23);
    v24 = sub_24FF2679C();
    v25(v24);
    v26 = sub_24FF2680C();
    v27(v26);
    sub_24FF26064(v16, v29, type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt);
  }

  return sub_24FF25A6C(v1);
}

uint64_t sub_24FF2601C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FF26064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_24FF26754(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_24FF2610C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = sub_24FF26754(v4);
  v7 = *(v6 + 16);

  return v7(a2, v2, v5);
}

uint64_t sub_24FF2618C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  v6 = sub_24FF26754(v5);
  v8 = *(v7 + 32);

  return v8(a3, a1, v6);
}

uint64_t sub_24FF262BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FF2630C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _GenerativeFunctionOverrideHelpers(unsigned int *a1, int a2)
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

_BYTE *sub_24FF263F0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_24FF264A0()
{
  result = qword_27F3B3E70;
  if (!qword_27F3B3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B3E70);
  }

  return result;
}

unint64_t sub_24FF264F8()
{
  result = qword_27F3B3E78;
  if (!qword_27F3B3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B3E78);
  }

  return result;
}

unint64_t sub_24FF26550()
{
  result = qword_27F3B3E80;
  if (!qword_27F3B3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B3E80);
  }

  return result;
}

unint64_t sub_24FF265A8()
{
  result = qword_27F3B3E88;
  if (!qword_27F3B3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B3E88);
  }

  return result;
}

unint64_t sub_24FF26600()
{
  result = qword_27F3B3E90;
  if (!qword_27F3B3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B3E90);
  }

  return result;
}

unint64_t sub_24FF26658()
{
  result = qword_27F3B3E98;
  if (!qword_27F3B3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B3E98);
  }

  return result;
}

uint64_t sub_24FF26728(uint64_t a1, uint64_t a2)
{
  v6 = *(v4 - 72);

  return MEMORY[0x2821FDA28](v2, a2, v3, v2, a1);
}

uint64_t sub_24FF26774(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDB68](v4, a2, v3, v2, a1);
}

uint64_t sub_24FF267B4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FE4E0](a1, a1, a3, v3, v4);
}

uint64_t sub_24FF2680C()
{
  v3 = *(v0 + 32);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t sub_24FF26834(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FE508](a1, a1, a3, v3, v4);
}

uint64_t static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)()
{
  v2 = sub_24FF27798();
  v3 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt(v2);
  v4 = sub_24FF26754(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_24FF26704();
  v9 = v8 - v7;
  v10 = sub_24FF61C18();
  sub_24FF26754(v10);
  (*(v11 + 16))(v9, v0);
  v12 = sub_24FF61848();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_24FF61838();
  v15 = sub_24FF27398(&qword_27F3B3EA0, type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt);
  sub_24FF277B0(v15);
  sub_24FF2771C();

  if (!v1)
  {
  }

  return sub_24FF2776C();
}

{
  v2 = sub_24FF27798();
  v3 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt(v2);
  v4 = sub_24FF26754(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_24FF26704();
  v9 = v8 - v7;
  v10 = sub_24FF61BE8();
  sub_24FF26754(v10);
  (*(v11 + 16))(v9, v0);
  v12 = sub_24FF61848();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_24FF61838();
  v15 = sub_24FF27398(&qword_27F3B3EA8, type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt);
  sub_24FF277B0(v15);
  sub_24FF27744();

  if (!v1)
  {
  }

  return sub_24FF2776C();
}

uint64_t sub_24FF26ABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_24FF26754(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:)()
{
  sub_24FF277EC();
  v3 = sub_24FF27828(v0, v1, v2);
  v4 = sub_24FF2552C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_24FF26704();
  v11 = v10 - v9;
  v12 = sub_24FF61BE8();
  v13 = sub_24FF2552C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_24FF276F4();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v27 - v22;
  sub_24FF61CB8();
  sub_24FF61BD8();
  sub_24FF27704();
  sub_24FF27398(v24, v25);
  sub_24FF61C68();
  (*(v6 + 8))(v11, v3);
  sub_24FF61C78();
  v26 = *(v15 + 8);
  v26(v20, v12);
  sub_24FF61C88();

  v26(v23, v12);
  sub_24FF277D4();
}

{
  sub_24FF277EC();
  v4 = sub_24FF27828(v1, v2, v3);
  v5 = sub_24FF2552C(v4);
  v27 = v6;
  v28 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_24FF26704();
  v11 = v10 - v9;
  v12 = sub_24FF61C18();
  v13 = sub_24FF2552C(v12);
  v26 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_24FF276F4();
  sub_24FF27788();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v26 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - v21;
  sub_24FF25460(&qword_27F3B3EB0, &unk_24FF62B60);
  sub_24FF61CB8();
  sub_24FF61CB8();
  sub_24FF61C08();
  sub_24FF276DC();
  sub_24FF27398(v23, v24);
  sub_24FF2781C();
  sub_24FF61C68();
  (*(v27 + 8))(v11, v28);
  sub_24FF2781C();
  sub_24FF61C98();

  v25 = *(v26 + 8);
  v25(v0, v12);
  sub_24FF2781C();
  sub_24FF61C78();
  v25(v20, v12);
  sub_24FF2781C();
  sub_24FF61C88();

  v25(v22, v12);
  sub_24FF277D4();
}

void static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)()
{
  sub_24FF277EC();
  v25[2] = v2;
  v25[3] = v1;
  v25[1] = v3;
  v4 = sub_24FF61CA8();
  v5 = sub_24FF2552C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_24FF26704();
  v12 = v11 - v10;
  v13 = sub_24FF61BE8();
  v14 = sub_24FF2552C(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_24FF276F4();
  sub_24FF27788();
  MEMORY[0x28223BE20](v19);
  v21 = v25 - v20;
  sub_24FF61BD8();
  sub_24FF27704();
  sub_24FF27398(v22, v23);
  sub_24FF61C68();
  (*(v7 + 8))(v12, v4);
  sub_24FF61C78();
  v24 = *(v16 + 8);
  v24(v0, v13);
  sub_24FF61C88();
  v24(v21, v13);
  sub_24FF277D4();
}

void static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)()
{
  sub_24FF277EC();
  v32[4] = v1;
  v32[5] = v0;
  v32[2] = v2;
  v32[3] = v3;
  v32[1] = v4;
  v5 = sub_24FF61CA8();
  v6 = sub_24FF2552C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_24FF26704();
  v13 = v12 - v11;
  v14 = sub_24FF61C18();
  v15 = sub_24FF2552C(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_24FF276F4();
  v22 = (v20 - v21);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v32 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v32 - v27;
  sub_24FF61C08();
  sub_24FF276DC();
  sub_24FF27398(v29, v30);
  sub_24FF27804();
  sub_24FF61C68();
  (*(v8 + 8))(v13, v5);
  sub_24FF27804();
  sub_24FF61C98();
  v31 = *(v17 + 8);
  v31(v22, v14);
  sub_24FF27804();
  sub_24FF61C78();
  v31(v26, v14);
  sub_24FF27804();
  sub_24FF61C88();
  v31(v28, v14);
  sub_24FF277D4();
}

uint64_t sub_24FF27398(unint64_t *a1, void (*a2)(uint64_t))
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

void static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:)()
{
  sub_24FF277EC();
  v32 = v1;
  v33 = v2;
  v31 = v3;
  v34 = v4;
  v30 = sub_24FF61CA8();
  v5 = sub_24FF2552C(v30);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_24FF26704();
  v12 = v11 - v10;
  v13 = sub_24FF61C18();
  v14 = sub_24FF2552C(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_24FF276F4();
  v21 = (v19 - v20);
  MEMORY[0x28223BE20](v22);
  sub_24FF27788();
  MEMORY[0x28223BE20](v23);
  v25 = &v29 - v24;
  sub_24FF61CB8();
  sub_24FF61C08();
  sub_24FF276DC();
  sub_24FF27398(v26, v27);
  sub_24FF27810();
  sub_24FF61C68();
  (*(v7 + 8))(v12, v30);
  sub_24FF27810();
  sub_24FF61C98();
  v28 = *(v16 + 8);
  v28(v21, v13);
  sub_24FF27810();
  sub_24FF61C78();
  v28(v0, v13);
  sub_24FF27810();
  sub_24FF61C88();

  v28(v25, v13);
  sub_24FF277D4();
}

_BYTE *storeEnumTagSinglePayload for _GenerativeFunctionOverrideHelpers(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_24FF2771C()
{

  return sub_24FF26ABC(v0, type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt);
}

uint64_t sub_24FF27744()
{

  return sub_24FF26ABC(v0, type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt);
}

uint64_t sub_24FF277B0(uint64_t a1)
{

  return MEMORY[0x28211B658](v1, v2, a1);
}

uint64_t sub_24FF27828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 96) = a2;
  *(v3 - 88) = a3;

  return sub_24FF61CA8();
}

uint64_t *sub_24FF27888(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_24FF278EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24FF27944(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24FF61BC8();
  sub_24FF27888(v3, a2);
  sub_24FF278EC(v3, a2);
  return sub_24FF61BB8();
}

uint64_t sub_24FF279BC()
{
  v0 = sub_24FF61C38();
  sub_24FF27888(v0, qword_27F3B3EB8);
  sub_24FF278EC(v0, qword_27F3B3EB8);
  return sub_24FF61C48();
}

uint64_t ChatLanguageModelProviding.respond(to:parameters:)()
{
  sub_24FF2BC7C();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  sub_24FF2BD98(v5, v6, v7, v8);
  v9 = sub_24FF61C18();
  v1[26] = v9;
  sub_24FF2552C(v9);
  v1[27] = v10;
  v12 = *(v11 + 64);
  v1[28] = sub_24FF2C24C();
  v13 = swift_task_alloc();
  v1[30] = sub_24FF2C234(v13);
  sub_24FF2BA84();
  v16 = sub_24FF2B9FC(v14, v15);
  v17 = sub_24FF2BB88(v16);
  v1[32] = v17;
  sub_24FF2BA9C(v17);
  v1[33] = v18;
  v20 = *(v19 + 64);
  v21 = sub_24FF2C21C();
  v1[35] = sub_24FF2C204(v21);
  v22 = sub_24FF2BEF8();
  v1[36] = v22;
  v23 = *(*(v22 - 8) + 64);
  v1[37] = sub_24FF2BE24();
  v24 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_24FF27DF0()
{
  sub_24FF2BC7C();
  v2 = *v1;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = v2[38];
  *v4 = *v1;
  *(v3 + 312) = v0;

  (*(v2[33] + 8))(v2[35], v2[32]);
  sub_24FF2BBB0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24FF27F44()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF25A6C(v0 + 2);
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[35];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];

  sub_24FF24BC0();
  sub_24FF2C004();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_24FF27FE4()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  v2 = *v1;
  v3 = *v1;
  sub_24FF2BACC();
  *v4 = v3;
  v5 = v2[40];
  *v4 = *v1;
  v3[41] = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    sub_24FF2C18C();

    sub_24FF2C14C();
    sub_24FF2C004();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_24FF28188()
{
  sub_24FF2BC30();
  sub_24FF25A6C(v0 + 2);
  v1 = v0[39];
  v2 = v0[37];
  sub_24FF2C0A4();
  v3 = v0[28];

  sub_24FF24BC0();

  return v4();
}

uint64_t sub_24FF2822C()
{
  sub_24FF2BC30();
  v1 = v0[41];
  v2 = v0[37];
  sub_24FF2C0A4();
  v3 = v0[28];

  sub_24FF24BC0();

  return v4();
}

uint64_t sub_24FF282C8(uint64_t a1)
{
  v2 = sub_24FF25460(&qword_27F3B3ED8, &qword_24FF62BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_24FF28348(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t ChatLanguageModelProviding.respond<A>(to:)()
{
  sub_24FF2BC70();
  v7 = sub_24FF2C03C(v1, v2, v3, v4, v5, v6);
  v0[12] = v7;
  sub_24FF2552C(v7);
  v0[13] = v8;
  v10 = *(v9 + 64);
  v0[14] = sub_24FF2BE24();
  sub_24FF2BA84();
  v13 = sub_24FF2B9FC(v11, v12);
  v0[15] = v13;
  v14 = sub_24FF2BB64(v13);
  v0[16] = v14;
  sub_24FF2BA9C(v14);
  v0[17] = v15;
  v17 = *(v16 + 64);
  v0[18] = sub_24FF2BE24();
  v18 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

{
  sub_24FF2BC70();
  sub_24FF2BC48(v1, v2, v3, v4, v5);
  v0[11] = sub_24FF61C18();
  sub_24FF2BA84();
  v8 = sub_24FF2B9FC(v6, v7);
  v0[12] = v8;
  v9 = sub_24FF2BB64(v8);
  v0[13] = v9;
  sub_24FF2BA9C(v9);
  v0[14] = v10;
  v12 = *(v11 + 64);
  v0[15] = sub_24FF2BE24();
  v13 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_24FF28470()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  (*(v0 + 56))();
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 72);
  sub_24FF2BC94(*(v0 + 88), *(v0 + 144));
  v9 = sub_24FF2BD88();
  v10(v9);
  sub_24FF2BADC();
  sub_24FF28330();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 152) = v11;
  *v11 = v12;
  v11[1] = sub_24FF285B4;
  v13 = *(v0 + 144);
  v14 = *(v0 + 128);
  v15 = *(v0 + 80);
  v16 = *(v0 + 48);
  sub_24FF2BDA8();
  sub_24FF2C1EC();

  return GenerativeConfigurationRunnable<>.run(returning:)();
}

uint64_t sub_24FF285B4()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  v2 = *v1;
  v3 = *v1;
  sub_24FF2BACC();
  *v4 = v3;
  v5 = v2[19];
  *v4 = *v1;
  v3[20] = v0;

  v6 = v2[18];
  v7 = v2[17];
  v8 = v2[16];
  if (v0)
  {
    v9 = sub_24FF2C10C(v7);
    v10(v9);
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v15 = v3[14];
    v16 = sub_24FF2C10C(v7);
    v17(v16);

    sub_24FF2C0E4();
    sub_24FF2C004();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_24FF28750()
{
  sub_24FF2BC70();
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[14];

  sub_24FF24BC0();

  return v4();
}

uint64_t sub_24FF2888C()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BBE0();
  sub_24FF2BADC();
  sub_24FF28330();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v1;
  *v1 = v2;
  sub_24FF2BB44(v1);
  sub_24FF2C004();

  return GenerativeConfigurationRunnable<>.run(returning:)();
}

uint64_t sub_24FF2892C()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[15];
  v8 = v5[14];
  v9 = v5[13];
  v10 = *v1;
  sub_24FF2BACC();
  *v11 = v10;
  *(v3 + 136) = v0;

  v12 = sub_24FF2BC60();
  v13(v12);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    v18 = *(v3 + 120);

    sub_24FF24BC0();
    sub_24FF2C004();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_24FF28AA0()
{
  sub_24FF2BC70();
  v1 = *(v0 + 120);

  sub_24FF24BC0();
  v3 = *(v0 + 136);

  return v2();
}

uint64_t ChatLanguageModelProvidingStreamable.streamResponse(to:parameters:)()
{
  sub_24FF2BC7C();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  sub_24FF2BD98(v5, v6, v7, v8);
  v9 = sub_24FF61C18();
  v1[26] = v9;
  sub_24FF2552C(v9);
  v1[27] = v10;
  v12 = *(v11 + 64);
  v1[28] = sub_24FF2C24C();
  v13 = swift_task_alloc();
  v1[30] = sub_24FF2C234(v13);
  sub_24FF2BA84();
  v16 = sub_24FF2B9FC(v14, v15);
  v17 = sub_24FF2BB88(v16);
  v1[32] = v17;
  sub_24FF2BA9C(v17);
  v1[33] = v18;
  v20 = *(v19 + 64);
  v21 = sub_24FF2C21C();
  v1[35] = sub_24FF2C204(v21);
  v22 = sub_24FF2BEF8();
  v1[36] = v22;
  v23 = *(*(v22 - 8) + 64);
  v1[37] = sub_24FF2BE24();
  v24 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_24FF28ECC()
{
  sub_24FF2BC7C();
  v2 = *v1;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = v2[38];
  *v4 = *v1;
  *(v3 + 312) = v0;

  (*(v2[33] + 8))(v2[35], v2[32]);
  sub_24FF2BBB0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24FF29020()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  v2 = *v1;
  v3 = *v1;
  sub_24FF2BACC();
  *v4 = v3;
  v5 = v2[40];
  *v4 = *v1;
  v3[41] = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    sub_24FF2C18C();

    sub_24FF2C14C();
    sub_24FF2C004();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t ChatLanguageModelProvidingStreamable.streamResponse<A>(to:)()
{
  sub_24FF2BC70();
  v7 = sub_24FF2C03C(v1, v2, v3, v4, v5, v6);
  v0[12] = v7;
  sub_24FF2552C(v7);
  v0[13] = v8;
  v10 = *(v9 + 64);
  v0[14] = sub_24FF2BE24();
  sub_24FF2BA84();
  v13 = sub_24FF2B9FC(v11, v12);
  v0[15] = v13;
  v14 = sub_24FF2BB64(v13);
  v0[16] = v14;
  sub_24FF2BA9C(v14);
  v0[17] = v15;
  v17 = *(v16 + 64);
  v0[18] = sub_24FF2BE24();
  v18 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

{
  sub_24FF2BC70();
  sub_24FF2BC48(v1, v2, v3, v4, v5);
  v0[11] = sub_24FF61C18();
  sub_24FF2BA84();
  v8 = sub_24FF2B9FC(v6, v7);
  v0[12] = v8;
  v9 = sub_24FF2BB64(v8);
  v0[13] = v9;
  sub_24FF2BA9C(v9);
  v0[14] = v10;
  v12 = *(v11 + 64);
  v0[15] = sub_24FF2BE24();
  v13 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_24FF292EC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  (*(v0 + 56))();
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 72);
  sub_24FF2BC94(*(v0 + 88), *(v0 + 144));
  v9 = sub_24FF2BD88();
  v10(v9);
  sub_24FF2BADC();
  sub_24FF291C4();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 152) = v11;
  *v11 = v12;
  v11[1] = sub_24FF29430;
  v13 = *(v0 + 144);
  v14 = *(v0 + 128);
  v15 = *(v0 + 80);
  v16 = *(v0 + 48);
  sub_24FF2BDA8();
  sub_24FF2C1EC();

  return GenerativeConfigurationRunnable<>.run(returning:)();
}

uint64_t sub_24FF29430()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  v2 = *v1;
  v3 = *v1;
  sub_24FF2BACC();
  *v4 = v3;
  v5 = v2[19];
  *v4 = *v1;
  v3[20] = v0;

  v6 = v2[18];
  v7 = v2[17];
  v8 = v2[16];
  if (v0)
  {
    v9 = sub_24FF2C10C(v7);
    v10(v9);
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v15 = v3[14];
    v16 = sub_24FF2C10C(v7);
    v17(v16);

    sub_24FF2C0E4();
    sub_24FF2C004();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_24FF296A0()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BBE0();
  sub_24FF2BADC();
  sub_24FF291C4();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v1;
  *v1 = v2;
  sub_24FF2BB44(v1);
  sub_24FF2C004();

  return GenerativeConfigurationRunnable<>.run(returning:)();
}

uint64_t sub_24FF29740()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[15];
  v8 = v5[14];
  v9 = v5[13];
  v10 = *v1;
  sub_24FF2BACC();
  *v11 = v10;
  *(v3 + 136) = v0;

  v12 = sub_24FF2BC60();
  v13(v12);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    v18 = *(v3 + 120);

    sub_24FF24BC0();
    sub_24FF2C004();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t CompletionLanguageModelProviding.complete(prompt:parameters:)()
{
  sub_24FF2BC70();
  sub_24FF2C0F8(v1, v2, v3, v4, v5, v6, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[10] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[11] = v9;
  v11 = *(v10 + 64);
  v0[12] = sub_24FF2BE24();
  v12 = sub_24FF61C28();
  v0[13] = v12;
  sub_24FF2BA9C(v12);
  v0[14] = v13;
  v15 = *(v14 + 64);
  v0[15] = sub_24FF2BE24();
  v16 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_24FF299BC()
{
  sub_24FF2BC7C();
  v2 = *(v1 + 120);
  sub_24FF2C0B0();
  v4 = v3();
  if (v0)
  {
    v7 = *(v1 + 120);
    v8 = *(v1 + 96);

    sub_24FF2BB34();

    return v9();
  }

  else
  {
    v5 = *(v1 + 96);
    v6 = *(v1 + 48);
    (*(v1 + 40))(v4);
    swift_task_alloc();
    sub_24FF2BC3C();
    *(v1 + 128) = v11;
    *v11 = v12;
    sub_24FF2BE5C(v11);

    return sub_24FF29D00();
  }
}

uint64_t sub_24FF29ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  sub_24FF2BC88();
  v15 = v14;
  sub_24FF2BB08();
  *v16 = v15;
  v18 = v17[16];
  v19 = v17[15];
  v20 = v17[14];
  v21 = v17[13];
  v22 = v17[12];
  v23 = v17[11];
  v24 = v17[10];
  v25 = *v13;
  sub_24FF2BACC();
  *v26 = v25;
  v15[17] = v12;

  v27 = sub_24FF2BDC4();
  v28(v27);
  v29 = sub_24FF2BDB4();
  v30(v29);
  if (v12)
  {
    sub_24FF2BBB0();
    sub_24FF2BCF4();

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  else
  {
    v35 = v15[15];
    v36 = v15[12];

    sub_24FF2BBC0();
    sub_24FF2BCF4();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }
}

uint64_t sub_24FF29C98()
{
  sub_24FF2BC70();
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];

  sub_24FF24BC0();

  return v4();
}

uint64_t sub_24FF29D00()
{
  sub_24FF2BC7C();
  v1[22] = v2;
  v1[23] = v0;
  sub_24FF2BD98(v3, v4, v5, v6);
  v7 = sub_24FF61C28();
  v1[24] = v7;
  sub_24FF2BA9C(v7);
  v1[25] = v8;
  v10 = *(v9 + 64);
  v1[26] = sub_24FF2BE24();
  v11 = sub_24FF61BE8();
  v1[27] = v11;
  sub_24FF2552C(v11);
  v1[28] = v12;
  v14 = *(v13 + 64);
  v15 = sub_24FF2C24C();
  v1[30] = sub_24FF2C234(v15);
  sub_24FF2BAF0();
  v18 = sub_24FF2B9FC(v16, v17);
  v19 = sub_24FF2BB88(v18);
  v1[32] = v19;
  sub_24FF2BA9C(v19);
  v1[33] = v20;
  v22 = *(v21 + 64);
  v23 = sub_24FF2C21C();
  v1[35] = sub_24FF2C204(v23);
  v24 = sub_24FF2BEF8();
  v1[36] = v24;
  sub_24FF2BA9C(v24);
  v1[37] = v25;
  v27 = *(v26 + 64);
  v1[38] = sub_24FF2BE24();
  v28 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_24FF2A0C0()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2[39];
  v4 = v2[35];
  v5 = v2[33];
  v6 = v2[32];
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  *(v9 + 320) = v0;

  (*(v5 + 8))(v4, v6);
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24FF2A21C()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF25A6C(v0 + 2);
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[26];

  sub_24FF24BC0();
  sub_24FF2C004();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_24FF2A2BC()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = v5[41];
  v7 = v5[34];
  v8 = v5[33];
  v9 = v5[32];
  v10 = *v1;
  sub_24FF2BACC();
  *v11 = v10;
  *(v3 + 336) = v0;

  v12 = sub_24FF2BC60();
  v13(v12);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    sub_24FF2C1AC();

    sub_24FF24BC0();
    sub_24FF2C004();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_24FF2A458()
{
  sub_24FF2BC30();
  sub_24FF25A6C(v0 + 2);
  v1 = v0[40];
  v2 = v0[38];
  sub_24FF2C0A4();
  v3 = v0[26];

  sub_24FF24BC0();

  return v4();
}

uint64_t sub_24FF2A4FC()
{
  sub_24FF2BC30();
  v1 = v0[42];
  v2 = v0[38];
  sub_24FF2C0A4();
  v3 = v0[26];

  sub_24FF24BC0();

  return v4();
}

uint64_t CompletionLanguageModelProviding.complete<A>(prompt:)()
{
  sub_24FF2BC70();
  v7 = sub_24FF2BFA4(v1, v2, v3, v4, v5, v6);
  v0[9] = v7;
  sub_24FF2BA9C(v7);
  v0[10] = v8;
  v10 = *(v9 + 64);
  v0[11] = sub_24FF2BE24();
  v11 = sub_24FF61C28();
  v0[12] = v11;
  sub_24FF2BA9C(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = sub_24FF2BE24();
  v15 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_24FF2A680()
{
  sub_24FF2BC7C();
  v2 = v1[14];
  sub_24FF2C0B0();
  v3();
  v4 = v1[11];
  if (v0)
  {
    v5 = v1[14];

    sub_24FF2BB34();

    return v6();
  }

  else
  {
    sub_24FF2C16C();
    swift_task_alloc();
    sub_24FF2BC3C();
    v1[15] = v8;
    *v8 = v9;
    sub_24FF2BE3C(v8);

    return sub_24FF29D00();
  }
}

uint64_t sub_24FF2A768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  sub_24FF2BC88();
  v15 = v14;
  sub_24FF2BB08();
  *v16 = v15;
  v18 = v17[15];
  v19 = v17[14];
  v20 = v17[13];
  v21 = v17[12];
  v22 = v17[11];
  v23 = v17[10];
  v24 = v17[9];
  v25 = *v13;
  sub_24FF2BACC();
  *v26 = v25;
  v15[16] = v12;

  v27 = sub_24FF2BDC4();
  v28(v27);
  v29 = sub_24FF2BDB4();
  v30(v29);
  if (v12)
  {
    sub_24FF2BBB0();
    sub_24FF2BCF4();

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  else
  {
    v35 = v15[14];
    v36 = v15[11];

    sub_24FF2BBC0();
    sub_24FF2BCF4();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }
}

uint64_t sub_24FF2A934()
{
  sub_24FF2BC70();
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];

  sub_24FF24BC0();

  return v4();
}

uint64_t CompletionLanguageModelProviding.complete<A>(prompt:)(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = sub_24FF2BB18();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24FF2A9C4()
{
  sub_24FF2BC70();
  v1 = v0[4];
  v0[2] = 0x6F77206F6C6C6568;
  v0[3] = 0xEB00000000646C72;
  sub_24FF61988();
  sub_24FF24BC0();

  return v2();
}

uint64_t CompletionLanguageModelProvidingStreamable.streamCompletion(of:parameters:)()
{
  sub_24FF2BC70();
  sub_24FF2C0F8(v1, v2, v3, v4, v5, v6, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[10] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[11] = v9;
  v11 = *(v10 + 64);
  v0[12] = sub_24FF2BE24();
  v12 = sub_24FF61C28();
  v0[13] = v12;
  sub_24FF2BA9C(v12);
  v0[14] = v13;
  v15 = *(v14 + 64);
  v0[15] = sub_24FF2BE24();
  v16 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_24FF2AB58()
{
  sub_24FF2BC7C();
  v2 = *(v1 + 120);
  sub_24FF2C0B0();
  v4 = v3();
  if (v0)
  {
    v7 = *(v1 + 120);
    v8 = *(v1 + 96);

    sub_24FF2BB34();

    return v9();
  }

  else
  {
    v5 = *(v1 + 96);
    v6 = *(v1 + 48);
    (*(v1 + 40))(v4);
    swift_task_alloc();
    sub_24FF2BC3C();
    *(v1 + 128) = v11;
    *v11 = v12;
    sub_24FF2BE5C(v11);

    return sub_24FF2AE34();
  }
}

uint64_t sub_24FF2AC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  sub_24FF2BC88();
  v15 = v14;
  sub_24FF2BB08();
  *v16 = v15;
  v18 = v17[16];
  v19 = v17[15];
  v20 = v17[14];
  v21 = v17[13];
  v22 = v17[12];
  v23 = v17[11];
  v24 = v17[10];
  v25 = *v13;
  sub_24FF2BACC();
  *v26 = v25;
  v15[17] = v12;

  v27 = sub_24FF2BDC4();
  v28(v27);
  v29 = sub_24FF2BDB4();
  v30(v29);
  if (v12)
  {
    sub_24FF2BBB0();
    sub_24FF2BCF4();

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  else
  {
    v35 = v15[15];
    v36 = v15[12];

    sub_24FF2BBC0();
    sub_24FF2BCF4();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }
}

uint64_t sub_24FF2AE34()
{
  sub_24FF2BC7C();
  v1[22] = v2;
  v1[23] = v0;
  sub_24FF2BD98(v3, v4, v5, v6);
  v7 = sub_24FF61C28();
  v1[24] = v7;
  sub_24FF2BA9C(v7);
  v1[25] = v8;
  v10 = *(v9 + 64);
  v1[26] = sub_24FF2BE24();
  v11 = sub_24FF61BE8();
  v1[27] = v11;
  sub_24FF2552C(v11);
  v1[28] = v12;
  v14 = *(v13 + 64);
  v15 = sub_24FF2C24C();
  v1[30] = sub_24FF2C234(v15);
  sub_24FF2BAF0();
  v18 = sub_24FF2B9FC(v16, v17);
  v19 = sub_24FF2BB88(v18);
  v1[32] = v19;
  sub_24FF2BA9C(v19);
  v1[33] = v20;
  v22 = *(v21 + 64);
  v23 = sub_24FF2C21C();
  v1[35] = sub_24FF2C204(v23);
  v24 = sub_24FF2BEF8();
  v1[36] = v24;
  sub_24FF2BA9C(v24);
  v1[37] = v25;
  v27 = *(v26 + 64);
  v1[38] = sub_24FF2BE24();
  v28 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_24FF2B1F4()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2[39];
  v4 = v2[35];
  v5 = v2[33];
  v6 = v2[32];
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  *(v9 + 320) = v0;

  (*(v5 + 8))(v4, v6);
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24FF2B350()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = v5[41];
  v7 = v5[34];
  v8 = v5[33];
  v9 = v5[32];
  v10 = *v1;
  sub_24FF2BACC();
  *v11 = v10;
  *(v3 + 336) = v0;

  v12 = sub_24FF2BC60();
  v13(v12);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    sub_24FF2C1AC();

    sub_24FF24BC0();
    sub_24FF2C004();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t CompletionLanguageModelProvidingStreamable.streamCompletion<A>(of:)()
{
  sub_24FF2BC70();
  v7 = sub_24FF2BFA4(v1, v2, v3, v4, v5, v6);
  v0[9] = v7;
  sub_24FF2BA9C(v7);
  v0[10] = v8;
  v10 = *(v9 + 64);
  v0[11] = sub_24FF2BE24();
  v11 = sub_24FF61C28();
  v0[12] = v11;
  sub_24FF2BA9C(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = sub_24FF2BE24();
  v15 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  sub_24FF2BC70();
  sub_24FF2BC48(v1, v2, v3, v4, v5);
  v0[11] = sub_24FF61BE8();
  sub_24FF2BAF0();
  v8 = sub_24FF2B9FC(v6, v7);
  v0[12] = v8;
  v9 = sub_24FF2BB64(v8);
  v0[13] = v9;
  sub_24FF2BA9C(v9);
  v0[14] = v10;
  v12 = *(v11 + 64);
  v0[15] = sub_24FF2BE24();
  v13 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_24FF2B5D4()
{
  sub_24FF2BC7C();
  v2 = v1[14];
  sub_24FF2C0B0();
  v3();
  v4 = v1[11];
  if (v0)
  {
    v5 = v1[14];

    sub_24FF2BB34();

    return v6();
  }

  else
  {
    sub_24FF2C16C();
    swift_task_alloc();
    sub_24FF2BC3C();
    v1[15] = v8;
    *v8 = v9;
    sub_24FF2BE3C(v8);

    return sub_24FF2AE34();
  }
}

uint64_t sub_24FF2B6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  sub_24FF2BC88();
  v15 = v14;
  sub_24FF2BB08();
  *v16 = v15;
  v18 = v17[15];
  v19 = v17[14];
  v20 = v17[13];
  v21 = v17[12];
  v22 = v17[11];
  v23 = v17[10];
  v24 = v17[9];
  v25 = *v13;
  sub_24FF2BACC();
  *v26 = v25;
  v15[16] = v12;

  v27 = sub_24FF2BDC4();
  v28(v27);
  v29 = sub_24FF2BDB4();
  v30(v29);
  if (v12)
  {
    sub_24FF2BBB0();
    sub_24FF2BCF4();

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  else
  {
    v35 = v15[14];
    v36 = v15[11];

    sub_24FF2BBC0();
    sub_24FF2BCF4();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }
}

uint64_t sub_24FF2B95C()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BBE0();
  sub_24FF2BADC();
  sub_24FF2BA44();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v1;
  *v1 = v2;
  sub_24FF2BB44(v1);
  sub_24FF2C004();

  return GenerativeConfigurationRunnable<>.run(returning:)();
}

uint64_t sub_24FF2B9FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FF2BAAC()
{

  return swift_once();
}

uint64_t sub_24FF2BB34()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_24FF2BB44(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[15];
  v4 = v2[13];
  v5 = v2[9];
  return v2[6];
}

uint64_t sub_24FF2BB64(uint64_t a1)
{
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v2;
  v3[5] = a1;

  return type metadata accessor for GenerativeConfigurationRunnable();
}

uint64_t sub_24FF2BB88(uint64_t a1)
{
  v3[31] = a1;
  v3[14] = v1;
  v3[15] = v2;
  v3[16] = v1;
  v3[17] = a1;

  return type metadata accessor for GenerativeConfigurationRunnable();
}

uint64_t sub_24FF2BBC0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_24FF2BBE0()
{
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[11];
  v8 = v0[8];

  return GenerativeConfigurationProtocol.with<A>(model:)(v4, v7, v8, v2);
}

uint64_t sub_24FF2BC0C()
{

  return swift_dynamicCast();
}

uint64_t sub_24FF2BC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a2;
  v6[8] = a3;
  v6[6] = a1;
  return 255;
}

uint64_t sub_24FF2BC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return GenerativeConfigurationProtocol.with<A>(model:)(a1, v2, v3, a2);
}

uint64_t sub_24FF2BCB0()
{
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v11 = *(v0 + 184);
  v12 = *(v0 + 272);
  v8 = *(v0 + 168);
  v13 = *(v0 + 176);
  v9 = *(v0 + 152);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;

  return sub_24FF282C8(v0 + 64);
}

uint64_t sub_24FF2BD10()
{
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;

  return sub_24FF282C8((v0 + 4));
}

uint64_t sub_24FF2BD30()
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 208);
  v4 = *(v1 + 192);
  v5 = *(v1 + 152);
  sub_24FF28348((v1 + 64), (v1 + 16));
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  sub_24FF257B8((v1 + 16), *(v1 + 40));
  v6 = *v0;
  return v3;
}

uint64_t sub_24FF2BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return 0;
}

uint64_t sub_24FF2BDF0()
{
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v10 = v0[35];
  v8 = v0[23];

  return sub_24FF61C38();
}

uint64_t sub_24FF2BE24()
{

  return swift_task_alloc();
}

uint64_t sub_24FF2BE3C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[14];
  v4 = v2[11];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[5];
  return v2[2];
}

uint64_t sub_24FF2BE5C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[15];
  v4 = v2[12];
  v5 = v2[8];
  v6 = v2[9];
  v7 = v2[7];
  return v2[2];
}

uint64_t sub_24FF2BE7C()
{
  v1 = v0[36];
  v2 = v0[25];
  v3 = v0[20];
  v4 = *(v0[37] + 16);
  return v0[38];
}

uint64_t sub_24FF2BE9C()
{
  v2 = v0[35];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[23];
  v11 = v0[22];
  v9 = v0[21];

  return sub_24FF61C38();
}

uint64_t sub_24FF2BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return MEMORY[0x2821A3E18](a1, v14, v16, v13, v15, a12, v12);
}

uint64_t sub_24FF2BEF8()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24FF2BF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return MEMORY[0x2821A3E18](a1, a11, v15, v13, v14, a13, a12);
}

void *sub_24FF2BF40()
{
  v1 = *(v0 + 232);
  sub_24FF28348((v0 + 64), (v0 + 16));
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  return sub_24FF257B8((v0 + 16), *(v0 + 40));
}

uint64_t sub_24FF2BF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return GenerativeConfigurationProtocol.with<A>(model:)(v9, v11, v10, a9);
}

uint64_t sub_24FF2BFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;

  return sub_24FF62028();
}

uint64_t sub_24FF2C018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return GenerativeConfigurationProtocol.with<A>(model:)(a9, v11, v10, a10);
}

uint64_t sub_24FF2C03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a3;
  v7[9] = a4;
  v7[6] = a1;
  v7[7] = a2;

  return sub_24FF61C18();
}

uint64_t sub_24FF2C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return GenerativeConfigurationProtocol.with<A>(model:)(a11, v12, v13, a12);
}

void sub_24FF2C0A4()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[29];
  v3 = v0[30];
}

uint64_t sub_24FF2C0E4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_24FF2C0F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = result;
  v8[3] = a2;
  return result;
}

uint64_t sub_24FF2C14C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_24FF2C16C()
{
  v3 = *(v1 + 48);

  return sub_24FF24B98(v0, 1, 1, v3);
}

uint64_t sub_24FF2C18C()
{
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
}

uint64_t sub_24FF2C1AC()
{
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[26];
}

uint64_t sub_24FF2C1CC()
{
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
}

uint64_t sub_24FF2C204(uint64_t a1)
{
  *(v1 + 272) = a1;

  return swift_task_alloc();
}

uint64_t sub_24FF2C21C()
{

  return swift_task_alloc();
}

uint64_t sub_24FF2C234(uint64_t a1)
{
  *(v1 + 232) = a1;

  return swift_task_alloc();
}

uint64_t sub_24FF2C24C()
{

  return swift_task_alloc();
}

uint64_t GenerativeConfigurationProtocol.with<A>(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24FF32294();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  sub_24FF26704();
  v15 = v14 - v13;
  sub_24FF32294();
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  sub_24FF26704();
  (*(v21 + 16))(v20 - v19, v22, a2);
  (*(v9 + 16))(v15, a1, a3);
  swift_getAssociatedTypeWitness();
  return sub_24FF2C734(v15, a3, a2, a4);
}

uint64_t GenerativeConfigurationRunnable<>.run(returning:)()
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114(v1, v2, v3);
  v4 = *(MEMORY[0x277D0DCF8] + 4);
  v5 = swift_task_alloc();
  v6 = sub_24FF321C0(v5);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  *v6 = v9;
  sub_24FF320D8(v6);
  sub_24FF325DC();

  return MEMORY[0x282166040](v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114(v1, v2, v3);
  v4 = *(MEMORY[0x277D0DD50] + 4);
  v5 = swift_task_alloc();
  v6 = sub_24FF321C0(v5);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  *v6 = v9;
  sub_24FF320D8(v6);
  sub_24FF325DC();

  return MEMORY[0x282166070](v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114(v1, v2, v3);
  v4 = *(MEMORY[0x277D0DD10] + 4);
  v5 = swift_task_alloc();
  v6 = sub_24FF321C0(v5);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  *v6 = v9;
  sub_24FF320D8(v6);
  sub_24FF325DC();

  return MEMORY[0x282166050](v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114(v1, v2, v3);
  v4 = *(MEMORY[0x277D0DDA0] + 4);
  v5 = swift_task_alloc();
  v6 = sub_24FF321C0(v5);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  *v6 = v9;
  sub_24FF320D8(v6);
  sub_24FF325DC();

  return MEMORY[0x2821660A8](v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  sub_24FF2BC70();
  sub_24FF32660(v1, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24FF3219C(AssociatedTypeWitness);
  *(v0 + 72) = v4;
  v6 = *(v5 + 64);
  *(v0 + 80) = sub_24FF2BE24();
  v7 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114(v1, v2, v3);
  v4 = *(MEMORY[0x277D0DD60] + 4);
  v5 = swift_task_alloc();
  v6 = sub_24FF321C0(v5);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  *v6 = v9;
  sub_24FF320D8(v6);
  sub_24FF325DC();

  return MEMORY[0x282166080](v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  sub_24FF2BC70();
  sub_24FF32570(v1, v2, v3, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[8] = v6;
  v8 = *(v7 + 64);
  v0[9] = sub_24FF2BE24();
  v9 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  sub_24FF2BC70();
  sub_24FF32660(v1, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24FF3219C(AssociatedTypeWitness);
  *(v0 + 72) = v4;
  v6 = *(v5 + 64);
  *(v0 + 80) = sub_24FF2BE24();
  v7 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114(v1, v2, v3);
  v4 = *(MEMORY[0x277D0DD20] + 4);
  v5 = swift_task_alloc();
  v6 = sub_24FF321C0(v5);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  *v6 = v9;
  sub_24FF320D8(v6);
  sub_24FF325DC();

  return MEMORY[0x282166058](v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  sub_24FF2BC70();
  sub_24FF32570(v1, v2, v3, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[8] = v6;
  v8 = *(v7 + 64);
  v0[9] = sub_24FF2BE24();
  v9 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2C5C0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  sub_24FF24BC0();

  return v5();
}

uint64_t sub_24FF2C734@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  sub_24FF3232C(a3);
  (*(v7 + 32))(a4);
  v8 = type metadata accessor for GenerativeConfigurationRunnable();
  return (*(*(a2 - 8) + 32))(a4 + *(v8 + 52), a1, a2);
}

uint64_t GenerativeConfigurationProtocol.withModel<A>(model:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_24FF32294();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  sub_24FF26704();
  v14 = v13 - v12;
  result = v15();
  if (!v3)
  {
    GenerativeConfigurationProtocol.with<A>(model:)(v14, a1, a2, a3);
    return (*(v8 + 8))(v14, a2);
  }

  return result;
}

uint64_t (*GenerativeConfigurationRunnable.model.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_24FF2CA70()
{
  sub_24FF2BC70();
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  sub_24FF2C50C();
  v6 = swift_task_alloc();
  v7 = sub_24FF321FC(v6);
  *v7 = v8;
  sub_24FF32540(v7);

  return GenerativeConfigurationRunnable<>.run(returning:)();
}

uint64_t sub_24FF2CB00()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2CBF8()
{
  sub_24FF2BC7C();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF61A18();
  v6 = sub_24FF321EC();
  v7(v6);
  v8 = v0[2];
  v9 = v0[3];

  sub_24FF32604();
  v10 = sub_24FF32440();

  return v11(v10);
}

uint64_t sub_24FF2CCA0()
{
  sub_24FF2BC70();
  v1 = *(v0 + 80);

  sub_24FF24BC0();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(returning:)()
{
  sub_24FF2BC70();
  sub_24FF324AC(v1, v2, v3, v4, v5, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[11] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  sub_24FF2BC70();
  sub_24FF324AC(v1, v2, v3, v4, v5, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[11] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  v0[6] = v1;
  v0[7] = v2;
  v4 = *(v3 + 24);
  v0[2] = v2;
  v0[3] = v4;
  v0[4] = v5;
  v0[5] = v6;
  v7 = type metadata accessor for ChatOneShotGenerableResponseOutput();
  sub_24FF3219C(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = sub_24FF2BE24();
  v11 = swift_task_alloc();
  v12 = sub_24FF321FC(v11);
  *v12 = v13;
  sub_24FF32230(v12);
  sub_24FF325DC();

  return GenerativeConfigurationRunnable<>.run<A>(returning:)(v14, v15, v16, v17, v18);
}

uint64_t sub_24FF2CDB0()
{
  sub_24FF2BC70();
  sub_24FF32638();
  sub_24FF2C50C();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 112) = v1;
  *v1 = v2;
  sub_24FF32468(v1);

  return GenerativeConfigurationRunnable<>.run(returning:)();
}

uint64_t sub_24FF2CE3C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2CF34()
{
  sub_24FF2BC30();
  sub_24FF326B0();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF61A18();
  v1 = sub_24FF321EC();
  v3 = v2(v1);
  sub_24FF32490(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v22);
  v21 = v11 + *v11;
  v13 = *(v12 + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v14;
  *v14 = v15;
  v16 = sub_24FF323A0(v14);

  return v17(v16);
}

uint64_t sub_24FF2D054()
{
  sub_24FF2BC7C();
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  v5 = *(v1 + 104);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_24FF2D160()
{
  sub_24FF2BC70();
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  sub_24FF24BC0();

  return v3();
}

uint64_t GenerativeConfigurationRunnable<>.run(returning:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return sub_24FF320C8();
}

{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return sub_24FF320C8();
}

uint64_t sub_24FF2D264()
{
  sub_24FF2BC70();
  v0 = swift_task_alloc();
  v1 = sub_24FF321FC(v0);
  *v1 = v2;
  v3 = sub_24FF3264C(v1);

  return GenerativeConfigurationRunnable<>.run(returning:)(v3, v4);
}

uint64_t sub_24FF2D2E4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2D3DC()
{
  sub_24FF2BC7C();
  v1 = v0[6];
  sub_24FF257B8(v0 + 2, v0[5]);
  sub_24FF32440();
  sub_24FF61A18();
  v3 = v0[7];
  v2 = v0[8];
  sub_24FF25A6C(v0 + 2);
  sub_24FF32604();
  v4 = sub_24FF32270();

  return v5(v4);
}

uint64_t sub_24FF2D468()
{
  sub_24FF24BC0();
  v1 = *(v0 + 96);
  return v2();
}

uint64_t GenerativeConfigurationRunnable<>.run(returning:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

uint64_t sub_24FF2D4A4()
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v2 = sub_24FF32250();
  sub_24FF32484(v2);
  v3 = sub_24FF323C8();
  sub_24FF325C4(v3);
  v4 = *(MEMORY[0x277D0DD10] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 40) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v5 = v8;
  sub_24FF320F8(v5);
  sub_24FF325DC();

  return MEMORY[0x282166050](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_24FF2D568()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_24FF24BC0();

    return v12();
  }
}

uint64_t sub_24FF2D67C()
{
  sub_24FF2BC70();
  sub_24FF2D738(*(v0 + 16));
  sub_24FF24BC0();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t *sub_24FF2D6D8(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t *sub_24FF2D738(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x25305D1B0);
  }

  return result;
}

uint64_t sub_24FF2D7A0()
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v2 = sub_24FF32250();
  sub_24FF32484(v2);
  v3 = sub_24FF323C8();
  sub_24FF325C4(v3);
  v4 = *(MEMORY[0x277D0DD60] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 40) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v5 = v8;
  sub_24FF320F8(v5);
  sub_24FF325DC();

  return MEMORY[0x282166080](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_24FF2D864()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_24FF24BC0();

    return v12();
  }
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(type:returning:)()
{
  sub_24FF2BC70();
  sub_24FF322A4(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_24FF619A8();
  sub_24FF3219C(v8);
  *(v0 + 72) = v9;
  v11 = *(v10 + 64);
  *(v0 + 80) = sub_24FF2BE24();
  v12 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  sub_24FF2BC70();
  sub_24FF322A4(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_24FF619A8();
  sub_24FF3219C(v8);
  *(v0 + 72) = v9;
  v11 = *(v10 + 64);
  *(v0 + 80) = sub_24FF2BE24();
  v12 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  sub_24FF2BC70();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = *(v6 + 24);
  v1[2] = v3;
  v1[3] = v7;
  v1[4] = v2;
  v1[5] = v4;
  v8 = type metadata accessor for CompletionOneShotGenerableResponseOutput();
  v1[12] = v8;
  sub_24FF2BA9C(v8);
  v1[13] = v9;
  v11 = *(v10 + 64);
  v1[14] = sub_24FF2BE24();
  v12 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  sub_24FF2BC70();
  sub_24FF32588(v1, v2, v3, v4, v5, v6);
  v7 = sub_24FF619A8();
  v0[7] = v7;
  sub_24FF2BA9C(v7);
  v0[8] = v8;
  v10 = *(v9 + 64);
  v0[9] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  sub_24FF2BC70();
  v1[6] = v2;
  v1[7] = v0;
  sub_24FF324D8(v3, v5, v4, v5, v6);
  sub_24FF61938();
  v7 = sub_24FF619A8();
  sub_24FF3219C(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  sub_24FF2BC70();
  sub_24FF322A4(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_24FF619E8();
  sub_24FF3219C(v8);
  *(v0 + 72) = v9;
  v11 = *(v10 + 64);
  *(v0 + 80) = sub_24FF2BE24();
  v12 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3227C(v1);
  v2 = sub_24FF619E8();
  v0[3] = v2;
  sub_24FF2BA9C(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = sub_24FF2BE24();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[6] = v6;
  *v6 = v7;
  sub_24FF32230(v6);
  sub_24FF325DC();

  return GenerativeConfigurationRunnable<>.run<A>(returning:)();
}

{
  sub_24FF2BC70();
  sub_24FF32588(v1, v2, v3, v4, v5, v6);
  v7 = sub_24FF619E8();
  v0[7] = v7;
  sub_24FF2BA9C(v7);
  v0[8] = v8;
  v10 = *(v9 + 64);
  v0[9] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  sub_24FF2BC70();
  v1[6] = v2;
  v1[7] = v0;
  sub_24FF324D8(v3, v5, v4, v5, v6);
  sub_24FF61938();
  v7 = sub_24FF619E8();
  sub_24FF3219C(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF2DA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24FF2BC70();
  v10 = swift_task_alloc();
  v11 = sub_24FF321FC(v10);
  *v11 = v12;
  v13 = sub_24FF321D0(v11);

  return GenerativeConfigurationRunnable<>.run<A>(type:returning:)(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_24FF2DA94()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2DB8C()
{
  sub_24FF2BC7C();
  sub_24FF32624();
  sub_24FF61998();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(type:returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF3220C(v11, v12, v13);
  v14 = *(MEMORY[0x277D0DD80] + 4);
  v15 = swift_task_alloc();
  v16 = sub_24FF321C0(v15);
  v17 = *(v10 + 32);
  v18 = *(v10 + 40);
  *v16 = v19;
  sub_24FF32130(v16);
  sub_24FF32418();

  return MEMORY[0x282166090](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF3227C(v12);
  v13 = sub_24FF619A8();
  v10[3] = v13;
  sub_24FF2BA9C(v13);
  v10[4] = v14;
  v16 = *(v15 + 64);
  v17 = sub_24FF2BE24();
  sub_24FF32610(v17);
  v18 = *(MEMORY[0x277D0D9A8] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  v10[6] = v19;
  v20 = *(v11 + 32);
  v21 = *(v11 + 40);
  *v19 = v22;
  sub_24FF32374(v19);
  sub_24FF32418();

  return MEMORY[0x282165B10](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF3220C(v11, v12, v13);
  v14 = *(MEMORY[0x277D0D9A0] + 4);
  v15 = swift_task_alloc();
  v16 = sub_24FF321C0(v15);
  v17 = *(v10 + 32);
  v18 = *(v10 + 40);
  *v16 = v19;
  sub_24FF32130(v16);
  sub_24FF32418();

  return MEMORY[0x282165B08](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF3227C(v12);
  v13 = sub_24FF619E8();
  v10[3] = v13;
  sub_24FF2BA9C(v13);
  v10[4] = v14;
  v16 = *(v15 + 64);
  v17 = sub_24FF2BE24();
  sub_24FF32610(v17);
  v18 = *(MEMORY[0x277D0D998] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  v10[6] = v19;
  v20 = *(v11 + 32);
  v21 = *(v11 + 40);
  *v19 = v22;
  sub_24FF32374(v19);
  sub_24FF32418();

  return MEMORY[0x282165B00](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF3220C(v11, v12, v13);
  v14 = *(MEMORY[0x277D0D990] + 4);
  v15 = swift_task_alloc();
  v16 = sub_24FF321C0(v15);
  v17 = *(v10 + 32);
  v18 = *(v10 + 40);
  *v16 = v19;
  sub_24FF32130(v16);
  sub_24FF32418();

  return MEMORY[0x282165AF8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_24FF2DD60()
{
  sub_24FF2BC70();
  v0 = swift_task_alloc();
  v1 = sub_24FF321FC(v0);
  *v1 = v2;
  sub_24FF321D0(v1);

  return GenerativeConfigurationRunnable<>.run<A>(type:returning:)();
}

uint64_t sub_24FF2DDE0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2DF98()
{
  sub_24FF2BC70();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[15] = v2;
  *v2 = v3;
  v2[1] = sub_24FF2E030;
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];

  return GenerativeConfigurationRunnable<>.run<A>(type:returning:)(v4, v1, v9, v7, v8, v5);
}

uint64_t sub_24FF2E030()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2E128()
{
  sub_24FF2BC7C();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[6];
  v6 = sub_24FF619A8();
  sub_24FF26754(v6);
  (*(v7 + 16))(v5, v1);
  v8 = *(v2 + 8);
  v9 = sub_24FF32270();
  v10(v9);

  sub_24FF321B0();

  return v11();
}

uint64_t sub_24FF2E1E0()
{
  sub_24FF2BC70();
  v1 = *(v0 + 112);

  sub_24FF24BC0();
  v3 = *(v0 + 128);

  return v2();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(type:returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v8 = sub_24FF619A8();
  sub_24FF3269C(v8);
  v6[8] = swift_getAssociatedTypeWitness();
  v6[9] = swift_getTupleTypeMetadata2();
  sub_24FF32294();
  v6[10] = v9;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v12 = swift_task_alloc();
  sub_24FF32688(v12);
  v13 = *(MEMORY[0x277D0DDC0] + 4);
  v14 = swift_task_alloc();
  v6[14] = v14;
  v15 = *(a3 + 32);
  v16 = *(a3 + 40);
  *v14 = v6;
  v17 = sub_24FF32348(v14);

  return MEMORY[0x2821660C0](v17);
}

uint64_t sub_24FF2E3E8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2E4E0()
{
  v5 = sub_24FF322BC();
  v6(v5);
  v7 = sub_24FF3244C();
  v8(v7);
  v9 = *(v3 + 48);
  sub_24FF322F4();
  sub_24FF324E8(v10, type metadata accessor for CompletionOneShotGenerableResponseOutput, v11, v16, v17, v18, v19, v20, v21);
  sub_24FF3232C(v4);
  (*(v12 + 8))(v1, v4);
  sub_24FF3232C(v2);
  (*(v13 + 8))(v0 + v22, v2);

  sub_24FF321B0();

  return v14();
}

uint64_t sub_24FF2E618()
{
  sub_24FF2BC70();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  sub_24FF24BC0();
  v5 = v0[15];

  return v4();
}

uint64_t sub_24FF2E728()
{
  sub_24FF2BC70();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 80) = v1;
  *v1 = v2;
  v3 = sub_24FF32510(v1);

  return GenerativeConfigurationRunnable<>.run<A>(returning:)(v3, v4, v5, v6);
}

uint64_t sub_24FF2E7AC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2E8A4()
{
  sub_24FF2BC7C();
  sub_24FF326F4();
  sub_24FF61998();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF2E91C()
{
  sub_24FF2BC70();
  v1 = *(v0 + 72);

  sub_24FF24BC0();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_24FF320C8();
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_24FF320C8();
}

uint64_t sub_24FF2E994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24FF2BC7C();
  sub_24FF326C4();
  v12 = *(MEMORY[0x277D0DD80] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v11 + 56) = v13;
  v14 = *(v10 + 32);
  v15 = *(v10 + 40);
  *v13 = v16;
  v17 = sub_24FF323F4(v13);

  return MEMORY[0x282166090](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_24FF2EA30()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  sub_24FF24BC0();

  return v5();
}

uint64_t sub_24FF2EBFC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2ECF4()
{
  sub_24FF2BC7C();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_24FF61998();
  v5 = sub_24FF321EC();
  v6(v5);

  sub_24FF321B0();

  return v7();
}

uint64_t sub_24FF2ED74()
{
  sub_24FF2BC70();
  v1 = *(v0 + 40);

  sub_24FF24BC0();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_24FF2EE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24FF2BC70();
  v10 = swift_task_alloc();
  v11 = sub_24FF321FC(v10);
  *v11 = v12;
  v13 = sub_24FF321D0(v11);

  return GenerativeConfigurationRunnable<>.run<A>(type:returning:)(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_24FF2F04C()
{
  sub_24FF2BC70();
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  sub_24FF2BA44();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[10] = v6;
  *v6 = v7;
  sub_24FF32528(v6);

  return GenerativeConfigurationRunnable<>.run(returning:)();
}

uint64_t sub_24FF2F0E0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2F1D8()
{
  sub_24FF2BC7C();
  sub_24FF32674();
  swift_getAssociatedConformanceWitness();
  sub_24FF61AE8();
  v1 = *(v0 + 8);
  v2 = sub_24FF32270();
  v3(v2);

  sub_24FF321B0();

  return v4();
}

uint64_t sub_24FF2F290()
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v2 = sub_24FF32250();
  sub_24FF32484(v2);
  v3 = sub_24FF323C8();
  sub_24FF325C4(v3);
  v4 = *(MEMORY[0x277D0DDA0] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 40) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v5 = v8;
  sub_24FF320F8(v5);
  sub_24FF325DC();

  return MEMORY[0x2821660A8](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_24FF2F404()
{
  sub_24FF2BC70();
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  sub_24FF28330();
  v6 = swift_task_alloc();
  v7 = sub_24FF321FC(v6);
  *v7 = v8;
  sub_24FF32540(v7);

  return GenerativeConfigurationRunnable<>.run(returning:)();
}

uint64_t sub_24FF2F494()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2F58C()
{
  sub_24FF2BC7C();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF619F8();
  v6 = sub_24FF321EC();
  v7(v6);
  v8 = v0[2];
  v9 = v0[3];

  sub_24FF32604();
  v10 = sub_24FF32440();

  return v11(v10);
}

uint64_t sub_24FF2F6E8()
{
  sub_24FF2BC70();
  sub_24FF32638();
  sub_24FF28330();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 112) = v1;
  *v1 = v2;
  sub_24FF32468(v1);

  return GenerativeConfigurationRunnable<>.run(returning:)();
}

uint64_t sub_24FF2F774()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2F86C()
{
  sub_24FF2BC30();
  sub_24FF326B0();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF619F8();
  v1 = sub_24FF321EC();
  v3 = v2(v1);
  sub_24FF32490(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v22);
  v21 = v11 + *v11;
  v13 = *(v12 + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v14;
  *v14 = v15;
  v16 = sub_24FF323A0(v14);

  return v17(v16);
}

uint64_t sub_24FF2FA34()
{
  sub_24FF2BC70();
  v0 = swift_task_alloc();
  v1 = sub_24FF321FC(v0);
  *v1 = v2;
  v3 = sub_24FF3264C(v1);

  return GenerativeConfigurationRunnable<>.run(returning:)(v3, v4);
}

uint64_t sub_24FF2FAB4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2FBAC()
{
  sub_24FF2BC7C();
  v1 = v0[6];
  sub_24FF257B8(v0 + 2, v0[5]);
  sub_24FF32440();
  sub_24FF619F8();
  v3 = v0[7];
  v2 = v0[8];
  sub_24FF25A6C(v0 + 2);
  sub_24FF32604();
  v4 = sub_24FF32270();

  return v5(v4);
}

uint64_t sub_24FF2FC50()
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v2 = sub_24FF32250();
  sub_24FF32484(v2);
  v3 = sub_24FF323C8();
  sub_24FF325C4(v3);
  v4 = *(MEMORY[0x277D0DCF8] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 40) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v5 = v8;
  sub_24FF320F8(v5);
  sub_24FF325DC();

  return MEMORY[0x282166040](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_24FF2FD2C()
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v2 = sub_24FF32250();
  sub_24FF32484(v2);
  v3 = sub_24FF323C8();
  sub_24FF325C4(v3);
  v4 = *(MEMORY[0x277D0DD20] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 40) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v5 = v8;
  sub_24FF320F8(v5);
  sub_24FF325DC();

  return MEMORY[0x282166058](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_24FF2FEA4()
{
  sub_24FF2BC70();
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  sub_24FF291C4();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[10] = v6;
  *v6 = v7;
  sub_24FF32528(v6);

  return GenerativeConfigurationRunnable<>.run(returning:)();
}

uint64_t sub_24FF2FF38()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF30030()
{
  sub_24FF2BC7C();
  sub_24FF32674();
  swift_getAssociatedConformanceWitness();
  sub_24FF61A78();
  v1 = *(v0 + 8);
  v2 = sub_24FF32270();
  v3(v2);

  sub_24FF321B0();

  return v4();
}

uint64_t sub_24FF300E8()
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v2 = sub_24FF32250();
  sub_24FF32484(v2);
  v3 = sub_24FF323C8();
  sub_24FF325C4(v3);
  v4 = *(MEMORY[0x277D0DD50] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 40) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v5 = v8;
  sub_24FF320F8(v5);
  sub_24FF325DC();

  return MEMORY[0x282166070](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_24FF30248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24FF2BC70();
  v11 = swift_task_alloc();
  v12 = sub_24FF321FC(v11);
  *v12 = v16;
  v12[1] = sub_24FF302DC;
  v17 = v10[10];
  v18 = v10[6];
  v19 = v10[7];
  v20 = v10[4];
  v21 = v10[5];
  v22 = v10[3];

  return GenerativeConfigurationRunnable<>.run<A>(returning:)(v17, v22, v20, v21, v18, v13, v14, v15, a9, a10);
}

uint64_t sub_24FF302DC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF303D4()
{
  sub_24FF2BC7C();
  sub_24FF32624();
  sub_24FF619D8();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF324C8();
  v12 = *(v11 + 52);
  v13 = *(v11 + 24);
  v14 = *(MEMORY[0x277D0DD38] + 4);
  v15 = swift_task_alloc();
  v16 = sub_24FF321C0(v15);
  v17 = *(v10 + 32);
  v18 = *(v10 + 40);
  *v16 = v19;
  sub_24FF32130(v16);
  sub_24FF32418();

  return MEMORY[0x282166060](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_24FF3050C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(0, *(a1 + 16));
  v6 = sub_24FF26754(v5);
  v8 = *(v7 + 16);

  return v8(a3, v3, v6);
}

uint64_t sub_24FF3058C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 40);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_24FF26754(AssociatedTypeWitness);
  v10 = *(v9 + 16);

  return v10(a2, v2 + v4, v8);
}

uint64_t sub_24FF30608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void *))
{
  sub_24FF324C8();
  v16 = v15;
  v19 = v18(0, v17);
  sub_24FF26754(v19);
  (*(v20 + 32))(v16, v10);
  v25[0] = v8;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a6;
  v21 = *(a8(0, v25) + 52);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24FF26754(AssociatedTypeWitness);
  return (*(v23 + 32))(v16 + v21, v9);
}

uint64_t sub_24FF307E8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF308E0()
{
  sub_24FF2BC7C();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_24FF619D8();
  v5 = sub_24FF321EC();
  v6(v5);

  sub_24FF321B0();

  return v7();
}

uint64_t sub_24FF30A5C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF30B54()
{
  sub_24FF2BC7C();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = sub_24FF619E8();
  sub_24FF26754(v6);
  (*(v7 + 16))(v5, v1);
  v8 = *(v2 + 8);
  v9 = sub_24FF32270();
  v10(v9);

  sub_24FF321B0();

  return v11();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24FF324D8(a1, a2, a3, a4, a5);
  v7 = sub_24FF619E8();
  sub_24FF3269C(v7);
  v5[8] = swift_getAssociatedTypeWitness();
  v5[9] = swift_getTupleTypeMetadata2();
  sub_24FF32294();
  v5[10] = v8;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v11 = swift_task_alloc();
  sub_24FF32688(v11);
  v12 = *(MEMORY[0x277D0DD88] + 4);
  v13 = swift_task_alloc();
  v5[14] = v13;
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  *v13 = v5;
  v16 = sub_24FF32348(v13);

  return MEMORY[0x282166098](v16);
}

uint64_t sub_24FF30DAC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF30EA4()
{
  v5 = sub_24FF322BC();
  v6(v5);
  v7 = sub_24FF3244C();
  v8(v7);
  v9 = *(v3 + 48);
  sub_24FF32310();
  sub_24FF324E8(v10, type metadata accessor for ChatOneShotGenerableResponseOutput, v11, v16, v17, v18, v19, v20, v21);
  sub_24FF3232C(v4);
  (*(v12 + 8))(v1, v4);
  sub_24FF3232C(v2);
  (*(v13 + 8))(v0 + v22, v2);

  sub_24FF321B0();

  return v14();
}

uint64_t sub_24FF3107C()
{
  sub_24FF2BC70();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 80) = v1;
  *v1 = v2;
  v3 = sub_24FF32510(v1);

  return GenerativeConfigurationRunnable<>.run<A>(returning:)(v3, v4, v5, v6);
}

uint64_t sub_24FF31100()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF311F8()
{
  sub_24FF2BC7C();
  sub_24FF326F4();
  sub_24FF619D8();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF3128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24FF2BC7C();
  sub_24FF326C4();
  v12 = *(MEMORY[0x277D0DD38] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v11 + 56) = v13;
  v14 = *(v10 + 32);
  v15 = *(v10 + 40);
  *v13 = v16;
  v17 = sub_24FF323F4(v13);

  return MEMORY[0x282166060](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_24FF31414()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF315C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24FF2BC70();
  v10 = swift_task_alloc();
  v11 = sub_24FF321FC(v10);
  *v11 = v12;
  v13 = sub_24FF321D0(v11);

  return GenerativeConfigurationRunnable<>.run<A>(type:returning:)(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_24FF31640()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF317CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24FF31858(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_24FF24B70(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_24FF31A20(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 32);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_24FF24B98(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t dispatch thunk of GenerativeResultDecodable.init(promptOutput:)()
{
  sub_24FF32434();
  sub_24FF324C8();
  v1 = *(v0 + 8);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_24FF321C0(v3);
  *v4 = v5;
  v6 = sub_24FF32230(v4);

  return v8(v6);
}

uint64_t sub_24FF31E54(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = a4(319, a1[2]);
  if (v6 <= 0x3F)
  {
    v7 = a1[5];
    v8 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24FF31F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v7 = a4(0, *(a3 + 16));
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = a1;
  }

  else
  {
    v8 = sub_24FF325A0();
    v9 = a1 + *(a3 + 52);
  }

  return sub_24FF24B70(v9, a2, v8);
}

uint64_t sub_24FF31FD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v9 = a5(0, *(a4 + 16));
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = a1;
  }

  else
  {
    v10 = sub_24FF325A0();
    v11 = a1 + *(a4 + 52);
  }

  return sub_24FF24B98(v11, a2, a2, v10);
}

uint64_t sub_24FF320F8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 32);
  return v3;
}

uint64_t sub_24FF32130(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v2;
  return v3;
}

void *sub_24FF3215C()
{
  v1 = v0[2];
  v2 = (v0[4] + *(v0[3] + 52));
  v3 = v2[4];
  return sub_24FF257B8(v2, v2[3]);
}

uint64_t sub_24FF3219C(uint64_t a1)
{
  *(v1 + 64) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_24FF321B0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_24FF321D0(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[10];
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[3];
  return result;
}

uint64_t sub_24FF32250()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24FF322A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[6] = a7;
  v8[7] = v7;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return 0;
}

uint64_t sub_24FF322BC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[5];
  v11 = v0[7];
  v8 = v0[2];
  v7 = v0[3];
  v9 = *(v0[10] + 16);
  return v0[12];
}

uint64_t sub_24FF32348(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  return v4;
}

uint64_t sub_24FF32374(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v2;
  return v3;
}

uint64_t sub_24FF323A0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[8];
  v4 = v2[6];
  return v2[4];
}

uint64_t sub_24FF323C8()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_24FF323F4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6 = v2[5];
  v5 = v2[6];
  v7 = v2[4];
  result = v2[2];
  *(v4 + 16) = v3;
  return result;
}

uint64_t sub_24FF3244C()
{
  v5 = *(v1 + 48);
  v3 = *(v2 + 32);
  return v0;
}

uint64_t sub_24FF32468(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[13];
  v4 = v2[9];
  v5 = v2[7];
  v6 = v2[5];
  return result;
}

uint64_t sub_24FF32490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  result = a11 + 8;
  v15 = *(a11 + 8);
  return result;
}

uint64_t sub_24FF324AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = result;
  v7[5] = a3;
  v7[10] = *(a3 + 24);
  return result;
}

uint64_t sub_24FF324D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  return 255;
}

uint64_t sub_24FF324E8@<X0>(uint64_t a1@<X6>, uint64_t (*a2)(void, void *)@<X7>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_24FF30608(v9, v10 + a3, v11, a9, a8, a7, a1, a2);
}

uint64_t sub_24FF32510(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[9];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[3];
  v7 = v2[4];
  return result;
}

uint64_t sub_24FF32528(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[9];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[3];
  return result;
}

uint64_t sub_24FF32540(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[10];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[4];
  return result;
}

uint64_t sub_24FF32570(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = result;
  v5[3] = a3;
  v5[6] = *(a3 + 24);
  return result;
}

uint64_t sub_24FF32588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return 0;
}

uint64_t sub_24FF325A0()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  return swift_getAssociatedTypeWitness();
}

uint64_t *sub_24FF325C4(uint64_t a1)
{
  v1[4] = a1;

  return sub_24FF2D6D8(v1);
}

uint64_t sub_24FF32610(uint64_t result)
{
  *(v1 + 40) = result;
  v3 = *(v2 + 52);
  v4 = *(v2 + 24);
  return result;
}

uint64_t sub_24FF32624()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[2];
  return v0[8];
}

uint64_t sub_24FF32638()
{
  result = v0[10];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  return result;
}

uint64_t sub_24FF3264C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  return v2 + 16;
}

uint64_t sub_24FF32660(uint64_t result, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = result;
  v3[7] = *(result + 24);
  return result;
}

uint64_t sub_24FF32674()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  result = v0[4];
  v6 = v0[2];
  return result;
}

uint64_t sub_24FF32688(uint64_t result)
{
  *(v2 + 104) = result;
  v4 = *(v3 + 48);
  v5 = *(v1 + 52);
  return result;
}

uint64_t sub_24FF3269C(uint64_t result)
{
  *(v1 + 48) = result;
  *(v3 + 56) = *(v2 + 24);
  return result;
}

uint64_t sub_24FF326B0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  result = v0[7];
  v6 = v0[8];
  return result;
}

void *sub_24FF326C4()
{
  v1 = (*(v0 + 48) + *(*(v0 + 24) + 52));
  v2 = v1[4];
  return sub_24FF257B8(v1, v1[3]);
}

uint64_t sub_24FF326F4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[2];
  return v0[7];
}

uint64_t CompletionPrompt.tokenCount<A>(with:)()
{
  v1 = *(MEMORY[0x277D0DDB8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  sub_24FF61BE8();
  sub_24FF329E8(qword_280B16660, MEMORY[0x277D42D40]);
  *v2 = v0;
  v3 = sub_24FF32A34();

  return MEMORY[0x2821660B8](v3);
}

uint64_t sub_24FF327F8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t ChatMessagesPrompt.tokenCount<A>(with:)()
{
  v1 = *(MEMORY[0x277D0DD78] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  sub_24FF61C18();
  sub_24FF329E8(&qword_280B16658, MEMORY[0x277D42D78]);
  *v2 = v0;
  v3 = sub_24FF32A34();

  return MEMORY[0x282166088](v3);
}

uint64_t sub_24FF329E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CompletionPrompt.overestimatedTokenCount<A>(with:)()
{
  sub_24FF32D2C();
  sub_24FF61BE8();
  sub_24FF32CDC();
  sub_24FF329E8(v0, v1);
  sub_24FF32D0C();
  return sub_24FF61B48();
}

uint64_t CompletionPrompt.tokenCountOverestimated<A>(with:)()
{
  v1 = *(MEMORY[0x277D0DDE8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  sub_24FF61BE8();
  sub_24FF32CDC();
  sub_24FF329E8(v3, v4);
  *v2 = v0;
  v5 = sub_24FF32A34();

  return MEMORY[0x2821660F8](v5);
}

uint64_t ChatMessagesPrompt.overestimatedTokenCount<A>(with:)()
{
  sub_24FF32D2C();
  sub_24FF61C18();
  sub_24FF32CF4();
  sub_24FF329E8(v0, v1);
  sub_24FF32D0C();
  return sub_24FF61B28();
}

uint64_t ChatMessagesPrompt.tokenCountOverestimated<A>(with:)()
{
  v1 = *(MEMORY[0x277D0DDE0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  sub_24FF61C18();
  sub_24FF32CF4();
  sub_24FF329E8(v3, v4);
  *v2 = v0;
  v5 = sub_24FF32A34();

  return MEMORY[0x2821660E8](v5);
}

uint64_t sub_24FF32D44()
{
  v0 = sub_24FF61C38();
  sub_24FF27888(v0, qword_27F3B3EE0);
  sub_24FF278EC(v0, qword_27F3B3EE0);
  return sub_24FF61C48();
}

uint64_t CompletionPromptRunConfig.Typed.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A5C4(v1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[9] = v3;
  v5 = *(v4 + 64);
  v0[10] = sub_24FF2BE24();
  v6 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  sub_24FF2BC7C();
  sub_24FF3A1CC(v1, v2, v3);
  v4 = sub_24FF61BE8();
  v0[21] = v4;
  sub_24FF2552C(v4);
  v0[22] = v5;
  v7 = *(v6 + 64);
  v8 = sub_24FF2BE24();
  sub_24FF3A340(v8);
  sub_24FF32CDC();
  v11 = sub_24FF329E8(v9, v10);
  v12 = sub_24FF3A140(v11);
  v0[26] = v12;
  sub_24FF2BA9C(v12);
  v0[27] = v13;
  v15 = *(v14 + 64);
  v16 = sub_24FF2C21C();
  v17 = sub_24FF3A69C(v16);
  sub_24FF3A310(v17);
  v18 = sub_24FF3A714();
  v0[31] = v18;
  sub_24FF2BA9C(v18);
  v0[32] = v19;
  v21 = *(v20 + 64);
  v0[33] = sub_24FF2BE24();
  v22 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_24FF32E70()
{
  sub_24FF2BC70();
  v2 = v0[6];
  v1 = v0[7];
  sub_24FF3309C();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[11] = v3;
  *v3 = v4;
  sub_24FF3A61C(v3);

  return CompletionPromptRunConfig.Typed.run(returning:)();
}

uint64_t sub_24FF32EFC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF32FF4()
{
  sub_24FF2BC7C();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF61A18();
  v6 = sub_24FF321EC();
  v7(v6);
  v8 = v0[2];
  v9 = v0[3];

  sub_24FF32604();
  v10 = sub_24FF32440();

  return v11(v10);
}

uint64_t sub_24FF333C8()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = v4[34];
  v6 = v4[29];
  v7 = v4[27];
  v8 = v4[26];
  v9 = *v1;
  sub_24FF2BACC();
  *v10 = v9;
  *(v11 + 280) = v0;

  v12 = *(v7 + 8);
  v13 = sub_24FF32440();
  v14(v13);
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_24FF33518()
{
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF3A134();
  *v4 = v3;
  v6 = v5[36];
  v7 = v5[28];
  v8 = v5[27];
  v9 = v5[26];
  v10 = *v1;
  sub_24FF2BACC();
  *v11 = v10;
  *(v3 + 296) = v0;

  v12 = sub_24FF2BC60();
  v13(v12);
  if (!v0)
  {
    sub_24FF3A460();

    sub_24FF321B0();
    sub_24FF2C004();

    __asm { BRAA            X1, X16 }
  }

  sub_24FF2BBD4();
  sub_24FF2C004();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t CompletionPromptRunConfig.Typed.run<A>(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A434(v1, v2, v3, v4, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[11] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[12] = v7;
  v9 = *(v8 + 64);
  v0[13] = sub_24FF2BE24();
  v10 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24FF3375C()
{
  sub_24FF2BC70();
  v2 = v0[9];
  v1 = v0[10];
  sub_24FF3309C();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[14] = v3;
  *v3 = v4;
  sub_24FF3A57C(v3);

  return CompletionPromptRunConfig.Typed.run(returning:)();
}

uint64_t sub_24FF337E8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF338E0()
{
  sub_24FF2BC30();
  sub_24FF3A5AC();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF61A18();
  v1 = sub_24FF321EC();
  v3 = v2(v1);
  sub_24FF32490(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v22);
  v21 = v11 + *v11;
  v13 = *(v12 + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v14;
  *v14 = v15;
  v16 = sub_24FF3A410(v14);

  return v17(v16);
}

uint64_t CompletionPromptRunConfig.TypedStreamable.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A4EC(v1, v2, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[8] = v5;
  v7 = *(v6 + 64);
  v0[9] = sub_24FF2BE24();
  v8 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  sub_24FF2BC7C();
  sub_24FF3A1CC(v1, v2, v3);
  v4 = sub_24FF61BE8();
  v0[21] = v4;
  sub_24FF2552C(v4);
  v0[22] = v5;
  v7 = *(v6 + 64);
  v8 = sub_24FF2BE24();
  sub_24FF3A340(v8);
  sub_24FF32CDC();
  v11 = sub_24FF329E8(v9, v10);
  v12 = sub_24FF3A140(v11);
  v0[26] = v12;
  sub_24FF2BA9C(v12);
  v0[27] = v13;
  v15 = *(v14 + 64);
  v16 = sub_24FF2C21C();
  v17 = sub_24FF3A69C(v16);
  sub_24FF3A310(v17);
  v18 = sub_24FF3A714();
  v0[31] = v18;
  sub_24FF2BA9C(v18);
  v0[32] = v19;
  v21 = *(v20 + 64);
  v0[33] = sub_24FF2BE24();
  v22 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_24FF33AE4()
{
  sub_24FF2BC70();
  v2 = v0[5];
  v1 = v0[6];
  sub_24FF33D08();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[10] = v3;
  *v3 = v4;
  sub_24FF3A630(v3);

  return CompletionPromptRunConfig.TypedStreamable.run(returning:)();
}

uint64_t sub_24FF33B70()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF33C68()
{
  sub_24FF2BC7C();
  sub_24FF3A5F4();
  swift_getAssociatedConformanceWitness();
  sub_24FF61AE8();
  v1 = *(v0 + 8);
  v2 = sub_24FF32270();
  v3(v2);

  sub_24FF321B0();

  return v4();
}

uint64_t sub_24FF34034()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = v4[34];
  v6 = v4[29];
  v7 = v4[27];
  v8 = v4[26];
  v9 = *v1;
  sub_24FF2BACC();
  *v10 = v9;
  *(v11 + 280) = v0;

  v12 = *(v7 + 8);
  v13 = sub_24FF32440();
  v14(v13);
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_24FF34184()
{
  sub_24FF2BC7C();
  sub_24FF25A6C(v0 + 2);
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[23];

  sub_24FF321B0();

  return v5();
}

uint64_t sub_24FF3420C()
{
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF3A134();
  *v4 = v3;
  v6 = v5[36];
  v7 = v5[28];
  v8 = v5[27];
  v9 = v5[26];
  v10 = *v1;
  sub_24FF2BACC();
  *v11 = v10;
  *(v3 + 296) = v0;

  v12 = sub_24FF2BC60();
  v13(v12);
  if (!v0)
  {
    sub_24FF3A460();

    sub_24FF321B0();
    sub_24FF2C004();

    __asm { BRAA            X1, X16 }
  }

  sub_24FF2BBD4();
  sub_24FF2C004();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_24FF3439C()
{
  sub_24FF2BC7C();
  sub_24FF25A6C(v0 + 2);
  v1 = v0[35];
  v2 = v0[33];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[23];

  sub_24FF24BC0();

  return v6();
}

uint64_t sub_24FF34428()
{
  sub_24FF2BC7C();
  v1 = v0[37];
  v2 = v0[33];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[23];

  sub_24FF24BC0();

  return v6();
}

uint64_t CompletionPromptRunConfig.Untyped.run(returning:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v3 = sub_24FF2BB18();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF344D4()
{
  sub_24FF2BC70();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 88) = v1;
  *v1 = v2;
  sub_24FF3264C(v1);

  return CompletionPromptRunConfig.Untyped.run(returning:)();
}

uint64_t CompletionPromptRunConfig.Untyped.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A350(v2, v3);
  v4 = sub_24FF25460(&qword_27F3B3EF8, &qword_24FF62EC8);
  sub_24FF3A330(v4);
  v6 = *(v5 + 64);
  v7 = sub_24FF2C21C();
  v1[19] = sub_24FF3A6B4(v7);
  v1[20] = *(v0 + 16);
  sub_24FF32294();
  v1[21] = v8;
  v10 = *(v9 + 64);
  v1[22] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF348C0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 192) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF349B8()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 152), &qword_27F3B3EF8, &qword_24FF62EC8);
  sub_24FF3A508();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF34A34()
{
  sub_24FF2BC7C();
  sub_24FF3A6E4();
  sub_24FF37EE0(v0, &qword_27F3B3EF8, &qword_24FF62EC8);
  sub_24FF3A380();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF34ABC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 208) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF34BB4()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 144), &qword_27F3B3EF8, &qword_24FF62EC8);
  sub_24FF3A548();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF34C30()
{
  sub_24FF2BC7C();
  sub_24FF3A6CC();
  sub_24FF37EE0(v0, &qword_27F3B3EF8, &qword_24FF62EC8);
  sub_24FF3A498();

  sub_24FF24BC0();

  return v1();
}

uint64_t CompletionPromptRunConfig.UntypedStreamable.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A350(v2, v3);
  v4 = sub_24FF25460(&qword_27F3B3F00, &qword_24FF62ED8);
  sub_24FF3A330(v4);
  v6 = *(v5 + 64);
  v7 = sub_24FF2C21C();
  v1[19] = sub_24FF3A6B4(v7);
  v1[20] = *(v0 + 16);
  sub_24FF32294();
  v1[21] = v8;
  v10 = *(v9 + 64);
  v1[22] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF35048()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 192) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF35140()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 152), &qword_27F3B3F00, &qword_24FF62ED8);
  sub_24FF3A508();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF351BC()
{
  sub_24FF2BC7C();
  sub_24FF3A6E4();
  sub_24FF37EE0(v0, &qword_27F3B3F00, &qword_24FF62ED8);
  sub_24FF3A380();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF35244()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 208) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF3533C()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 144), &qword_27F3B3F00, &qword_24FF62ED8);
  sub_24FF3A548();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF353B8()
{
  sub_24FF2BC7C();
  sub_24FF3A6CC();
  sub_24FF37EE0(v0, &qword_27F3B3F00, &qword_24FF62ED8);
  sub_24FF3A498();

  sub_24FF24BC0();

  return v1();
}

void CompletionPrompt.with<A>(model:completionParameters:modelType:)()
{
  sub_24FF35528();
}

{
  sub_24FF35528();
}

{
  sub_24FF35A14();
}

{
  sub_24FF35A14();
}

uint64_t CompletionPrompt.withModel<A>(modelType:model:completionParameters:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_24FF382F4(a1, a2, a3, a4, a5, a6, a7, MEMORY[0x277D0DD18], MEMORY[0x277D0D988], CompletionPrompt.with<A>(model:completionParameters:modelType:));
}

{
  return sub_24FF382F4(a1, a2, a3, a4, a5, a6, a7, MEMORY[0x277D0DDB0], MEMORY[0x277D0DE40], CompletionPrompt.with<A>(model:completionParameters:modelType:));
}

void CompletionPrompt.with<A, B>(model:modelType:)()
{
  sub_24FF35734();
}

{
  sub_24FF35734();
}

uint64_t CompletionPrompt.withModel<A, B>(modelType:model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_24FF38668(a1, a2, a3, a4, a5, a6, CompletionPrompt.with<A, B>(model:modelType:));
}

{
  return sub_24FF38668(a1, a2, a3, a4, a5, a6, CompletionPrompt.with<A, B>(model:modelType:));
}

void sub_24FF35528()
{
  sub_24FF277EC();
  v8 = sub_24FF3A2D0(v4, v5, v6, v7);
  sub_24FF2552C(v8);
  v10 = *(v9 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v11);
  sub_24FF3A5DC();
  sub_24FF32294();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  sub_24FF26704();
  v15 = sub_24FF61BE8();
  v16 = sub_24FF2552C(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_24FF26704();
  v20 = sub_24FF3A3C4(v19);
  v21(v20);
  v22 = sub_24FF3A688();
  v23(v22);
  v24 = sub_24FF3A674();
  v25(v24);
  sub_24FF39EBC();
  sub_24FF3A21C();
  sub_24FF36DBC(v26, v27, v28, v2, v0, v29, v30, v1, v3, v31, v32, v33);
  sub_24FF3A65C();
  sub_24FF277D4();
}

void sub_24FF35734()
{
  sub_24FF277EC();
  v9 = *(*(sub_24FF3A3D8(v2, v3, v4, v5, v6, v7, v8) - 8) + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  sub_24FF32294();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  sub_24FF26704();
  sub_24FF3A5DC();
  v16 = sub_24FF61BE8();
  v17 = sub_24FF2552C(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_24FF26704();
  v21 = sub_24FF3A594(v20);
  v22(v21);
  v23 = sub_24FF3A608();
  v24(v23);
  sub_24FF24B98(v12, 1, 1, v1);
  sub_24FF39EBC();
  sub_24FF3A4C0(v25, v26, v27, v28, v29, v30, v31, v32, v0, v33, v34[0], v34[1]);
  sub_24FF3A65C();
  sub_24FF277D4();
}

void *CompletionPrompt.withModel<A>(modelType:model:completionParameters:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  return sub_24FF388F4(a1, a2, a3, a4, a5, CompletionPrompt.with<A>(model:completionParameters:modelType:));
}

{
  return sub_24FF388F4(a1, a2, a3, a4, a5, CompletionPrompt.with<A>(model:completionParameters:modelType:));
}

void CompletionPrompt.with<A>(model:modelType:)()
{
  sub_24FF35C08();
}

{
  sub_24FF35C08();
}

void *CompletionPrompt.withModel<A>(modelType:model:)(void *(*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3)
{
  return sub_24FF38B04(a1, a2, a3, CompletionPrompt.with<A>(model:modelType:));
}

{
  return sub_24FF38B04(a1, a2, a3, CompletionPrompt.with<A>(model:modelType:));
}

void sub_24FF35A14()
{
  sub_24FF277EC();
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_24FF32294();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  sub_24FF26704();
  v23 = v22 - v21;
  v25 = v24(0);
  sub_24FF2552C(v25);
  v27 = *(v26 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v28);
  sub_24FF3A538();
  (*(v29 + 16))(v1, v7);
  sub_24FF38A78(v13, v31);
  (*(v17 + 16))(v23, v11, v9);
  sub_24FF37F38(v31, v23, v9, v6, v4, v30, v15);
  sub_24FF277D4();
}

void sub_24FF35C08()
{
  sub_24FF277EC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_24FF62028();
  sub_24FF26754(v17);
  v19 = *(v18 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v20);
  sub_24FF3A538();
  v21 = v9(0);
  sub_24FF2552C(v21);
  v23 = *(v22 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v24);
  v26 = sub_24FF3A3C4(v25);
  v27(v26, v10);
  sub_24FF38A78(v14, v28);
  sub_24FF24B98(v1, 1, 1, v12);
  sub_24FF37F38(v28, v1, v17, v7, v5, v3, v16);
  sub_24FF277D4();
}

uint64_t ChatMessagesPromptRunConfig.Typed.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A5C4(v1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[9] = v3;
  v5 = *(v4 + 64);
  v0[10] = sub_24FF2BE24();
  v6 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  sub_24FF2BC7C();
  sub_24FF3A1CC(v1, v2, v3);
  v4 = sub_24FF61C18();
  v0[21] = v4;
  sub_24FF2552C(v4);
  v0[22] = v5;
  v7 = *(v6 + 64);
  v8 = sub_24FF2BE24();
  sub_24FF3A340(v8);
  sub_24FF32CF4();
  v11 = sub_24FF329E8(v9, v10);
  v12 = sub_24FF3A140(v11);
  v0[26] = v12;
  sub_24FF2BA9C(v12);
  v0[27] = v13;
  v15 = *(v14 + 64);
  v16 = sub_24FF2C21C();
  v17 = sub_24FF3A69C(v16);
  sub_24FF3A310(v17);
  v18 = sub_24FF3A714();
  v0[31] = v18;
  sub_24FF2BA9C(v18);
  v0[32] = v19;
  v21 = *(v20 + 64);
  v0[33] = sub_24FF2BE24();
  v22 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_24FF35E3C()
{
  sub_24FF2BC70();
  v2 = v0[6];
  v1 = v0[7];
  sub_24FF36068();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[11] = v3;
  *v3 = v4;
  sub_24FF3A61C(v3);

  return ChatMessagesPromptRunConfig.Typed.run(returning:)();
}

uint64_t sub_24FF35EC8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF35FC0()
{
  sub_24FF2BC7C();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF619F8();
  v6 = sub_24FF321EC();
  v7(v6);
  v8 = v0[2];
  v9 = v0[3];

  sub_24FF32604();
  v10 = sub_24FF32440();

  return v11(v10);
}

uint64_t ChatMessagesPromptRunConfig.Typed.run<A>(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A434(v1, v2, v3, v4, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[11] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[12] = v7;
  v9 = *(v8 + 64);
  v0[13] = sub_24FF2BE24();
  v10 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24FF36448()
{
  sub_24FF2BC70();
  v2 = v0[9];
  v1 = v0[10];
  sub_24FF36068();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[14] = v3;
  *v3 = v4;
  sub_24FF3A57C(v3);

  return ChatMessagesPromptRunConfig.Typed.run(returning:)();
}

uint64_t sub_24FF364D4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF365CC()
{
  sub_24FF2BC30();
  sub_24FF3A5AC();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF619F8();
  v1 = sub_24FF321EC();
  v3 = v2(v1);
  sub_24FF32490(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v22);
  v21 = v11 + *v11;
  v13 = *(v12 + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v14;
  *v14 = v15;
  v16 = sub_24FF3A410(v14);

  return v17(v16);
}

uint64_t sub_24FF36740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_24FF26754(AssociatedTypeWitness);
  v10 = *(v9 + 16);

  return v10(a2, v2 + v4, v8);
}

uint64_t ChatMessagesPromptRunConfig.TypedStreamable.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A4EC(v1, v2, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[8] = v5;
  v7 = *(v6 + 64);
  v0[9] = sub_24FF2BE24();
  v8 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  sub_24FF2BC7C();
  sub_24FF3A1CC(v1, v2, v3);
  v4 = sub_24FF61C18();
  v0[21] = v4;
  sub_24FF2552C(v4);
  v0[22] = v5;
  v7 = *(v6 + 64);
  v8 = sub_24FF2BE24();
  sub_24FF3A340(v8);
  sub_24FF32CF4();
  v11 = sub_24FF329E8(v9, v10);
  v12 = sub_24FF3A140(v11);
  v0[26] = v12;
  sub_24FF2BA9C(v12);
  v0[27] = v13;
  v15 = *(v14 + 64);
  v16 = sub_24FF2C21C();
  v17 = sub_24FF3A69C(v16);
  sub_24FF3A310(v17);
  v18 = sub_24FF3A714();
  v0[31] = v18;
  sub_24FF2BA9C(v18);
  v0[32] = v19;
  v21 = *(v20 + 64);
  v0[33] = sub_24FF2BE24();
  v22 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_24FF3686C()
{
  sub_24FF2BC70();
  v2 = v0[5];
  v1 = v0[6];
  sub_24FF36A90();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[10] = v3;
  *v3 = v4;
  sub_24FF3A630(v3);

  return ChatMessagesPromptRunConfig.TypedStreamable.run(returning:)();
}

uint64_t sub_24FF368F8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF369F0()
{
  sub_24FF2BC7C();
  sub_24FF3A5F4();
  swift_getAssociatedConformanceWitness();
  sub_24FF61A78();
  v1 = *(v0 + 8);
  v2 = sub_24FF32270();
  v3(v2);

  sub_24FF321B0();

  return v4();
}

uint64_t sub_24FF36DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF277EC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24(0);
  sub_24FF26754(v25);
  (*(v26 + 32))(v23, v21);
  v27 = v13(0, v17, v15);
  (*(*(v17 - 8) + 32))(v23 + *(v27 + 36), v19, v17);
  v28 = *(v27 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24FF26754(AssociatedTypeWitness);
  v31 = *(v30 + 32);
  sub_24FF277D4();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t ChatMessagesPromptRunConfig.Untyped.run(returning:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v3 = sub_24FF2BB18();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF36F10()
{
  sub_24FF2BC70();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 88) = v1;
  *v1 = v2;
  sub_24FF3264C(v1);

  return ChatMessagesPromptRunConfig.Untyped.run(returning:)();
}

uint64_t ChatMessagesPromptRunConfig.Untyped.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A350(v2, v3);
  v4 = sub_24FF25460(&qword_27F3B3F08, &qword_24FF62F18);
  sub_24FF3A330(v4);
  v6 = *(v5 + 64);
  v7 = sub_24FF2C21C();
  v1[19] = sub_24FF3A6B4(v7);
  v1[20] = *(v0 + 16);
  sub_24FF32294();
  v1[21] = v8;
  v10 = *(v9 + 64);
  v1[22] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF372FC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 192) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF373F4()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 152), &qword_27F3B3F08, &qword_24FF62F18);
  sub_24FF3A508();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF37470()
{
  sub_24FF2BC7C();
  sub_24FF3A6E4();
  sub_24FF37EE0(v0, &qword_27F3B3F08, &qword_24FF62F18);
  sub_24FF3A380();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF374F8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 208) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF375F0()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 144), &qword_27F3B3F08, &qword_24FF62F18);
  sub_24FF3A548();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF3766C()
{
  sub_24FF2BC7C();
  sub_24FF3A6CC();
  sub_24FF37EE0(v0, &qword_27F3B3F08, &qword_24FF62F18);
  sub_24FF3A498();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF376F4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = sub_24FF26754(v4);
  v7 = *(v6 + 16);

  return v7(a2, v2, v5);
}

uint64_t ChatMessagesPromptRunConfig.UntypedStreamable.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A350(v2, v3);
  v4 = sub_24FF25460(qword_27F3B3F10, &qword_24FF62F28);
  sub_24FF3A330(v4);
  v6 = *(v5 + 64);
  v7 = sub_24FF2C21C();
  v1[19] = sub_24FF3A6B4(v7);
  v1[20] = *(v0 + 16);
  sub_24FF32294();
  v1[21] = v8;
  v10 = *(v9 + 64);
  v1[22] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF37AE8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 192) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF37BE0()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 152), qword_27F3B3F10, &qword_24FF62F28);
  sub_24FF3A508();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF37C5C()
{
  sub_24FF2BC7C();
  sub_24FF3A6E4();
  sub_24FF37EE0(v0, qword_27F3B3F10, &qword_24FF62F28);
  sub_24FF3A380();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF37CE4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 208) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF37DDC()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 144), qword_27F3B3F10, &qword_24FF62F28);
  sub_24FF3A548();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF37E58()
{
  sub_24FF2BC7C();
  sub_24FF3A6CC();
  sub_24FF37EE0(v0, qword_27F3B3F10, &qword_24FF62F28);
  sub_24FF3A498();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF37EE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_24FF25460(a2, a3);
  sub_24FF26754(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_24FF37F38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void, uint64_t)@<X5>, void (*a6)(uint64_t, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  v13 = a4(0);
  sub_24FF26754(v13);
  v15 = *(v14 + 32);
  v16 = sub_24FF3A454();
  v17(v16);
  v18 = a5(0, a3);
  a6(a1, a7 + *(v18 + 28));
  v19 = *(*(a3 - 8) + 32);
  v20 = a7 + *(v18 + 32);

  return v19(v20, a2, a3);
}

void ChatMessagesPrompt.with<A>(model:chatParameters:modelType:)()
{
  sub_24FF38110();
}

{
  sub_24FF38110();
}

{
  sub_24FF35A14();
}

{
  sub_24FF35A14();
}

uint64_t ChatMessagesPrompt.withModel<A>(modelType:model:chatParameters:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_24FF382F4(a1, a2, a3, a4, a5, a6, a7, MEMORY[0x277D0DD00], MEMORY[0x277D0D960], ChatMessagesPrompt.with<A>(model:chatParameters:modelType:));
}

{
  return sub_24FF382F4(a1, a2, a3, a4, a5, a6, a7, MEMORY[0x277D0DD58], MEMORY[0x277D0D980], ChatMessagesPrompt.with<A>(model:chatParameters:modelType:));
}

void ChatMessagesPrompt.with<A, B>(model:modelType:)()
{
  sub_24FF384DC();
}

{
  sub_24FF384DC();
}

uint64_t ChatMessagesPrompt.withModel<A, B>(modelType:model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_24FF38668(a1, a2, a3, a4, a5, a6, ChatMessagesPrompt.with<A, B>(model:modelType:));
}

{
  return sub_24FF38668(a1, a2, a3, a4, a5, a6, ChatMessagesPrompt.with<A, B>(model:modelType:));
}

void sub_24FF38110()
{
  sub_24FF277EC();
  v8 = sub_24FF3A2D0(v4, v5, v6, v7);
  sub_24FF2552C(v8);
  v10 = *(v9 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v11);
  sub_24FF3A5DC();
  sub_24FF32294();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  sub_24FF26704();
  v15 = sub_24FF61C18();
  v16 = sub_24FF2552C(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_24FF26704();
  v20 = sub_24FF3A3C4(v19);
  v21(v20);
  v22 = sub_24FF3A688();
  v23(v22);
  v24 = sub_24FF3A674();
  v25(v24);
  sub_24FF39EA4();
  sub_24FF3A21C();
  sub_24FF36DBC(v26, v27, v28, v2, v0, v29, v30, v1, v3, v31, v32, v33);
  sub_24FF3A65C();
  sub_24FF277D4();
}

uint64_t sub_24FF382F4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24FF2552C(AssociatedTypeWitness);
  v28 = v15;
  v17 = *(v16 + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v18);
  sub_24FF3A538();
  sub_24FF32294();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  sub_24FF26704();
  v26 = v25 - v24;
  result = a2();
  if (!v10)
  {
    a4(result);
    a10(v26, v11);
    (*(v28 + 8))(v11, AssociatedTypeWitness);
    return (*(v20 + 8))(v26, a6);
  }

  return result;
}

void sub_24FF384DC()
{
  sub_24FF277EC();
  v9 = *(*(sub_24FF3A3D8(v2, v3, v4, v5, v6, v7, v8) - 8) + 64);
  sub_24FF26800();
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  sub_24FF32294();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  sub_24FF26704();
  sub_24FF3A5DC();
  v16 = sub_24FF61C18();
  v17 = sub_24FF2552C(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_24FF26704();
  v21 = sub_24FF3A594(v20);
  v22(v21);
  v23 = sub_24FF3A608();
  v24(v23);
  sub_24FF24B98(v12, 1, 1, v1);
  sub_24FF39EA4();
  sub_24FF3A4C0(v25, v26, v27, v28, v29, v30, v31, v32, v0, v33, v34[0], v34[1]);
  sub_24FF3A65C();
  sub_24FF277D4();
}

uint64_t sub_24FF38668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  sub_24FF32294();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  sub_24FF26704();
  v16 = v15 - v14;
  result = v17();
  if (!v7)
  {
    a7(v16);
    return (*(v10 + 8))(v16, a4);
  }

  return result;
}

void *ChatMessagesPrompt.withModel<A>(modelType:model:chatParameters:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  return sub_24FF388F4(a1, a2, a3, a4, a5, ChatMessagesPrompt.with<A>(model:chatParameters:modelType:));
}

{
  return sub_24FF388F4(a1, a2, a3, a4, a5, ChatMessagesPrompt.with<A>(model:chatParameters:modelType:));
}

void ChatMessagesPrompt.with<A>(model:modelType:)()
{
  sub_24FF35C08();
}

{
  sub_24FF35C08();
}

void *ChatMessagesPrompt.withModel<A>(modelType:model:)(void *(*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3)
{
  return sub_24FF38B04(a1, a2, a3, ChatMessagesPrompt.with<A>(model:modelType:));
}

{
  return sub_24FF38B04(a1, a2, a3, ChatMessagesPrompt.with<A>(model:modelType:));
}

void *sub_24FF388F4(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t))
{
  v20 = a3;
  sub_24FF32294();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  sub_24FF26704();
  v16 = v15 - v14;
  result = v17(v19);
  if (!v6)
  {
    v20(result);
    a6(v19, v16, a5);
    (*(v10 + 8))(v16, a5);
    return sub_24FF25A6C(v19);
  }

  return result;
}

uint64_t sub_24FF38A78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_24FF3232C(v3);
  (*v4)(a2);
  return a2;
}

void *sub_24FF38B04(void *(*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  result = a1(v8);
  if (!v4)
  {
    a4(v8, a3);
    return sub_24FF25A6C(v8);
  }

  return result;
}

uint64_t dispatch thunk of PromptRunResultDecodable.init(promptOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v16 = (v11 + *v11);
  v12 = v11[1];
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v5 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_24FF2C5C0;

  return v16(a1, a2, a3, a4, a5);
}

_BYTE *sub_24FF38E7C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_24FF38FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  AssociatedTypeWitness = a4(319);
  if (v6 <= 0x3F)
  {
    v7 = *(a1 + 16);
    AssociatedTypeWitness = swift_checkMetadataState();
    if (v8 <= 0x3F)
    {
      v9 = *(a1 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

void sub_24FF390D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void))
{
  v23 = a4(0);
  v6 = *(v23 - 8);
  v7 = *(a3 + 24);
  v8 = *(*(a3 + 16) - 8);
  if (*(v8 + 84) <= *(v6 + 84))
  {
    v9 = *(*(v23 - 8) + 84);
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v10 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v10 + 84) <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  if (!a2)
  {
    goto LABEL_34;
  }

  if (a2 > v11)
  {
    v12 = ((*(v8 + 64) + *(v10 + 80) + ((*(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80))) & ~*(v10 + 80)) + *(v10 + 64);
    if (v12 <= 3)
    {
      v13 = ((a2 - v11 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v13))
      {
        if (!*(a1 + v12))
        {
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      if (v13 > 0xFF)
      {
        if (!*(a1 + v12))
        {
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      if (v13 < 2)
      {
LABEL_25:
        if (v11)
        {
          goto LABEL_28;
        }

LABEL_34:
        sub_24FF3A560();
        return;
      }
    }

    if (!*(a1 + v12))
    {
      goto LABEL_25;
    }

LABEL_17:
    if (v12)
    {
      if (v12 <= 3)
      {
        v14 = ((*(v8 + 64) + *(v10 + 80) + ((*(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80))) & ~*(v10 + 80)) + *(v10 + 64);
      }

      else
      {
        v14 = 4;
      }

      switch(v14)
      {
        case 2:
          v22 = *a1;
          break;
        case 3:
          v20 = *a1 | (*(a1 + 2) << 16);
          break;
        case 4:
          v21 = *a1;
          break;
        default:
          v15 = *a1;
          break;
      }
    }

    goto LABEL_34;
  }

LABEL_28:
  sub_24FF3A560();

  sub_24FF24B70(v16, v17, v18);
}

void sub_24FF393EC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v27 = a5(0);
  v6 = *(v27 - 8);
  v7 = *(a4 + 24);
  v8 = *(*(a4 + 16) - 8);
  if (*(v8 + 84) <= *(v6 + 84))
  {
    v9 = *(*(v27 - 8) + 84);
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v10 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v10 + 84) <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = ((*(v8 + 64) + *(v10 + 80) + ((*(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80))) & ~*(v10 + 80)) + *(v10 + 64);
  v13 = 8 * v12;
  if (a3 <= v11)
  {
    v16 = 0;
    v14 = a1;
    v15 = a2;
  }

  else
  {
    v14 = a1;
    v15 = a2;
    if (v12 <= 3)
    {
      v19 = ((a3 - v11 + ~(-1 << v13)) >> v13) + 1;
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
  }

  if (v11 < v15)
  {
    v17 = ~v11 + v15;
    if (v12 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v12)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(v14, v12);
        if (v12 == 3)
        {
          *v14 = v21;
          v14[2] = BYTE2(v21);
        }

        else if (v12 == 2)
        {
          *v14 = v21;
        }

        else
        {
          *v14 = v17;
        }
      }
    }

    else
    {
      bzero(v14, v12);
      *v14 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        v14[v12] = v18;
        goto LABEL_43;
      case 2:
        *&v14[v12] = v18;
        goto LABEL_43;
      case 3:
        goto LABEL_44;
      case 4:
        *&v14[v12] = v18;
        goto LABEL_43;
      default:
        goto LABEL_43;
    }
  }

  switch(v16)
  {
    case 1:
      v14[v12] = 0;
      if (v15)
      {
        goto LABEL_34;
      }

      goto LABEL_43;
    case 2:
      *&v14[v12] = 0;
      if (!v15)
      {
        goto LABEL_43;
      }

      goto LABEL_34;
    case 3:
LABEL_44:
      __break(1u);
      return;
    case 4:
      *&v14[v12] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (v15)
      {
LABEL_34:
        sub_24FF3A560();

        sub_24FF24B98(v22, v23, v24, v25);
      }

      else
      {
LABEL_43:
        sub_24FF3A560();
      }

      return;
  }
}

uint64_t sub_24FF397DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v6 <= 0x3F)
  {
    v8 = *(a1 + 16);
    swift_getExtendedExistentialTypeMetadata();
    result = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24FF39890(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_24FF3A4B4();
  v8 = v7(v6);
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(*(v8 - 8) + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64);
  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v18 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v16) + v17;
  v19 = 8 * v18;
  if (v18 > 3)
  {
    goto LABEL_10;
  }

  v22 = ((a2 - v14 + ~(-1 << v19)) >> v19) + 1;
  if (HIWORD(v22))
  {
    v20 = *(v3 + v18);
    if (v20)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v22 <= 0xFF)
    {
      if (v22 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v20 = *(v3 + v18);
      if (!*(v3 + v18))
      {
        goto LABEL_28;
      }

LABEL_18:
      v23 = (v20 - 1) << v19;
      if (v18 > 3)
      {
        v23 = 0;
      }

      if (v18)
      {
        if (v18 <= 3)
        {
          v24 = v18;
        }

        else
        {
          v24 = 4;
        }

        switch(v24)
        {
          case 2:
            v25 = *v3;
            break;
          case 3:
            v25 = *v3 | (*(v3 + 2) << 16);
            break;
          case 4:
            v25 = *v3;
            break;
          default:
            v25 = *v3;
            break;
        }
      }

      else
      {
        v25 = 0;
      }

      return v14 + (v25 | v23) + 1;
    }

    v20 = *(v3 + v18);
    if (*(v3 + v18))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v9 == v14)
  {
    v26 = v3;
    v12 = *(*(v8 - 8) + 84);
    v10 = v8;
LABEL_35:

    return sub_24FF24B70(v26, v12, v10);
  }

  v27 = (v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v13 & 0x80000000) != 0)
  {
    v26 = (v27 + v16 + 40) & ~v16;
    goto LABEL_35;
  }

  v28 = *(v27 + 24);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void sub_24FF39AE8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_24FF3A4B4();
  v10 = v9(v8);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(*(v10 - 8) + 84);
  v14 = *(v12 + 84);
  if (v13 <= v14)
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = *(*(v10 - 8) + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(*(v10 - 8) + 64);
  v18 = *(v12 + 80);
  v19 = ((v18 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v18) + *(v12 + 64);
  v20 = 8 * v19;
  if (a3 <= v16)
  {
    v21 = 0;
  }

  else if (v19 <= 3)
  {
    v26 = ((a3 - v16 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v26))
    {
      v21 = 4;
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
        v21 = v27;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v16 >= a2)
  {
    switch(v21)
    {
      case 1:
        *(v4 + v19) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *(v4 + v19) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_50:
        __break(1u);
        return;
      case 4:
        *(v4 + v19) = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v13 == v16)
        {
          v31 = v4;
          v32 = a2;
          v14 = v13;
          v11 = v10;
        }

        else
        {
          v33 = (v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
          if ((v15 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *(v33 + 8) = 0u;
              *(v33 + 24) = 0u;
              *v33 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v33 + 24) = (a2 - 1);
            }

            return;
          }

          v31 = (v33 + v18 + 40) & ~v18;
          v32 = a2;
        }

        sub_24FF24B98(v31, v32, v14, v11);
        break;
    }
  }

  else
  {
    v22 = ~v16 + a2;
    if (v19 < 4)
    {
      v25 = (v22 >> v20) + 1;
      if (v19)
      {
        v28 = v22 & ~(-1 << v20);
        v29 = sub_24FF32440();
        bzero(v29, v30);
        if (v19 == 3)
        {
          *v4 = v28;
          *(v4 + 2) = BYTE2(v28);
        }

        else if (v19 == 2)
        {
          *v4 = v28;
        }

        else
        {
          *v4 = v22;
        }
      }
    }

    else
    {
      v23 = sub_24FF32440();
      bzero(v23, v24);
      *v4 = v22;
      v25 = 1;
    }

    switch(v21)
    {
      case 1:
        *(v4 + v19) = v25;
        break;
      case 2:
        *(v4 + v19) = v25;
        break;
      case 3:
        goto LABEL_50;
      case 4:
        *(v4 + v19) = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_24FF39E84()
{

  return swift_once();
}

uint64_t sub_24FF39ED4()
{
  v1 = v0[20];
  v2 = *(v0[21] + 16);
  v3 = v0[16] + *(v0[15] + 32);
  return v0[22];
}

double sub_24FF39EF8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  return result;
}

uint64_t sub_24FF39F1C()
{
  *(v3 + 8) = v0;
  v4 = *(v2 + 144);
  return v1;
}

uint64_t sub_24FF39F40(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 152);
  return v2;
}

uint64_t *sub_24FF39F78()
{
  v4 = (v0 + *(v2 + 28));
  v8 = *(v4 + 3);
  sub_24FF257B8(v4, v4[3]);
  v5 = v3 + *(v1 + 52);
  *(v5 + 24) = v8;

  return sub_24FF2D6D8(v5);
}

uint64_t *sub_24FF39FCC()
{
  v4 = (v2 + *(v0 + 28));
  v8 = *(v4 + 3);
  sub_24FF257B8(v4, v4[3]);
  v5 = v1 + *(v3 + 52);
  *(v5 + 24) = v8;

  return sub_24FF2D6D8(v5);
}

void *sub_24FF3A020()
{
  sub_24FF28348((v0 + 64), (v0 + 16));
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  return sub_24FF257B8((v0 + 16), *(v0 + 40));
}

void *sub_24FF3A058()
{
  sub_24FF28348((v0 + 64), (v0 + 16));
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  return sub_24FF257B8((v0 + 16), *(v0 + 40));
}

double sub_24FF3A090()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  return result;
}

uint64_t sub_24FF3A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return MEMORY[0x2821A3E18](v11, v12, v13, v14, a1, a11, a10);
}

uint64_t sub_24FF3A0DC()
{
  v6 = v1 + *(v2 + 36);

  return GenerativeConfigurationProtocol.with<A>(model:)(v6, v0, v4, v3);
}

uint64_t sub_24FF3A108()
{
  v2 = v0[29];
  v11 = v0[30];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];

  return sub_24FF61C38();
}

uint64_t sub_24FF3A140(uint64_t a1)
{
  v3[25] = a1;
  v3[14] = v2;
  v3[15] = v1;
  v3[16] = v2;
  v3[17] = a1;

  return type metadata accessor for GenerativeConfigurationRunnable();
}

uint64_t sub_24FF3A168()
{
  v6 = v0 + *(v4 + 36);

  return GenerativeConfigurationProtocol.with<A>(model:)(v6, v2, v1, v3);
}

uint64_t sub_24FF3A190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return MEMORY[0x2821A3E18](a1, a10, v13, v14, v15, a13, a12);
}

uint64_t sub_24FF3A1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[18] = a1;
  return 0;
}

uint64_t sub_24FF3A228()
{
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];

  return sub_24FF61C38();
}

uint64_t sub_24FF3A26C()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24FF3A28C()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24FF3A2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  *(v5 - 96) = a4;
  *(v5 - 88) = a3;
  *(v5 - 120) = v4;
  *(v5 - 112) = a1;
  *(v5 - 104) = a2;

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24FF3A310(uint64_t result)
{
  *(v2 + 232) = result;
  *(v2 + 240) = *(v1 + 24);
  return result;
}

uint64_t sub_24FF3A330(uint64_t a1)
{
  *(v1 + 136) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_24FF3A340(uint64_t result)
{
  *(v2 + 184) = result;
  *(v2 + 192) = *(v1 + 16);
  return result;
}

uint64_t sub_24FF3A350(uint64_t result, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = result;
  return result;
}

uint64_t sub_24FF3A370(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 240);
  v4 = *(v2 + 224);
  return result;
}

uint64_t sub_24FF3A380()
{
  sub_24FF25A6C(v0 + 2);
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
}

uint64_t sub_24FF3A3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 96) = a6;
  *(v7 - 88) = a7;
  *(v7 - 104) = a5;

  return sub_24FF62028();
}

uint64_t sub_24FF3A410(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[6];
  v4 = v2[7];
  return v2[4];
}

uint64_t sub_24FF3A434(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[4] = result;
  v6[9] = *(a3 + 24);
  v6[10] = *(a3 + 16);
  return result;
}

uint64_t sub_24FF3A460()
{
  v2 = v0[33];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[23];
}

uint64_t sub_24FF3A47C()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_24FF3A498()
{
  v2 = v0[26];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
}

uint64_t sub_24FF3A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *(v16 - 104);
  v19 = *(v16 - 96);
  v20 = *(v16 - 88);

  return sub_24FF36DBC(v13, v12, v15, v14, v18, a6, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_24FF3A4EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = result;
  v4[5] = *(a3 + 24);
  v4[6] = *(a3 + 16);
  return result;
}

uint64_t sub_24FF3A508()
{
  sub_24FF25A6C(v0 + 2);
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
}

uint64_t sub_24FF3A548()
{
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[19];
}

uint64_t sub_24FF3A57C(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[13];
  v4 = v2[8];
  v5 = v2[5];
  return result;
}

uint64_t sub_24FF3A5AC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  result = v0[9];
  v6 = v0[7];
  return result;
}

uint64_t sub_24FF3A5C4(uint64_t result)
{
  v2[4] = result;
  v2[5] = v1;
  v2[6] = *(result + 24);
  v2[7] = *(result + 16);
  return result;
}

uint64_t sub_24FF3A5F4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  result = v0[5];
  v6 = v0[2];
  return result;
}

uint64_t sub_24FF3A61C(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[10];
  v4 = v2[4];
  v5 = v2[5];
  return result;
}

uint64_t sub_24FF3A630(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[9];
  v4 = v2[3];
  v5 = v2[4];
  return result;
}

uint64_t sub_24FF3A644(uint64_t result)
{
  *(result + 8) = v1;
  v4 = *(v2 + 232);
  v3 = *(v2 + 240);
  return result;
}

uint64_t sub_24FF3A674()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

uint64_t sub_24FF3A688()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 112);
  return result;
}

uint64_t sub_24FF3A69C(uint64_t a1)
{
  *(v1 + 224) = a1;

  return swift_task_alloc();
}

uint64_t sub_24FF3A6B4(uint64_t a1)
{
  *(v1 + 144) = a1;

  return swift_task_alloc();
}

uint64_t *sub_24FF3A6CC()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);

  return sub_24FF2D738(v3);
}

uint64_t *sub_24FF3A6E4()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);

  return sub_24FF2D738(v3);
}

uint64_t *sub_24FF3A6FC(uint64_t a1)
{
  v1[4] = a1;

  return sub_24FF2D6D8(v1);
}

uint64_t sub_24FF3A714()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t CompletionPrompt.render<A>(with:)()
{
  sub_24FF3AA28();
  v1 = *(MEMORY[0x277D0DD98] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  sub_24FF61BE8();
  sub_24FF329E8(qword_280B16660, MEMORY[0x277D42D40]);
  *v2 = v0;
  v3 = sub_24FF3AA04();

  return MEMORY[0x2821660A0](v3);
}

uint64_t sub_24FF3A81C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ChatMessagesPrompt.render<A>(with:)()
{
  sub_24FF3AA28();
  v1 = *(MEMORY[0x277D0DD40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  sub_24FF61C18();
  sub_24FF329E8(&qword_280B16658, MEMORY[0x277D42D78]);
  *v2 = v0;
  v3 = sub_24FF3AA04();

  return MEMORY[0x282166068](v3);
}

uint64_t type metadata accessor for JsonObjectFieldContainer()
{
  result = qword_280B16038;
  if (!qword_280B16038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FF3AA90()
{
  result = sub_24FF61898();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static JsonStreamDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(v2 + 16) != *(v3 + 16) || (sub_24FF3ACE0(*(a2 + 8), v2) & 1) != 0)
  {
    return 0;
  }

  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v27 = v2;
  while (v8)
  {
LABEL_13:
    if (!*(v3 + 16))
    {
      goto LABEL_16;
    }

    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = *(v2 + 48);
    v14 = *(v2 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = (v13 + 16 * v12);
    v18 = *v17;
    v19 = v17[1];

    v20 = sub_24FF3AFE0(v18, v19, sub_24FF3B0E8);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v8 &= v8 - 1;
    v23 = *(v3 + 56) + 16 * v20;
    v24 = *v23;
    v25 = *(v23 + 8);
    v30[0] = v15;
    v31 = v16;
    v28[0] = v24;
    v29 = v25;
    v26 = static JsonStreamDescriptor.== infix(_:_:)(v30, v28);

    v2 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_16:

      return 0;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FF3ACE0(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v6 = ~(-1 << v4);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 64);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v5 = ~(-1 << v9);
  }

  v10 = v5 & *(a1 + 64);
  v11 = (v4 + 63) >> 6;
  v12 = (v9 + 63) >> 6;

  v26 = a1;

  v14 = 0;
  v15 = 0;
  v25 = v3;
  if (v7)
  {
    while (1)
    {
      v16 = v14;
LABEL_12:
      v17 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v18 = (*(a2 + 48) + ((v16 << 10) | (16 * v17)));
      v19 = v18[1];
      v28 = *v18;

      if (!v10)
      {
        goto LABEL_13;
      }

LABEL_18:
      v21 = (*(v26 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v10)))));
      v23 = *v21;
      v22 = v21[1];

      if (!v19)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_28;
      }

      v24 = v28 == v23 && v19 == v22;
      if (!v24 && (sub_24FF62158() & 1) == 0)
      {

        return 0;
      }

      v10 &= v10 - 1;

      v3 = v25;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

LABEL_30:

    if (v22)
    {
LABEL_31:

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    while (1)
    {
LABEL_8:
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v11)
      {
        break;
      }

      v7 = *(v3 + 8 * v16);
      ++v14;
      if (v7)
      {
        v14 = v16;
        goto LABEL_12;
      }
    }

    v7 = 0;
    v28 = 0;
    v19 = 0;
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_13:
    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v20 >= v12)
      {
        if (v19)
        {
LABEL_28:

          goto LABEL_31;
        }

        v22 = 0;
        goto LABEL_30;
      }

      v10 = *(v8 + 8 * v20);
      ++v15;
      if (v10)
      {
        v15 = v20;
        goto LABEL_18;
      }
    }

LABEL_36:
    __break(1u);
  }

  return result;
}

__n128 sub_24FF3AF30(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24FF3AF3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24FF3AF7C(uint64_t result, int a2, int a3)
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

uint64_t sub_24FF3AFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_24FF621F8();
  sub_24FF61D88();
  v7 = sub_24FF62218();

  return a3(a1, a2, v7);
}

unint64_t sub_24FF3B064(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24FF61898();
  sub_24FF3B344(&qword_280B16630);
  v5 = sub_24FF61CD8();

  return sub_24FF3B19C(a1, v5);
}

unint64_t sub_24FF3B0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_24FF62158() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_24FF3B19C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_24FF61898();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_24FF3B344(&qword_280B16628);
    v10 = sub_24FF61D38();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_24FF3B344(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24FF61898();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t JsonObjectFieldType.hashValue.getter()
{
  v1 = *v0;
  sub_24FF621F8();
  MEMORY[0x25305CD50](v1);
  return sub_24FF62218();
}

uint64_t sub_24FF3B41C()
{
  v1 = *v0;
  sub_24FF621F8();
  MEMORY[0x25305CD50](v1);
  return sub_24FF62218();
}

uint64_t static JsonValueContainer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_16;
      }

      v26 = sub_24FF32440();
      sub_24FF3B658(v26, v27, 1);
      v28 = sub_24FF3D2AC();
      sub_24FF3B658(v28, v29, 1);
      v19 = LOBYTE(v5) ^ LOBYTE(v2) ^ 1;
      return v19 & 1;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_16;
      }

      v15 = sub_24FF32440();
      sub_24FF3B658(v15, v16, 2);
      v17 = sub_24FF3D2AC();
      sub_24FF3B658(v17, v18, 2);
      v19 = *&v2 == *&v5;
      return v19 & 1;
    case 3:
      if (v7 != 3)
      {
        goto LABEL_16;
      }

      v20 = *a1;
      v21 = *a2;
      v22 = sub_24FF32440();
      sub_24FF3B658(v22, v23, 3);
      v24 = sub_24FF3D2AC();
      sub_24FF3B658(v24, v25, 3);
      v19 = v2 == v5;
      return v19 & 1;
    case 4:
      if (v7 != 4 || (v6 | *&v5) != 0)
      {
        goto LABEL_16;
      }

      v10 = sub_24FF32440();
      sub_24FF3B658(v10, v11, 4);
      v12 = 0;
      v13 = 0;
      v14 = 4;
      goto LABEL_23;
    default:
      if (*(a2 + 16))
      {
        v8 = *(a1 + 8);

LABEL_16:
        v30 = sub_24FF3D2AC();
        sub_24FF3B644(v30, v31, v7);
        v32 = sub_24FF32440();
        sub_24FF3B658(v32, v33, v4);
        v34 = sub_24FF3D2AC();
        sub_24FF3B658(v34, v35, v7);
        v19 = 0;
      }

      else
      {
        v36 = *a1;
        if (*&v2 != *&v5 || v3 != v6)
        {
          v38 = sub_24FF62158();
          v39 = sub_24FF3D2AC();
          sub_24FF3B644(v39, v40, 0);
          v41 = sub_24FF3D26C();
          sub_24FF3B644(v41, v42, v43);
          v44 = sub_24FF3D26C();
          sub_24FF3B658(v44, v45, v46);
          v47 = sub_24FF3D2AC();
          sub_24FF3B658(v47, v48, 0);
          return v38 & 1;
        }

        sub_24FF3B644(*&v36, v3, 0);
        v50 = sub_24FF3D26C();
        sub_24FF3B644(v50, v51, v52);
        v53 = sub_24FF3D26C();
        sub_24FF3B658(v53, v54, v55);
        v12 = sub_24FF3D26C();
LABEL_23:
        sub_24FF3B658(v12, v13, v14);
        v19 = 1;
      }

      return v19 & 1;
  }
}

uint64_t sub_24FF3B644(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_24FF3B658(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t static JsonStreamEvent.== infix(_:_:)(uint64_t a1, char *a2)
{
  v210 = a2;
  v208 = a1;
  v2 = type metadata accessor for JsonFieldValueEvent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24FF25518();
  v197 = v4;
  sub_24FF25540();
  MEMORY[0x28223BE20](v5);
  v199 = v193 - v6;
  v211 = sub_24FF61898();
  v209 = *(v211 - 8);
  v7 = v209[8];
  MEMORY[0x28223BE20](v211);
  sub_24FF25518();
  v201 = v8;
  sub_24FF25540();
  MEMORY[0x28223BE20](v9);
  sub_24FF3D27C();
  v202 = v10;
  sub_24FF25540();
  MEMORY[0x28223BE20](v11);
  sub_24FF3D27C();
  v203 = v12;
  sub_24FF25540();
  MEMORY[0x28223BE20](v13);
  sub_24FF3D27C();
  v196 = v14;
  sub_24FF25540();
  MEMORY[0x28223BE20](v15);
  sub_24FF3D27C();
  v198 = v16;
  sub_24FF25540();
  MEMORY[0x28223BE20](v17);
  sub_24FF3D27C();
  v200 = v18;
  sub_24FF25540();
  MEMORY[0x28223BE20](v19);
  sub_24FF3D27C();
  v194 = v20;
  sub_24FF25540();
  MEMORY[0x28223BE20](v21);
  sub_24FF3D27C();
  v193[2] = v22;
  sub_24FF25540();
  MEMORY[0x28223BE20](v23);
  sub_24FF3D27C();
  v195 = v24;
  sub_24FF25540();
  MEMORY[0x28223BE20](v25);
  sub_24FF3D27C();
  v205 = v26;
  sub_24FF25540();
  MEMORY[0x28223BE20](v27);
  sub_24FF3D27C();
  v204 = v28;
  sub_24FF25540();
  MEMORY[0x28223BE20](v29);
  sub_24FF3D27C();
  v193[1] = v30;
  sub_24FF25540();
  MEMORY[0x28223BE20](v31);
  v193[0] = v193 - v32;
  v33 = type metadata accessor for JsonStreamEvent(0);
  v34 = sub_24FF26754(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_24FF25518();
  v207 = v37;
  sub_24FF25540();
  MEMORY[0x28223BE20](v38);
  sub_24FF3D27C();
  v206 = v39;
  sub_24FF25540();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = v193 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = v193 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = v193 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = v193 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = v193 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = v193 - v57;
  MEMORY[0x28223BE20](v56);
  v60 = v193 - v59;
  v61 = sub_24FF25460(&qword_27F3B4298, &unk_24FF632A0);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v65 = v193 - v64;
  v66 = v193 + *(v63 + 56) - v64;
  sub_24FF3C614(v208, v193 - v64);
  v67 = v210;
  v210 = v66;
  sub_24FF3C614(v67, v66);
  v68 = v65;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v134 = sub_24FF3D2A0();
      sub_24FF3C614(v134, v58);
      if (sub_24FF3D2F0() == 1)
      {
        v135 = v209;
        v136 = v209[4];
        sub_24FF3D330();
        sub_24FF3D318();
        v137();
        v80 = sub_24FF61878();
        v138 = v135[1];
        v139 = sub_24FF3D324();
        v138(v139);
        v140 = v58;
        v141 = v33;
        goto LABEL_38;
      }

      sub_24FF3D2B8();
      v71 = v58;
      goto LABEL_56;
    case 2u:
      v85 = sub_24FF3D2A0();
      sub_24FF3C614(v85, v55);
      v86 = *(sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0) + 48);
      v88 = *&v55[v86];
      v87 = *&v55[v86 + 8];
      v89 = v210;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        sub_24FF3D2B8();
        v71 = v55;
        goto LABEL_56;
      }

      v90 = *&v89[v86];
      v91 = *&v89[v86 + 8];
      v208 = v90;
      v92 = v209;
      v93 = v211;
      (v209[4])(v204, v89, v211);
      v94 = sub_24FF61878();
      v95 = v92[1];
      v95(v55, v93);
      if ((v94 & 1) == 0)
      {
        v183 = sub_24FF3D30C();
        (v95)(v183);
        goto LABEL_64;
      }

      if (v88 != v208 || v87 != v91)
      {
        v97 = sub_24FF3D33C();
        v95(v204, v93);
        goto LABEL_21;
      }

      v95(v204, v93);
      goto LABEL_69;
    case 3u:
      v98 = sub_24FF3D2A0();
      sub_24FF3C614(v98, v52);
      v99 = *(sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0) + 48);
      v101 = *&v52[v99];
      v100 = *&v52[v99 + 8];
      v102 = v210;
      sub_24FF3D324();
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        sub_24FF3D2B8();
        v71 = v52;
        goto LABEL_56;
      }

      v103 = *&v102[v99];
      v104 = *&v102[v99 + 8];
      v208 = v103;
      v105 = v209;
      v106 = v205;
      v107 = v211;
      (v209[4])(v205, v102, v211);
      v108 = sub_24FF61878();
      v109 = v105[1];
      v109(v52, v107);
      if ((v108 & 1) == 0)
      {
        v109(v106, v107);
LABEL_64:

        goto LABEL_74;
      }

      if (v101 == v208 && v100 == v104)
      {
        v109(v205, v107);
LABEL_69:

        goto LABEL_70;
      }

      v97 = sub_24FF3D33C();
      v109(v205, v107);
LABEL_21:

      if (v97)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    case 4u:
      v72 = sub_24FF3D2A0();
      sub_24FF3C614(v72, v49);
      v73 = *(sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0) + 48);
      if (sub_24FF3D2C4() != 4)
      {
        sub_24FF3C6E0(&v49[v73], type metadata accessor for JsonFieldValueEvent);
        sub_24FF3D2B8();
        v71 = v49;
        goto LABEL_56;
      }

      sub_24FF3D2E0();
      v74 = v195;
      sub_24FF3D318();
      v75();
      v76 = v199;
      sub_24FF3C738(&v49[v73], v199);
      v77 = v197;
      sub_24FF3C738(&v60[v73], v197);
      v78 = sub_24FF61878();
      v79 = *(v58 + 1);
      v79(v49, v33);
      if (v78)
      {
        v80 = static JsonFieldValueEvent.== infix(_:_:)(v76, v77);
        sub_24FF3D288();
        sub_24FF3C6E0(v77, v81);
        v82 = sub_24FF3D330();
        sub_24FF3C6E0(v82, v83);
        v84 = v74;
        goto LABEL_35;
      }

      sub_24FF3D288();
      sub_24FF3C6E0(v77, v180);
      v181 = sub_24FF3D330();
      sub_24FF3C6E0(v181, v182);
      v79(v74, v33);
      goto LABEL_74;
    case 5u:
      v142 = sub_24FF3D2A0();
      sub_24FF3C614(v142, v46);
      if (sub_24FF3D2C4() != 5)
      {
        sub_24FF3D2B8();
        v71 = v46;
        goto LABEL_56;
      }

      sub_24FF3D2E0();
      sub_24FF3D318();
      v143();
      v80 = sub_24FF61878();
      v79 = *(v58 + 1);
      v144 = sub_24FF3D324();
      (v79)(v144);
      v84 = v46;
LABEL_35:
      v79(v84, v33);
      goto LABEL_60;
    case 6u:
      v145 = sub_24FF3D2A0();
      sub_24FF3C614(v145, v43);
      if (sub_24FF3D2F0() != 6)
      {
        sub_24FF3D2B8();
        v71 = v43;
        goto LABEL_56;
      }

      v146 = v209;
      v147 = v194;
      v148 = v211;
      (v209[4])(v194, v46, v211);
      v80 = sub_24FF61878();
      v138 = v146[1];
      (v138)(v147, v148);
      v140 = v43;
      v141 = v148;
LABEL_38:
      (v138)(v140, v141);
      goto LABEL_60;
    case 7u:
      v111 = sub_24FF3D2A0();
      v112 = v206;
      sub_24FF3C614(v111, v206);
      v113 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
      v114 = *(v113 + 48);
      v115 = *(v113 + 64);
      v117 = *(v112 + v115);
      v116 = *(v112 + v115 + 8);
      if (sub_24FF3D2C4() != 7)
      {

        v172 = v209[1];
        v173 = v211;
        v172(v112 + v114, v211);
        v172(v112, v173);
        goto LABEL_57;
      }

      v118 = *&v60[v115 + 8];
      v204 = *&v60[v115];
      v205 = v117;
      v207 = v118;
      v208 = v116;
      v119 = v209;
      v120 = v112;
      v121 = v209[4];
      v122 = v200;
      v123 = v211;
      v121(v200, v60, v211);
      v121(v198, (v112 + v114), v123);
      v124 = &v60[v114];
      v125 = v196;
      v121(v196, v124, v123);
      v126 = v122;
      v127 = sub_24FF61878();
      v128 = v119[1];
      v128(v120, v123);
      if ((v127 & 1) == 0 || (v129 = v207, v130 = v125, (sub_24FF61878() & 1) == 0))
      {

        v128(v125, v123);
        v187 = sub_24FF3D30C();
        (v128)(v187);
        v128(v126, v123);
        goto LABEL_74;
      }

      if (v205 != v204 || v208 != v129)
      {
        v132 = sub_24FF62158();
        v128(v130, v123);
        v133 = sub_24FF3D30C();
        (v128)(v133);
        v128(v126, v123);

        goto LABEL_47;
      }

      v128(v125, v123);
      v190 = sub_24FF3D30C();
      (v128)(v190);
      v128(v126, v123);

      goto LABEL_70;
    case 8u:
      v149 = v207;
      sub_24FF3C614(v65, v207);
      v150 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
      v151 = *(v150 + 48);
      v152 = *(v150 + 64);
      v154 = *(v149 + v152);
      v153 = *(v149 + v152 + 8);
      if (sub_24FF3D2C4() != 8)
      {

        v174 = v209[1];
        v175 = v211;
        v174(v149 + v151, v211);
        v174(v149, v175);
        goto LABEL_57;
      }

      v208 = v153;
      v155 = *&v60[v152 + 8];
      v204 = *&v60[v152];
      v205 = v154;
      v206 = v155;
      v156 = v209;
      v157 = v209[4];
      v158 = v203;
      v159 = v211;
      v157(v203, v60, v211);
      v160 = v202;
      v157(v202, (v149 + v151), v159);
      v161 = &v60[v151];
      v162 = v201;
      v157(v201, v161, v159);
      v163 = v158;
      v164 = sub_24FF61878();
      v165 = v156[1];
      v165(v149, v159);
      if (v164)
      {
        v166 = v206;
        v65 = v68;
        v167 = v160;
        v168 = v162;
        if (sub_24FF61878())
        {
          if (v205 == v204 && v208 == v166)
          {
            v191 = v162;
            v192 = v211;
            v165(v191, v211);
            v165(v160, v192);
            v165(v163, v192);

LABEL_70:
          }

          else
          {
            v132 = sub_24FF62158();
            v170 = v168;
            v171 = v211;
            v165(v170, v211);
            v165(v160, v171);
            v165(v163, v171);

LABEL_47:

            if ((v132 & 1) == 0)
            {
              goto LABEL_74;
            }
          }

LABEL_71:
          sub_24FF3D254();
          sub_24FF3C6E0(v65, v186);
          v80 = 1;
          return v80 & 1;
        }

        v188 = v211;
        v165(v162, v211);
        v165(v167, v188);
        v165(v163, v188);
LABEL_74:
        sub_24FF3D254();
        v185 = v65;
        goto LABEL_75;
      }

      v165(v162, v159);
      v165(v160, v159);
      v165(v158, v159);
      sub_24FF3D254();
      v185 = v68;
LABEL_75:
      sub_24FF3C6E0(v185, v184);
LABEL_76:
      v80 = 0;
      return v80 & 1;
    default:
      v69 = sub_24FF3D2A0();
      sub_24FF3C614(v69, v60);
      if (!sub_24FF3D2F0())
      {
        sub_24FF3D2E0();
        sub_24FF3D330();
        sub_24FF3D318();
        v176();
        v80 = sub_24FF61878();
        v177 = *(v58 + 1);
        v178 = sub_24FF3D324();
        v177(v178);
        (v177)(v60, v33);
LABEL_60:
        sub_24FF3D254();
        sub_24FF3C6E0(v65, v179);
        return v80 & 1;
      }

      sub_24FF3D2B8();
      v71 = v60;
LABEL_56:
      v70(v71, v211);
LABEL_57:
      sub_24FF3C678(v65);
      goto LABEL_76;
  }
}