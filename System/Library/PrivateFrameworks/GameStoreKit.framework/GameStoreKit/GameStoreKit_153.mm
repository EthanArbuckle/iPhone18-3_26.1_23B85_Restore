uint64_t sub_24F5DC91C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5DC98C()
{
  v1 = type metadata accessor for IndexedSectionListPageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for Page(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = v0 + v3;
  sub_24E74C370(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));
  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 24);
  sub_24E83C01C(*(v8 + 64), *(v8 + 72));
  v9 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F923E98();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v8 + v1[16]);

  v11 = v1[19];
  v12 = sub_24F929158();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);

  v13 = v8 + v1[24];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);

  v15 = v0 + v7;
  v16 = sub_24F92A708();
  (*(*(v16 - 8) + 8))(v0 + v7, v16);

  v17 = v5[6];
  v18 = sub_24F928818();
  (*(*(v18 - 8) + 8))(v0 + v7 + v17, v18);

  v19 = v0 + v7 + v5[20];
  v20 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v20 - 1) + 48))(v19, 1, v20))
  {
    goto LABEL_58;
  }

  v21 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v22 = (*(v21 - 1) + 48);
  v118 = *v22;
  if (!(*v22)(v19, 1, v21))
  {

    v23 = v19 + v21[5];
    v24 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24))
    {
      goto LABEL_7;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v94 = sub_24F9289E8();
          (*(*(v94 - 8) + 8))(v23, v94);
          goto LABEL_7;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_7:
          v25 = v19 + v21[7];
          v26 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v28 = sub_24F928388();
              (*(*(v28 - 8) + 8))(v25, v28);
            }
          }

          v29 = v19 + v21[10];
          if (*(v29 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v29);
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v82 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v83 = type metadata accessor for JSColor();
        if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
        {
          v84 = sub_24F928388();
          (*(*(v84 - 8) + 8))(v82, v84);
        }

        goto LABEL_7;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v91 = sub_24F9289E8();
        v92 = *(v91 - 8);
        if (!(*(v92 + 48))(v23, 1, v91))
        {
          (*(v92 + 8))(v23, v91);
        }

        if (*(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_7;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_7;
  }

LABEL_18:
  v30 = v19 + v20[5];
  if (v118(v30, 1, v21))
  {
    goto LABEL_35;
  }

  v31 = v30 + v21[5];
  v32 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    goto LABEL_20;
  }

  v35 = swift_getEnumCaseMultiPayload();
  if (v35 <= 2)
  {
    if (!v35)
    {

      v85 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v86 = type metadata accessor for JSColor();
      if (!(*(*(v86 - 8) + 48))(v85, 1, v86))
      {
        v87 = sub_24F928388();
        (*(*(v87 - 8) + 8))(v85, v87);
      }

      goto LABEL_20;
    }

    if (v35 == 1)
    {
      v93 = sub_24F9289E8();
      v117 = *(v93 - 8);
      if (!(*(v117 + 48))(v31, 1, v93))
      {
        (*(v117 + 8))(v31, v93);
      }

      if (*(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_20;
    }

    if (v35 != 2)
    {
      goto LABEL_20;
    }

LABEL_48:

    goto LABEL_20;
  }

  switch(v35)
  {
    case 3:
      goto LABEL_48;
    case 4:
      v96 = sub_24F9289E8();
      (*(*(v96 - 8) + 8))(v31, v96);
      break;
    case 5:
      goto LABEL_48;
  }

LABEL_20:
  v33 = v30 + v21[7];
  v34 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v36 = sub_24F928388();
      (*(*(v36 - 8) + 8))(v33, v36);
    }
  }

  v37 = v30 + v21[10];
  if (*(v37 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

LABEL_35:
  v38 = v19 + v20[6];
  if (v118(v38, 1, v21))
  {
    goto LABEL_52;
  }

  v39 = v38 + v21[5];
  v40 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    goto LABEL_37;
  }

  v43 = swift_getEnumCaseMultiPayload();
  if (v43 <= 2)
  {
    if (!v43)
    {

      v88 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v89 = type metadata accessor for JSColor();
      if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
      {
        v90 = sub_24F928388();
        (*(*(v90 - 8) + 8))(v88, v90);
      }

      goto LABEL_37;
    }

    if (v43 == 1)
    {
      v95 = sub_24F9289E8();
      v119 = *(v95 - 8);
      if (!(*(v119 + 48))(v39, 1, v95))
      {
        (*(v119 + 8))(v39, v95);
      }

      if (*(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_37;
    }

    if (v43 != 2)
    {
      goto LABEL_37;
    }

LABEL_107:

    goto LABEL_37;
  }

  switch(v43)
  {
    case 3:
      goto LABEL_107;
    case 4:
      v97 = sub_24F9289E8();
      (*(*(v97 - 8) + 8))(v39, v97);
      break;
    case 5:
      goto LABEL_107;
  }

LABEL_37:
  v41 = v38 + v21[7];
  v42 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v44 = sub_24F928388();
      (*(*(v44 - 8) + 8))(v41, v44);
    }
  }

  v45 = v38 + v21[10];
  if (*(v45 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

LABEL_52:
  v46 = v19 + v20[7];
  if (*(v46 + 56) == 1)
  {
  }

  else if (!*(v46 + 56))
  {

    if (*(v46 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v46 + 16);
    }
  }

  v47 = v19 + v20[8];
  v48 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
  {
    v62 = swift_getEnumCaseMultiPayload();
    if (v62 == 2)
    {
      goto LABEL_148;
    }

    if (v62 != 1)
    {
      if (v62)
      {
        goto LABEL_58;
      }

      v63 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v63 - 8) + 48))(v47, 1, v63))
      {
        goto LABEL_58;
      }

      v64 = swift_getEnumCaseMultiPayload();
      if (v64 > 2)
      {
        if (v64 != 3)
        {
          if (v64 == 4)
          {
            v116 = sub_24F9289E8();
            (*(*(v116 - 8) + 8))(v47, v116);
            goto LABEL_58;
          }

          if (v64 != 5)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_148;
      }

      if (v64)
      {
        if (v64 == 1)
        {
          v114 = sub_24F9289E8();
          v115 = *(v114 - 8);
          if (!(*(v115 + 48))(v47, 1, v114))
          {
            (*(v115 + 8))(v47, v114);
          }

          if (!*(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_58;
          }
        }

        else if (v64 != 2)
        {
          goto LABEL_58;
        }

LABEL_148:

        goto LABEL_58;
      }

      v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_167:
      v110 = v47 + v104;
      v111 = type metadata accessor for JSColor();
      if (!(*(*(v111 - 8) + 48))(v110, 1, v111))
      {
        v112 = sub_24F928388();
        (*(*(v112 - 8) + 8))(v110, v112);
      }

      goto LABEL_58;
    }

    v76 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v77 = *(*(v76 - 8) + 48);
    if (v77(v47, 1, v76))
    {
LABEL_98:
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v79 = v47 + *(v78 + 48);
      if (!v77(v79, 1, v76))
      {
        v80 = swift_getEnumCaseMultiPayload();
        if (v80 <= 2)
        {
          switch(v80)
          {
            case 0:

              v98 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v99 = type metadata accessor for JSColor();
              if (!(*(*(v99 - 8) + 48))(v98, 1, v99))
              {
                v100 = sub_24F928388();
                (*(*(v100 - 8) + 8))(v98, v100);
              }

              goto LABEL_166;
            case 1:
              v105 = sub_24F9289E8();
              v106 = *(v105 - 8);
              if (!(*(v106 + 48))(v79, 1, v105))
              {
                (*(v106 + 8))(v79, v105);
              }

              if (!*(v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_166;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_166;
          }

LABEL_160:

          goto LABEL_166;
        }

        switch(v80)
        {
          case 3:
            goto LABEL_160;
          case 4:
            v109 = sub_24F9289E8();
            (*(*(v109 - 8) + 8))(v79, v109);
            break;
          case 5:
            goto LABEL_160;
        }
      }

LABEL_166:
      v104 = *(v78 + 80);
      goto LABEL_167;
    }

    v81 = swift_getEnumCaseMultiPayload();
    if (v81 > 2)
    {
      if (v81 != 3)
      {
        if (v81 == 4)
        {
          v113 = sub_24F9289E8();
          (*(*(v113 - 8) + 8))(v47, v113);
          goto LABEL_98;
        }

        if (v81 != 5)
        {
          goto LABEL_98;
        }
      }
    }

    else
    {
      if (!v81)
      {

        v101 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v102 = type metadata accessor for JSColor();
        if (!(*(*(v102 - 8) + 48))(v101, 1, v102))
        {
          v103 = sub_24F928388();
          (*(*(v103 - 8) + 8))(v101, v103);
        }

        goto LABEL_98;
      }

      if (v81 == 1)
      {
        v107 = sub_24F9289E8();
        v108 = *(v107 - 8);
        if (!(*(v108 + 48))(v47, 1, v107))
        {
          (*(v108 + 8))(v47, v107);
        }

        if (*(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_98;
      }

      if (v81 != 2)
      {
        goto LABEL_98;
      }
    }

    goto LABEL_98;
  }

LABEL_58:
  if (*(v15 + v5[23]))
  {
  }

  v49 = v15 + v5[24];
  v50 = type metadata accessor for Page.Background(0);
  if (!(*(*(v50 - 8) + 48))(v49, 1, v50))
  {
    v56 = swift_getEnumCaseMultiPayload();
    if (v56 <= 1)
    {
      if (v56)
      {
        if (v56 == 1)
        {
          v58 = sub_24F9289E8();
          (*(*(v58 - 8) + 8))(v49, v58);
          v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v60 = sub_24F922348();
          v61 = *(v60 - 8);
          if (!(*(v61 + 48))(v49 + v59, 1, v60))
          {
            (*(v61 + 8))(v49 + v59, v60);
          }
        }
      }

      else
      {
        v75 = sub_24F9289E8();
        (*(*(v75 - 8) + 8))(v49, v75);
      }
    }

    else if (v56 == 2)
    {
      v65 = sub_24F9289E8();
      v66 = *(v65 - 8);
      if (!(*(v66 + 48))(v49, 1, v65))
      {
        (*(v66 + 8))(v49, v65);
      }

      v67 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v68 = type metadata accessor for GSKVideo();
      if (!(*(*(v68 - 1) + 48))(v67, 1, v68))
      {
        v69 = sub_24F91F4A8();
        (*(*(v69 - 8) + 8))(v67, v69);
        (*(v66 + 8))(v67 + v68[5], v65);
        v70 = v68[9];
        v71 = sub_24F928698();
        v72 = *(v71 - 8);
        v73 = *(v72 + 48);
        if (!v73(v67 + v70, 1, v71))
        {
          (*(v72 + 8))(v67 + v70, v71);
        }

        v74 = v68[10];
        if (!v73(v67 + v74, 1, v71))
        {
          (*(v72 + 8))(v67 + v74, v71);
        }
      }
    }

    else if (v56 == 3 || v56 == 4)
    {
      v57 = sub_24F928388();
      (*(*(v57 - 8) + 8))(v49, v57);
    }
  }

  v51 = v15 + v5[27];
  if (*(v51 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v52 = v15 + v5[28];
  if (*(v52 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v53 = v15 + v5[29];
  if (*(v53 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v54 = v15 + v5[30];
  if (*(v54 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  return swift_deallocObject();
}

uint64_t sub_24F5DE514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Page(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5DE578@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for IndexedSectionListPageView() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Page(0) - 8);
  v11 = v1 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_24F5DB9DC(v1 + v8, v11, v3, v4, v5, v6, a1);
}

uint64_t sub_24F5DE690()
{
  type metadata accessor for Page(255);
  sub_24F921BC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  sub_24F924038();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  type metadata accessor for IndexedSectionListView();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  swift_getOpaqueTypeConformance2();
  sub_24E667ED0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24F5DC448(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  swift_getWitnessTable();
  sub_24E669F00();
  swift_getWitnessTable();
  sub_24E669F54();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  sub_24F924038();
  sub_24F921C58();
  sub_24F5DC448(&qword_27F2477E8, MEMORY[0x277D7EC50]);
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F248428, &qword_27F248418);
  swift_getWitnessTable();
  sub_24F5DC448(&qword_27F248440, MEMORY[0x277D7EC80]);
  sub_24F921908();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248448);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F248450, &qword_27F248448);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24F5DC448(&qword_27F23FB90, type metadata accessor for Page);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24F928FD8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F5DED90(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_24F5DEF7C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
    return result;
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for ContactsIntegrationPromptView()
{
  result = qword_27F249C10;
  if (!qword_27F249C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5DF1A0()
{
  sub_24F01AF4C(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      sub_24F928818();
      if (v2 <= 0x3F)
      {
        sub_24F01AF4C(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24F4110E0(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
          if (v4 <= 0x3F)
          {
            sub_24F01AF4C(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24F4110E0(319, &qword_27F22C060, MEMORY[0x277D7EC08]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

double sub_24F5DF374()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E690 = xmmword_24F947C50;
  qword_27F39E6A0 = 0x404E000000000000;
  qword_27F39E6A8 = v0;
  qword_27F39E6B0 = v2;
  qword_27F39E6B8 = 0x4024000000000000;
  qword_27F39E6C0 = v3;
  return result;
}

double sub_24F5DF3C8()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E6D0 = xmmword_24F947C70;
  qword_27F39E6E0 = 0x404E000000000000;
  qword_27F39E6E8 = v0;
  qword_27F39E6F0 = v2;
  qword_27F39E6F8 = 0x4024000000000000;
  qword_27F39E700 = v3;
  return result;
}

uint64_t sub_24F5DF41C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v50 - v4;
  v63 = sub_24F929158();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v50 - v7;
  v57 = type metadata accessor for ContactsIntegrationPromptView();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v57);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249C20);
  MEMORY[0x28223BE20](v58);
  v12 = &v50 - v11;
  if (qword_27F2116F0 != -1)
  {
    swift_once();
  }

  v13 = unk_27F39EEB0;
  v56 = qword_27F39EEA8;
  sub_24E60169C(v2, (v12 + 24), qword_27F21B590);
  v14 = qword_27F2116F8;
  v54 = v13;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = unk_27F39EEC0;
  v55 = qword_27F39EEB8;
  sub_24E60169C(v2 + 40, (v12 + 88), qword_27F21B590);
  v16 = *(v2 + 80);
  sub_24F5E0CE4(v2, &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v53 = swift_allocObject();
  sub_24F5E0D4C(&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v53 + v17);
  sub_24F5E0CE4(v2, &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = swift_allocObject();
  sub_24F5E0D4C(&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v17);
  sub_24F5E0CE4(v2, &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = swift_allocObject();
  sub_24F5E0D4C(&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249C28);
  v19 = v18[34];
  v20 = type metadata accessor for HeaderPresentation(0);
  (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
  v21 = v18[37];
  v50 = v2;
  v22 = &v12[v21];
  LOBYTE(v65) = 0;

  sub_24F926F28();
  v23 = v67;
  *v22 = v66;
  *(v22 + 1) = v23;
  v24 = &v12[v18[38]];
  LOBYTE(v65) = 0;
  sub_24F926F28();
  v25 = v67;
  *v24 = v66;
  *(v24 + 1) = v25;
  v26 = &v12[v18[39]];
  v65 = 0;
  sub_24F926F28();
  v27 = v67;
  *v26 = v66;
  *(v26 + 1) = v27;
  v28 = v18[40];
  *&v12[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v29 = v18[41];
  *&v12[v29] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v30 = v18[42];
  *&v12[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v31 = &v12[v18[43]];
  *v31 = sub_24F923398() & 1;
  *(v31 + 1) = v32;
  v31[16] = v33 & 1;
  v35 = v54;
  v34 = v55;
  *v12 = v56;
  *(v12 + 1) = v35;
  *(v12 + 2) = 0;
  *(v12 + 8) = v34;
  *(v12 + 9) = v15;
  *(v12 + 10) = 0;
  *(v12 + 64) = 0;
  *(v12 + 17) = v16;
  *(v12 + 18) = 0;
  *(v12 + 19) = 0;
  *(v12 + 20) = sub_24F5E0DB0;
  v36 = v52;
  *(v12 + 21) = v53;
  *(v12 + 22) = sub_24F5E2008;
  *(v12 + 23) = v36;
  *(v12 + 24) = sub_24F5E0E30;
  v37 = v50;
  *(v12 + 25) = v51;
  *(v12 + 26) = CGSizeMake;
  *(v12 + 27) = 0;
  v12[v18[35]] = 7;
  v12[v18[36]] = 0;
  sub_24F5E0CE4(v37, &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = swift_allocObject();
  sub_24F5E0D4C(v10, v38 + v17);
  v39 = &v12[*(v58 + 36)];
  sub_24F923AD8();
  sub_24F92B818();
  *v39 = &unk_24FA10E20;
  *(v39 + 1) = v38;
  v40 = *(v57 + 28);
  v41 = sub_24F928818();
  v42 = *(v41 - 8);
  v43 = v37 + v40;
  v44 = v59;
  (*(v42 + 16))(v59, v43, v41);
  (*(v42 + 56))(v44, 0, 1, v41);
  v45 = v60;
  v46 = v63;
  sub_24F928F28();
  v47 = sub_24F921B48();
  v48 = v62;
  (*(*(v47 - 8) + 56))(v62, 1, 1, v47);
  sub_24F5E1310();
  sub_24F925E58();
  sub_24E601704(v48, &qword_27F2157E8);
  (*(v61 + 8))(v45, v46);
  sub_24E601704(v44, &qword_27F2157F0);
  return sub_24E601704(v12, &qword_27F249C20);
}

double sub_24F5DFBCC@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_24F5DFD38(&v10);
  v33 = v20;
  v34 = v21;
  v35[0] = v22[0];
  *(v35 + 9) = *(v22 + 9);
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v23 = v10;
  v24 = v11;
  v36[10] = v20;
  v36[11] = v21;
  v37[0] = v22[0];
  *(v37 + 9) = *(v22 + 9);
  v36[6] = v16;
  v36[7] = v17;
  v36[8] = v18;
  v36[9] = v19;
  v36[2] = v12;
  v36[3] = v13;
  v36[4] = v14;
  v36[5] = v15;
  v36[0] = v10;
  v36[1] = v11;
  sub_24E60169C(&v23, &v9, &qword_27F249C40);
  sub_24E601704(v36, &qword_27F249C40);
  v2 = v34;
  *(a1 + 184) = v33;
  *(a1 + 200) = v2;
  *(a1 + 216) = v35[0];
  *(a1 + 225) = *(v35 + 9);
  v3 = v30;
  *(a1 + 120) = v29;
  *(a1 + 136) = v3;
  v4 = v32;
  *(a1 + 152) = v31;
  *(a1 + 168) = v4;
  v5 = v26;
  *(a1 + 56) = v25;
  *(a1 + 72) = v5;
  v6 = v28;
  *(a1 + 88) = v27;
  *(a1 + 104) = v6;
  result = *&v23;
  v8 = v24;
  *(a1 + 24) = v23;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_24F5DFD38@<X0>(uint64_t a1@<X8>)
{
  sub_24F5E13F8(&v36);
  v2 = v36;
  v3 = v37;
  v4 = v38;
  v32 = v38;
  v31 = v39;
  v5 = v40;
  v6 = v41;
  sub_24F5E1C48(&v36, &v71);
  v7 = sub_24F925818();
  sub_24F5E13F8(&v42);
  sub_24F923318();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v71) = 0;
  sub_24F5E13F8(&v43);
  v16 = v43;
  v29 = v44;
  v30 = *(&v43 + 1);
  v18 = v45;
  v17 = v46;
  v28 = v47;
  v19 = v48;
  sub_24F5E1C48(&v43, &v71);
  v20 = sub_24F925818();
  sub_24F5E13F8(&v49);
  sub_24F923318();
  LOBYTE(v71) = 0;
  v50 = v2;
  *&v51 = v3;
  *(&v51 + 1) = v4;
  *&v52 = v31;
  *(&v52 + 1) = v5;
  *&v53 = v6;
  BYTE8(v53) = v7;
  *&v54 = v9;
  *(&v54 + 1) = v11;
  *&v55 = v13;
  *(&v55 + 1) = v15;
  v56 = 0;
  v35[0] = 0;
  v33 = v54;
  v34 = v55;
  *&v57 = v16;
  *(&v57 + 1) = v30;
  *&v58 = v29;
  *(&v58 + 1) = v18;
  *&v59 = v17;
  *(&v59 + 1) = v28;
  *&v60 = v19;
  BYTE8(v60) = v20;
  *&v61 = v21;
  *(&v61 + 1) = v22;
  *&v62 = v23;
  *(&v62 + 1) = v24;
  v63 = 0;
  *&v35[40] = v59;
  *&v35[24] = v58;
  *&v35[8] = v57;
  v35[104] = 0;
  *&v35[88] = v62;
  *&v35[72] = v61;
  *&v35[56] = v60;
  v25 = v51;
  v26 = v53;
  *(a1 + 32) = v52;
  *(a1 + 48) = v26;
  *a1 = v2;
  *(a1 + 16) = v25;
  *(a1 + 96) = *v35;
  *(a1 + 112) = *&v35[16];
  *(a1 + 64) = v33;
  *(a1 + 80) = v34;
  *(a1 + 176) = *&v35[80];
  *(a1 + 192) = *&v35[96];
  *(a1 + 144) = *&v35[48];
  *(a1 + 160) = *&v35[64];
  *(a1 + 128) = *&v35[32];
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v64[0] = v16;
  v64[1] = v30;
  v64[2] = v29;
  v64[3] = v18;
  v64[4] = v17;
  v64[5] = v28;
  v64[6] = v19;
  v65 = v20;
  v66 = v21;
  v67 = v22;
  v68 = v23;
  v69 = v24;
  v70 = 0;
  sub_24E60169C(&v50, &v71, &qword_27F249C48);
  sub_24E60169C(&v57, &v71, &qword_27F249C50);
  sub_24E601704(v64, &qword_27F249C50);
  v71 = v2;
  v72 = v3;
  v73 = v32;
  v74 = v31;
  v75 = v5;
  v76 = v6;
  v77 = v7;
  v78 = v9;
  v79 = v11;
  v80 = v13;
  v81 = v15;
  v82 = 0;
  return sub_24E601704(&v71, &qword_27F249C48);
}

uint64_t sub_24F5E0050@<X0>(uint64_t a1@<X8>)
{
  sub_24F5E13F8(&v7);
  v2 = v8;
  v3 = v10;
  v4 = v11;
  *a1 = v7;
  *(a1 + 16) = v2;
  *(a1 + 24) = v9;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  return sub_24F5E1C48(&v7, v6);
}

uint64_t sub_24F5E00B8(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_24F921B58();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_24F92B7F8();
  v1[16] = sub_24F92B7E8();
  v4 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F5E01AC, v4, v3);
}

uint64_t sub_24F5E01AC()
{

  type metadata accessor for ContactsIntegrationPromptView();
  sub_24F7695C8((v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[14];
    v2 = v0[15];
    v7 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
    v0[10] = type metadata accessor for ReportPromptDidPresentAction();
    v0[11] = sub_24F4141AC(&qword_27F216358, type metadata accessor for ReportPromptDidPresentAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    sub_24F928A98();
    *boxed_opaque_existential_1 = 1;
    sub_24F76973C(v2);
    sub_24F9218A8();
    (*(v3 + 8))(v2, v7);
    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  else
  {
    sub_24E601704((v0 + 2), &unk_27F212740);
  }

  v5 = v0[1];

  return v5();
}

double sub_24F5E0354@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  v5 = sub_24F926DF8();
  v6 = sub_24F925908();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_24F925968();
  sub_24E601704(v4, &qword_27F214698);
  KeyPath = swift_getKeyPath();
  if (qword_27F211278 != -1)
  {
    swift_once();
  }

  v9 = qword_27F2431D0;
  v10 = swift_getKeyPath();

  sub_24F9242E8();
  v11 = v15[2];
  *(a1 + 88) = v15[3];
  v12 = v15[5];
  *(a1 + 104) = v15[4];
  *(a1 + 120) = v12;
  *(a1 + 136) = v15[6];
  result = *v15;
  v14 = v15[1];
  *(a1 + 40) = v15[0];
  *(a1 + 56) = v14;
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
  *(a1 + 72) = v11;
  return result;
}

__n128 sub_24F5E05AC@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924C98();
  v13 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v15 = 0;
  sub_24F5E1D2C(v1, v14);
  v9 = v15;
  sub_24F927628();
  sub_24F9242E8();
  *a1 = v3;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v13;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  v10 = v14[5];
  *(a1 + 144) = v14[4];
  *(a1 + 160) = v10;
  *(a1 + 176) = v14[6];
  v11 = v14[1];
  *(a1 + 80) = v14[0];
  *(a1 + 96) = v11;
  result = v14[3];
  *(a1 + 112) = v14[2];
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_24F5E0700@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = sub_24F929888();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110);
  MEMORY[0x28223BE20](v21);
  v3 = &v20 - v2;
  if (qword_27F2116E0 != -1)
  {
    swift_once();
  }

  v27 = xmmword_27F39EE88;
  sub_24E600AEC();

  v4 = sub_24F925E18();
  v6 = v5;
  v8 = v7;
  sub_24F925988();
  v9 = sub_24F925C98();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_24E600B40(v4, v6, v8 & 1);

  *&v27 = v9;
  *(&v27 + 1) = v11;
  v13 &= 1u;
  LOBYTE(v28) = v13;
  *(&v28 + 1) = v15;
  sub_24F9268B8();
  sub_24E600B40(v9, v11, v13);

  KeyPath = swift_getKeyPath();
  v17 = v22;
  v18 = &v3[*(v21 + 36)];
  *v18 = KeyPath;
  v18[8] = 0;
  v27 = 0u;
  v28 = 0u;
  memset(v26, 0, sizeof(v26));
  sub_24F9297A8();
  sub_24E601704(v26, &qword_27F2129B0);
  sub_24E601704(&v27, &qword_27F2129B0);
  sub_24E64575C();
  sub_24F925EE8();
  (*(v23 + 8))(v17, v25);
  return sub_24F41457C(v3);
}

uint64_t sub_24F5E09E0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = sub_24F929888();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2116E8 != -1)
  {
    swift_once();
  }

  v28 = qword_27F39EE98;
  v29 = unk_27F39EEA0;
  sub_24E600AEC();

  v3 = sub_24F925E18();
  v5 = v4;
  v7 = v6;
  v8 = sub_24F925C98();
  v10 = v9;
  v12 = v11;
  sub_24E600B40(v3, v5, v7 & 1);

  LODWORD(v28) = sub_24F9251C8();
  v13 = sub_24F925C58();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_24E600B40(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v28 = v13;
  v29 = v15;
  v30 = v17 & 1;
  v31 = v19;
  v32 = KeyPath;
  v33 = 0;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  sub_24F9297A8();
  sub_24E601704(v26, &qword_27F2129B0);
  sub_24E601704(v27, &qword_27F2129B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
  sub_24E62FBF4();
  sub_24F925EE8();
  (*(v23 + 8))(v2, v25);
  sub_24E600B40(v13, v15, v17 & 1);
}

uint64_t sub_24F5E0CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactsIntegrationPromptView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5E0D4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactsIntegrationPromptView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F5E0DB0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContactsIntegrationPromptView();

  return sub_24F5DFBCC(a1);
}

uint64_t objectdestroyTm_76()
{
  v1 = type metadata accessor for ContactsIntegrationPromptView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v2);
  }

  if (*(v3 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 40);
  }

  v4 = v1[7];
  v5 = sub_24F928818();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F925218();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v3 + v9, 1, v10))
    {
      (*(v11 + 8))(v3 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24F923E98();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  v14 = v3 + v1[11];
  if (*(v14 + 40))
  {
    if (*(v14 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  else
  {
  }

  v15 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_24F921B58();
    (*(*(v16 - 8) + 8))(v3 + v15, v16);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F5E1244()
{
  v2 = *(type metadata accessor for ContactsIntegrationPromptView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E614970;

  return sub_24F5E00B8(v0 + v3);
}

unint64_t sub_24F5E1310()
{
  result = qword_27F249C30;
  if (!qword_27F249C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249C20);
    sub_24E602068(&qword_27F249C38, &qword_27F249C28);
    sub_24F4141AC(&qword_27F211A48, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249C30);
  }

  return result;
}

double sub_24F5E13F8@<D0>(__int128 *a1@<X8>)
{
  v67 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v5);
  v64 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v62 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v63 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v18 = &v51[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v51[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v51[-v23];
  v59 = type metadata accessor for ContactsIntegrationPromptView();
  v61 = v1;
  sub_24F769764(v24);
  v25 = v3[13];
  v58 = *MEMORY[0x277CE0560];
  v57 = v25;
  v55 = v3 + 13;
  v25(v21);
  v56 = v3[7];
  v56(v21, 0, 1, v2);
  v60 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v24, v9, &qword_27F215598);
  v27 = v2;
  sub_24E60169C(v21, &v9[v26], &qword_27F215598);
  v66 = v3;
  v28 = v3[6];
  if (v28(v9, 1, v2) == 1)
  {
    v65 = v28;
    sub_24E601704(v21, &qword_27F215598);
    v27 = v2;
    sub_24E601704(v24, &qword_27F215598);
    if (v65(&v9[v26], 1, v2) != 1)
    {
LABEL_13:
      sub_24E601704(v9, &unk_27F254F20);
      goto LABEL_14;
    }

    sub_24E601704(v9, &qword_27F215598);
LABEL_6:
    v24 = v63;
    sub_24F769764(v63);
    v21 = v62;
    v57(v62, v58, v27);
    v56(v21, 0, 1, v27);
    v33 = *(v60 + 48);
    v34 = v64;
    sub_24E60169C(v24, v64, &qword_27F215598);
    sub_24E60169C(v21, &v34[v33], &qword_27F215598);
    v35 = v65;
    if (v65(v34, 1, v27) == 1)
    {
      sub_24E601704(v21, &qword_27F215598);
      sub_24E601704(v24, &qword_27F215598);
      if (v35(&v34[v33], 1, v27) == 1)
      {
        sub_24E601704(v34, &qword_27F215598);
LABEL_19:
        if (qword_27F211378 != -1)
        {
          swift_once();
        }

        v37 = &xmmword_27F39E6D0;
        goto LABEL_17;
      }

      v9 = v34;
      goto LABEL_13;
    }

    v36 = v53;
    sub_24E60169C(v34, v53, &qword_27F215598);
    if (v35(&v34[v33], 1, v27) == 1)
    {
      v18 = v36;
      v9 = v34;
      goto LABEL_11;
    }

    v45 = v21;
    v46 = v24;
    v47 = v66;
    v48 = v54;
    (v66[4])(v54, &v34[v33], v27);
    sub_24F4141AC(&qword_27F215650, MEMORY[0x277CE0570]);
    v49 = sub_24F92AFF8();
    v50 = v47[1];
    v50(v48, v27);
    sub_24E601704(v45, &qword_27F215598);
    sub_24E601704(v46, &qword_27F215598);
    v50(v36, v27);
    sub_24E601704(v34, &qword_27F215598);
    if (v49)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  sub_24E60169C(v9, v18, &qword_27F215598);
  if (v28(&v9[v26], 1, v2) == 1)
  {
LABEL_11:
    sub_24E601704(v21, &qword_27F215598);
    sub_24E601704(v24, &qword_27F215598);
    (v66[1])(v18, v27);
    goto LABEL_13;
  }

  v65 = v28;
  v29 = v66;
  v30 = &v9[v26];
  v31 = v54;
  (v66[4])(v54, v30, v27);
  sub_24F4141AC(&qword_27F215650, MEMORY[0x277CE0570]);
  v52 = sub_24F92AFF8();
  v32 = v29[1];
  v32(v31, v27);
  sub_24E601704(v21, &qword_27F215598);
  sub_24E601704(v24, &qword_27F215598);
  v32(v18, v27);
  sub_24E601704(v9, &qword_27F215598);
  if (v52)
  {
    goto LABEL_6;
  }

LABEL_14:
  if (qword_27F211370 != -1)
  {
    swift_once();
  }

  v37 = &xmmword_27F39E690;
LABEL_17:
  v38 = *(v37 + 6);
  result = *(v37 + 5);
  v41 = *(v37 + 3);
  v40 = *(v37 + 4);
  v42 = *(v37 + 2);
  v43 = *v37;
  v44 = v67;
  *v67 = v43;
  *(v44 + 2) = v42;
  *(v44 + 3) = v41;
  *(v44 + 4) = v40;
  *(v44 + 5) = result;
  *(v44 + 6) = v38;
  return result;
}

unint64_t sub_24F5E1D98()
{
  result = qword_27F249C58;
  if (!qword_27F249C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249C60);
    sub_24E602068(&qword_27F249C68, &qword_27F249C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249C58);
  }

  return result;
}

unint64_t sub_24F5E1E54()
{
  result = qword_27F249C78;
  if (!qword_27F249C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249C80);
    sub_24F3B1638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249C78);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP011_JetEngine_aB0E11pageMetrics_8pipeline7tracker26clickLocationConfigurationQr0dE004PageG0VSg_AI0G8PipelineVAI18ImpressionsTracker_pSgAD05ClickkL0VSgtFQOyAA15ModifiedContentVy12GameStoreKit013GSKOnboardingC0VyAA6VStackVyAA05TupleC0VyAUyAV6Header33_7A5181D0F66AA4082D804A80D988F9C9LLVAA14_PaddingLayoutVG_AUyAV0sC0A2_LLVA5_GAA6SpacerVtGGA3_A8_AA05EmptyC0VGAA13_TaskModifierVG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  a4();
  return swift_getOpaqueTypeConformance2();
}

__n128 GameOverviewShelfConstructionIntent.gameDescriptor.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GameOverviewShelfConstructionIntent() + 20);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

uint64_t type metadata accessor for GameOverviewShelfConstructionIntent()
{
  result = qword_27F249CA0;
  if (!qword_27F249CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameOverviewShelfConstructionIntent.pageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameOverviewShelfConstructionIntent() + 24));

  return v1;
}

uint64_t GameOverviewShelfConstructionIntent.friendsWhoPlay.getter()
{
  type metadata accessor for GameOverviewShelfConstructionIntent();
}

unint64_t GameOverviewShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 1701667175;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = type metadata accessor for Game();
  *(inited + 80) = sub_24E81A5FC(&qword_27F217960, type metadata accessor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F5E2F3C(v2, boxed_opaque_existential_1, type metadata accessor for Game);
  strcpy((inited + 88), "gameDescriptor");
  *(inited + 103) = -18;
  v6 = type metadata accessor for GameOverviewShelfConstructionIntent();
  v7 = (v2 + v6[5]);
  v8 = sub_24F2ADFE8();
  v9 = swift_allocObject();
  v10 = *v7;
  v11 = v7[1];
  *(inited + 128) = &type metadata for GameDescriptor;
  *(inited + 136) = v8;
  *(inited + 104) = v9;
  *(v9 + 16) = v10;
  *(v9 + 32) = v11;
  *(inited + 144) = 0x444965676170;
  *(inited + 152) = 0xE600000000000000;
  v12 = (v2 + v6[6]);
  v13 = *v12;
  v14 = v12[1];
  v15 = MEMORY[0x277D22580];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v15;
  *(inited + 160) = v13;
  *(inited + 168) = v14;
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v16 = v6[7];
  *(inited + 240) = type metadata accessor for Player(0);
  *(inited + 248) = sub_24E81A5FC(&qword_27F215388, type metadata accessor for Player);
  v17 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24F5E2F3C(v2 + v16, v17, type metadata accessor for Player);
  strcpy((inited + 256), "friendsWhoPlay");
  *(inited + 271) = -18;
  v18 = *(v2 + v6[8]);
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  *(inited + 304) = sub_24F551820(&qword_27F21BC38, &qword_27F215388);
  *(inited + 272) = v18;

  v19 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_24F5E24C4()
{
  v1 = *v0;
  v2 = 1701667175;
  v3 = 0x444965676170;
  v4 = 0x726579616C70;
  if (v1 != 3)
  {
    v4 = 0x5773646E65697266;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x63736544656D6167;
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

uint64_t sub_24F5E2568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5E3448(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5E2590(uint64_t a1)
{
  v2 = sub_24F5E2EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5E25CC(uint64_t a1)
{
  v2 = sub_24F5E2EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameOverviewShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249C88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5E2EE8();
  sub_24F92D128();
  LOBYTE(v15) = 0;
  type metadata accessor for Game();
  sub_24E81A5FC(&qword_27F214950, type metadata accessor for Game);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for GameOverviewShelfConstructionIntent();
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v14 = 1;
    sub_24F2ADF2C();
    sub_24F92CD48();
    LOBYTE(v15) = 2;
    sub_24F92CD08();
    LOBYTE(v15) = 3;
    type metadata accessor for Player(0);
    sub_24E81A5FC(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    *&v15 = *(v3 + *(v9 + 32));
    v14 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    sub_24F551820(&qword_27F21BC30, &qword_27F213E28);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t GameOverviewShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249C98);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v26 - v7;
  v9 = type metadata accessor for GameOverviewShelfConstructionIntent();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5E2EE8();
  v32 = v8;
  v12 = v33;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v4;
  v13 = v29;
  v14 = v11;
  LOBYTE(v34) = 0;
  sub_24E81A5FC(&qword_27F214968, type metadata accessor for Game);
  v15 = v30;
  v16 = v31;
  sub_24F92CC68();
  v17 = v15;
  v18 = v14;
  sub_24E691974(v17, v14, type metadata accessor for Game);
  v36 = 1;
  sub_24F2ADE78();
  sub_24F92CC68();
  v19 = (v14 + v9[5]);
  v20 = v35;
  *v19 = v34;
  v19[1] = v20;
  LOBYTE(v34) = 2;
  v21 = sub_24F92CC28();
  v23 = (v14 + v9[6]);
  *v23 = v21;
  v23[1] = v24;
  LOBYTE(v34) = 3;
  sub_24E81A5FC(&qword_27F213E38, type metadata accessor for Player);
  v25 = v33;
  sub_24F92CC68();
  sub_24E691974(v25, v18 + v9[7], type metadata accessor for Player);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  v36 = 4;
  sub_24F551820(&qword_27F2196A8, &qword_27F213E38);
  sub_24F92CC68();
  (*(v13 + 8))(v32, v16);
  *(v18 + v9[8]) = v34;
  sub_24F5E2F3C(v18, v27, type metadata accessor for GameOverviewShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F5E2FA4(v18, type metadata accessor for GameOverviewShelfConstructionIntent);
}

unint64_t sub_24F5E2EE8()
{
  result = qword_27F249C90;
  if (!qword_27F249C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249C90);
  }

  return result;
}

uint64_t sub_24F5E2F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5E2FA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5E3018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Game();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Player(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F5E3154(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Game();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Player(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F5E327C()
{
  type metadata accessor for Game();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v1 <= 0x3F)
    {
      sub_24E76AE60();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F5E3344()
{
  result = qword_27F249CB0;
  if (!qword_27F249CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249CB0);
  }

  return result;
}

unint64_t sub_24F5E339C()
{
  result = qword_27F249CB8;
  if (!qword_27F249CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249CB8);
  }

  return result;
}

unint64_t sub_24F5E33F4()
{
  result = qword_27F249CC0;
  if (!qword_27F249CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249CC0);
  }

  return result;
}

uint64_t sub_24F5E3448(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63736544656D6167 && a2 == 0xEE00726F74706972 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5773646E65697266 && a2 == 0xEE0079616C506F68)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

void ChallengesShelfDisplayType.jsRepresentation(in:)(uint64_t *a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 7105633;
  if (*v1)
  {
    v3 = 0x7972616D6D7573;
  }

  v4 = 0xE300000000000000;
  v5 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v5;
  if (!v2)
  {
    v4 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t ChallengesShelfDisplayType.rawValue.getter()
{
  if (*v0)
  {
    return 0x7972616D6D7573;
  }

  else
  {
    return 7105633;
  }
}

GameStoreKit::ChallengesShelfDisplayType_optional __swiftcall ChallengesShelfDisplayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
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

  *v2 = v5;
  return result;
}

uint64_t sub_24F5E36E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7972616D6D7573;
  }

  else
  {
    v3 = 7105633;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7972616D6D7573;
  }

  else
  {
    v5 = 7105633;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

unint64_t sub_24F5E3788()
{
  result = qword_27F249CC8;
  if (!qword_27F249CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249CC8);
  }

  return result;
}

uint64_t sub_24F5E37DC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F5E3858()
{
  sub_24F92B218();
}

uint64_t sub_24F5E38C0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F5E3938@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void sub_24F5E3998(uint64_t *a1@<X8>)
{
  v2 = 7105633;
  if (*v1)
  {
    v2 = 0x7972616D6D7573;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_24F5E3A80(uint64_t *a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 7105633;
  if (*v1)
  {
    v3 = 0x7972616D6D7573;
  }

  v4 = 0xE300000000000000;
  v5 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v5;
  if (!v2)
  {
    v4 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_24F5E3ADC()
{
  result = qword_27F249CD0;
  if (!qword_27F249CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249CD0);
  }

  return result;
}

uint64_t sub_24F5E3C58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v12 - 8);
  v44 = &v35 - v13;
  v43 = sub_24F91EAA8();
  v14 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F91EC58();
  v45 = *(v17 - 8);
  v46 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24ECD089C(a3, a4);
  v37 = a5;
  v38 = a6;
  if (v21)
  {
    v41 = v21;
    v42 = v20;
  }

  else
  {

    v41 = a6;
    v42 = a5;
  }

  sub_24F91EC48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B48);
  sub_24F91EB98();
  v22 = swift_allocObject();
  v39 = xmmword_24F93DE60;
  *(v22 + 16) = xmmword_24F93DE60;
  v47 = a1;
  v48 = a2;
  sub_24F91EA38();
  sub_24E600AEC();
  sub_24F92C578();
  v35 = a1;
  v36 = a2;
  v40 = *(v14 + 8);
  v23 = v43;
  v40(v16, v43);
  sub_24F91EB68();

  sub_24F91EBD8();
  sub_24F91EC28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249D00);
  v24 = swift_allocObject();
  *(v24 + 16) = v39;
  v25 = v41;
  *(v24 + 32) = v42;
  *(v24 + 40) = v25;
  v47 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249D08);
  sub_24E602068(&unk_27F249D10, &qword_27F249D08);
  v47 = sub_24F92B3B8();
  v48 = v26;
  sub_24F91EA28();
  v27 = sub_24F92C578();
  v29 = v28;
  v40(v16, v23);

  MEMORY[0x253044590](v27, v29);
  v30 = v44;
  sub_24F91EBF8();
  v31 = sub_24F91F4A8();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_24E601704(v30, &qword_27F228530);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0x6D6172676F6E6F6DLL, 0xEB000000002F2F3ALL);
    sub_24F92AF28();
    MEMORY[0x253050C20](0x49726579616C703FLL, 0xEA00000000003D44);
    MEMORY[0x253050C20](v35, v36);
    v33 = v47;
  }

  else
  {
    v33 = sub_24F91F398();
    (*(v32 + 8))(v30, v31);
  }

  (*(v45 + 8))(v19, v46);
  return v33;
}

void sub_24F5E4190()
{
  v0 = [objc_opt_self() defaultSettings];
  v1 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) initWithSettings_];

  qword_27F249CE0 = v1;
}

uint64_t sub_24F5E41FC()
{
  v0 = sub_24F928CE8();
  __swift_allocate_value_buffer(v0, qword_27F249CE8);
  __swift_project_value_buffer(v0, qword_27F249CE8);
  return sub_24F928CC8();
}

uint64_t PlayerMonogramProtocol.match(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_24F928CB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  if (qword_27F211388 != -1)
  {
    swift_once();
  }

  v12 = sub_24F928CE8();
  __swift_project_value_buffer(v12, qword_27F249CE8);
  sub_24F928CD8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_24E601704(v4, &unk_27F244EB0);
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_24F5E44E0(v8, a1);
    return (*(v6 + 8))(v11, v5);
  }

  return result;
}

uint64_t sub_24F5E44E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F9291A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928C98();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = sub_24F928C98();
    v14 = v13;
    sub_24F928CA8();
    v15 = sub_24F9291B8();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    if (v17)
    {
      v18 = sub_24F5E54A0(v15, v17);
    }

    else
    {
      v18 = 0;
    }

    v21 = sub_24F928CB8();
    result = (*(*(v21 - 8) + 8))(a1, v21);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v18;
  }

  else
  {
    v19 = sub_24F928CB8();
    result = (*(*(v19 - 8) + 8))(a1, v19);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t PlayerMonogramProtocol.fetch(contentsOf:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4B0);
  v3 = MEMORY[0x28223BE20](v2);
  v8 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778], v3);
  return sub_24F92B928();
}

void sub_24F5E47D0(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
  v69 = *(v3 - 8);
  v70 = v3;
  v66 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v62[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249D20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v73 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v62[-v9];
  v11 = sub_24F922028();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v72 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v62[-v15];
  sub_24F9288F8();
  v17 = v76;
  v65 = aBlock;
  if (qword_27F211068 != -1)
  {
    swift_once();
  }

  v18 = sub_24F922058();
  __swift_project_value_buffer(v18, qword_27F23DAD8);
  sub_24F922038();
  sub_24F921FF8();
  v71 = v16;
  v19 = *(v6 + 16);
  v19(v10, a2, v5);
  v19(v73, a2, v5);

  v20 = sub_24F922038();
  v21 = sub_24F92C058();

  if (sub_24F92C478())
  {
    v22 = swift_slowAlloc();
    v63 = v21;
    v23 = v22;
    v64 = swift_slowAlloc();
    v74 = v64;
    *v23 = 136315650;
    v24 = sub_24E7620D4(v65, v17, &v74);

    *(v23 + 4) = v24;
    *(v23 + 12) = 2080;
    sub_24F928908();
    aBlock = v25;
    v76 = v26;
    type metadata accessor for CGSize(0);
    v27 = sub_24F92B188();
    v29 = v28;
    v65 = v12;
    v30 = *(v6 + 8);
    v30(v10, v5);
    v31 = sub_24E7620D4(v27, v29, &v74);

    *(v23 + 14) = v31;
    *(v23 + 22) = 2048;
    v32 = v73;
    sub_24F928918();
    v34 = v33;
    v30(v32, v5);
    v12 = v65;
    *(v23 + 24) = v34;
    v35 = v71;
    v36 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v20, v63, v36, "PlayerMonogramProtocol", "%s-size:%s-scale:%f", v23, 0x20u);
    v37 = v64;
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v37, -1, -1);
    MEMORY[0x2530542D0](v23, -1, -1);

    v38 = v35;
  }

  else
  {

    v39 = *(v6 + 8);
    v39(v73, v5);
    v39(v10, v5);
    v38 = v71;
  }

  (*(v12 + 16))(v72, v38, v11);
  sub_24F922098();
  swift_allocObject();
  v40 = sub_24F922088();
  (*(v12 + 8))(v38, v11);
  sub_24F928908();
  v42 = v41;
  v44 = v43;
  sub_24F928918();
  v46 = v45;
  v47 = [objc_opt_self() availableColors];
  sub_24F5E5880();
  v48 = sub_24F92B5A8();

  sub_24F9288F8();
  v49 = v77;

  v73 = v40;
  if ((v48 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x253052270](v49, v48);
LABEL_10:
    v51 = v50;

    v48 = [objc_opt_self() renderingScopeWithPointSize:0 scale:0 strokeWidth:0 strokeColor:v51 rightToLeft:v42 style:v44 color:{v46, 0.0}];

    v81 = &unk_2862D83C0;
    v72 = swift_dynamicCastObjCProtocolUnconditional();
    if (qword_27F211380 == -1)
    {
LABEL_11:
      v52 = qword_27F249CE0;
      sub_24F9288F8();
      v53 = sub_24F92B098();

      v54 = v68;
      v55 = v69;
      v56 = v70;
      (*(v69 + 16))(v68, v67, v70);
      v57 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v58 = (v66 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      (*(v55 + 32))(v59 + v57, v54, v56);
      *(v59 + v58) = v73;
      v79 = sub_24F5E5974;
      v80 = v59;
      aBlock = MEMORY[0x277D85DD0];
      v76 = 1107296256;
      v77 = sub_24ECAEFC8;
      v78 = &block_descriptor_163;
      v60 = _Block_copy(&aBlock);

      v61 = [v52 renderMonogramForString:v53 scope:v72 imageHandler:v60];
      _Block_release(v60);

      swift_unknownObjectRelease();
      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  if ((v49 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v49 < *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v50 = *(v48 + 8 * v49 + 32);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_24F5E4FE8(void *a1, uint64_t a2)
{
  v4 = sub_24F922068();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F922028();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4C8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = a1;
  v26 = sub_24F926DD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
  v25 = a2;
  sub_24F92B8C8();
  (*(v11 + 8))(v13, v10);
  if (qword_27F211068 != -1)
  {
    swift_once();
  }

  v15 = sub_24F922058();
  __swift_project_value_buffer(v15, qword_27F23DAD8);
  v16 = sub_24F922038();
  sub_24F922078();
  v17 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    v18 = v23;
    if ((*(v23 + 88))(v6, v4) == *MEMORY[0x277D85B00])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v18 + 8))(v6, v4);
      v19 = "";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v16, v17, v21, "PlayerMonogramProtocol", v19, v20, 2u);
    MEMORY[0x2530542D0](v20, -1, -1);
  }

  (*(v7 + 8))(v9, v24);
  return sub_24F92B8D8();
}

uint64_t sub_24F5E5378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4B0);
  v3 = MEMORY[0x28223BE20](v2);
  v8 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778], v3);
  return sub_24F92B928();
}

unsigned __int8 *sub_24F5E54A0(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v33 = 58;
  v34 = 0xE100000000000000;
  sub_24E600AEC();
  v2 = sub_24F92C4E8();
  if (v2[2] >= 2uLL && ((v4 = v2[6], v3 = v2[7], , result = , v6 = HIBYTE(v3) & 0xF, v7 = v4 & 0xFFFFFFFFFFFFLL, (v3 & 0x2000000000000000) != 0) ? (v8 = HIBYTE(v3) & 0xF) : (v8 = v4 & 0xFFFFFFFFFFFFLL), v8))
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v10 = sub_24F2D9F38(v4, v3, 10);
      v28 = v32;
      goto LABEL_64;
    }

    if ((v3 & 0x2000000000000000) == 0)
    {
      if ((v4 & 0x1000000000000000) == 0)
      {
        goto LABEL_76;
      }

      for (result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_24F92C928())
      {
        v9 = *result;
        if (v9 == 43)
        {
          if (v7 < 1)
          {
            goto LABEL_80;
          }

          v6 = v7 - 1;
          if (v7 == 1)
          {
            goto LABEL_62;
          }

          v10 = 0;
          if (result)
          {
            v17 = result + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_62;
              }

              v19 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                goto LABEL_62;
              }

              v10 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_62;
              }

              ++v17;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }
          }
        }

        else if (v9 == 45)
        {
          if (v7 < 1)
          {
            goto LABEL_78;
          }

          v6 = v7 - 1;
          if (v7 == 1)
          {
            goto LABEL_62;
          }

          v10 = 0;
          if (result)
          {
            v11 = result + 1;
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                break;
              }

              v13 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                break;
              }

              v10 = v13 - v12;
              if (__OFSUB__(v13, v12))
              {
                break;
              }

              ++v11;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }

LABEL_62:
            v10 = 0;
            LOBYTE(v6) = 1;
            goto LABEL_63;
          }
        }

        else
        {
          if (!v7)
          {
            goto LABEL_62;
          }

          v10 = 0;
          if (result)
          {
            do
            {
              v23 = *result - 48;
              if (v23 > 9)
              {
                goto LABEL_62;
              }

              v24 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                goto LABEL_62;
              }

              v10 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_62;
              }

              ++result;
            }

            while (--v7);
          }
        }

        LOBYTE(v6) = 0;
LABEL_63:
        LOBYTE(v33) = v6;
        v28 = v6;
LABEL_64:

        if (v28)
        {
          return 0;
        }

        v29 = [objc_opt_self() availableColors];
        sub_24F5E5880();
        v30 = sub_24F92B5A8();

        if (v30 >> 62)
        {
          v31 = sub_24F92C738();
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v31)
        {
          if (v10 != 0x8000000000000000 || v31 != -1)
          {
            return (v10 % v31);
          }

          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        __break(1u);
LABEL_76:
        ;
      }
    }

    v35 = v4;
    v36 = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v4 != 43)
    {
      if (v4 != 45)
      {
        if (v6)
        {
          v10 = 0;
          v25 = &v35;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v6)
      {
        if (--v6)
        {
          v10 = 0;
          v14 = &v35 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      goto LABEL_79;
    }

    if (v6)
    {
      if (--v6)
      {
        v10 = 0;
        v20 = &v35 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v22 + v21;
          if (__OFADD__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v6)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

LABEL_81:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

unint64_t sub_24F5E5880()
{
  result = qword_27F22C138;
  if (!qword_27F22C138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22C138);
  }

  return result;
}

uint64_t sub_24F5E58CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F5E5974(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F5E4FE8(a1, v4);
}

uint64_t block_copy_helper_163(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F5E5A4C(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_24EA2DAEC;

  return sub_24F5E5B0C(v3, v4);
}

uint64_t sub_24F5E5B0C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  v4 = swift_task_alloc();
  v2[14] = v4;
  *v4 = v2;
  v4[1] = sub_24F5E5BCC;

  return MEMORY[0x28217F228](v2 + 10, v3, v3);
}

uint64_t sub_24F5E5BCC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24F5E5E8C;
  }

  else
  {
    v2 = sub_24F5E5CE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5E5CE0()
{
  v20 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  ObjectType = swift_getObjectType();
  *&v19[0] = v2;
  *(&v19[0] + 1) = v1;
  v5 = *(v3 + 56);

  v5(v19, ObjectType, v3);
  v7 = v6;

  v8 = swift_getObjectType();
  (*(v7 + 16))(v19, v8, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v9 = v19[1];
  *(v0 + 16) = v19[0];
  *(v0 + 32) = v9;
  v10 = v19[3];
  *(v0 + 48) = v19[2];
  *(v0 + 64) = v10;
  v11 = *(v0 + 16);
  v12 = *(v0 + 64);
  if (!(v12 >> 60))
  {
    if (*(v0 + 16) != 1)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_12;
  }

  if (v12 >> 60 == 8)
  {
    v13 = *(v0 + 40);
    v14 = *(v0 + 48) | *(v0 + 56) | *(v0 + 72);
    v15 = *(v0 + 32) | *(v0 + 24);
    if (v12 == 0x8000000000000000 && !(v14 | v11 | v13 | v15))
    {
      goto LABEL_10;
    }

    if (v12 == 0x8000000000000000 && v11 == 4 && !(v14 | v13 | v15))
    {
      goto LABEL_10;
    }
  }

  sub_24E88D2AC(v0 + 16);
LABEL_11:
  v16 = 1;
LABEL_12:
  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_24F5E5F44()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC12GameStoreKit24ChallengesUpdateNotifier_updateStreamUUID;
  v9 = sub_24F92B858();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v2 + 16))(v4, v0 + v8, v1);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v10, v4, v1);
  sub_24EA998B8(0, 0, v7, &unk_24FA11840, v11);

  (*(v2 + 8))(v0 + v8, v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24F5E6198()
{
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 24) = qword_27F252DD0;

  return MEMORY[0x2822009F8](sub_24F5E6230, v1, 0);
}

uint64_t sub_24F5E6230()
{
  sub_24F840910(*(v0 + 16), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F5E6294()
{
  sub_24F5E5F44();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for ChallengesUpdateNotifier()
{
  result = qword_27F249D90;
  if (!qword_27F249D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5E6314()
{
  result = sub_24F91F6B8();
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

uint64_t sub_24F5E63E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_24E8039DC(&unk_2861C2548);
  swift_arrayDestroy();
  v5 = sub_24F92B858();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = 0x676E656C6C616863;
  v7[6] = 0xEB00000000644965;
  v7[7] = v4;

  sub_24EA998B8(0, 0, v3, &unk_24FA11810, v7);

  v6(v3, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  sub_24EA998B8(0, 0, v3, &unk_24FA11820, v8);
}

uint64_t sub_24F5E65B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[35] = a6;
  v7[36] = a7;
  v7[33] = a4;
  v7[34] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v7[37] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40);
  v7[38] = v8;
  v7[39] = *(v8 - 8);
  v7[40] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508);
  v7[41] = v9;
  v7[42] = *(v9 - 8);
  v7[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F5E6728, 0, 0);
}

uint64_t sub_24F5E6728()
{
  *(v0 + 352) = OBJC_IVAR____TtC12GameStoreKit24ChallengesUpdateNotifier_updateStreamUUID;
  *(v0 + 360) = sub_24E802CE0(&unk_2861C25A8);
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 368) = qword_27F252DD0;
  *(v0 + 424) = 1;

  return MEMORY[0x2822009F8](sub_24F5E67E4, v1, 0);
}

uint64_t sub_24F5E67E4()
{
  sub_24F83EC44(*(v0 + 360), *(v0 + 264) + *(v0 + 352), (v0 + 424));

  return MEMORY[0x2822009F8](sub_24F5E686C, 0, 0);
}

uint64_t sub_24F5E686C()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[47] = v4;
  *v4 = v0;
  v4[1] = sub_24F5E6960;
  v5 = v0[41];

  return MEMORY[0x2822003E8](v0 + 23, 0, 0, v5);
}

uint64_t sub_24F5E6960()
{

  return MEMORY[0x2822009F8](sub_24F5E6A5C, 0, 0);
}

uint64_t sub_24F5E6A5C()
{
  v39 = v0;
  v1 = v0[24];
  if (v1)
  {
    v0[25] = 0x7954657461647075;
    v0[26] = 0xEA00000000006570;
    sub_24F92C7F8();
    if (*(v1 + 16) && (v2 = sub_24E76D934((v0 + 2)), (v3 & 1) != 0))
    {
      sub_24E643A9C(*(v1 + 56) + 32 * v2, (v0 + 12));
      sub_24E6585F8((v0 + 2));
      if (swift_dynamicCast())
      {
        v4 = v0[27];
        v5 = v0[28];
        v0[48] = v4;
        v0[49] = v5;
        if (qword_27F2113B8 != -1)
        {
          swift_once();
        }

        v6 = sub_24F9220D8();
        v0[50] = __swift_project_value_buffer(v6, qword_27F39E778);

        v7 = sub_24F9220B8();
        v8 = sub_24F92BD98();

        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v38[0] = v10;
          *v9 = 136315138;
          *(v9 + 4) = sub_24E7620D4(v4, v5, v38);
          _os_log_impl(&dword_24E5DD000, v7, v8, "ChallengesUpdateNotifier observeChallengeUpdate received update for %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v10);
          MEMORY[0x2530542D0](v10, -1, -1);
          MEMORY[0x2530542D0](v9, -1, -1);
        }

        if (v4 == 0x6574656C706D6F63 && v5 == 0xE900000000000064 || (sub_24F92CE08() & 1) != 0)
        {
          v11 = v0[35];
          v0[29] = v0[34];
          v0[30] = v11;

          sub_24F92C7F8();
          if (*(v1 + 16) && (v12 = sub_24E76D934((v0 + 7)), (v13 & 1) != 0))
          {
            sub_24E643A9C(*(v1 + 56) + 32 * v12, (v0 + 16));
            sub_24E6585F8((v0 + 7));

            if (swift_dynamicCast())
            {
              v14 = v0[31];
              v15 = v0[32];
              v0[51] = v14;
              v0[52] = v15;

              v16 = sub_24F9220B8();
              v17 = sub_24F92BD98();

              if (os_log_type_enabled(v16, v17))
              {
                v18 = swift_slowAlloc();
                v19 = swift_slowAlloc();
                v38[0] = v19;
                *v18 = 136315138;
                *(v18 + 4) = sub_24E7620D4(v14, v15, v38);
                _os_log_impl(&dword_24E5DD000, v16, v17, "ChallengesUpdateNotifier observeChallengeUpdate invalidate local ended notification for %s", v18, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v19);
                MEMORY[0x2530542D0](v19, -1, -1);
                MEMORY[0x2530542D0](v18, -1, -1);
              }

              v20 = v0[33];
              v21 = sub_24F5E70C4;
LABEL_41:

              return MEMORY[0x2822009F8](v21, v20, 0);
            }
          }

          else
          {

            sub_24E6585F8((v0 + 7));
          }
        }

        else
        {
        }

        v24 = v0[36];
        if (*(v24 + 16))
        {
          sub_24F92D068();
          sub_24F92B218();
          v25 = sub_24F92D0B8();
          v26 = -1 << *(v24 + 32);
          v27 = v25 & ~v26;
          if ((*(v24 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v27))
          {
            v28 = ~v26;
            v29 = v0[36];
            while (1)
            {
              v30 = (*(v29 + 48) + 16 * v27);
              v31 = *v30 == v0[48] && v30[1] == v0[49];
              if (v31 || (sub_24F92CE08() & 1) != 0)
              {
                break;
              }

              v29 = v0[36];
              v27 = (v27 + 1) & v28;
              if (((*(v29 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v27) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            v34 = sub_24F9220B8();
            v35 = sub_24F92BD98();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              *v36 = 0;
              _os_log_impl(&dword_24E5DD000, v34, v35, "ChallengesUpdateNotifier observeChallengeUpdate hub update", v36, 2u);
              MEMORY[0x2530542D0](v36, -1, -1);
            }

            v37 = v0[33];

            v21 = sub_24F5E73D4;
            v20 = v37;
            goto LABEL_41;
          }
        }
      }

LABEL_34:
    }

    else
    {

      sub_24E6585F8((v0 + 2));
    }

    v32 = swift_task_alloc();
    v0[47] = v32;
    *v32 = v0;
    v32[1] = sub_24F5E6960;
    v33 = v0[41];

    return MEMORY[0x2822003E8](v0 + 23, 0, 0, v33);
  }

  else
  {
    (*(v0[42] + 8))(v0[43], v0[41]);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_24F5E70C4()
{
  v1 = *(v0[33] + 152);
  if (*(v1 + 16) && (v2 = v0[51], v3 = v0[52], , v4 = sub_24E76D644(v2, v3), v6 = v5, , (v6 & 1) != 0))
  {
    v7 = *(*(v1 + 56) + 8 * v4);

    [v7 invalidate];
  }

  else
  {
  }

  return MEMORY[0x2822009F8](sub_24F5E71A8, 0, 0);
}

uint64_t sub_24F5E71A8()
{
  v1 = v0[36];
  if (*(v1 + 16) && (sub_24F92D068(), sub_24F92B218(), v2 = sub_24F92D0B8(), v3 = -1 << *(v1 + 32), v4 = v2 & ~v3, ((*(v1 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4) & 1) != 0))
  {
    v5 = ~v3;
    v6 = v0[36];
    while (1)
    {
      v7 = (*(v6 + 48) + 16 * v4);
      v8 = *v7 == v0[48] && v7[1] == v0[49];
      if (v8 || (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      v6 = v0[36];
      v4 = (v4 + 1) & v5;
      if (((*(v6 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v11 = sub_24F9220B8();
    v12 = sub_24F92BD98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24E5DD000, v11, v12, "ChallengesUpdateNotifier observeChallengeUpdate hub update", v13, 2u);
      MEMORY[0x2530542D0](v13, -1, -1);
    }

    v14 = v0[33];

    return MEMORY[0x2822009F8](sub_24F5E73D4, v14, 0);
  }

  else
  {
LABEL_10:

    v9 = swift_task_alloc();
    v0[47] = v9;
    *v9 = v0;
    v9[1] = sub_24F5E6960;
    v10 = v0[41];

    return MEMORY[0x2822003E8](v0 + 23, 0, 0, v10);
  }
}

uint64_t sub_24F5E73D4()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = sub_24F92B858();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = sub_24F5EF52C(&qword_27F249DA0, type metadata accessor for ChallengesUpdateNotifier);
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = v2;
  swift_retain_n();
  sub_24F1D3DA4(0, 0, v1, &unk_24FA11830, v5);

  v6 = swift_task_alloc();
  v0[47] = v6;
  *v6 = v0;
  v6[1] = sub_24F5E6960;
  v7 = v0[41];

  return MEMORY[0x2822003E8](v0 + 23, 0, 0, v7);
}

uint64_t sub_24F5E7560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0);
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F5E76FC, 0, 0);
}

uint64_t sub_24F5E76FC()
{
  *(v0 + 208) = OBJC_IVAR____TtC12GameStoreKit24ChallengesUpdateNotifier_updateStreamUUID;
  *(v0 + 216) = sub_24E802CE0(&unk_2861C25D0);
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 224) = qword_27F252DD0;
  *(v0 + 296) = 1;

  return MEMORY[0x2822009F8](sub_24F5E77B8, v1, 0);
}

uint64_t sub_24F5E77B8()
{
  sub_24F83EC44(*(v0 + 216), *(v0 + 128) + *(v0 + 208), (v0 + 296));

  return MEMORY[0x2822009F8](sub_24F5E7840, 0, 0);
}

uint64_t sub_24F5E7840()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[29] = 0;
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_24F5E7920;
  v5 = v0[23];

  return MEMORY[0x2822003E8](v0 + 11, 0, 0, v5);
}

uint64_t sub_24F5E7920()
{

  return MEMORY[0x2822009F8](sub_24F5E7A1C, 0, 0);
}

uint64_t sub_24F5E7A1C()
{
  v36 = v0;
  v1 = v0[12];
  if (!v1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v26 = v0[1];

    return v26();
  }

  v0[13] = 7562345;
  v0[14] = 0xE300000000000000;
  sub_24F92C7F8();
  if (*(v1 + 16) && (v2 = sub_24E76D934((v0 + 2)), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v1 + 56) + 32 * v2, (v0 + 7));
    sub_24E6585F8((v0 + 2));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    if (swift_dynamicCast())
    {
      v4 = v0[15];
      v0[31] = v4;
      v5 = *(v4 + 16);
      v0[32] = v5;
      if (v5)
      {
        v6 = 0;
        v7 = v0[29];
        while (1)
        {
          v0[33] = v6;
          v11 = v0[31] + 16 * v6;
          v12 = *(v11 + 32);
          v13 = *(v11 + 40);
          swift_bridgeObjectRetain_n();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DF8);
          sub_24F920EC8();
          v15 = sub_24F921008();
          v16 = v7;
          v0[34] = v7;
          v0[35] = v15;
          v0[36] = v14;
          v17 = v0[19];
          v18 = v0[17];
          v19 = (v0[18] + 8);
          if (!v16)
          {
            break;
          }

          (*v19)(v17, v18);
          if (qword_27F2113B8 != -1)
          {
            swift_once();
          }

          v20 = sub_24F9220D8();
          __swift_project_value_buffer(v20, qword_27F39E778);

          v21 = sub_24F9220B8();
          v22 = sub_24F92BDB8();

          if (os_log_type_enabled(v21, v22))
          {
            v8 = swift_slowAlloc();
            v9 = swift_slowAlloc();
            v35[0] = v9;
            *v8 = 136315138;
            v10 = sub_24E7620D4(v12, v13, v35);

            *(v8 + 4) = v10;
            _os_log_impl(&dword_24E5DD000, v21, v22, "ChallengesUpdateNotifier ignoring challenge update with invalid ref: %s", v8, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v9);
            MEMORY[0x2530542D0](v9, -1, -1);
            MEMORY[0x2530542D0](v8, -1, -1);
          }

          else
          {
          }

          v7 = 0;
          v6 = v0[33] + 1;
          if (v6 == v0[32])
          {

            v23 = 0;
            goto LABEL_16;
          }
        }

        v27 = v14;
        (*v19)(v0[19], v0[17]);

        if (qword_27F2113B8 != -1)
        {
          swift_once();
        }

        v28 = sub_24F9220D8();
        __swift_project_value_buffer(v28, qword_27F39E778);

        v29 = sub_24F9220B8();
        v30 = sub_24F92BD98();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v35[0] = v32;
          *v31 = 136315138;
          *(v31 + 4) = sub_24E7620D4(v15, v27, v35);
          _os_log_impl(&dword_24E5DD000, v29, v30, "ChallengesUpdateNotifier observeChallengeUpdate detail update for %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x2530542D0](v32, -1, -1);
          MEMORY[0x2530542D0](v31, -1, -1);
        }

        v33 = v0[16];

        return MEMORY[0x2822009F8](sub_24F5E7F98, v33, 0);
      }
    }
  }

  else
  {

    sub_24E6585F8((v0 + 2));
  }

  v23 = v0[29];
LABEL_16:
  v0[29] = v23;
  v24 = swift_task_alloc();
  v0[30] = v24;
  *v24 = v0;
  v24[1] = sub_24F5E7920;
  v25 = v0[23];

  return MEMORY[0x2822003E8](v0 + 11, 0, 0, v25);
}

uint64_t sub_24F5E7F98()
{
  sub_24F5EC644(*(v0 + 280), *(v0 + 288), 1);

  return MEMORY[0x2822009F8](sub_24F5E8014, 0, 0);
}

uint64_t sub_24F5E8014()
{
  v30 = v0;
  v1 = v0[34];
  v2 = v0[33] + 1;
  if (v2 == v0[32])
  {
    v3 = v0[34];
LABEL_3:

    v0[29] = v3;
    v4 = swift_task_alloc();
    v0[30] = v4;
    *v4 = v0;
    v4[1] = sub_24F5E7920;
    v5 = v0[23];

    return MEMORY[0x2822003E8](v0 + 11, 0, 0, v5);
  }

  else
  {
    while (1)
    {
      v0[33] = v2;
      v9 = v0[31] + 16 * v2;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DF8);
      sub_24F920EC8();
      v13 = sub_24F921008();
      v14 = v1;
      v0[34] = v1;
      v0[35] = v13;
      v0[36] = v12;
      v15 = v0[19];
      v16 = v0[17];
      v17 = (v0[18] + 8);
      if (!v14)
      {
        break;
      }

      (*v17)(v15, v16);
      if (qword_27F2113B8 != -1)
      {
        swift_once();
      }

      v18 = sub_24F9220D8();
      __swift_project_value_buffer(v18, qword_27F39E778);

      v19 = sub_24F9220B8();
      v20 = sub_24F92BDB8();

      if (os_log_type_enabled(v19, v20))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v29[0] = v7;
        *v6 = 136315138;
        v8 = sub_24E7620D4(v10, v11, v29);

        *(v6 + 4) = v8;
        _os_log_impl(&dword_24E5DD000, v19, v20, "ChallengesUpdateNotifier ignoring challenge update with invalid ref: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v7);
        MEMORY[0x2530542D0](v7, -1, -1);
        MEMORY[0x2530542D0](v6, -1, -1);
      }

      else
      {
      }

      v1 = 0;
      v3 = 0;
      v2 = v0[33] + 1;
      if (v2 == v0[32])
      {
        goto LABEL_3;
      }
    }

    v21 = v12;
    (*v17)(v0[19], v0[17]);

    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v22 = sub_24F9220D8();
    __swift_project_value_buffer(v22, qword_27F39E778);

    v23 = sub_24F9220B8();
    v24 = sub_24F92BD98();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_24E7620D4(v13, v21, v29);
      _os_log_impl(&dword_24E5DD000, v23, v24, "ChallengesUpdateNotifier observeChallengeUpdate detail update for %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x2530542D0](v26, -1, -1);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    v27 = v0[16];

    return MEMORY[0x2822009F8](sub_24F5E7F98, v27, 0);
  }
}

uint64_t sub_24F5E8450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v48 = a3;
  v49 = a4;
  v46 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223228);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DF0);
  v21 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130D8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v44 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  type metadata accessor for ChallengeDetail(0);
  (*(v21 + 104))(v13, *MEMORY[0x277D85778], v11);
  v50 = v19;
  v20 = v46;
  sub_24F92B868();
  v22 = *(v21 + 8);
  LOBYTE(v21) = v21 + 8;
  v22(v13, v11);
  swift_beginAccess();
  v23 = *(v4 + 112);
  if (*(v23 + 16))
  {

    v24 = sub_24E76D644(a1, v20);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);

      if (*(v26 + 16))
      {
        v27 = sub_24E76D644(v48, v49);
        v21 = v45;
        if (v28)
        {
          (*(v15 + 16))(v45, *(v26 + 56) + *(v15 + 72) * v27, v14);
          v29 = 0;
        }

        else
        {
          v29 = 1;
        }
      }

      else
      {
        v29 = 1;
        v21 = v45;
      }

      (*(v15 + 56))(v21, v29, 1, v14);
      if ((*(v15 + 48))(v21, 1, v14))
      {
        sub_24E601704(v21, &qword_27F223228);
      }

      else
      {
        v30 = v44;
        (*(v15 + 16))(v44, v21, v14);
        sub_24E601704(v21, &qword_27F223228);
        sub_24F92B8D8();
        (*(v15 + 8))(v30, v14);
      }
    }

    else
    {
    }
  }

  v31 = v47;
  (*(v15 + 16))(v47, v50, v14);
  (*(v15 + 56))(v31, 0, 1, v14);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(v5 + 112);
  v33 = v51;
  *(v5 + 112) = 0x8000000000000000;
  v35 = sub_24E76D644(a1, v20);
  v36 = *(v33 + 16);
  v37 = (v34 & 1) == 0;
  v38 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
    goto LABEL_22;
  }

  LOBYTE(v21) = v34;
  if (*(v33 + 24) >= v38)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v5 + 112) = v33;
      if (v34)
      {
LABEL_20:
        v42 = v49;

        sub_24E989388(v31, v48, v42);
        swift_endAccess();
        return (*(v15 + 8))(v50, v14);
      }

LABEL_19:
      v41 = sub_24E612318(MEMORY[0x277D84F90]);
      sub_24EC275F0(v35, a1, v20, v41, v33);

      goto LABEL_20;
    }

LABEL_22:
    sub_24E8AFB00();
    v33 = v51;
    *(v5 + 112) = v51;
    if (v21)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  sub_24E89C60C(v38, isUniquelyReferenced_nonNull_native);
  v33 = v51;
  v39 = sub_24E76D644(a1, v20);
  if ((v21 & 1) == (v40 & 1))
  {
    v35 = v39;
    *(v5 + 112) = v33;
    if (v21)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F5E89C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v31 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223228);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  swift_beginAccess();
  v18 = *(v4 + 112);
  if (*(v18 + 16))
  {
    v29 = v5;

    v19 = sub_24E76D644(a1, a2);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      if (*(v21 + 16) && (v22 = sub_24E76D644(v30, v31), (v23 & 1) != 0))
      {
        (*(v9 + 16))(v17, *(v21 + 56) + *(v9 + 72) * v22, v8);
        v24 = 0;
      }

      else
      {
        v24 = 1;
      }

      (*(v9 + 56))(v17, v24, 1, v8);
      if ((*(v9 + 48))(v17, 1, v8))
      {
        sub_24E601704(v17, &qword_27F223228);
      }

      else
      {
        (*(v9 + 16))(v11, v17, v8);
        sub_24E601704(v17, &qword_27F223228);
        sub_24F92B8D8();
        (*(v9 + 8))(v11, v8);
      }
    }

    else
    {
    }
  }

  v25 = sub_24F5E5EA4();
  v26 = sub_24F4D6368(v32, a1, a2);
  if (*v27)
  {
    sub_24E98F4DC(v30, v31, v14);
    sub_24E601704(v14, &qword_27F223228);
    (v26)(v32, 0);
    return (v25)(v33, 0);
  }

  else
  {
    (v26)(v32, 0);
    (v25)(v33, 0);
    (*(v9 + 56))(v14, 1, 1, v8);
    return sub_24E601704(v14, &qword_27F223228);
  }
}

uint64_t sub_24F5E8D7C(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223220);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231690);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  (*(v9 + 104))(v11, *MEMORY[0x277D85778], v8, v17);
  sub_24F92B868();
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v30 = v2;
  v20 = *(v2 + 120);
  if (*(v20 + 16))
  {

    v21 = sub_24E76D644(v31, v32);
    if (v22)
    {
      (*(v13 + 16))(v7, *(v20 + 56) + *(v13 + 72) * v21, v12);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 1;
  }

  v24 = *(v13 + 56);
  v24(v7, v23, 1, v12);
  if ((*(v13 + 48))(v7, 1, v12))
  {
    sub_24E601704(v7, &qword_27F223220);
    v25 = *(v13 + 16);
  }

  else
  {
    v25 = *(v13 + 16);
    v25(v15, v7, v12);
    sub_24E601704(v7, &qword_27F223220);
    sub_24F92B8D8();
    (*(v13 + 8))(v15, v12);
  }

  v26 = v29;
  v25(v29, v19, v12);
  v24(v26, 0, 1, v12);
  swift_beginAccess();
  v27 = v32;

  sub_24E988C34(v26, v31, v27);
  swift_endAccess();
  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_24F5E9198(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v20[-v13];
  swift_beginAccess();
  v15 = *(v2 + 120);
  if (*(v15 + 16))
  {

    v16 = sub_24E76D644(a1, a2);
    if (v17)
    {
      (*(v6 + 16))(v14, *(v15 + 56) + *(v6 + 72) * v16, v5);
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  (*(v6 + 56))(v14, v18, 1, v5);
  if ((*(v6 + 48))(v14, 1, v5))
  {
    sub_24E601704(v14, &qword_27F223220);
  }

  else
  {
    (*(v6 + 16))(v8, v14, v5);
    sub_24E601704(v14, &qword_27F223220);
    sub_24F92B8D8();
    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  sub_24E98F2F8(a1, a2, v11);
  sub_24E601704(v11, &qword_27F223220);
  return swift_endAccess();
}

uint64_t sub_24F5E945C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223220);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231690);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  (*(v9 + 104))(v11, *MEMORY[0x277D85778], v8);
  sub_24F92B868();
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v29 = v2;
  v19 = *(v2 + 128);
  if (*(v19 + 16))
  {

    v20 = sub_24E76D644(v30, v31);
    if (v21)
    {
      (*(v13 + 16))(v7, *(v19 + 56) + *(v13 + 72) * v20, v12);
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v13 + 56);
  v23(v7, v22, 1, v12);
  if ((*(v13 + 48))(v7, 1, v12))
  {
    sub_24E601704(v7, &qword_27F223220);
    v24 = *(v13 + 16);
  }

  else
  {
    v24 = *(v13 + 16);
    v24(v16, v7, v12);
    sub_24E601704(v7, &qword_27F223220);
    sub_24F92B8D8();
    (*(v13 + 8))(v16, v12);
  }

  v25 = v28;
  v24(v28, v18, v12);
  v23(v25, 0, 1, v12);
  swift_beginAccess();
  v26 = v31;

  sub_24E988C34(v25, v30, v26);
  swift_endAccess();
  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_24F5E9878(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223220);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-v13];
  swift_beginAccess();
  v15 = *(v2 + 128);
  if (*(v15 + 16))
  {

    v16 = sub_24E76D644(a1, a2);
    if (v17)
    {
      (*(v6 + 16))(v14, *(v15 + 56) + *(v6 + 72) * v16, v5);
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  (*(v6 + 56))(v14, v18, 1, v5);
  if ((*(v6 + 48))(v14, 1, v5))
  {
    sub_24E601704(v14, &qword_27F223220);
  }

  else
  {
    (*(v6 + 16))(v8, v14, v5);
    sub_24E601704(v14, &qword_27F223220);
    sub_24F92B8D8();
    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  sub_24E98F2F8(a1, a2, v12);
  sub_24E601704(v12, &qword_27F223220);
  return swift_endAccess();
}

uint64_t sub_24F5E9B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v80 = a4;
  v75 = a3;
  v83 = a1;
  v84 = a2;
  v77 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223218);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v73 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v82 = &v73 - v15;
  MEMORY[0x28223BE20](v14);
  v73 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DE8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130C0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v74 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v73 - v25;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213780);
  v79 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v28 = &v73 - v27;
  (*(v18 + 104))(v20, *MEMORY[0x277D85778], v17);
  v78 = v28;
  v29 = v80;
  v81 = v26;
  sub_24F92B868();
  (*(v18 + 8))(v20, v17);
  if (!v29)
  {
    v41 = v13;
    v42 = v10;
    swift_beginAccess();
    v43 = *(v6 + 136);
    if (*(v43 + 16))
    {

      v44 = sub_24E76D644(v83, v84);
      v33 = v21;
      if (v45)
      {
        v34 = v22;
        v46 = *(v22 + 16);
        v47 = *(v43 + 56) + *(v22 + 72) * v44;
        v48 = v13;
        v46(v13, v47, v33);
        v49 = 0;
      }

      else
      {
        v49 = 1;
        v34 = v22;
        v48 = v41;
      }
    }

    else
    {
      v49 = 1;
      v33 = v21;
      v34 = v22;
      v48 = v41;
    }

    v50 = *(v34 + 56);
    v50(v48, v49, 1, v33);
    if ((*(v34 + 48))(v48, 1, v33))
    {
      sub_24E601704(v48, &qword_27F223218);
      v51 = *(v34 + 16);
    }

    else
    {
      v51 = *(v34 + 16);
      v52 = v74;
      v51(v74, v48, v33);
      sub_24E601704(v48, &qword_27F223218);
      sub_24F92B8D8();
      (*(v34 + 8))(v52, v33);
    }

    v53 = v81;
    v51(v42, v81, v33);
    v50(v42, 0, 1, v33);
    swift_beginAccess();
    v54 = v84;

    sub_24E98866C(v42, v83, v54);
    swift_endAccess();
    v55 = 0;
    v57 = v76;
    v56 = v77;
    goto LABEL_32;
  }

  swift_beginAccess();
  v30 = *(v6 + 144);
  v31 = v81;
  v32 = v75;
  v33 = v21;
  v34 = v22;
  if (*(v30 + 16))
  {

    v35 = sub_24E76D644(v32, v29);
    if (v36)
    {
      v37 = *(*(v30 + 56) + 8 * v35);

      if (*(v37 + 16))
      {
        v38 = sub_24E76D644(v83, v84);
        v39 = v73;
        if (v40)
        {
          (*(v22 + 16))(v73, *(v37 + 56) + *(v22 + 72) * v38, v33);
          v30 = 0;
        }

        else
        {
          v30 = 1;
        }
      }

      else
      {
        v30 = 1;
        v39 = v73;
      }

      (*(v22 + 56))(v39, v30, 1, v33);
      if ((*(v22 + 48))(v39, 1, v33))
      {
        sub_24E601704(v39, &qword_27F223218);
      }

      else
      {
        v58 = v74;
        (*(v22 + 16))(v74, v39, v33);
        sub_24E601704(v39, &qword_27F223218);
        sub_24F92B8D8();
        (*(v22 + 8))(v58, v33);
      }
    }

    else
    {
    }
  }

  v59 = *(v22 + 16);
  v60 = v82;
  v53 = v31;
  v59(v82, v31, v33);
  (*(v34 + 56))(v60, 0, 1, v33);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(v6 + 144);
  v62 = v85;
  *(v6 + 144) = 0x8000000000000000;
  v64 = sub_24E76D644(v32, v29);
  v65 = *(v62 + 16);
  v66 = (v63 & 1) == 0;
  v67 = v65 + v66;
  if (__OFADD__(v65, v66))
  {
    __break(1u);
    goto LABEL_34;
  }

  LOBYTE(v30) = v63;
  if (*(v62 + 24) >= v67)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

LABEL_34:
    sub_24E8ADC08();
    v62 = v85;
    goto LABEL_28;
  }

  sub_24E898D30(v67, isUniquelyReferenced_nonNull_native);
  v62 = v85;
  v68 = sub_24E76D644(v32, v29);
  if ((v30 & 1) == (v69 & 1))
  {
    v64 = v68;
LABEL_28:
    v57 = v76;
    v56 = v77;
    *(v6 + 144) = v62;
    if (v30)
    {
    }

    else
    {
      v70 = sub_24E612510(MEMORY[0x277D84F90]);
      sub_24EC275F0(v64, v75, v29, v70, v62);
    }

    v71 = v84;

    sub_24E98866C(v82, v83, v71);
    swift_endAccess();
    v55 = sub_24F5EA3B0;
LABEL_32:
    (*(v34 + 8))(v53, v33);
    (*(v79 + 32))(v56, v78, v57);
    return sub_24E824448(v55);
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

unint64_t sub_24F5EA3B0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E612510(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_24F5EA3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a1;
  v44 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223218);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v42 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  if (a4)
  {
    swift_beginAccess();
    v24 = *(v5 + 144);
    v25 = a3;
    if (*(v24 + 16))
    {

      v26 = sub_24E76D644(a3, a4);
      if (v27)
      {
        v28 = *(*(v24 + 56) + 8 * v26);

        if (*(v28 + 16) && (v29 = sub_24E76D644(v43, v44), (v30 & 1) != 0))
        {
          (*(v9 + 16))(v23, *(v28 + 56) + *(v9 + 72) * v29, v8);
          v31 = 0;
        }

        else
        {
          v31 = 1;
        }

        (*(v9 + 56))(v23, v31, 1, v8);
        if ((*(v9 + 48))(v23, 1, v8))
        {
          sub_24E601704(v23, &qword_27F223218);
        }

        else
        {
          (*(v9 + 16))(v11, v23, v8);
          sub_24E601704(v23, &qword_27F223218);
          sub_24F92B8D8();
          (*(v9 + 8))(v11, v8);
        }
      }

      else
      {
      }
    }

    v39 = sub_24F5E5EF4();
    v40 = sub_24F4D61D0(v45, v25, a4);
    if (*v41)
    {
      sub_24E98EFC0(v43, v44, v21);
      sub_24E601704(v21, &qword_27F223218);
      (v40)(v45, 0);
      return (v39)(v46, 0);
    }

    else
    {
      (v40)(v45, 0);
      (v39)(v46, 0);
      (*(v9 + 56))(v21, 1, 1, v8);
      return sub_24E601704(v21, &qword_27F223218);
    }
  }

  else
  {
    swift_beginAccess();
    v32 = *(v5 + 136);
    if (*(v32 + 16))
    {

      v34 = v43;
      v33 = v44;
      v35 = sub_24E76D644(v43, v44);
      if (v36)
      {
        (*(v9 + 16))(v18, *(v32 + 56) + *(v9 + 72) * v35, v8);
        v37 = 0;
      }

      else
      {
        v37 = 1;
      }
    }

    else
    {
      v37 = 1;
      v34 = v43;
      v33 = v44;
    }

    (*(v9 + 56))(v18, v37, 1, v8);
    if ((*(v9 + 48))(v18, 1, v8))
    {
      sub_24E601704(v18, &qword_27F223218);
    }

    else
    {
      (*(v9 + 16))(v11, v18, v8);
      sub_24E601704(v18, &qword_27F223218);
      sub_24F92B8D8();
      (*(v9 + 8))(v11, v8);
    }

    swift_beginAccess();
    sub_24E98EFC0(v34, v33, v15);
    sub_24E601704(v15, &qword_27F223218);
    return swift_endAccess();
  }
}

uint64_t sub_24F5EA95C(uint64_t a1)
{
  v2 = v1;
  v59 = sub_24F91F648();
  v4 = *(v59 - 8);
  v5 = MEMORY[0x28223BE20](v59);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = type metadata accessor for Challenge(0);
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v55 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  if (!v13)
  {
    return result;
  }

  v54 = *(result + 24);
  v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  swift_beginAccess();
  v52 = *(v10 + 72);
  v53 = (v4 + 16);
  v58 = (v4 + 8);
  v50 = v62;
  v49 = *MEMORY[0x277CBE640];
  v15 = v13 - 1;
  v48 = v8;
  while (1)
  {
    v18 = v55;
    sub_24F5EF690(v14, v55, type metadata accessor for Challenge);
    v20 = *v18;
    v19 = v18[1];
    (*v53)(v8, v18 + v54, v59);

    sub_24F5EF6F8(v18, type metadata accessor for Challenge);
    if (!*(*(v2 + 152) + 16))
    {
      break;
    }

    sub_24E76D644(v20, v19);
    if ((v21 & 1) == 0)
    {

      break;
    }

    result = (*v58)(v8, v59);
    if (!v15)
    {
      return result;
    }

LABEL_5:
    --v15;
    v14 += v52;
  }

  v56 = v15;
  v57 = v14;
  v22 = v51;
  sub_24F91F568();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v20;
  v24[3] = v19;
  v24[4] = v23;
  v25 = objc_allocWithZone(MEMORY[0x277CBEBB8]);

  v26 = sub_24F91F578();
  v62[2] = sub_24F5EFD10;
  v62[3] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  v62[0] = sub_24ECAEFC8;
  v62[1] = &block_descriptor_76_3;
  v27 = _Block_copy(aBlock);
  v28 = [v25 initWithFireDate:v26 interval:0 repeats:v27 block:0.0];
  _Block_release(v27);

  v29 = *v58;
  (*v58)(v22, v59);

  v30 = [objc_opt_self() mainRunLoop];
  [v30 addTimer:v28 forMode:v49];

  swift_beginAccess();

  v31 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(v2 + 152);
  v33 = v60;
  *(v2 + 152) = 0x8000000000000000;
  v35 = sub_24E76D644(v20, v19);
  v36 = v33[2];
  v37 = (v34 & 1) == 0;
  v38 = v36 + v37;
  if (!__OFADD__(v36, v37))
  {
    v39 = v34;
    if (v33[3] < v38)
    {
      sub_24E89B0F0(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_24E76D644(v20, v19);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_25;
      }

      v35 = v40;
      v42 = v60;
      if ((v39 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_3:
      v16 = v42[7];
      v17 = *(v16 + 8 * v35);
      *(v16 + 8 * v35) = v31;

LABEL_4:
      *(v2 + 152) = v42;
      swift_endAccess();

      v8 = v48;
      result = v29(v48, v59);
      v15 = v56;
      v14 = v57;
      if (!v56)
      {
        return result;
      }

      goto LABEL_5;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v42 = v60;
      if (v34)
      {
        goto LABEL_3;
      }
    }

    else
    {
      sub_24E8AEDB4();
      v42 = v60;
      if (v39)
      {
        goto LABEL_3;
      }
    }

LABEL_18:
    v42[(v35 >> 6) + 8] |= 1 << v35;
    v43 = (v42[6] + 16 * v35);
    *v43 = v20;
    v43[1] = v19;
    *(v42[7] + 8 * v35) = v31;
    v44 = v42[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_24;
    }

    v42[2] = v46;
    goto LABEL_4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24F5EAF14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(*(v2 + 152) + 16) || (, sub_24E76D644(a1, a2), v11 = v10, , (v11 & 1) == 0))
  {
    sub_24F91F568();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = v12;
    v14 = objc_allocWithZone(MEMORY[0x277CBEBB8]);
    v23 = a1;
    v15 = v14;

    v16 = sub_24F91F578();
    aBlock[4] = sub_24E7D0E80;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24ECAEFC8;
    aBlock[3] = &block_descriptor_164;
    v17 = _Block_copy(aBlock);
    v18 = [v15 initWithFireDate:v16 interval:0 repeats:v17 block:0.0];
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);

    v19 = [objc_opt_self() mainRunLoop];
    [v19 addTimer:v18 forMode:*MEMORY[0x277CBE640]];

    swift_beginAccess();

    v20 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v3 + 152);
    *(v3 + 152) = 0x8000000000000000;
    sub_24E81D024(v20, v23, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 152) = v24;
    swift_endAccess();
  }
}

uint64_t sub_24F5EB21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;

  sub_24EA998B8(0, 0, v9, &unk_24FA117D0, v11);
}

uint64_t sub_24F5EB344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F5EB3E4, 0, 0);
}

uint64_t sub_24F5EB3E4()
{
  v12 = v0;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24E7620D4(v5, v4, &v11);
    _os_log_impl(&dword_24E5DD000, v2, v3, "ChallengesUpdateNotifier firing scheduled end notification for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24F5EB5DC, Strong, 0);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24F5EB5DC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = sub_24F5EF52C(&qword_27F249DA0, type metadata accessor for ChallengesUpdateNotifier);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = 0;
  v7[5] = 0;
  v7[6] = v1;
  swift_retain_n();
  sub_24F1D3DA4(0, 0, v2, &unk_24FA117D8, v7);

  sub_24F5EC644(v4, v3, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24F5EB740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a3;
  v68 = a1;
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v54 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231660);
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v54 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40);
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  swift_beginAccess();
  v56 = v4;
  v17 = *(v4 + 120);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v59 = v9 + 16;
  v23 = (v9 + 32);
  v62 = v9;
  v63 = v17;
  v64 = (v9 + 8);
  v65 = (v7 + 8);

  v25 = 0;
  v60 = v16;
  v61 = v13;
  v58 = (v9 + 32);
  if (v21)
  {
    while (1)
    {
      v26 = v25;
LABEL_12:
      v29 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v30 = v29 | (v26 << 6);
      v31 = v62;
      v32 = (*(v63 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v36 = v70;
      v35 = v71;
      (*(v62 + 16))(v70, *(v63 + 56) + *(v62 + 72) * v30, v71);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DC8);
      v38 = *(v37 + 48);
      v39 = v61;
      *v61 = v34;
      *(v39 + 1) = v33;
      v13 = v39;
      v40 = v36;
      v23 = v58;
      (*(v31 + 32))(&v39[v38], v40, v35);
      (*(*(v37 - 8) + 56))(v13, 0, 1, v37);

      v28 = v26;
      v16 = v60;
LABEL_13:
      sub_24E6009C8(v13, v16, &qword_27F249DC0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DC8);
      if ((*(*(v41 - 8) + 48))(v16, 1, v41) == 1)
      {
        break;
      }

      v42 = v70;
      v43 = v71;
      (*v23)(v70, &v16[*(v41 + 48)], v71);
      v72 = v68;
      v73 = v69;

      v44 = v66;
      sub_24F92B8C8();
      (*v65)(v44, v67);
      result = (*v64)(v42, v43);
      v25 = v28;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    v46 = sub_24F92B858();
    v47 = *(*(v46 - 8) + 56);
    v48 = v54;
    v47(v54, 1, 1, v46);
    v49 = sub_24F5EF52C(&qword_27F249DA0, type metadata accessor for ChallengesUpdateNotifier);
    v50 = swift_allocObject();
    v51 = v56;
    v50[2] = v56;
    v50[3] = v49;
    v50[4] = 0;
    v50[5] = 0;
    v50[6] = v51;
    swift_retain_n();
    sub_24F1D3DA4(0, 0, v48, &unk_24FA117B8, v50);

    v47(v48, 1, 1, v46);
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = v49;
    v53 = v57;
    v52[4] = v55;
    v52[5] = v53;
    v52[6] = v51;
    swift_retain_n();

    sub_24F1D3DA4(0, 0, v48, &unk_24FA117C0, v52);
  }

  else
  {
LABEL_5:
    if (v22 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    else
    {
      v27 = v22;
    }

    v28 = v27 - 1;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DC8);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v21 = 0;
        goto LABEL_13;
      }

      v21 = *(v18 + 8 * v26);
      ++v25;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F5EBDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a3;
  v68 = a1;
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v54 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231660);
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v54 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40);
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  swift_beginAccess();
  v56 = v4;
  v17 = *(v4 + 128);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v59 = v9 + 16;
  v23 = (v9 + 32);
  v62 = v9;
  v63 = v17;
  v64 = (v9 + 8);
  v65 = (v7 + 8);

  v25 = 0;
  v60 = v16;
  v61 = v13;
  v58 = (v9 + 32);
  if (v21)
  {
    while (1)
    {
      v26 = v25;
LABEL_12:
      v29 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v30 = v29 | (v26 << 6);
      v31 = v62;
      v32 = (*(v63 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v36 = v70;
      v35 = v71;
      (*(v62 + 16))(v70, *(v63 + 56) + *(v62 + 72) * v30, v71);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DC8);
      v38 = *(v37 + 48);
      v39 = v61;
      *v61 = v34;
      *(v39 + 1) = v33;
      v13 = v39;
      v40 = v36;
      v23 = v58;
      (*(v31 + 32))(&v39[v38], v40, v35);
      (*(*(v37 - 8) + 56))(v13, 0, 1, v37);

      v28 = v26;
      v16 = v60;
LABEL_13:
      sub_24E6009C8(v13, v16, &qword_27F249DC0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DC8);
      if ((*(*(v41 - 8) + 48))(v16, 1, v41) == 1)
      {
        break;
      }

      v42 = v70;
      v43 = v71;
      (*v23)(v70, &v16[*(v41 + 48)], v71);
      v72 = v68;
      v73 = v69;

      v44 = v66;
      sub_24F92B8C8();
      (*v65)(v44, v67);
      result = (*v64)(v42, v43);
      v25 = v28;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    v46 = sub_24F92B858();
    v47 = *(*(v46 - 8) + 56);
    v48 = v54;
    v47(v54, 1, 1, v46);
    v49 = sub_24F5EF52C(&qword_27F249DA0, type metadata accessor for ChallengesUpdateNotifier);
    v50 = swift_allocObject();
    v51 = v56;
    v50[2] = v56;
    v50[3] = v49;
    v50[4] = 0;
    v50[5] = 0;
    v50[6] = v51;
    swift_retain_n();
    sub_24F1D3DA4(0, 0, v48, &unk_24FA11758, v50);

    v47(v48, 1, 1, v46);
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = v49;
    v53 = v57;
    v52[4] = v55;
    v52[5] = v53;
    v52[6] = v51;
    swift_retain_n();

    sub_24F1D3DA4(0, 0, v48, &unk_24FA11760, v52);
  }

  else
  {
LABEL_5:
    if (v22 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    else
    {
      v27 = v22;
    }

    v28 = v27 - 1;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DC8);
        (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
        v21 = 0;
        goto LABEL_13;
      }

      v21 = *(v18 + 8 * v26);
      ++v25;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F5EC458(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_24F92B858();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v10 = sub_24F5EF52C(&qword_27F249DA0, type metadata accessor for ChallengesUpdateNotifier);
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v10;
  v11[4] = 0;
  v11[5] = 0;
  v11[6] = v2;
  swift_retain_n();
  sub_24F1D3DA4(0, 0, v7, &unk_24FA11848, v11);

  v9(v7, 1, 1, v8);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = v10;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v2;
  swift_retain_n();

  sub_24F1D3DA4(0, 0, v7, &unk_24FA11850, v12);
}

void sub_24F5EC644(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28[-1] - v9;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v11 = sub_24F9220D8();
  __swift_project_value_buffer(v11, qword_27F39E778);

  v12 = sub_24F9220B8();
  v13 = sub_24F92BD98();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_24E7620D4(a1, a2, v28);
    _os_log_impl(&dword_24E5DD000, v12, v13, "ChallengesUpdateNotifier sendChallengeDetailUpdate send update for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x2530542D0](v15, -1, -1);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  swift_beginAccess();
  v16 = *(v4 + 112);
  if (*(v16 + 16))
  {

    v17 = sub_24E76D644(a1, a2);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      if (*(v19 + 16))
      {
        v20 = sub_24F92B858();
        (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
        v21 = sub_24F5EF52C(&qword_27F249DA0, type metadata accessor for ChallengesUpdateNotifier);
        v22 = swift_allocObject();
        *(v22 + 16) = v4;
        *(v22 + 24) = v21;
        *(v22 + 32) = v4;
        *(v22 + 40) = a1;
        *(v22 + 48) = a2;
        *(v22 + 56) = a3 & 1;
        *(v22 + 64) = v19;
        swift_retain_n();

        sub_24F1D3DA4(0, 0, v10, &unk_24FA11700, v22);

        return;
      }
    }
  }

  v23 = sub_24F9220B8();
  v24 = sub_24F92BD98();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_24E7620D4(a1, a2, &v27);
    _os_log_impl(&dword_24E5DD000, v23, v24, "ChallengesUpdateNotifier sendChallengeDetailUpdate no listeners for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530542D0](v26, -1, -1);
    MEMORY[0x2530542D0](v25, -1, -1);
  }
}

uint64_t sub_24F5ECA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 144) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DA8);
  *(v8 + 48) = v10;
  *(v8 + 56) = *(v10 - 8);
  *(v8 + 64) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130D8);
  *(v8 + 72) = v11;
  *(v8 + 80) = *(v11 - 8);
  *(v8 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DB0);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  type metadata accessor for ChallengeDetail(0);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F5ECBDC, a4, 0);
}

uint64_t sub_24F5ECBDC()
{
  v1 = *(*(v0 + 16) + 160);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_24F5ECC84;
  v3 = *(v0 + 120);
  v4 = *(v0 + 144);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);

  return sub_24F5ED498(v3, v5, v6, v4, v1);
}

uint64_t sub_24F5ECC84()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_24F5ED2B0;
  }

  else
  {
    v4 = sub_24F5ECDB0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F5ECDB0()
{
  if (qword_27F2113B8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[5];
  v49 = v0;
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "ChallengesUpdateNotifier sendChallengeDetailUpdate send update to %ld listener", v6, 0xCu);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v45 = v0[12];
  v7 = v0[10];
  v8 = v0[5];
  v9 = *(v8 + 64);
  v42 = v8 + 64;
  v10 = -1;
  v11 = -1 << *(v8 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & v9;
  v41 = (63 - v11) >> 6;
  v43 = v0[5];
  v48 = (v7 + 32);
  v44 = v0[10];
  v46 = (v7 + 8);
  v47 = (v0[7] + 8);

  for (i = 0; ; i = v0)
  {
    if (!v12)
    {
      if (v41 <= i + 1)
      {
        v16 = i + 1;
      }

      else
      {
        v16 = v41;
      }

      v0 = (v16 - 1);
      v15 = v49;
      while (1)
      {
        v14 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v14 >= v41)
        {
          v37 = v49[12];
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DB8);
          (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
          v12 = 0;
          goto LABEL_18;
        }

        v12 = *(v42 + 8 * v14);
        i = (i + 1);
        if (v12)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v14 = i;
    v15 = v49;
LABEL_17:
    v18 = v15[11];
    v17 = v15[12];
    v19 = v15[9];
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v21 = v20 | (v14 << 6);
    v22 = (*(v43 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    (*(v44 + 16))(v18, *(v43 + 56) + *(v44 + 72) * v21, v19);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DB8);
    v26 = *(v25 + 48);
    *v17 = v23;
    *(v45 + 8) = v24;
    v15 = v49;
    (*(v44 + 32))(&v17[v26], v18, v19);
    (*(*(v25 - 8) + 56))(v17, 0, 1, v25);

    v0 = v14;
LABEL_18:
    v27 = v15[13];
    sub_24E6009C8(v15[12], v27, &qword_27F249DB0);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DB8);
    v29 = (*(*(v28 - 8) + 48))(v27, 1, v28);
    v30 = v15[14];
    v31 = v15[15];
    v32 = v15[13];
    v33 = v15[8];
    if (v29 == 1)
    {
      break;
    }

    v34 = v15[11];
    v35 = v15[9];
    v36 = v15[6];

    (*v48)(v34, v32 + *(v28 + 48), v35);
    sub_24F5EF690(v31, v30, type metadata accessor for ChallengeDetail);
    sub_24F92B8C8();
    (*v47)(v33, v36);
    (*v46)(v34, v35);
  }

  sub_24F5EF6F8(v31, type metadata accessor for ChallengeDetail);

  v39 = v15[1];

  return v39();
}

uint64_t sub_24F5ED2B0()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesUpdateNotifier sendChallengeDetailUpdate fetch failed %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F5ED498(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 74) = a4;
  *(v5 + 96) = a3;
  *(v5 + 104) = a5;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v7 = swift_task_alloc();
  *(v5 + 112) = v7;
  *v7 = v5;
  v7[1] = sub_24F5ED560;

  return MEMORY[0x28217F228](v5 + 16, v6, v6);
}

uint64_t sub_24F5ED560()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E64A394;
  }

  else
  {
    v2 = sub_24F5ED674;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5ED674()
{
  v1 = *(v0 + 74);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  *(v0 + 73) = 1;
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  v7 = sub_24E72971C();
  *v6 = v0;
  v6[1] = sub_24E64E50C;
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);

  return MEMORY[0x28217F4B0](v9, v0 + 56, v8, &type metadata for ChallengeDetailDataIntent, v7, v4, v5);
}

uint64_t sub_24F5ED778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[28] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DD0);
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130C0);
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DD8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F5ED910, a6, 0);
}

uint64_t sub_24F5ED910()
{
  v28 = v0;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_24F9220D8();
  v0[41] = __swift_project_value_buffer(v2, qword_27F39E778);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v9 = v5 == 0;
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 7104878;
    }

    if (v9)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = v1;
    }

    v12 = sub_24E7620D4(v10, v11, &v27);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24E5DD000, v3, v4, "ChallengesUpdateNotifier sendHubDataUpdate send update bundle: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v13 = v0[30];
  if (v0[29])
  {
    swift_beginAccess();
    v14 = *(v13 + 144);
    if (*(v14 + 16))
    {
      v15 = v0[28];

      v16 = sub_24E76D644(v15, v1);
      if (v17)
      {
        v18 = *(*(v14 + 56) + 8 * v16);
        v0[42] = v18;

        if (*(v18 + 16))
        {
          v19 = *(v0[30] + 160);
          v20 = swift_task_alloc();
          v0[43] = v20;
          *v20 = v0;
          v20[1] = sub_24F5EDC80;
          v21 = v0[28];
          v22 = v0[29];
          v23 = (v0 + 12);
LABEL_18:

          return sub_24F5EEBC4(v23, v21, v22, v19);
        }
      }
    }
  }

  else
  {
    swift_beginAccess();
    if (*(*(v13 + 136) + 16))
    {
      v19 = *(v0[30] + 160);
      v24 = swift_task_alloc();
      v0[45] = v24;
      *v24 = v0;
      v24[1] = sub_24F5EE274;
      v23 = (v0 + 2);
      v21 = 0;
      v22 = 0;
      goto LABEL_18;
    }
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_24F5EDC80()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);

    v4 = sub_24F5EE884;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 240);
    v4 = sub_24F5EDDA8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

void sub_24F5EDDA8()
{
  v44 = v0[13];
  v45 = v0[12];
  v46 = v0[14];
  v47 = v0[15];
  v48 = v0[16];

  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[42];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_24E5DD000, v1, v2, "ChallengesUpdateNotifier sendHubDataUpdate send update to %ld listener", v5, 0xCu);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v6 = 0;
  v7 = v0[42];
  v8 = *(v7 + 64);
  v37 = v7 + 64;
  v9 = -1;
  v41 = v0[42];
  v10 = -1 << *(v41 + 32);
  v40 = v0[39];
  v11 = v0[35];
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v12 = v9 & v8;
  v36 = (63 - v10) >> 6;
  v49 = (v11 + 32);
  v39 = v0[35];
  v42 = (v11 + 8);
  v43 = (v0[32] + 8);
  v38 = v0;
  if ((v9 & v8) != 0)
  {
    while (1)
    {
      v13 = v6;
LABEL_15:
      v16 = v0[39];
      v17 = v0[36];
      v18 = v0[34];
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v20 = v19 | (v13 << 6);
      v21 = (*(v41 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      (*(v39 + 16))(v17, *(v41 + 56) + *(v39 + 72) * v20, v18);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DE0);
      v25 = *(v24 + 48);
      *v16 = v22;
      v0 = v38;
      *(v40 + 8) = v23;
      (*(v39 + 32))(&v16[v25], v17, v18);
      (*(*(v24 - 8) + 56))(v16, 0, 1, v24);

      v15 = v13;
LABEL_16:
      v26 = v0[40];
      sub_24E6009C8(v0[39], v26, &qword_27F249DD8);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DE0);
      if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
      {
        break;
      }

      v28 = v0[40];
      v29 = v0[36];
      v31 = v0[33];
      v30 = v0[34];
      v32 = v0[31];

      (*v49)(v29, v28 + *(v27 + 48), v30);
      v0[17] = v45;
      v0[18] = v44;
      v0[19] = v46;
      v0[20] = v47;
      v0[21] = v48;

      sub_24F92B8C8();
      (*v43)(v31, v32);
      (*v42)(v29, v30);
      v6 = v15;
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    v35 = v0[1];

    v35();
  }

  else
  {
LABEL_8:
    if (v36 <= v6 + 1)
    {
      v14 = v6 + 1;
    }

    else
    {
      v14 = v36;
    }

    v15 = v14 - 1;
    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v36)
      {
        v33 = v0[39];
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DE0);
        (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
        v12 = 0;
        goto LABEL_16;
      }

      v12 = *(v37 + 8 * v13);
      ++v6;
      if (v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24F5EE274()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_24F5EEA24;
  }

  else
  {
    v4 = sub_24F5EE3A0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F5EE3A0()
{
  v45 = v0[3];
  v46 = v0[2];
  v47 = v0[4];
  v48 = v0[5];
  v49 = v0[6];

  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[30];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(*(v4 + 136) + 16);

    _os_log_impl(&dword_24E5DD000, v1, v2, "ChallengesUpdateNotifier sendHubDataUpdate send update to %ld listener", v5, 0xCu);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v41 = v0[37];
  v6 = v0[35];
  v7 = *(v0[30] + 136);
  v8 = *(v7 + 64);
  v38 = v7 + 64;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v8;
  v37 = (63 - v10) >> 6;
  v50 = (v6 + 32);
  v40 = v0[35];
  v43 = (v6 + 8);
  v44 = (v0[32] + 8);
  v42 = *(v0[30] + 136);

  v13 = 0;
  v39 = v0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_15:
      v18 = v0[36];
      v17 = v0[37];
      v19 = v0[34];
      v20 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v21 = v20 | (v14 << 6);
      v22 = (*(v42 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      (*(v40 + 16))(v18, *(v42 + 56) + *(v40 + 72) * v21, v19);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DE0);
      v26 = *(v25 + 48);
      *v17 = v23;
      v0 = v39;
      *(v41 + 8) = v24;
      (*(v40 + 32))(&v17[v26], v18, v19);
      (*(*(v25 - 8) + 56))(v17, 0, 1, v25);

      v16 = v14;
LABEL_16:
      v27 = v0[38];
      sub_24E6009C8(v0[37], v27, &qword_27F249DD8);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DE0);
      if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
      {
        break;
      }

      v29 = v0[38];
      v30 = v0[36];
      v32 = v0[33];
      v31 = v0[34];
      v33 = v0[31];

      (*v50)(v30, v29 + *(v28 + 48), v31);
      v0[7] = v46;
      v0[8] = v45;
      v0[9] = v47;
      v0[10] = v48;
      v0[11] = v49;

      sub_24F92B8C8();
      (*v44)(v32, v33);
      result = (*v43)(v30, v31);
      v13 = v16;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    v36 = v0[1];

    return v36();
  }

  else
  {
LABEL_8:
    if (v37 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = v37;
    }

    v16 = v15 - 1;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v37)
      {
        v34 = v0[37];
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DE0);
        (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
        v11 = 0;
        goto LABEL_16;
      }

      v11 = *(v38 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F5EE884()
{
  v1 = *(v0 + 352);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "ChallengesUpdateNotifier sendHubDataUpdate fetch failed %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24F5EEA24()
{
  v1 = *(v0 + 368);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "ChallengesUpdateNotifier sendHubDataUpdate fetch failed %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24F5EEBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  v4[20] = v6;
  *v6 = v4;
  v6[1] = sub_24F5EEC88;

  return MEMORY[0x28217F228](v4 + 2, v5, v5);
}

uint64_t sub_24F5EEC88()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24F5EF29C;
  }

  else
  {
    v2 = sub_24F5EED9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5EED9C()
{
  *(v0 + 176) = sub_24F92B7F8();
  *(v0 + 184) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F5EEE34, v2, v1);
}

uint64_t sub_24F5EEE34()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 192) = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_24F5EEEBC, 0, 0);
}

uint64_t sub_24F5EEEBC()
{
  *(v0 + 200) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F5EEF48, v2, v1);
}

uint64_t sub_24F5EEF48()
{
  v1 = v0[24];

  swift_getKeyPath();
  v0[15] = v1;
  sub_24F5EF52C(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[26] = *v2;
  v0[27] = v2[1];

  return MEMORY[0x2822009F8](sub_24F5EF064, 0, 0);
}

uint64_t sub_24F5EF064()
{
  v10 = *(v0 + 208);
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 56) = v10;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  v6 = sub_24E653EA8();
  *v5 = v0;
  v5[1] = sub_24F5EF174;
  v7 = *(v0 + 152);
  v8 = *(v0 + 128);

  return MEMORY[0x28217F4B0](v8, v0 + 56, v7, &type metadata for ChallengesHubDataIntent, v6, v3, v4);
}

uint64_t sub_24F5EF174()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24F5EF2B4;
  }

  else
  {

    v2 = sub_24E654190;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5EF2B4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F5EF32C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F5EF37C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24F5ECA20(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24F5EF45C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24F5ED778(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24F5EF52C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F5EF574()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F5EF5C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24F5EB344(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24F5EF690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5EF6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_58Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24F5EF798()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F5EF7E8(uint64_t a1)
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
  v10[1] = sub_24E6541E4;

  return sub_24F5E65B8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24F5EF8BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F5EF8FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F5E7560(a1, v4, v5, v6);
}

uint64_t sub_24F5EF9B0()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F5EFA74(uint64_t a1)
{
  v4 = *(sub_24F91F6B8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F5E6178(a1, v6, v7, v1 + v5);
}

uint64_t sub_24F5EFB64(uint64_t a1, double a2)
{
  swift_defaultActor_initialize();
  v5 = MEMORY[0x277D84F98];
  *(v2 + 112) = MEMORY[0x277D84F98];
  *(v2 + 120) = v5;
  *(v2 + 128) = v5;
  *(v2 + 136) = v5;
  *(v2 + 144) = v5;
  *(v2 + 152) = v5;
  sub_24F91F6A8();
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;

  sub_24F5E63E4();
  return v2;
}

uint64_t sub_24F5EFBD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24F5ED778(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_30Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24F5EFD18()
{
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v0 = qword_27F24F280;
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_24F92B0D8();
    v4 = v3;

    qword_27F39E708 = v2;
    unk_27F39E710 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24F5EFE80()
{
  v0 = sub_24F9220D8();
  __swift_allocate_value_buffer(v0, qword_27F39E7A8);
  __swift_project_value_buffer(v0, qword_27F39E7A8);
  if (qword_27F211390 != -1)
  {
    swift_once();
  }

  return sub_24F9220C8();
}

uint64_t sub_24F5F00B4()
{
  v0 = sub_24F9220D8();
  __swift_allocate_value_buffer(v0, qword_27F39E8B0);
  __swift_project_value_buffer(v0, qword_27F39E8B0);
  if (qword_27F211390 != -1)
  {
    swift_once();
  }

  return sub_24F9220C8();
}

uint64_t sub_24F5F0170()
{
  v0 = sub_24F9220D8();
  __swift_allocate_value_buffer(v0, qword_27F39E8C8);
  __swift_project_value_buffer(v0, qword_27F39E8C8);
  if (qword_27F211390 != -1)
  {
    swift_once();
  }

  return sub_24F9220C8();
}

uint64_t sub_24F5F02FC()
{
  v0 = sub_24F9220D8();
  __swift_allocate_value_buffer(v0, qword_27F39E970);
  __swift_project_value_buffer(v0, qword_27F39E970);
  if (qword_27F211390 != -1)
  {
    swift_once();
  }

  return sub_24F9220C8();
}

uint64_t sub_24F5F03E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24F9220D8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27F211390 != -1)
  {
    swift_once();
  }

  return sub_24F9220C8();
}

uint64_t sub_24F5F0498()
{
  v0 = sub_24F9220D8();
  __swift_allocate_value_buffer(v0, qword_27F39E9A0);
  __swift_project_value_buffer(v0, qword_27F39E9A0);
  if (qword_27F211390 != -1)
  {
    swift_once();
  }

  return sub_24F9220C8();
}

uint64_t sub_24F5F0568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeaderPresentation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_24F5F064C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeaderPresentation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = a2;
  }

  return result;
}

void sub_24F5F072C()
{
  sub_24E746BEC(319, &qword_27F2362D0);
  if (v0 <= 0x3F)
  {
    sub_24E746BEC(319, &qword_27F215590);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HeaderPresentation(319);
      if (v2 <= 0x3F)
      {
        sub_24E8EA41C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F5F08A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249E80);
  MEMORY[0x28223BE20](v99);
  v4 = &v76 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249E68);
  MEMORY[0x28223BE20](v96);
  v93 = &v76 - v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249E78);
  MEMORY[0x28223BE20](v98);
  v78 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v76 - v8;
  v9 = sub_24F924848();
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x28223BE20](v9);
  v82 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249E58);
  MEMORY[0x28223BE20](v92);
  v79 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = &v76 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249E88);
  MEMORY[0x28223BE20](v94);
  v15 = &v76 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249E90);
  MEMORY[0x28223BE20](v89);
  v90 = &v76 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249E38);
  MEMORY[0x28223BE20](v95);
  v91 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249E48);
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130);
  MEMORY[0x28223BE20](v21 - 8);
  v86 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v85 = &v76 - v24;
  MEMORY[0x28223BE20](v25);
  v88 = &v76 - v26;
  MEMORY[0x28223BE20](v27);
  v87 = &v76 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v76 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DBA0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = (&v76 - v33);
  v35 = a1 + *(type metadata accessor for HeaderContentView(0) + 24);
  v36 = type metadata accessor for HeaderPresentation(0);
  sub_24E60169C(v35 + *(v36 + 32), v34, &qword_27F23DBA0);
  v37 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if ((*(*(v37 - 8) + 48))(v34, 1, v37) == 1)
  {
    v38 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    (*(*(v38 - 8) + 56))(v20, 1, 1, v38);
    sub_24F5F16D4(&v20[*(v18 + 36)]);
    v39 = &qword_27F249E48;
    sub_24E60169C(v20, v4, &qword_27F249E48);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F249E70, &qword_27F249E78);
    sub_24E602068(&qword_27F249E40, &qword_27F249E48);
    v40 = v93;
    sub_24F924E28();
    sub_24E60169C(v40, v15, &qword_27F249E68);
    swift_storeEnumTagMultiPayload();
    sub_24F601144();
    sub_24F601228();
    sub_24F924E28();
    sub_24E601704(v40, &qword_27F249E68);
    v41 = v20;
LABEL_17:
    v52 = v39;
    return sub_24E601704(v41, v52);
  }

  v42 = v98;
  v77 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v53 = *v34;
      v54 = *(a1 + 16);
      v55 = *(a1 + 24);
      v92 = v53;
      if (v55 == 1)
      {
        v56 = *&v54;
      }

      else
      {

        sub_24F92BDC8();
        v69 = sub_24F9257A8();
        sub_24F921FD8();

        v70 = v82;
        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E62A5EC(v54, 0);
        (*(v83 + 8))(v70, v84);
        v56 = v100;
      }

      v71 = sub_24E6B00B4(v56) < 4u;
      v72 = v78;
      sub_24F5F16D4(&v78[*(v42 + 40)]);
      *v72 = v92;
      *(v72 + 8) = v71;
      v39 = &qword_27F249E78;
      v73 = v80;
      sub_24E6009C8(v72, v80, &qword_27F249E78);
      sub_24E60169C(v73, v4, &qword_27F249E78);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F249E70, &qword_27F249E78);
      sub_24E602068(&qword_27F249E40, &qword_27F249E48);
      v74 = v93;
      sub_24F924E28();
      sub_24E60169C(v74, v15, &qword_27F249E68);
      swift_storeEnumTagMultiPayload();
      sub_24F601144();
      sub_24F601228();
      sub_24F924E28();
      sub_24E601704(v74, &qword_27F249E68);
      v41 = v73;
      goto LABEL_17;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
    v45 = v44[12];
    v46 = *(v34 + v44[16]);
    v47 = v87;
    sub_24E6009C8(v34, v87, &qword_27F223130);
    v48 = v88;
    sub_24E6009C8(v34 + v45, v88, &qword_27F223130);
    sub_24E60169C(v47, v85, &qword_27F223130);
    sub_24E60169C(v48, v86, &qword_27F223130);
    if (v46)
    {
      v49 = sub_24F927618();
    }

    else
    {
      v49 = sub_24F927628();
    }

    v57 = v49;
    v58 = v50;
    v59 = *(a1 + 16);
    if (*(a1 + 24) == 1)
    {
      v60 = *(a1 + 16);
    }

    else
    {

      sub_24F92BDC8();
      v61 = sub_24F9257A8();
      sub_24F921FD8();

      v62 = v82;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v59, 0);
      (*(v83 + 8))(v62, v84);
      v60 = v100;
    }

    v63 = sub_24E6B00B4(v60) < 4u;
    v99 = v44[20];
    v64 = v92;
    v65 = v79;
    sub_24F5F16D4(&v79[*(v92 + 48)]);
    sub_24E6009C8(v85, v65, &qword_27F223130);
    sub_24E6009C8(v86, v65 + v64[9], &qword_27F223130);
    v66 = (v65 + v64[10]);
    *v66 = v57;
    v66[1] = v58;
    *(v65 + v64[11]) = v63;
    v67 = v81;
    sub_24E6009C8(v65, v81, &qword_27F249E58);
    sub_24E60169C(v67, v90, &qword_27F249E58);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F249E40, &qword_27F249E48);
    sub_24E602068(&qword_27F249E50, &qword_27F249E58);
    v68 = v91;
    sub_24F924E28();
    sub_24E60169C(v68, v15, &qword_27F249E38);
    swift_storeEnumTagMultiPayload();
    sub_24F601144();
    sub_24F601228();
    sub_24F924E28();
    sub_24E601704(v68, &qword_27F249E38);
    sub_24E601704(v67, &qword_27F249E58);
    sub_24E601704(v88, &qword_27F223130);
    sub_24E601704(v87, &qword_27F223130);
    v52 = &qword_27F21C728;
    v41 = v34 + v99;
  }

  else
  {
    sub_24E6009C8(v34, v31, &qword_27F223130);
    sub_24E60169C(v31, v20, &qword_27F223130);
    sub_24F5F16D4(&v20[*(v77 + 36)]);
    sub_24E60169C(v20, v90, &qword_27F249E48);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F249E40, &qword_27F249E48);
    sub_24E602068(&qword_27F249E50, &qword_27F249E58);
    v51 = v91;
    sub_24F924E28();
    sub_24E60169C(v51, v15, &qword_27F249E38);
    swift_storeEnumTagMultiPayload();
    sub_24F601144();
    sub_24F601228();
    sub_24F924E28();
    sub_24E601704(v51, &qword_27F249E38);
    sub_24E601704(v20, &qword_27F249E48);
    v41 = v31;
    v52 = &qword_27F223130;
  }

  return sub_24E601704(v41, v52);
}

uint64_t sub_24F5F16D4@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for HeaderContentView.SubtitleLabel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v77 = &v60[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v75 = &v60[-v5];
  v6 = sub_24F924848();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60[-v9];
  v11 = type metadata accessor for HeaderPresentation(0);
  MEMORY[0x28223BE20](v11);
  v68 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = type metadata accessor for HeaderContentView.TitleLabel(0);
  MEMORY[0x28223BE20](v69);
  v74 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v60[-v15];
  MEMORY[0x28223BE20](v17);
  v73 = &v60[-v18];
  v67 = type metadata accessor for HeaderContentView.HeadingLabel(0);
  MEMORY[0x28223BE20](v67);
  v20 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249E98);
  MEMORY[0x28223BE20](v21);
  v23 = &v60[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249EA0);
  MEMORY[0x28223BE20](v24);
  v26 = &v60[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249EA8);
  MEMORY[0x28223BE20](v27 - 8);
  v70 = &v60[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v78 = &v60[-v30];
  v66 = type metadata accessor for HeaderContentView(0);
  v31 = *(v66 + 24);
  v71 = v1;
  v72 = v11;
  v32 = v1 + v31;
  v33 = *(v1 + v31 + *(v11 + 48));
  if (v33 == 2 || (v33 & 1) == 0)
  {
    sub_24E60169C(v32 + *(v11 + 20), v20, &qword_27F223138);
    sub_24F6014B0(v20, v23, type metadata accessor for HeaderContentView.HeadingLabel);
    swift_storeEnumTagMultiPayload();
    sub_24F60136C();
    sub_24F6030C0(&qword_27F249EC8, type metadata accessor for HeaderContentView.HeadingLabel);
    sub_24F924E28();
    sub_24F601580(v20, type metadata accessor for HeaderContentView.HeadingLabel);
  }

  else
  {
    v34 = sub_24F927608();
    v62 = v35;
    v61 = sub_24F9251C8();
    v36 = *(v24 + 36);
    v37 = *MEMORY[0x277CE13B8];
    v38 = sub_24F927748();
    (*(*(v38 - 8) + 104))(&v26[v36], v37, v38);
    *v26 = 0x402C000000000000;
    *(v26 + 1) = v34;
    *(v26 + 2) = v62;
    *(v26 + 6) = v61;
    sub_24E60169C(v26, v23, &qword_27F249EA0);
    swift_storeEnumTagMultiPayload();
    sub_24F60136C();
    sub_24F6030C0(&qword_27F249EC8, type metadata accessor for HeaderContentView.HeadingLabel);
    sub_24F924E28();
    sub_24E601704(v26, &qword_27F249EA0);
  }

  v39 = v68;
  sub_24F6014B0(v32, v68, type metadata accessor for HeaderPresentation);
  sub_24E60169C(v32, v10, &qword_27F223138);
  v40 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v41 = (*(*(v40 - 8) + 48))(v10, 1, v40);
  v42 = v71;
  if (v41 == 1)
  {
    sub_24E601704(v10, &qword_27F223138);
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
  }

  else
  {
    sub_24E60169C(&v10[*(v40 + 40)], &v79, &qword_27F213EA8);
    sub_24F601580(v10, type metadata accessor for HeaderPresentation.HeaderLabel);
    if (*(&v80 + 1))
    {
      sub_24E601704(&v79, qword_27F21B590);
      v43 = 1;
      goto LABEL_10;
    }
  }

  sub_24E601704(&v79, qword_27F21B590);
  sub_24E60169C(v42 + *(v66 + 28), &v79, qword_27F21B590);
  v43 = *(&v80 + 1) != 0;
  sub_24E601704(&v79, qword_27F21B590);
LABEL_10:
  v44 = sub_24F5F20C8();
  v45 = *(v42 + 16);
  if (*(v42 + 24) == 1)
  {
    v46 = *(v42 + 16);
  }

  else
  {

    sub_24F92BDC8();
    v47 = sub_24F9257A8();
    sub_24F921FD8();

    v48 = v63;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v45, 0);
    (*(v64 + 8))(v48, v65);
    v46 = *&v79;
  }

  v49 = sub_24E6B00B4(v46) < 4u;
  sub_24F601518(v39, v16, type metadata accessor for HeaderPresentation);
  v50 = v69;
  v16[*(v69 + 20)] = v43;
  v16[*(v50 + 24)] = v44 & 1;
  v16[*(v50 + 28)] = v49;
  v51 = v73;
  sub_24F601518(v16, v73, type metadata accessor for HeaderContentView.TitleLabel);
  v52 = v75;
  sub_24E60169C(v32 + *(v72 + 24), v75, &qword_27F223138);
  v53 = v78;
  v54 = v70;
  sub_24E60169C(v78, v70, &qword_27F249EA8);
  v55 = v74;
  sub_24F6014B0(v51, v74, type metadata accessor for HeaderContentView.TitleLabel);
  v56 = v77;
  sub_24F6014B0(v52, v77, type metadata accessor for HeaderContentView.SubtitleLabel);
  v57 = v76;
  sub_24E60169C(v54, v76, &qword_27F249EA8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F249ED0);
  sub_24F6014B0(v55, v57 + *(v58 + 48), type metadata accessor for HeaderContentView.TitleLabel);
  sub_24F6014B0(v56, v57 + *(v58 + 64), type metadata accessor for HeaderContentView.SubtitleLabel);
  sub_24F601580(v52, type metadata accessor for HeaderContentView.SubtitleLabel);
  sub_24F601580(v51, type metadata accessor for HeaderContentView.TitleLabel);
  sub_24E601704(v53, &qword_27F249EA8);
  sub_24F601580(v56, type metadata accessor for HeaderContentView.SubtitleLabel);
  sub_24F601580(v55, type metadata accessor for HeaderContentView.TitleLabel);
  return sub_24E601704(v54, &qword_27F249EA8);
}

uint64_t sub_24F5F20C8()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F210D28 != -1)
  {
    v10 = v3;
    swift_once();
    v3 = v10;
  }

  if (byte_27F39D1B1 == 1)
  {
    return *(v0 + *(type metadata accessor for HeaderContentView(0) + 32));
  }

  v7 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v7)
    {
      return 0;
    }

    return *(v0 + *(type metadata accessor for HeaderContentView(0) + 32));
  }

  v8 = v3;

  sub_24F92BDC8();
  v9 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v7, 0);
  (*(v2 + 8))(v5, v8);
  if ((v11[15] & 1) == 0)
  {
    return *(v0 + *(type metadata accessor for HeaderContentView(0) + 32));
  }

  return 0;
}

uint64_t sub_24F5F2284(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24A088);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_24F927108();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v5 = sub_24F927018();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v15[-v10];
  v16 = v3;
  v17 = v4;
  v18 = v1;
  sub_24F9249A8();
  sub_24F927008();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v8, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_24E7896B8(v11, v5, WitnessTable);
  return (v13)(v11, v5);
}

uint64_t sub_24F5F2494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeaderContentView.CompactView();
  sub_24E7896B8(a1 + *(v9 + 36), a2, a3);
  sub_24E7896B8(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_24F5F2590(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24A088);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_24F927108();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F927018();
  sub_24F924038();
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24A0A0);
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v5 = sub_24F927018();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v15[-v10];
  sub_24F924998();
  v16 = v3;
  v17 = v4;
  v18 = v1;
  sub_24F927008();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v8, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_24E7896B8(v11, v5, WitnessTable);
  return (v13)(v11, v5);
}

uint64_t sub_24F5F2850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v99 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A0A8);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v84 = (&v73 - v2);
  v81 = type metadata accessor for HeaderContentView.IconView(0);
  MEMORY[0x28223BE20](v81);
  v83 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v82 = &v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130);
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v73 - v7;
  v89 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v80 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A0A0);
  MEMORY[0x28223BE20](v94);
  v98 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v95 = &v73 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24A088);
  sub_24F927108();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_24F927018();
  v77 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v76 = &v73 - v14;
  v102 = v15;
  v16 = sub_24F924038();
  v79 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = &v73 - v20;
  v85 = WitnessTable;
  v21 = sub_24F927108();
  v74 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v24 = sub_24F924038();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v75 = &v73 - v29;
  v100 = v30;
  v92 = sub_24F924E38();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v86 = &v73 - v33;
  v34 = type metadata accessor for HeaderContentView.LargeView();
  v101 = v34;
  v35 = *(v103 + *(v34 + 44)) == 1;
  v87 = v21;
  if (v35)
  {
    v79 = v25;
    MEMORY[0x28223BE20](v34);
    sub_24F9270F8();
    v36 = v100;
    v71 = swift_getWitnessTable();
    sub_24F926948();
    (*(v74 + 8))(v23, v21);
    v106 = v71;
    v37 = MEMORY[0x277CDFC60];
    v107 = MEMORY[0x277CDFC60];
    v38 = swift_getWitnessTable();
    v39 = v75;
    sub_24E7896B8(v27, v36, v38);
    v40 = *(v79 + 8);
    v40(v27, v36);
    sub_24E7896B8(v39, v36, v38);
    v104 = swift_getWitnessTable();
    v105 = v37;
    swift_getWitnessTable();
    v41 = v86;
    sub_24ECCCBA0(v27, v36);
    v40(v27, v36);
    v40(v39, v36);
    v48 = v41;
  }

  else
  {
    MEMORY[0x28223BE20](v34);
    sub_24F9249A8();
    v42 = v76;
    sub_24F927008();
    v70 = v102;
    v72 = swift_getWitnessTable();
    sub_24F926948();
    (*(v77 + 8))(v42, v70);
    v117[4] = v72;
    v43 = MEMORY[0x277CDFC60];
    v117[5] = MEMORY[0x277CDFC60];
    v44 = swift_getWitnessTable();
    v45 = v78;
    sub_24E7896B8(v18, v16, v44);
    v46 = *(v79 + 8);
    v46(v18, v16);
    sub_24E7896B8(v45, v16, v44);
    v117[2] = swift_getWitnessTable();
    v117[3] = v43;
    v47 = v100;
    swift_getWitnessTable();
    v48 = v86;
    sub_24ECCCC98(v18, v47, v16);
    v46(v18, v16);
    v46(v45, v16);
  }

  v49 = v93;
  sub_24E60169C(v103 + *(v101 + 36), v93, &qword_27F223130);
  v50 = (*(v88 + 48))(v49, 1, v89);
  v51 = v95;
  if (v50 == 1)
  {
    sub_24E601704(v49, &qword_27F223130);
    v52 = 1;
  }

  else
  {
    v53 = v80;
    sub_24F601518(v49, v80, type metadata accessor for HeaderPresentation.HeaderIconType);
    v54 = v82;
    sub_24F6014B0(v53, v82, type metadata accessor for HeaderPresentation.HeaderIconType);
    *(v54 + *(v81 + 20)) = 2;
    v55 = v48;
    v56 = v83;
    sub_24F6014B0(v54, v83, type metadata accessor for HeaderContentView.IconView);
    v57 = v84;
    *v84 = 0;
    *(v57 + 8) = 1;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A0C0);
    sub_24F6014B0(v56, v57 + *(v58 + 48), type metadata accessor for HeaderContentView.IconView);
    sub_24F601580(v54, type metadata accessor for HeaderContentView.IconView);
    sub_24F601580(v53, type metadata accessor for HeaderPresentation.HeaderIconType);
    v59 = v56;
    v48 = v55;
    sub_24F601580(v59, type metadata accessor for HeaderContentView.IconView);
    sub_24E6009C8(v57, v51, &qword_27F24A0A8);
    v52 = 0;
  }

  (*(v96 + 56))(v51, v52, 1, v97);
  v60 = v91;
  v61 = v90;
  v62 = v92;
  (*(v91 + 16))(v90, v48, v92);
  v117[0] = v61;
  v63 = v48;
  v64 = v98;
  sub_24E60169C(v51, v98, &qword_27F24A0A0);
  v117[1] = v64;
  v116[0] = v62;
  v116[1] = v94;
  v112 = swift_getWitnessTable();
  v65 = MEMORY[0x277CDFC60];
  v113 = MEMORY[0x277CDFC60];
  v66 = swift_getWitnessTable();
  v110 = swift_getWitnessTable();
  v111 = v65;
  v67 = swift_getWitnessTable();
  v108 = v66;
  v109 = v67;
  v114 = swift_getWitnessTable();
  v115 = sub_24F60314C();
  sub_24F57BA64(v117, 2uLL, v116);
  sub_24E601704(v51, &qword_27F24A0A0);
  v68 = *(v60 + 8);
  v68(v63, v62);
  sub_24E601704(v64, &qword_27F24A0A0);
  return (v68)(v61, v62);
}

uint64_t sub_24F5F36F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v42 = a1;
  v37 = a3;
  v38 = a2;
  v4 = sub_24F927108();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v35 - v8;
  v9 = type metadata accessor for HeaderContentView.IconView(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A088);
  MEMORY[0x28223BE20](v35);
  v36 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  sub_24E60169C(v42, v15, &qword_27F223130);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24E601704(v15, &qword_27F223130);
    v24 = 1;
  }

  else
  {
    sub_24F601518(v15, v19, type metadata accessor for HeaderPresentation.HeaderIconType);
    sub_24F601518(v19, v12, type metadata accessor for HeaderPresentation.HeaderIconType);
    v12[*(v9 + 20)] = 2;
    sub_24F601518(v12, v23, type metadata accessor for HeaderContentView.IconView);
    v24 = 0;
  }

  (*(v10 + 56))(v23, v24, 1, v9);
  v26 = v37;
  v25 = v38;
  v27 = type metadata accessor for HeaderContentView.LargeView();
  v28 = v42;
  MEMORY[0x28223BE20](*(v42 + *(v27 + 40)));
  *(&v35 - 4) = v25;
  *(&v35 - 3) = v26;
  *(&v35 - 2) = v28;
  sub_24F9270F8();
  WitnessTable = swift_getWitnessTable();
  v30 = v40;
  sub_24E7896B8(v6, v4, WitnessTable);
  v31 = v39;
  v32 = *(v39 + 8);
  v32(v6, v4);
  v33 = v36;
  sub_24E60169C(v23, v36, &qword_27F24A088);
  v46[0] = v33;
  (*(v31 + 16))(v6, v30, v4);
  v46[1] = v6;
  v45[0] = v35;
  v45[1] = v4;
  v43 = sub_24F60300C();
  v44 = WitnessTable;
  sub_24F57BA64(v46, 2uLL, v45);
  v32(v30, v4);
  sub_24E601704(v23, &qword_27F24A088);
  v32(v6, v4);
  return sub_24E601704(v33, &qword_27F24A088);
}

uint64_t sub_24F5F3C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a2;
  v41 = a5;
  v36 = a4;
  v44 = a6;
  v45 = a1;
  v39 = a3;
  v6 = sub_24F927108();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v43 = &v35[-v10];
  v11 = type metadata accessor for HeaderContentView.IconView(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35[-v16];
  v18 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v35[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A088);
  MEMORY[0x28223BE20](v37);
  v38 = &v35[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v35[-v24];
  sub_24E60169C(v45, v17, &qword_27F223130);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_24E601704(v17, &qword_27F223130);
    v26 = 1;
  }

  else
  {
    sub_24F601518(v17, v21, type metadata accessor for HeaderPresentation.HeaderIconType);
    sub_24F601518(v21, v14, type metadata accessor for HeaderPresentation.HeaderIconType);
    v14[*(v11 + 20)] = v36;
    sub_24F601518(v14, v25, type metadata accessor for HeaderContentView.IconView);
    v26 = 0;
  }

  (*(v12 + 56))(v25, v26, 1, v11);
  v27 = sub_24F924C98();
  MEMORY[0x28223BE20](v27);
  v28 = v39;
  *&v35[-32] = v40;
  *&v35[-24] = v28;
  *&v35[-16] = v45;
  sub_24F9270F8();
  WitnessTable = swift_getWitnessTable();
  v30 = v43;
  sub_24E7896B8(v8, v6, WitnessTable);
  v31 = v42;
  v32 = *(v42 + 8);
  v32(v8, v6);
  v33 = v38;
  sub_24E60169C(v25, v38, &qword_27F24A088);
  v49[0] = v33;
  (*(v31 + 16))(v8, v30, v6);
  v49[1] = v8;
  v48[0] = v37;
  v48[1] = v6;
  v46 = sub_24F60300C();
  v47 = WitnessTable;
  sub_24F57BA64(v49, 2uLL, v48);
  v32(v30, v6);
  sub_24E601704(v25, &qword_27F24A088);
  v32(v8, v6);
  return sub_24E601704(v33, &qword_27F24A088);
}

uint64_t sub_24F5F40F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeaderContentView.LargeView();
  sub_24E7896B8(a1 + *(v9 + 48), a2, a3);
  sub_24E7896B8(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_24F5F41F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = MEMORY[0x277CE1180];
  v40 = MEMORY[0x277CE1180];
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24A0C8);
  v4 = *(a1 + 24);
  v25 = *(a1 + 16);
  v24 = v4;
  v42 = sub_24F927108();
  v43 = v3;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924038();
  v22 = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24A0C8);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924E38();
  v5 = sub_24F926DC8();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_24F924038();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v28 = v25;
  v29 = v24;
  v30 = v26;
  WitnessTable = swift_getWitnessTable();
  v39 = MEMORY[0x277CDF678];
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x277CDFC60];
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v34 = v15;
  v35 = v16;
  v17 = swift_getWitnessTable();
  sub_24F926DB8();
  sub_24F925828();
  v33 = v17;
  v18 = swift_getWitnessTable();
  sub_24F926A48();
  (*(v23 + 8))(v7, v5);
  v31 = v18;
  v32 = MEMORY[0x277CDF918];
  v19 = swift_getWitnessTable();
  sub_24E7896B8(v11, v8, v19);
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_24E7896B8(v14, v8, v19);
  return (v20)(v14, v8);
}

uint64_t sub_24F5F469C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v51 = a2;
  v53 = a1;
  v59 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24A0C8);
  v5 = sub_24F927108();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_24F927108();
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = v44 - v10;
  v78 = MEMORY[0x277CE1180];
  v79 = v4;
  v80 = v5;
  v81 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata();
  sub_24F927808();
  v44[1] = swift_getWitnessTable();
  v11 = sub_24F927018();
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v44 - v12;
  v60 = v14;
  v15 = sub_24F924038();
  v46 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v44 - v16;
  v58 = v18;
  v19 = sub_24F924038();
  v48 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v44 - v23;
  v54 = v6;
  v57 = sub_24F924E38();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = v44 - v25;
  LOBYTE(v25) = *(v53 + 8);
  v61 = v51;
  v62 = v52;
  v63 = v53;
  if (v25)
  {
    sub_24F924C88();
    sub_24F9270F8();
    v53 = v19;
    v26 = v8;
    v27 = v54;
    v28 = swift_getWitnessTable();
    v29 = v49;
    sub_24E7896B8(v26, v27, v28);
    v30 = *(v50 + 8);
    v30(v26, v27);
    sub_24E7896B8(v29, v27, v28);
    v76 = swift_getWitnessTable();
    v77 = MEMORY[0x277CDF678];
    v74 = swift_getWitnessTable();
    v31 = MEMORY[0x277CDFC60];
    v75 = MEMORY[0x277CDFC60];
    swift_getWitnessTable();
    v32 = v55;
    sub_24ECCCC98(v26, v53, v27);
    v30(v26, v27);
    v30(v29, v27);
  }

  else
  {
    sub_24F9249A8();
    sub_24F927008();
    sub_24F927618();
    v33 = v60;
    v34 = swift_getWitnessTable();
    sub_24F926938();
    (*(v45 + 8))(v13, v33);
    sub_24F927618();
    v66 = v34;
    v67 = MEMORY[0x277CDF678];
    v42 = v58;
    v43 = swift_getWitnessTable();
    sub_24F926948();
    (*(v46 + 8))(v17, v42);
    v64 = v43;
    v31 = MEMORY[0x277CDFC60];
    v65 = MEMORY[0x277CDFC60];
    v35 = swift_getWitnessTable();
    sub_24E7896B8(v21, v19, v35);
    v36 = *(v48 + 8);
    v36(v21, v19);
    sub_24E7896B8(v24, v19, v35);
    swift_getWitnessTable();
    v32 = v55;
    sub_24ECCCBA0(v21, v19);
    v36(v21, v19);
    v36(v24, v19);
  }

  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x277CDF678];
  v70 = swift_getWitnessTable();
  v71 = v31;
  v37 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v68 = v37;
  v69 = v38;
  v39 = v57;
  v40 = swift_getWitnessTable();
  sub_24E7896B8(v32, v39, v40);
  return (*(v56 + 8))(v32, v39);
}

uint64_t sub_24F5F4FE0@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_24F927108();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v14[-v6];
  type metadata accessor for HeaderContentView.ExtendedView();
  sub_24F5F52AC(&v30);
  v8 = v30;
  v9 = v31;
  v16 = v32;
  v15 = v33;
  sub_24F5F55E4();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v4, v1, WitnessTable);
  v18 = *(v2 + 8);
  v18(v4, v1);
  v27 = 0;
  v28 = 0;
  v30 = v8;
  v31 = v9;
  v32 = v16;
  v33 = v15;
  v29[0] = &v27;
  v29[1] = &v30;
  (*(v2 + 16))(v4, v7, v1);
  v25 = 0;
  v26 = 0;
  v29[2] = v4;
  v29[3] = &v25;
  sub_24F60324C();
  v10 = MEMORY[0x277CE1180];
  v24[0] = MEMORY[0x277CE1180];
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A0C8);
  v24[2] = v1;
  v24[3] = v10;
  v11 = MEMORY[0x277CE1170];
  v20 = MEMORY[0x277CE1170];
  v21 = sub_24F603284();
  v22 = WitnessTable;
  v23 = v11;
  sub_24F57BA64(v29, 4uLL, v24);
  sub_24F603368();
  v12 = v18;
  v18(v7, v1);
  v12(v4, v1);
  return sub_24F603368();
}

void sub_24F5F52AC(_OWORD *a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  v3 = *(v2 - 8);
  v22 = v2;
  v23 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v24 = *v1;
  v21 = *(v24 + 16);
  if (v21)
  {
    v9 = 0;
    v10 = v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    while (v9 < *(v24 + 16))
    {
      sub_24F6014B0(v10 + *(v23 + 72) * v9, v8, type metadata accessor for HeaderPresentation.HeaderIconType);
      sub_24F601518(v8, v5, type metadata accessor for HeaderPresentation.HeaderIconType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48)];
        v12 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        v15 = v11[3];
        v16 = v11[5];
        sub_24E601704(v5, &qword_27F213FB0);
        if (v15)
        {

          sub_24E6E8664(v12, v13, v14, v15);
          if (v16)
          {

            v25 = v24;
            v26 = 0x3FF0000000000000;
            v27 = sub_24F609600;
            v28 = 0;
            v29 = 0;
            goto LABEL_11;
          }
        }
      }

      else
      {
        sub_24F601580(v5, type metadata accessor for HeaderPresentation.HeaderIconType);
      }

      if (v21 == ++v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v25 = v24;
    v26 = 0x3FF0000000000000;
    v27 = sub_24F609600;
    v28 = 0;
    v29 = 1;
LABEL_11:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A0E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A0F0);
    sub_24E602068(&qword_27F24A0D8, &qword_27F24A0E0);
    sub_24E602068(&qword_27F24A0E8, &qword_27F24A0F0);
    sub_24F924E28();
    v17 = v31;
    v18 = v32;
    v19 = v20;
    *v20 = v30;
    v19[1] = v17;
    *(v19 + 32) = v18;
  }
}

uint64_t sub_24F5F5650@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_24F927108();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - v3;
  v5 = sub_24F924038();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  type metadata accessor for HeaderContentView.ExtendedView();
  sub_24F5F52AC(&v28);
  v20 = *(&v28 + 1);
  v21 = v28;
  v11 = v30;
  v19 = v29;
  v18 = v31;
  sub_24F5F55E4();
  sub_24F927628();
  WitnessTable = swift_getWitnessTable();
  sub_24F926948();
  (*(v2 + 8))(v4, v1);
  v27[2] = WitnessTable;
  v27[3] = MEMORY[0x277CDFC60];
  v16 = swift_getWitnessTable();
  sub_24E7896B8(v7, v5, v16);
  v12 = v22;
  v17 = *(v22 + 8);
  v17(v7, v5);
  *&v28 = v21;
  *(&v28 + 1) = v20;
  v29 = v19;
  v30 = v11;
  v31 = v18;
  v27[0] = &v28;
  (*(v12 + 16))(v7, v10, v5);
  v27[1] = v7;
  sub_24F60324C();
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A0C8);
  v26[1] = v5;
  v24 = sub_24F603284();
  v25 = v16;
  sub_24F57BA64(v27, 2uLL, v26);
  sub_24F603368();
  v13 = v17;
  v17(v10, v5);
  v13(v7, v5);
  return sub_24F603368();
}

uint64_t sub_24F5F59EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeaderContentView.ExtendedView();
  sub_24E7896B8(a1 + *(v9 + 40), a2, a3);
  sub_24E7896B8(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_24F5F5AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24F6014B0(a1, a2, type metadata accessor for HeaderPresentation.HeaderIconType);
  result = type metadata accessor for HeaderContentView.IconView(0);
  *(a2 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_24F5F5B3C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_24F924218();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  MEMORY[0x28223BE20](v2);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A278);
  MEMORY[0x28223BE20](v40);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A280);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A288);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v1, v14, &qword_27F223138);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24E601704(v14, &qword_27F223138);
    return (*(v10 + 56))(v48, 1, 1, v9);
  }

  else
  {
    v38 = v10;
    v39 = v9;
    sub_24F601518(v14, v18, type metadata accessor for HeaderPresentation.HeaderLabel);
    *v6 = sub_24F9249A8();
    *(v6 + 1) = 0x4010000000000000;
    v6[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A290);
    sub_24F5F61C0(v18, v1, &v6[*(v20 + 44)]);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A298);
    v22 = sub_24E602068(&qword_27F24A2A0, &qword_27F24A278);
    v23 = sub_24E6A4C1C();
    v24 = sub_24F604A60();
    v25 = v40;
    v36 = v21;
    v37 = v22;
    sub_24F926B08();
    sub_24E601704(v6, &qword_27F24A278);
    v26 = v18[*(v15 + 32)];
    if (v26 == 2 || (v26 & 1) == 0)
    {
      v49 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE58);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_24F93DE60;
      sub_24F924208();
      v49 = v27;
    }

    sub_24F6030C0(&qword_27F216C88, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
    sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
    v29 = v44;
    v28 = v45;
    sub_24F92C6A8();
    v30 = v48;
    v49 = v25;
    v50 = &type metadata for GameOverlayViewPredicate;
    v51 = v36;
    v52 = v37;
    v53 = v23;
    v54 = v24;
    swift_getOpaqueTypeConformance2();
    v31 = v41;
    v32 = v43;
    v33 = v47;
    sub_24F926AE8();
    (*(v46 + 8))(v29, v28);
    (*(v42 + 8))(v33, v32);
    v35 = v38;
    v34 = v39;
    (*(v38 + 32))(v30, v31, v39);
    (*(v35 + 56))(v30, 0, 1, v34);
    return sub_24F601580(v18, type metadata accessor for HeaderPresentation.HeaderLabel);
  }
}

uint64_t sub_24F5F61C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a2;
  v120 = a1;
  v134 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215280);
  MEMORY[0x28223BE20](v3 - 8);
  v133 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v132 = &v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DBA0);
  MEMORY[0x28223BE20](v7 - 8);
  v128 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = &v102 - v10;
  v125 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v127 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v117 = &v102 - v13;
  MEMORY[0x28223BE20](v14);
  v114 = &v102 - v15;
  v16 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v17 = v16 - 8;
  v107 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v108 = v18;
  v110 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for HeaderContentView.TitleLabel(0);
  v105 = *(v136 - 1);
  MEMORY[0x28223BE20](v136);
  v109 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v19;
  MEMORY[0x28223BE20](v20);
  v106 = &v102 - v21;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A2B0);
  MEMORY[0x28223BE20](v111);
  v135 = &v102 - v22;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A2B8);
  MEMORY[0x28223BE20](v115);
  v119 = &v102 - v23;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A2C0);
  MEMORY[0x28223BE20](v118);
  v126 = &v102 - v24;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A2C8);
  MEMORY[0x28223BE20](v121);
  v130 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v124 = &v102 - v27;
  MEMORY[0x28223BE20](v28);
  v129 = &v102 - v29;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A2D0);
  MEMORY[0x28223BE20](v102);
  v31 = &v102 - v30;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A2D8);
  v32 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v34 = &v102 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v102 - v36;
  v38 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v102 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A2E0);
  MEMORY[0x28223BE20](v42 - 8);
  v122 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v102 - v45;
  v47 = *(v17 + 28);
  v48 = v120;
  sub_24E60169C(&v120[v47], v37, &qword_27F223130);
  v112 = v39;
  v49 = *(v39 + 48);
  v113 = v38;
  if (v49(v37, 1, v38) == 1)
  {
    sub_24E601704(v37, &qword_27F223130);
    v50 = 1;
    v51 = v48;
  }

  else
  {
    sub_24F601518(v37, v41, type metadata accessor for HeaderPresentation.HeaderIconType);
    sub_24F6014B0(v41, v31, type metadata accessor for HeaderPresentation.HeaderIconType);
    v31[*(type metadata accessor for HeaderContentView.IconView(0) + 20)] = 1;
    v52 = sub_24F925198();
    v51 = v48;
    *&v31[*(v102 + 36)] = sub_24F5F72A0(v52);
    sub_24F60789C();
    sub_24F9265E8();
    sub_24E601704(v31, &qword_27F24A2D0);
    sub_24F601580(v41, type metadata accessor for HeaderPresentation.HeaderIconType);
    sub_24E6009C8(v34, v46, &qword_27F24A2D8);
    v50 = 0;
  }

  v53 = *(v32 + 56);
  v120 = v46;
  v53(v46, v50, 1, v103);
  v54 = v131;
  LODWORD(v103) = *(v131 + v136[5]);
  v55 = v106;
  sub_24F6014B0(v131, v106, type metadata accessor for HeaderContentView.TitleLabel);
  v56 = v110;
  sub_24F6014B0(v51, v110, type metadata accessor for HeaderPresentation.HeaderLabel);
  v57 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v58 = (v57 + v104 + *(v107 + 80)) & ~*(v107 + 80);
  v59 = swift_allocObject();
  sub_24F601518(v55, v59 + v57, type metadata accessor for HeaderContentView.TitleLabel);
  sub_24F601518(v56, v59 + v58, type metadata accessor for HeaderPresentation.HeaderLabel);
  v60 = v109;
  sub_24F6014B0(v54, v109, type metadata accessor for HeaderContentView.TitleLabel);
  v61 = swift_allocObject();
  sub_24F601518(v60, v61 + v57, type metadata accessor for HeaderContentView.TitleLabel);
  v138 = v103;
  v139 = sub_24F6062A8;
  v140 = v59;
  v141 = sub_24F607734;
  v142 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A2E8);
  sub_24F6077CC();
  v62 = v135;
  sub_24F9268B8();

  if (*(v54 + v136[7]))
  {
    v63 = 2;
  }

  else
  {
    v63 = 3;
  }

  KeyPath = swift_getKeyPath();
  v65 = v62 + *(v111 + 36);
  *v65 = KeyPath;
  *(v65 + 8) = v63;
  *(v65 + 16) = 0;
  v66 = *(type metadata accessor for HeaderPresentation(0) + 32);
  v67 = v116;
  sub_24E60169C(v54 + v66, v116, &qword_27F23DBA0);
  v68 = *(v123 + 48);
  v69 = v125;
  if (v68(v67, 1, v125) == 1)
  {
    v70 = v114;
    (*(v112 + 56))(v114, 1, 1, v113);
    swift_storeEnumTagMultiPayload();
    v71 = v68(v67, 1, v69);
    v72 = v119;
    v73 = v117;
    if (v71 != 1)
    {
      sub_24E601704(v67, &qword_27F23DBA0);
    }
  }

  else
  {
    v70 = v114;
    sub_24F601518(v67, v114, type metadata accessor for HeaderPresentation.HeaderStyle);
    v72 = v119;
    v73 = v117;
  }

  sub_24F601518(v70, v73, type metadata accessor for HeaderPresentation.HeaderStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v76 = *(v75 + 48);
      sub_24E601704(v73 + *(v75 + 80), &qword_27F21C728);
      v77 = v73 + v76;
      v62 = v135;
      sub_24E601704(v77, &qword_27F223130);
      sub_24E601704(v73, &qword_27F223130);
    }

    else
    {
      sub_24F601580(v73, type metadata accessor for HeaderPresentation.HeaderStyle);
    }

    v78 = 0.75;
  }

  else
  {
    sub_24E601704(v73, &qword_27F223130);
    v78 = 1.0;
  }

  v79 = swift_getKeyPath();
  sub_24E6009C8(v62, v72, &qword_27F24A2B0);
  v80 = (v72 + *(v115 + 36));
  *v80 = v79;
  *(v80 + 1) = v78;
  v81 = v128;
  sub_24E60169C(v54 + v66, v128, &qword_27F23DBA0);
  if (v68(v81, 1, v69) == 1)
  {
    v82 = v127;
    (*(v112 + 56))(v127, 1, 1, v113);
    swift_storeEnumTagMultiPayload();
    if (v68(v81, 1, v69) != 1)
    {
      sub_24E601704(v81, &qword_27F23DBA0);
    }
  }

  else
  {
    v82 = v127;
    sub_24F601518(v81, v127, type metadata accessor for HeaderPresentation.HeaderStyle);
  }

  v83 = sub_24F5F7C90();
  sub_24F601580(v82, type metadata accessor for HeaderPresentation.HeaderStyle);
  v84 = swift_getKeyPath();
  v85 = v126;
  sub_24E6009C8(v72, v126, &qword_27F24A2B8);
  v86 = v85 + *(v118 + 36);
  *v86 = v84;
  *(v86 + 8) = v83;
  v87 = v132;
  sub_24F5F7DF4(v132);
  v88 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
  v89 = v133;
  (*(*(v88 - 8) + 56))(v133, 1, 1, v88);
  LODWORD(v136) = *(v54 + v136[6]);
  v90 = v124;
  v91 = &v124[*(v121 + 36)];
  v92 = type metadata accessor for ToolbarTransitionViewModifier();
  sub_24E60169C(v87, &v91[v92[8]], &qword_27F215280);
  sub_24E60169C(v89, &v91[v92[9]], &qword_27F215280);
  *v91 = swift_getKeyPath();
  v91[8] = 0;
  v137 = 1;
  sub_24F926F28();
  v93 = v139;
  v91[16] = v138;
  *(v91 + 3) = v93;
  v137 = 1;
  sub_24F926F28();
  sub_24E601704(v89, &qword_27F215280);
  sub_24E601704(v87, &qword_27F215280);
  v94 = v139;
  v91[32] = v138;
  *(v91 + 5) = v94;
  *(v91 + 6) = 0x3F847AE147AE147BLL;
  v91[v92[10]] = v136;
  sub_24E6009C8(v85, v90, &qword_27F24A2C0);
  v95 = v129;
  sub_24E6009C8(v90, v129, &qword_27F24A2C8);
  v96 = v120;
  v97 = v122;
  sub_24E60169C(v120, v122, &qword_27F24A2E0);
  v98 = v130;
  sub_24E60169C(v95, v130, &qword_27F24A2C8);
  v99 = v134;
  sub_24E60169C(v97, v134, &qword_27F24A2E0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A2F8);
  sub_24E60169C(v98, v99 + *(v100 + 48), &qword_27F24A2C8);
  sub_24E601704(v95, &qword_27F24A2C8);
  sub_24E601704(v96, &qword_27F24A2E0);
  sub_24E601704(v98, &qword_27F24A2C8);
  return sub_24E601704(v97, &qword_27F24A2E0);
}

uint64_t sub_24F5F72A0(int a1)
{
  v3 = type metadata accessor for JSColor();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223128);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v25 - v11);
  v13 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  sub_24E60169C(v1 + *(v13 + 28), v12, &qword_27F223128);
  v14 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    LODWORD(v26) = a1;
    return sub_24F9238D8();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v12;
    v26 = MEMORY[0x277D84F90];
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = *(v3 + 24);
      v18 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v19 = *(v4 + 72);
      v20 = MEMORY[0x277D84F90];
      do
      {
        sub_24F6014B0(v18, v6, type metadata accessor for JSColor);
        v21 = *&v6[v17];

        v22 = sub_24F601580(v6, type metadata accessor for JSColor);
        if (v21)
        {
          MEMORY[0x253050F00](v22);
          if (*(v26 + 16) >= *(v26 + 24) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v20 = v26;
        }

        v18 += v19;
        --v16;
      }

      while (v16);
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    sub_24F9278B8();
    sub_24F9278C8();
    MEMORY[0x25304CD70](v20);
    sub_24F923BD8();
    return sub_24F9238D8();
  }

  sub_24F601518(v12, v9, type metadata accessor for JSColor);
  if (*&v9[*(v3 + 24)])
  {
    v26 = *&v9[*(v3 + 24)];
  }

  else
  {
    LODWORD(v26) = a1;
  }

  v24 = sub_24F9238D8();
  sub_24F601580(v9, type metadata accessor for JSColor);
  return v24;
}

uint64_t sub_24F5F764C(void *a1)
{
  v56 = sub_24F927748();
  v3 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v48 - v6;
  MEMORY[0x28223BE20](v7);
  v53 = &v48 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A308);
  MEMORY[0x28223BE20](v54);
  v55 = (&v48 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DBA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v48 - v11;
  v13 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v51 = *a1;
  v52 = a1;
  v20 = type metadata accessor for HeaderPresentation(0);
  sub_24E60169C(v1 + *(v20 + 32), v12, &qword_27F23DBA0);
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    v22 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
    swift_storeEnumTagMultiPayload();
    v23 = v21(v12, 1, v13);

    if (v23 != 1)
    {
      sub_24E601704(v12, &qword_27F23DBA0);
    }
  }

  else
  {
    sub_24F601518(v12, v19, type metadata accessor for HeaderPresentation.HeaderStyle);
  }

  sub_24F601518(v19, v16, type metadata accessor for HeaderPresentation.HeaderStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = v56;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v27 = *(v26 + 48);
      sub_24E601704(&v16[*(v26 + 80)], &qword_27F21C728);
      sub_24E601704(&v16[v27], &qword_27F223130);
      sub_24E601704(v16, &qword_27F223130);
    }

    else
    {
      sub_24F601580(v16, type metadata accessor for HeaderPresentation.HeaderStyle);
    }

    sub_24F925888();
    sub_24F9258E8();
  }

  else
  {
    sub_24E601704(v16, &qword_27F223130);
    sub_24F925988();
  }

  v28 = sub_24F925C98();
  v30 = v29;
  v32 = v31;
  v51 = v33;

  v34 = sub_24F925198();
  v35 = v52;
  v36 = sub_24F5F72A0(v34);
  v37 = *(v35 + *(type metadata accessor for HeaderPresentation.HeaderLabel(0) + 24));
  v38 = *(v3 + 104);
  if (v37 == 2)
  {
    v39 = v53;
    v40 = v25;
    v38(v53, *MEMORY[0x277CE13D8], v25);
    v41 = *(v3 + 32);
  }

  else
  {
    if (v37)
    {
      v42 = MEMORY[0x277CE13B0];
    }

    else
    {
      v42 = MEMORY[0x277CE13B8];
    }

    v43 = v50;
    v40 = v25;
    v38(v50, *v42, v25);
    v41 = *(v3 + 32);
    v44 = v49;
    v41(v49, v43, v40);
    v39 = v53;
    v41(v53, v44, v40);
  }

  v45 = v55;
  v41(v55 + *(v54 + 36), v39, v40);
  *v45 = v36;
  sub_24E602068(qword_27F24A310, &qword_27F24A308);
  v46 = sub_24F925C58();
  sub_24E600B40(v28, v30, v32 & 1);

  sub_24E601704(v45, &qword_27F24A308);
  return v46;
}

uint64_t sub_24F5F7C90()
{
  v1 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F6014B0(v0, v3, type metadata accessor for HeaderPresentation.HeaderStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v6 = v3[v5[16]];
      v7 = v5[12];
      sub_24E601704(&v3[v5[20]], &qword_27F21C728);
      sub_24E601704(&v3[v7], &qword_27F223130);
      sub_24E601704(v3, &qword_27F223130);
      return v6;
    }

    sub_24F601580(v3, type metadata accessor for HeaderPresentation.HeaderStyle);
  }

  else
  {
    sub_24E601704(v3, &qword_27F223130);
  }

  return 0;
}

uint64_t sub_24F5F7DF4@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v42 - v15);
  sub_24E60169C(v2, v9, &qword_27F223138);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &qword_27F223138);
    v18 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  sub_24F601518(v9, v16, type metadata accessor for HeaderPresentation.HeaderLabel);
  v20 = type metadata accessor for HeaderPresentation(0);
  v21 = *(v2 + *(v20 + 40));
  if (v21 != 2 && (v21 & 1) != 0)
  {
    sub_24E60169C(v2 + *(v20 + 20), v6, &qword_27F223138);
    if (v17(v6, 1, v10) != 1)
    {
      sub_24F601518(v6, v13, type metadata accessor for HeaderPresentation.HeaderLabel);
      v31 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
      v32 = v31[5];
      v33 = type metadata accessor for TransientToolbarItem(0);
      (*(*(v33 - 8) + 56))(&a1[v32], 1, 1, v33);
      v34 = &a1[v31[6]];
      v35 = v13[1];
      v36 = *v16;
      v37 = v16[1];
      *v34 = *v13;
      v34[1] = v35;
      v34[2] = v36;
      v34[3] = v37;
      swift_storeEnumTagMultiPayload();

      v38 = sub_24F927618();
      v40 = v39;
      sub_24F601580(v13, type metadata accessor for HeaderPresentation.HeaderLabel);
      sub_24F601580(v16, type metadata accessor for HeaderPresentation.HeaderLabel);
      *a1 = 1;
      v41 = &a1[v31[7]];
      *v41 = v38;
      v41[1] = v40;
      return (*(*(v31 - 1) + 56))(a1, 0, 1, v31);
    }

    sub_24E601704(v6, &qword_27F223138);
  }

  v22 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
  v23 = v22[5];
  v24 = type metadata accessor for TransientToolbarItem(0);
  (*(*(v24 - 8) + 56))(&a1[v23], 1, 1, v24);
  v25 = &a1[v22[6]];
  v26 = v16[1];
  *v25 = *v16;
  v25[1] = v26;
  swift_storeEnumTagMultiPayload();

  v27 = sub_24F927618();
  v29 = v28;
  sub_24F601580(v16, type metadata accessor for HeaderPresentation.HeaderLabel);
  *a1 = 1;
  v30 = &a1[v22[7]];
  *v30 = v27;
  v30[1] = v29;
  return (*(*(v22 - 1) + 56))(a1, 0, 1, v22);
}

uint64_t sub_24F5F827C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_24F924218();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A0F8);
  MEMORY[0x28223BE20](v42);
  v41 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A100);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A108);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v43 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v1, v12, &qword_27F223138);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24E601704(v12, &qword_27F223138);
    return (*(v8 + 56))(v50, 1, 1, v7);
  }

  else
  {
    v39 = v8;
    v40 = v7;
    sub_24F601518(v12, v16, type metadata accessor for HeaderPresentation.HeaderLabel);
    v18 = v41;
    sub_24F5F8970(v16, v1, v41);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A110);
    v20 = sub_24F6033AC();
    v21 = sub_24E6A4C1C();
    v22 = sub_24F60379C();
    v23 = v42;
    v24 = v19;
    v36 = v21;
    v37 = v20;
    sub_24F926B08();
    sub_24E601704(v18, &qword_27F24A0F8);
    v25 = v16[*(v13 + 32)];
    v38 = v16;
    if (v25 == 2 || (v25 & 1) == 0)
    {
      v51 = MEMORY[0x277D84F90];
      sub_24F6030C0(&qword_27F216C88, MEMORY[0x277CDFB98]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
      sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
      v28 = v46;
      v29 = v48;
      sub_24F92C6A8();
      v30 = v50;
      v26 = v47;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE58);
      v26 = v47;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_24F93DE60;
      sub_24F924208();
      v51 = v27;
      sub_24F6030C0(&qword_27F216C88, MEMORY[0x277CDFB98]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
      sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
      v28 = v46;
      v29 = v48;
      sub_24F92C6A8();
      v30 = v50;
    }

    v31 = v39;
    v51 = v23;
    v52 = &type metadata for GameOverlayViewPredicate;
    v53 = v24;
    v54 = v37;
    v55 = v36;
    v56 = v22;
    swift_getOpaqueTypeConformance2();
    v32 = v43;
    v33 = v45;
    v34 = v49;
    sub_24F926AE8();
    (*(v26 + 8))(v28, v29);
    (*(v44 + 8))(v34, v33);
    v35 = v40;
    (*(v31 + 32))(v30, v32, v40);
    (*(v31 + 56))(v30, 0, 1, v35);
    return sub_24F601580(v38, type metadata accessor for HeaderPresentation.HeaderLabel);
  }
}

uint64_t sub_24F5F8970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49[1] = a2;
  v59 = a3;
  v54 = sub_24F927748();
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = v49 - v7;
  MEMORY[0x28223BE20](v8);
  v52 = v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A148);
  MEMORY[0x28223BE20](v10);
  v12 = v49 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A138);
  MEMORY[0x28223BE20](v58);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v53 = v49 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A198);
  MEMORY[0x28223BE20](v56);
  v55 = v49 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A168);
  MEMORY[0x28223BE20](v57);
  v19 = v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223128);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (v49 - v21);
  v23 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  sub_24E60169C(a1 + *(v23 + 28), v22, &qword_27F223128);
  v24 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *v22;
      *v19 = sub_24F9249A8();
      *(v19 + 1) = 0x4010000000000000;
      v19[16] = 0;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1A0);
      sub_24F5F9220(a1, &v19[*(v26 + 44)]);
      v27 = sub_24F927618();
      v29 = v28;
      v30 = &v19[*(v57 + 36)];
      sub_24F5F8FB4(v25, a1, v30);

      v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A188) + 36));
      *v31 = v27;
      v31[1] = v29;
      sub_24E60169C(v19, v55, &qword_27F24A168);
      swift_storeEnumTagMultiPayload();
      sub_24F6034BC();
      sub_24F60362C();
      sub_24F924E28();
      v32 = v19;
      v33 = &qword_27F24A168;
      return sub_24E601704(v32, v33);
    }

    sub_24F601580(v22, type metadata accessor for JSColor);
  }

  *v12 = sub_24F9249A8();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1A0);
  sub_24F5F9220(a1, &v12[*(v34 + 44)]);
  v35 = sub_24F9251C8();
  *&v12[*(v10 + 36)] = sub_24F5F72A0(v35);
  v36 = *(a1 + *(v23 + 24));
  v37 = *(v4 + 104);
  if (v36 == 2)
  {
    v38 = v52;
    v39 = v54;
    v37(v52, *MEMORY[0x277CE13D8], v54);
    (*(v4 + 32))(&v14[*(v58 + 36)], v38, v39);
  }

  else
  {
    if (v36)
    {
      v40 = MEMORY[0x277CE13B0];
    }

    else
    {
      v40 = MEMORY[0x277CE13B8];
    }

    v41 = v51;
    v42 = v54;
    v37(v51, *v40, v54);
    v43 = *(v4 + 32);
    v44 = v50;
    v43(v50, v41, v42);
    v45 = v52;
    v43(v52, v44, v42);
    v43(&v14[*(v58 + 36)], v45, v42);
  }

  sub_24E6009C8(v12, v14, &qword_27F24A148);
  v46 = v14;
  v47 = v53;
  sub_24E6009C8(v46, v53, &qword_27F24A138);
  sub_24E60169C(v47, v55, &qword_27F24A138);
  swift_storeEnumTagMultiPayload();
  sub_24F6034BC();
  sub_24F60362C();
  sub_24F924E28();
  v32 = v47;
  v33 = &qword_27F24A138;
  return sub_24E601704(v32, v33);
}

double sub_24F5F8FB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for JSColor();
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  *&v27 = MEMORY[0x277D84F90];
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v7 + 24);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    do
    {
      sub_24F6014B0(v14, v10, type metadata accessor for JSColor);
      v16 = *&v10[v13];

      v17 = sub_24F601580(v10, type metadata accessor for JSColor);
      if (v16)
      {
        MEMORY[0x253050F00](v17);
        if (*(v27 + 16) >= *(v27 + 24) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
        v11 = v27;
      }

      v14 += v15;
      --v12;
    }

    while (v12);
  }

  sub_24F9278B8();
  sub_24F9278C8();
  MEMORY[0x25304CD70](v11);
  sub_24F923BD8();
  v18 = sub_24F927618();
  v20 = v19;
  v21 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1A8) + 36));
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1B0) + 36);
  *v22 = sub_24F9249A8();
  *(v22 + 1) = 0x4010000000000000;
  v22[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1A0);
  sub_24F5F9220(a2, &v22[*(v23 + 44)]);
  *v21 = v18;
  v21[1] = v20;
  result = *&v27;
  v25 = v28;
  *a3 = v27;
  *(a3 + 16) = v25;
  *(a3 + 32) = v29;
  return result;
}

uint64_t sub_24F5F9220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70);
  MEMORY[0x28223BE20](v41);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - v5;
  v6 = type metadata accessor for HeaderContentView.IconView(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A088);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v23 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  sub_24E60169C(a1 + *(v23 + 20), v12, &qword_27F223130);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24E601704(v12, &qword_27F223130);
    v24 = 1;
  }

  else
  {
    sub_24F601518(v12, v16, type metadata accessor for HeaderPresentation.HeaderIconType);
    sub_24F601518(v16, v9, type metadata accessor for HeaderPresentation.HeaderIconType);
    v9[*(v6 + 20)] = 0;
    sub_24F601518(v9, v22, type metadata accessor for HeaderContentView.IconView);
    v24 = 0;
  }

  (*(v7 + 56))(v22, v24, 1, v6);

  sub_24F925898();
  v25 = sub_24F925C98();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v44 = v25;
  v45 = v27;
  v46 = v29 & 1;
  v47 = v31;
  v32 = v40;
  sub_24F9268B8();
  sub_24E600B40(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  v34 = v32 + *(v41 + 36);
  *v34 = KeyPath;
  *(v34 + 8) = 1;
  *(v34 + 16) = 0;
  sub_24E60169C(v22, v19, &qword_27F24A088);
  v35 = v42;
  sub_24E60169C(v32, v42, &qword_27F214B70);
  v36 = v43;
  sub_24E60169C(v19, v43, &qword_27F24A088);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1B8);
  sub_24E60169C(v35, v36 + *(v37 + 48), &qword_27F214B70);
  sub_24E601704(v32, &qword_27F214B70);
  sub_24E601704(v22, &qword_27F24A088);
  sub_24E601704(v35, &qword_27F214B70);
  return sub_24E601704(v19, &qword_27F24A088);
}

double sub_24F5F9710@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926E08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24F921C08())
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v6 = sub_24F926E88();
    (*(v3 + 8))(v5, v2);
    v11 = v6;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
    sub_24E6E97A8();
    sub_24F924E28();
  }

  else
  {
    v11 = sub_24F926C98();
    v12 = 0;
    v13 = 0;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
    sub_24E6E97A8();
    sub_24F924E28();
  }

  result = *&v15;
  v8 = v16;
  v9 = v17;
  *a1 = v15;
  *(a1 + 16) = v8;
  *(a1 + 18) = v9;
  return result;
}

uint64_t sub_24F5F9914@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v2 = sub_24F924218();
  v3 = *(v2 - 8);
  v88 = v2;
  v89 = v3;
  MEMORY[0x28223BE20](v2);
  v87 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_24F927748();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v72 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v69 - v7;
  MEMORY[0x28223BE20](v8);
  v75 = &v69 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1C0);
  MEMORY[0x28223BE20](v73);
  v11 = &v69 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1C8);
  MEMORY[0x28223BE20](v90);
  v76 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1D0);
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x28223BE20](v13);
  v82 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1D8);
  v83 = *(v15 - 8);
  v84 = v15;
  MEMORY[0x28223BE20](v15);
  v81 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1E0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v80 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v79 = &v69 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v69 - v23;
  v25 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v29;
  sub_24E60169C(v1, v24, &qword_27F223138);
  if ((*(v26 + 48))(v24, 1, v30) == 1)
  {
    sub_24E601704(v24, &qword_27F223138);
    return (*(v18 + 56))(v91, 1, 1, v17);
  }

  else
  {
    v69 = v18;
    v70 = v17;
    sub_24F601518(v24, v28, type metadata accessor for HeaderPresentation.HeaderLabel);
    *v11 = sub_24F9249A8();
    *(v11 + 1) = 0x4000000000000000;
    v11[16] = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1E8);
    sub_24F5FA364(v28, v1, &v11[*(v32 + 44)]);
    v33 = sub_24F9251C8();
    *&v11[*(v73 + 36)] = sub_24F5F72A0(v33);
    v73 = v30;
    v34 = v28[*(v30 + 24)];
    v35 = v74;
    v36 = *(v74 + 104);
    v78 = v28;
    if (v34 == 2)
    {
      v37 = v75;
      v38 = v77;
      v36(v75, *MEMORY[0x277CE13D8], v77);
      v39 = *(v35 + 32);
    }

    else
    {
      if (v34)
      {
        v40 = MEMORY[0x277CE13B0];
      }

      else
      {
        v40 = MEMORY[0x277CE13B8];
      }

      v41 = v72;
      v38 = v77;
      v36(v72, *v40, v77);
      v39 = *(v35 + 32);
      v42 = v71;
      v39(v71, v41, v38);
      v37 = v75;
      v39(v75, v42, v38);
    }

    v43 = v82;
    v44 = v76;
    v39(&v76[*(v90 + 36)], v37, v38);
    sub_24E6009C8(v11, v44, &qword_27F24A1C0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A1F0);
    v46 = sub_24F60385C();
    v47 = sub_24E6A4C1C();
    v48 = sub_24F6039CC();
    sub_24F926B08();
    sub_24E601704(v44, &qword_27F24A1C8);
    v49 = v78[*(v73 + 32)];
    if (v49 == 2 || (v49 & 1) == 0)
    {
      v92 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE58);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_24F93DE60;
      sub_24F924208();
      v92 = v50;
    }

    sub_24F6030C0(&qword_27F216C88, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
    sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
    v52 = v87;
    v51 = v88;
    sub_24F92C6A8();
    v92 = v90;
    v93 = &type metadata for GameOverlayViewPredicate;
    v94 = v45;
    v95 = v46;
    v96 = v47;
    v97 = v48;
    swift_getOpaqueTypeConformance2();
    v53 = v81;
    v54 = v86;
    sub_24F926AE8();
    (*(v89 + 8))(v52, v51);
    (*(v85 + 8))(v43, v54);
    LOBYTE(v54) = sub_24F925818();
    sub_24F923318();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = v80;
    (*(v83 + 32))(v80, v53, v84);
    v64 = v70;
    v65 = &v63[*(v70 + 36)];
    *v65 = v54;
    *(v65 + 1) = v56;
    *(v65 + 2) = v58;
    *(v65 + 3) = v60;
    *(v65 + 4) = v62;
    v65[40] = 0;
    v66 = v63;
    v67 = v79;
    sub_24E6009C8(v66, v79, &qword_27F24A1E0);
    v68 = v91;
    sub_24E6009C8(v67, v91, &qword_27F24A1E0);
    (*(v69 + 56))(v68, 0, 1, v64);
    return sub_24F601580(v78, type metadata accessor for HeaderPresentation.HeaderLabel);
  }
}

uint64_t sub_24F5FA364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v137 = a2;
  v149 = a3;
  v150 = a1;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A220);
  MEMORY[0x28223BE20](v138);
  v140 = (&v127 - v3);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A228);
  MEMORY[0x28223BE20](v147);
  v141 = &v127 - v4;
  v139 = type metadata accessor for TextWithAffordance(0);
  MEMORY[0x28223BE20](v139);
  v129 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v133 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v134 = v7;
  v136 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeaderContentView.SubtitleLabel(0);
  v131 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v130 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v9;
  MEMORY[0x28223BE20](v10);
  v135 = &v127 - v11;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A230);
  MEMORY[0x28223BE20](v143);
  v144 = (&v127 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A238);
  MEMORY[0x28223BE20](v13 - 8);
  v148 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v146 = &v127 - v16;
  v17 = type metadata accessor for HeaderContentView.IconView(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v127 - v22;
  v24 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A088);
  MEMORY[0x28223BE20](v28 - 8);
  v145 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v127 - v31;
  *&v142 = v6;
  sub_24E60169C(v150 + *(v6 + 20), v23, &qword_27F223130);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_24E601704(v23, &qword_27F223130);
    v33 = 1;
  }

  else
  {
    sub_24F601518(v23, v27, type metadata accessor for HeaderPresentation.HeaderIconType);
    sub_24F601518(v27, v20, type metadata accessor for HeaderPresentation.HeaderIconType);
    v20[*(v17 + 20)] = 0;
    sub_24F601518(v20, v32, type metadata accessor for HeaderContentView.IconView);
    v33 = 0;
  }

  (*(v18 + 56))(v32, v33, 1, v17);
  v34 = v150;
  v35 = (v150 + *(v142 + 36));
  if (*(v35 + 9))
  {
    sub_24E60169C(v150 + *(v142 + 40), &v156, &qword_27F213EA8);
    v36 = *(&v157 + 1);
    sub_24E601704(&v156, qword_27F21B590);
    v128 = v32;
    if (v36)
    {
      v37 = v137;
      v38 = v135;
      sub_24F6014B0(v137, v135, type metadata accessor for HeaderContentView.SubtitleLabel);
      v39 = v136;
      sub_24F6014B0(v34, v136, type metadata accessor for HeaderPresentation.HeaderLabel);
      v40 = (*(v131 + 80) + 16) & ~*(v131 + 80);
      v41 = (v40 + v132 + *(v133 + 80)) & ~*(v133 + 80);
      v42 = swift_allocObject();
      sub_24F601518(v38, v42 + v40, type metadata accessor for HeaderContentView.SubtitleLabel);
      sub_24F601518(v39, v42 + v41, type metadata accessor for HeaderPresentation.HeaderLabel);
      v43 = v130;
      sub_24F6014B0(v37, v130, type metadata accessor for HeaderContentView.SubtitleLabel);
      v44 = swift_allocObject();
      sub_24F601518(v43, v44 + v40, type metadata accessor for HeaderContentView.SubtitleLabel);
      *&v151 = 1;
      *(&v151 + 1) = sub_24F6095E8;
      v152 = v42;
      v153 = sub_24F6095F4;
      v154 = v44;
      v155 = 0;
    }

    else
    {

      sub_24F9258D8();
      v86 = sub_24F925C98();
      v88 = v87;
      v90 = v89;

      sub_24F925938();
      v91 = sub_24F925B78();
      v93 = v92;
      v95 = v94;
      v97 = v96;
      sub_24E600B40(v86, v88, v90 & 1);

      *&v151 = v91;
      *(&v151 + 1) = v93;
      v152 = v95 & 1;
      v153 = v97;
      v154 = 0;
      v155 = 1;
    }

    sub_24E7C2074();
    sub_24F924E28();
    v98 = v157;
    v99 = v158;
    v100 = v159;
    v137 = v156;
    v142 = v157;
    v101 = v140;
    *v140 = v156;
    v101[1] = v98;
    *(v101 + 4) = v99;
    *(v101 + 40) = v100;
    v150 = v99;
    swift_storeEnumTagMultiPayload();
    v102 = v137;
    v103 = v142;
    sub_24F603A84(v137, *(&v137 + 1), v142, *(&v142 + 1), v99, v100);
    sub_24F603A84(v102, *(&v102 + 1), v103, *(&v103 + 1), v99, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A240);
    sub_24F6030C0(&qword_27F24A248, type metadata accessor for TextWithAffordance);
    sub_24F603AF0();
    v104 = v141;
    sub_24F924E28();
    sub_24E60169C(v104, v144, &qword_27F24A228);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A258);
    sub_24F603B7C();
    sub_24F603C08();
    v58 = v146;
    sub_24F924E28();
    v105 = v150;
    sub_24F603CC4(v102, *(&v102 + 1), v103, *(&v103 + 1), v150, v100);
    sub_24F603CC4(v102, *(&v102 + 1), v103, *(&v103 + 1), v105, v100);
    sub_24E601704(v104, &qword_27F24A228);
    v32 = v128;
  }

  else
  {
    v45 = *v35;
    if (v35[1])
    {
      if (v45)
      {
        *&v142 = type metadata accessor for HeaderContentView.SubtitleLabel;
        v46 = v137;
        v47 = v135;
        sub_24F6014B0(v137, v135, type metadata accessor for HeaderContentView.SubtitleLabel);
        v48 = v136;
        sub_24F6014B0(v34, v136, type metadata accessor for HeaderPresentation.HeaderLabel);
        v49 = (*(v131 + 80) + 16) & ~*(v131 + 80);
        v50 = (v49 + v132 + *(v133 + 80)) & ~*(v133 + 80);
        v51 = swift_allocObject();
        sub_24F601518(v47, v51 + v49, type metadata accessor for HeaderContentView.SubtitleLabel);
        sub_24F601518(v48, v51 + v50, type metadata accessor for HeaderPresentation.HeaderLabel);
        v52 = v130;
        sub_24F6014B0(v46, v130, v142);
        v53 = swift_allocObject();
        sub_24F601518(v52, v53 + v49, type metadata accessor for HeaderContentView.SubtitleLabel);
        *&v151 = 1;
        *(&v151 + 1) = sub_24F6095E8;
        v152 = v51;
        v153 = sub_24F604A34;
        v154 = v53;
        v155 = 1;
        sub_24E7C2074();

        sub_24F924E28();
        v54 = v158;
        v55 = v159;
        v56 = v157;
        v57 = v144;
        *v144 = v156;
        v57[1] = v56;
        *(v57 + 4) = v54;
        *(v57 + 40) = v55;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A258);
        sub_24F603B7C();
        sub_24F603C08();
        v58 = v146;
        sub_24F924E28();
      }

      else
      {

        sub_24F9258D8();
        v111 = sub_24F925C98();
        v113 = v112;
        v115 = v114;

        sub_24F925938();
        v116 = sub_24F925B78();
        v118 = v117;
        v120 = v119;
        v122 = v121;
        sub_24E600B40(v111, v113, v115 & 1);

        LOBYTE(v111) = v120 & 1;
        *&v151 = v116;
        *(&v151 + 1) = v118;
        v152 = v120 & 1;
        v153 = v122;
        v154 = 0;
        v155 = 0;
        sub_24E5FD138(v116, v118, v120 & 1);
        sub_24E7C2074();

        sub_24F924E28();
        v123 = v158;
        v124 = v159;
        v125 = v157;
        v126 = v144;
        *v144 = v156;
        v126[1] = v125;
        *(v126 + 4) = v123;
        *(v126 + 40) = v124;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A258);
        sub_24F603B7C();
        sub_24F603C08();
        v58 = v146;
        sub_24F924E28();
        sub_24E600B40(v116, v118, v111);
      }
    }

    else
    {
      v59 = v135;
      sub_24F6014B0(v137, v135, type metadata accessor for HeaderContentView.SubtitleLabel);
      v60 = v136;
      sub_24F6014B0(v34, v136, type metadata accessor for HeaderPresentation.HeaderLabel);
      v61 = (*(v131 + 80) + 16) & ~*(v131 + 80);
      v62 = (v132 + *(v133 + 80) + v61) & ~*(v133 + 80);
      v63 = swift_allocObject();
      sub_24F601518(v59, v63 + v61, type metadata accessor for HeaderContentView.SubtitleLabel);
      sub_24F601518(v60, v63 + v62, type metadata accessor for HeaderPresentation.HeaderLabel);
      KeyPath = swift_getKeyPath();
      v65 = v139;
      v66 = v129;
      *&v129[*(v139 + 24)] = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      *v66 = v45;
      v66[1] = sub_24F604510;
      v66[2] = v63;
      v67 = (v66 + v65[7]);
      type metadata accessor for TruncationState();
      v68 = swift_allocObject();
      *(v68 + 24) = 0u;
      *(v68 + 40) = 0u;
      sub_24F91FDB8();
      *(v68 + 16) = 0;
      *&v151 = v68;
      sub_24F926F28();
      v69 = *(&v156 + 1);
      *v67 = v156;
      v67[1] = v69;
      v70 = v66 + v65[8];
      LOBYTE(v151) = 0;
      sub_24F926F28();
      v71 = *(&v156 + 1);
      *v70 = v156;
      *(v70 + 1) = v71;
      v72 = v66 + v65[9];
      LOBYTE(v151) = 0;
      sub_24F926F28();
      v73 = *(&v156 + 1);
      *v72 = v156;
      *(v72 + 1) = v73;
      v74 = v66 + v65[10];
      v151 = xmmword_24FA11860;
      type metadata accessor for CGSize(0);
      sub_24F926F28();
      v75 = v157;
      *v74 = v156;
      *(v74 + 2) = v75;
      v76 = v65[11];
      *(v66 + v76) = sub_24F926C88();
      v77 = v65[12];
      *(v66 + v77) = sub_24F926D18();
      v78 = v65[13];
      *(v66 + v78) = sub_24F9259E8();
      v79 = (v66 + v65[14]);
      v80._object = 0x800000024FA77260;
      v80._countAndFlagsBits = 0xD000000000000021;
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      *v79 = localizedString(_:comment:)(v80, v81);
      v82 = (v66 + v65[15]);
      v83._object = 0x800000024FA77290;
      v83._countAndFlagsBits = 0xD000000000000021;
      v84._countAndFlagsBits = 0;
      v84._object = 0xE000000000000000;
      *v82 = localizedString(_:comment:)(v83, v84);
      *(v66 + v65[16]) = 0x4028000000000000;
      *(v66 + v65[17]) = 0x3FD999999999999ALL;
      sub_24F6014B0(v66, v140, type metadata accessor for TextWithAffordance);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A240);
      sub_24F6030C0(&qword_27F24A248, type metadata accessor for TextWithAffordance);
      sub_24F603AF0();
      v85 = v141;
      sub_24F924E28();
      sub_24E60169C(v85, v144, &qword_27F24A228);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A258);
      sub_24F603B7C();
      sub_24F603C08();
      v58 = v146;
      sub_24F924E28();
      sub_24E601704(v85, &qword_27F24A228);
      sub_24F601580(v66, type metadata accessor for TextWithAffordance);
    }
  }

  v106 = v145;
  sub_24E60169C(v32, v145, &qword_27F24A088);
  v107 = v148;
  sub_24E60169C(v58, v148, &qword_27F24A238);
  v108 = v149;
  sub_24E60169C(v106, v149, &qword_27F24A088);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24A270);
  sub_24E60169C(v107, v108 + *(v109 + 48), &qword_27F24A238);
  sub_24E601704(v58, &qword_27F24A238);
  sub_24E601704(v32, &qword_27F24A088);
  sub_24E601704(v107, &qword_27F24A238);
  return sub_24E601704(v106, &qword_27F24A088);
}