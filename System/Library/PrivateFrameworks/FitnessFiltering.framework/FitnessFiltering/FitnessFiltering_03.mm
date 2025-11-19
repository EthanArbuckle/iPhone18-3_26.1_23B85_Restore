uint64_t sub_24B5A6904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B5A6968()
{
  result = qword_27F018E88;
  if (!qword_27F018E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018E88);
  }

  return result;
}

unint64_t sub_24B5A69BC()
{
  result = qword_27F018E90;
  if (!qword_27F018E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018E90);
  }

  return result;
}

unint64_t sub_24B5A6A10()
{
  result = qword_27F018EA0;
  if (!qword_27F018EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018EA0);
  }

  return result;
}

unint64_t sub_24B5A6A64()
{
  result = qword_27F018EA8;
  if (!qword_27F018EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018EA8);
  }

  return result;
}

uint64_t sub_24B5A6AB8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B5A6AEC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B5A6B20()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B5A6B54()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B5A6B88()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B5A6BBC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FilterAction.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B5FEE4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FilterAction();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B5AB228(v2, v12, type metadata accessor for FilterAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v52 = *v12;
        v53 = *(v12 + 1);
        v54 = *(v12 + 2);
        v55 = *(v12 + 3);
        v56 = *(v12 + 4);
        v57 = v12[40];
        MEMORY[0x24C243ED0](1);
        v80 = v52;
        v81 = v53;
        v82 = v54;
        v83 = v55;
        v84 = v56;
        v85 = v57;
        FilterItem.hash(into:)();
        return sub_24B57BA04(v52, v53, v54, v55, v56, v57);
      }

      v32 = *v12;
      v33 = v12[8];
      v34 = *(v12 + 2);
      v35 = v12[24];
      MEMORY[0x24C243ED0](0);
      v80 = v32;
      LOBYTE(v81) = v33;
      v82 = v34;
      LOBYTE(v83) = v35;
      Filter.hash(into:)(a1);
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v36 = *v12;
        MEMORY[0x24C243ED0](2);
        return sub_24B5FFF1C();
      }

      if (EnumCaseMultiPayload == 3)
      {
        v15 = *v12;
        v16 = v12[8];
        v17 = *(v12 + 2);
        v18 = v12[24];
        v19 = *(v12 + 4);
        v20 = *(v12 + 5);
        v21 = *(v12 + 6);
        v78 = *(v12 + 7);
        v79 = v21;
        v23 = *(v12 + 8);
        v22 = *(v12 + 9);
        v24 = *(v12 + 10);
        v74 = *(v12 + 11);
        v75 = v24;
        v73 = *(v12 + 12);
        MEMORY[0x24C243ED0](3);
        v80 = v15;
        LOBYTE(v81) = v16;
        v82 = v17;
        LOBYTE(v83) = v18;
        Filter.hash(into:)(a1);

        v77 = v19;
        sub_24B57B1DC(a1, v19);
        v76 = v20;
        sub_24B57B1DC(a1, v20);
        sub_24B57B1DC(a1, v79);
        sub_24B57B1DC(a1, v78);
        sub_24B57B1DC(a1, v23);
        v25 = *(v22 + 16);
        MEMORY[0x24C243ED0](v25);
        if (v25)
        {
          v26 = (v22 + 56);
          do
          {
            v27 = *(v26 - 3);
            v28 = *(v26 - 2);
            v29 = *(v26 - 1);
            v30 = *v26;

            sub_24B5FFB1C();
            sub_24B5FFB1C();

            v26 += 4;
            --v25;
          }

          while (v25);
        }

        sub_24B57B1DC(a1, v75);
        sub_24B57B1DC(a1, v74);
        sub_24B57B1DC(a1, v73);
      }

      else
      {
        v44 = *v12;
        v45 = *(v12 + 1);
        v46 = *(v12 + 2);
        v47 = *(v12 + 3);
        v48 = *(v12 + 4);
        v79 = *(v12 + 5);
        v49 = *(v12 + 6);
        v50 = *(v12 + 7);
        v51 = *(v12 + 8);
        MEMORY[0x24C243ED0](4);
        sub_24B57BC0C(a1, v44);
        sub_24B57ADD8(a1, v45);
        sub_24B57AC24(a1, v46);
        sub_24B57BC0C(a1, v47);
        sub_24B57A87C(a1, v48);
        sub_24B57A604(a1, v79);
        sub_24B57A410(a1, v49);
        sub_24B57A1D4(a1, v50);
        sub_24B579FA4(a1, v51);
      }
    }
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v38 = *v12;
      v39 = *(v12 + 1);
      v41 = *(v12 + 3);
      v77 = *(v12 + 2);
      v40 = v77;
      v42 = *(v12 + 4);
      v79 = v12[41];
      LODWORD(v78) = v12[40];
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B38, &qword_24B600DD0);
      (*(v5 + 32))(v8, &v12[*(v43 + 64)], v4);
      MEMORY[0x24C243ED0](7);
      v80 = v38;
      v81 = v39;
      v82 = v40;
      v83 = v41;
      v84 = v42;
      LOBYTE(v40) = v78;
      v85 = v78;
      FilterItem.hash(into:)();
      sub_24B57BA04(v38, v39, v77, v41, v42, v40);
      MEMORY[0x24C243ED0](v79);
      sub_24B5AB290(&qword_27F018EB0, MEMORY[0x277CC9AF8]);
      sub_24B5FFA4C();
      return (*(v5 + 8))(v8, v4);
    }

    if (EnumCaseMultiPayload == 6)
    {
      v14 = *v12;
      MEMORY[0x24C243ED0](8);
      sub_24B5FFB1C();
    }

    else
    {
      v58 = *v12;
      v59 = *(v12 + 1);
      v60 = *(v12 + 2);
      v61 = *(v12 + 3);
      v63 = *(v12 + 4);
      v62 = *(v12 + 5);
      v64 = *(v12 + 7);
      v74 = *(v12 + 6);
      v65 = *(v12 + 8);
      MEMORY[0x24C243ED0](9);
      v79 = v58;
      sub_24B57B1DC(a1, v58);
      v78 = v59;
      sub_24B57B1DC(a1, v59);
      v77 = v60;
      sub_24B57B1DC(a1, v60);
      v76 = v61;
      sub_24B57B1DC(a1, v61);
      v75 = v63;
      sub_24B57B1DC(a1, v63);
      v66 = *(v62 + 16);
      MEMORY[0x24C243ED0](v66);
      if (v66)
      {
        v67 = (v62 + 56);
        do
        {
          v68 = *(v67 - 3);
          v69 = *(v67 - 2);
          v70 = *(v67 - 1);
          v71 = *v67;

          sub_24B5FFB1C();
          sub_24B5FFB1C();

          v67 += 4;
          --v66;
        }

        while (v66);
      }

      sub_24B57B1DC(a1, v74);
      sub_24B57B1DC(a1, v64);
      sub_24B57B1DC(a1, v65);
    }
  }

  if (EnumCaseMultiPayload == 8)
  {
    v31 = 5;
  }

  else if (EnumCaseMultiPayload == 9)
  {
    v31 = 6;
  }

  else
  {
    v31 = 10;
  }

  return MEMORY[0x24C243ED0](v31);
}

uint64_t FilterAction.hashValue.getter()
{
  sub_24B5FFEFC();
  FilterAction.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5A74D8()
{
  sub_24B5FFEFC();
  FilterAction.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5A751C()
{
  sub_24B5FFEFC();
  FilterAction.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5A7570(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v8 = v6[1];
      v14 = *v6;
      v15 = v8;
      v9 = v6[3];
      v16 = v6[2];
      v17 = v9;
      v18 = *(v6 + 64);
      v10 = v14;
      v11 = v15;
      v12 = *(&v9 + 1);
      sub_24B57BAFC(&v14, v13, &qword_27F018BE0, &qword_24B602300);
      sub_24B57926C(a1, v10);
      sub_24B5FFF1C();
      if (v11)
      {
        sub_24B5FFB1C();
      }

      v7 = v18;
      sub_24B5FFB1C();
      sub_24B5FFB1C();
      MEMORY[0x24C243ED0](v12);
      MEMORY[0x24C243ED0](v7);
      result = sub_24B58090C(&v14, &qword_27F018BE0, &qword_24B602300);
      v6 = (v6 + 72);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24B5A76CC(__int128 *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v8);
  if (v8)
  {
    v10 = (a2 + 32);
    v20 = a3;
    do
    {
      v12 = v10[1];
      v22 = *v10;
      v23 = v12;
      v13 = v10[3];
      v24 = v10[2];
      *v25 = v13;
      *&v25[9] = *(v10 + 57);
      v14 = v22;
      v15 = a4;
      v16 = v23;
      v17 = *v25;
      v18 = a3;
      v19 = v15;
      sub_24B57BAFC(&v22, v21, v18, v15);
      sub_24B57926C(a1, v14);
      sub_24B5FFF1C();
      if (v16)
      {
        sub_24B5FFB1C();
      }

      sub_24B5FFB1C();
      a4 = v19;
      sub_24B5FFF1C();
      if (v17)
      {
        sub_24B5FFB1C();
      }

      a3 = v20;
      v11 = v25[24];
      sub_24B5FFB1C();
      MEMORY[0x24C243ED0](v11);
      result = sub_24B58090C(&v22, v20, a4);
      v10 += 5;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_24B5A7830(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v4);
  v17 = v4;
  if (v4)
  {
    v6 = 0;
    v16 = a2 + 32;
    do
    {
      v8 = (v16 + 80 * v6);
      v9 = v8[1];
      v20 = *v8;
      v21 = v9;
      v10 = v8[3];
      v22 = v8[2];
      *v23 = v10;
      *&v23[9] = *(v8 + 57);
      v11 = v20;
      v12 = *(&v21 + 1);
      v18 = *&v23[16];
      MEMORY[0x24C243ED0](*(v20 + 16));
      v13 = *(v11 + 16);
      if (v13)
      {
        v14 = (v11 + 32);
        do
        {
          v15 = *v14++;
          MEMORY[0x24C243ED0](v15);
          --v13;
        }

        while (v13);
      }

      sub_24B57BAFC(&v20, v19, &qword_27F018BF8, &unk_24B601080);
      sub_24B57926C(a1, *(&v11 + 1));
      sub_24B5FFF1C();
      if (v12)
      {
        sub_24B5FFB1C();
      }

      ++v6;
      v7 = v23[24];
      sub_24B5FFB1C();
      sub_24B5FFB1C();
      sub_24B5799FC(a1, v18);
      MEMORY[0x24C243ED0](v7);
      result = sub_24B58090C(&v20, &qword_27F018BF8, &unk_24B601080);
    }

    while (v6 != v17);
  }

  return result;
}

uint64_t sub_24B5A79B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v12 = *v5;
      v5 += 48;
      v11 = v12;

      sub_24B5FFB1C();
      if (v8 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v8;
      }

      MEMORY[0x24C243EF0](*&v13);
      if (v9 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v9;
      }

      MEMORY[0x24C243EF0](*&v14);
      if (v10 == 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v10;
      }

      MEMORY[0x24C243EF0](*&v15);
      MEMORY[0x24C243ED0](v11);

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24B5A7A7C(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v10 = v6[1];
      v11 = v6[2];
      v12 = v6[3];
      v13 = v6[4];
      v14 = *(v6 + 40);

      sub_24B57926C(a1, v7);
      sub_24B5FFF1C();
      if (v9)
      {
        sub_24B5FFB1C();
      }

      v6 += 8;
      sub_24B5FFB1C();
      sub_24B5FFB1C();
      MEMORY[0x24C243ED0](v14);

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24B5A7BA0(__int128 *a1, uint64_t a2)
{
  v4 = sub_24B5FEDEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v102 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v100 - v10;
  v12 = type metadata accessor for FilterSectionDescriptor();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v17);
  v111 = v17;
  if (v17)
  {
    v19 = 0;
    v20 = *(v12 + 24);
    v107 = *(v12 + 20);
    v106 = v16 + v20;
    v105 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v104 = (v5 + 48);
    v101 = (v5 + 32);
    v103 = *(v13 + 72);
    v100 = (v5 + 8);
    v110 = v4;
    v109 = v11;
    v108 = v16;
    do
    {
      sub_24B5AB228(v105 + v103 * v19, v16, type metadata accessor for FilterSectionDescriptor);
      v21 = *v16;
      v22 = v16[1];
      sub_24B5FFB1C();
      sub_24B57BAFC(v16 + v107, v11, &qword_27F018BD0, &unk_24B6022F0);
      if ((*v104)(v11, 1, v4) == 1)
      {
        sub_24B5FFF1C();
      }

      else
      {
        v23 = v102;
        (*v101)(v102, v11, v4);
        sub_24B5FFF1C();
        sub_24B5AB290(&qword_27F019000, MEMORY[0x277CC8C40]);
        sub_24B5FFA4C();
        (*v100)(v23, v4);
      }

      v24 = *v106;
      v25 = v106[8];
      v112 = v19;
      if (v25 > 3)
      {
        if (v25 > 5)
        {
          if (v25 == 6)
          {
            MEMORY[0x24C243ED0](6);
            MEMORY[0x24C243ED0](*(v24 + 16));
            v50 = *(v24 + 16);
            if (v50)
            {
              v51 = (v24 + 32);
              do
              {
                v119 = *v51;
                v53 = *(v51 + 64);
                v55 = v51[2];
                v54 = v51[3];
                v120 = v51[1];
                v121 = v55;
                *v122 = v54;
                v122[16] = v53;
                v56 = v119;
                v57 = v120;
                v117 = *(&v54 + 1);
                sub_24B57BAFC(&v119, v118, &qword_27F018BE0, &qword_24B602300);
                sub_24B57926C(a1, v56);
                sub_24B5FFF1C();
                if (v57)
                {
                  sub_24B5FFB1C();
                }

                v52 = v122[16];
                sub_24B5FFB1C();
                sub_24B5FFB1C();
                MEMORY[0x24C243ED0](v117);
                MEMORY[0x24C243ED0](v52);
                sub_24B58090C(&v119, &qword_27F018BE0, &qword_24B602300);
                v51 = (v51 + 72);
                --v50;
              }

              while (v50);
            }
          }

          else
          {
            MEMORY[0x24C243ED0](7);
            MEMORY[0x24C243ED0](*(v24 + 16));
            v91 = *(v24 + 16);
            if (v91)
            {
              v92 = (v24 + 32);
              do
              {
                v119 = *v92;
                v94 = *(v92 + 57);
                v96 = v92[2];
                v95 = v92[3];
                v120 = v92[1];
                v121 = v96;
                *v122 = v95;
                *&v122[9] = v94;
                v97 = v119;
                v98 = v120;
                v116 = *(&v96 + 1);
                v117 = *&v122[8];
                v99 = v95;
                sub_24B57BAFC(&v119, v118, &qword_27F018BD8, &unk_24B601060);
                sub_24B57926C(a1, v97);
                sub_24B5FFF1C();
                if (v98)
                {
                  sub_24B5FFB1C();
                }

                sub_24B5FFB1C();
                sub_24B5FFF1C();
                if (v99)
                {
                  sub_24B5FFB1C();
                }

                v93 = v122[24];
                sub_24B5FFB1C();
                MEMORY[0x24C243ED0](v93);
                sub_24B58090C(&v119, &qword_27F018BD8, &unk_24B601060);
                v92 += 5;
                --v91;
              }

              while (v91);
            }
          }
        }

        else if (v25 == 4)
        {
          MEMORY[0x24C243ED0](4);
          MEMORY[0x24C243ED0](*(v24 + 16));
          v34 = *(v24 + 16);
          if (v34)
          {
            v35 = (v24 + 48);
            do
            {
              v36 = *(v35 - 2);
              v37 = *(v35 - 1);
              v38 = *v35;
              v39 = v35[1];
              v40 = v35[2];
              v116 = v35[3];
              v41 = v35[4];
              v117 = *(v35 + 40);

              sub_24B57926C(a1, v36);
              sub_24B5FFF1C();
              if (v38)
              {
                sub_24B5FFB1C();
              }

              v35 += 8;
              sub_24B5FFB1C();
              sub_24B5FFB1C();
              MEMORY[0x24C243ED0](v117);

              --v34;
            }

            while (v34);
          }
        }

        else
        {
          MEMORY[0x24C243ED0](5);
          MEMORY[0x24C243ED0](*(v24 + 16));
          v70 = *(v24 + 16);
          if (v70)
          {
            v71 = (v24 + 32);
            do
            {
              v119 = *v71;
              v73 = *(v71 + 57);
              v75 = v71[2];
              v74 = v71[3];
              v120 = v71[1];
              v121 = v75;
              *v122 = v74;
              *&v122[9] = v73;
              v76 = v119;
              v77 = v120;
              v116 = *(&v75 + 1);
              v117 = *&v122[8];
              v78 = v74;
              sub_24B57BAFC(&v119, v118, &qword_27F018BE8, &unk_24B601070);
              sub_24B57926C(a1, v76);
              sub_24B5FFF1C();
              if (v77)
              {
                sub_24B5FFB1C();
              }

              sub_24B5FFB1C();
              sub_24B5FFF1C();
              if (v78)
              {
                sub_24B5FFB1C();
              }

              v72 = v122[24];
              sub_24B5FFB1C();
              MEMORY[0x24C243ED0](v72);
              sub_24B58090C(&v119, &qword_27F018BE8, &unk_24B601070);
              v71 += 5;
              --v70;
            }

            while (v70);
          }
        }
      }

      else if (v25 > 1)
      {
        if (v25 == 2)
        {
          MEMORY[0x24C243ED0](2);
          MEMORY[0x24C243ED0](*(v24 + 16));
          v42 = *(v24 + 16);
          if (v42)
          {
            v43 = (v24 + 48);
            do
            {
              v44 = *(v43 - 2);
              v45 = *(v43 - 1);
              v46 = *v43;
              v47 = v43[1];
              v48 = v43[2];
              v116 = v43[3];
              v49 = v43[4];
              v117 = *(v43 + 40);

              sub_24B57926C(a1, v44);
              sub_24B5FFF1C();
              if (v46)
              {
                sub_24B5FFB1C();
              }

              v43 += 8;
              sub_24B5FFB1C();
              sub_24B5FFB1C();
              MEMORY[0x24C243ED0](v117);

              --v42;
            }

            while (v42);
          }
        }

        else
        {
          MEMORY[0x24C243ED0](3);
          v79 = *(v24 + 16);
          MEMORY[0x24C243ED0](v79);
          v114 = v79;
          if (v79)
          {
            v80 = 0;
            v113 = v24 + 32;
            do
            {
              v82 = (v113 + 80 * v80);
              v119 = *v82;
              v83 = *(v82 + 57);
              v85 = v82[2];
              v84 = v82[3];
              v120 = v82[1];
              v121 = v85;
              *v122 = v84;
              *&v122[9] = v83;
              v86 = v119;
              v87 = *(&v120 + 1);
              v116 = v84;
              v115 = *&v122[8];
              v117 = v83 >> 56;
              MEMORY[0x24C243ED0](*(v119 + 16));
              v88 = *(v86 + 16);
              if (v88)
              {
                v89 = (v86 + 32);
                do
                {
                  v90 = *v89++;
                  MEMORY[0x24C243ED0](v90);
                  --v88;
                }

                while (v88);
              }

              sub_24B57BAFC(&v119, v118, &qword_27F018BF8, &unk_24B601080);
              sub_24B57926C(a1, *(&v86 + 1));
              sub_24B5FFF1C();
              if (v87)
              {
                sub_24B5FFB1C();
              }

              ++v80;
              v81 = v122[24];
              sub_24B5FFB1C();
              sub_24B5FFB1C();
              sub_24B5799FC(a1, v117);
              MEMORY[0x24C243ED0](v81);
              sub_24B58090C(&v119, &qword_27F018BF8, &unk_24B601080);
            }

            while (v80 != v114);
          }
        }
      }

      else if (v25)
      {
        MEMORY[0x24C243ED0](1);
        v58 = *(v24 + 16);
        MEMORY[0x24C243ED0](v58);
        if (v58)
        {
          v59 = (v24 + 72);
          do
          {
            v60 = *(v59 - 5);
            v61 = *(v59 - 4);
            v62 = *(v59 - 3);
            v63 = *(v59 - 2);
            v64 = *(v59 - 1);
            v66 = *v59;
            v59 += 48;
            v65 = v66;

            sub_24B5FFB1C();
            if (v62 == 0.0)
            {
              v67 = 0.0;
            }

            else
            {
              v67 = v62;
            }

            MEMORY[0x24C243EF0](*&v67);
            if (v63 == 0.0)
            {
              v68 = 0.0;
            }

            else
            {
              v68 = v63;
            }

            MEMORY[0x24C243EF0](*&v68);
            if (v64 == 0.0)
            {
              v69 = 0.0;
            }

            else
            {
              v69 = v64;
            }

            MEMORY[0x24C243EF0](*&v69);
            MEMORY[0x24C243ED0](v65);

            --v58;
          }

          while (v58);
        }
      }

      else
      {
        MEMORY[0x24C243ED0](0);
        MEMORY[0x24C243ED0](*(v24 + 16));
        v26 = *(v24 + 16);
        if (v26)
        {
          v27 = (v24 + 48);
          do
          {
            v28 = *(v27 - 2);
            v29 = *(v27 - 1);
            v30 = *v27;
            v31 = v27[1];
            v32 = v27[2];
            v116 = v27[3];
            v33 = v27[4];
            v117 = *(v27 + 40);

            sub_24B57926C(a1, v28);
            sub_24B5FFF1C();
            if (v30)
            {
              sub_24B5FFB1C();
            }

            v27 += 8;
            sub_24B5FFB1C();
            sub_24B5FFB1C();
            MEMORY[0x24C243ED0](v117);

            --v26;
          }

          while (v26);
        }
      }

      v19 = v112 + 1;
      v16 = v108;
      result = sub_24B5AB2D8(v108, type metadata accessor for FilterSectionDescriptor);
      v4 = v110;
      v11 = v109;
    }

    while (v19 != v111);
  }

  return result;
}

uint64_t sub_24B5A88A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_24B5FFB1C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24B5A8A30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = v5[1];
      v16 = *v5;
      v17 = v7;
      v8 = v5[3];
      v18 = v5[2];
      v19 = v8;
      if (BYTE8(v18) <= 3u)
      {
        if (BYTE8(v18) > 1u)
        {
          if (BYTE8(v18) == 2)
          {
            v6 = 2;
          }

          else
          {
            v6 = 3;
          }
        }

        else
        {
          if (BYTE8(v18))
          {
            v10 = *(&v17 + 1);
            v9 = v18;
            v11 = v17;
            MEMORY[0x24C243ED0](1);
            sub_24B5A208C(&v16, v15);
            sub_24B5FFB1C();
            if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }

            MEMORY[0x24C243EF0](v12);
            if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v13 = v10;
            }

            else
            {
              v13 = 0;
            }

            MEMORY[0x24C243EF0](v13);
            if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v14 = v9;
            }

            else
            {
              v14 = 0;
            }

            MEMORY[0x24C243EF0](v14);
            goto LABEL_5;
          }

          v6 = 0;
        }
      }

      else if (BYTE8(v18) <= 5u)
      {
        if (BYTE8(v18) == 4)
        {
          v6 = 4;
        }

        else
        {
          v6 = 5;
        }
      }

      else if (BYTE8(v18) == 6)
      {
        v6 = 6;
      }

      else
      {
        if (BYTE8(v18) != 7)
        {
          MEMORY[0x24C243ED0](8);
          sub_24B5A208C(&v16, v15);
          sub_24B5FFB1C();

          goto LABEL_5;
        }

        v6 = 7;
      }

      MEMORY[0x24C243ED0](v6);
      sub_24B5A208C(&v16, v15);
      sub_24B5FFB1C();
LABEL_5:
      sub_24B5FFB1C();
      result = sub_24B5A20C4(&v16);
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24B5A8CFC(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v10 = v6[1];
      v11 = v6[2];
      v12 = v6[3];
      v13 = v6[4];
      v14 = v6[5];

      sub_24B57926C(a1, v7);
      sub_24B5FFF1C();
      if (v9)
      {
        sub_24B5FFB1C();
      }

      sub_24B5FFB1C();
      sub_24B5FFB1C();
      MEMORY[0x24C243ED0](v14);

      v6 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24B5A8E1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      sub_24B5FFB1C();
      sub_24B5FFB1C();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s16FitnessFiltering12FilterActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v148 = a1;
  v149 = a2;
  v2 = sub_24B5FEE4C();
  v146 = *(v2 - 8);
  v147 = v2;
  v3 = *(v146 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v141 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v142 = &v129 - v6;
  v7 = type metadata accessor for FilterAction();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v145 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v143 = &v129 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v144 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v129 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v129 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v129 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v129 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v129 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019008, &qword_24B602308);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v129 - v32;
  v34 = &v129 + *(v31 + 56) - v32;
  sub_24B5AB228(v148, &v129 - v32, type metadata accessor for FilterAction);
  v35 = v149;
  v149 = v34;
  sub_24B5AB228(v35, v34, type metadata accessor for FilterAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_24B5AB228(v33, v26, type metadata accessor for FilterAction);
        v98 = v33;
        v100 = *v26;
        v99 = *(v26 + 1);
        v102 = *(v26 + 2);
        v101 = *(v26 + 3);
        v103 = *(v26 + 4);
        v104 = v26[40];
        v105 = v149;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v148 = v98;
          v106 = *v105;
          v107 = *(v105 + 8);
          v108 = *(v105 + 16);
          v146 = *(v105 + 24);
          v147 = v108;
          v145 = *(v105 + 32);
          LODWORD(v149) = *(v105 + 40);
          *&v165 = v100;
          *(&v165 + 1) = v99;
          *&v166 = v102;
          *(&v166 + 1) = v101;
          *&v167 = v103;
          BYTE8(v167) = v104;
          *&v160 = v106;
          *(&v160 + 1) = v107;
          *&v161 = v108;
          *(&v161 + 1) = v146;
          *&v162 = v145;
          BYTE8(v162) = v149;
          v39 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v165, &v160);
          sub_24B57BA04(v106, v107, v147, v146, v145, v149);
          sub_24B57BA04(v100, v99, v102, v101, v103, v104);
          sub_24B5AB2D8(v148, type metadata accessor for FilterAction);
          return v39 & 1;
        }

        sub_24B57BA04(v100, v99, v102, v101, v103, v104);
        v33 = v98;
        goto LABEL_46;
      }

      sub_24B5AB228(v33, v28, type metadata accessor for FilterAction);
      v56 = *v28;
      v57 = *(v28 + 2);
      v58 = v28[24];
      v59 = v149;
      if (swift_getEnumCaseMultiPayload())
      {

        goto LABEL_46;
      }

      v40 = v33;
      v120 = v28[8];
      v121 = *v59;
      v122 = *(v59 + 8);
      v123 = *(v59 + 16);
      v124 = *(v59 + 24);
      if (sub_24B587A08(v56, v121) & 1) != 0 && ((v120 ^ v122) & 1) == 0 && (sub_24B587A08(v57, v123))
      {
        v125 = sub_24B5886F8(v58, v124);

        if (v125)
        {
          v118 = v40;
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_24B5AB228(v33, v23, type metadata accessor for FilterAction);
        v60 = v149;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v61 = *v23 ^ *v60;
          sub_24B5AB2D8(v33, type metadata accessor for FilterAction);
          v39 = v61 ^ 1;
          return v39 & 1;
        }

        goto LABEL_46;
      }

      if (EnumCaseMultiPayload != 3)
      {
        sub_24B5AB228(v33, v17, type metadata accessor for FilterAction);
        v89 = *(v17 + 3);
        v167 = *(v17 + 2);
        v168 = v89;
        v169 = *(v17 + 8);
        v90 = *(v17 + 1);
        v165 = *v17;
        v166 = v90;
        v91 = v149;
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v92 = *(v91 + 16);
          v93 = *(v91 + 48);
          v162 = *(v91 + 32);
          v163 = v93;
          v94 = *(v91 + 16);
          v160 = *v91;
          v161 = v94;
          v95 = *(v17 + 3);
          v157 = *(v17 + 2);
          v158 = v95;
          v96 = *(v17 + 1);
          v155 = *v17;
          v156 = v96;
          v97 = *(v91 + 48);
          v152 = v162;
          v153 = v97;
          v164 = *(v91 + 64);
          v159 = *(v17 + 8);
          v154 = *(v91 + 64);
          v150 = v160;
          v151 = v92;
          v39 = static FilterOptions.== infix(_:_:)(&v155, &v150);
          sub_24B5A0ACC(&v160);
          sub_24B5A0ACC(&v165);
          goto LABEL_37;
        }

        sub_24B5A0ACC(&v165);
        goto LABEL_46;
      }

      v40 = v33;
      sub_24B5AB228(v33, v20, type metadata accessor for FilterAction);
      v41 = *v20;
      v42 = v20[8];
      v43 = *(v20 + 2);
      v44 = v20[24];
      v45 = *(v20 + 5);
      v167 = *(v20 + 4);
      v168 = v45;
      v169 = *(v20 + 12);
      v46 = *(v20 + 3);
      v165 = *(v20 + 2);
      v166 = v46;
      v47 = v149;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_24B5A0B20(&v165);

        v33 = v40;
        goto LABEL_46;
      }

      v48 = *v47;
      v49 = v47;
      v50 = *(v47 + 8);
      v51 = *(v47 + 16);
      v52 = *(v49 + 24);
      v53 = *(v49 + 80);
      v162 = *(v49 + 64);
      v163 = v53;
      v164 = *(v49 + 96);
      v54 = *(v49 + 48);
      v160 = *(v49 + 32);
      v161 = v54;
      if (sub_24B587A08(v41, v48) & 1) != 0 && ((v42 ^ v50) & 1) == 0 && (sub_24B587A08(v43, v51))
      {
        v55 = sub_24B5886F8(v44, v52);

        if (v55)
        {
          v157 = v167;
          v158 = v168;
          v159 = v169;
          v155 = v165;
          v156 = v166;
          v152 = v162;
          v153 = v163;
          v154 = v164;
          v150 = v160;
          v151 = v161;
          v39 = _s16FitnessFiltering12FilterResultV2eeoiySbAC_ACtFZ_0(&v155, &v150);
          sub_24B5A0B20(&v160);
          sub_24B5A0B20(&v165);
          sub_24B5AB2D8(v40, type metadata accessor for FilterAction);
          return v39 & 1;
        }
      }

      else
      {
      }

      sub_24B5A0B20(&v160);
      sub_24B5A0B20(&v165);
    }

    sub_24B5AB2D8(v40, type metadata accessor for FilterAction);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (EnumCaseMultiPayload == 9)
    {
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (swift_getEnumCaseMultiPayload() == 10)
    {
LABEL_39:
      v118 = v33;
LABEL_40:
      sub_24B5AB2D8(v118, type metadata accessor for FilterAction);
      v39 = 1;
      return v39 & 1;
    }

LABEL_46:
    sub_24B58090C(v33, &qword_27F019008, &qword_24B602308);
LABEL_47:
    v39 = 0;
    return v39 & 1;
  }

  v37 = v149;
  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v38 = v143;
      sub_24B5AB228(v33, v143, type metadata accessor for FilterAction);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v39 = sub_24B5886F8(*v38, *v37);
LABEL_37:
        sub_24B5AB2D8(v33, type metadata accessor for FilterAction);
        return v39 & 1;
      }
    }

    else
    {
      v109 = v145;
      sub_24B5AB228(v33, v145, type metadata accessor for FilterAction);
      v110 = *(v109 + 48);
      v167 = *(v109 + 32);
      v168 = v110;
      v169 = *(v109 + 64);
      v111 = *(v109 + 16);
      v165 = *v109;
      v166 = v111;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v112 = *(v37 + 16);
        v113 = *(v37 + 48);
        v162 = *(v37 + 32);
        v163 = v113;
        v114 = *(v37 + 16);
        v160 = *v37;
        v161 = v114;
        v115 = *(v109 + 48);
        v157 = *(v109 + 32);
        v158 = v115;
        v116 = *(v109 + 16);
        v155 = *v109;
        v156 = v116;
        v117 = *(v37 + 48);
        v152 = v162;
        v153 = v117;
        v164 = *(v37 + 64);
        v159 = *(v109 + 64);
        v154 = *(v37 + 64);
        v150 = v160;
        v151 = v112;
        v39 = _s16FitnessFiltering12FilterResultV2eeoiySbAC_ACtFZ_0(&v155, &v150);
        sub_24B5A0B20(&v160);
        sub_24B5A0B20(&v165);
        goto LABEL_37;
      }

      sub_24B5A0B20(&v165);
    }

    goto LABEL_46;
  }

  v62 = v144;
  sub_24B5AB228(v33, v144, type metadata accessor for FilterAction);
  v63 = *(v62 + 8);
  v143 = *v62;
  v145 = v63;
  v65 = *(v62 + 16);
  v64 = *(v62 + 24);
  v66 = *(v62 + 32);
  v67 = *(v62 + 40);
  v140 = *(v62 + 41);
  v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B38, &qword_24B600DD0) + 64);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    (*(v146 + 8))(v62 + v68, v147);
    sub_24B57BA04(v143, v145, v65, v64, v66, v67);
    goto LABEL_46;
  }

  v148 = v33;
  v69 = *v37;
  v135 = *(v37 + 8);
  v136 = v69;
  v70 = *(v37 + 24);
  v134 = *(v37 + 16);
  v132 = v66;
  v133 = v70;
  v139 = v64;
  v71 = *(v37 + 32);
  LODWORD(v69) = *(v37 + 41);
  v72 = v67;
  v138 = v67;
  v73 = *(v146 + 32);
  v137 = v65;
  LODWORD(v70) = *(v37 + 40);
  v130 = v69;
  v131 = v70;
  v74 = v62 + v68;
  v75 = v147;
  v73(v142, v74, v147);
  v73(v141, v37 + v68, v75);
  v76 = v143;
  v77 = v145;
  *&v165 = v143;
  *(&v165 + 1) = v145;
  *&v166 = v65;
  *(&v166 + 1) = v64;
  v79 = v132;
  v78 = v133;
  *&v167 = v132;
  BYTE8(v167) = v72;
  v81 = v135;
  v80 = v136;
  *&v160 = v136;
  *(&v160 + 1) = v135;
  v82 = v134;
  *&v161 = v134;
  *(&v161 + 1) = v133;
  *&v162 = v71;
  LOBYTE(v75) = v131;
  BYTE8(v162) = v131;
  LODWORD(v149) = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v165, &v160);
  sub_24B57BA04(v80, v81, v82, v78, v71, v75);
  sub_24B57BA04(v76, v77, v137, v139, v79, v138);
  if ((v149 & 1) == 0)
  {
    v126 = v147;
    v127 = *(v146 + 8);
    v127(v141, v147);
    v127(v142, v126);
    sub_24B5AB2D8(v148, type metadata accessor for FilterAction);
    goto LABEL_47;
  }

  v83 = v141;
  v85 = v147;
  v84 = v148;
  if (v140 != v130)
  {
    v128 = *(v146 + 8);
    v128(v141, v147);
    v128(v142, v85);
    sub_24B5AB2D8(v84, type metadata accessor for FilterAction);
    goto LABEL_47;
  }

  v86 = v142;
  v39 = sub_24B5FEE2C();
  v87 = v83;
  v88 = *(v146 + 8);
  v88(v87, v85);
  v88(v86, v85);
  sub_24B5AB2D8(v84, type metadata accessor for FilterAction);
  return v39 & 1;
}

void sub_24B5A9BFC()
{
  sub_24B5A9CC8();
  if (v0 <= 0x3F)
  {
    sub_24B5A9CF8();
    if (v1 <= 0x3F)
    {
      sub_24B5A9D28();
      if (v2 <= 0x3F)
      {
        sub_24B5A9D8C();
        if (v3 <= 0x3F)
        {
          sub_24B5A9DBC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

ValueMetadata *sub_24B5A9CC8()
{
  result = qword_27F018ED0;
  if (!qword_27F018ED0)
  {
    result = &type metadata for Filter;
    atomic_store(&type metadata for Filter, &qword_27F018ED0);
  }

  return result;
}

uint64_t sub_24B5A9CF8()
{
  result = qword_27F018ED8;
  if (!qword_27F018ED8)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27F018ED8);
  }

  return result;
}

void sub_24B5A9D28()
{
  if (!qword_27F018EE0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F018EE0);
    }
  }
}

ValueMetadata *sub_24B5A9D8C()
{
  result = qword_27F018EE8;
  if (!qword_27F018EE8)
  {
    result = &type metadata for FilterOptions;
    atomic_store(&type metadata for FilterOptions, &qword_27F018EE8);
  }

  return result;
}

void sub_24B5A9DBC()
{
  if (!qword_27F018EF0)
  {
    sub_24B5FEE4C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F018EF0);
    }
  }
}

uint64_t getEnumTagSinglePayload for FilterAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FilterAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilterAction.SelectedFilterItemCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FilterAction.SelectedFilterItemCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24B5AA158(unsigned int *a1, int a2)
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

_WORD *sub_24B5AA1A8(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24B5AA248()
{
  result = qword_27F018EF8;
  if (!qword_27F018EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018EF8);
  }

  return result;
}

unint64_t sub_24B5AA2A0()
{
  result = qword_27F018F00;
  if (!qword_27F018F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F00);
  }

  return result;
}

unint64_t sub_24B5AA2F8()
{
  result = qword_27F018F08;
  if (!qword_27F018F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F08);
  }

  return result;
}

unint64_t sub_24B5AA350()
{
  result = qword_27F018F10;
  if (!qword_27F018F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F10);
  }

  return result;
}

unint64_t sub_24B5AA3A8()
{
  result = qword_27F018F18;
  if (!qword_27F018F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F18);
  }

  return result;
}

unint64_t sub_24B5AA400()
{
  result = qword_27F018F20;
  if (!qword_27F018F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F20);
  }

  return result;
}

unint64_t sub_24B5AA458()
{
  result = qword_27F018F28;
  if (!qword_27F018F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F28);
  }

  return result;
}

unint64_t sub_24B5AA4B0()
{
  result = qword_27F018F30;
  if (!qword_27F018F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F30);
  }

  return result;
}

unint64_t sub_24B5AA508()
{
  result = qword_27F018F38;
  if (!qword_27F018F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F38);
  }

  return result;
}

unint64_t sub_24B5AA560()
{
  result = qword_27F018F40;
  if (!qword_27F018F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F40);
  }

  return result;
}

unint64_t sub_24B5AA5B8()
{
  result = qword_27F018F48;
  if (!qword_27F018F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F48);
  }

  return result;
}

unint64_t sub_24B5AA610()
{
  result = qword_27F018F50;
  if (!qword_27F018F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F50);
  }

  return result;
}

unint64_t sub_24B5AA668()
{
  result = qword_27F018F58;
  if (!qword_27F018F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F58);
  }

  return result;
}

unint64_t sub_24B5AA6C0()
{
  result = qword_27F018F60;
  if (!qword_27F018F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F60);
  }

  return result;
}

unint64_t sub_24B5AA718()
{
  result = qword_27F018F68;
  if (!qword_27F018F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F68);
  }

  return result;
}

unint64_t sub_24B5AA770()
{
  result = qword_27F018F70;
  if (!qword_27F018F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F70);
  }

  return result;
}

unint64_t sub_24B5AA7C8()
{
  result = qword_27F018F78;
  if (!qword_27F018F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F78);
  }

  return result;
}

unint64_t sub_24B5AA820()
{
  result = qword_27F018F80;
  if (!qword_27F018F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F80);
  }

  return result;
}

unint64_t sub_24B5AA878()
{
  result = qword_27F018F88;
  if (!qword_27F018F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F88);
  }

  return result;
}

unint64_t sub_24B5AA8D0()
{
  result = qword_27F018F90;
  if (!qword_27F018F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F90);
  }

  return result;
}

unint64_t sub_24B5AA928()
{
  result = qword_27F018F98;
  if (!qword_27F018F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F98);
  }

  return result;
}

unint64_t sub_24B5AA980()
{
  result = qword_27F018FA0;
  if (!qword_27F018FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FA0);
  }

  return result;
}

unint64_t sub_24B5AA9D8()
{
  result = qword_27F018FA8;
  if (!qword_27F018FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FA8);
  }

  return result;
}

unint64_t sub_24B5AAA30()
{
  result = qword_27F018FB0;
  if (!qword_27F018FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FB0);
  }

  return result;
}

unint64_t sub_24B5AAA88()
{
  result = qword_27F018FB8;
  if (!qword_27F018FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FB8);
  }

  return result;
}

unint64_t sub_24B5AAAE0()
{
  result = qword_27F018FC0;
  if (!qword_27F018FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FC0);
  }

  return result;
}

unint64_t sub_24B5AAB38()
{
  result = qword_27F018FC8;
  if (!qword_27F018FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FC8);
  }

  return result;
}

unint64_t sub_24B5AAB90()
{
  result = qword_27F018FD0;
  if (!qword_27F018FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FD0);
  }

  return result;
}

unint64_t sub_24B5AABE8()
{
  result = qword_27F018FD8;
  if (!qword_27F018FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FD8);
  }

  return result;
}

unint64_t sub_24B5AAC40()
{
  result = qword_27F018FE0;
  if (!qword_27F018FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FE0);
  }

  return result;
}

unint64_t sub_24B5AAC98()
{
  result = qword_27F018FE8;
  if (!qword_27F018FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FE8);
  }

  return result;
}

unint64_t sub_24B5AACF0()
{
  result = qword_27F018FF0;
  if (!qword_27F018FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FF0);
  }

  return result;
}

unint64_t sub_24B5AAD48()
{
  result = qword_27F018FF8;
  if (!qword_27F018FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FF8);
  }

  return result;
}

uint64_t sub_24B5AAD9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C707061 && a2 == 0xE500000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B60A830 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B60A850 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x704F646564616F6CLL && a2 == 0xED0000736E6F6974 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C69467465736572 && a2 == 0xEB00000000726574 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B60A870 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B60A890 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B60A8B0 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B60A8D0 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 10;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_24B5AB128(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t sub_24B5AB228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B5AB290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B5AB2D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BodyFocus.filterItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
}

uint64_t sub_24B5AB390@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
}

uint64_t Duration.filterItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = 1;
}

uint64_t sub_24B5AB3CC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = 1;
}

uint64_t Modality.filterItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 3;
}

uint64_t sub_24B5AB41C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 3;
}

uint64_t sub_24B5AB440@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  *a2 = *(v2 + 24);
  *(a2 + 8) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = a1;
}

uint64_t sub_24B5AB464@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  *a2 = *(v2 + 24);
  *(a2 + 8) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = a1;
}

uint64_t Theme.filterItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 6;
}

uint64_t sub_24B5AB4A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 6;
}

uint64_t FilterItem.identifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 40);
  if ((v3 - 2) < 6 || v3 == 0)
  {
    sub_24B57BA1C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), v3);
  }

  else if (v3 == 1)
  {
    v6 = *(v0 + 8);
  }

  else
  {
    v7 = *v0;
    v8 = 0x7053747369747261;
    v9 = 0x576D6172676F7270;
    if (v7 != 6)
    {
      v9 = 0x6967736B6E616874;
    }

    v10 = 0x7261655977656ELL;
    if (v7 != 4)
    {
      v10 = 0x6564697270;
    }

    if (*v0 <= 5u)
    {
      v9 = v10;
    }

    v11 = 0x796164696C6F68;
    if (v7 != 2)
    {
      v11 = 0x77654E72616E756CLL;
    }

    if (*v0)
    {
      v8 = 0x6565776F6C6C6168;
    }

    if (*v0 > 1u)
    {
      v8 = v11;
    }

    if (*v0 <= 3u)
    {
      return v8;
    }

    else
    {
      return v9;
    }
  }

  return v1;
}

uint64_t sub_24B5AB67C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x75636F4679646F62;
    v6 = 0x6E656D7069757165;
    if (a1 != 2)
    {
      v6 = 0x7974696C61646F6DLL;
    }

    if (a1)
    {
      v5 = 0x6E6F697461727564;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656D656874;
    v2 = 0x72656E69617274;
    if (a1 != 7)
    {
      v2 = 0x7469617274;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6547636973756DLL;
    if (a1 != 4)
    {
      v3 = 0x76654C6C6C696B73;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B5AB7B0(uint64_t a1)
{
  v2 = sub_24B5AE400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5AB7EC(uint64_t a1)
{
  v2 = sub_24B5AE400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5AB830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B5AF0B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B5AB864(uint64_t a1)
{
  v2 = sub_24B5AE064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5AB8A0(uint64_t a1)
{
  v2 = sub_24B5AE064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5AB8DC(uint64_t a1)
{
  v2 = sub_24B5AE358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5AB918(uint64_t a1)
{
  v2 = sub_24B5AE358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5AB954(uint64_t a1)
{
  v2 = sub_24B5AE304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5AB990(uint64_t a1)
{
  v2 = sub_24B5AE304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5AB9CC(uint64_t a1)
{
  v2 = sub_24B5AE2B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABA08(uint64_t a1)
{
  v2 = sub_24B5AE2B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5ABA44(uint64_t a1)
{
  v2 = sub_24B5AE25C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABA80(uint64_t a1)
{
  v2 = sub_24B5AE25C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5ABABC(uint64_t a1)
{
  v2 = sub_24B5AE208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABAF8(uint64_t a1)
{
  v2 = sub_24B5AE208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5ABB34(uint64_t a1)
{
  v2 = sub_24B5AE1B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABB70(uint64_t a1)
{
  v2 = sub_24B5AE1B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5ABBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B5FFECC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B5ABC3C(uint64_t a1)
{
  v2 = sub_24B5AE160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABC78(uint64_t a1)
{
  v2 = sub_24B5AE160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5ABCB4(uint64_t a1)
{
  v2 = sub_24B5AE0B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABCF0(uint64_t a1)
{
  v2 = sub_24B5AE0B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterItem.encode(to:)(void *a1)
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019010, &qword_24B6023C0);
  v55 = *(v68 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v50 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019018, &qword_24B6023C8);
  v54 = *(v66 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v50 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019020, &qword_24B6023D0);
  v53 = *(v64 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v50 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019028, &qword_24B6023D8);
  v52 = *(v62 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v50 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019030, &qword_24B6023E0);
  v51 = *(v60 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019038, &qword_24B6023E8);
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  MEMORY[0x28223BE20](v13);
  v71 = &v50 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019040, &qword_24B6023F0);
  v57 = *(v70 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019048, &qword_24B6023F8);
  v58 = *(v18 - 8);
  v19 = *(v58 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019050, &qword_24B602400);
  v56 = *(v22 - 8);
  v23 = *(v56 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019058, &qword_24B602408);
  v75 = *(v78 - 8);
  v26 = *(v75 + 64);
  MEMORY[0x28223BE20](v78);
  v28 = &v50 - v27;
  v29 = v1[1];
  v77 = *v1;
  v74 = v29;
  v30 = v1[2];
  v31 = v1[3];
  v32 = v1[4];
  v33 = *(v1 + 40);
  v34 = a1;
  v36 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(v34, v36);
  sub_24B5AE064();
  v76 = v28;
  sub_24B5FFF5C();
  if (v33 > 3)
  {
    if (v33 <= 5)
    {
      v37 = v76;
      if (v33 == 4)
      {
        LOBYTE(v79) = 4;
        sub_24B5AE25C();
        v38 = v59;
        v39 = v78;
        sub_24B5FFE0C();
        v40 = v60;
        sub_24B5FFE3C();
        v41 = &v82;
      }

      else
      {
        LOBYTE(v79) = 5;
        sub_24B5AE208();
        v38 = v61;
        v39 = v78;
        sub_24B5FFE0C();
        v40 = v62;
        sub_24B5FFE3C();
        v41 = &v83;
      }
    }

    else
    {
      v37 = v76;
      if (v33 == 6)
      {
        LOBYTE(v79) = 6;
        sub_24B5AE1B4();
        v38 = v63;
        v39 = v78;
        sub_24B5FFE0C();
        v40 = v64;
        sub_24B5FFE3C();
        v41 = &v84;
      }

      else if (v33 == 7)
      {
        LOBYTE(v79) = 7;
        sub_24B5AE160();
        v38 = v65;
        v39 = v78;
        sub_24B5FFE0C();
        v40 = v66;
        sub_24B5FFE3C();
        v41 = &v85;
      }

      else
      {
        LOBYTE(v79) = 8;
        sub_24B5AE0B8();
        v38 = v67;
        v39 = v78;
        sub_24B5FFE0C();
        LOBYTE(v79) = v77;
        sub_24B5AE10C();
        v40 = v68;
        sub_24B5FFE8C();
        v41 = &v86;
      }
    }

    goto LABEL_18;
  }

  v43 = v69;
  v42 = v70;
  v68 = v18;
  v44 = v71;
  v45 = v72;
  v46 = v73;
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      LOBYTE(v79) = 2;
      sub_24B5AE304();
      v47 = v78;
      v48 = v76;
      sub_24B5FFE0C();
      sub_24B5FFE3C();
      (*(v57 + 8))(v43, v42);
      return (*(v75 + 8))(v48, v47);
    }

    LOBYTE(v79) = 3;
    sub_24B5AE2B0();
    v39 = v78;
    v37 = v76;
    sub_24B5FFE0C();
    sub_24B5FFE3C();
    (*(v45 + 8))(v44, v46);
  }

  else
  {
    if (v33)
    {
      LOBYTE(v79) = 1;
      sub_24B5AE358();
      v38 = v21;
      v39 = v78;
      v37 = v76;
      sub_24B5FFE0C();
      v79 = v77;
      v80 = v74;
      v81 = v30;
      v82 = v31;
      v83 = v32;
      sub_24B5AE3AC();
      v40 = v68;
      sub_24B5FFE8C();
      v41 = &v87;
LABEL_18:
      (*(*(v41 - 32) + 8))(v38, v40);
      return (*(v75 + 8))(v37, v39);
    }

    LOBYTE(v79) = 0;
    sub_24B5AE400();
    v39 = v78;
    v37 = v76;
    sub_24B5FFE0C();
    sub_24B5FFE3C();
    (*(v56 + 8))(v25, v22);
  }

  return (*(v75 + 8))(v37, v39);
}

uint64_t FilterItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190C0, &qword_24B602410);
  v4 = *(v3 - 8);
  v129 = v3;
  v130 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v133 = &v109[-v6];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190C8, &qword_24B602418);
  v128 = *(v127 - 8);
  v7 = *(v128 + 64);
  MEMORY[0x28223BE20](v127);
  v132 = &v109[-v8];
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190D0, &qword_24B602420);
  v126 = *(v125 - 8);
  v9 = *(v126 + 64);
  MEMORY[0x28223BE20](v125);
  v137 = &v109[-v10];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190D8, &qword_24B602428);
  v124 = *(v123 - 8);
  v11 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  v136 = &v109[-v12];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190E0, &qword_24B602430);
  v121 = *(v122 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v135 = &v109[-v14];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190E8, &qword_24B602438);
  v119 = *(v120 - 8);
  v15 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v131 = &v109[-v16];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190F0, &qword_24B602440);
  v117 = *(v118 - 8);
  v17 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v134 = &v109[-v18];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190F8, &qword_24B602448);
  v115 = *(v116 - 8);
  v19 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v21 = &v109[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019100, &qword_24B602450);
  v114 = *(v22 - 8);
  v23 = *(v114 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v109[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019108, &qword_24B602458);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v109[-v29];
  v32 = a1[3];
  v31 = a1[4];
  v139 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_24B5AE064();
  v33 = v148;
  sub_24B5FFF4C();
  v148 = v33;
  if (v33)
  {
    goto LABEL_13;
  }

  v34 = v25;
  v111 = v22;
  v112 = v21;
  v35 = v134;
  v36 = v135;
  v38 = v136;
  v37 = v137;
  v113 = v27;
  v39 = v138;
  v40 = sub_24B5FFDEC();
  v41 = (2 * *(v40 + 16)) | 1;
  v144 = v40;
  v145 = v40 + 32;
  v146 = 0;
  v147 = v41;
  v42 = sub_24B5AB348();
  if (v42 == 9 || v146 != v147 >> 1)
  {
    v51 = sub_24B5FFCFC();
    v52 = v30;
    v53 = swift_allocError();
    v54 = v26;
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E80, &qword_24B602460) + 48);
    *v56 = &type metadata for FilterItem;
    sub_24B5FFD5C();
    sub_24B5FFCEC();
    (*(*(v51 - 8) + 104))(v56, *MEMORY[0x277D84160], v51);
    v148 = v53;
    swift_willThrow();
    (*(v113 + 8))(v52, v54);
    goto LABEL_12;
  }

  v110 = v42;
  if (v42 <= 3u)
  {
    if (v42 > 1u)
    {
      if (v42 == 2)
      {
        LOBYTE(v140) = 2;
        sub_24B5AE304();
        v69 = v148;
        sub_24B5FFD4C();
        v148 = v69;
        if (!v69)
        {
          v70 = v118;
          v71 = sub_24B5FFD8C();
          v148 = 0;
          v96 = v71;
          v98 = v97;
          (*(v117 + 8))(v35, v70);
          (*(v113 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v99 = v98;
LABEL_50:
          v100 = v96;
          v102 = 0;
          v101 = 0uLL;
          v58 = v139;
          v85 = v39;
          goto LABEL_51;
        }
      }

      else
      {
        LOBYTE(v140) = 3;
        sub_24B5AE2B0();
        v72 = v131;
        v84 = v148;
        sub_24B5FFD4C();
        v148 = v84;
        if (!v84)
        {
          v74 = v120;
          v75 = sub_24B5FFD8C();
          v148 = 0;
          v77 = &v148;
          goto LABEL_25;
        }
      }
    }

    else if (v42)
    {
      LOBYTE(v140) = 1;
      sub_24B5AE358();
      v81 = v112;
      v82 = v148;
      sub_24B5FFD4C();
      v83 = v26;
      v148 = v82;
      if (!v82)
      {
        v85 = v39;
        v43 = v30;
        v44 = v83;
        sub_24B5AE4A8();
        v91 = v116;
        v92 = v148;
        sub_24B5FFDDC();
        v93 = v113;
        v148 = v92;
        if (!v92)
        {
          (*(v115 + 8))(v81, v91);
          (*(v93 + 8))(v43, v44);
          swift_unknownObjectRelease();
          v100 = v140;
          v99 = v141;
          v101 = v142;
          v102 = v143;
LABEL_48:
          v58 = v139;
LABEL_51:
          *v85 = v100;
          *(v85 + 8) = v99;
          *(v85 + 16) = v101;
          *(v85 + 32) = v102;
          *(v85 + 40) = v110;
          return __swift_destroy_boxed_opaque_existential_1(v58);
        }

        (*(v115 + 8))(v81, v91);
        goto LABEL_42;
      }
    }

    else
    {
      LOBYTE(v140) = 0;
      sub_24B5AE400();
      v60 = v34;
      v61 = v148;
      sub_24B5FFD4C();
      v148 = v61;
      if (!v61)
      {
        v62 = v111;
        v63 = sub_24B5FFD8C();
        v148 = 0;
        v104 = v63;
        v64 = v60;
        v65 = v30;
        v66 = v26;
        v68 = v67;
        (*(v114 + 8))(v64, v62);
        (*(v113 + 8))(v65, v66);
LABEL_45:
        swift_unknownObjectRelease();
        v99 = v68;
        v85 = v39;
        v100 = v104;
        v102 = 0;
LABEL_47:
        v101 = 0uLL;
        goto LABEL_48;
      }
    }

LABEL_29:
    (*(v113 + 8))(v30, v26);
    goto LABEL_12;
  }

  if (v42 <= 5u)
  {
    if (v42 == 4)
    {
      LOBYTE(v140) = 4;
      sub_24B5AE25C();
      v72 = v36;
      v73 = v148;
      sub_24B5FFD4C();
      v148 = v73;
      if (!v73)
      {
        v74 = v122;
        v75 = sub_24B5FFD8C();
        v148 = 0;
        v77 = &v149;
LABEL_25:
        v78 = *(*(v77 - 32) + 8);
        v96 = v75;
        v79 = v72;
LABEL_49:
        v106 = v30;
        v107 = v26;
        v108 = v76;
        v78(v79, v74);
        (*(v113 + 8))(v106, v107);
        swift_unknownObjectRelease();
        v99 = v108;
        goto LABEL_50;
      }
    }

    else
    {
      LOBYTE(v140) = 5;
      sub_24B5AE208();
      v88 = v148;
      sub_24B5FFD4C();
      v148 = v88;
      if (!v88)
      {
        v74 = v123;
        v89 = sub_24B5FFD8C();
        v148 = 0;
        v78 = *(v124 + 8);
        v96 = v89;
        v79 = v38;
        goto LABEL_49;
      }
    }

    goto LABEL_29;
  }

  v43 = v30;
  v44 = v26;
  if (v42 == 6)
  {
    LOBYTE(v140) = 6;
    sub_24B5AE1B4();
    v46 = v43;
    v80 = v148;
    sub_24B5FFD4C();
    v148 = v80;
    if (!v80)
    {
      v48 = v125;
      v90 = sub_24B5FFD8C();
      v148 = 0;
      v103 = *(v126 + 8);
      v104 = v90;
      v105 = v37;
      goto LABEL_44;
    }

    goto LABEL_27;
  }

  if (v42 != 7)
  {
    v85 = v39;
    LOBYTE(v140) = 8;
    sub_24B5AE0B8();
    v86 = v133;
    v87 = v148;
    sub_24B5FFD4C();
    v148 = v87;
    if (v87)
    {
      (*(v113 + 8))(v43, v44);
      goto LABEL_12;
    }

    sub_24B5AE454();
    v94 = v129;
    v95 = v148;
    sub_24B5FFDDC();
    v93 = v113;
    v148 = v95;
    if (!v95)
    {
      (*(v130 + 8))(v86, v94);
      (*(v93 + 8))(v43, v44);
      swift_unknownObjectRelease();
      v99 = 0;
      v102 = 0;
      v100 = v140;
      goto LABEL_47;
    }

    (*(v130 + 8))(v86, v94);
LABEL_42:
    (*(v93 + 8))(v43, v44);
    goto LABEL_12;
  }

  LOBYTE(v140) = 7;
  sub_24B5AE160();
  v45 = v132;
  v46 = v43;
  v47 = v148;
  sub_24B5FFD4C();
  v148 = v47;
  if (!v47)
  {
    v48 = v127;
    v49 = sub_24B5FFD8C();
    v148 = 0;
    v103 = *(v128 + 8);
    v104 = v49;
    v105 = v45;
LABEL_44:
    v68 = v50;
    v103(v105, v48);
    (*(v113 + 8))(v43, v44);
    goto LABEL_45;
  }

LABEL_27:
  (*(v113 + 8))(v46, v44);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v58 = v139;
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t FilterItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 40);
  if (v3 <= 3)
  {
    if (*(v0 + 40) > 1u)
    {
      if (v3 == 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      if (*(v0 + 40))
      {
        v5 = v0[4];
        v7 = *(v0 + 1);
        MEMORY[0x24C243ED0](1);
        return Duration.hash(into:)();
      }

      v4 = 0;
    }

    goto LABEL_20;
  }

  if (*(v0 + 40) <= 5u)
  {
    if (v3 == 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

LABEL_20:
    MEMORY[0x24C243ED0](v4);

    return sub_24B5FFB1C();
  }

  if (v3 == 6)
  {
    v4 = 6;
    goto LABEL_20;
  }

  if (v3 == 7)
  {
    v4 = 7;
    goto LABEL_20;
  }

  MEMORY[0x24C243ED0](8);
  sub_24B5FFB1C();
}

uint64_t FilterItem.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  sub_24B5FFEFC();
  FilterItem.hash(into:)();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5AD984()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  sub_24B5FFEFC();
  FilterItem.hash(into:)();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5AD9E4()
{
  sub_24B5FFEFC();
  FilterItem.hash(into:)();
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v39[0] = *a1;
  v39[1] = v2;
  v39[2] = v5;
  v39[3] = v4;
  v39[4] = v6;
  v40 = v7;
  v41 = v9;
  v42 = v8;
  v43 = v11;
  v44 = v10;
  v45 = v12;
  v46 = v13;
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v13 == 2)
        {
          v22 = v6;
          if (v3 == v9 && v2 == v8)
          {
            sub_24B57BA1C(v3, v2, v11, v10, v12, 2u);
            v15 = v3;
            v16 = v2;
            v17 = v5;
            v18 = v4;
            v19 = v22;
            v20 = 2;
            goto LABEL_42;
          }

          v36 = sub_24B5FFECC();
          sub_24B57BA1C(v9, v8, v11, v10, v12, 2u);
          v29 = v3;
          v30 = v2;
          v31 = v5;
          v32 = v4;
          v33 = v22;
          v34 = 2;
          goto LABEL_54;
        }
      }

      else if (v13 == 3)
      {
        v26 = v6;
        if (v3 == v9 && v2 == v8)
        {
          sub_24B57BA1C(v3, v2, v11, v10, v12, 3u);
          v15 = v3;
          v16 = v2;
          v17 = v5;
          v18 = v4;
          v19 = v26;
          v20 = 3;
          goto LABEL_42;
        }

        v36 = sub_24B5FFECC();
        sub_24B57BA1C(v9, v8, v11, v10, v12, 3u);
        v29 = v3;
        v30 = v2;
        v31 = v5;
        v32 = v4;
        v33 = v26;
        v34 = 3;
        goto LABEL_54;
      }
    }

    else
    {
      if (!v7)
      {
        if (!v13)
        {
          v21 = v6;
          if (v3 == v9 && v2 == v8)
          {
            sub_24B57BA1C(v3, v2, v11, v10, v12, 0);
            v15 = v3;
            v16 = v2;
            v17 = v5;
            v18 = v4;
            v19 = v21;
            v20 = 0;
            goto LABEL_42;
          }

          v36 = sub_24B5FFECC();
          sub_24B57BA1C(v9, v8, v11, v10, v12, 0);
          v29 = v3;
          v30 = v2;
          v31 = v5;
          v32 = v4;
          v33 = v21;
          v34 = 0;
LABEL_54:
          sub_24B57BA1C(v29, v30, v31, v32, v33, v34);
          sub_24B5AF398(v39);
          return v36 & 1;
        }

        goto LABEL_43;
      }

      if (v13 == 1)
      {
        v38[0] = v3;
        v38[1] = v2;
        v38[2] = v5;
        v38[3] = v4;
        v38[4] = v6;
        v37[0] = v9;
        v37[1] = v8;
        v37[2] = v11;
        v37[3] = v10;
        v37[4] = v12;
        v35 = v6;
        v25 = _s16FitnessFiltering8DurationV2eeoiySbAC_ACtFZ_0(v38, v37);
        sub_24B57BA1C(v9, v8, v11, v10, v12, 1u);
        sub_24B57BA1C(v3, v2, v5, v4, v35, 1u);
        goto LABEL_37;
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v7 <= 5)
  {
    if (v7 == 4)
    {
      if (v13 == 4)
      {
        v23 = v6;
        if (v3 == v9 && v2 == v8)
        {
          sub_24B57BA1C(v3, v2, v11, v10, v12, 4u);
          v15 = v3;
          v16 = v2;
          v17 = v5;
          v18 = v4;
          v19 = v23;
          v20 = 4;
          goto LABEL_42;
        }

        v36 = sub_24B5FFECC();
        sub_24B57BA1C(v9, v8, v11, v10, v12, 4u);
        v29 = v3;
        v30 = v2;
        v31 = v5;
        v32 = v4;
        v33 = v23;
        v34 = 4;
        goto LABEL_54;
      }
    }

    else if (v13 == 5)
    {
      v27 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_24B57BA1C(v3, v2, v11, v10, v12, 5u);
        v15 = v3;
        v16 = v2;
        v17 = v5;
        v18 = v4;
        v19 = v27;
        v20 = 5;
        goto LABEL_42;
      }

      v36 = sub_24B5FFECC();
      sub_24B57BA1C(v9, v8, v11, v10, v12, 5u);
      v29 = v3;
      v30 = v2;
      v31 = v5;
      v32 = v4;
      v33 = v27;
      v34 = 5;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v7 == 6)
  {
    if (v13 == 6)
    {
      v24 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_24B57BA1C(v3, v2, v11, v10, v12, 6u);
        v15 = v3;
        v16 = v2;
        v17 = v5;
        v18 = v4;
        v19 = v24;
        v20 = 6;
        goto LABEL_42;
      }

      v36 = sub_24B5FFECC();
      sub_24B57BA1C(v9, v8, v11, v10, v12, 6u);
      v29 = v3;
      v30 = v2;
      v31 = v5;
      v32 = v4;
      v33 = v24;
      v34 = 6;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v7 == 7)
  {
    if (v13 == 7)
    {
      v14 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_24B57BA1C(v3, v2, v11, v10, v12, 7u);
        v15 = v3;
        v16 = v2;
        v17 = v5;
        v18 = v4;
        v19 = v14;
        v20 = 7;
LABEL_42:
        sub_24B57BA1C(v15, v16, v17, v18, v19, v20);
        sub_24B5AF398(v39);
        v25 = 1;
        return v25 & 1;
      }

      v36 = sub_24B5FFECC();
      sub_24B57BA1C(v9, v8, v11, v10, v12, 7u);
      v29 = v3;
      v30 = v2;
      v31 = v5;
      v32 = v4;
      v33 = v14;
      v34 = 7;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v13 != 8)
  {
LABEL_44:
    sub_24B57BA1C(v9, v8, v11, v10, v12, v13);
    sub_24B5AF398(v39);
    v25 = 0;
    return v25 & 1;
  }

  v25 = sub_24B5889A8(v3, v9);
LABEL_37:
  sub_24B5AF398(v39);
  return v25 & 1;
}

unint64_t sub_24B5AE064()
{
  result = qword_27F019060;
  if (!qword_27F019060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019060);
  }

  return result;
}

unint64_t sub_24B5AE0B8()
{
  result = qword_27F019068;
  if (!qword_27F019068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019068);
  }

  return result;
}

unint64_t sub_24B5AE10C()
{
  result = qword_27F019070;
  if (!qword_27F019070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019070);
  }

  return result;
}

unint64_t sub_24B5AE160()
{
  result = qword_27F019078;
  if (!qword_27F019078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019078);
  }

  return result;
}

unint64_t sub_24B5AE1B4()
{
  result = qword_27F019080;
  if (!qword_27F019080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019080);
  }

  return result;
}

unint64_t sub_24B5AE208()
{
  result = qword_27F019088;
  if (!qword_27F019088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019088);
  }

  return result;
}

unint64_t sub_24B5AE25C()
{
  result = qword_27F019090;
  if (!qword_27F019090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019090);
  }

  return result;
}

unint64_t sub_24B5AE2B0()
{
  result = qword_27F019098;
  if (!qword_27F019098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019098);
  }

  return result;
}

unint64_t sub_24B5AE304()
{
  result = qword_27F0190A0;
  if (!qword_27F0190A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0190A0);
  }

  return result;
}

unint64_t sub_24B5AE358()
{
  result = qword_27F0190A8;
  if (!qword_27F0190A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0190A8);
  }

  return result;
}

unint64_t sub_24B5AE3AC()
{
  result = qword_27F0190B0;
  if (!qword_27F0190B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0190B0);
  }

  return result;
}

unint64_t sub_24B5AE400()
{
  result = qword_27F0190B8;
  if (!qword_27F0190B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0190B8);
  }

  return result;
}

unint64_t sub_24B5AE454()
{
  result = qword_27F019110;
  if (!qword_27F019110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019110);
  }

  return result;
}

unint64_t sub_24B5AE4A8()
{
  result = qword_27F019118;
  if (!qword_27F019118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019118);
  }

  return result;
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

uint64_t sub_24B5AE510(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 41))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 40);
  if (v3 >= 9)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B5AE54C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_24B5AE598(uint64_t result, unsigned int a2)
{
  if (a2 > 8)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 9;
    LOBYTE(a2) = 9;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_24B5AE664()
{
  result = qword_27F019120;
  if (!qword_27F019120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019120);
  }

  return result;
}

unint64_t sub_24B5AE6BC()
{
  result = qword_27F019128;
  if (!qword_27F019128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019128);
  }

  return result;
}

unint64_t sub_24B5AE714()
{
  result = qword_27F019130;
  if (!qword_27F019130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019130);
  }

  return result;
}

unint64_t sub_24B5AE76C()
{
  result = qword_27F019138;
  if (!qword_27F019138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019138);
  }

  return result;
}

unint64_t sub_24B5AE7C4()
{
  result = qword_27F019140;
  if (!qword_27F019140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019140);
  }

  return result;
}

unint64_t sub_24B5AE81C()
{
  result = qword_27F019148;
  if (!qword_27F019148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019148);
  }

  return result;
}

unint64_t sub_24B5AE874()
{
  result = qword_27F019150;
  if (!qword_27F019150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019150);
  }

  return result;
}

unint64_t sub_24B5AE8CC()
{
  result = qword_27F019158;
  if (!qword_27F019158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019158);
  }

  return result;
}

unint64_t sub_24B5AE924()
{
  result = qword_27F019160;
  if (!qword_27F019160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019160);
  }

  return result;
}

unint64_t sub_24B5AE97C()
{
  result = qword_27F019168;
  if (!qword_27F019168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019168);
  }

  return result;
}

unint64_t sub_24B5AE9D4()
{
  result = qword_27F019170;
  if (!qword_27F019170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019170);
  }

  return result;
}

unint64_t sub_24B5AEA2C()
{
  result = qword_27F019178;
  if (!qword_27F019178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019178);
  }

  return result;
}

unint64_t sub_24B5AEA84()
{
  result = qword_27F019180;
  if (!qword_27F019180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019180);
  }

  return result;
}

unint64_t sub_24B5AEADC()
{
  result = qword_27F019188;
  if (!qword_27F019188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019188);
  }

  return result;
}

unint64_t sub_24B5AEB34()
{
  result = qword_27F019190;
  if (!qword_27F019190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019190);
  }

  return result;
}

unint64_t sub_24B5AEB8C()
{
  result = qword_27F019198;
  if (!qword_27F019198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019198);
  }

  return result;
}

unint64_t sub_24B5AEBE4()
{
  result = qword_27F0191A0;
  if (!qword_27F0191A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191A0);
  }

  return result;
}

unint64_t sub_24B5AEC3C()
{
  result = qword_27F0191A8;
  if (!qword_27F0191A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191A8);
  }

  return result;
}

unint64_t sub_24B5AEC94()
{
  result = qword_27F0191B0;
  if (!qword_27F0191B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191B0);
  }

  return result;
}

unint64_t sub_24B5AECEC()
{
  result = qword_27F0191B8;
  if (!qword_27F0191B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191B8);
  }

  return result;
}

unint64_t sub_24B5AED44()
{
  result = qword_27F0191C0;
  if (!qword_27F0191C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191C0);
  }

  return result;
}

unint64_t sub_24B5AED9C()
{
  result = qword_27F0191C8;
  if (!qword_27F0191C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191C8);
  }

  return result;
}

unint64_t sub_24B5AEDF4()
{
  result = qword_27F0191D0;
  if (!qword_27F0191D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191D0);
  }

  return result;
}

unint64_t sub_24B5AEE4C()
{
  result = qword_27F0191D8;
  if (!qword_27F0191D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191D8);
  }

  return result;
}

unint64_t sub_24B5AEEA4()
{
  result = qword_27F0191E0;
  if (!qword_27F0191E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191E0);
  }

  return result;
}

unint64_t sub_24B5AEEFC()
{
  result = qword_27F0191E8;
  if (!qword_27F0191E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191E8);
  }

  return result;
}

unint64_t sub_24B5AEF54()
{
  result = qword_27F0191F0;
  if (!qword_27F0191F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191F0);
  }

  return result;
}

unint64_t sub_24B5AEFAC()
{
  result = qword_27F0191F8;
  if (!qword_27F0191F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191F8);
  }

  return result;
}

unint64_t sub_24B5AF004()
{
  result = qword_27F019200;
  if (!qword_27F019200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019200);
  }

  return result;
}

unint64_t sub_24B5AF05C()
{
  result = qword_27F019208;
  if (!qword_27F019208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019208);
  }

  return result;
}

uint64_t sub_24B5AF0B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75636F4679646F62 && a2 == 0xE900000000000073;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEA00000000006572 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEA00000000006C65 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656E69617274 && a2 == 0xE700000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7469617274 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24B5AF398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B40, &qword_24B600DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FilterResult.init(bodyFocusIdentifiers:durationIdentifiers:equipmentIdentifiers:modalityIdentifiers:musicGenreIdentifiers:results:skillLevelIdentifiers:themeIdentifiers:trainerIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

unint64_t sub_24B5AF46C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x73746C75736572;
    v2 = 0xD000000000000012;
    if (a1 == 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 == 4)
    {
      v1 = 0xD000000000000015;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24B5AF59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B5B0A84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B5AF5C4(uint64_t a1)
{
  v2 = sub_24B5B0668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5AF600(uint64_t a1)
{
  v2 = sub_24B5B0668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019210, &qword_24B6031B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v25 = v1[2];
  v26 = v9;
  v12 = v1[5];
  v23 = v1[4];
  v24 = v11;
  v13 = v1[7];
  v21 = v1[6];
  v22 = v12;
  v19 = v1[8];
  v20 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5B0668();

  v15 = v4;
  sub_24B5FFF5C();
  v28 = v10;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019220, &qword_24B6031B8);
  sub_24B5B0710(&qword_27F019228);
  sub_24B5FFE8C();
  if (v2)
  {
  }

  else
  {
    v16 = v25;

    v28 = v26;
    v27 = 1;
    sub_24B5FFE8C();
    v28 = v16;
    v27 = 2;
    sub_24B5FFE8C();
    v28 = v24;
    v27 = 3;
    sub_24B5FFE8C();
    v28 = v23;
    v27 = 4;
    sub_24B5FFE8C();
    v28 = v22;
    v27 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019230, &qword_24B6031C0);
    sub_24B5B077C(&qword_27F019238, sub_24B5B06BC);
    sub_24B5FFE8C();
    v28 = v21;
    v27 = 6;
    sub_24B5FFE8C();
    v28 = v20;
    v27 = 7;
    sub_24B5FFE8C();
    v28 = v19;
    v27 = 8;
    sub_24B5FFE8C();
  }

  return (*(v5 + 8))(v8, v15);
}

uint64_t FilterResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019248, &qword_24B6031C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5B0668();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019220, &qword_24B6031B8);
  LOBYTE(v32) = 0;
  sub_24B5B0710(&qword_27F019250);
  sub_24B5FFDDC();
  v30 = v37[0];
  LOBYTE(v32) = 1;
  sub_24B5FFDDC();
  v28 = v37[0];
  LOBYTE(v32) = 2;
  sub_24B5FFDDC();
  v27 = v37[0];
  LOBYTE(v32) = 3;
  sub_24B5FFDDC();
  v29 = v37[0];
  LOBYTE(v32) = 4;
  sub_24B5FFDDC();
  v11 = v37[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019230, &qword_24B6031C0);
  LOBYTE(v32) = 5;
  sub_24B5B077C(&qword_27F019258, sub_24B5B07F4);
  sub_24B5FFDDC();
  v26 = v37[0];
  LOBYTE(v32) = 6;
  v25 = 0;
  sub_24B5FFDDC();
  v24 = v37[0];
  LOBYTE(v32) = 7;
  sub_24B5FFDDC();
  v23 = v37[0];
  v38 = 8;
  sub_24B5FFDDC();
  (*(v6 + 8))(v9, v5);
  v12 = v39;
  v13 = v30;
  v14 = v28;
  *&v32 = v30;
  *(&v32 + 1) = v28;
  v15 = v27;
  v16 = v29;
  *&v33 = v27;
  *(&v33 + 1) = v29;
  v17 = v26;
  *&v34 = v11;
  *(&v34 + 1) = v26;
  *&v35 = v24;
  *(&v35 + 1) = v23;
  v36 = v39;
  v18 = v31;
  *(v31 + 64) = v39;
  v19 = v35;
  v18[2] = v34;
  v18[3] = v19;
  v20 = v33;
  *v18 = v32;
  v18[1] = v20;
  sub_24B5A0B98(&v32, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v37[3] = v16;
  v37[4] = v11;
  v37[5] = v17;
  v37[6] = v24;
  v37[7] = v23;
  v37[8] = v12;
  return sub_24B5A0B20(v37);
}

uint64_t FilterResult.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  sub_24B57B1DC(a1, *v1);
  sub_24B57B1DC(a1, v3);
  sub_24B57B1DC(a1, v4);
  sub_24B57B1DC(a1, v5);
  sub_24B57B1DC(a1, v6);
  v11 = *(v7 + 16);
  MEMORY[0x24C243ED0](v11);
  if (v11)
  {
    v12 = (v7 + 56);
    do
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;

      sub_24B5FFB1C();
      sub_24B5FFB1C();

      v12 += 4;
      --v11;
    }

    while (v11);
  }

  sub_24B57B1DC(a1, v9);
  sub_24B57B1DC(a1, v8);

  return sub_24B57B1DC(a1, v10);
}

uint64_t FilterResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  sub_24B5FFEFC();
  sub_24B57B1DC(v17, v1);
  sub_24B57B1DC(v17, v2);
  sub_24B57B1DC(v17, v3);
  sub_24B57B1DC(v17, v4);
  sub_24B57B1DC(v17, v5);
  v10 = *(v6 + 16);
  MEMORY[0x24C243ED0](v10);
  if (v10)
  {
    v11 = (v6 + 56);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;

      sub_24B5FFB1C();
      sub_24B5FFB1C();

      v11 += 4;
      --v10;
    }

    while (v10);
  }

  sub_24B57B1DC(v17, v8);
  sub_24B57B1DC(v17, v7);
  sub_24B57B1DC(v17, v9);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5B039C(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  sub_24B57B1DC(a1, v3);
  sub_24B57B1DC(a1, v4);
  sub_24B57B1DC(a1, v5);
  sub_24B57B1DC(a1, v6);
  sub_24B57B1DC(a1, v7);
  sub_24B5A8E1C(a1, v8);
  sub_24B57B1DC(a1, v9);
  sub_24B57B1DC(a1, v10);

  return sub_24B57B1DC(a1, v11);
}

uint64_t sub_24B5B0460()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_24B5FFEFC();
  sub_24B57B1DC(v11, v1);
  sub_24B57B1DC(v11, v2);
  sub_24B57B1DC(v11, v3);
  sub_24B57B1DC(v11, v4);
  sub_24B57B1DC(v11, v5);
  sub_24B5A8E1C(v11, v6);
  sub_24B57B1DC(v11, v7);
  sub_24B57B1DC(v11, v8);
  sub_24B57B1DC(v11, v9);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering12FilterResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v18 = a1[6];
  v14 = a1[8];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v16 = a1[7];
  v17 = a2[6];
  v15 = a2[7];
  v13 = a2[8];
  if ((sub_24B588540(*a1, *a2) & 1) == 0 || (sub_24B588540(v2, v7) & 1) == 0 || (sub_24B588540(v4, v9) & 1) == 0 || (sub_24B588540(v3, v8) & 1) == 0 || (sub_24B588540(v6, v11) & 1) == 0 || (sub_24B5D3968(v5, v10) & 1) == 0 || (sub_24B588540(v18, v17) & 1) == 0 || (sub_24B588540(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_24B588540(v14, v13);
}

unint64_t sub_24B5B0668()
{
  result = qword_27F019218;
  if (!qword_27F019218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019218);
  }

  return result;
}

unint64_t sub_24B5B06BC()
{
  result = qword_27F019240;
  if (!qword_27F019240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019240);
  }

  return result;
}

uint64_t sub_24B5B0710(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019220, &qword_24B6031B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B5B077C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019230, &qword_24B6031C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B5B07F4()
{
  result = qword_27F019260;
  if (!qword_27F019260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019260);
  }

  return result;
}

unint64_t sub_24B5B084C()
{
  result = qword_27F019268;
  if (!qword_27F019268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019268);
  }

  return result;
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

uint64_t sub_24B5B08C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24B5B090C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_24B5B0980()
{
  result = qword_27F019270;
  if (!qword_27F019270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019270);
  }

  return result;
}

unint64_t sub_24B5B09D8()
{
  result = qword_27F019278;
  if (!qword_27F019278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019278);
  }

  return result;
}

unint64_t sub_24B5B0A30()
{
  result = qword_27F019280;
  if (!qword_27F019280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019280);
  }

  return result;
}

uint64_t sub_24B5B0A84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000024B60A910 == a2;
  if (v3 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B60A930 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B60A950 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B60A970 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B60A990 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B60A9B0 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B60A9D0 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B60A9F0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t FilterTrainerSectionView.init(containerWidth:artworkViewBuilder:headerViewBuilder:options:onOptionSelected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  *(a7 + 16) = a8;
  *a7 = a1;
  *(a7 + 8) = a2;
  v13 = type metadata accessor for FilterTrainerSectionView();
  v14 = v13[28];

  a3(v15);

  *(a7 + v13[30]) = a4;
  v17 = (a7 + v13[29]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t FilterTrainerSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v2 = *(a1 + 80);
  v53 = *(a1 + 88);
  v54 = v2;
  v85 = v2;
  v86 = v53;
  v3 = *(a1 + 24);
  v57 = *(a1 + 32);
  v51 = (a1 + 40);
  v52 = (a1 + 56);
  v4 = *(a1 + 48);
  v48 = v3;
  v49 = v4;
  v50 = *(a1 + 64);
  v47 = a1;
  OpaqueTypeMetadata2 = v3;
  v83 = v4;
  v84 = v50;
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  v43 = sub_24B5FFBBC();
  v46 = *(a1 + 16);
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  v42 = sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  v45 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  sub_24B5FEFEC();
  WitnessTable = swift_getWitnessTable();
  v81 = MEMORY[0x277CDF918];
  v6 = MEMORY[0x277CDFAD8];
  v78 = swift_getWitnessTable();
  v79 = MEMORY[0x277CDF678];
  v76 = swift_getWitnessTable();
  v77 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FF82C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  sub_24B5FEFEC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0);
  swift_getWitnessTable();
  sub_24B57D828();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  sub_24B5FEFEC();
  v72 = swift_getOpaqueTypeConformance2();
  v73 = sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40);
  v44 = v6;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  v85 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470]);
  v69 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF93C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FEF2C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FF3AC();
  *&v84 = swift_getOpaqueTypeConformance2();
  *(&v84 + 1) = MEMORY[0x277CDE478];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v41 = sub_24B5FF94C();
  v40 = swift_getWitnessTable();
  v39 = sub_24B5FF87C();
  v43 = *(v39 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v36 - v8;
  v42 = sub_24B5FEFEC();
  v45 = *(v42 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  v37 = &v36 - v10;
  v11 = sub_24B5FF8DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_24B5FF8EC();
  v17 = *(v16 - 8);
  v18 = v17;
  v19 = v17[8];
  MEMORY[0x28223BE20](v16);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = xmmword_24B600A10;
  (*(v12 + 104))(v15, *MEMORY[0x277CDF108], v11);
  sub_24B5FF8FC();
  v22 = sub_24B5FFB9C();
  *(v22 + 16) = 5;
  v23 = v22 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v24 = v17[2];
  v24(v23, v21, v16);
  v25 = v17[9];
  v24(v23 + v25, v21, v16);
  v24(v23 + 2 * v25, v21, v16);
  v24(v23 + 3 * v25, v21, v16);
  (v18[4])(v23 + 4 * v25, v21, v16);
  sub_24B5FF1DC();
  *&v26 = v57;
  *(&v26 + 1) = *v51;
  *&v27 = v46;
  *(&v27 + 1) = v48;
  v58 = v27;
  v59 = v26;
  *&v26 = v49;
  *(&v26 + 1) = *v52;
  v60 = v26;
  v61 = v50;
  v62 = v54;
  v63 = v53;
  v64 = *(v47 + 96);
  v65 = v55;
  v66 = v22;
  v28 = v38;
  sub_24B5FF86C();

  v29 = v39;
  v30 = swift_getWitnessTable();
  v31 = v37;
  sub_24B5FF75C();
  (*(v43 + 8))(v28, v29);
  v32 = sub_24B5FF3EC();
  v67 = v30;
  v68 = MEMORY[0x277CDFC48];
  v33 = v42;
  v34 = swift_getWitnessTable();
  sub_24B57FC54(v32, 0x4034000000000000, 0, v33, v34);
  return (*(v45 + 8))(v31, v33);
}

uint64_t sub_24B5B1A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, ValueMetadata *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, ValueMetadata *a12, uint64_t a13, uint64_t a14)
{
  v147 = a8;
  v127 = a4;
  v128 = a7;
  v131 = a6;
  v132 = a1;
  v151 = a5;
  v144 = a3;
  v133 = a2;
  v142 = a9;
  v150 = a14;
  v130 = a13;
  v129 = a12;
  v146 = a11;
  v145 = a10;
  v16 = sub_24B5FF23C();
  v140 = *(v16 - 8);
  v141 = v16;
  v17 = *(v140 + 64);
  MEMORY[0x28223BE20](v16);
  v139 = v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24B5FF38C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v137 = v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_24B5FF3AC();
  Description = v149[-1].Description;
  v22 = Description[8];
  MEMORY[0x28223BE20](v149);
  v136 = v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24B5FF33C();
  v134 = *(v24 - 8);
  v135 = v24;
  v25 = *(v134 + 64);
  MEMORY[0x28223BE20](v24);
  v148 = v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = a4;
  v169 = a7;
  v170 = a10;
  v171 = a11;
  v172 = a12;
  v173 = a13;
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  v143 = sub_24B5FFBBC();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  v126 = sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v27 = sub_24B5FEFEC();
  WitnessTable = swift_getWitnessTable();
  v191 = MEMORY[0x277CDF918];
  v188 = swift_getWitnessTable();
  v189 = MEMORY[0x277CDF678];
  v28 = swift_getWitnessTable();
  v29 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0);
  v186 = v28;
  v187 = v29;
  v30 = swift_getWitnessTable();
  v168 = v27;
  v169 = v30;
  swift_getOpaqueTypeMetadata2();
  v168 = v27;
  v169 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = sub_24B5FF82C();
  v32 = swift_getWitnessTable();
  v168 = v31;
  v169 = v32;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  v33 = sub_24B5FEFEC();
  v168 = v31;
  v169 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0);
  v184 = OpaqueTypeConformance2;
  v185 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_24B57D828();
  v168 = v33;
  v169 = &type metadata for FilterButtonStyle;
  v170 = v36;
  v171 = v37;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  v38 = sub_24B5FEFEC();
  v168 = v33;
  v169 = &type metadata for FilterButtonStyle;
  v170 = v36;
  v171 = v37;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40);
  v182 = v39;
  v183 = v40;
  v41 = swift_getWitnessTable();
  v168 = v38;
  v169 = v41;
  swift_getOpaqueTypeMetadata2();
  v42 = sub_24B5FEFEC();
  v43 = v143;
  v44 = swift_getWitnessTable();
  v168 = v43;
  v169 = MEMORY[0x277D837D0];
  v170 = v42;
  v171 = v44;
  v172 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v168 = v38;
  v169 = v41;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470]);
  v180 = v45;
  v181 = v46;
  v179 = swift_getWitnessTable();
  swift_getWitnessTable();
  v47 = sub_24B5FF93C();
  v48 = swift_getWitnessTable();
  v168 = v47;
  v169 = v48;
  v110[2] = swift_getOpaqueTypeMetadata2();
  v168 = v47;
  v169 = v48;
  v110[1] = swift_getOpaqueTypeConformance2();
  v49 = sub_24B5FEF2C();
  v117 = *(v49 - 8);
  v50 = *(v117 + 64);
  MEMORY[0x28223BE20](v49);
  v110[0] = v110 - v51;
  v52 = swift_getWitnessTable();
  v168 = v49;
  v169 = v52;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v114 = *(OpaqueTypeMetadata2 - 8);
  v54 = *(v114 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v112 = v110 - v55;
  v118 = v49;
  v168 = v49;
  v110[4] = v52;
  v169 = v52;
  v56 = swift_getOpaqueTypeConformance2();
  v168 = OpaqueTypeMetadata2;
  v57 = v149;
  v169 = v149;
  v58 = MEMORY[0x277CDE478];
  v170 = v56;
  v171 = MEMORY[0x277CDE478];
  v59 = swift_getOpaqueTypeMetadata2();
  v120 = *(v59 - 8);
  v60 = *(v120 + 64);
  MEMORY[0x28223BE20](v59);
  v115 = v110 - v61;
  v116 = OpaqueTypeMetadata2;
  v168 = OpaqueTypeMetadata2;
  v169 = v57;
  v110[3] = v56;
  v170 = v56;
  v171 = v58;
  v62 = swift_getOpaqueTypeConformance2();
  v123 = v59;
  v168 = v59;
  v113 = v62;
  v169 = v62;
  v126 = swift_getOpaqueTypeMetadata2();
  v122 = *(v126 - 8);
  v63 = *(v122 + 64);
  v64 = MEMORY[0x28223BE20](v126);
  v125 = v110 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v111 = v110 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v121 = v110 - v69;
  v70 = v151;
  v124 = *(v151 - 8);
  v71 = *(v124 + 64);
  v72 = MEMORY[0x28223BE20](v68);
  v119 = v110 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v75 = v110 - v74;
  v168 = v144;
  v76 = v127;
  v77 = v128;
  v169 = v127;
  v170 = v70;
  v78 = v130;
  v79 = v131;
  v171 = v131;
  v172 = v128;
  v173 = v147;
  v174 = v145;
  v175 = v146;
  v80 = v129;
  v176 = v129;
  v177 = v130;
  v81 = v150;
  v178 = v150;
  v82 = type metadata accessor for FilterTrainerSectionView();
  v83 = v132;
  v84 = v132 + *(v82 + 112);
  v143 = v75;
  sub_24B5FC7F0(v84, v70, v81);
  sub_24B5FF3BC();
  v152 = v144;
  v153 = v76;
  v154 = v70;
  v155 = v79;
  v156 = v77;
  v157 = v147;
  v158 = v145;
  v159 = v146;
  v160 = v80;
  v161 = v78;
  v85 = v110[0];
  v162 = v81;
  v163 = v133;
  v164 = v83;
  sub_24B5EB7C0();
  sub_24B5FF31C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018908, &unk_24B600B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A20;
  LOBYTE(v79) = sub_24B5FF3DC();
  *(inited + 32) = v79;
  v87 = sub_24B5FF3BC();
  *(inited + 33) = v87;
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v79)
  {
    sub_24B5FF3CC();
  }

  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v87)
  {
    sub_24B5FF3CC();
  }

  v88 = v115;
  v89 = v112;
  v90 = v148;
  v91 = v118;
  sub_24B5FF62C();
  (*(v134 + 8))(v90, v135);
  (*(v117 + 8))(v85, v91);
  sub_24B5FF37C();
  v92 = v136;
  sub_24B5FF39C();
  v93 = v116;
  v94 = v149;
  sub_24B5FF67C();
  (Description[1])(v92, v94);
  (*(v114 + 8))(v89, v93);
  v95 = v139;
  sub_24B5FF22C();
  LOBYTE(v94) = sub_24B5FF3BC();
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v94)
  {
    sub_24B5FF3CC();
  }

  v96 = v111;
  v97 = v123;
  v98 = v113;
  sub_24B5FF66C();
  (*(v140 + 8))(v95, v141);
  (*(v120 + 8))(v88, v97);
  v168 = v97;
  v169 = v98;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = v121;
  v101 = v126;
  sub_24B5FC7F0(v96, v126, v99);
  v102 = v122;
  v149 = *(v122 + 8);
  (v149)(v96, v101);
  v103 = v124;
  v104 = v119;
  v105 = v151;
  (*(v124 + 16))(v119, v143, v151);
  v168 = v104;
  v106 = v125;
  (*(v102 + 16))(v125, v100, v101);
  v169 = v106;
  v166 = v99;
  v167[0] = v105;
  v167[1] = v101;
  v165 = v150;
  sub_24B5F7CDC(&v168, 2uLL, v167);
  v107 = v149;
  (v149)(v100, v101);
  v108 = *(v103 + 8);
  v108(v143, v105);
  (v107)(v106, v101);
  return (v108)(v104, v105);
}

uint64_t sub_24B5B2B00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B5B2B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, ValueMetadata *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v70 = a6;
  v71 = a8;
  v60 = a4;
  v61 = a7;
  v67 = a1;
  v68 = a5;
  v59 = a3;
  v72 = a2;
  v73 = a9;
  v69 = a14;
  v65 = a13;
  v64 = a12;
  v63 = a11;
  v62 = a10;
  v16 = sub_24B5FF28C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a4;
  v100 = a7;
  v101 = a10;
  v102 = a11;
  v103 = a12;
  v104 = a13;
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  v58 = sub_24B5FFBBC();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  v57 = sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v19 = sub_24B5FEFEC();
  WitnessTable = swift_getWitnessTable();
  v98 = MEMORY[0x277CDF918];
  v95 = swift_getWitnessTable();
  v96 = MEMORY[0x277CDF678];
  v20 = swift_getWitnessTable();
  v21 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0);
  v93 = v20;
  v94 = v21;
  v22 = swift_getWitnessTable();
  v99 = v19;
  v100 = v22;
  swift_getOpaqueTypeMetadata2();
  v99 = v19;
  v100 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = sub_24B5FF82C();
  v24 = swift_getWitnessTable();
  v99 = v23;
  v100 = v24;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  v25 = sub_24B5FEFEC();
  v99 = v23;
  v100 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0);
  v91 = OpaqueTypeConformance2;
  v92 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_24B57D828();
  v99 = v25;
  v100 = &type metadata for FilterButtonStyle;
  v101 = v28;
  v102 = v29;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  v30 = sub_24B5FEFEC();
  v99 = v25;
  v100 = &type metadata for FilterButtonStyle;
  v101 = v28;
  v102 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40);
  v89 = v31;
  v90 = v32;
  v33 = swift_getWitnessTable();
  v99 = v30;
  v100 = v33;
  swift_getOpaqueTypeMetadata2();
  v34 = sub_24B5FEFEC();
  v35 = v58;
  v36 = swift_getWitnessTable();
  v99 = v35;
  v100 = MEMORY[0x277D837D0];
  v101 = v34;
  v102 = v36;
  v103 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v99 = v30;
  v100 = v33;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470]);
  v87 = v37;
  v88 = v38;
  v86 = swift_getWitnessTable();
  v54[2] = swift_getWitnessTable();
  v39 = sub_24B5FF93C();
  v58 = *(v39 - 8);
  v40 = *(v58 + 64);
  MEMORY[0x28223BE20](v39);
  v42 = v54 - v41;
  v55 = swift_getWitnessTable();
  v99 = v39;
  v100 = v55;
  v57 = MEMORY[0x277CDEA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  v44 = *(v56 + 64);
  v45 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v47 = v54 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = v54 - v48;

  v54[1] = sub_24B5FF12C();
  v74 = v59;
  v75 = v60;
  v76 = v68;
  v77 = v70;
  v78 = v61;
  v79 = v71;
  v80 = v62;
  v81 = v63;
  v82 = v64;
  v83 = v65;
  v84 = v69;
  v85 = v72;
  sub_24B5CA50C();
  sub_24B5FF92C();
  v50 = v55;
  sub_24B5FF63C();
  (*(v58 + 8))(v42, v39);
  v99 = v39;
  v100 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  sub_24B5FC7F0(v47, OpaqueTypeMetadata2, v51);
  v52 = *(v56 + 8);
  v52(v47, OpaqueTypeMetadata2);
  sub_24B5FC7F0(v49, OpaqueTypeMetadata2, v51);
  return (v52)(v49, OpaqueTypeMetadata2);
}

uint64_t sub_24B5B3448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, ValueMetadata *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, ValueMetadata *a11, uint64_t a12, uint64_t a13)
{
  v80 = a7;
  v78 = a5;
  v77 = a4;
  v76 = a1;
  v82 = a9;
  v79 = a13;
  v96 = a2;
  v97 = a3;
  v65 = a2;
  v70 = a3;
  v98 = a4;
  v99 = a5;
  v100 = a6;
  v101 = a7;
  v71 = a6;
  v102 = a8;
  v103 = a10;
  v75 = a8;
  v72 = a10;
  v104 = a11;
  v105 = a12;
  v73 = a11;
  v74 = a12;
  v106 = a13;
  v68 = type metadata accessor for FilterTrainerSectionView();
  v67 = *(v68 - 8);
  v69 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = v60 - v16;
  v96 = a3;
  v97 = a6;
  v98 = a8;
  v99 = a10;
  v100 = a11;
  v101 = a12;
  v81 = type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  v64 = sub_24B5FFBBC();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v17 = sub_24B5FEFEC();
  WitnessTable = swift_getWitnessTable();
  v95 = MEMORY[0x277CDF918];
  v18 = MEMORY[0x277CDFAD8];
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x277CDF678];
  v19 = swift_getWitnessTable();
  v20 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0);
  v90 = v19;
  v91 = v20;
  v21 = swift_getWitnessTable();
  v96 = v17;
  v97 = v21;
  swift_getOpaqueTypeMetadata2();
  v96 = v17;
  v97 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = sub_24B5FF82C();
  v23 = swift_getWitnessTable();
  v96 = v22;
  v97 = v23;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  v24 = sub_24B5FEFEC();
  v96 = v22;
  v97 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0);
  v88 = OpaqueTypeConformance2;
  v89 = v26;
  v63 = v18;
  v27 = swift_getWitnessTable();
  v28 = sub_24B57D828();
  v96 = v24;
  v97 = &type metadata for FilterButtonStyle;
  v98 = v27;
  v99 = v28;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  v29 = sub_24B5FEFEC();
  v96 = v24;
  v97 = &type metadata for FilterButtonStyle;
  v98 = v27;
  v99 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40);
  v86 = v30;
  v87 = v31;
  v62 = v29;
  v61 = swift_getWitnessTable();
  v96 = v29;
  v97 = v61;
  v60[1] = MEMORY[0x277D7EDA0];
  swift_getOpaqueTypeMetadata2();
  v32 = sub_24B5FEFEC();
  v60[2] = v32;
  v33 = v64;
  v34 = swift_getWitnessTable();
  v96 = v33;
  v97 = MEMORY[0x277D837D0];
  v98 = v32;
  v99 = v34;
  v100 = MEMORY[0x277D837E0];
  v35 = sub_24B5FF8CC();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = v60 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = v60 - v41;
  v43 = v68;
  v44 = *(v76 + *(v68 + 120));
  v45 = v67;
  v46 = v66;
  (*(v67 + 16))(v66);
  v47 = (*(v45 + 80) + 104) & ~*(v45 + 80);
  v48 = swift_allocObject();
  v49 = v70;
  *(v48 + 2) = v65;
  *(v48 + 3) = v49;
  v50 = v78;
  *(v48 + 4) = v77;
  *(v48 + 5) = v50;
  v51 = v80;
  *(v48 + 6) = v71;
  *(v48 + 7) = v51;
  v52 = v72;
  *(v48 + 8) = v75;
  *(v48 + 9) = v52;
  v53 = v74;
  *(v48 + 10) = v73;
  *(v48 + 11) = v53;
  *(v48 + 12) = v79;
  (*(v45 + 32))(&v48[v47], v46, v43);

  v96 = v62;
  v97 = v61;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470]);
  v84 = v54;
  v85 = v55;
  v56 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF8AC();
  v83 = v56;
  v57 = swift_getWitnessTable();
  sub_24B5FC7F0(v40, v35, v57);
  v58 = *(v36 + 8);
  v58(v40, v35);
  sub_24B5FC7F0(v42, v35, v57);
  return (v58)(v42, v35);
}

uint64_t sub_24B5B3E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v201 = a7;
  v190 = a6;
  v195 = a2;
  v196 = a3;
  v197 = a1;
  v182 = a9;
  v200 = a15;
  v193 = a12;
  v198 = a10;
  v181 = sub_24B5FF1BC();
  v179 = *(v181 - 8);
  v19 = *(v179 + 64);
  MEMORY[0x28223BE20](v181);
  v180 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B5FFA3C();
  v177 = *(v21 - 8);
  v178 = v21;
  v22 = *(v177 + 64);
  MEMORY[0x28223BE20](v21);
  v176 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24B5FF9DC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v175 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24B5FF9FC();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v174 = &v137 - v32;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018968, &qword_24B600CF0);
  v33 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v171 = &v137 - v34;
  v199 = a5;
  v228 = a5;
  v229 = a8;
  v191 = a8;
  v194 = a11;
  v230 = a11;
  v231 = a12;
  v189 = a13;
  v232 = a13;
  v233 = a14;
  v164 = a14;
  v202 = type metadata accessor for Option();
  v188 = *(v202 - 8);
  v163 = *(v188 + 64);
  MEMORY[0x28223BE20](v202);
  v192 = &v137 - v35;
  v186 = a4;
  v228 = a4;
  v229 = a5;
  v230 = a6;
  v231 = v201;
  v232 = a8;
  v233 = a10;
  v234 = a11;
  v235 = a12;
  v236 = a13;
  v237 = a14;
  v238 = v200;
  v183 = type metadata accessor for FilterTrainerSectionView();
  v185 = *(v183 - 8);
  v162 = *(v185 + 64);
  MEMORY[0x28223BE20](v183);
  v187 = &v137 - v36;
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  v170 = sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v37 = sub_24B5FEFEC();
  WitnessTable = swift_getWitnessTable();
  v227 = MEMORY[0x277CDF918];
  v224 = swift_getWitnessTable();
  v225 = MEMORY[0x277CDF678];
  v38 = swift_getWitnessTable();
  v39 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0);
  v222 = v38;
  v223 = v39;
  v40 = swift_getWitnessTable();
  v228 = v37;
  v229 = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v228 = v37;
  v229 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_24B5FF82C();
  v156 = *(v41 - 8);
  v42 = *(v156 + 64);
  MEMORY[0x28223BE20](v41);
  v150 = &v137 - v43;
  v44 = swift_getWitnessTable();
  v228 = v41;
  v229 = v44;
  v45 = v41;
  v144 = v41;
  v145 = v44;
  v46 = v44;
  v155 = swift_getOpaqueTypeMetadata2();
  v160 = *(v155 - 8);
  v47 = *(v160 + 64);
  MEMORY[0x28223BE20](v155);
  v148 = &v137 - v48;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  v49 = sub_24B5FEFEC();
  v159 = *(v49 - 8);
  v50 = *(v159 + 64);
  MEMORY[0x28223BE20](v49);
  v152 = &v137 - v51;
  v228 = v45;
  v229 = v46;
  v52 = swift_getOpaqueTypeConformance2();
  v149 = v52;
  v53 = sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0);
  v220 = v52;
  v221 = v53;
  v54 = swift_getWitnessTable();
  v55 = sub_24B57D828();
  v228 = v49;
  v229 = &type metadata for FilterButtonStyle;
  v56 = v49;
  v140 = v49;
  v141 = v55;
  v230 = v54;
  v231 = v55;
  v142 = v54;
  v57 = v55;
  v147 = swift_getOpaqueTypeMetadata2();
  v151 = *(v147 - 8);
  v58 = *(v151 + 64);
  MEMORY[0x28223BE20](v147);
  v146 = &v137 - v59;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  v60 = sub_24B5FEFEC();
  v158 = v60;
  v161 = *(v60 - 8);
  v61 = *(v161 + 64);
  MEMORY[0x28223BE20](v60);
  v143 = &v137 - v62;
  v228 = v56;
  v229 = &type metadata for FilterButtonStyle;
  v230 = v54;
  v231 = v57;
  v63 = swift_getOpaqueTypeConformance2();
  v139 = v63;
  v64 = sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40);
  v218 = v63;
  v219 = v64;
  v157 = swift_getWitnessTable();
  v228 = v60;
  v229 = v157;
  v65 = swift_getOpaqueTypeMetadata2();
  v165 = *(v65 - 8);
  v66 = *(v165 + 64);
  MEMORY[0x28223BE20](v65);
  v184 = &v137 - v67;
  v167 = v68;
  v69 = sub_24B5FEFEC();
  v169 = *(v69 - 8);
  v170 = v69;
  v70 = *(v169 + 64);
  v71 = MEMORY[0x28223BE20](v69);
  v166 = &v137 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v168 = &v137 - v73;
  v74 = v185;
  (*(v185 + 16))(v187, v196, v183);
  v75 = v188;
  (*(v188 + 16))(v192, v195, v202);
  v138 = (*(v74 + 80) + 104) & ~*(v74 + 80);
  v162 = (v162 + *(v75 + 80) + v138) & ~*(v75 + 80);
  v163 = (v163 + v162 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  v77 = v186;
  v78 = v198;
  v79 = v199;
  *(v76 + 2) = v186;
  *(v76 + 3) = v79;
  v81 = v190;
  v80 = v191;
  v82 = v201;
  *(v76 + 4) = v190;
  *(v76 + 5) = v82;
  *(v76 + 6) = v80;
  *(v76 + 7) = v78;
  v83 = v193;
  *(v76 + 8) = v194;
  *(v76 + 9) = v83;
  v84 = v189;
  v85 = v164;
  *(v76 + 10) = v189;
  *(v76 + 11) = v85;
  *(v76 + 12) = v200;
  (*(v185 + 32))(&v76[v138], v187, v183);
  (*(v188 + 32))(&v76[v162], v192, v202);
  v86 = v196;
  *&v76[v163] = v197;
  v203 = v77;
  v204 = v79;
  v205 = v81;
  v206 = v82;
  v207 = v80;
  v208 = v78;
  v88 = v193;
  v87 = v194;
  v209 = v194;
  v210 = v193;
  v211 = v84;
  v212 = v85;
  v213 = v200;
  v89 = v195;
  v214 = v195;
  v215 = v86;
  v90 = v150;
  sub_24B5FF81C();
  sub_24B5FF3BC();
  sub_24B5FF91C();
  v91 = v148;
  v92 = v144;
  sub_24B5FF69C();
  (*(v156 + 8))(v90, v92);
  v93 = *MEMORY[0x277CE0118];
  v94 = sub_24B5FF18C();
  v95 = v171;
  (*(*(v94 - 8) + 104))(v171, v93, v94);
  *&v136 = v88;
  *(&v136 + 1) = v189;
  v96 = v89;
  v97 = sub_24B584BD4(v89, v186, v199, v190, v201, v191, v198, v87, v136, v85);
  *(v95 + *(v172 + 36)) = v97;
  sub_24B5FF90C();
  sub_24B5B7ADC();
  v98 = v152;
  v99 = v155;
  sub_24B5FF58C();
  sub_24B58090C(v95, &qword_27F018968, &qword_24B600CF0);
  (*(v160 + 8))(v91, v99);
  v100 = v146;
  v101 = v140;
  sub_24B5FF5BC();
  (*(v159 + 8))(v98, v101);
  v102 = v202;
  v103 = *(v202 + 68);
  v104 = *(v96 + v103) == 0;
  v105 = v143;
  v106 = v147;
  sub_24B5FF70C();
  (*(v151 + 8))(v100, v106);
  Option.identifier.getter(v102);
  v107 = v197;
  sub_24B5FF9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018988, &unk_24B6034F0);
  inited = swift_initStackObject();
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_24B600A40;
  *(inited + 40) = 0xE400000000000000;
  v109 = (*(v198 + 24))(v199);
  v110 = MEMORY[0x277D837D0];
  *(inited + 48) = v109;
  *(inited + 56) = v111;
  *(inited + 72) = v110;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v110;
  *(inited + 128) = 0x6973736572706D69;
  v112 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v107;
  *(inited + 168) = v112;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v110;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B5EA4D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018990, &unk_24B600BF0);
  swift_arrayDestroy();
  sub_24B5FF9CC();
  v113 = MEMORY[0x277D84F90];
  sub_24B5F033C(MEMORY[0x277D84F90]);
  sub_24B5F033C(v113);
  v114 = v174;
  v116 = v157;
  v115 = v158;
  sub_24B5FFA0C();
  v117 = sub_24B5FFA1C();
  (*(*(v117 - 8) + 56))(v114, 0, 1, v117);
  v118 = v176;
  sub_24B5FFA2C();
  sub_24B5FF55C();
  (*(v177 + 8))(v118, v178);
  sub_24B58090C(v114, &qword_27F018910, &qword_24B606920);
  (*(v161 + 8))(v105, v115);
  if (*(v96 + v103) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018998, &qword_24B600D30);
    v119 = v179;
    v120 = *(v179 + 72);
    v121 = (*(v179 + 80) + 32) & ~*(v179 + 80);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_24B600A30;
    sub_24B5FF19C();
    v228 = v122;
    sub_24B5B7C24(&qword_27F018970, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0);
    v124 = v180;
    v123 = v181;
    sub_24B5FFC6C();
    v125 = v119;
  }

  else
  {
    v228 = v113;
    sub_24B5B7C24(&qword_27F018970, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0);
    v124 = v180;
    v123 = v181;
    sub_24B5FFC6C();
    v125 = v179;
  }

  v228 = v115;
  v229 = v116;
  v126 = swift_getOpaqueTypeConformance2();
  v128 = v166;
  v127 = v167;
  v129 = v184;
  sub_24B5FF68C();
  (*(v125 + 8))(v124, v123);
  (*(v165 + 8))(v129, v127);
  v130 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470]);
  v216 = v126;
  v217 = v130;
  v131 = v170;
  v132 = swift_getWitnessTable();
  v133 = v168;
  sub_24B5FC7F0(v128, v131, v132);
  v134 = *(v169 + 8);
  v134(v128, v131);
  sub_24B5FC7F0(v133, v131, v132);
  return (v134)(v133, v131);
}

uint64_t sub_24B5B526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  v74 = a8;
  v72 = a7;
  v70 = a6;
  v69 = a5;
  v67 = a4;
  v64 = a3;
  v73 = a2;
  v71 = a1;
  v80 = a9;
  v68 = a12;
  v66 = a11;
  v65 = a10;
  v79 = sub_24B5FF35C();
  v78 = *(v79 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24B5FF89C();
  v14 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_24B5FF84C();
  v61 = *(v16 - 8);
  v17 = *(v61 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = sub_24B5FEFEC();
  v60 = *(v20 - 8);
  v21 = *(v60 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v51 - v22;
  v24 = sub_24B5FEFEC();
  v63 = *(v24 - 8);
  v25 = *(v63 + 64);
  MEMORY[0x28223BE20](v24);
  v57 = &v51 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v54 = v24;
  v27 = sub_24B5FEFEC();
  v62 = *(v27 - 8);
  v28 = *(v62 + 64);
  MEMORY[0x28223BE20](v27);
  v58 = &v51 - v29;
  v51 = swift_getWitnessTable();
  v98 = v51;
  v99 = MEMORY[0x277CDF918];
  v52 = swift_getWitnessTable();
  v96 = v52;
  v97 = MEMORY[0x277CDF678];
  v30 = swift_getWitnessTable();
  v53 = v30;
  v31 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0);
  v94 = v30;
  v95 = v31;
  v55 = swift_getWitnessTable();
  v92 = v27;
  v93 = v55;
  v56 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = *(OpaqueTypeMetadata2 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v51 - v38;
  sub_24B5FF12C();
  v81 = v64;
  v82 = v67;
  v83 = v69;
  v84 = v70;
  v85 = v72;
  v86 = v74;
  v87 = v65;
  v88 = v66;
  v89 = v68;
  v90 = v71;
  v91 = v73;
  sub_24B5FF83C();
  sub_24B5FF6EC();
  (*(v61 + 8))(v19, v16);
  sub_24B5FF90C();
  v40 = v57;
  sub_24B5FF6CC();
  (*(v60 + 8))(v23, v20);
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_24B5FF18C();
  v43 = v75;
  (*(*(v42 - 8) + 104))(v75, v41, v42);
  sub_24B5B7C24(&qword_27F019328, MEMORY[0x277CE1260]);
  v44 = v58;
  v45 = v54;
  sub_24B5FF5DC();
  sub_24B5B7C6C(v43, MEMORY[0x277CE1260]);
  (*(v63 + 8))(v40, v45);
  v46 = v77;
  sub_24B5FF34C();
  v47 = v55;
  sub_24B5FF65C();
  (*(v78 + 8))(v46, v79);
  (*(v62 + 8))(v44, v27);
  v92 = v27;
  v93 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B5FC7F0(v37, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v49 = *(v33 + 8);
  v49(v37, OpaqueTypeMetadata2);
  sub_24B5FC7F0(v39, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v49)(v39, OpaqueTypeMetadata2);
}

uint64_t sub_24B5B5BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v182 = a5;
  v183 = a7;
  v189 = a6;
  v180 = a3;
  v181 = a4;
  v169 = a2;
  v179 = a1;
  v174 = a9;
  v176 = a14;
  *&v175[16] = a13;
  *&v175[8] = a12;
  *v175 = a11;
  v177 = a10;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019330, &qword_24B603500);
  v17 = *(*(v155 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v155);
  v156 = &v152 - v19;
  v162 = *(a3 - 8);
  v20 = *(v162 + 64);
  MEMORY[0x28223BE20](v18);
  v158 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24B5FEFEC();
  v161 = *(v22 - 8);
  v23 = *(v161 + 64);
  MEMORY[0x28223BE20](v22);
  v157 = &v152 - v24;
  v188 = v25;
  v26 = sub_24B5FEFEC();
  v163 = *(v26 - 8);
  v27 = *(v163 + 64);
  MEMORY[0x28223BE20](v26);
  v159 = &v152 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  v187 = v26;
  v29 = sub_24B5FEFEC();
  v164 = *(v29 - 8);
  v30 = *(v164 + 64);
  MEMORY[0x28223BE20](v29);
  v160 = &v152 - v31;
  sub_24B5FF36C();
  v186 = v29;
  v32 = sub_24B5FEFEC();
  v167 = *(v32 - 8);
  v33 = *(v167 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v166 = &v152 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v165 = &v152 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F019290, &qword_24B603448);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v153 = (&v152 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019338, &qword_24B603508);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v168 = &v152 - v42;
  v43 = type metadata accessor for Artwork();
  v190 = *(v43 - 8);
  v191 = v43;
  v44 = v190[8];
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v152 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v152 - v49;
  MEMORY[0x28223BE20](v48);
  v154 = &v152 - v51;
  v185 = v32;
  v170 = v37;
  v52 = sub_24B5FF21C();
  v172 = *(v52 - 8);
  v173 = v52;
  v53 = *(v172 + 64);
  v54 = MEMORY[0x28223BE20](v52);
  v171 = &v152 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v178 = &v152 - v56;
  v57 = *(a8 + 8);
  v184 = a8;
  v58 = v57(a4, a8);
  v59 = v58;
  v60 = v58 + 56;
  v61 = 1 << *(v58 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v58 + 56);
  v64 = (v61 + 63) >> 6;

  v65 = 0;
  if (v63)
  {
    while (1)
    {
      v66 = v65;
LABEL_8:
      sub_24B57BA34(*(v59 + 48) + v190[9] * (__clz(__rbit64(v63)) | (v66 << 6)), v50);
      sub_24B57BA98(v50, v47);
      if (v47[*(v191 + 20)] > 4u)
      {
        if (v47[*(v191 + 20)] > 8u)
        {
          goto LABEL_25;
        }
      }

      else if (v47[*(v191 + 20)] <= 1u)
      {
        v47[*(v191 + 20)];
      }

      v67 = sub_24B5FFECC();

      if (v67)
      {
        break;
      }

      v63 &= v63 - 1;
      sub_24B5B7C6C(v47, type metadata accessor for Artwork);
      v65 = v66;
      if (!v63)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v66 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v66 >= v64)
      {

        v68 = v190;
        v69 = v190[7];
        v70 = v168;
        v71 = v168;
        v72 = 1;
        goto LABEL_18;
      }

      v63 = *(v60 + 8 * v66);
      ++v65;
      if (v63)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_25:
  }

  v70 = v168;
  sub_24B57BA98(v47, v168);
  v68 = v190;
  v69 = v190[7];
  v71 = v70;
  v72 = 0;
LABEL_18:
  v73 = v191;
  v69(v71, v72, 1, v191);
  v74 = v189;
  v75 = v185;

  v76 = (v68[6])(v70, 1, v73);
  v77 = MEMORY[0x277CDFC60];
  if (v76 == 1)
  {
    sub_24B58090C(v70, &qword_27F019338, &qword_24B603508);
    v78 = sub_24B5FF90C();
    v79 = v153;
    *v153 = v78;
    *(v79 + 8) = v80;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019340, &unk_24B603510);
    *(&v151 + 1) = *v175;
    *&v151 = v177;
    v82 = v181;
    v83 = v184;
    sub_24B5B6E84(v181, v184, v79 + *(v81 + 44), v151, *&v175[8]);
    v241 = v74;
    v242 = v77;
    WitnessTable = swift_getWitnessTable();
    v240 = MEMORY[0x277CE01B0];
    v84 = swift_getWitnessTable();
    v85 = sub_24B58085C(&qword_27F019348, &qword_27F019288, &qword_24B603440);
    v237 = v84;
    v238 = v85;
    v86 = swift_getWitnessTable();
    v87 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470]);
    v235 = v86;
    v236 = v87;
    swift_getWitnessTable();
    sub_24B58085C(&qword_27F019350, qword_27F019290, &qword_24B603448);
    sub_24B5F7FA4(v79, v75, v170);
    sub_24B58090C(v79, qword_27F019290, &qword_24B603448);
  }

  else
  {
    v88 = v70;
    v89 = v74;
    v90 = v154;
    sub_24B57BA98(v88, v154);
    v92 = *v169;
    v91 = *(v169 + 8);
    v93 = *MEMORY[0x277D09DF8];
    v94 = sub_24B5FEEAC();
    v95 = v73;
    v96 = v156;
    (*(*(v94 - 8) + 104))(v156, v93, v94);
    swift_storeEnumTagMultiPayload();
    v97 = *(v95 + 24);
    v98 = v90;
    v99 = v158;
    v92(v90, v96, v90 + v97);
    sub_24B58090C(v96, &qword_27F019330, &qword_24B603500);
    sub_24B5FF90C();
    v100 = v180;
    v101 = v157;
    sub_24B5FF6DC();
    (*(v162 + 8))(v99, v100);
    v198 = v89;
    v199 = v77;
    v102 = v188;
    v103 = swift_getWitnessTable();
    v104 = v159;
    sub_24B5FF5CC();
    (*(v161 + 8))(v101, v102);
    v196 = v103;
    v197 = MEMORY[0x277CE01B0];
    v105 = v187;
    v106 = swift_getWitnessTable();
    sub_24B5B7F50();
    v107 = v160;
    sub_24B5FF74C();
    (*(v163 + 8))(v104, v105);
    v108 = sub_24B58085C(&qword_27F019348, &qword_27F019288, &qword_24B603440);
    v194 = v106;
    v195 = v108;
    v109 = v186;
    v110 = swift_getWitnessTable();
    v111 = v166;
    sub_24B5FF64C();
    (*(v164 + 8))(v107, v109);
    v112 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470]);
    v192 = v110;
    v193 = v112;
    v113 = swift_getWitnessTable();
    v114 = v165;
    sub_24B5FC7F0(v111, v75, v113);
    v115 = *(v167 + 8);
    v115(v111, v75);
    sub_24B5FC7F0(v114, v75, v113);
    sub_24B58085C(&qword_27F019350, qword_27F019290, &qword_24B603448);
    sub_24B5F7EAC(v111, v75);
    v115(v111, v75);
    v115(v114, v75);
    sub_24B5B7C6C(v98, type metadata accessor for Artwork);
    v83 = v184;
    v82 = v181;
  }

  *&v232[0] = (*(v83 + 24))(v82, v83);
  *(&v232[0] + 1) = v116;
  sub_24B58096C();
  v117 = sub_24B5FF53C();
  v119 = v118;
  v121 = v120;
  sub_24B5FF4BC();
  v122 = sub_24B5FF50C();
  v124 = v123;
  v126 = v125;

  sub_24B5809C0(v117, v119, v121 & 1);

  v127 = sub_24B5FF4FC();
  v129 = v128;
  v131 = v130;
  sub_24B5809C0(v122, v124, v126 & 1);

  *&v232[0] = sub_24B584C9C(v179, v180, v181, v182, v189, v183, v184, v177, *v175, *&v175[16]);
  v132 = sub_24B5FF4DC();
  v134 = v133;
  v136 = v135;
  v138 = v137;
  sub_24B5809C0(v127, v129, v131 & 1);

  sub_24B5FF91C();
  sub_24B5FF03C();
  v234 = v136 & 1;
  *&v223 = v132;
  *(&v223 + 1) = v134;
  LOBYTE(v224) = v136 & 1;
  *(&v224 + 1) = *v233;
  DWORD1(v224) = *&v233[3];
  *(&v224 + 1) = v138;
  v140 = v171;
  v139 = v172;
  v141 = v178;
  v142 = v173;
  (*(v172 + 16))(v171, v178, v173);
  v219 = v229;
  v220 = v230;
  v221 = v231;
  v215 = v225;
  v216 = v226;
  v217 = v227;
  v218 = v228;
  v213 = v223;
  v214 = v224;
  v222[0] = v140;
  v222[1] = &v213;
  sub_24B5B7E5C(&v223, v232);
  v212[0] = v142;
  v212[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AC8, &unk_24B603450);
  v208 = v189;
  v209 = MEMORY[0x277CDFC60];
  v206 = swift_getWitnessTable();
  v207 = MEMORY[0x277CE01B0];
  v143 = swift_getWitnessTable();
  v144 = sub_24B58085C(&qword_27F019348, &qword_27F019288, &qword_24B603440);
  v204 = v143;
  v205 = v144;
  v145 = swift_getWitnessTable();
  v146 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470]);
  v202 = v145;
  v203 = v146;
  v147 = swift_getWitnessTable();
  v148 = sub_24B58085C(&qword_27F019350, qword_27F019290, &qword_24B603448);
  v200 = v147;
  v201 = v148;
  v210 = swift_getWitnessTable();
  v211 = sub_24B5B7ECC();
  sub_24B5F7CDC(v222, 2uLL, v212);
  sub_24B58090C(&v223, &qword_27F018AC8, &unk_24B603450);
  v149 = *(v139 + 8);
  v149(v141, v142);
  v232[6] = v219;
  v232[7] = v220;
  v232[8] = v221;
  v232[2] = v215;
  v232[3] = v216;
  v232[4] = v217;
  v232[5] = v218;
  v232[0] = v213;
  v232[1] = v214;
  sub_24B58090C(v232, &qword_27F018AC8, &unk_24B603450);
  return (v149)(v140, v142);
}

uint64_t sub_24B5B6E84@<X0>(uint64_t a1@<X3>, uint64_t a2@<X7>, uint64_t a3@<X8>, __int128 a4, __int128 a5)
{
  v64 = a3;
  v55[0] = a5;
  v55[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019368, &unk_24B609240);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = v55 - v9;
  v57 = sub_24B5FEFDC();
  v10 = *(v57 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v57);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019370, &qword_24B603520);
  v14 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v56 = v55 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019378, &qword_24B603528);
  v16 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v59 = v55 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019380, &qword_24B603530);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v61 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v60 = v55 - v22;
  v23 = (*(a2 + 24))(a1, a2);
  v25 = sub_24B5B7CCC(v23, v24);
  v27 = v26;

  v65 = v25;
  v66 = v27;
  sub_24B58096C();
  v28 = sub_24B5FF53C();
  v30 = v29;
  LOBYTE(v27) = v31;
  v32 = sub_24B5FF4FC();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_24B5809C0(v28, v30, v27 & 1);

  v65 = v32;
  v66 = v34;
  v39 = v36 & 1;
  v67 = v36 & 1;
  v68 = v38;
  v40 = v57;
  (*(v10 + 104))(v13, *MEMORY[0x277CDF9D8], v57);
  v41 = v56;
  sub_24B5FF61C();
  (*(v10 + 8))(v13, v40);
  sub_24B5809C0(v32, v34, v39);

  v42 = sub_24B5FF4BC();
  KeyPath = swift_getKeyPath();
  v44 = &v41[*(v58 + 36)];
  v45 = v41;
  *v44 = KeyPath;
  v44[1] = v42;
  v46 = *MEMORY[0x277CE09A0];
  v47 = sub_24B5FF47C();
  v48 = *(v47 - 8);
  v49 = v63;
  (*(v48 + 104))(v63, v46, v47);
  (*(v48 + 56))(v49, 0, 1, v47);
  sub_24B5B7FA4();
  v50 = v59;
  sub_24B5FF59C();
  sub_24B58090C(v49, &qword_27F019368, &unk_24B609240);
  sub_24B58090C(v45, &qword_27F019370, &qword_24B603520);
  *(v50 + *(v62 + 36)) = sub_24B5FF2BC();
  sub_24B5B808C();
  v51 = v60;
  sub_24B5FF64C();
  sub_24B58090C(v50, &qword_27F019378, &qword_24B603528);
  LODWORD(v46) = sub_24B5FF2CC();
  v52 = v61;
  sub_24B57528C(v51, v61);
  v53 = v64;
  sub_24B57528C(v52, v64);
  *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193B8, &qword_24B603578) + 48)) = v46;
  sub_24B58090C(v51, &qword_27F019380, &qword_24B603530);
  return sub_24B58090C(v52, &qword_27F019380, &qword_24B603530);
}

uint64_t sub_24B5B7478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = v3[3];
  v16 = v3[2];
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = v3[8];
  v9 = v3[9];
  v11 = v3[10];
  v10 = v3[11];
  v12 = v3[12];
  v13 = *(type metadata accessor for FilterTrainerSectionView() - 8);
  return sub_24B5B3E04(a1, a2, v3 + ((*(v13 + 80) + 104) & ~*(v13 + 80)), v16, v15, v4, v5, v6, a3, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_24B5B7560()
{
  v19 = *(v0 + 4);
  v1 = *(v0 + 6);
  v17 = *(v0 + 7);
  v18 = *(v0 + 5);
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 11);
  v16 = *(v0 + 12);
  v6 = *(type metadata accessor for FilterTrainerSectionView() - 8);
  v7 = *(v6 + 64);
  v8 = (*(v6 + 80) + 104) & ~*(v6 + 80);
  v9 = *(type metadata accessor for Option() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *&v0[(*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8];
  v12 = &v0[*(type metadata accessor for FilterTrainerSectionView() + 116) + v8];
  v14 = *v12;
  v13 = *(v12 + 1);
  return v14(&v0[v10], v11);
}

unint64_t sub_24B5B771C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_24B5FFB6C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_24B59637C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_24B59637C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_24B5FFB5C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_24B5FFB2C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_24B5FFB2C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_24B5FFB6C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_24B59637C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_24B5FFB6C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24B59637C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_24B59637C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_24B5FFB2C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24B5B7ADC()
{
  result = qword_27F019318;
  if (!qword_27F019318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018968, &qword_24B600CF0);
    sub_24B5B7C24(&qword_27F019320, MEMORY[0x277CE1260]);
    sub_24B58085C(&qword_27F018B00, &qword_27F018B08, &qword_24B600D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019318);
  }

  return result;
}

uint64_t sub_24B5B7C24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B5B7C6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B5B7CCC(uint64_t a1, unint64_t a2)
{
  v23 = 32;
  v24 = 0xE100000000000000;
  v22[2] = &v23;

  result = sub_24B5B771C(1, 1, sub_24B5B8180, v22, a1, a2, v4);
  v6 = result;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = (result + 56);
    v11 = 0xE000000000000000;
    while (v9 < *(v6 + 16))
    {
      v12 = *(v10 - 3);
      v13 = *(v10 - 2);
      v15 = *(v10 - 1);
      v14 = *v10;

      result = sub_24B5FFC4C();
      if (v16)
      {
        v17 = v13;
      }

      else
      {
        v17 = result;
      }

      if (v17 >> 14 < v12 >> 14)
      {
        goto LABEL_13;
      }

      ++v9;
      v18 = sub_24B5FFC5C();
      v27 = v8;
      v28 = v11;
      v23 = v18;
      v24 = v19;
      v25 = v20;
      v26 = v21;
      sub_24B5B81D8();
      sub_24B5FFB3C();

      v8 = v27;
      v11 = v28;
      v10 += 4;
      if (v7 == v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v8 = 0;
LABEL_11:

    return v8;
  }

  return result;
}

uint64_t sub_24B5B7E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AC8, &unk_24B603450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B5B7ECC()
{
  result = qword_27F019358;
  if (!qword_27F019358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019358);
  }

  return result;
}

unint64_t sub_24B5B7F50()
{
  result = qword_27F019360;
  if (!qword_27F019360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019360);
  }

  return result;
}

unint64_t sub_24B5B7FA4()
{
  result = qword_27F019388;
  if (!qword_27F019388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019370, &qword_24B603520);
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F019390, &qword_27F019398, &unk_24B608280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019388);
  }

  return result;
}

unint64_t sub_24B5B808C()
{
  result = qword_27F0193A0;
  if (!qword_27F0193A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019378, &qword_24B603528);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019370, &qword_24B603520);
    sub_24B5B7FA4();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F0193A8, &qword_27F0193B0, &qword_24B603570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0193A0);
  }

  return result;
}

uint64_t sub_24B5B8180(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B5FFECC() & 1;
  }
}

unint64_t sub_24B5B81D8()
{
  result = qword_27F0193C0;
  if (!qword_27F0193C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0193C0);
  }

  return result;
}

uint64_t sub_24B5B8244(uint64_t a1)
{
  v2 = sub_24B5B99D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8280(uint64_t a1)
{
  v2 = sub_24B5B99D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B82BC()
{
  v1 = *v0;
  v2 = 0x75636F4679646F62;
  v3 = 0x656D656874;
  if (v1 != 6)
  {
    v3 = 0x72656E69617274;
  }

  v4 = 0x6E6547636973756DLL;
  if (v1 != 4)
  {
    v4 = 0x76654C6C6C696B73;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E656D7069757165;
  if (v1 != 2)
  {
    v5 = 0x7974696C61646F6DLL;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461727564;
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

uint64_t sub_24B5B83B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B5B9EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B5B83EC(uint64_t a1)
{
  v2 = sub_24B5B9260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8428(uint64_t a1)
{
  v2 = sub_24B5B9260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B8464(uint64_t a1)
{
  v2 = sub_24B5B98CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B84A0(uint64_t a1)
{
  v2 = sub_24B5B98CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B84DC(uint64_t a1)
{
  v2 = sub_24B5B97C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8518(uint64_t a1)
{
  v2 = sub_24B5B97C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B8554(uint64_t a1)
{
  v2 = sub_24B5B96C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8590(uint64_t a1)
{
  v2 = sub_24B5B96C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B85CC(uint64_t a1)
{
  v2 = sub_24B5B95C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8608(uint64_t a1)
{
  v2 = sub_24B5B95C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B8644(uint64_t a1)
{
  v2 = sub_24B5B94BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8680(uint64_t a1)
{
  v2 = sub_24B5B94BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B86BC(uint64_t a1)
{
  v2 = sub_24B5B93B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B86F8(uint64_t a1)
{
  v2 = sub_24B5B93B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B8734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B5FFECC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B5B87BC(uint64_t a1)
{
  v2 = sub_24B5B92B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B87F8(uint64_t a1)
{
  v2 = sub_24B5B92B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterSectionContent.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v65 = a3;
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193C8, &qword_24B603580);
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193D0, &qword_24B603588);
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193D8, &qword_24B603590);
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10);
  v56 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193E0, &qword_24B603598);
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  MEMORY[0x28223BE20](v13);
  v53 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193E8, &qword_24B6035A0);
  v51 = *(v16 - 8);
  v52 = v16;
  v17 = *(v51 + 64);
  MEMORY[0x28223BE20](v16);
  v50 = &v45 - v18;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193F0, &qword_24B6035A8);
  v48 = *(v49 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v21 = &v45 - v20;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193F8, &qword_24B6035B0);
  v46 = *(v47 - 8);
  v22 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019400, &qword_24B6035B8);
  v45 = *(v25 - 8);
  v26 = *(v45 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v45 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019408, &qword_24B6035C0);
  v30 = *(v29 - 8);
  v67 = v29;
  v68 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v45 - v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5B9260();
  sub_24B5FFF5C();
  if (v65 > 3u)
  {
    if (v65 > 5u)
    {
      v37 = v67;
      if (v65 == 6)
      {
        LOBYTE(v69) = 6;
        sub_24B5B93B8();
        v38 = v59;
        sub_24B5FFE0C();
        v69 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019440, &unk_24B6035D8);
        sub_24B5B940C();
        v39 = v61;
        sub_24B5FFE8C();
        v40 = v60;
      }

      else
      {
        LOBYTE(v69) = 7;
        sub_24B5B92B4();
        v38 = v62;
        sub_24B5FFE0C();
        v69 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019420, &unk_24B6035C8);
        sub_24B5B9308();
        v39 = v64;
        sub_24B5FFE8C();
        v40 = v63;
      }
    }

    else
    {
      v37 = v67;
      if (v65 == 4)
      {
        LOBYTE(v69) = 4;
        sub_24B5B95C0();
        v38 = v53;
        sub_24B5FFE0C();
        v69 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019480, &qword_24B6035F8);
        sub_24B5B9614();
        v39 = v55;
        sub_24B5FFE8C();
        v40 = v54;
      }

      else
      {
        LOBYTE(v69) = 5;
        sub_24B5B94BC();
        v38 = v56;
        sub_24B5FFE0C();
        v69 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019460, &unk_24B6035E8);
        sub_24B5B9510();
        v39 = v58;
        sub_24B5FFE8C();
        v40 = v57;
      }
    }

    goto LABEL_16;
  }

  if (v65 > 1u)
  {
    if (v65 == 2)
    {
      LOBYTE(v69) = 2;
      sub_24B5B97C8();
      v37 = v67;
      sub_24B5FFE0C();
      v69 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194C0, &qword_24B603618);
      sub_24B5B981C();
      v41 = v49;
      sub_24B5FFE8C();
      (*(v48 + 8))(v21, v41);
      v42 = *(v68 + 8);
      v43 = v33;
      return v42(v43, v37);
    }

    LOBYTE(v69) = 3;
    sub_24B5B96C4();
    v38 = v50;
    v37 = v67;
    sub_24B5FFE0C();
    v69 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194A0, &unk_24B603608);
    sub_24B5B9718();
    v39 = v52;
    sub_24B5FFE8C();
    v40 = v51;
LABEL_16:
    (*(v40 + 8))(v38, v39);
    v42 = *(v68 + 8);
    v43 = v33;
    return v42(v43, v37);
  }

  if (!v65)
  {
    LOBYTE(v69) = 0;
    sub_24B5B99D0();
    v35 = v67;
    sub_24B5FFE0C();
    v69 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019500, &unk_24B603638);
    sub_24B5B9A24();
    sub_24B5FFE8C();
    (*(v45 + 8))(v28, v25);
    return (*(v68 + 8))(v33, v35);
  }

  LOBYTE(v69) = 1;
  sub_24B5B98CC();
  v37 = v67;
  sub_24B5FFE0C();
  v69 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194E0, &qword_24B603628);
  sub_24B5B9920();
  v44 = v47;
  sub_24B5FFE8C();
  (*(v46 + 8))(v24, v44);
  v42 = *(v68 + 8);
  v43 = v33;
  return v42(v43, v37);
}

unint64_t sub_24B5B9260()
{
  result = qword_27F019410;
  if (!qword_27F019410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019410);
  }

  return result;
}

unint64_t sub_24B5B92B4()
{
  result = qword_27F019418;
  if (!qword_27F019418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019418);
  }

  return result;
}

unint64_t sub_24B5B9308()
{
  result = qword_27F019428;
  if (!qword_27F019428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019420, &unk_24B6035C8);
    sub_24B58085C(&qword_27F019430, &qword_27F018BD8, &unk_24B601060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019428);
  }

  return result;
}

unint64_t sub_24B5B93B8()
{
  result = qword_27F019438;
  if (!qword_27F019438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019438);
  }

  return result;
}

unint64_t sub_24B5B940C()
{
  result = qword_27F019448;
  if (!qword_27F019448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019440, &unk_24B6035D8);
    sub_24B58085C(&qword_27F019450, &qword_27F018BE0, &qword_24B602300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019448);
  }

  return result;
}

unint64_t sub_24B5B94BC()
{
  result = qword_27F019458;
  if (!qword_27F019458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019458);
  }

  return result;
}

unint64_t sub_24B5B9510()
{
  result = qword_27F019468;
  if (!qword_27F019468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019460, &unk_24B6035E8);
    sub_24B58085C(&qword_27F019470, &qword_27F018BE8, &unk_24B601070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019468);
  }

  return result;
}

unint64_t sub_24B5B95C0()
{
  result = qword_27F019478;
  if (!qword_27F019478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019478);
  }

  return result;
}

unint64_t sub_24B5B9614()
{
  result = qword_27F019488;
  if (!qword_27F019488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019480, &qword_24B6035F8);
    sub_24B58085C(&qword_27F019490, &qword_27F018BF0, &qword_24B603600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019488);
  }

  return result;
}

unint64_t sub_24B5B96C4()
{
  result = qword_27F019498;
  if (!qword_27F019498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019498);
  }

  return result;
}

unint64_t sub_24B5B9718()
{
  result = qword_27F0194A8;
  if (!qword_27F0194A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194A0, &unk_24B603608);
    sub_24B58085C(&qword_27F0194B0, &qword_27F018BF8, &unk_24B601080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194A8);
  }

  return result;
}

unint64_t sub_24B5B97C8()
{
  result = qword_27F0194B8;
  if (!qword_27F0194B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194B8);
  }

  return result;
}

unint64_t sub_24B5B981C()
{
  result = qword_27F0194C8;
  if (!qword_27F0194C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194C0, &qword_24B603618);
    sub_24B58085C(&qword_27F0194D0, &qword_27F018C00, &qword_24B603620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194C8);
  }

  return result;
}

unint64_t sub_24B5B98CC()
{
  result = qword_27F0194D8;
  if (!qword_27F0194D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194D8);
  }

  return result;
}

unint64_t sub_24B5B9920()
{
  result = qword_27F0194E8;
  if (!qword_27F0194E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194E0, &qword_24B603628);
    sub_24B58085C(&qword_27F0194F0, &qword_27F018C20, &qword_24B603630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194E8);
  }

  return result;
}

unint64_t sub_24B5B99D0()
{
  result = qword_27F0194F8;
  if (!qword_27F0194F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194F8);
  }

  return result;
}

unint64_t sub_24B5B9A24()
{
  result = qword_27F019508;
  if (!qword_27F019508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019500, &unk_24B603638);
    sub_24B58085C(&qword_27F019510, &qword_27F018C08, &qword_24B601090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019508);
  }

  return result;
}

uint64_t sub_24B5B9AEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24B5BA17C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t FilterSectionContent.hash(into:)(__int128 *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        MEMORY[0x24C243ED0](6);

        return sub_24B5A7570(a1, a2);
      }

      else
      {
        MEMORY[0x24C243ED0](7);

        return sub_24B5A755C(a1, a2);
      }
    }

    else
    {
      if (a3 == 4)
      {
        MEMORY[0x24C243ED0](4);
        v5 = a1;
        v6 = a2;

        return sub_24B5AB35C(v5, v6);
      }

      MEMORY[0x24C243ED0](5);

      return sub_24B5A76B8(a1, a2);
    }
  }

  else if (a3 > 1u)
  {
    if (a3 == 2)
    {
      MEMORY[0x24C243ED0](2);
      v5 = a1;
      v6 = a2;

      return sub_24B5AB35C(v5, v6);
    }

    MEMORY[0x24C243ED0](3);

    return sub_24B5A7830(a1, a2);
  }

  else
  {
    if (!a3)
    {
      MEMORY[0x24C243ED0](0);
      v5 = a1;
      v6 = a2;

      return sub_24B5AB35C(v5, v6);
    }

    MEMORY[0x24C243ED0](1);

    return sub_24B5A79B0(a1, a2);
  }
}

uint64_t FilterSectionContent.hashValue.getter(uint64_t a1, unsigned __int8 a2)
{
  sub_24B5FFEFC();
  FilterSectionContent.hash(into:)(v5, a1, a2);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5B9D40()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24B5FFEFC();
  FilterSectionContent.hash(into:)(v4, v1, v2);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5B9D9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24B5FFEFC();
  FilterSectionContent.hash(into:)(v4, v1, v2);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering20FilterSectionContentO2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        if (a4 == 6)
        {
          return sub_24B5D321C(a1, a3);
        }
      }

      else if (a4 == 7)
      {
        return sub_24B5D3488(a1, a3);
      }
    }

    else if (a2 == 4)
    {
      if (a4 == 4)
      {
        return sub_24B5D31F4(a1, a3);
      }
    }

    else if (a4 == 5)
    {
      return sub_24B5D3208(a1, a3);
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a4 == 2)
      {
        return sub_24B5D2CE8(a1, a3);
      }
    }

    else if (a4 == 3)
    {
      return sub_24B5D2F30(a1, a3);
    }
  }

  else if (a2)
  {
    if (a4 == 1)
    {
      return sub_24B5D2BE4(a1, a3);
    }
  }

  else if (!a4)
  {
    return sub_24B5D2BD0(a1, a3);
  }

  return 0;
}

uint64_t sub_24B5B9EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75636F4679646F62 && a2 == 0xE900000000000073;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEA00000000006572 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEA00000000006C65 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656E69617274 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24B5BA17C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0195F8, &qword_24B604260);
  v3 = *(v2 - 8);
  v88 = v2;
  v89 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v91 = v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019600, &qword_24B604268);
  v7 = *(v6 - 8);
  v86 = v6;
  v87 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v95 = v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019608, &qword_24B604270);
  v11 = *(v10 - 8);
  v84 = v10;
  v85 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v94 = v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019610, &qword_24B604278);
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20](v14);
  v93 = v71 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019618, &qword_24B604280);
  v80 = *(v81 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v92 = v71 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019620, &qword_24B604288);
  v78 = *(v79 - 8);
  v19 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v90 = v71 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019628, &qword_24B604290);
  v76 = *(v77 - 8);
  v21 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v23 = v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019630, &qword_24B604298);
  v75 = *(v24 - 8);
  v25 = *(v75 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v71 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019638, &unk_24B6042A0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v71 - v31;
  v33 = a1[3];
  v34 = a1[4];
  v97 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_24B5B9260();
  v35 = v96;
  sub_24B5FFF4C();
  if (v35)
  {
    goto LABEL_11;
  }

  v73 = v27;
  v72 = v24;
  v36 = v23;
  v74 = 0;
  v38 = v92;
  v37 = v93;
  v40 = v94;
  v39 = v95;
  v96 = v29;
  v41 = sub_24B5FFDEC();
  v42 = (2 * *(v41 + 16)) | 1;
  v98 = v41;
  v99 = v41 + 32;
  v100 = 0;
  v101 = v42;
  v43 = sub_24B5A6AB8();
  if (v43 != 8 && v100 == v101 >> 1)
  {
    v71[1] = v43;
    if (v43 <= 3u)
    {
      if (v43 > 1u)
      {
        if (v43 == 2)
        {
          LOBYTE(v102) = 2;
          sub_24B5B97C8();
          v55 = v90;
          v56 = v74;
          sub_24B5FFD4C();
          v57 = v96;
          if (v56)
          {
LABEL_31:
            (*(v57 + 8))(v32, v28);
            goto LABEL_10;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194C0, &qword_24B603618);
          sub_24B5BBE34();
          v58 = v79;
          sub_24B5FFDDC();
          v59 = &v103;
        }

        else
        {
          LOBYTE(v102) = 3;
          sub_24B5B96C4();
          v55 = v38;
          v63 = v74;
          sub_24B5FFD4C();
          v57 = v96;
          if (v63)
          {
            goto LABEL_31;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194A0, &unk_24B603608);
          sub_24B5BBD84();
          v58 = v81;
          sub_24B5FFDDC();
          v59 = &v104;
        }

        (*(*(v59 - 32) + 8))(v55, v58);
      }

      else
      {
        if (!v43)
        {
          LOBYTE(v102) = 0;
          sub_24B5B99D0();
          v44 = v73;
          v45 = v74;
          sub_24B5FFD4C();
          if (!v45)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019500, &unk_24B603638);
            sub_24B5BBF94();
            v46 = v72;
            sub_24B5FFDDC();
            (*(v75 + 8))(v44, v46);
            (*(v96 + 8))(v32, v28);
            swift_unknownObjectRelease();
LABEL_40:
            v29 = v102;
            __swift_destroy_boxed_opaque_existential_1(v97);
            return v29;
          }

          goto LABEL_26;
        }

        LOBYTE(v102) = 1;
        sub_24B5B98CC();
        v61 = v74;
        sub_24B5FFD4C();
        if (v61)
        {
LABEL_26:
          v57 = v96;
          goto LABEL_31;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194E0, &qword_24B603628);
        sub_24B5BBEE4();
        v62 = v77;
        sub_24B5FFDDC();
        (*(v76 + 8))(v36, v62);
        v57 = v96;
      }

      (*(v57 + 8))(v32, v28);
LABEL_39:
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    v52 = v96;
    v53 = v74;
    if (v43 > 5u)
    {
      if (v43 == 6)
      {
        LOBYTE(v102) = 6;
        sub_24B5B93B8();
        v60 = v39;
        sub_24B5FFD4C();
        if (!v53)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019440, &unk_24B6035D8);
          sub_24B5BBB74();
          v54 = v86;
          sub_24B5FFDDC();
          v68 = *(v87 + 8);
          v69 = v60;
LABEL_37:
          v70 = v54;
          goto LABEL_38;
        }
      }

      else
      {
        LOBYTE(v102) = 7;
        sub_24B5B92B4();
        v64 = v91;
        sub_24B5FFD4C();
        if (!v53)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019420, &unk_24B6035C8);
          sub_24B5BBAC4();
          v65 = v88;
          sub_24B5FFDDC();
          v68 = *(v89 + 8);
          v69 = v64;
          v70 = v65;
LABEL_38:
          v68(v69, v70);
          (*(v52 + 8))(v32, v28);
          goto LABEL_39;
        }
      }
    }

    else if (v43 == 4)
    {
      LOBYTE(v102) = 4;
      sub_24B5B95C0();
      v40 = v37;
      sub_24B5FFD4C();
      if (!v53)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019480, &qword_24B6035F8);
        sub_24B5BBCD4();
        v54 = v83;
        sub_24B5FFDDC();
        v67 = v82;
LABEL_36:
        v68 = *(v67 + 8);
        v69 = v40;
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v102) = 5;
      sub_24B5B94BC();
      sub_24B5FFD4C();
      if (!v53)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019460, &unk_24B6035E8);
        sub_24B5BBC24();
        v54 = v84;
        sub_24B5FFDDC();
        v67 = v85;
        goto LABEL_36;
      }
    }

    v66 = *(v52 + 8);
    v29 = v52 + 8;
    v66(v32, v28);
    goto LABEL_10;
  }

  v29 = sub_24B5FFCFC();
  swift_allocError();
  v48 = v47;
  v49 = v32;
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E80, &qword_24B602460) + 48);
  *v48 = &type metadata for FilterSectionContent;
  sub_24B5FFD5C();
  sub_24B5FFCEC();
  (*(*(v29 - 8) + 104))(v48, *MEMORY[0x277D84160], v29);
  swift_willThrow();
  (*(v96 + 8))(v49, v28);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v97);
  return v29;
}

unint64_t sub_24B5BAE94()
{
  result = qword_27F019518;
  if (!qword_27F019518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019518);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24B5BAF08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 9))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B5BAF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EditorialTrait(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EditorialTrait(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B5BB180()
{
  result = qword_27F019520;
  if (!qword_27F019520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019520);
  }

  return result;
}

unint64_t sub_24B5BB1D8()
{
  result = qword_27F019528;
  if (!qword_27F019528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019528);
  }

  return result;
}

unint64_t sub_24B5BB230()
{
  result = qword_27F019530;
  if (!qword_27F019530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019530);
  }

  return result;
}

unint64_t sub_24B5BB288()
{
  result = qword_27F019538;
  if (!qword_27F019538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019538);
  }

  return result;
}

unint64_t sub_24B5BB2E0()
{
  result = qword_27F019540;
  if (!qword_27F019540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019540);
  }

  return result;
}

unint64_t sub_24B5BB338()
{
  result = qword_27F019548;
  if (!qword_27F019548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019548);
  }

  return result;
}

unint64_t sub_24B5BB390()
{
  result = qword_27F019550;
  if (!qword_27F019550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019550);
  }

  return result;
}

unint64_t sub_24B5BB3E8()
{
  result = qword_27F019558;
  if (!qword_27F019558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019558);
  }

  return result;
}

unint64_t sub_24B5BB440()
{
  result = qword_27F019560;
  if (!qword_27F019560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019560);
  }

  return result;
}

unint64_t sub_24B5BB498()
{
  result = qword_27F019568;
  if (!qword_27F019568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019568);
  }

  return result;
}

unint64_t sub_24B5BB4F0()
{
  result = qword_27F019570;
  if (!qword_27F019570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019570);
  }

  return result;
}

unint64_t sub_24B5BB548()
{
  result = qword_27F019578;
  if (!qword_27F019578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019578);
  }

  return result;
}

unint64_t sub_24B5BB5A0()
{
  result = qword_27F019580;
  if (!qword_27F019580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019580);
  }

  return result;
}

unint64_t sub_24B5BB5F8()
{
  result = qword_27F019588;
  if (!qword_27F019588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019588);
  }

  return result;
}

unint64_t sub_24B5BB650()
{
  result = qword_27F019590;
  if (!qword_27F019590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019590);
  }

  return result;
}

unint64_t sub_24B5BB6A8()
{
  result = qword_27F019598;
  if (!qword_27F019598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019598);
  }

  return result;
}

unint64_t sub_24B5BB700()
{
  result = qword_27F0195A0;
  if (!qword_27F0195A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195A0);
  }

  return result;
}

unint64_t sub_24B5BB758()
{
  result = qword_27F0195A8;
  if (!qword_27F0195A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195A8);
  }

  return result;
}

unint64_t sub_24B5BB7B0()
{
  result = qword_27F0195B0;
  if (!qword_27F0195B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195B0);
  }

  return result;
}

unint64_t sub_24B5BB808()
{
  result = qword_27F0195B8;
  if (!qword_27F0195B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195B8);
  }

  return result;
}

unint64_t sub_24B5BB860()
{
  result = qword_27F0195C0;
  if (!qword_27F0195C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195C0);
  }

  return result;
}

unint64_t sub_24B5BB8B8()
{
  result = qword_27F0195C8;
  if (!qword_27F0195C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195C8);
  }

  return result;
}

unint64_t sub_24B5BB910()
{
  result = qword_27F0195D0;
  if (!qword_27F0195D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195D0);
  }

  return result;
}

unint64_t sub_24B5BB968()
{
  result = qword_27F0195D8;
  if (!qword_27F0195D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195D8);
  }

  return result;
}

unint64_t sub_24B5BB9C0()
{
  result = qword_27F0195E0;
  if (!qword_27F0195E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195E0);
  }

  return result;
}

unint64_t sub_24B5BBA18()
{
  result = qword_27F0195E8;
  if (!qword_27F0195E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195E8);
  }

  return result;
}

unint64_t sub_24B5BBA70()
{
  result = qword_27F0195F0;
  if (!qword_27F0195F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195F0);
  }

  return result;
}

unint64_t sub_24B5BBAC4()
{
  result = qword_27F019640;
  if (!qword_27F019640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019420, &unk_24B6035C8);
    sub_24B58085C(&qword_27F019648, &qword_27F018BD8, &unk_24B601060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019640);
  }

  return result;
}

unint64_t sub_24B5BBB74()
{
  result = qword_27F019650;
  if (!qword_27F019650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019440, &unk_24B6035D8);
    sub_24B58085C(&qword_27F019658, &qword_27F018BE0, &qword_24B602300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019650);
  }

  return result;
}

unint64_t sub_24B5BBC24()
{
  result = qword_27F019660;
  if (!qword_27F019660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019460, &unk_24B6035E8);
    sub_24B58085C(&qword_27F019668, &qword_27F018BE8, &unk_24B601070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019660);
  }

  return result;
}

unint64_t sub_24B5BBCD4()
{
  result = qword_27F019670;
  if (!qword_27F019670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019480, &qword_24B6035F8);
    sub_24B58085C(&qword_27F019678, &qword_27F018BF0, &qword_24B603600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019670);
  }

  return result;
}

unint64_t sub_24B5BBD84()
{
  result = qword_27F019680;
  if (!qword_27F019680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194A0, &unk_24B603608);
    sub_24B58085C(&qword_27F019688, &qword_27F018BF8, &unk_24B601080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019680);
  }

  return result;
}

unint64_t sub_24B5BBE34()
{
  result = qword_27F019690;
  if (!qword_27F019690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194C0, &qword_24B603618);
    sub_24B58085C(&qword_27F019698, &qword_27F018C00, &qword_24B603620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019690);
  }

  return result;
}

unint64_t sub_24B5BBEE4()
{
  result = qword_27F0196A0;
  if (!qword_27F0196A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194E0, &qword_24B603628);
    sub_24B58085C(&qword_27F0196A8, &qword_27F018C20, &qword_24B603630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0196A0);
  }

  return result;
}

unint64_t sub_24B5BBF94()
{
  result = qword_27F0196B0;
  if (!qword_27F0196B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019500, &unk_24B603638);
    sub_24B58085C(&qword_27F0196B8, &qword_27F018C08, &qword_24B601090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0196B0);
  }

  return result;
}

uint64_t sub_24B5BC068(uint64_t a1)
{
  v2 = sub_24B5BD174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC0A4(uint64_t a1)
{
  v2 = sub_24B5BD174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC0E0(uint64_t a1)
{
  v2 = sub_24B5BCE80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC11C(uint64_t a1)
{
  v2 = sub_24B5BCE80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC158(uint64_t a1)
{
  v2 = sub_24B5BD120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC194(uint64_t a1)
{
  v2 = sub_24B5BD120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC1D0(uint64_t a1)
{
  v2 = sub_24B5BD0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC20C(uint64_t a1)
{
  v2 = sub_24B5BD0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC248(uint64_t a1)
{
  v2 = sub_24B5BD078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC284(uint64_t a1)
{
  v2 = sub_24B5BD078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC2C0(uint64_t a1)
{
  v2 = sub_24B5BD024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC2FC(uint64_t a1)
{
  v2 = sub_24B5BD024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC338(uint64_t a1)
{
  v2 = sub_24B5BCFD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC374(uint64_t a1)
{
  v2 = sub_24B5BCFD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC3B0(uint64_t a1)
{
  v2 = sub_24B5BCF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC3EC(uint64_t a1)
{
  v2 = sub_24B5BCF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC428(uint64_t a1)
{
  v2 = sub_24B5BCF28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC464(uint64_t a1)
{
  v2 = sub_24B5BCF28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC4A0(uint64_t a1)
{
  v2 = sub_24B5BCED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC4DC(uint64_t a1)
{
  v2 = sub_24B5BCED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterKind.encode(to:)(void *a1, int a2)
{
  LODWORD(v79) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196C0, &qword_24B6042B0);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v70 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196C8, &qword_24B6042B8);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196D0, &qword_24B6042C0);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v64 = &v55 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196D8, &qword_24B6042C8);
  v62 = *(v63 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v55 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196E0, &qword_24B6042D0);
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v55 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196E8, &qword_24B6042D8);
  v78 = *(v57 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v57);
  v77 = &v55 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196F0, &qword_24B6042E0);
  v76 = *(v56 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x28223BE20](v56);
  v75 = &v55 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196F8, &qword_24B6042E8);
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019700, &qword_24B6042F0);
  v73 = *(v24 - 8);
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019708, &qword_24B6042F8);
  v28 = *(v81 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v81);
  v31 = &v55 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5BCE80();
  v80 = v31;
  sub_24B5FFF5C();
  v33 = (v28 + 8);
  v34 = v79;
  if (v79 <= 3u)
  {
    v72 = v24;
    v79 = v33;
    v41 = v73;
    v40 = v74;
    v42 = v75;
    v43 = v76;
    v44 = v77;
    v45 = v78;
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v84 = 2;
        sub_24B5BD0CC();
        v49 = v42;
        v51 = v80;
        v50 = v81;
        sub_24B5FFE0C();
        (*(v43 + 8))(v49, v56);
      }

      else
      {
        v85 = 3;
        sub_24B5BD078();
        v53 = v44;
        v51 = v80;
        v50 = v81;
        sub_24B5FFE0C();
        (*(v45 + 8))(v53, v57);
      }
    }

    else
    {
      if (!v34)
      {
        v82 = 0;
        sub_24B5BD174();
        v46 = v80;
        v47 = v81;
        sub_24B5FFE0C();
        (*(v41 + 8))(v27, v72);
        return (*v79)(v46, v47);
      }

      v83 = 1;
      sub_24B5BD120();
      v51 = v80;
      v50 = v81;
      sub_24B5FFE0C();
      (*(v40 + 8))(v23, v20);
    }

    return (*v79)(v51, v50);
  }

  else
  {
    if (v79 <= 5u)
    {
      if (v79 == 4)
      {
        v86 = 4;
        sub_24B5BD024();
        v52 = v58;
        v36 = v80;
        v37 = v81;
        sub_24B5FFE0C();
        (*(v59 + 8))(v52, v60);
      }

      else
      {
        v87 = 5;
        sub_24B5BCFD0();
        v54 = v61;
        v36 = v80;
        v37 = v81;
        sub_24B5FFE0C();
        (*(v62 + 8))(v54, v63);
      }
    }

    else
    {
      if (v79 == 6)
      {
        v88 = 6;
        sub_24B5BCF7C();
        v35 = v64;
        v36 = v80;
        v37 = v81;
        sub_24B5FFE0C();
        v39 = v65;
        v38 = v66;
      }

      else if (v79 == 7)
      {
        v89 = 7;
        sub_24B5BCF28();
        v35 = v67;
        v36 = v80;
        v37 = v81;
        sub_24B5FFE0C();
        v39 = v68;
        v38 = v69;
      }

      else
      {
        v90 = 8;
        sub_24B5BCED4();
        v35 = v70;
        v36 = v80;
        v37 = v81;
        sub_24B5FFE0C();
        v39 = v71;
        v38 = v72;
      }

      (*(v39 + 8))(v35, v38);
    }

    return (*v33)(v36, v37);
  }
}