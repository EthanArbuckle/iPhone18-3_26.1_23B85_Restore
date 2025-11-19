void sub_2190586E4()
{
  if (!qword_280E8F2C8)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F2C8);
    }
  }
}

unint64_t sub_219058734()
{
  result = qword_27CC0CBF0;
  if (!qword_27CC0CBF0)
  {
    sub_218799690(255, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, sub_2186C6148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CBF0);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2190587DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_219058824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI217MagazineGridModelV4KindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

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

uint64_t sub_219058918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_219058960(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2190589C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C81260(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_219BF7884();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_219BF5A34();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_21905C21C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_219058AFC(void **a1)
{
  sub_218C4014C(0);
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_218C81274(v4);
  }

  v5 = v4[2];
  v7[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7[1] = v5;
  result = sub_21905BEC4(v7);
  *a1 = v4;
  return result;
}

uint64_t sub_219058BA4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v76 = a2;
  v70 = a1;
  v74 = sub_219BE6DF4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905BBE4(0, &qword_27CC11768, MEMORY[0x277D6DF88]);
  v73 = v6;
  v71 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v59 - v7;
  sub_21905BBE4(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v10 = v9;
  v68 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v59 - v11;
  v13 = type metadata accessor for MagazineGridItemModel();
  v78 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v80 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v59 - v16;
  sub_21897BFEC();
  v79 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905BCA4();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v29 = *(*v3 + 16);
  v75 = a3;
  if (v29)
  {
    v66 = v59 - v27;
    v60 = v25;
    v61 = v28;
    v67 = v26;
    v65 = v13;
    v62 = v12;
    v64 = v8;
    __swift_project_boxed_opaque_existential_1(v3 + 8, *(v3 + 11));
    v30 = v3[1];
    v84[0] = *v3;
    v84[1] = v30;
    *v85 = v3[2];
    *&v85[9] = *(v3 + 41);
    v77 = v3;
    v31 = sub_218BA4C6C(v84);
    v32 = sub_2190595D8(v31);
    v33 = v77;
    v34 = v32;

    v35 = v33[1];
    v82[0] = *v33;
    v82[1] = v35;
    v83[0] = v33[2];
    *(v83 + 9) = *(v33 + 41);
    v36 = v34[2];
    v63 = v10;
    if (v36)
    {
      v81 = MEMORY[0x277D84F90];
      sub_218C368F0(0, v36, 0);
      v37 = v81;
      v38 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v59[1] = v34;
      v39 = v34 + v38;
      v78 = *(v78 + 72);
      do
      {
        sub_21905DBD0(v39, v17, type metadata accessor for MagazineGridItemModel);
        sub_21905DBD0(v17, v80, type metadata accessor for MagazineGridItemModel);
        sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
        sub_219BE5FB4();
        sub_21905DCE4(v17, type metadata accessor for MagazineGridItemModel);
        v81 = v37;
        v41 = *(v37 + 16);
        v40 = *(v37 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_218C368F0(v40 > 1, v41 + 1, 1);
          v37 = v81;
        }

        *(v37 + 16) = v41 + 1;
        (*(v19 + 32))(v37 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v41, v21, v79);
        v39 += v78;
        --v36;
      }

      while (v36);
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    v51 = v74;
    v52 = v72;
    v53 = v69;
    v54 = v64;
    v55 = v66;
    if (*&v83[0])
    {
      if (*&v83[0] == 1)
      {
        sub_219059A10(v37, v66);
      }

      else if (*&v83[0] == 2)
      {
        sub_21905A864(v82, v37);
      }

      else
      {
        sub_21905A4BC(v82, v37);
      }
    }

    else
    {
      sub_21905966C(v82, v37);
    }

    v56 = v60;

    v57 = v61;
    (*(v61 + 16))(v56, v55, v67);
    sub_21895164C();
    sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    v58 = v62;
    sub_219BEB2D4();
    (*(v52 + 104))(v53, *MEMORY[0x277D6D868], v51);
    sub_218D4F180();
    sub_219BE85E4();
    (*(v52 + 8))(v53, v51);
    v76(v54);
    (*(v71 + 8))(v54, v73);
    (*(v68 + 8))(v58, v63);
    return (*(v57 + 8))(v66, v67);
  }

  else
  {
    sub_218951594();
    v43 = v42;
    v44 = v10;
    v45 = sub_21905DC9C(&qword_27CC15620, sub_218951594);
    v46 = sub_21905DC9C(&qword_27CC15628, sub_218951594);
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v43, v45, v46);
    sub_21895164C();
    sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    sub_219BEB2D4();
    v47 = v72;
    v48 = v69;
    v49 = v74;
    (*(v72 + 104))(v69, *MEMORY[0x277D6D868], v74);
    sub_218D4F180();
    sub_219BE85E4();
    (*(v47 + 8))(v48, v49);
    (*(v68 + 8))(v12, v44);
    v76(v8);
    return (*(v71 + 8))(v8, v73);
  }
}

void *sub_2190595D8(void *a1)
{
  v2 = *(v1 + 56);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1;

      sub_219B11034(&v4);
      return v4;
    }
  }

  else if (v2 - 1 >= 2)
  {
    v4 = a1;

    sub_219B10FF4(&v4);
    return v4;
  }
}

uint64_t sub_21905966C(uint64_t a1, uint64_t a2)
{
  sub_21905BD70();
  MEMORY[0x28223BE20](v4 - 8);
  sub_218951594();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905DC9C(&qword_27CC15620, sub_218951594);
  sub_21905DC9C(&qword_27CC15628, sub_218951594);
  v19[0] = v6;
  sub_219BE2444();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  if ((v11 - 1) >= 4)
  {
    sub_21905ABFC();
    sub_21905BCA4();
    sub_219BE23F4();

    a2 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  sub_21938C450();
  v19[3] = v10;
  v19[4] = v11;
  v19[5] = v12;
  v19[6] = 0;
  v20 = 1;
  v19[2] = a2;
  sub_21905DD44(0, &qword_27CC15648, sub_21897BFEC, MEMORY[0x277D83940]);
  sub_21905BE3C();
  v13 = sub_219BF56E4();

  sub_21897BFEC();
  v15 = v14;
  v16 = sub_21905DC9C(&qword_27CC15638, sub_21897BFEC);
  v17 = sub_21905DC9C(&qword_27CC15640, sub_21897BFEC);
  MEMORY[0x21CEB9170](v13, v15, v16, v17);
  type metadata accessor for MagazineGridItemModel();
  sub_21895164C();
  sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
  sub_219BE6924();
  sub_21905BCA4();
  sub_219BE2424();
  return (*(v7 + 8))(v9, v19[0]);
}

uint64_t sub_219059A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  sub_218C4014C(0);
  v82 = v3;
  v86 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v81 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v59 - v6;
  sub_21897BFEC();
  v8 = v7;
  v83 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905BD70();
  v73 = v11;
  v85 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v72 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v59 - v14;
  sub_218951594();
  v74 = v15;
  v75 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BDBF94();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBF34();
  v59 = v19;
  v88 = v19;
  v20 = a1;
  v21 = 0;
  v22 = sub_218D24F1C(MEMORY[0x277D84F98], sub_21905DBB4, v87, v20);
  v23 = *(v22 + 16);
  if (v23)
  {
    v78 = 0;
    v24 = sub_21947D47C(v23, 0);
    v84 = sub_2194AC28C(v89, v24 + 4, v23, v22);
    v21 = v90;
    v79 = v91;
    swift_bridgeObjectRetain_n();
    sub_21892DE98();
    if (v84 != v23)
    {
      __break(1u);
      goto LABEL_34;
    }

    v21 = v78;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v89[0] = v24;
  sub_2190589C8(v89);
  if (v21)
  {
LABEL_34:

    __break(1u);
    return result;
  }

  v25 = v89[0];
  v26 = v89[0][2];
  if (v26)
  {
    v27 = v89[0] + 4;
    v63 = (v83 + 32);
    v66 = (v85 + 2);
    v65 = (v85 + 1);
    v64 = v75 + 32;
    v28 = MEMORY[0x277D84F90];
    v70 = v17;
    v69 = v22;
    v68 = v89[0];
    v67 = v89[0] + 4;
    while (v26 <= v25[2])
    {
      --v26;
      if (*(v22 + 16))
      {
        v29 = v27[v26];
        v30 = sub_219320C04(v29);
        if (v31)
        {
          v77 = v29;
          v89[0] = *(*(v22 + 56) + 8 * v30);
          swift_bridgeObjectRetain_n();
          sub_219058AFC(v89);
          if (v21)
          {
            goto LABEL_34;
          }

          v78 = v28;
          v79 = v26;

          v32 = v89[0];
          v33 = v89[0][2];
          if (v33)
          {
            v76 = 0;
            v89[0] = MEMORY[0x277D84F90];
            sub_218C368F0(0, v33, 0);
            v34 = v32[2];
            v35 = v89[0];
            v84 = (v32 + ((*(v86 + 80) + 32) & ~*(v86 + 80)));
            v36 = v34 - 1;
            v37 = v63;
            v85 = v32;
            while (v36 != -1)
            {
              if (v36 >= v32[2])
              {
                goto LABEL_28;
              }

              v38 = v80;
              sub_21905DBD0(v84 + *(v86 + 72) * v36, v80, sub_218C4014C);
              v39 = v10;
              v40 = v81;
              sub_21905DC38(v38, v81);
              v41 = *(v82 + 48);
              v42 = *v37;
              (*v37)(v39, v40, v8);
              v43 = sub_219BDBD34();
              (*(*(v43 - 8) + 8))(v40 + v41, v43);
              v89[0] = v35;
              v44 = v8;
              v46 = v35[2];
              v45 = v35[3];
              v28 = (v46 + 1);
              if (v46 >= v45 >> 1)
              {
                sub_218C368F0(v45 > 1, v46 + 1, 1);
                v35 = v89[0];
              }

              v35[2] = v28;
              v42(v35 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v46, v39, v44);
              --v36;
              --v33;
              v8 = v44;
              v10 = v39;
              v32 = v85;
              if (!v33)
              {

                v21 = v76;
                goto LABEL_23;
              }
            }

            __break(1u);
LABEL_28:
            __break(1u);
            break;
          }

          v35 = MEMORY[0x277D84F90];
LABEL_23:
          v89[0] = v35;
          sub_21905DD44(0, &qword_27CC15648, sub_21897BFEC, MEMORY[0x277D83940]);
          sub_21905BE3C();
          v47 = sub_219BF56E4();

          v48 = sub_21905DC9C(&qword_27CC15638, sub_21897BFEC);
          v49 = sub_21905DC9C(&qword_27CC15640, sub_21897BFEC);
          v50 = v71;
          MEMORY[0x21CEB9170](v47, v8, v48, v49);
          sub_21905DC9C(&qword_27CC15658, sub_21905BD70);
          v51 = v73;
          sub_219BF5DF4();
          sub_219BF5E84();
          v52 = sub_219BF5E74();
          v89[0] = v77;
          v89[1] = v52;
          v89[2] = 0;
          v90 = 0;
          LOBYTE(v91) = 2;
          (*v66)(v72, v50, v51);
          type metadata accessor for MagazineGridItemModel();
          sub_21895164C();
          sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
          v53 = v70;
          sub_219BE6924();
          (*v65)(v50, v51);
          v28 = v78;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_2191F9A38(0, v28[2] + 1, 1, v28);
          }

          v25 = v68;
          v26 = v79;
          v27 = v67;
          v55 = v28[2];
          v54 = v28[3];
          if (v55 >= v54 >> 1)
          {
            v28 = sub_2191F9A38(v54 > 1, v55 + 1, 1, v28);
          }

          v28[2] = v55 + 1;
          (*(v75 + 32))(v28 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, v53, v74);
          v22 = v69;
        }
      }

      if (!v26)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_30:
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v56 = sub_21905DC9C(&qword_27CC15620, sub_218951594);
  v57 = sub_21905DC9C(&qword_27CC15628, sub_218951594);
  MEMORY[0x21CEB9170](v28, v74, v56, v57);
  return (*(v60 + 8))(v59, v61);
}

uint64_t sub_21905A4BC(uint64_t a1, uint64_t a2)
{
  sub_21905BD70();
  MEMORY[0x28223BE20](v4 - 8);
  sub_218951594();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905DC9C(&qword_27CC15620, sub_218951594);
  sub_21905DC9C(&qword_27CC15628, sub_218951594);
  v20[0] = v6;
  sub_219BE2444();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  if ((v11 - 1) >= 4)
  {
    sub_21905ABFC();
    sub_21905BCA4();
    sub_219BE23F4();

    a2 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v20[3] = v10;
  v20[4] = v11;
  v20[5] = v12;
  v20[6] = v13;
  v21 = 0;
  v20[2] = a2;
  sub_21905DD44(0, &qword_27CC15648, sub_21897BFEC, MEMORY[0x277D83940]);
  sub_21905BE3C();

  v14 = sub_219BF56E4();

  sub_21897BFEC();
  v16 = v15;
  v17 = sub_21905DC9C(&qword_27CC15638, sub_21897BFEC);
  v18 = sub_21905DC9C(&qword_27CC15640, sub_21897BFEC);
  MEMORY[0x21CEB9170](v14, v16, v17, v18);
  type metadata accessor for MagazineGridItemModel();
  sub_21895164C();
  sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
  sub_219BE6924();
  sub_21905BCA4();
  sub_219BE2424();
  return (*(v7 + 8))(v9, v20[0]);
}

uint64_t sub_21905A864(uint64_t a1, uint64_t a2)
{
  sub_21905BD70();
  MEMORY[0x28223BE20](v4 - 8);
  sub_218951594();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905DC9C(&qword_27CC15620, sub_218951594);
  sub_21905DC9C(&qword_27CC15628, sub_218951594);
  sub_219BE2444();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  if ((v11 - 1) >= 4)
  {
    sub_21905ABFC();
    sub_21905BCA4();
    sub_219BE23F4();

    a2 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v18[3] = v10;
  v18[4] = v11;
  v18[5] = 0;
  v18[6] = 0;
  v19 = 3;
  v18[2] = a2;
  sub_21905DD44(0, &qword_27CC15648, sub_21897BFEC, MEMORY[0x277D83940]);
  sub_21905BE3C();
  v12 = sub_219BF56E4();

  sub_21897BFEC();
  v14 = v13;
  v15 = sub_21905DC9C(&qword_27CC15638, sub_21897BFEC);
  v16 = sub_21905DC9C(&qword_27CC15640, sub_21897BFEC);
  MEMORY[0x21CEB9170](v12, v14, v15, v16);
  type metadata accessor for MagazineGridItemModel();
  sub_21895164C();
  sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
  sub_219BE6924();
  sub_21905BCA4();
  sub_219BE2424();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21905ABFC()
{
  sub_21905BD70();
  MEMORY[0x28223BE20](v0 - 8);
  v49 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951594();
  v48 = v2;
  v50 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_21905D730(v4);
  v47 = 0;

  v6 = MEMORY[0x277D84F90];
  v7 = &unk_282A25958;
  v8 = 10;
  do
  {
    if (*(v5 + 2))
    {
      v10 = *(v7 - 1);
      v9 = *v7;

      v11 = sub_21870F700(v10, v9);
      if ((v12 & 1) != 0 && (v13 = *(*(v5 + 7) + 8 * v11), (v14 = *(v13 + 16)) != 0))
      {
        v15 = v6[2];
        v16 = v15 + v14;
        if (__OFADD__(v15, v14))
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

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v16 > v6[3] >> 1)
        {
          if (v15 <= v16)
          {
            v18 = v15 + v14;
          }

          else
          {
            v18 = v15;
          }

          v6 = sub_2191F9A6C(isUniquelyReferenced_nonNull_native, v18, 1, v6);
        }

        if (!*(v13 + 16))
        {
          goto LABEL_46;
        }

        v19 = (v6[3] >> 1) - v6[2];
        sub_21897BFEC();
        if (v19 < v14)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        v20 = v6[2];
        v21 = __OFADD__(v20, v14);
        v22 = v20 + v14;
        if (v21)
        {
          goto LABEL_45;
        }

        v6[2] = v22;
        v23 = sub_21870F700(v10, v9);
        v25 = v24;

        if (v25)
        {
          v26 = swift_isUniquelyReferenced_nonNull_native();
          v52[0] = v5;
          if (!v26)
          {
            sub_219493E94();
            v5 = v52[0];
          }

          sub_2194B7E5C(v23, v5);
        }
      }

      else
      {
      }
    }

    v7 += 2;
    --v8;
  }

  while (v8);
  if (v6[2])
  {

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = v5;
    sub_21948D83C(v6, 35, 0xE100000000000000, v27);
    v5 = v52[0];
  }

  v28 = *(v5 + 2);
  if (v28)
  {
    v29 = sub_21947D1C0(*(v5 + 2), 0);
    v30 = sub_2194B7E3C(v52, v29 + 32, v28, v5);
    swift_bridgeObjectRetain_n();
    sub_21892DE98();
    if (v30 == v28)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  v29 = MEMORY[0x277D84F90];
LABEL_27:
  v52[0] = v29;
  v8 = v47;
  sub_21871B098(v52);
  if (v8)
  {
    goto LABEL_47;
  }

  v31 = *(v52[0] + 2);
  if (v31)
  {
    v46 = v52[0];
    v47 = v50 + 32;
    v32 = (v52[0] + 40);
    v33 = MEMORY[0x277D84F90];
    do
    {
      if (*(v5 + 2))
      {
        v35 = *(v32 - 1);
        v34 = *v32;

        v36 = sub_21870F700(v35, v34);
        if ((v37 & 1) != 0 && *(*(*(v5 + 7) + 8 * v36) + 16))
        {
          v52[0] = v35;
          v52[1] = v34;
          v52[2] = 0;
          v52[3] = 0;
          LOBYTE(v53) = 4;
          sub_21897BFEC();
          v39 = v38;
          v40 = sub_21905DC9C(&qword_27CC15638, sub_21897BFEC);
          v41 = sub_21905DC9C(&qword_27CC15640, sub_21897BFEC);

          MEMORY[0x21CEB9170](v42, v39, v40, v41);
          type metadata accessor for MagazineGridItemModel();
          sub_21895164C();
          sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
          sub_219BE6924();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_2191F9A38(0, v33[2] + 1, 1, v33);
          }

          v44 = v33[2];
          v43 = v33[3];
          if (v44 >= v43 >> 1)
          {
            v33 = sub_2191F9A38(v43 > 1, v44 + 1, 1, v33);
          }

          v33[2] = v44 + 1;
          (*(v50 + 32))(v33 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v44, v51, v48);
        }

        else
        {
        }
      }

      v32 += 2;
      --v31;
    }

    while (v31);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v33;
}

uint64_t sub_21905B208(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v90 = a1;
  sub_218C4014C(0);
  v85 = v4;
  v89 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v88 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905DD44(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v74 - v7;
  v8 = sub_219BDBD34();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v84 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v74 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v74 - v14;
  v16 = sub_219BDB534();
  v93 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BFEC();
  v23 = v22;
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = *v21;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_2189E9530(*(v21 + 4), *(v21 + 5), *(v21 + 6));
      sub_2189E9570(0);
      v27 = &v21[*(v26 + 64)];
      v28 = *&v21[*(v26 + 80) + 32];

      v29 = sub_219BF0744();
    }

    else
    {

      sub_2189E93F4();
      v27 = &v21[*(v49 + 48)];
      v50 = *&v21[*(v49 + 64) + 32];

      v29 = sub_219BF0444();
    }

    v51 = v29;
  }

  else
  {
    v75 = a2;
    v76 = v13;
    v74 = v23;
    v83 = v18;
    v81 = v16;
    v30 = *(v21 + 2);
    v78 = v15;
    v79 = v30;
    sub_2189E96A0();
    v80 = v31;
    v32 = *(v31 + 64);
    v77 = v21;
    v33 = *&v21[v32 + 32];

    sub_21905DD44(0, &qword_27CC247B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v34 = sub_219BDBF74();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_219C09BA0;
    (*(v35 + 104))(v37 + v36, *MEMORY[0x277CC9988], v34);
    sub_2194B2E6C(v37);
    swift_setDeallocating();
    (*(v35 + 8))(v37 + v36, v34);
    swift_deallocClassInstance();
    v38 = [v25 sortDate];
    v82 = v25;
    if (v38)
    {
      v39 = v76;
      v40 = v38;
      sub_219BDBCA4();

      v42 = v91;
      v41 = v92;
      v43 = *(v91 + 32);
      v44 = v86;
      v43(v86, v39, v92);
      (*(v42 + 56))(v44, 0, 1, v41);
      v45 = v78;
      v43(v78, v44, v41);
      v46 = v88;
      v47 = v81;
      v48 = v93;
    }

    else
    {
      v42 = v91;
      v41 = v92;
      v52 = v86;
      (*(v91 + 56))(v86, 1, 1, v92);
      v53 = [v25 publicationDate];
      v45 = v78;
      sub_219BDBCA4();

      v54 = (*(v42 + 48))(v52, 1, v41);
      v46 = v88;
      v47 = v81;
      v48 = v93;
      if (v54 != 1)
      {
        sub_2189DD39C(v52);
      }
    }

    v55 = v83;
    sub_219BDBEA4();

    (*(v42 + 8))(v45, v41);
    v56 = sub_219BDB494();
    v58 = v89;
    v57 = v90;
    if (v59)
    {
      (*(v48 + 8))(v55, v47);

      v60 = v77;
    }

    else
    {
      v61 = *v90;
      v62 = *(*v90 + 16);
      v88 = v56;
      if (v62)
      {
        v63 = sub_219320C04(v56);
        v64 = v75;
        if (v65)
        {
          v66 = *(*(v61 + 56) + 8 * v63);
        }

        else
        {
          v66 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v66 = MEMORY[0x277D84F90];
        v64 = v75;
      }

      v67 = [v82 publicationDate];
      v68 = v84;
      sub_219BDBCA4();

      v69 = *(v85 + 48);
      (*(*(v74 - 8) + 16))(v46, v64);
      (*(v91 + 32))(v46 + v69, v68, v92);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_2191F9BC4(0, v66[2] + 1, 1, v66);
      }

      v60 = v77;
      v71 = v66[2];
      v70 = v66[3];
      if (v71 >= v70 >> 1)
      {
        v66 = sub_2191F9BC4(v70 > 1, v71 + 1, 1, v66);
      }

      v66[2] = v71 + 1;
      sub_21905DC38(v46, v66 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = *v57;
      sub_21948D868(v66, v88, isUniquelyReferenced_nonNull_native);

      *v57 = v94;
      (*(v93 + 8))(v83, v47);
    }

    v27 = &v60[*(v80 + 48)];
    v51 = sub_219BF0744();
  }

  return (*(*(v51 - 8) + 8))(v27);
}

uint64_t sub_21905BAC0@<X0>(uint64_t *a1@<X8>)
{
  sub_21897BFEC();
  result = sub_219BE5F84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21905BB08(uint64_t a1)
{
  v2 = sub_21905DDA8();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21905BB48()
{
  result = qword_27CC15610;
  if (!qword_27CC15610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15610);
  }

  return result;
}

void sub_21905BBE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel();
    v8[2] = sub_21895164C();
    v8[3] = sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21905BCA4()
{
  if (!qword_27CC15618)
  {
    sub_218951594();
    sub_21905DC9C(&qword_27CC15620, sub_218951594);
    sub_21905DC9C(&qword_27CC15628, sub_218951594);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15618);
    }
  }
}

void sub_21905BD70()
{
  if (!qword_27CC15630)
  {
    sub_21897BFEC();
    sub_21905DC9C(&qword_27CC15638, sub_21897BFEC);
    sub_21905DC9C(&qword_27CC15640, sub_21897BFEC);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15630);
    }
  }
}

unint64_t sub_21905BE3C()
{
  result = qword_27CC15650;
  if (!qword_27CC15650)
  {
    sub_21905DD44(255, &qword_27CC15648, sub_21897BFEC, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15650);
  }

  return result;
}

uint64_t sub_21905BEC4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_218C4014C(0);
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      sub_218C4014C(0);
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_21905C768(v8, v9, a1, v4);
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
    return sub_21905BFF0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21905BFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_218C4014C(0);
  v35 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_21905DBD0(v24, v18, sub_218C4014C);
      sub_21905DBD0(v21, v14, sub_218C4014C);
      v25 = sub_219BDBC24();
      sub_21905DCE4(v14, sub_218C4014C);
      result = sub_21905DCE4(v18, sub_218C4014C);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_21905DC38(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21905DC38(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21905C21C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_218C81048(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_21905D034((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_2191F6B60((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_21905D034((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_21905C768(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v99 = a1;
  sub_218C4014C(0);
  v10 = v9;
  v107 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v101 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v110 = &v96 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v96 - v16;
  result = MEMORY[0x28223BE20](v15);
  v20 = &v96 - v19;
  v109 = a3;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_134;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_218C81048(a4);
    }

    v112 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v109)
      {
        v92 = *(result + 16 * a4);
        v93 = result;
        v94 = *(result + 16 * (a4 - 1) + 40);
        sub_21905D228(*v109 + *(v107 + 72) * v92, *v109 + *(v107 + 72) * *(result + 16 * (a4 - 1) + 32), *v109 + *(v107 + 72) * v94, v5);
        if (v6)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_218C81048(v93);
        }

        if (a4 - 2 >= *(v93 + 2))
        {
          goto LABEL_122;
        }

        v95 = &v93[16 * a4];
        *v95 = v92;
        *(v95 + 1) = v94;
        v112 = v93;
        sub_218C80FBC(a4 - 1);
        result = v112;
        a4 = *(v112 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  v98 = a4;
  v111 = v10;
  while (1)
  {
    v102 = v23;
    if (v22 + 1 >= v21)
    {
      v21 = v22 + 1;
    }

    else
    {
      v24 = *v109;
      v25 = *(v107 + 72);
      v5 = *v109 + v25 * (v22 + 1);
      sub_21905DBD0(v5, v20, sub_218C4014C);
      sub_21905DBD0(v24 + v25 * v22, v17, sub_218C4014C);
      LODWORD(v106) = sub_219BDBC24();
      sub_21905DCE4(v17, sub_218C4014C);
      result = sub_21905DCE4(v20, sub_218C4014C);
      v97 = v22;
      v26 = v22 + 2;
      v108 = v25;
      v27 = v24 + v25 * v26;
      while (v21 != v26)
      {
        sub_21905DBD0(v27, v20, sub_218C4014C);
        sub_21905DBD0(v5, v17, sub_218C4014C);
        v28 = sub_219BDBC24() & 1;
        sub_21905DCE4(v17, sub_218C4014C);
        result = sub_21905DCE4(v20, sub_218C4014C);
        ++v26;
        v27 += v108;
        v5 += v108;
        if ((v106 & 1) != v28)
        {
          v21 = v26 - 1;
          break;
        }
      }

      v22 = v97;
      a4 = v98;
      if (v106)
      {
        if (v21 < v97)
        {
          goto LABEL_125;
        }

        if (v97 < v21)
        {
          v96 = v6;
          v29 = v108 * (v21 - 1);
          v30 = v21;
          v31 = v21 * v108;
          v106 = v21;
          v32 = v97;
          v33 = v97 * v108;
          do
          {
            if (v32 != --v30)
            {
              v34 = *v109;
              if (!*v109)
              {
                goto LABEL_131;
              }

              v5 = v34 + v33;
              sub_21905DC38(v34 + v33, v101);
              if (v33 < v29 || v5 >= v34 + v31)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v33 != v29)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_21905DC38(v101, v34 + v29);
            }

            ++v32;
            v29 -= v108;
            v31 -= v108;
            v33 += v108;
          }

          while (v32 < v30);
          v6 = v96;
          v22 = v97;
          a4 = v98;
          v21 = v106;
        }
      }
    }

    v35 = v109[1];
    if (v21 < v35)
    {
      if (__OFSUB__(v21, v22))
      {
        goto LABEL_124;
      }

      if (v21 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v35)
        {
          v36 = v109[1];
        }

        else
        {
          v36 = v22 + a4;
        }

        if (v36 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v21 != v36)
        {
          break;
        }
      }
    }

    v37 = v21;
    if (v21 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v23 = v102;
    }

    else
    {
      result = sub_2191F6B60(0, *(v102 + 2) + 1, 1, v102);
      v23 = result;
    }

    a4 = *(v23 + 2);
    v38 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v38 >> 1)
    {
      result = sub_2191F6B60((v38 > 1), a4 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v5;
    v39 = &v23[16 * a4];
    *(v39 + 4) = v22;
    *(v39 + 5) = v37;
    v40 = *v99;
    if (!*v99)
    {
      goto LABEL_133;
    }

    v103 = v37;
    if (a4)
    {
      while (1)
      {
        v41 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v42 = *(v23 + 4);
          v43 = *(v23 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_52:
          if (v45)
          {
            goto LABEL_112;
          }

          v58 = &v23[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_115;
          }

          v64 = &v23[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_119;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v68 = &v23[16 * v5];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_66:
        if (v63)
        {
          goto LABEL_114;
        }

        v71 = &v23[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_117;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v41 - 1;
        if (v41 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_127;
        }

        if (!*v109)
        {
          goto LABEL_130;
        }

        v79 = v23;
        v80 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v41 + 40];
        sub_21905D228(*v109 + *(v107 + 72) * v80, *v109 + *(v107 + 72) * *&v23[16 * v41 + 32], *v109 + *(v107 + 72) * v5, v40);
        if (v6)
        {
        }

        if (v5 < v80)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_218C81048(v79);
        }

        if (a4 >= *(v79 + 2))
        {
          goto LABEL_109;
        }

        v81 = &v79[16 * a4];
        *(v81 + 4) = v80;
        *(v81 + 5) = v5;
        v112 = v79;
        result = sub_218C80FBC(v41);
        v23 = v112;
        v5 = *(v112 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v23[16 * v5 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_110;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_111;
      }

      v53 = &v23[16 * v5];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_113;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_116;
      }

      if (v57 >= v49)
      {
        v75 = &v23[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_120;
        }

        if (v44 < v78)
        {
          v41 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v21 = v109[1];
    v22 = v103;
    a4 = v98;
    if (v103 >= v21)
    {
      goto LABEL_95;
    }
  }

  v96 = v6;
  v82 = v21;
  v83 = v22;
  v84 = *v109;
  v85 = *(v107 + 72);
  v86 = *v109 + v85 * (v21 - 1);
  v87 = -v85;
  v97 = v83;
  v88 = v83 - v21;
  v106 = v82;
  v100 = v85;
  v5 = v84 + v82 * v85;
  v103 = v36;
LABEL_85:
  v104 = v5;
  v105 = v88;
  v108 = v86;
  v89 = v86;
  while (1)
  {
    a4 = sub_218C4014C;
    sub_21905DBD0(v5, v20, sub_218C4014C);
    sub_21905DBD0(v89, v17, sub_218C4014C);
    v90 = sub_219BDBC24();
    sub_21905DCE4(v17, sub_218C4014C);
    result = sub_21905DCE4(v20, sub_218C4014C);
    if ((v90 & 1) == 0)
    {
LABEL_84:
      v86 = v108 + v100;
      v88 = v105 - 1;
      v37 = v103;
      v5 = v104 + v100;
      if (++v106 != v103)
      {
        goto LABEL_85;
      }

      v6 = v96;
      v22 = v97;
      if (v103 < v97)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v84)
    {
      break;
    }

    a4 = v110;
    sub_21905DC38(v5, v110);
    swift_arrayInitWithTakeFrontToBack();
    sub_21905DC38(a4, v89);
    v89 += v87;
    v5 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_21905D034(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_21905D228(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_218C4014C(0);
  v46 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v44 = &v36 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = -v14;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        v43 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v37;
            goto LABEL_59;
          }

          v38 = v24;
          v30 = a3 + v25;
          v31 = v26 + v25;
          v32 = v44;
          sub_21905DBD0(v31, v44, sub_218C4014C);
          v33 = v45;
          sub_21905DBD0(v28, v45, sub_218C4014C);
          v34 = sub_219BDBC24();
          sub_21905DCE4(v33, sub_218C4014C);
          sub_21905DCE4(v32, sub_218C4014C);
          if (v34)
          {
            break;
          }

          v24 = v31;
          if (a3 < v26 || v30 >= v26)
          {
            a3 = v30;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v40;
          }

          else
          {
            v35 = a3 == v26;
            a3 = v30;
            a1 = v40;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v31;
          v27 = v42;
          v29 = v31 > v41;
          v28 = v43;
          v25 = v39;
          if (!v29)
          {
            a2 = v42;
            goto LABEL_58;
          }
        }

        if (a3 < v42 || v30 >= v42)
        {
          a3 = v30;
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          v35 = a3 == v42;
          a3 = v30;
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (!v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_58:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v44;
        sub_21905DBD0(a2, v44, sub_218C4014C);
        v22 = v45;
        sub_21905DBD0(a4, v45, sub_218C4014C);
        v23 = sub_219BDBC24();
        sub_21905DCE4(v22, sub_218C4014C);
        sub_21905DCE4(v21, sub_218C4014C);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v49 = a1;
      }

      while (a4 < v43 && a2 < a3);
    }
  }

LABEL_59:
  sub_2189F1984(&v49, &v48, &v47);
  return 1;
}

uint64_t sub_21905D730(uint64_t a1)
{
  v2 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BFEC();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v49 - v10;
  v11 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v14 = *(v7 + 16);
  v13 = v7 + 16;
  v51 = *(v13 + 64);
  v15 = *(v13 + 56);
  v56 = (v51 + 32) & ~v51;
  v57 = v14;
  v16 = a1 + v56;
  v59 = (v13 + 16);
  v50 = xmmword_219C09BA0;
  v54 = v13;
  v55 = v4;
  v52 = v6;
  v53 = v15;
  while (1)
  {
    v57(v60, v16, v6);
    sub_219BE5FC4();
    sub_218EF7D18();
    sub_21905DCE4(v4, type metadata accessor for MagazineGridItemModel);
    v20 = sub_219BF54D4();
    v22 = v21;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      sub_219BF5654();

      v24 = sub_219BF5304();
      v26 = v25;
    }

    else
    {

      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v28 = sub_21870F700(v24, v26);
    v29 = v11[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v11[3] < v31)
    {
      sub_219483AD0(v31, 1);
      v11 = v61;
      v33 = sub_21870F700(v24, v26);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_24;
      }

      v28 = v33;
    }

    if (v32)
    {

      v35 = v6;
      v36 = v11[7];
      v37 = *v59;
      (*v59)(v58, v60, v35);
      v38 = *(v36 + 8 * v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v36 + 8 * v28) = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_2191F9A6C(0, v38[2] + 1, 1, v38);
        *(v36 + 8 * v28) = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_2191F9A6C(v40 > 1, v41 + 1, 1, v38);
        *(v36 + 8 * v28) = v38;
      }

      v17 = v53;
      v38[2] = v41 + 1;
      v18 = v38 + v56 + v41 * v17;
      v19 = v17;
      v6 = v52;
      v37(v18, v58, v52);
    }

    else
    {
      sub_21905DD44(0, &unk_27CC0FA90, sub_21897BFEC, MEMORY[0x277D84560]);
      v42 = v56;
      v43 = swift_allocObject();
      *(v43 + 16) = v50;
      (*v59)((v43 + v42), v60, v6);
      v11[(v28 >> 6) + 8] |= 1 << v28;
      v44 = (v11[6] + 16 * v28);
      *v44 = v24;
      v44[1] = v26;
      *(v11[7] + 8 * v28) = v43;
      v45 = v11[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_23;
      }

      v11[2] = v47;
      v19 = v53;
    }

    v4 = v55;
    v16 += v19;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_21905DBD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21905DC38(uint64_t a1, uint64_t a2)
{
  sub_218C4014C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21905DC9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21905DCE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21905DD44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21905DDA8()
{
  result = qword_27CC15660;
  if (!qword_27CC15660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15660);
  }

  return result;
}

uint64_t type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs()
{
  result = qword_280E9B6F0;
  if (!qword_280E9B6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21905DE88()
{
  sub_2186E4FBC(319);
  if (v0 <= 0x3F)
  {
    sub_218D1D174();
    if (v1 <= 0x3F)
    {
      sub_218CC4F9C();
      if (v2 <= 0x3F)
      {
        sub_2186ECA28();
        if (v3 <= 0x3F)
        {
          sub_2186F95C4();
          if (v4 <= 0x3F)
          {
            sub_218CC4F34();
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

uint64_t sub_21905DF6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21905DFB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_219BEFD94();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();
  MEMORY[0x28223BE20](v6);
  v49 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905F1D0(0, &qword_280E8C870, MEMORY[0x277D844C8]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v35 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21905F118();
  v15 = v51;
  sub_219BF7B34();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v5;
  v42 = 0;
  v43 = v12;
  v44 = a1;
  v37 = v6;
  sub_219BEF814();
  LOBYTE(v58) = 0;
  sub_21905DF6C(&qword_280E912E8, MEMORY[0x277D32720]);
  v17 = v48;
  sub_219BF7674();
  sub_218D1D174();
  LOBYTE(v57) = 1;
  sub_21905DF6C(&qword_280E91468, sub_218D1D174);
  sub_219BF7674();
  v18 = v58;
  sub_218CC4F9C();
  v20 = v19;
  LOBYTE(v56) = 2;
  sub_21905DF6C(&qword_280E91798, sub_218CC4F9C);
  v35[1] = v20;
  sub_219BF7674();
  v51 = v57;
  sub_2186ECA28();
  v22 = v21;
  LOBYTE(v55) = 3;
  sub_21905DF6C(&qword_280E913D8, sub_2186ECA28);
  v35[2] = v22;
  sub_219BF7674();
  v41 = v56;
  sub_2186F95C4();
  LOBYTE(v54) = 4;
  sub_21905DF6C(&qword_280E913F8, sub_2186F95C4);
  sub_219BF7674();
  v45 = v55;
  LOBYTE(v53) = 5;
  sub_219BF7674();
  v38 = v54;
  sub_218CC4F34();
  LOBYTE(v52) = 6;
  sub_218CC84B8();
  sub_219BF7674();
  v40 = v53;
  v23 = v49;
  sub_2189B7614(v17, v49);
  v39 = v14;
  if (v18)
  {
    v24 = v18;
  }

  else
  {
    (*(v46 + 104))(v36, *MEMORY[0x277D32A90], v47);
    swift_allocObject();
    v24 = sub_219BEF534();
  }

  v25 = v37;
  *(v23 + v37[5]) = v24;
  v47 = v11;
  v26 = v51;
  v27 = v41;
  if (v51)
  {

    v28 = v26;
  }

  else
  {
    swift_allocObject();

    v28 = sub_219BEEE04();
  }

  *(v23 + v25[6]) = v28;
  if (v27)
  {

    v29 = v27;
  }

  else
  {
    v52 = 0;
    swift_allocObject();

    v29 = sub_219BEF534();
  }

  *(v23 + v25[7]) = v29;
  v30 = v43;
  v31 = v45;
  if (v45)
  {

    v32 = v31;
  }

  else
  {
    LOBYTE(v52) = 0;
    swift_allocObject();

    v32 = sub_219BEF534();
  }

  *(v23 + v25[8]) = v32;
  v33 = v38;
  if (v38)
  {
  }

  else
  {
    LOBYTE(v52) = 0;
    swift_allocObject();

    v33 = sub_219BEF534();
  }

  *(v23 + v25[9]) = v33;
  v34 = v40;
  if (!v40)
  {
    v34 = sub_2194AE724(MEMORY[0x277D84F90]);
  }

  sub_21905F0B8(v17, sub_2186E4FBC);
  (*(v30 + 8))(v39, v47);
  *(v23 + v25[10]) = v34;
  sub_21905F16C(v23, v50);
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_21905E714(void *a1)
{
  v3 = v1;
  sub_21905F1D0(0, &qword_280E8C260, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21905F118();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_219BEF814();
  sub_21905DF6C(&qword_280E912F0, MEMORY[0x277D32720]);
  sub_219BF77E4();
  if (!v2)
  {
    v10 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_218D1D174();
    sub_21905DF6C(&qword_280E91470, sub_218D1D174);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_218CC4F9C();
    sub_21905DF6C(&qword_280E917A0, sub_218CC4F9C);
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186ECA28();
    sub_21905DF6C(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186F95C4();
    sub_21905DF6C(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_218CC4F34();
    sub_218CC6A10();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21905EB38()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000013;
    if (v1 != 1)
    {
      v5 = 0x546465726F6E6769;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6972657473756C63;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    if (v1 != 5)
    {
      v2 = 0xD000000000000015;
    }

    if (v1 == 3)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x796E41776F6C6C61;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21905EC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21905F34C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21905EC68(uint64_t a1)
{
  v2 = sub_21905F118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21905ECA4(uint64_t a1)
{
  v2 = sub_21905F118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21905ED14(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CC85CC();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_2189B7614(a1, v14);
  sub_2189B7614(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_2189B7614(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_21905DF6C(&qword_27CC10CD8, MEMORY[0x277D32720]);
      v17 = sub_219BF53A4();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_21905F0B8(v14, sub_2186E4FBC);
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_14:
      v20 = 0;
      return v20 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_21905F0B8(v14, sub_218CC85CC);
    goto LABEL_14;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_21905F0B8(v14, sub_2186E4FBC);
LABEL_8:
  sub_218D1D174();
  v19 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_218CC4F9C();
  if ((sub_219BEEDE4() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2186F95C4();
  if ((sub_219BEF504() & 1) == 0 || (sub_219BEF504() & 1) == 0)
  {
    goto LABEL_14;
  }

  v20 = sub_21931A484(*(a1 + *(v19 + 40)), *(a2 + *(v19 + 40)));
  return v20 & 1;
}

uint64_t sub_21905F0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21905F118()
{
  result = qword_280E9B720[0];
  if (!qword_280E9B720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9B720);
  }

  return result;
}

uint64_t sub_21905F16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21905F1D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21905F118();
    v7 = a3(a1, &type metadata for FoodTodayFeedGroupChannelRecipeKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21905F248()
{
  result = qword_27CC15668;
  if (!qword_27CC15668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15668);
  }

  return result;
}

unint64_t sub_21905F2A0()
{
  result = qword_280E9B710;
  if (!qword_280E9B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B710);
  }

  return result;
}

unint64_t sub_21905F2F8()
{
  result = qword_280E9B718;
  if (!qword_280E9B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B718);
  }

  return result;
}

uint64_t sub_21905F34C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CD76F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546465726F6E6769 && a2 == 0xED00007344496761 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CD6960 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796E41776F6C6C61 && a2 == 0xEF6C656E6E616843 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000219CD6980 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CD6940 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_21905F74C()
{
  sub_21905F7D8(&qword_280EE25B8);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_21905F7D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SeparatorViewContainerView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21905F818()
{
  v28 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v28);
  v1 = (&v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21898BF70();
  v3 = v2;
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54DC8();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BEA4();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  sub_218954350();
  sub_219BE6974();
  v30 = MEMORY[0x277D84F90];
  v25 = v17;
  v26 = v12;
  (*(v12 + 16))(v15, v17, v11);
  sub_2186CC1DC(&qword_280EE7570, sub_21898BEA4);
  sub_219BF56A4();
  v18 = *(v7 + 44);
  sub_2186CC1DC(&qword_280EE7568, sub_21898BEA4);
  sub_219BF5E84();
  v19 = MEMORY[0x277D84F90];
  if (*&v9[v18] != v29[0])
  {
    v20 = (v27 + 16);
    v21 = (v27 + 8);
    do
    {
      v27 = v19;
      while (1)
      {
        v22 = sub_219BF5EC4();
        (*v20)(v5);
        v22(v29, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        (*v21)(v5, v3);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          break;
        }

        sub_2190624E0(v1, type metadata accessor for TagFeedModel);
        sub_219BF5E84();
        if (*&v9[v18] == v29[0])
        {
          v19 = v27;
          goto LABEL_10;
        }
      }

      v27 = *v1;
      MEMORY[0x21CECC690]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v27 = v30;
      sub_219BF5E84();
      v19 = v27;
    }

    while (*&v9[v18] != v29[0]);
  }

LABEL_10:
  sub_2190624E0(v9, sub_218F54DC8);
  (*(v26 + 8))(v25, v11);
  return v19;
}

uint64_t sub_21905FC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v29 = sub_219BDBD64();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v28);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21898BF70();
  v27 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BEA4();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v31 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_2186CC1DC(&qword_280EE5CE8, sub_21898BF70);
  sub_2186CC1DC(&unk_280EE5CF0, sub_21898BF70);
  sub_219BE2444();
  sub_2186F0CC0();
  v18 = *(v17 + 48);
  sub_219BDBD54();
  v19 = sub_219BDBD44();
  v21 = v20;
  (*(v2 + 8))(v4, v29);
  *v6 = v19;
  v6[1] = v21;
  sub_219062540(v32, v6 + v18, type metadata accessor for TagFeedGapLocation);
  swift_storeEnumTagMultiPayload();
  sub_2186CC1DC(&unk_280EDE820, type metadata accessor for TagFeedModel);
  sub_219BE5FB4();
  sub_219BE2404();
  (*(v30 + 8))(v9, v27);
  type metadata accessor for TagFeedSectionGapDescriptor(0);
  v22 = swift_allocBox();
  v24 = v23;
  v25 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v34 = v22;
  (*(v12 + 16))(v31, v16, v11);
  sub_2186F7410();
  sub_219BE6924();
  return (*(v12 + 8))(v16, v11);
}

char *sub_2190600D0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v198 = a2;
  v218 = a1;
  v197 = a3;
  sub_219062430(0, &unk_280EE87A0, MEMORY[0x277D2DAB8]);
  MEMORY[0x28223BE20](v5 - 8);
  v196 = &v173 - v6;
  sub_219062430(0, &unk_280EE8380, MEMORY[0x277D2E6C8]);
  MEMORY[0x28223BE20](v7 - 8);
  v195 = &v173 - v8;
  v174 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v174);
  v175 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE16E4();
  MEMORY[0x28223BE20](v10 - 8);
  v222 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_219BDF584();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v221 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_219BE1444();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v15 = v14;
  v16 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v205 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_219BDD374();
  v216 = *(v245 - 1);
  MEMORY[0x28223BE20](v245);
  v244 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_219BDEE04();
  v215 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v193 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_219BF04A4();
  v243 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v213 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0F3C();
  v229 = v21;
  v232 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v228 = &v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_219BF0B74();
  v242 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v211 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F1164();
  v227 = v24;
  v241 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v226 = &v173 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_219BF0F34();
  v230 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v209 = &v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54();
  v225 = v27;
  v220 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v208 = &v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_219BF07A4();
  v219 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v206 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7240();
  v224 = v30;
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v223 = &v173 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v249);
  v235 = &v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v173 - v35;
  sub_21898BF70();
  v38 = v37;
  v203 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v247 = &v173 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v238 = &v173 - v41;
  sub_21898C06C();
  v43 = v42;
  MEMORY[0x28223BE20](v42);
  v239 = &v173 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v173 - v47;
  v49 = MEMORY[0x277D84F90];
  v253 = MEMORY[0x277D84F90];
  v254 = MEMORY[0x277D84F90];
  v50 = *(v16 + 16);
  v204 = v16 + 16;
  v201 = v50;
  (v50)(&v173 - v47, v4, v15, v46);
  v202 = v43;
  v51 = *(v43 + 36);
  v52 = sub_2186CC1DC(&unk_280EE5850, sub_218954350);
  sub_219BF5DF4();
  sub_219BF5E84();
  v53 = *(v51 + v48);
  v234 = v49;
  v233 = v4;
  v231 = v15;
  v248 = v38;
  v240 = v52;
  if (v53 != v252)
  {
    v237 = (v203 + 16);
    v236 = (v203 + 8);
    v192 = (v241 + 4);
    v191 = (v242 + 8);
    v190 = (v241 + 1);
    v189 = (v31 + 32);
    v188 = v219 + 1;
    v187 = (v31 + 8);
    v219 = (v220 + 8);
    v177 = v215 + 16;
    v176 = (v215 + 8);
    v241 = (v216 + 8);
    v242 = v216 + 16;
    v186 = (v232 + 32);
    v185 = (v243 + 8);
    v184 = (v232 + 8);
    v183 = (v220 + 32);
    v182 = (v230 + 8);
    v230 = v36;
    v49 = MEMORY[0x277D84F90];
    v234 = MEMORY[0x277D84F90];
    v67 = v36;
    v220 = v48;
    v246 = v51;
    do
    {
      v70 = sub_219BF5EC4();
      v71 = v238;
      (*v237)(v238);
      v70(&v252, 0);
      v69 = v246;
      sub_219BF5E94();
      sub_219BE5FC4();
      (*v236)(v71, v38);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_218A128AC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
          v110 = *(v109 + 48);
          v111 = sub_219BF1584();
          v112 = v67 + v110;
          v69 = v246;
          (*(*(v111 - 8) + 8))(v112, v111);
          v72 = type metadata accessor for TagFeedGapLocation;
          goto LABEL_16;
        case 2u:
          v95 = v67;
          v96 = v208;
          v97 = v225;
          (*v183)(v208, v95, v225);
          v98 = v209;
          sub_219BF07D4();
          sub_219BF0F14();
          v99 = (*v182)(v98, v210);
          MEMORY[0x21CECC690](v99);
          if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          (*v219)(v96, v97);
          v67 = v230;
          v48 = v220;
          goto LABEL_12;
        case 3u:
          (*v186)(v228, v67, v229);
          v100 = v213;
          sub_219BF07D4();
          v101 = sub_219BF0404();
          (*v185)(v100, v214);
          v102 = [v101 identifier];
          swift_unknownObjectRelease();
          v103 = sub_219BF5414();
          v105 = v104;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_218840D24(0, *(v49 + 2) + 1, 1, v49);
          }

          v107 = *(v49 + 2);
          v106 = *(v49 + 3);
          if (v107 >= v106 >> 1)
          {
            v49 = sub_218840D24((v106 > 1), v107 + 1, 1, v49);
          }

          (*v184)(v228, v229);
          *(v49 + 2) = v107 + 1;
          v68 = &v49[16 * v107];
          goto LABEL_11;
        case 4u:
        case 6u:
        case 8u:
        case 9u:
        case 0xBu:
        case 0xCu:
        case 0xDu:
          v72 = type metadata accessor for TagFeedModel;
LABEL_16:
          v73 = v72;
          v74 = v67;
          goto LABEL_17;
        case 5u:
          v85 = *v67;
          v86 = sub_219BE5B44();
          v87 = *(v86 + 16);
          v232 = v49;
          v217 = v85;
          if (v87)
          {
            v252 = MEMORY[0x277D84F90];
            sub_219BF73F4();
            v88 = (*(v215 + 80) + 32) & ~*(v215 + 80);
            v181 = v86;
            v89 = v86 + v88;
            v243 = *(v215 + 72);
            v90 = *(v215 + 16);
            v91 = v193;
            v92 = v194;
            v93 = v176;
            do
            {
              v90(v91, v89, v92);
              sub_219BDEDF4();
              (*v93)(v91, v92);
              sub_219BF73D4();
              sub_219BF7414();
              sub_219BF7424();
              sub_219BF73E4();
              v89 += v243;
              --v87;
            }

            while (v87);

            v94 = v252;
            v49 = v232;
            v67 = v230;
            v69 = v246;
          }

          else
          {

            v94 = MEMORY[0x277D84F90];
          }

          sub_2191ED6C8(v94);
          v122 = sub_219BE5B34();
          v123 = *(v122 + 16);
          if (v123)
          {
            v252 = MEMORY[0x277D84F90];
            sub_21870B65C(0, v123, 0);
            v124 = v252;
            v125 = (*(v216 + 80) + 32) & ~*(v216 + 80);
            v181 = v122;
            v126 = v122 + v125;
            v243 = *(v216 + 72);
            v127 = *(v216 + 16);
            do
            {
              v129 = v244;
              v128 = v245;
              v127(v244, v126, v245);
              v130 = sub_219BDD364();
              v131 = [v130 identifier];
              v132 = sub_219BF5414();
              v134 = v133;

              (*v241)(v129, v128);
              v252 = v124;
              v136 = *(v124 + 16);
              v135 = *(v124 + 24);
              if (v136 >= v135 >> 1)
              {
                sub_21870B65C((v135 > 1), v136 + 1, 1);
                v124 = v252;
              }

              *(v124 + 16) = v136 + 1;
              v137 = v124 + 16 * v136;
              *(v137 + 32) = v132;
              *(v137 + 40) = v134;
              v126 += v243;
              --v123;
            }

            while (v123);

            v49 = v232;
            v67 = v230;
            v69 = v246;
          }

          else
          {

            v124 = MEMORY[0x277D84F90];
          }

          sub_2191ED3E8(v124);

          v15 = v231;
          v38 = v248;
          v48 = v220;
          break;
        case 7u:
          sub_218A128AC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
          (*v219)(v67 + *(v113 + 48), v225);
          sub_2186EAD48();
          (*(*(v114 - 8) + 8))(v67, v114);
          break;
        case 0xAu:
          (*v189)(v223, v67, v224);
          v115 = v206;
          sub_219BF07D4();
          v116 = sub_219BF06B4();
          (*v188)(v115, v207);
          v117 = [v116 identifier];

          v103 = sub_219BF5414();
          v105 = v118;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v234 = sub_218840D24(0, *(v234 + 2) + 1, 1, v234);
          }

          v120 = *(v234 + 2);
          v119 = *(v234 + 3);
          if (v120 >= v119 >> 1)
          {
            v234 = sub_218840D24((v119 > 1), v120 + 1, 1, v234);
          }

          (*v187)(v223, v224);
          v121 = v234;
          *(v234 + 2) = v120 + 1;
          v68 = &v121[16 * v120];
LABEL_11:
          *(v68 + 4) = v103;
          *(v68 + 5) = v105;
          goto LABEL_12;
        case 0xEu:
          (*v192)(v226, v67, v227);
          v75 = v211;
          sub_219BF07D4();
          v76 = sub_219BF0B44();
          (*v191)(v75, v212);
          v77 = [v76 identifier];

          v78 = sub_219BF5414();
          v80 = v79;

          v81 = v253;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_218840D24(0, *(v81 + 2) + 1, 1, v81);
          }

          v83 = *(v81 + 2);
          v82 = *(v81 + 3);
          if (v83 >= v82 >> 1)
          {
            v81 = sub_218840D24((v82 > 1), v83 + 1, 1, v81);
          }

          (*v190)(v226, v227);
          *(v81 + 2) = v83 + 1;
          v84 = &v81[16 * v83];
          *(v84 + 4) = v78;
          *(v84 + 5) = v80;
          v253 = v81;
          v38 = v248;
LABEL_12:
          v69 = v246;
          break;
        default:

          sub_2186F0CC0();
          v73 = type metadata accessor for TagFeedGapLocation;
          v74 = v67 + *(v108 + 48);
LABEL_17:
          sub_2190624E0(v74, v73);
          break;
      }

      sub_219BF5E84();
    }

    while (*(v69 + v48) != v252);
  }

  v232 = v49;
  sub_2190624E0(v48, sub_21898C06C);
  v201(v205, v233, v15);
  sub_2186CC1DC(&unk_280EE5860, sub_218954350);
  v54 = v239;
  sub_219BF56A4();
  v55 = *(v202 + 36);
  sub_219BF5E84();
  if (*(v54 + v55) == v252)
  {
    v56 = 0;
LABEL_5:
    sub_2190624E0(v54, sub_21898C06C);
    v57 = sub_219061F64();
    v58 = v218;
    if ((v198 & 1) != 0 && (sub_219BE6934(), v59 = sub_21943FD74(), , v59))
    {
      v60 = v178;
      sub_219BE1414();
      v61 = sub_219BE1434();
      v248 = v62;
      v249 = v61;
      swift_unknownObjectRelease();
      (*(v179 + 8))(v60, v180);
    }

    else
    {
      sub_219BE6934();
      v63 = sub_21943FD74();

      if (v63)
      {
        v64 = [v63 identifier];
        swift_unknownObjectRelease();
        v65 = sub_219BF5414();
        v248 = v66;
        v249 = v65;
      }

      else
      {
        v248 = 0;
        v249 = 0;
      }
    }

    (*(v199 + 104))(v221, *MEMORY[0x277D2DB58], v200);
    sub_219BE6934();
    sub_2194420E8(v252, v222);

    v139 = sub_219BE6944();
    if (v56 > 0x7FFFFFFF)
    {
      goto LABEL_77;
    }

    if (v58 < 0xFFFFFFFF80000000 || v56 < 0xFFFFFFFF80000000)
    {
      goto LABEL_78;
    }

    if (v58 > 0x7FFFFFFF)
    {
      goto LABEL_79;
    }

    v245 = v148;
    v15 = v254;
    if (v254 >> 62)
    {
      goto LABEL_80;
    }

    v149 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v246 = v139;
    v247 = v56;
    if (!v149)
    {
      goto LABEL_81;
    }

    goto LABEL_65;
  }

  v56 = 0;
  v245 = (v203 + 8);
  v246 = (v203 + 16);
  v138 = v235;
  while (1)
  {
    v141 = sub_219BF5EC4();
    v142 = v247;
    v143 = v248;
    (*v246)(v247);
    v141(&v252, 0);
    v57 = v15;
    sub_219BF5E94();
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      break;
    }

    (*v245)(v142, v143);
    v139 = sub_2190624E0(v138, type metadata accessor for TagFeedModel);
    if (__OFADD__(v56++, 1))
    {
      goto LABEL_75;
    }

LABEL_53:
    v54 = v239;
    sub_219BF5E84();
    if (*(v54 + v55) == v252)
    {
      goto LABEL_5;
    }
  }

  v144 = *(sub_219BE5B44() + 16);

  v145 = v56 + v144;
  if (!__OFADD__(v56, v144))
  {
    v146 = sub_219BE5B34();

    v147 = *(v146 + 16);

    v139 = (*v245)(v247, v248);
    v56 = v145 + v147;
    if (__OFADD__(v145, v147))
    {
      goto LABEL_76;
    }

    v138 = v235;
    goto LABEL_53;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  v160 = v139;
  v149 = sub_219BF7214();
  v246 = v160;
  v247 = v56;
  if (!v149)
  {
LABEL_81:

    sub_219BE6934();
    if (((v251 >> 58) & 0x3C | (v251 >> 1) & 3) == 0xA)
    {
      v170 = swift_projectBox();
      v171 = v175;
      sub_219062540(v170, v175, type metadata accessor for CuratedTagFeedGroup);

      sub_2190624E0(v171, type metadata accessor for CuratedTagFeedGroup);
    }

    sub_219BE6934();
    v161 = (v250 >> 58) & 0x3C | (v250 >> 1) & 3;

    v162 = **(&unk_278242980 + v161);
    v163 = sub_219BE0674();
    v164 = *(v163 - 8);
    v165 = v195;
    (*(v164 + 104))(v195, v162, v163);
    (*(v164 + 56))(v165, 0, 1, v163);
    v166 = sub_219BDF474();
    v167 = v196;
    (*(*(v166 - 8) + 56))(v196, 1, 1, v166);
    v172 = v167;
    v168 = v197;
    sub_219BE15E4();
    v169 = sub_219BE16D4();
    return (*(*(v169 - 8) + 56))(v168, 0, 1, v169);
  }

LABEL_65:
  v251 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v149 & ~(v149 >> 63), 0);
  if ((v149 & 0x8000000000000000) == 0)
  {
    v244 = v57;
    v151 = 0;
    v152 = v251;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v151, v15);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v153 = [swift_unknownObjectRetain() articleID];
      v154 = sub_219BF5414();
      v156 = v155;
      swift_unknownObjectRelease_n();

      v251 = v152;
      v158 = *(v152 + 16);
      v157 = *(v152 + 24);
      if (v158 >= v157 >> 1)
      {
        sub_21870B65C((v157 > 1), v158 + 1, 1);
        v152 = v251;
      }

      ++v151;
      *(v152 + 16) = v158 + 1;
      v159 = v152 + 16 * v158;
      *(v159 + 32) = v154;
      *(v159 + 40) = v156;
    }

    while (v149 != v151);
    goto LABEL_81;
  }

  __break(1u);
  return result;
}

char *sub_219061F64()
{
  v0 = sub_219BF2DA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219062430(0, qword_280EDE900, type metadata accessor for TagFeedGroup);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  sub_219062430(0, &qword_280E90840, MEMORY[0x277D33470]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_219BF1904();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v33 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  sub_219BE6934();
  sub_21943EC40(v37, v6);

  v13 = type metadata accessor for TagFeedGroup();
  if ((*(*(v13 - 8) + 48))(v6, 1, v13) == 1)
  {
    sub_219062484(v6, qword_280EDE900, type metadata accessor for TagFeedGroup);
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_4:
    sub_219062484(v9, &qword_280E90840, MEMORY[0x277D33470]);
    return 0;
  }

  sub_2195A5C88(v9);
  sub_2190624E0(v6, type metadata accessor for TagFeedGroup);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  (*(v11 + 32))(v33, v9, v10);
  v15 = sub_219BF18F4();
  v16 = *(v15 + 16);
  if (v16)
  {
    v31 = v11;
    v32 = v10;
    v18 = *(v1 + 16);
    v17 = v1 + 16;
    v19 = *(v17 + 64);
    v30 = v15;
    v20 = v15 + ((v19 + 32) & ~v19);
    v35 = *(v17 + 56);
    v36 = v18;
    v21 = (v17 - 8);
    v14 = MEMORY[0x277D84F90];
    v34 = v17;
    v18(v3, v20, v0);
    while (1)
    {
      v22 = *(sub_219BF2D94() + 16);

      if (v22)
      {
        sub_219BF2D84();
        v23 = sub_219BF3054();
        v25 = v24;

        (*v21)(v3, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_218840D24(0, *(v14 + 2) + 1, 1, v14);
        }

        v27 = *(v14 + 2);
        v26 = *(v14 + 3);
        if (v27 >= v26 >> 1)
        {
          v14 = sub_218840D24((v26 > 1), v27 + 1, 1, v14);
        }

        *(v14 + 2) = v27 + 1;
        v28 = &v14[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
      }

      else
      {
        (*v21)(v3, v0);
      }

      v20 += v35;
      if (!--v16)
      {
        break;
      }

      v36(v3, v20, v0);
    }

    v11 = v31;
    v10 = v32;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  (*(v11 + 8))(v33, v10);
  return v14;
}

void sub_219062430(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219062484(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_219062430(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2190624E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219062540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190625A8()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2128](ObjectType);
}

uint64_t sub_2190625E4()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2118](ObjectType);
}

uint64_t sub_219062620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2120](a1, ObjectType, a3);
}

void sub_219062698(uint64_t a1, uint64_t a2, char a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3)
    {
      sub_219BF64F4();
    }

    else
    {
      sub_218725F94();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_219C146A0;
      *(v8 + 32) = [v5 tabBar];
      sub_219BF64F4();
    }

    sub_219BF6504();
  }

  else
  {
    v6 = sub_219BE3BF4();
    sub_219062C98();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D318C8], v6);
    swift_willThrow();
  }
}

void sub_2190627C4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v3 = [a1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      sub_219BF64E4();
    }
  }
}

uint64_t sub_219062870()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v12 = 0;
    v13 = 1;
    return v12 | (v13 << 8);
  }

  v2 = Strong;
  v3 = [Strong traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 != 1)
  {

    goto LABEL_12;
  }

  v5 = v0;
  v6 = v2;
  v7 = sub_2187DAD0C();

  if (!v7 || (type metadata accessor for FollowingViewController(), sub_219BF6584(), v7, !v15))
  {
LABEL_11:

    v0 = v5;
    goto LABEL_12;
  }

  v8 = v15;
  v9 = sub_219BF65B4();

  v10 = [v9 searchController];
  if (!v10)
  {

    goto LABEL_11;
  }

  v11 = [v10 isActive];

  v0 = v5;
  if (v11)
  {
    v12 = 1;
    v13 = 1;
    return v12 | (v13 << 8);
  }

LABEL_12:
  if (*(v0 + 32))
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  v13 = *(v0 + 32) ^ 1;
  return v12 | (v13 << 8);
}

uint64_t sub_2190629CC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_219062A14()
{
  sub_219062CF0();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE3874();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 104))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D31710]);
  v6 = *MEMORY[0x277D317C0];
  v7 = sub_219BE3994();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  sub_219BE3914();
  swift_allocObject();
  return sub_219BE3904();
}

unint64_t sub_219062C98()
{
  result = qword_27CC15678;
  if (!qword_27CC15678)
  {
    sub_219BE3BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15678);
  }

  return result;
}

void sub_219062CF0()
{
  if (!qword_280EE6590)
  {
    sub_219BE3994();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6590);
    }
  }
}

uint64_t sub_219062D48()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -62;
    return (v6 ^ v3) & 1;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 62;
  return (v6 ^ v3) & 1;
}

uint64_t sub_219062F20()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_219BEAD04();
    sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
    sub_219BE6FD4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2190630E8()
{
  v1 = v0;
  sub_2187335C8();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  sub_21883F194();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEAF54();
  sub_219BEACB4();
  v11 = sub_219BEA954();

  if ((v11 & 1) == 0)
  {
LABEL_5:
    v14 = 1;
    return v14 & 1;
  }

  sub_219BDE124();
  sub_219BE20E4();

  sub_219BDDB74();
  sub_219067198(v10, sub_21883F194);
  v12 = type metadata accessor for AudioFeedTrack(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = 1;
  v15 = v13(v7, 1, v12);
  sub_219067198(v7, sub_2187335C8);
  if (v15 == 1)
  {
    sub_219BE20E4();
    if (v13(v5, 1, v12) != 1)
    {
      v17 = *v5;
      swift_unknownObjectRetain();
      sub_219067198(v5, type metadata accessor for AudioFeedTrack);
      v18 = [v17 identifier];
      swift_unknownObjectRelease();
      v19 = sub_219BF5414();
      v21 = v20;

      v22 = [*(v1 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineArticleManager) listenableArticleIDs];
      v23 = sub_219BF5D44();

      v14 = sub_2188537B8(v19, v21, v23);

      return v14 & 1;
    }

    sub_219067198(v5, sub_2187335C8);
    goto LABEL_5;
  }

  return v14 & 1;
}

uint64_t sub_2190633E4@<X0>(uint64_t a1@<X8>)
{
  sub_21883F194();
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDE124();
  sub_219BE20E4();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218A6E5D0(0);
    v7 = *(v9 + 64);
    v8 = MEMORY[0x277D324A8];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218A6E554();
    v7 = *(v6 + 64);
    v8 = MEMORY[0x277D32498];
LABEL_5:
    v10 = *v8;
    v11 = sub_219BEEF64();
    (*(*(v11 - 8) + 104))(a1, v10, v11);
    v12 = sub_219BDD9E4();
    (*(*(v12 - 8) + 8))(&v4[v7], v12);
    return sub_219067198(v4, type metadata accessor for AudioFeedTrack);
  }

  v14 = *MEMORY[0x277D324A0];
  v15 = sub_219BEEF64();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

void sub_219063628(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v2 = a1;
    sub_219BEAD04();
    sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
    sub_219BE6FD4();

    swift_unknownObjectRelease();
  }
}

void sub_219063754(void *a1, uint64_t a2)
{
  v3 = v2;
  v400 = a2;
  v402 = a1;
  v398 = sub_219BF2624();
  v391 = *(v398 - 8);
  MEMORY[0x28223BE20](v398);
  v376 = &v323 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = sub_219BF1D74();
  v375 = *(v377 - 8);
  MEMORY[0x28223BE20](v377);
  v373 = &v323 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = sub_219BF1584();
  v372 = *(v374 - 8);
  MEMORY[0x28223BE20](v374);
  v371 = &v323 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187335C8();
  v339 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v341 = &v323 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v340 = &v323 - v10;
  sub_21883F194();
  v346 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v347 = &v323 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v378 = &v323 - v14;
  sub_21906711C(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v358 = &v323 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v370 = &v323 - v18;
  v349 = type metadata accessor for AudioFeedTrack(0);
  v352 = *(v349 - 8);
  v19 = MEMORY[0x28223BE20](v349);
  v323 = &v323 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v348 = &v323 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v350 = &v323 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v351 = (&v323 - v26);
  MEMORY[0x28223BE20](v25);
  v362 = (&v323 - v27);
  v28 = sub_219BDF874();
  v389 = *(v28 - 8);
  v390 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v337 = &v323 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v338 = &v323 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v369 = &v323 - v34;
  MEMORY[0x28223BE20](v33);
  v386 = &v323 - v35;
  v36 = sub_219BF1C74();
  v387 = *(v36 - 8);
  v388 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v335 = &v323 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v336 = &v323 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v367 = &v323 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v368 = &v323 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v384 = &v323 - v46;
  MEMORY[0x28223BE20](v45);
  v385 = &v323 - v47;
  v48 = sub_219BDF864();
  v396 = *(v48 - 8);
  v397 = v48;
  v49 = MEMORY[0x28223BE20](v48);
  v334 = &v323 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v345 = &v323 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v333 = &v323 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v357 = &v323 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v361 = &v323 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v366 = &v323 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v383 = &v323 - v62;
  MEMORY[0x28223BE20](v61);
  v395 = (&v323 - v63);
  v401 = sub_219BF2A04();
  v399 = *(v401 - 8);
  v64 = MEMORY[0x28223BE20](v401);
  v329 = &v323 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v332 = &v323 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v328 = &v323 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v331 = &v323 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v327 = &v323 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v330 = &v323 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v355 = &v323 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v356 = &v323 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v359 = &v323 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v360 = &v323 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v363 = &v323 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v365 = &v323 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v380 = &v323 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v381 = &v323 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v94 = &v323 - v93;
  MEMORY[0x28223BE20](v92);
  v96 = &v323 - v95;
  v394 = sub_219BE0774();
  v97 = *(v394 - 8);
  v98 = MEMORY[0x28223BE20](v394);
  v343 = &v323 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x28223BE20](v98);
  v344 = &v323 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v342 = &v323 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v354 = &v323 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v364 = &v323 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v382 = &v323 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v379 = &v323 - v111;
  MEMORY[0x28223BE20](v110);
  v113 = &v323 - v112;
  v114 = sub_219BF1324();
  v392 = *(v114 - 8);
  v393 = v114;
  v115 = MEMORY[0x28223BE20](v114);
  v326 = &v323 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = MEMORY[0x28223BE20](v115);
  v325 = &v323 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v324 = &v323 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v353 = &v323 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v125 = &v323 - v124;
  v126 = MEMORY[0x28223BE20](v123);
  v128 = &v323 - v127;
  v129 = MEMORY[0x28223BE20](v126);
  v131 = &v323 - v130;
  MEMORY[0x28223BE20](v129);
  v133 = &v323 - v132;
  if (sub_219BF1B84() & 1) != 0 || (sub_2190630E8())
  {
    v391 = v97;
    v398 = v2;
    sub_219BEAF54();
    sub_219BEACB4();
    v134 = sub_219BEA954();

    if (v134)
    {
      v135 = *(v398 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
      v402 = *(v398 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 32);
      __swift_project_boxed_opaque_existential_1((v398 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker), v135);
      sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
      sub_219BF2594();
      sub_218C8FF70(v113);
      (*(v392 + 8))(v133, v393);
      sub_219BF25A4();
      v136 = v399;
      v137 = v401;
      (*(v399 + 16))(v94, v96, v401);
      v138 = (*(v136 + 88))(v94, v137);
      if (v138 == *MEMORY[0x277D33A68])
      {
        v139 = MEMORY[0x277D2DDB0];
        v140 = v397;
LABEL_21:
        v179 = v402;
        (*(v136 + 8))(v96, v401);
        v180 = v396;
        (*(v396 + 104))(v395, *v139, v140);
        v181 = v385;
        sub_219BF2584();
        v183 = v387;
        v182 = v388;
        v184 = v384;
        (*(v387 + 16))(v384, v181, v388);
        v185 = (*(v183 + 88))(v184, v182);
        if (v185 == *MEMORY[0x277D33570])
        {
          v186 = MEMORY[0x277D2DDC8];
LABEL_25:
          (*(v183 + 8))(v181, v182);
          v188 = v389;
          v187 = v390;
          v189 = v386;
          (*(v389 + 104))(v386, *v186, v390);
          v190 = v179;
          v191 = v179[3];
          v192 = v395;
          v191(v113, v395, v189, v135, v190);
          (*(v188 + 8))(v189, v187);
          (*(v180 + 8))(v192, v140);
          (*(v391 + 8))(v113, v394);
          sub_219BDE164();
          return;
        }

        if (v185 == *MEMORY[0x277D33568])
        {
          v186 = MEMORY[0x277D2DDD8];
          goto LABEL_25;
        }

        goto LABEL_109;
      }

      v140 = v397;
      if (v138 == *MEMORY[0x277D33A78])
      {
        v139 = MEMORY[0x277D2DDC0];
        goto LABEL_21;
      }

      if (v138 == *MEMORY[0x277D33A70])
      {
        v139 = MEMORY[0x277D2DDB8];
        goto LABEL_21;
      }

LABEL_109:
      sub_219BF7514();
      __break(1u);
      return;
    }

    sub_219BEAC94();
    v141 = sub_219BEA954();

    v142 = v398;
    if (v141)
    {
      v143 = *(v398 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
      v144 = *(v398 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 32);
      __swift_project_boxed_opaque_existential_1((v398 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker), v143);
      sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
      sub_219BF2594();
      v145 = v379;
      sub_218C8FF70(v379);
      (*(v392 + 8))(v131, v393);
      v146 = v381;
      sub_219BF25A4();
      v147 = v399;
      v148 = v380;
      v149 = v401;
      (*(v399 + 16))(v380, v146, v401);
      v150 = (*(v147 + 88))(v148, v149);
      v151 = v396;
      v152 = v397;
      if (v150 == *MEMORY[0x277D33A68])
      {
        v153 = MEMORY[0x277D2DDB0];
      }

      else if (v150 == *MEMORY[0x277D33A78])
      {
        v153 = MEMORY[0x277D2DDC0];
      }

      else
      {
        if (v150 != *MEMORY[0x277D33A70])
        {
          goto LABEL_109;
        }

        v153 = MEMORY[0x277D2DDB8];
      }

      (*(v399 + 8))(v146, v401);
      v202 = v383;
      (*(v151 + 104))(v383, *v153, v152);
      (*(v144 + 16))(v145, v202, v143, v144);
      (*(v151 + 8))(v202, v152);
      (*(v391 + 8))(v145, v394);
      sub_219BDE184();
      return;
    }

    sub_219BEAD04();
    v166 = sub_219BEA954();

    v168 = v396;
    v167 = v397;
    if (v166)
    {
      v169 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
      v170 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 32);
      v402 = __swift_project_boxed_opaque_existential_1((v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker), v169);
      sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
      sub_219BF2594();
      sub_218C8FF70(v382);
      (*(v392 + 8))(v128, v393);
      v171 = v365;
      sub_219BF25A4();
      v172 = v399;
      v173 = v363;
      v174 = v401;
      (*(v399 + 16))(v363, v171, v401);
      v175 = (*(v172 + 88))(v173, v174);
      if (v175 == *MEMORY[0x277D33A68])
      {
        v176 = MEMORY[0x277D2DDB0];
        v177 = v387;
        v178 = v366;
      }

      else
      {
        v177 = v387;
        v178 = v366;
        if (v175 == *MEMORY[0x277D33A78])
        {
          v176 = MEMORY[0x277D2DDC0];
        }

        else
        {
          if (v175 != *MEMORY[0x277D33A70])
          {
            goto LABEL_109;
          }

          v176 = MEMORY[0x277D2DDB8];
        }
      }

      (*(v399 + 8))(v171, v401);
      (*(v168 + 104))(v178, *v176, v167);
      v216 = v368;
      sub_219BF2584();
      v217 = v367;
      v218 = v388;
      (*(v177 + 16))(v367, v216, v388);
      v219 = (*(v177 + 88))(v217, v218);
      if (v219 == *MEMORY[0x277D33570])
      {
        v220 = v168;
        v221 = MEMORY[0x277D2DDC8];
      }

      else
      {
        if (v219 != *MEMORY[0x277D33568])
        {
          goto LABEL_109;
        }

        v220 = v168;
        v221 = MEMORY[0x277D2DDD8];
      }

      (*(v177 + 8))(v216, v218);
      v223 = v389;
      v222 = v390;
      v224 = v369;
      (*(v389 + 104))(v369, *v221, v390);
      v225 = v382;
      (*(v170 + 8))(v382, v178, v224, v169, v170);
      (*(v223 + 8))(v224, v222);
      (*(v220 + 8))(v178, v167);
      (*(v391 + 8))(v225, v394);
      sub_219BDE124();
      v226 = v378;
      sub_219BE20E4();

      v227 = v370;
      sub_218D5862C(v370);
      sub_219067198(v226, sub_21883F194);
      sub_218D58B4C();
      if ((*(*(v228 - 8) + 48))(v227, 1, v228) == 1)
      {
        v229 = v227;
LABEL_74:
        sub_219067198(v229, sub_21906711C);
        sub_2186C6148(0, &qword_280E8D790);
        v269 = sub_219BF6F74();
        sub_219BF61F4();
        sub_219BE5314();

        return;
      }

      v230 = v362;
      sub_21872D0AC(v227, v362, type metadata accessor for AudioFeedTrack);

      sub_219BE20E4();

      if (!v403[2])
      {

LABEL_61:
        sub_2197D77B0(v230, 0);
        v245 = v230;
LABEL_76:
        sub_219067198(v245, type metadata accessor for AudioFeedTrack);
        return;
      }

      v231 = (*(v352 + 80) + 32) & ~*(v352 + 80);
      v232 = v350;
      sub_21872D4F8(v403 + v231, v350, type metadata accessor for AudioFeedTrack);

      v233 = v351;
      sub_21872D0AC(v232, v351, type metadata accessor for AudioFeedTrack);
      v234 = [*v233 identifier];
      v235 = sub_219BF5414();
      v237 = v236;

      v238 = [*v230 identifier];
      v239 = sub_219BF5414();
      v241 = v240;

      if (v235 == v239 && v237 == v241)
      {
      }

      else
      {
        v242 = sub_219BF78F4();

        if ((v242 & 1) == 0)
        {
LABEL_60:
          sub_219067198(v233, type metadata accessor for AudioFeedTrack);
          goto LABEL_61;
        }
      }

      if (sub_2198DB278((v233 + *(v349 + 32)), (v230 + *(v349 + 32))))
      {

        sub_219BE20E4();
        v243 = v403;
        v244 = v403[2];
        if (v244)
        {
          sub_218B671A8(v403, v403 + v231, 1, (2 * v244) | 1);
          v322 = v321;

          v243 = v322;
        }

        v403 = v243;
        sub_218EE32FC();
        sub_219BE2114();

        sub_219067198(v233, type metadata accessor for AudioFeedTrack);
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    sub_219BEAC34();
    v193 = sub_219BEA954();

    if (v193)
    {
      v194 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
      v195 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 32);
      __swift_project_boxed_opaque_existential_1((v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker), v194);
      sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
      sub_219BF2594();
      sub_218C8FF70(v364);
      (*(v392 + 8))(v125, v393);
      v196 = v360;
      sub_219BF25A4();
      v197 = v399;
      v198 = v359;
      v199 = v401;
      (*(v399 + 16))(v359, v196, v401);
      v200 = (*(v197 + 88))(v198, v199);
      if (v200 == *MEMORY[0x277D33A68])
      {
        v201 = MEMORY[0x277D2DDB0];
      }

      else if (v200 == *MEMORY[0x277D33A78])
      {
        v201 = MEMORY[0x277D2DDC0];
      }

      else
      {
        if (v200 != *MEMORY[0x277D33A70])
        {
          goto LABEL_109;
        }

        v201 = MEMORY[0x277D2DDB8];
      }

      (*(v399 + 8))(v196, v401);
      v262 = v361;
      (*(v168 + 104))(v361, *v201, v167);
      v263 = v364;
      (*(v195 + 32))(v364, v262, v194, v195);
      (*(v168 + 8))(v262, v167);
      (*(v391 + 8))(v263, v394);
      sub_219BDE0F4();
      return;
    }

    sub_219BEABC4();
    v203 = sub_219BEA954();

    if (v203 & 1) != 0 || (sub_219BEAC84(), v204 = sub_219BEA954(), , (v204))
    {
      v205 = (v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker);
      v206 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
      v207 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 32);
      __swift_project_boxed_opaque_existential_1(v205, v206);
      sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
      v208 = v353;
      sub_219BF2594();
      v209 = v354;
      sub_218C8FF70(v354);
      (*(v392 + 8))(v208, v393);
      v210 = v356;
      sub_219BF25A4();
      v211 = v399;
      v212 = v355;
      v213 = v401;
      (*(v399 + 16))(v355, v210, v401);
      v214 = (*(v211 + 88))(v212, v213);
      if (v214 == *MEMORY[0x277D33A68])
      {
        v215 = MEMORY[0x277D2DDB0];
      }

      else if (v214 == *MEMORY[0x277D33A78])
      {
        v215 = MEMORY[0x277D2DDC0];
      }

      else
      {
        if (v214 != *MEMORY[0x277D33A70])
        {
          goto LABEL_109;
        }

        v215 = MEMORY[0x277D2DDB8];
      }

      (*(v399 + 8))(v210, v401);
      v264 = *v215;
      v265 = v357;
      (*(v168 + 104))(v357, v264, v167);
      (*(v207 + 40))(v209, v265, v206, v207);
      (*(v168 + 8))(v265, v167);
      (*(v391 + 8))(v209, v394);
      sub_219BDE124();
      v266 = v378;
      sub_219BE20E4();

      v267 = v358;
      sub_218D5862C(v358);
      sub_219067198(v266, sub_21883F194);
      sub_218D58B4C();
      if ((*(*(v268 - 8) + 48))(v267, 1, v268) == 1)
      {
        v229 = v267;
        goto LABEL_74;
      }

      v270 = v348;
      sub_21872D0AC(v267, v348, type metadata accessor for AudioFeedTrack);
      sub_219BDE174();
      sub_2197D77B0(v270, 1u);
      v245 = v270;
      goto LABEL_76;
    }

    sub_219BEABD4();
    v246 = sub_219BEA954();

    if ((v246 & 1) == 0)
    {
      return;
    }

    v402 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_playbackConductor);
    sub_219BDE124();
    sub_219BE20E4();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v248 = (v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker);
    v250 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
    v249 = v248[4];
    v395 = __swift_project_boxed_opaque_existential_1(v248, v250);
    sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
    v251 = (v392 + 8);
    v252 = (v399 + 16);
    v253 = (v399 + 88);
    if (!EnumCaseMultiPayload)
    {
      v271 = v324;
      sub_219BF2594();
      sub_218C8FF70(v342);
      (*v251)(v271, v393);
      v272 = v330;
      sub_219BF25A4();
      v273 = v327;
      v274 = v401;
      (*v252)(v327, v272, v401);
      v275 = (*v253)(v273, v274);
      if (v275 == *MEMORY[0x277D33A68])
      {
        v276 = MEMORY[0x277D2DDB0];
        v277 = v397;
      }

      else
      {
        v277 = v397;
        if (v275 == *MEMORY[0x277D33A78])
        {
          v276 = MEMORY[0x277D2DDC0];
        }

        else
        {
          if (v275 != *MEMORY[0x277D33A70])
          {
            goto LABEL_109;
          }

          v276 = MEMORY[0x277D2DDB8];
        }
      }

      (*(v399 + 8))(v272, v401);
      v301 = v333;
      (*(v168 + 104))(v333, *v276, v277);
      sub_218A6E5D0(0);
      v296 = *(v302 + 64);
      v303 = v342;
      (*(v249 + 16))(v342, v301, v250, v249);
      (*(v168 + 8))(v301, v277);
      (*(v391 + 8))(v303, v394);
      sub_219BDE184();
LABEL_98:
      v304 = sub_219BDD9E4();
      v305 = v347;
      (*(*(v304 - 8) + 8))(&v347[v296], v304);
      v245 = v305;
      goto LABEL_76;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v254 = v325;
      sub_219BF2594();
      sub_218C8FF70(v344);
      (*v251)(v254, v393);
      v255 = v331;
      sub_219BF25A4();
      v256 = v328;
      v257 = v401;
      (*v252)(v328, v255, v401);
      v258 = (*v253)(v256, v257);
      if (v258 == *MEMORY[0x277D33A68])
      {
        v259 = MEMORY[0x277D2DDB0];
        v260 = v397;
        v261 = v387;
      }

      else
      {
        v260 = v397;
        v261 = v387;
        if (v258 == *MEMORY[0x277D33A78])
        {
          v259 = MEMORY[0x277D2DDC0];
        }

        else
        {
          if (v258 != *MEMORY[0x277D33A70])
          {
            goto LABEL_109;
          }

          v259 = MEMORY[0x277D2DDB8];
        }
      }

      (*(v399 + 8))(v255, v401);
      (*(v168 + 104))(v345, *v259, v260);
      v285 = v336;
      sub_219BF2584();
      v286 = v335;
      v287 = v388;
      (*(v261 + 16))(v335, v285, v388);
      v288 = (*(v261 + 88))(v286, v287);
      if (v288 == *MEMORY[0x277D33570])
      {
        v289 = v249;
        v290 = v260;
        v291 = MEMORY[0x277D2DDC8];
      }

      else
      {
        if (v288 != *MEMORY[0x277D33568])
        {
          goto LABEL_109;
        }

        v289 = v249;
        v290 = v260;
        v291 = MEMORY[0x277D2DDD8];
      }

      (*(v261 + 8))(v285, v287);
      v293 = v389;
      v292 = v390;
      v294 = v338;
      (*(v389 + 104))(v338, *v291, v390);
      sub_218A6E554();
      v296 = *(v295 + 64);
      v297 = v289;
      v298 = *(v289 + 24);
      v299 = v344;
      v300 = v345;
      v298(v344, v345, v294, v250, v297);
      (*(v293 + 8))(v294, v292);
      (*(v168 + 8))(v300, v290);
      (*(v391 + 8))(v299, v394);
      sub_219BDE164();
      goto LABEL_98;
    }

    v278 = v326;
    sub_219BF2594();
    sub_218C8FF70(v343);
    (*v251)(v278, v393);
    v279 = v332;
    sub_219BF25A4();
    v280 = v329;
    v281 = v401;
    (*v252)(v329, v279, v401);
    v282 = (*v253)(v280, v281);
    if (v282 == *MEMORY[0x277D33A68])
    {
      v283 = MEMORY[0x277D2DDB0];
      v284 = v397;
    }

    else
    {
      v284 = v397;
      if (v282 == *MEMORY[0x277D33A78])
      {
        v283 = MEMORY[0x277D2DDC0];
      }

      else
      {
        if (v282 != *MEMORY[0x277D33A70])
        {
          goto LABEL_109;
        }

        v283 = MEMORY[0x277D2DDB8];
      }
    }

    (*(v399 + 8))(v279, v401);
    v306 = v334;
    (*(v168 + 104))(v334, *v283, v284);
    v308 = v389;
    v307 = v390;
    v309 = v337;
    (*(v389 + 104))(v337, *MEMORY[0x277D2DDC8], v390);
    v310 = v343;
    (*(v249 + 8))(v343, v306, v309, v250, v249);
    (*(v308 + 8))(v309, v307);
    (*(v168 + 8))(v306, v284);
    (*(v391 + 8))(v310, v394);
    sub_218729CB4(0, &unk_280E8BC40, sub_2187335C8, MEMORY[0x277D84560]);
    v311 = (*(v339 + 80) + 32) & ~*(v339 + 80);
    v312 = swift_allocObject();

    sub_219BE20E4();

    v313 = v340;
    sub_21872D4F8(v312 + v311, v340, sub_2187335C8);
    v314 = v313;
    v315 = v341;
    sub_21872D0AC(v314, v341, sub_2187335C8);
    v316 = v352;
    if ((*(v352 + 48))(v315, 1, v349) == 1)
    {
      sub_219067198(v315, sub_2187335C8);
      v317 = MEMORY[0x277D84F90];
    }

    else
    {
      v318 = v323;
      sub_21872D0AC(v315, v323, type metadata accessor for AudioFeedTrack);
      v317 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v317 = sub_2191F79E0(0, v317[2] + 1, 1, v317);
      }

      v320 = v317[2];
      v319 = v317[3];
      if (v320 >= v319 >> 1)
      {
        v317 = sub_2191F79E0(v319 > 1, v320 + 1, 1, v317);
      }

      v317[2] = v320 + 1;
      sub_21872D0AC(v318, v317 + ((*(v316 + 80) + 32) & ~*(v316 + 80)) + *(v316 + 72) * v320, type metadata accessor for AudioFeedTrack);
    }

    swift_setDeallocating();
    sub_219067198(v312 + v311, sub_2187335C8);
    swift_deallocClassInstance();
    v403 = v317;
    sub_218EE32FC();
    sub_219BE2114();

    sub_219BDE164();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_sceneProvider), *(v2 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_sceneProvider + 24));
    v154 = sub_219BE7174();
    if (v154)
    {
      v155 = v154;
      v156 = [v154 rootViewController];

      if (v156)
      {
        v157 = *(v3 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineAlertControllerFactory + 24);
        v402 = *(v3 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineAlertControllerFactory + 32);
        __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineAlertControllerFactory), v157);
        v158 = v371;
        sub_219BDDC44();
        v159 = v375;
        v160 = v373;
        v161 = v377;
        (*(v375 + 104))(v373, *MEMORY[0x277D33600], v377);
        v162 = v391;
        v163 = v376;
        v164 = v398;
        (*(v391 + 104))(v376, *MEMORY[0x277D33990], v398);
        v165 = sub_219BF4984();
        (*(v162 + 8))(v163, v164);
        (*(v159 + 8))(v160, v161);
        (*(v372 + 8))(v158, v374);
        [v156 presentViewController:v165 animated:1 completion:0];
      }
    }
  }
}

uint64_t sub_2190663A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v108 = a2;
  sub_218EE3174();
  v103 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1C74();
  v106 = *(v7 - 8);
  v107 = v7;
  MEMORY[0x28223BE20](v7);
  v105 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FB74C4();
  v109 = *(v9 - 8);
  v110 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187335C8();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v102 = (&v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v104 = &v92 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v111 = &v92 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v113 = &v92 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v114 = &v92 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v112 = &v92 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v92 - v25;
  v27 = type metadata accessor for AudioFeedTrack(0);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v101 = (&v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v33 = (&v92 - v32);
  MEMORY[0x28223BE20](v31);
  v115 = &v92 - v34;
  sub_219BEAF54();
  sub_219BEAD04();
  v35 = sub_219BEA954();

  if ((v35 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_219BDE104();
  sub_219BE20E4();

  v36 = *(v28 + 48);
  if (v36(v26, 1, v27) == 1)
  {
    v37 = sub_2187335C8;
    v38 = v26;
LABEL_13:
    sub_219067198(v38, v37);
    v55 = 0;
    return v55 & 1;
  }

  v93 = v28;
  v95 = v33;
  v94 = v6;
  v39 = v115;
  sub_21872D0AC(v26, v115, type metadata accessor for AudioFeedTrack);
  v97 = *(v39 + 24);
  v99 = v28 + 48;

  sub_219BE20E4();

  v96 = v3;
  v98 = v36;
  v117 = v118;
  sub_21872E140(0);
  sub_219067150(&qword_280E8F340, sub_21872E140);
  v100 = v27;
  sub_219BF5E04();

  v116 = 1;
  v40 = v112;
  v41 = v110;
  sub_219BE2084();
  v42 = *(v109 + 8);
  v42(v11, v41);
  v43 = v96;

  sub_219BE20E4();

  v117 = v118;
  v44 = v100;
  sub_219BF5E04();

  v116 = 1;
  v45 = v114;
  sub_219BE2084();
  v42(v11, v41);
  v46 = v40;
  v47 = sub_219062D48();
  v48 = v97;
  if ((v97 & 4) != 0)
  {
    v49 = v40;
  }

  else
  {
    v49 = v45;
  }

  if (v47)
  {
    v50 = v40;
  }

  else
  {
    v50 = v49;
  }

  v51 = v113;
  sub_21872D4F8(v50, v113, sub_2187335C8);
  v52 = v111;
  sub_21872D4F8(v51, v111, sub_2187335C8);
  v53 = v98;
  if (v98(v52, 1, v44) == 1)
  {
    v54 = sub_2187335C8;
    sub_219067198(v51, sub_2187335C8);
    sub_219067198(v45, sub_2187335C8);
    sub_219067198(v46, sub_2187335C8);
    sub_219067198(v115, type metadata accessor for AudioFeedTrack);
    v38 = v52;
LABEL_12:
    v37 = v54;
    goto LABEL_13;
  }

  v56 = v95;
  sub_21872D0AC(v52, v95, type metadata accessor for AudioFeedTrack);
  if ((sub_219BF1B84() & 1) == 0)
  {
    v57 = [*(v43 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineArticleManager) listenableArticleIDs];
    v58 = sub_219BF5D44();

    v59 = [*v56 identifier];
    v60 = sub_219BF5414();
    v62 = v61;

    LOBYTE(v59) = sub_2188537B8(v60, v62, v58);
    v44 = v100;

    v45 = v114;

    if ((v59 & 1) == 0)
    {
      sub_219067198(v51, sub_2187335C8);
      sub_219067198(v45, sub_2187335C8);
      sub_219067198(v46, sub_2187335C8);
      v54 = type metadata accessor for AudioFeedTrack;
      sub_219067198(v115, type metadata accessor for AudioFeedTrack);
      v38 = v56;
      goto LABEL_12;
    }
  }

  sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
  v63 = v105;
  sub_219BF2584();
  v64 = (*(v106 + 88))(v63, v107);
  v65 = v115;
  if (v64 == *MEMORY[0x277D33570])
  {
    v55 = sub_219062D48();
    sub_219067198(v51, sub_2187335C8);
    sub_219067198(v45, sub_2187335C8);
    sub_219067198(v46, sub_2187335C8);
    v66 = type metadata accessor for AudioFeedTrack;
    sub_219067198(v65, type metadata accessor for AudioFeedTrack);
    v67 = v95;
LABEL_18:
    sub_219067198(v67, v66);
    return v55 & 1;
  }

  if (v64 == *MEMORY[0x277D33568])
  {
    v68 = v94;
    v69 = v104;
    if ((v48 & 4) != 0)
    {
      sub_219067198(v51, sub_2187335C8);
      sub_219067198(v45, sub_2187335C8);
      sub_219067198(v46, sub_2187335C8);
      sub_219067198(v65, type metadata accessor for AudioFeedTrack);
      v73 = v95;
      v72 = type metadata accessor for AudioFeedTrack;
      goto LABEL_26;
    }

    v70 = v95;
    sub_21872D4F8(v95, v104, type metadata accessor for AudioFeedTrack);
    (*(v93 + 56))(v69, 0, 1, v44);
    v71 = *(v103 + 48);
    sub_21872D4F8(v69, v68, sub_2187335C8);
    v111 = v71;
    sub_21872D4F8(v45, v68 + v71, sub_2187335C8);
    if (v53(v68, 1, v44) == 1)
    {
      sub_219067198(v69, sub_2187335C8);
      sub_219067198(v51, sub_2187335C8);
      sub_219067198(v45, sub_2187335C8);
      sub_219067198(v46, sub_2187335C8);
      sub_219067198(v115, type metadata accessor for AudioFeedTrack);
      sub_219067198(v70, type metadata accessor for AudioFeedTrack);
      if (v53(v68 + v111, 1, v44) == 1)
      {
        v72 = sub_2187335C8;
        v73 = v68;
LABEL_26:
        sub_219067198(v73, v72);
LABEL_27:
        v55 = 1;
        return v55 & 1;
      }

LABEL_31:
      v37 = sub_218EE3174;
      v38 = v68;
      goto LABEL_13;
    }

    v75 = v102;
    sub_21872D4F8(v68, v102, sub_2187335C8);
    v76 = v111;
    if (v53(v68 + v111, 1, v44) == 1)
    {
      sub_219067198(v69, sub_2187335C8);
      sub_219067198(v51, sub_2187335C8);
      sub_219067198(v45, sub_2187335C8);
      sub_219067198(v46, sub_2187335C8);
      sub_219067198(v115, type metadata accessor for AudioFeedTrack);
      sub_219067198(v95, type metadata accessor for AudioFeedTrack);
      sub_219067198(v75, type metadata accessor for AudioFeedTrack);
      goto LABEL_31;
    }

    v77 = v68;
    v78 = v101;
    sub_21872D0AC(v68 + v76, v101, type metadata accessor for AudioFeedTrack);
    v79 = [*v75 identifier];
    v80 = sub_219BF5414();
    v82 = v81;

    v83 = [*v78 identifier];
    v84 = sub_219BF5414();
    v86 = v85;

    v87 = v115;
    if (v80 == v84 && v82 == v86)
    {

      v89 = v101;
      v88 = v102;
      v90 = v100;
    }

    else
    {
      v91 = sub_219BF78F4();

      v55 = 0;
      v89 = v101;
      v88 = v102;
      v90 = v100;
      if ((v91 & 1) == 0)
      {
LABEL_37:
        v66 = sub_2187335C8;
        sub_219067198(v104, sub_2187335C8);
        sub_219067198(v51, sub_2187335C8);
        sub_219067198(v114, sub_2187335C8);
        sub_219067198(v46, sub_2187335C8);
        sub_219067198(v87, type metadata accessor for AudioFeedTrack);
        sub_219067198(v89, type metadata accessor for AudioFeedTrack);
        sub_219067198(v95, type metadata accessor for AudioFeedTrack);
        sub_219067198(v88, type metadata accessor for AudioFeedTrack);
        v67 = v77;
        goto LABEL_18;
      }
    }

    v55 = sub_2198DB278((v88 + *(v90 + 32)), (v89 + *(v90 + 32)));
    goto LABEL_37;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_219067150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219067198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219067204@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BE9834();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_219067284(uint64_t a1)
{
  v2 = sub_219068724(&qword_27CC156F0, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2190672F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6E860];
  v3 = sub_219BE9C24();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

int *sub_219067368@<X0>(double a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  *&v6 = COERCE_DOUBLE(sub_219BE9F64());
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  *&v199 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219068818(0, &qword_27CC156F8, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  *&v202 = &v177 - v13;
  v14 = sub_219BDCAF4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE8164();
  MEMORY[0x28223BE20](v18);
  v22 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*&a1 + 16);
  v24 = *(*&a1 + 24);
  v204 = a1;
  v25 = HIBYTE(*&v24) & 0xFLL;
  if ((*&v24 & 0x2000000000000000) == 0)
  {
    v25 = *&v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v195 = v24;
    v200 = v23;
    v189 = v7;
    v190 = *&v6;
    v193 = v12;
    v198 = a3;
    v196 = v20;
    v26 = *(v20 + 16);
    v191 = a2;
    v197 = v19;
    v26(v22, a2, v19);
    sub_219BE8004();
    v28 = v27;
    v29 = sub_219BE8034();
    v30 = [v29 preferredContentSizeCategory];

    v192 = sub_219BF6924();
    v31 = *__swift_project_boxed_opaque_existential_1((v207 + 16), *(v207 + 40));
    *&v205 = COERCE_DOUBLE(sub_219BF0CD4());
    v32 = *(v31 + 16);
    v33 = objc_opt_self();
    v34 = [v33 systemFontOfSize:20.0 weight:*MEMORY[0x277D74400]];
    v35 = [v32 scaledFontForFont:v34 maximumPointSize:48.0];
    v206 = *&v22;
    v36 = v35;

    v37 = *MEMORY[0x277D6D198];
    v38 = *(v15 + 104);
    v38(v17, v37, v14);
    v203 = COERCE_DOUBLE(sub_219BF0CB4());

    v39 = *(v15 + 8);
    v39(v17, v14);
    v40 = *(*__swift_project_boxed_opaque_existential_1((v207 + 16), *(v207 + 40)) + 24);
    v41 = [v33 systemFontOfSize:17.0 weight:*MEMORY[0x277D74418]];
    v42 = [v40 scaledFontForFont_];

    v185 = v37;
    v186 = v15 + 104;
    v184 = v38;
    v38(v17, v37, v14);
    v43 = v17;
    v201 = sub_219BF0CB4();

    v188 = v14;
    v187 = v15 + 8;
    v183 = v39;
    v39(v17, v14);
    v44 = sub_219BE8074();
    v45 = objc_opt_self();
    v46 = [v45 traitCollectionWithHorizontalSizeClass_];
    LODWORD(v36) = [v44 containsTraitsInCollection_];

    if (v36 && (v47 = sub_219BE8034(), v48 = [v45 traitCollectionWithHorizontalSizeClass_], v49 = objc_msgSend(v47, sel_containsTraitsInCollection_, v48), v47, v48, (v49 & 1) != 0))
    {
      v50 = 0xE700000000000000;
      v51 = 0x746361706D6F63;
    }

    else
    {
      v50 = 0xEA00000000007463;
      v51 = 0x61706D6F636E6F6ELL;
    }

    v52 = MEMORY[0x277D837D0];
    sub_2186F83B8(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_219C10590;
    *(v53 + 32) = sub_219BF5CA4();
    *(v53 + 40) = v54;
    [*&v203 pointSize];
    *(v53 + 48) = sub_219BF5CA4();
    *(v53 + 56) = v55;
    v56 = v201;
    [v201 pointSize];
    *(v53 + 64) = sub_219BF5CA4();
    *(v53 + 72) = v57;
    v58 = v204;
    v211 = **&v204;
    *(v53 + 80) = v211;
    *(v53 + 96) = v51;
    *(v53 + 104) = v50;
    v59 = v195;
    *(v53 + 112) = v200;
    *(v53 + 120) = v59;
    v60 = *(*&v58 + 32);
    v61 = *(*&v58 + 40);
    v182 = v60;
    if (*&v61 == 0.0)
    {
      v62 = 0;
    }

    else
    {
      v62 = v60;
    }

    if (*&v61 == 0.0)
    {
      v63 = 0xE000000000000000;
    }

    else
    {
      v63 = v61;
    }

    v209 = 0;
    v210 = 0xE000000000000000;
    sub_218A18DB4(&v211, v208);

    v194 = *&v61;

    MEMORY[0x21CECC330](v62, v63);

    v64 = v210;
    *(v53 + 128) = v209;
    *(v53 + 136) = v64;
    v209 = 0;
    v210 = 0xE000000000000000;
    v65 = *(*&v58 + 64);
    if (v65)
    {
      v66 = *(*&v58 + 56);
    }

    else
    {
      v66 = 0;
    }

    if (v65)
    {
      v67 = *(*&v58 + 64);
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    MEMORY[0x21CECC330](v66, v67);

    v68 = v210;
    *(v53 + 144) = v209;
    *(v53 + 152) = v68;
    v209 = v53;
    sub_2186F83B8(0, &qword_280E8EE20, v52, MEMORY[0x277D83940]);
    sub_2189DD328();
    v69 = sub_219BF5324();
    v71 = v70;

    v209 = v69;
    v210 = v71;

    v72 = *&v202;
    sub_219BE2DD4();

    v73 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
    v74 = *(v73 - 1);
    if ((*(v74 + 48))(v72, 1, v73) == 1)
    {
      v179 = v74;
      v178 = v43;
      v180 = v69;
      v181 = v71;
      sub_21906876C(v72);
      v75 = type metadata accessor for ChannelPickerHeaderViewLayoutOptions(0);
      v76 = v191;
      v77 = *&v191[v75[7]];
      sub_219BE7FF4();
      v79 = v77 - v78;
      v80 = v199;
      sub_219BE7FB4();
      sub_219BE9F54();
      v82 = v81;
      v189[1](COERCE_CGFLOAT(*&v80), COERCE_DOUBLE(*&v190));
      v199 = v79 + v82;
      v83 = v75[6];
      v202 = *&v76[v75[5]];
      v190 = *&v76[v83];
      sub_219068818(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      v85 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v86 = sub_2186C6148(0, &qword_280E8DB00);
      *(inited + 64) = v86;
      v87 = v203;
      *(inited + 40) = v203;
      v189 = v85;
      v191 = *&v87;
      sub_2188195F4(inited);
      swift_setDeallocating();
      sub_21899E5A8(inited + 32);
      v88 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v89 = sub_219BF53D4();
      type metadata accessor for Key(0);
      v91 = v90;
      sub_219068724(&qword_280E8E118, type metadata accessor for Key);
      v195 = v91;
      v92 = sub_219BF5204();

      v93 = [v88 initWithString:v89 attributes:v92];

      sub_219BE7FF4();
      sub_219BF6034();
      [v93 boundingRectWithSize:1 options:0 context:{v28 - v94, 1.79769313e308}];
      x = v212.origin.x;
      y = v212.origin.y;
      width = v212.size.width;
      height = v212.size.height;
      v203 = CGRectGetWidth(v212);
      v213.origin.x = x;
      v213.origin.y = y;
      v213.size.width = width;
      v213.size.height = height;
      v200 = CGRectGetHeight(v213);
      v99 = 0.0;
      if (v194 == 0.0)
      {
        v118 = 0.0;
        v119 = 0.0;
        v120 = 0.0;
        v121 = v206;
        v122 = v201;
      }

      else
      {
        v100 = swift_initStackObject();
        *(v100 + 16) = xmmword_219C09EC0;
        v101 = *MEMORY[0x277D740C0];
        *(v100 + 32) = *MEMORY[0x277D740C0];
        v102 = objc_opt_self();
        v103 = v101;
        v104 = [v102 secondaryLabelColor];
        v105 = sub_2186C6148(0, &qword_280E8DA80);
        *(v100 + 40) = v104;
        v106 = v189;
        *(v100 + 64) = v105;
        *(v100 + 72) = v106;
        v107 = v106;
        v108 = sub_219BF6BD4();
        v109 = v93;
        v110 = v178;
        v111 = v188;
        v184(v178, v185, v188);
        v112 = sub_219BF0CB4();

        v113 = v110;
        v93 = v109;
        v183(v113, v111);
        *(v100 + 104) = v86;
        *(v100 + 80) = v112;
        sub_2188195F4(v100);
        swift_setDeallocating();
        sub_218819588();
        swift_arrayDestroy();
        v114 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v115 = sub_219BF53D4();
        v116 = sub_219BF5204();

        v117 = [v114 initWithString:v115 attributes:v116];

        v118 = 0.0;
        v119 = 0.0;
        v120 = 0.0;
        v121 = v206;
        v122 = v201;
        if (v117)
        {
          sub_219BE7FF4();
          sub_219BF6034();
          [v117 boundingRectWithSize:33 options:0 context:{v28 - v123, 1.79769313e308}];
          v205 = v124;
          v126 = v125;
          v128 = v127;
          v130 = v129;
          v131 = v199;
          v214.origin.x = v199;
          v132 = v202;
          v214.origin.y = v202;
          v133 = v203;
          v214.size.width = v203;
          v134 = v28;
          v135 = v200;
          v214.size.height = v200;
          MinX = CGRectGetMinX(v214);
          v215.origin.x = v131;
          v215.origin.y = v132;
          v99 = MinX;
          v215.size.width = v133;
          v215.size.height = v135;
          v28 = v134;
          v118 = CGRectGetMaxY(v215) + 8.0;
          v137 = *&v205;
          *&v216.origin.x = v205;
          v216.origin.y = v126;
          v216.size.width = v128;
          v216.size.height = v130;
          v119 = CGRectGetWidth(v216);
          v217.origin.x = v137;
          v217.origin.y = v126;
          v217.size.width = v128;
          v217.size.height = v130;
          v120 = CGRectGetHeight(v217);
        }
      }

      v145 = sub_21906887C(*&v204);
      v147 = v146;
      v206 = v28;
      sub_219BE7FF4();
      v149 = v28 - v145 - v148 + -12.0;
      v150 = v191;
      [v191 lineHeight];
      v152 = v151;
      [v150 descender];
      v204 = v202 + v152 + v153 - *&v147 + -2.0;
      *&v205 = v145;
      if (v145 != 0.0 || *&v147 != 0.0)
      {
        [v93 boundingRectWithSize:3 options:0 context:{v149, 1.79769313e308}];
        v203 = v154;
        v200 = v155;
      }

      v218.origin.x = v99;
      v218.origin.y = v118;
      v218.size.width = v119;
      v218.size.height = v120;
      MaxY = CGRectGetMaxY(v218);
      v194 = v99;
      v157 = v199;
      v219.origin.x = v199;
      v201 = v147;
      v158 = v118;
      v159 = v202;
      v219.origin.y = v202;
      v195 = v149;
      v160 = v203;
      v219.size.width = v203;
      v161 = v120;
      v162 = v119;
      v163 = v200;
      v219.size.height = v200;
      v164 = CGRectGetMaxY(v219);
      if (MaxY > v164)
      {
        v164 = MaxY;
      }

      v165 = v190 + ceil(v164);
      v166 = *MEMORY[0x277D6E758];
      v167 = sub_219BE9834();
      v168 = v198;
      (*(*(v167 - 8) + 104))(v198, v166, v167);
      v169 = v168 + v73[5];
      *v169 = 0;
      *(v169 + 8) = 0;
      *(v169 + 16) = v206;
      *(v169 + 24) = v165;
      v170 = (v168 + v73[6]);
      *v170 = v157;
      v170[1] = v159;
      v170[2] = v160;
      v170[3] = v163;
      v171 = (v168 + v73[7]);
      *v171 = v194;
      v171[1] = v158;
      v171[2] = v162;
      v171[3] = v161;
      v172 = v168 + v73[8];
      v173 = v204;
      *v172 = v195;
      *(v172 + 8) = v173;
      v174 = v201;
      *(v172 + 16) = *&v205;
      *(v172 + 24) = v174;
      *(v172 + 32) = 0;
      *(v168 + v73[9]) = v192 & 1;
      v175 = v168;
      v176 = v193;
      sub_218967C78(v175, v193);
      (*(v179 + 56))(v176, 0, 1, v73);
      v209 = v180;
      v210 = v181;

      sub_219BE2DE4();

      return (*(v196 + 8))(COERCE_DOUBLE(*&v121), v197);
    }

    else
    {
      (*(v196 + 8))(COERCE_DOUBLE(*&v206), v197);

      return sub_219068A48(v72, v198);
    }
  }

  else
  {
    v138 = *MEMORY[0x277D6E758];
    v139 = sub_219BE9834();
    (*(*(v139 - 8) + 104))(a3, v138, v139);
    result = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
    v141 = (a3 + result[5]);
    *v141 = 0;
    v141[1] = 0;
    v141[2] = 0;
    v141[3] = 0x4020000000000000;
    v142 = (a3 + result[6]);
    *v142 = 0u;
    v142[1] = 0u;
    v143 = (a3 + result[7]);
    *v143 = 0u;
    v143[1] = 0u;
    v144 = a3 + result[8];
    *v144 = 0u;
    *(v144 + 16) = 0u;
    *(v144 + 32) = 1;
    *(a3 + result[9]) = 0;
  }

  return result;
}

void sub_2190685C4()
{
  sub_219BE9834();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_2186F83B8(319, &qword_280EAEF70, &type metadata for SeeMoreButtonLayoutAttributes, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_219068724(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21906876C(uint64_t a1)
{
  sub_219068818(0, &qword_27CC156F8, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219068818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_21906887C(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    return 0.0;
  }

  sub_219068818(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = v2;
  v4 = sub_219130730();
  *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v4;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_21899E5A8(inited + 32);
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_219068724(&qword_280E8E118, type metadata accessor for Key);
  v7 = sub_219BF5204();

  v8 = [v5 initWithString:v6 attributes:v7];

  sub_219BF6B94();
  sub_219BF6784();
  v10 = v9;

  return v10;
}

uint64_t sub_219068A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219068AD4()
{
  result = sub_219BE8164();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TrendingMagazineFeedGroupConfigData()
{
  result = qword_280E9BFA0;
  if (!qword_280E9BFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219068BC0()
{
  result = sub_219BEF554();
  if (v1 <= 0x3F)
  {
    result = sub_219BF1934();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_219068C74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_219BEF554();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TrendingMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v49);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1934();
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D15B24();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219069800(0, &qword_280E8C888, MEMORY[0x277D844C8]);
  v54 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_219069748();
  v55 = v16;
  v18 = v56;
  sub_219BF7B34();
  if (!v18)
  {
    v19 = v12;
    v46 = v6;
    v47 = v9;
    v56 = v7;
    v20 = v50;
    v21 = v51;
    v23 = v52;
    v22 = v53;
    v63 = 5;
    sub_219BF7694();
    v45 = v24;
    v62 = 1;
    v44 = sub_219BF76A4();
    v61 = 2;
    v43 = sub_219BF76A4();
    v60 = 3;
    sub_218D15CF4(&unk_280E91390, MEMORY[0x277D32648]);
    sub_219BF76E4();
    v59 = 4;
    v42 = sub_219BF76A4();
    v58 = 6;
    sub_218D15CF4(&qword_280E90808, MEMORY[0x277D33478]);
    sub_219BF7734();
    v26 = v14;
    v27 = v45;
    v28 = v46;
    *v46 = 10;
    v29 = 0x343334312D49544CLL;
    if (v27)
    {
      v29 = 0;
    }

    v41 = v29;
    v30 = v19;
    if (v27)
    {
      v31 = v27;
    }

    else
    {
      v31 = 0xED00006E652D3134;
    }

    (*(v26 + 8))(v55, v54);
    v32 = &v28[*(v49 + 36)];
    *v32 = v41;
    v32[1] = v31;
    v33 = v43;
    v28[1] = v44 & 1;
    v28[2] = (v33 == 2) | v33 & 1;
    v34 = v21;
    v35 = v21[6];
    if (v35(v30, 1, v23) == 1)
    {
      v36 = v21[13];
      v37 = v20;
      v36(v20, *MEMORY[0x277D32628], v23);
      if (v35(v30, 1, v23) != 1)
      {
        sub_218D15BD0(v30);
      }
    }

    else
    {
      v38 = v21[4];
      v37 = v20;
      v38(v20, v30, v23);
    }

    v39 = v49;
    v40 = v46;
    (v34[4])(&v46[*(v49 + 28)], v37, v23);
    *(v40 + *(v39 + 32)) = v42 & 1;
    (*(v48 + 32))(v40 + *(v39 + 40), v47, v56);
    sub_21906979C(v40, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_2190692A0(void *a1)
{
  v3 = v1;
  sub_219069800(0, &qword_280E8C270, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219069748();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    v11[13] = 1;
    sub_219BF7804();
    v11[12] = 2;
    sub_219BF7804();
    type metadata accessor for TrendingMagazineFeedGroupConfigData();
    v11[11] = 3;
    sub_219BEF554();
    sub_218D15CF4(&qword_280E913A0, MEMORY[0x277D32648]);
    sub_219BF7834();
    v11[10] = 4;
    sub_219BF7804();
    v11[9] = 5;
    sub_219BF77F4();
    v11[8] = 6;
    sub_219BF1934();
    sub_218D15CF4(&qword_280E90810, MEMORY[0x277D33478]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219069588()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0xD000000000000017;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1684957547;
    }
  }

  else
  {
    v2 = 0x4C656C6369747261;
    if (v1 != 5)
    {
      v2 = 0x746E65746E6F63;
    }

    v3 = 0xD00000000000001BLL;
    if (v1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_219069678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21906997C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2190696A0(uint64_t a1)
{
  v2 = sub_219069748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190696DC(uint64_t a1)
{
  v2 = sub_219069748();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219069748()
{
  result = qword_280E9BFD8[0];
  if (!qword_280E9BFD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9BFD8);
  }

  return result;
}

uint64_t sub_21906979C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendingMagazineFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219069800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219069748();
    v7 = a3(a1, &type metadata for TrendingMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219069878()
{
  result = qword_27CC15710;
  if (!qword_27CC15710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15710);
  }

  return result;
}

unint64_t sub_2190698D0()
{
  result = qword_280E9BFC8;
  if (!qword_280E9BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9BFC8);
  }

  return result;
}

unint64_t sub_219069928()
{
  result = qword_280E9BFD0;
  if (!qword_280E9BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9BFD0);
  }

  return result;
}

uint64_t sub_21906997C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CD77A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CD7500 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CD77C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C656C6369747261 && a2 == 0xED00004449747369 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t type metadata accessor for SearchMoreFeedGroup()
{
  result = qword_27CC15760;
  if (!qword_27CC15760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_219069C88()
{
  result = qword_27CC15728;
  if (!qword_27CC15728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15728);
  }

  return result;
}

unint64_t sub_219069CE4()
{
  result = qword_27CC15730;
  if (!qword_27CC15730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15730);
  }

  return result;
}

unint64_t sub_219069D3C()
{
  result = qword_27CC15738;
  if (!qword_27CC15738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15738);
  }

  return result;
}

uint64_t sub_219069D90()
{
  v1 = type metadata accessor for TagsSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for RecipesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v0, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2189650B8(v12, v6, type metadata accessor for RecipesSearchMoreFeedGroup);
      v14 = *v6;

      v15 = v6;
      v16 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      sub_2189650B8(v12, v3, type metadata accessor for TagsSearchMoreFeedGroup);
      v14 = *v3;

      v15 = v3;
      v16 = type metadata accessor for TagsSearchMoreFeedGroup;
    }
  }

  else
  {
    sub_2189650B8(v12, v9, type metadata accessor for ArticlesSearchMoreFeedGroup);
    v14 = *v9;

    v15 = v9;
    v16 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  }

  sub_218965120(v15, v16);
  return v14;
}

uint64_t sub_219069FB8()
{
  v1 = v0;
  v2 = type metadata accessor for TagsSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecipesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2189650B8(v13, v7, type metadata accessor for RecipesSearchMoreFeedGroup);
      sub_219BED7A4();
      v15 = v7;
      v16 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      sub_2189650B8(v13, v4, type metadata accessor for TagsSearchMoreFeedGroup);
      sub_219BED7A4();
      v15 = v4;
      v16 = type metadata accessor for TagsSearchMoreFeedGroup;
    }
  }

  else
  {
    sub_2189650B8(v13, v10, type metadata accessor for ArticlesSearchMoreFeedGroup);
    sub_219BED7A4();
    v15 = v10;
    v16 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  }

  return sub_218965120(v15, v16);
}

uint64_t sub_21906A214(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = type metadata accessor for TagsSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecipesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v3, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = sub_2189650B8(v15, v9, type metadata accessor for RecipesSearchMoreFeedGroup);
      v18 = a1(v17);
      v19 = v9;
      v20 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      v22 = sub_2189650B8(v15, v6, type metadata accessor for TagsSearchMoreFeedGroup);
      v18 = a1(v22);
      v19 = v6;
      v20 = type metadata accessor for TagsSearchMoreFeedGroup;
    }
  }

  else
  {
    v21 = sub_2189650B8(v15, v12, type metadata accessor for ArticlesSearchMoreFeedGroup);
    v18 = a1(v21);
    v19 = v12;
    v20 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  }

  sub_218965120(v19, v20);
  return v18;
}

double sub_21906A480()
{
  v1 = v0;
  v2 = type metadata accessor for TagsSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecipesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2189650B8(v13, v7, type metadata accessor for RecipesSearchMoreFeedGroup);
      sub_219BED7B4();
      v16 = v15;
      v17 = v7;
      v18 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      sub_2189650B8(v13, v4, type metadata accessor for TagsSearchMoreFeedGroup);
      sub_219BED7B4();
      v16 = v20;
      v17 = v4;
      v18 = type metadata accessor for TagsSearchMoreFeedGroup;
    }
  }

  else
  {
    sub_2189650B8(v13, v10, type metadata accessor for ArticlesSearchMoreFeedGroup);
    sub_219BED7B4();
    v16 = v19;
    v17 = v10;
    v18 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  }

  sub_218965120(v17, v18);
  return v16;
}

uint64_t sub_21906A6E4()
{
  v1 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *&aArticlesrecipe[8 * EnumCaseMultiPayload];
  sub_218965120(v3, *(&off_282A5A040 + EnumCaseMultiPayload));
  return v5;
}

uint64_t sub_21906A7A4@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v4, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = EnumCaseMultiPayload;
  result = sub_218965120(v6, *(&off_282A5A058 + EnumCaseMultiPayload));
  *a1 = v8;
  return result;
}

uint64_t sub_21906A8E0(uint64_t a1)
{
  v2 = sub_21906AC1C(&qword_27CC0B320);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_21906A948()
{
  sub_21906AC1C(&qword_27CC15718);

  return sub_219BF1174();
}

uint64_t sub_21906A9BC(uint64_t a1)
{
  v2 = sub_21906AC1C(&qword_27CC15718);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21906AA14()
{
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = 0x73657069636552;
      v5 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      v5 = type metadata accessor for TagsSearchMoreFeedGroup;
      v6 = 1936154964;
    }
  }

  else
  {
    v6 = 0x73656C6369747241;
  }

  sub_218965120(v3, v5);
  return v6;
}

uint64_t sub_21906AB28()
{
  sub_21906AC1C(&qword_27CC15720);

  return sub_219BE2324();
}

uint64_t sub_21906AC1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchMoreFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21906AC60()
{
  sub_21906AD3C(319, &qword_27CC0D1E0, type metadata accessor for ArticlesSearchMoreFeedGroup);
  if (v0 <= 0x3F)
  {
    sub_21906AD3C(319, &qword_27CC0D1D8, type metadata accessor for RecipesSearchMoreFeedGroup);
    if (v1 <= 0x3F)
    {
      sub_21906AD3C(319, &qword_27CC0D1D0, type metadata accessor for TagsSearchMoreFeedGroup);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_21906AD3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21906ADA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v35);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BEF874();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218768134(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v29 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - v10;
  v28[1] = v28 - v10;
  v12 = sub_219BEF554();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDBD64();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  v20 = sub_219BDBD44();
  v31 = v21;
  v32 = v20;
  (*(v17 + 8))(v19, v16);
  if (a1 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = a1;
  }

  v30 = v22;
  v23 = *(v13 + 104);
  v23(v15, *MEMORY[0x277D32638], v12);
  v24 = sub_219BE3184();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v29, 1, 1, v24);
  (*(v5 + 104))(v33, *MEMORY[0x277D32750], v34);
  *v4 = 5;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 12) = 256;
  v26 = v35;
  v23(&v4[*(v35 + 32)], *MEMORY[0x277D32640], v12);
  *&v4[*(v26 + 36)] = 0;
  sub_21906C04C(&qword_280E98338, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData);
  sub_21906C04C(&qword_280E98340, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData);
  return sub_219BEDD34();
}

uint64_t type metadata accessor for MyMagazinesMagazineFeedGroupConfigData()
{
  result = qword_280E98328;
  if (!qword_280E98328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21906B294()
{
  sub_2186DEEEC(319, &qword_280E8F860, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_219BEF554();
    if (v1 <= 0x3F)
    {
      sub_2186D0AF8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21906B36C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_219BEF554();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218768134(0, &qword_280E91380, MEMORY[0x277D32648]);
  MEMORY[0x28223BE20](v9 - 8);
  v37 = &v28 - v10;
  sub_21906BFE8(0, &qword_280E8C788, MEMORY[0x277D844C8]);
  v12 = v11;
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21906BF30();
  v15 = v38;
  sub_219BF7B34();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v32 = a1;
  v38 = v5;
  LOBYTE(v39) = 1;
  sub_219BF7674();
  v29 = v41;
  v30 = v40;
  LOBYTE(v39) = 2;
  sub_219BF7674();
  v42 = v45;
  LOBYTE(v39) = 3;
  sub_219BF7674();
  v17 = v44;
  LOBYTE(v39) = 4;
  sub_21906C04C(&unk_280E91390, MEMORY[0x277D32648]);
  v18 = v37;
  v19 = v35;
  sub_219BF7674();
  sub_2186DEEEC(0, &qword_280E8EE20, MEMORY[0x277D83940]);
  v43 = 5;
  sub_218753294(&qword_280E8EDD0);
  sub_219BF7674();
  (*(v33 + 8))(v14, v12);
  v33 = v39;
  *v8 = 5;
  v20 = v29;
  *(v8 + 1) = v30;
  *(v8 + 2) = v20;
  v8[24] = v42 & 1;
  v8[25] = (v17 == 2) | v17 & 1;
  v21 = v34;
  v22 = *(v34 + 48);
  if (v22(v18, 1, v19) == 1)
  {
    v23 = v38;
    (*(v21 + 104))(v38, *MEMORY[0x277D32640], v19);
    v24 = v22(v37, 1, v19);
    v25 = v23;
    v26 = v36;
    v27 = v32;
    if (v24 != 1)
    {
      sub_218D15BD0(v37);
    }
  }

  else
  {
    v25 = v38;
    (*(v21 + 32))(v38, v37, v19);
    v26 = v36;
    v27 = v32;
  }

  (*(v21 + 32))(&v8[*(v6 + 32)], v25, v19);
  *&v8[*(v6 + 36)] = v33;
  sub_21906BF84(v8, v26);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_21906B888(void *a1)
{
  v3 = v1;
  sub_21906BFE8(0, &qword_280E8C1F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21906BF30();
  sub_219BF7B44();
  LOBYTE(v12) = *v3;
  v13 = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = 1;
    sub_2186DEEEC(0, &qword_280E8F860, MEMORY[0x277D83D88]);
    sub_21897A7C0();
    sub_219BF7834();
    LOBYTE(v12) = 2;
    sub_219BF7804();
    LOBYTE(v12) = 3;
    sub_219BF7804();
    v10 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData();
    LOBYTE(v12) = 4;
    sub_219BEF554();
    sub_21906C04C(&qword_280E913A0, MEMORY[0x277D32648]);
    sub_219BF7834();
    *&v12 = *(v3 + *(v10 + 36));
    v13 = 5;
    sub_2186D0AF8();
    sub_21906C094();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21906BB80()
{
  sub_219BF5524();
}

uint64_t sub_21906BC8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21906C248();
  *a1 = result;
  return result;
}

uint64_t sub_21906BCBC@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x8000000219CD7500;
  v6 = 0x8000000219CD77C0;
  result = 10;
  v8 = 0xD00000000000001BLL;
  if (v2 == 4)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v6 = 0x8000000219CD7220;
  }

  if (v2 == 3)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v5 = v6;
  }

  v9 = 0xED0000656C746974;
  v10 = 0x62755370756F7267;
  if (v2 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x8000000219CD77A0;
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
    v11 = v8;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
  return result;
}

unint64_t sub_21906BD90()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD00000000000001BLL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000016;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000017;
  }

  v4 = 0x62755370756F7267;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_21906BE60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21906C248();
  *a1 = result;
  return result;
}

uint64_t sub_21906BE88(uint64_t a1)
{
  v2 = sub_21906BF30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21906BEC4(uint64_t a1)
{
  v2 = sub_21906BF30();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21906BF30()
{
  result = qword_280E98358;
  if (!qword_280E98358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98358);
  }

  return result;
}

uint64_t sub_21906BF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21906BFE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21906BF30();
    v7 = a3(a1, &type metadata for MyMagazinesMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21906C04C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21906C094()
{
  result = qword_280E8EDA0;
  if (!qword_280E8EDA0)
  {
    sub_2186D0AF8();
    sub_218753294(&unk_280E8EE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EDA0);
  }

  return result;
}

unint64_t sub_21906C144()
{
  result = qword_27CC15770;
  if (!qword_27CC15770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15770);
  }

  return result;
}

unint64_t sub_21906C19C()
{
  result = qword_280E98348;
  if (!qword_280E98348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98348);
  }

  return result;
}

unint64_t sub_21906C1F4()
{
  result = qword_280E98350;
  if (!qword_280E98350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98350);
  }

  return result;
}

uint64_t sub_21906C248()
{
  v0 = sub_219BF7614();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21906C294()
{
  sub_21896FA3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = *(v0 + 24);
  v9 = sub_219BDFA44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = v8;
  sub_2187B14CC(v28, &v23, &unk_280EE7DB0, &qword_280EE7DC0);
  if (*(&v24 + 1))
  {
    sub_21875F93C(&v23, v25);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2187448D0(&v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
  }

  v22[1] = 0xF000000000000040;
  v24 = 0u;
  v23 = 0u;
  sub_2189B4E2C(v7, v5);
  sub_2187B14CC(v30, v25, &qword_280EE33A0, &qword_280EE33B0);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_2189B4EAC(v5, v16 + v13);
  v17 = v16 + v14;
  v18 = v25[1];
  *v17 = v25[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  v19 = (v16 + v15);
  v20 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  *v20 = v11;
  v20[1] = v10;
  v20[2] = v12;

  sub_2188202A8(v10);
  sub_2186CF94C();
  sub_21906C8B8(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v10);
  sub_2187448D0(v28, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v30, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_2187448D0(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

uint64_t sub_21906C8B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21906C900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v2 + 16) possiblyUnfetchedAppConfiguration];
  if (([v8 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v9 = [v8 offlineDownloadsConfig];
  swift_unknownObjectRelease();
  v43 = v9;
  sub_2187381BC(0, &qword_280E8DC00, &qword_280E8DC08, 0x277D31188, MEMORY[0x277D83D88]);
  sub_219BF6F84();

  v10 = v42;
  if (!v42)
  {
LABEL_11:
    if (qword_27CC08680 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for OfflineFeedGroupProcessorResult();
    v40 = __swift_project_value_buffer(v39, qword_27CCD8CA8);
    return sub_21906CD84(v40, a2);
  }

  v43 = MEMORY[0x277D84F90];
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 40))(v11, v12);
  v14 = v10;
  v15 = sub_21906CDE8(v13, v14, MEMORY[0x277D30B20]);

  sub_2191EF6DC(v15);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 56))(v16, v17);
  v19 = v14;
  v20 = sub_21906D17C(v18, v19, MEMORY[0x277D30B28]);

  sub_2191EF6DC(v20);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = (*(v22 + 64))(v21, v22);
  v24 = v19;
  v25 = sub_21906CDE8(v23, v24, MEMORY[0x277D30B30]);

  sub_2191EF6DC(v25);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v28 = (*(v27 + 72))(v26, v27);
  v29 = v24;
  v30 = sub_21906D17C(v28, v29, MEMORY[0x277D30B38]);

  sub_2191EF6DC(v30);
  v31 = v43;
  if (v43 >> 62)
  {
    v32 = sub_219BF7214();
  }

  else
  {
    v32 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = MEMORY[0x277D84F90];
  if (!v32)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_15:
    OfflineFeedManifest.init(_:)(v38, v7);

    sub_2187538EC(v7, a2);
    result = type metadata accessor for OfflineFeedGroupProcessorResult();
    *(a2 + *(result + 20)) = v33;
    *(a2 + *(result + 24)) = v31;
    return result;
  }

  v42 = MEMORY[0x277D84F90];
  result = sub_219BF73F4();
  if ((v32 & 0x8000000000000000) == 0)
  {
    v35 = (v31 + 32);
    do
    {
      v36 = *v35++;
      v37 = [v36 contentManifest];
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      --v32;
    }

    while (v32);
    v38 = v42;
    v33 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_21906CD84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineFeedGroupProcessorResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21906CDE8(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v5 = 0;
    v32 = v3 & 0xFFFFFFFFFFFFFF8;
    v33 = v3 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v31 = v3 + 32;
    v29 = i;
    v30 = v3;
    while (v33)
    {
      v7 = MEMORY[0x21CECE0F0](v5, v3);
      v8 = __OFADD__(v5, 1);
      v9 = v5 + 1;
      if (v8)
      {
        goto LABEL_39;
      }

LABEL_9:
      v10 = a3(v7, a2);
      sub_2186C6148(0, &qword_280E8E770);
      v11 = sub_219BF5924();
      swift_unknownObjectRelease();

      v12 = v11 >> 62;
      if (v11 >> 62)
      {
        v13 = sub_219BF7214();
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v6 >> 62;
      if (v6 >> 62)
      {
        v15 = sub_219BF7214();
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = v13;
      v8 = __OFADD__(v15, v13);
      v16 = v15 + v13;
      if (v8)
      {
        goto LABEL_41;
      }

      v36 = v9;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v14)
        {
          v17 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_219BF7214();
        goto LABEL_20;
      }

      if (v14)
      {
        goto LABEL_19;
      }

LABEL_20:
      v6 = sub_219BF7364();
      v17 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v37 = v6;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v12)
      {
        v20 = sub_219BF7214();
        if (v20)
        {
LABEL_25:
          if (((v19 >> 1) - v18) < v39)
          {
            goto LABEL_43;
          }

          v21 = v17 + 8 * v18 + 32;
          if (v12)
          {
            if (v20 < 1)
            {
              goto LABEL_45;
            }

            sub_2187381BC(0, &qword_280E8ED48, &qword_280E8E770, 0x277D30E08, MEMORY[0x277D83940]);
            sub_21906D500();
            for (j = 0; j != v20; ++j)
            {
              v23 = sub_218A353D0(v38, j, v11);
              v25 = *v24;
              (v23)(v38, 0);
              *(v21 + 8 * j) = v25;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          i = v29;
          v3 = v30;
          v6 = v37;
          if (v39 >= 1)
          {
            v26 = *(v17 + 16);
            v8 = __OFADD__(v26, v39);
            v27 = v26 + v39;
            if (v8)
            {
              goto LABEL_44;
            }

            *(v17 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          goto LABEL_25;
        }
      }

      v6 = v37;
      if (v39 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      v5 = v36;
      if (v36 == i)
      {
        return v6;
      }
    }

    if (v5 >= *(v32 + 16))
    {
      goto LABEL_40;
    }

    v7 = *(v31 + 8 * v5);
    swift_unknownObjectRetain();
    v8 = __OFADD__(v5, 1);
    v9 = v5 + 1;
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_21906D17C(unint64_t a1, uint64_t a2, uint64_t (*a3)(id, uint64_t))
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v5 = 0;
    v33 = v3 & 0xFFFFFFFFFFFFFF8;
    v34 = v3 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v32 = v3 + 32;
    v30 = i;
    v31 = v3;
    while (1)
    {
      if (v34)
      {
        v7 = MEMORY[0x21CECE0F0](v5, v3);
      }

      else
      {
        if (v5 >= *(v33 + 16))
        {
          goto LABEL_39;
        }

        v7 = *(v32 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        break;
      }

      v11 = a3(v7, a2);
      sub_2186C6148(0, &qword_280E8E770);
      v12 = sub_219BF5924();

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = sub_219BF7214();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v6 >> 62;
      if (v6 >> 62)
      {
        v16 = sub_219BF7214();
      }

      else
      {
        v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v14;
      v9 = __OFADD__(v16, v14);
      v17 = v16 + v14;
      if (v9)
      {
        goto LABEL_40;
      }

      v37 = v10;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          v18 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v17 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_219BF7214();
        goto LABEL_21;
      }

      if (v15)
      {
        goto LABEL_20;
      }

LABEL_21:
      v6 = sub_219BF7364();
      v18 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v38 = v6;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v21 = sub_219BF7214();
        if (v21)
        {
LABEL_26:
          if (((v20 >> 1) - v19) < v40)
          {
            goto LABEL_42;
          }

          v22 = v18 + 8 * v19 + 32;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_44;
            }

            sub_2187381BC(0, &qword_280E8ED48, &qword_280E8E770, 0x277D30E08, MEMORY[0x277D83940]);
            sub_21906D500();
            for (j = 0; j != v21; ++j)
            {
              v24 = sub_218A353D0(v39, j, v12);
              v26 = *v25;
              (v24)(v39, 0);
              *(v22 + 8 * j) = v26;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          i = v30;
          v3 = v31;
          v6 = v38;
          if (v40 >= 1)
          {
            v27 = *(v18 + 16);
            v9 = __OFADD__(v27, v40);
            v28 = v27 + v40;
            if (v9)
            {
              goto LABEL_43;
            }

            *(v18 + 16) = v28;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_26;
        }
      }

      v6 = v38;
      if (v40 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v5 = v37;
      if (v37 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_21906D500()
{
  result = qword_280E8ED30;
  if (!qword_280E8ED30)
  {
    sub_2187381BC(255, &qword_280E8ED48, &qword_280E8E770, 0x277D30E08, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8ED30);
  }

  return result;
}

uint64_t sub_21906D5A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_21906D5E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_21906D640(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3 <= 1)
  {
    v5 = *(v1 + 16);
    if (*(v1 + 32))
    {
      v5 = sub_21906E0D0(*(v1 + 16));
      v4 = v18;
      goto LABEL_11;
    }

    v4 = *(v1 + 24);
LABEL_7:

LABEL_11:
    v10 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_13;
  }

  v5 = *v1;
  v4 = *(v1 + 8);
  if (v3 != 2)
  {
    if (v3 == 3)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v8 = 0xE000000000000000;
      v5 = sub_219BDB5E4();
      v4 = v9;

      v10 = 0;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v11 = MEMORY[0x277D83B88];
  v5 = sub_219BF7894();
  v13 = v12;
  type metadata accessor for Localized();
  v14 = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  if (v4 >= 2)
  {
    sub_2186F20D4();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09BA0;
    v17 = MEMORY[0x277D83C10];
    *(v16 + 56) = v11;
    *(v16 + 64) = v17;
    *(v16 + 32) = v4;
    sub_219BF5454();
  }

  v10 = sub_219BF54E4();
  v8 = v19;

  v4 = v13;
LABEL_13:
  *a1 = v5;
  a1[1] = v4;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = v10;
  a1[5] = v8;
}

uint64_t sub_21906D910()
{
  v1 = *(v0 + 32);
  if (v1 <= 1)
  {
    if (*(v0 + 32))
    {
      return 0x697A6167614D796DLL;
    }

    else
    {
      return 0x69726F6765746163;
    }
  }

  else if (v1 == 2)
  {
    v3 = sub_219BF7894();
    MEMORY[0x21CECC330](v3);

    return 0x3A3A7372616579;
  }

  else if (v1 == 3)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    v4 = *v0;

    return v4;
  }
}

uint64_t sub_21906DA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_21906DD64(v5, v7) & 1;
}

uint64_t sub_21906DAA8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  if (v2 <= 1)
  {
    if ((v1 - 1) >= 4)
    {
      return sub_219BF5544();
    }
  }

  else
  {
    v3 = v2 != 2 && v2 == 3;
    if (v3 && (v1 - 1) >= 4)
    {
      return sub_219BF5544();
    }
  }

  return 0;
}

uint64_t sub_21906DB24@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_21906DB94()
{
  if (*(v0 + 32) < 4u)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_21906DBDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_21941838C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 4)
  {
    if (v5 != 4)
    {
      return 0;
    }
  }

  else if (v5 == 4 || (sub_21908A55C(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_219BF78F4();
}

BOOL sub_21906DCB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_21941838C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 != 4)
  {
    if (v4 == 4 || (sub_21908A55C(v2, v4) & 1) == 0)
    {
      return 0;
    }

    return v3 == v5;
  }

  if (v4 == 4)
  {
    return v3 == v5;
  }

  return 0;
}

uint64_t sub_21906DD64(uint64_t a1, uint64_t *a2)
{
  result = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  if (v5 <= 1)
  {
    v15 = *(a1 + 16);
    if (*(a1 + 32))
    {
      if (*(a2 + 32) != 1)
      {
        return 0;
      }

      v26 = *a2;
      v27 = *(result + 16);
      if (v27 != *(*a2 + 16))
      {
        return 0;
      }

      v28 = *(a2 + 8);
      v29 = a2[2];
      if (v27)
      {
        v30 = v26 == result;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v31 = (result + 32);
        v32 = (v26 + 32);
        while (v27)
        {
          v33 = *v31;
          v34 = *v32;

          v35 = sub_21941805C(v33, v34);

          if ((v35 & 1) == 0)
          {
            return 0;
          }

          ++v31;
          ++v32;
          if (!--v27)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_68;
      }

LABEL_49:
      if (v4 == 4)
      {
        if (v28 != 4)
        {
          return 0;
        }
      }

      else if (v28 == 4 || (sub_21908A55C(v4, v28) & 1) == 0)
      {
        return 0;
      }

      return v15 == v29;
    }

    if (*(a2 + 32))
    {
      return 0;
    }

    v16 = *a2;
    v17 = *(result + 16);
    if (v17 != *(*a2 + 16))
    {
      return 0;
    }

    v18 = *(a2 + 8);
    v19 = a2[2];
    v36 = a2[3];
    v37 = *(a1 + 24);
    if (v17)
    {
      v20 = v16 == result;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v21 = (result + 32);
      v22 = (v16 + 32);
      while (v17)
      {
        v23 = *v21;
        v24 = *v22;

        v25 = sub_21941805C(v23, v24);

        if ((v25 & 1) == 0)
        {
          return 0;
        }

        ++v21;
        ++v22;
        if (!--v17)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_69;
    }

LABEL_28:
    if (v4 == 4)
    {
      if (v18 != 4)
      {
        return 0;
      }
    }

    else if (v18 == 4 || (sub_21908A55C(v4, v18) & 1) == 0)
    {
      return 0;
    }

    if (v15 == v19 && v37 == v36)
    {
      return 1;
    }

LABEL_52:

    return sub_219BF78F4();
  }

  if (v5 != 2)
  {
    if (v5 == 3)
    {
      if (*(a2 + 32) == 3)
      {
        v6 = *a2;
        v7 = *(result + 16);
        if (v7 == *(*a2 + 16))
        {
          v8 = *(a2 + 8);
          if (v7)
          {
            v9 = v6 == result;
          }

          else
          {
            v9 = 1;
          }

          if (!v9)
          {
            v10 = (result + 32);
            v11 = (v6 + 32);
            while (v7)
            {
              v12 = *v10;
              v13 = *v11;

              v14 = sub_21941805C(v12, v13);

              if ((v14 & 1) == 0)
              {
                return 0;
              }

              ++v10;
              ++v11;
              if (!--v7)
              {
                goto LABEL_14;
              }
            }

            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            return result;
          }

LABEL_14:
          if (v4 == 4)
          {
            if (v8 == 4)
            {
              return 1;
            }
          }

          else if (v8 != 4 && (sub_21908A55C(v4, v8) & 1) != 0)
          {
            return 1;
          }
        }
      }

      return 0;
    }

    if (*(a2 + 32) != 4)
    {
      return 0;
    }

    if (result == *a2 && v4 == a2[1])
    {
      return 1;
    }

    goto LABEL_52;
  }

  if (*(a2 + 32) != 2)
  {
    return 0;
  }

  return result == *a2 && a2[1] == v4;
}

uint64_t sub_21906E0D0(uint64_t a1)
{
  if (a1 < 1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_219BDB5E4();

    return v11;
  }

  else
  {
    type metadata accessor for Localized();
    v2 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2186F20D4();
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D83B88];
    *(v4 + 16) = xmmword_219C09BA0;
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = a1;
    v7 = sub_219BF5454();

    return v7;
  }
}

uint64_t sub_21906E2FC(uint64_t a1)
{
  v2 = sub_21906E754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21906E338(uint64_t a1)
{
  v2 = sub_21906E754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21906E374@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21906E7A8(0, &qword_27CC15798, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21906E754();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_219BF76F4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_21906E500(void *a1)
{
  sub_21906E7A8(0, &unk_27CC157A0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21906E754();
  sub_219BF7B44();
  sub_219BF77F4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21906E650()
{
  result = qword_27CC15778;
  if (!qword_27CC15778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15778);
  }

  return result;
}

unint64_t sub_21906E6A8()
{
  result = qword_27CC15780;
  if (!qword_27CC15780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15780);
  }

  return result;
}

unint64_t sub_21906E700()
{
  result = qword_27CC15788;
  if (!qword_27CC15788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15788);
  }

  return result;
}

unint64_t sub_21906E754()
{
  result = qword_27CC15790;
  if (!qword_27CC15790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15790);
  }

  return result;
}

void sub_21906E7A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21906E754();
    v7 = a3(a1, &type metadata for IssueSearchResultItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for MyMagazinesBuildBlueprintModifier()
{
  result = qword_27CC157B0;
  if (!qword_27CC157B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21906E880()
{
  sub_21907060C(319, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  if (v0 <= 0x3F)
  {
    sub_2186C709C(319, qword_280ECA990);
    if (v1 <= 0x3F)
    {
      sub_218B7A520();
      if (v2 <= 0x3F)
      {
        sub_2186C709C(319, qword_280EC41D0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21906E98C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v79 = a2;
  v78 = a3;
  v75 = a1;
  v3 = sub_219BE6DF4();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219070278(0, &unk_27CC157E0, MEMORY[0x277D6DF88]);
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v59 - v6;
  sub_219070258(0);
  v8 = v7;
  v73 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7E0BC(0);
  v12 = v11;
  v66 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = &v59 - v15;
  sub_21907060C(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v63 = &v59 - v17;
  v62 = type metadata accessor for MyMagazinesIssue(0);
  v65 = *(v62 - 1);
  v18 = MEMORY[0x28223BE20](v62);
  v20 = (&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v59 = (&v59 - v21);
  v64 = type metadata accessor for MyMagazinesState(0);
  MEMORY[0x28223BE20](v64);
  v68 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21907060C(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - v26;
  sub_219070338();
  v29 = *(v28 - 8);
  v81 = v28;
  v82 = v29;
  v30 = MEMORY[0x28223BE20](v28);
  v72 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v59 - v32;
  v34 = sub_218B7E0BC;
  v35 = sub_219070758(&qword_27CC15808, sub_218B7E0BC);
  v36 = sub_219070758(&qword_27CC15810, sub_218B7E0BC);
  v83 = v33;
  v67 = v12;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v12, v35, v36);
  (*(v25 + 16))(v27, v80, v24);
  v37 = (*(v25 + 88))(v27, v24);
  if (v37 == *MEMORY[0x277D6C9F0])
  {
    (*(v25 + 8))(v27, v24);
    v38 = v81;
    goto LABEL_15;
  }

  if (v37 != *MEMORY[0x277D6C9E8])
  {
    v38 = v81;
    if (v37 == *MEMORY[0x277D6C9E0])
    {
      goto LABEL_15;
    }

    sub_219BF7514();
    __break(1u);
    goto LABEL_8;
  }

  (*(v25 + 96))(v27, v24);
  v24 = v68;
  sub_2190704B8(v27, v68, type metadata accessor for MyMagazinesState);
  v33 = v63;
  sub_218C00858(v24, v63);
  v34 = v65;
  if ((*(v65 + 48))(v33, 1, v62) != 1)
  {
LABEL_8:
    v62 = type metadata accessor for MyMagazinesIssue;
    v39 = v33;
    v40 = v59;
    sub_2190704B8(v39, v59, type metadata accessor for MyMagazinesIssue);
    sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_219C146A0;
    v42 = *v40;
    *(v41 + 32) = *v40;
    v43 = v42;
    v44 = v60;
    sub_21906F580(0, v41, v60);

    v38 = v81;
    sub_219BE2404();
    (*(v66 + 8))(v44, v67);
    sub_219070458(v40, v62);
    goto LABEL_9;
  }

  sub_2190706F8(v33, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88], sub_21907060C);
  v38 = v81;
LABEL_9:
  v45 = *(v24 + *(v64 + 20));
  v46 = *(v45 + 16);
  if (v46)
  {
    v84 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v47 = v45 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v48 = *(v34 + 9);
    do
    {
      sub_218C007F4(v47, v20);
      v49 = *v20;
      sub_219070458(v20, type metadata accessor for MyMagazinesIssue);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v47 += v48;
      --v46;
    }

    while (v46);
    v50 = v61;
    sub_21906F580(1, v84, v61);

    sub_219BE2404();
    (*(v66 + 8))(v50, v67);
    v51 = v68;
  }

  else
  {
    v51 = v24;
  }

  sub_219070458(v51, type metadata accessor for MyMagazinesState);
LABEL_15:
  (*(v82 + 16))(v72, v83, v38);
  type metadata accessor for MyMagazinesModel();
  sub_218B7DFD4();
  sub_219070758(&qword_27CC0B160, type metadata accessor for MyMagazinesModel);
  sub_219BEB2D4();
  sub_219070758(&qword_27CC15818, sub_219070258);
  sub_219BF5DF4();
  sub_219BF5E84();
  v52 = sub_219BF5E74();
  sub_219BF5DF4();
  sub_219BF5E84();
  if (v52 == sub_219BF5E74())
  {
    v54 = v69;
    v53 = v70;
    v55 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x277D6D868], v71);
    sub_219070404();
    v56 = v74;
    sub_219BE85E4();
    v57 = v54;
    v38 = v81;
    (*(v53 + 8))(v57, v55);
  }

  else
  {
    v56 = v74;
    sub_219BE85C4();
  }

  v79(v56);
  (*(v76 + 8))(v56, v77);
  (*(v73 + 8))(v10, v8);
  return (*(v82 + 8))(v83, v38);
}

uint64_t sub_21906F580@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  sub_219070520();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_219BF0744();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MyMagazinesBuildBlueprintModifier();
  v12 = *(v3 + *(v11 + 28) + 8);
  ObjectType = swift_getObjectType();
  (*(v12 + 56))(ObjectType, v12);
  sub_219BE2184();

  v14 = v26;
  sub_21906F854(v3);
  LOBYTE(v26) = a1;
  __swift_project_boxed_opaque_existential_1((v3 + *(v11 + 20)), *(v3 + *(v11 + 20) + 24));
  v15 = sub_21945CCB8(a2);
  v24 = v14;
  v25 = v10;
  v16 = sub_21894A040(sub_2190705EC, v23, v15);

  sub_218953F20();
  v18 = v17;
  v19 = sub_219070758(&qword_27CC15840, sub_218953F20);
  v20 = sub_219070758(&qword_27CC15848, sub_218953F20);
  MEMORY[0x21CEB9170](v16, v18, v19, v20);
  type metadata accessor for MyMagazinesModel();
  sub_218B7DFD4();
  sub_219070758(&qword_27CC0B160, type metadata accessor for MyMagazinesModel);
  sub_219BE6924();
  return (*(v8 + 8))(v10, v7);
}

void sub_21906F854(uint64_t a1)
{
  v2 = sub_219BF0744();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = MEMORY[0x277D32F30];
  sub_21907060C(0, &qword_27CC15870, MEMORY[0x277D32F30], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  sub_219BF0734();
  sub_219BF06F4();
  *&v23 = v10;
  sub_219070758(&qword_280E90EB8, MEMORY[0x277D32F30]);
  sub_21907060C(0, &qword_280E8EF08, v9, MEMORY[0x277D83940]);
  sub_219070670();
  sub_219BF7164();
  v11 = [*(a1 + *(type metadata accessor for MyMagazinesBuildBlueprintModifier() + 24)) cachedSubscription];
  if (objc_getAssociatedObject(v11, v11 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  v12 = MEMORY[0x277D84F70];
  if (!*(&v22 + 1))
  {
    sub_2190706F8(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2189D2C8C);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v13 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v13 = v20;
  v14 = [v20 integerValue];
  if (v14 == -1)
  {

    goto LABEL_21;
  }

  v15 = v14;
LABEL_10:
  if (objc_getAssociatedObject(v11, ~v15))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (*(&v22 + 1))
  {
    sub_21870AD58();
    if (swift_dynamicCast())
    {
      v16 = v20;
      v17 = [v16 integerValue];

      if (((v17 ^ v15) & 1) == 0)
      {
        return;
      }

LABEL_21:
      sub_219BF06E4();
      sub_21922153C(v8, v6);
      v18 = *(v3 + 8);
      v18(v6, v2);
      v18(v8, v2);
      return;
    }
  }

  else
  {
    sub_2190706F8(&v23, &qword_280E8B4F0, v12 + 8, MEMORY[0x277D83D88], sub_2189D2C8C);
  }

  if (v15)
  {
    goto LABEL_21;
  }
}

uint64_t sub_21906FC8C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MyMagazinesModel();
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_219BF0744();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v17 = *a1;
  *&v17[9] = *(a1 + 9);
  sub_21906FED4(a2, *v17, a3, v12);
  sub_218B7E1D0();
  v14 = *(v13 + 48);
  *v8 = *v17;
  *(v8 + 9) = *&v17[9];
  (*(v10 + 16))(v8 + v14, v12, v9);
  sub_218950CAC(v17, v16);
  sub_219070758(&qword_27CC0B160, type metadata accessor for MyMagazinesModel);
  sub_219BE5FB4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21906FED4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = sub_219BF0744();
  v21 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = [a2 identifier];
  v15 = sub_219BF5414();
  v17 = v16;

  LOBYTE(a1) = sub_2188537B8(v15, v17, a1);

  if (a1)
  {
    sub_219BF06D4();
    v18 = MEMORY[0x277D32F30];
    sub_219070758(&qword_27CC0EA10, MEMORY[0x277D32F30]);
    sub_219BF5874();
    sub_219070758(&unk_27CC15860, v18);
    sub_219BF7C64();
    (*(v21 + 16))(v11, v13, v8);
    sub_219070758(&qword_280E90EB8, v18);
    sub_219BF7144();
    return (*(v21 + 8))(v13, v8);
  }

  else
  {
    v20 = *(v21 + 16);

    return v20(a4, a3, v8);
  }
}