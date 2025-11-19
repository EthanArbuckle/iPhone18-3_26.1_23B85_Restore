const char *sub_1CF229F00(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v47 = a4;
  v43 = a1;
  v44 = a3;
  v42[3] = a2;
  v49 = *v5;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v42 - v16;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v48 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v7 + 56))(v17, 1, 1, v6);
  sub_1CEFCCBDC(v17, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v22 = *(v7 + 48);
  if (v22(v15, 1, v6) == 1)
  {
    v23 = v21;
    sub_1CF9E6048();
    if (v22(v15, 1, v6) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v15, v6);
  }

  v24 = v48;
  (*(v7 + 16))(v48, v10, v6);
  *(v24 + *(v18 + 20)) = v21;
  v25 = "SQLDB: list folders with non-indexed materialized items";
  v26 = v24 + *(v18 + 24);
  *v26 = "SQLDB: list folders with non-indexed materialized items";
  *(v26 + 8) = 55;
  *(v26 + 16) = 2;
  v27 = v21;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v7 + 8))(v10, v6);
  v28 = sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v28);
  v29 = v45;
  v30 = (*(v46 + 24))(sub_1CF24F048);
  if (v29)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v24, type metadata accessor for Signpost);
  }

  else
  {
    v31 = v30;
    v45 = v27;
    v32 = v49[77];
    v33 = v49[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v35 = MEMORY[0x1E69E6530];
    swift_getTupleTypeMetadata2();
    v36 = sub_1CF9E6DA8();
    v43 = *(swift_getAssociatedConformanceWitness() + 40);
    v44 = AssociatedTypeWitness;
    v25 = sub_1CF04F294(v36, AssociatedTypeWitness, v35, v43);

    v51 = v25;
    v50 = 0;
    if ([v31 next])
    {
      do
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v49[76];
        v39 = v49[78];
        sub_1CF22A720(&v50, v31, &v51);
        objc_autoreleasePoolPop(v37);
      }

      while (([v31 next] & 1) != 0);
      v25 = v51;
    }

    sub_1CF9E6698();

    sub_1CF9E7458();
    v40 = v48;
    sub_1CF9E6038();
    sub_1CEFD5218(v40, type metadata accessor for Signpost);
  }

  return v25;
}

uint64_t sub_1CF22A504(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000059, 0x80000001CFA38B20);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA38B80);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA38BC0);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38BF0);
  v9 = [a1 bindLongParameter_];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA38C10);
  v13 = [a1 bindLongParameter_];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  MEMORY[0x1D3868CC0](v14, v16);

  return 0;
}

uint64_t sub_1CF22A720(void *a1, void *a2, uint64_t a3)
{
  v20[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20[0] = *(AssociatedTypeWitness - 8);
  v6 = *(v20[0] + 64);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  *a1 = [a2 longAtIndex_];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(*(AssociatedConformanceWitness + 8) + 16);
  v14 = a2;
  v15 = v22;
  result = v13();
  if (!v15)
  {
    v17 = [v14 longAtIndex_];
    v18 = v20[0];
    (*(v20[0] + 16))(v9, v11, AssociatedTypeWitness);
    v20[2] = v17;
    v21 = 0;
    v19 = *(AssociatedConformanceWitness + 40);
    sub_1CF9E6708();
    sub_1CF9E6738();
    return (*(v18 + 8))(v11, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1CF22A934()
{
  v1 = *v0;
  v2 = *(*v0 + 632);
  v3 = *(*v0 + 616);
  v4 = *(*v0 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  v6 = *(*v0 + 640);
  v7 = *(v1 + 624);
  v8 = *(v1 + 608);
  v9 = swift_getAssociatedTypeWitness();
  (*(*(v9 - 8) + 8))(v0 + v6, v9);
  v10 = *(v0 + *(*v0 + 648) + 8);

  v11 = *(v0 + *(*v0 + 656) + 8);

  v12 = *(v0 + *(*v0 + 672));

  v13 = *(v0 + *(*v0 + 688));

  v14 = *(v0 + *(*v0 + 696));
}

uint64_t sub_1CF22AB28()
{
  v1 = *v0;
  v2 = sub_1CF341938();
  v3 = *(*v2 + 632);
  v4 = v1[77];
  v5 = v1[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v2 + v3, AssociatedTypeWitness);
  v7 = *(*v2 + 640);
  v8 = v1[78];
  v9 = v1[76];
  v10 = swift_getAssociatedTypeWitness();
  (*(*(v10 - 8) + 8))(v2 + v7, v10);
  v11 = *(v2 + *(*v2 + 648) + 8);

  v12 = *(v2 + *(*v2 + 656) + 8);

  v13 = *(v2 + *(*v2 + 672));

  v14 = *(v2 + *(*v2 + 688));

  v15 = *(v2 + *(*v2 + 696));

  return v2;
}

uint64_t sub_1CF22AD34(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

void sub_1CF22AD8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1CF24F8BC(319, &qword_1EDEA3740);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CF22AE24(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void sub_1CF22AF40(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

unint64_t sub_1CF22B0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](95, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a4, a5);
  return 0xD00000000000002DLL;
}

uint64_t sub_1CF22B1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA356F0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000088, 0x80000001CFA35720);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](538970668, 0xE400000000000000);
  MEMORY[0x1D3868CC0](a4, a5);
  MEMORY[0x1D3868CC0](0xD000000000000146, 0x80000001CFA357B0);
  v16 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v18 = (*(*(v17 + 8) + 8))(v16);
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](0xD000000000000088, 0x80000001CFA35900);
  MEMORY[0x1D3868CC0](a6, a7);
  MEMORY[0x1D3868CC0](538970668, 0xE400000000000000);
  MEMORY[0x1D3868CC0](a8, a9);
  MEMORY[0x1D3868CC0](0xD0000000000004B3, 0x80000001CFA35990);
  return 0;
}

uint64_t sub_1CF22B810()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000019DLL, 0x80000001CFA30D50);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA30B40);
  return 0;
}

uint64_t sub_1CF22B8CC()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000001DCLL, 0x80000001CFA30B70);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA30B40);
  return 0;
}

uint64_t sub_1CF22B988()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000001A3, 0x80000001CFA30990);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA30B40);
  return 0;
}

uint64_t sub_1CF22BA44()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000002D6, 0x80000001CFA30670);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA30950);
  return 0;
}

uint64_t sub_1CF22BC18()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA34EB0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA34EE0);
  v3 = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedConformanceWitness();
  v5 = (*(*(v4 + 8) + 8))(v3);
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000045, 0x80000001CFA34F00);
  return 0;
}

uint64_t sub_1CF22BE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v12 = a3;
  v13 = v3;
  v7 = *(a3 + 32);
  result = (v7)(sub_1CF24CC6C, v10, a2, a3);
  if (!v4)
  {
    MEMORY[0x1EEE9AC00](result);
    v9 = v7(sub_1CF24CC78);
    MEMORY[0x1EEE9AC00](v9);
    v7(sub_1CF24CC84);
    (v7)(sub_1CF22CD44, 0, a2, a3);
    return (v7)(sub_1CF22CDD8, 0, a2, a3);
  }

  return result;
}

uint64_t sub_1CF22BFF8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000011CLL, 0x80000001CFA32700);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA32820);
  v5 = *(a2 + *(*a2 + 688));
  v6 = *(v5 + 16);
  if (v6)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v6, 0);
    v7 = v43;
    v8 = (v5 + 32);
    sub_1CF056E98();
    do
    {
      v9 = *v8++;
      v10 = sub_1CF9E7718();
      v44 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        v42 = v10;
        v15 = v11;
        sub_1CEFE95CC((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v10 = v42;
        v7 = v44;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v16 = sub_1CF9E67D8();
  v18 = v17;

  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](0xD000000000000111, 0x80000001CFA32840);
  v19 = v3[75];
  v20 = v3[76];
  v21 = v3[77];
  v22 = v3[78];
  type metadata accessor for Propagation.UpdateItem();
  v45 = qword_1CF9FF5D0[sub_1CF057C00()];
  v23 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v23);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA32660);
  v24 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v24);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA32960);
  type metadata accessor for Propagation.CreateItem();
  v46 = qword_1CF9FF5D0[sub_1CF057C00()];
  v25 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v25);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA32980);
  v26 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v26);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA329A0);
  v27 = *(v5 + 16);
  if (v27)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v27, 0);
    v28 = v47;
    v29 = (v5 + 32);
    sub_1CF056E98();
    do
    {
      v30 = *v29++;
      v31 = sub_1CF9E7718();
      v48 = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        v36 = v31;
        v37 = v32;
        sub_1CEFE95CC((v33 > 1), v34 + 1, 1);
        v32 = v37;
        v31 = v36;
        v28 = v48;
      }

      *(v28 + 16) = v34 + 1;
      v35 = v28 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v32;
      --v27;
    }

    while (v27);
  }

  v38 = sub_1CF9E67D8();
  v40 = v39;

  MEMORY[0x1D3868CC0](v38, v40);

  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA329D0);
  return 0;
}

uint64_t sub_1CF22C538(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000011ELL, 0x80000001CFA32310);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA32430);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA32460);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA32490);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA324B0);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000130, 0x80000001CFA32500);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA32640);
  v10 = v3[75];
  v11 = v3[76];
  v12 = v3[77];
  v35 = v3[78];
  type metadata accessor for Propagation.UpdateItem();
  v36 = qword_1CF9FF5D0[sub_1CF057C00()];
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA32660);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA32680);
  v15 = *(a2 + *(*a2 + 688));
  v16 = *(v15 + 16);
  if (v16)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v16, 0);
    v17 = v37;
    v18 = (v15 + 32);
    sub_1CF056E98();
    do
    {
      v19 = *v18++;
      v20 = sub_1CF9E7718();
      v38 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        v34 = v20;
        v25 = v21;
        sub_1CEFE95CC((v22 > 1), v23 + 1, 1);
        v21 = v25;
        v20 = v34;
        v17 = v38;
      }

      *(v17 + 16) = v23 + 1;
      v24 = v17 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      --v16;
    }

    while (v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v26 = sub_1CF9E67D8();
  v28 = v27;

  MEMORY[0x1D3868CC0](v26, v28);

  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA326B0);
  type metadata accessor for Propagation.CreateItem();
  v39 = qword_1CF9FF5D0[sub_1CF057C00()];
  v29 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v29);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA32680);
  v30 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v30);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v31 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v31);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA326D0);
  v32 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v32);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF22CB50(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007DLL, 0x80000001CFA32290);
  v3 = *(a2 + *(*a2 + 688));
  v4 = *(v3 + 16);
  if (v4)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v4, 0);
    v5 = v19;
    v6 = (v3 + 32);
    sub_1CF056E98();
    do
    {
      v7 = *v6++;
      v8 = sub_1CF9E7718();
      v20 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = v8;
        v14 = v9;
        sub_1CEFE95CC((v10 > 1), v11 + 1, 1);
        v9 = v14;
        v8 = v13;
        v5 = v20;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      --v4;
    }

    while (v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v15 = sub_1CF9E67D8();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF22CD44()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000FDLL, 0x80000001CFA32190);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  return 0;
}

uint64_t sub_1CF22CDD8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000065, 0x80000001CFA32120);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  return 0;
}

uint64_t sub_1CF22CE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  result = (v6)(sub_1CF22D034, 0, a2, a3);
  if (!v3)
  {
    (v6)(sub_1CF22D050, 0, a2, a3);
    (v6)(sub_1CF22D06C, 0, a2, a3);
    (v6)(sub_1CF22D088, 0, a2, a3);
    v8 = (v6)(sub_1CF22D0A4, 0, a2, a3);
    MEMORY[0x1EEE9AC00](v8);
    v6(sub_1CF24CC60);
    return (v6)(sub_1CF22D304, 0, a2, a3);
  }

  return result;
}

uint64_t sub_1CF22D0A4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000075, 0x80000001CFA32000);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  return 0;
}

uint64_t sub_1CF22D13C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000075, 0x80000001CFA31F60);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA31FE0);
  v8 = *(a2 + *(*a2 + 696));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

uint64_t sub_1CF22D320()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D3, 0x80000001CFA31DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v0 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000040, 0x80000001CFA31E90);
  return 0;
}

uint64_t sub_1CF22D488()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000F5, 0x80000001CFA31C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v0 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000069, 0x80000001CFA31D40);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF22D62C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007BLL, 0x80000001CFA319F0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 0;
}

uint64_t sub_1CF22D89C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000009FLL, 0x80000001CFA315C0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA31660);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 0;
}

uint64_t sub_1CF22D9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v42 = *v3;
  v5 = sub_1CF9E5CF8();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v42 + 616);
  v10 = *(v42 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v35 - v14;
  v16 = *(a3 + 32);
  v17 = v43;
  v43 = a3;
  result = v16(sub_1CF22DDCC, 0, v44, a3);
  if (!v17)
  {
    v38 = v8;
    v39 = v9;
    v19 = v42;
    v36 = v12;
    v37 = AssociatedTypeWitness;
    v35[2] = 0;
    result = swift_weakLoadStrong();
    v35[1] = result;
    if (!result)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = v15;
    v22 = *(v19 + 608);
    v23 = *(v19 + 624);
    v45 = v10;
    v46 = v22;
    v47 = v39;
    v48 = v23;
    type metadata accessor for Maintenance.UpdateContentRankForMaterializedItems();
    v24 = *(v20 + 32);

    sub_1CF046AB4();

    v25 = v38;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v27 = v26;
    v28 = v41;
    v29 = *(v40 + 8);
    result = v29(v25, v41);
    v30 = v27 * 1000000000.0;
    if (COERCE__INT64(fabs(v27 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v30 > -9.22337204e18)
    {
      if (v30 < 9.22337204e18)
      {
        v31 = sub_1CF559420(v21, 0, v30, 0);
        (*(v36 + 8))(v21, v37);
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v33 = v32;
        result = v29(v25, v28);
        v34 = v33 * 1000000000.0;
        if (COERCE__INT64(fabs(v33 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v34 > -9.22337204e18)
          {
            if (v34 < 9.22337204e18)
            {
              sub_1CF5215C0(v31);
            }

            goto LABEL_17;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1CF22DDCC()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000057, 0x80000001CFA30400);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](59, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF22DEC8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000087, 0x80000001CFA301E0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA30270);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA30290);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](807419168, 0xE400000000000000);
  return 0;
}

uint64_t sub_1CF22E638(char a1)
{
  result = swift_weakLoadStrong();
  if (a1)
  {
    if (result)
    {
      v3 = 40;
      goto LABEL_6;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_10;
  }

  v3 = 32;
LABEL_6:
  v4 = *(result + v3);

  v5 = *(v4 + 16);

  LOBYTE(v4) = (*(*v5 + 112))(v6);

  if (v4)
  {
    return 0;
  }

  else
  {
    return 0x204554414C4C4F43;
  }
}

uint64_t sub_1CF22E70C(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  if (a1)
  {
    v14 = 20550;
  }

  else
  {
    v14 = 21318;
  }

  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA36A90);
  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);

  v15 = MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  v16 = a2(v15);
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](538976266, 0xE400000000000000);
  if (a6)
  {
    v24[0] = a5;
    v24[1] = a6;

    sub_1CF22EC1C(v24, a1 & 1, v25);

    v18 = v25[0];
    v17 = v25[1];
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v19, v20);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA36B00);
  v21 = a8(a7);
  MEMORY[0x1D3868CC0](v21);

  return v26;
}

uint64_t sub_1CF22E958(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA36B50);
  if (a1)
  {
    v13 = 21318;
  }

  else
  {
    v13 = 20550;
  }

  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA36B90);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x202020200A64695FLL, 0xEC00000020202020);
  if (a6)
  {
    v25[0] = a5;
    v25[1] = a6;

    sub_1CF22EC1C(v25, a1 & 1, v26);

    v15 = v26[0];
    v14 = v26[1];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v16, v17);

  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA36BD0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA36C10);
  if (a1)
  {
    v18 = 20550;
  }

  else
  {
    v18 = 21318;
  }

  MEMORY[0x1D3868CC0](v18, 0xE200000000000000);

  v19 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v20 = a2(v19);
  MEMORY[0x1D3868CC0](v20);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA36B00);
  v21 = a8(a7);
  MEMORY[0x1D3868CC0](v21);

  return v27;
}

uint64_t sub_1CF22EC1C@<X0>(uint64_t *a1@<X0>, char a2@<W3>, unint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1CF9E7948();

  v18 = 0xD000000000000014;
  v19 = 0x80000001CFA36B30;
  if (v5)
  {

    v7 = MEMORY[0x1E69E6158];
  }

  else
  {

    v6 = 0;
    v7 = 0;
    v16 = 0;
  }

  v14 = v6;
  v15 = v5;
  v17 = v7;
  v8 = sub_1CEFF8EA0(&v14);
  v10 = v9;
  sub_1CEFCCC44(&v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v10)
  {
    MEMORY[0x1D3868CC0](v8, v10);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v11 = sub_1CF22E638(a2 & 1);
    MEMORY[0x1D3868CC0](v11);

    v13 = v19;
    *a3 = v18;
    a3[1] = v13;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF22EDB8(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  if (a1)
  {
    v12 = 20550;
  }

  else
  {
    v12 = 21318;
  }

  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA36A90);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  v13 = MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36C30);
  v14 = a2(v13);
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA36C60);
  v15 = a5(a7);
  MEMORY[0x1D3868CC0](v15);

  return 0;
}

uint64_t sub_1CF22EF7C(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA36C90);
  v12 = (a1 & 1) == 0;
  if (a1)
  {
    v13 = 21318;
  }

  else
  {
    v13 = 20550;
  }

  if (v12)
  {
    v14 = 21318;
  }

  else
  {
    v14 = 20550;
  }

  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA36CD0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000052, 0x80000001CFA36D00);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36D60);
  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);

  v15 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v16 = a2(v15);
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v17 = a5(a7);
  MEMORY[0x1D3868CC0](v17);

  return 0;
}

uint64_t sub_1CF22F1A8(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000059, 0x80000001CFA36D90);
  if (a1)
  {
    v12 = 20550;
  }

  else
  {
    v12 = 21318;
  }

  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  v13 = MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA36DF0);
  v14 = a2(v13);
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA36E20);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000087, 0x80000001CFA36E60);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA36EF0);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x454857200A64695FLL, 0xEB00000000204552);
  v15 = a5(a7);
  MEMORY[0x1D3868CC0](v15);

  return 0;
}

uint64_t sub_1CF22F3A4(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005CLL, 0x80000001CFA36F50);
  v12 = (a1 & 1) == 0;
  if (a1)
  {
    v13 = 21318;
  }

  else
  {
    v13 = 20550;
  }

  if (v12)
  {
    v14 = 21318;
  }

  else
  {
    v14 = 20550;
  }

  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA36FB0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA37000);
  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);

  v15 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v16 = a2(v15);
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0xD00000000000003CLL, 0x80000001CFA37020);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000008CLL, 0x80000001CFA37060);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000049, 0x80000001CFA370F0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA37140);
  v17 = a5(a7);
  MEMORY[0x1D3868CC0](v17);

  return 0;
}

uint64_t sub_1CF22F608(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA37160);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA37180);
  v11 = a1 & 1;
  if (a1)
  {
    v12 = 21318;
  }

  else
  {
    v12 = 20550;
  }

  if (a1)
  {
    v13 = 20550;
  }

  else
  {
    v13 = 21318;
  }

  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA371C0);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA37200);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA37250);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000051, 0x80000001CFA37280);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA372E0);
  v14 = sub_1CF22E638(v11);
  MEMORY[0x1D3868CC0](v14);

  v15 = MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA37330);
  v16 = a2(v15);
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA37360);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA373A0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  v17 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v18 = a2(v17);
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](0x444E41202020200ALL, 0xE900000000000020);
  v19 = a5(a7);
  MEMORY[0x1D3868CC0](v19);

  return 0;
}

uint64_t sub_1CF22F954(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v10 = v8;
  v17 = (*(*(a8 + 8) + 24))(a5, a6, a7);
  if (!v9)
  {
    v18 = v17;
    v22 = a1;
    v19 = a3;
    v23 = 0;
    if ([v17 next])
    {
      do
      {
        v20 = objc_autoreleasePoolPush();
        sub_1CF22FA84(v18, v19 & 1, a2, v22, v10, a4, &v23, a7, a8);
        objc_autoreleasePoolPop(v20);
      }

      while (([v18 next] & 1) != 0);
      a3 = v23;
    }

    else
    {
      a3 = 0;
    }
  }

  return a3 & 1;
}

uint64_t sub_1CF22FA84(void *a1, int a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, _BYTE *a7, char *a8, uint64_t a9)
{
  v157 = a8;
  v141 = a7;
  v156 = a6;
  v163 = a4;
  v160 = a3;
  LODWORD(v162) = a2;
  v169 = a1;
  v9 = *(*a5 + 600);
  v10 = *(*a5 + 608);
  v11 = *(*a5 + 616);
  v12 = *a5;
  v158 = a5;
  v13 = *(v12 + 624);
  v171 = v9;
  v172 = v10;
  v173 = v11;
  v174 = v13;
  v14 = type metadata accessor for ItemReconciliation();
  v15 = sub_1CF9E75D8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v142 = &v128 - v17;
  v171 = v9;
  v172 = v10;
  v173 = v11;
  v174 = v13;
  v145 = type metadata accessor for ReconciliationTable.CachedEntry();
  v144 = *(v145 - 8);
  v18 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v128 - v19;
  v171 = v10;
  v172 = v9;
  v173 = v13;
  v174 = v11;
  v149 = type metadata accessor for PersistenceTrigger();
  v146 = sub_1CF9E75D8();
  v154 = *(v146 - 8);
  v20 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v152 = &v128 - v21;
  v171 = v10;
  v172 = v9;
  v173 = v13;
  v174 = v11;
  v153 = type metadata accessor for ItemReconciliation();
  v151 = *(v153 - 8);
  v22 = v151[8];
  MEMORY[0x1EEE9AC00](v153);
  v150 = &v128 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v137 = sub_1CF9E75D8();
  v136 = *(v137 - 8);
  v24 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v128 - v25;
  v165 = v11;
  v166 = v9;
  v171 = v9;
  v172 = v10;
  v164 = v10;
  v173 = v11;
  v174 = v13;
  v159 = v13;
  v26 = type metadata accessor for PersistenceTrigger();
  v155 = *(v26 - 1);
  v27 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v139 = &v128 - v28;
  v148 = sub_1CF9E75D8();
  v147 = *(v148 - 8);
  v29 = *(v147 + 64);
  v30 = MEMORY[0x1EEE9AC00](v148);
  v161 = &v128 - v31;
  v167 = *(v14 - 8);
  v32 = *(v167 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v128 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v128 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v128 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v128 - v45;
  v47 = v169;
  v48 = [v169 longAtIndex_];
  WitnessTable = swift_getWitnessTable();
  v168 = v14;
  v50 = v170;
  result = sub_1CF01E03C(v47, 1, v14, WitnessTable, v46);
  if (!v50)
  {
    v52 = v161;
    v134 = v26;
    v130 = v48;
    v129 = v38;
    v131 = v35;
    v170 = 0;
    v53 = v166;
    v135 = a9;
    v54 = v167;
    v55 = v168;
    v56 = *(v167 + 16);
    v169 = v44;
    v133 = v167 + 16;
    v132 = v56;
    v56(v44, v46, v168);
    if (v162)
    {
      v57 = &v46[*(v55 + 52)];
      v58 = v164;
      v59 = v159;
      v60 = &v57[*(type metadata accessor for ItemReconciliationHalf() + 64)];
      if (!v60[16] && (*v60 & v160) != 0)
      {
        v161 = *v60;
        v155 = *(v60 + 1);
        v61 = v55;
        v62 = v150;
        v162 = v46;
        sub_1CF07EE34(v61, v150);
        v63 = v152;
        sub_1CF060FD0(v134, v152);
        (*(*(v149 - 8) + 56))(v63, 0, 1);
        result = swift_weakLoadStrong();
        if (result)
        {
          v64 = result;
          v171 = v58;
          v172 = v53;
          v173 = v59;
          v174 = v165;
          type metadata accessor for ReconciliationTable();
          v65 = (*(*v64 + 176))();

          v66 = v170;
          v67 = sub_1CF6939AC(v62, v63, v160, v65, v156, v157, *(v135 + 8));
          v170 = v66;
          v70 = v146;
          if (v66)
          {

            (*(v154 + 8))(v63, v70);
            (v151[1])(v62, v153);
            v71 = v168;
            v72 = *(v167 + 8);
            v72(v169, v168);
            return (v72)(v162, v71);
          }

          v89 = v67;
          v90 = v69;
          v91 = v68;

          (*(v154 + 8))(v63, v70);
          (v151[1])(v62, v153);
          v92 = v91;
          v93 = v91;
          v94 = v161;
          v95 = v155;
          if (sub_1CF95F010(v89, v93, v90, v161, v155, 0))
          {
            sub_1CF03D7A8(v89, v92, v90);
            v54 = v167;
LABEL_18:
            v46 = v162;
            v55 = v168;
            v88 = v169;
            goto LABEL_19;
          }

          *v60 = v89;
          *(v60 + 1) = v92;
          v60[16] = v90;
          sub_1CF03C530(v89, v92, v90);
          sub_1CF03D7A8(v94, v95, 0);
          v55 = v168;
          if (v90 == 1)
          {
            sub_1CF03D7A8(v89, v92, 1u);
            *v141 = 1;
          }

          else
          {
            sub_1CF03D7A8(v89, v92, v90);
          }

          v106 = v142;
          v103 = v162;
          v87 = v131;
          v105 = v129;
LABEL_33:
          v107 = v132;
          v132(v105, v169, v55);
          v107(v87, v103, v55);
          v171 = 0;
          v175 = 0;
          v108 = v87;
          v109 = v167;
          (*(v167 + 56))(v106, 1, 1, v55);
          v110 = v143;
          sub_1CF079694(v130, 0, v105, v108, &v171, &v175, 0, 2, v143, v106);
          v112 = v156;
          v111 = v157;
          v113 = v170;
          v114 = sub_1CF693B0C(v110, v156, v157, v135);
          if (v113)
          {
            (*(v144 + 8))(v110, v145);
            v115 = *(v109 + 8);
            v115(v169, v55);
            return (v115)(v103, v55);
          }

          v54 = v109;
          if (v114)
          {
            v170 = 0;
            v116 = v145;
            v117 = v144;
            v88 = v169;
          }

          else
          {
            v88 = v169;
            sub_1CF2132A0(v103, v169, v130, v112, v111, v135);
            v170 = 0;
            v116 = v145;
            v117 = v144;
          }

          (*(v117 + 8))(v110, v116);
          v46 = v103;
          goto LABEL_19;
        }

        __break(1u);
        goto LABEL_44;
      }

      v54 = v167;
LABEL_15:
      v88 = v169;
LABEL_19:
      v96 = *(v54 + 8);
      v96(v88, v55);
      return (v96)(v46, v55);
    }

    v73 = type metadata accessor for ItemReconciliationHalf();
    v74 = *(v73 + 64);
    v162 = v46;
    v75 = &v46[v74];
    v77 = v163;
    v76 = v164;
    if (v46[v74 + 16])
    {
      goto LABEL_18;
    }

    v78 = v160;
    v154 = *v75;
    if ((v154 & v160) == 0)
    {
      goto LABEL_18;
    }

    v152 = v73;
    v151 = v75;
    v153 = v75[1];
    v132(v41, v162, v168);
    v79 = v155;
    v80 = v77;
    v81 = v134;
    (*(v155 + 16))(v52, v80, v134);
    (*(v79 + 56))(v52, 0, 1, v81);
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v82 = result;
    v171 = v53;
    v172 = v76;
    v173 = v165;
    v174 = v159;
    type metadata accessor for ReconciliationTable();
    v83 = v170;
    v84 = sub_1CF6939AC(v41, v52, v78, v82, v156, v157, *(v135 + 8));
    v170 = v83;
    v87 = v131;
    if (v83)
    {

      (*(v147 + 8))(v52, v148);
      v72 = *(v167 + 8);
      v71 = v168;
      v72(v41, v168);
      v72(v169, v71);
      return (v72)(v162, v71);
    }

    v97 = v84;
    v98 = v85;
    v99 = v86;

    (*(v147 + 8))(v52, v148);
    v55 = v168;
    (*(v167 + 8))(v41, v168);
    v100 = v154;
    v101 = v153;
    if (sub_1CF95F010(v97, v98, v99, v154, v153, 0))
    {
      sub_1CF03D7A8(v97, v98, v99);
      v54 = v167;
      v46 = v162;
      goto LABEL_15;
    }

    v102 = v151;
    *v151 = v97;
    v102[1] = v98;
    *(v102 + 16) = v99;
    v163 = v97;
    sub_1CF03C530(v97, v98, v99);
    sub_1CF03D7A8(v100, v101, 0);
    v103 = v162;
    if (v99 == 1)
    {
      *v141 = 1;
      v104 = *(v103 + *(v152 + 9));
      v105 = v129;
    }

    else
    {
      v105 = v129;
      if ((*(v162 + *(v152 + 9)) & 2) != 0 && !v99)
      {
        v118 = v163;
        sub_1CF03D7A8(v163, v98, 0);
        if (v118 == 512)
        {
          result = swift_weakLoadStrong();
          if (result)
          {
            v119 = result;
            v120 = v138;
            (*(v136 + 16))(v138, v103, v137);
            v121 = AssociatedTypeWitness;
            v122 = *(AssociatedTypeWitness - 8);
            result = (*(v122 + 48))(v120, 1, AssociatedTypeWitness);
            v123 = v139;
            if (result != 1)
            {
              (*(v122 + 32))(v139, v120, v121);
              v124 = swift_getAssociatedTypeWitness();
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              v126 = swift_getAssociatedConformanceWitness();
              v171 = v121;
              v172 = v124;
              v173 = AssociatedConformanceWitness;
              v174 = v126;
              type metadata accessor for ReconciliationID();
              swift_storeEnumTagMultiPayload();
              v127 = v134;
              swift_storeEnumTagMultiPayload();
              (*(*v119 + 312))(v123);

              (*(v155 + 8))(v123, v127);
              v106 = v142;
              v103 = v162;
              v87 = v131;
              v105 = v129;
              goto LABEL_33;
            }

LABEL_46:
            __break(1u);
            return result;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_32:
        v106 = v142;
        goto LABEL_33;
      }
    }

    sub_1CF03D7A8(v163, v98, v99);
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1CF230B6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v263 = a4;
  v264 = a3;
  v265 = a2;
  v267 = a1;
  v6 = *(*v4 + 600);
  v7 = *(*v4 + 624);
  v8 = *(*v4 + 616);
  v269 = *(*v4 + 608);
  v5 = v269;
  v270 = v6;
  v271 = v7;
  v272 = v8;
  v255 = type metadata accessor for PersistenceTrigger.AffectedReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v256 = *(TupleTypeMetadata2 - 8);
  v9 = *(v256 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v245 = &v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v261 = &v214 - v12;
  v269 = v5;
  v270 = v6;
  v271 = v7;
  v272 = v8;
  v244 = type metadata accessor for PersistenceTrigger();
  v243 = *(v244 - 1);
  v13 = *(v243 + 64);
  MEMORY[0x1EEE9AC00](v244);
  v247 = &v214 - v14;
  v269 = v6;
  v270 = v5;
  v271 = v8;
  v272 = v7;
  v259 = type metadata accessor for PersistenceTrigger.AffectedReconciliation();
  v253 = swift_getTupleTypeMetadata2();
  v260 = *(v253 - 8);
  v15 = *(v260 + 64);
  v16 = MEMORY[0x1EEE9AC00](v253);
  v242 = &v214 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v268 = &v214 - v18;
  v269 = v6;
  v270 = v5;
  v271 = v8;
  v272 = v7;
  v217 = type metadata accessor for ReconciliationMutation();
  v216 = *(v217 - 8);
  v19 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v215 = &v214 - v20;
  v21 = type metadata accessor for SnapshotItem();
  v239 = sub_1CF9E75D8();
  v237 = *(v239 - 8);
  v22 = v237[8];
  v23 = MEMORY[0x1EEE9AC00](v239);
  v231 = &v214 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v234 = &v214 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v235 = &v214 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v240 = &v214 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v221 = &v214 - v32;
  v238 = v21;
  v236 = *(v21 - 8);
  v33 = *(v236 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v228 = &v214 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v218 = &v214 - v36;
  v269 = v6;
  v270 = v5;
  v271 = v8;
  v272 = v7;
  v37 = type metadata accessor for ItemReconciliation();
  v223 = sub_1CF9E75D8();
  v222 = *(v223 - 8);
  v38 = *(v222 + 64);
  v39 = MEMORY[0x1EEE9AC00](v223);
  v227 = &v214 - v40;
  v225 = v37;
  v226 = *(v37 - 8);
  v41 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v224 = &v214 - v42;
  v269 = v6;
  v270 = v5;
  v249 = v5;
  v271 = v8;
  v272 = v7;
  v248 = v7;
  v43 = type metadata accessor for PersistenceTrigger();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v214 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v214 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v214 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v233 = &v214 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v214 - v57;
  v251 = v8;
  v252 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v241 = *(AssociatedTypeWitness - 8);
  v59 = *(v241 + 64);
  v60 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v62 = &v214 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v60);
  v65 = (&v214 - v64);
  v66 = MEMORY[0x1EEE9AC00](v63);
  v230 = &v214 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v232 = &v214 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v229 = &v214 - v70;
  v257 = v44;
  v71 = *(v44 + 16);
  v71(v58, v267, v43);
  v258 = v58;
  v254 = v43;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v110 = v62;
      v71(v48, v258, v254);
      v97 = v48;
      v65 = &unk_1CFAA0618;
      v111 = swift_getAssociatedTypeWitness();
      v112 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v114 = swift_getAssociatedConformanceWitness();
      v269 = v112;
      v270 = v111;
      v271 = AssociatedConformanceWitness;
      v272 = v114;
      v58 = type metadata accessor for ReconciliationID();
      v115 = swift_getEnumCaseMultiPayload();
      v73 = v262;
      if (v115 != 1)
      {
        v131 = v241;
        (*(v241 + 32))(v110, v48, v112);
        v116 = v266;
        v58 = v266;
        sub_1CF233198(v110, 0, 0, v265, v264, v263);
        v117 = v253;
        v132 = v112;
        v133 = v257;
        if (v73)
        {
          (*(v131 + 8))(v110, v132);
          return (*(v133 + 8))(v258, v254);
        }

        (*(v131 + 8))(v110, v132);
        v105 = v254;
        (*(v133 + 8))(v258, v254);
        goto LABEL_39;
      }

LABEL_18:
      (*(*(v58 - 8) + 8))(v97, v58);
      goto LABEL_19;
    }

    v58 = v51;
    v73 = v262;
    if (EnumCaseMultiPayload != 5)
    {
      goto LABEL_19;
    }

    v71(v58, v258, v254);
    v78 = swift_getAssociatedTypeWitness();
    v79 = AssociatedTypeWitness;
    v80 = swift_getAssociatedConformanceWitness();
    v81 = swift_getAssociatedConformanceWitness();
    v269 = v79;
    v270 = v78;
    v271 = v80;
    v272 = v81;
    v82 = type metadata accessor for ReconciliationID();
    v83 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = *(v82 - 8);
      v85 = *(v84 + 8);
      v86 = v58;
      v58 = v84 + 8;
      v85(v83 + v86, v82);
      v85(v86, v82);
      v73 = v262;
      goto LABEL_19;
    }

    v252 = v83;
    v134 = v241;
    v135 = v65;
    (*(v241 + 32))(v65, v58, v79);
    v136 = v65;
    v137 = v262;
    v116 = v266;
    v65 = v58;
    v58 = v266;
    sub_1CF233198(v136, 1, 1, v265, v264, v263);
    v73 = v137;
    v117 = v253;
    if (!v137)
    {
      (*(v134 + 8))(v135, v79);
      (*(*(v82 - 8) + 8))(v252 + v65, v82);
LABEL_38:
      v105 = v254;
      (*(v257 + 8))(v258, v254);
      goto LABEL_39;
    }

    (*(v134 + 8))(v135, v79);
    (*(*(v82 - 8) + 8))(v252 + v65, v82);
    return (*(v257 + 8))(v258, v254);
  }

  if (EnumCaseMultiPayload == 6)
  {
    v71(v54, v258, v254);
    v87 = v239;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v89 = *(TupleTypeMetadata3 + 48);
    v251 = *&v54[*(TupleTypeMetadata3 + 64)];
    v90 = v237;
    v91 = v237[4];
    v91(v240, v54, v87);
    v92 = v235;
    v91(v235, &v54[v89], v87);
    v58 = v234;
    v252 = v90[2];
    v252(v234, v92, v87);
    v93 = v236;
    v65 = (v236 + 48);
    v94 = *(v236 + 48);
    if (v94(v58, 1, v238) == 1)
    {
      v95 = v90[1];
      v95(v92, v87);
      v95(v58, v87);
      v95(v240, v87);
LABEL_23:
      v73 = v262;
      v116 = v266;
LABEL_37:
      v117 = v253;
      goto LABEL_38;
    }

    v118 = v241;
    v119 = v230;
    v120 = AssociatedTypeWitness;
    (*(v241 + 16))(v230, v58, AssociatedTypeWitness);
    v121 = v93 + 8;
    v122 = *(v93 + 8);
    v123 = v238;
    v249 = v121;
    v248 = v122;
    v122(v58, v238);
    v124 = *(v118 + 32);
    v125 = v232;
    v126 = v119;
    v127 = v123;
    v128 = v239;
    v124(v232, v126, v120);
    v129 = v231;
    v252(v231, v92, v128);
    if (v94(v129, 1, v127) == 1)
    {
      (*(v241 + 8))(v125, v120);
      v58 = (v237 + 1);
      v130 = v237[1];
      v130(v92, v128);
      v130(v240, v128);
      v130(v129, v128);
      goto LABEL_23;
    }

    v138 = v94;
    v139 = v228;
    (*(v236 + 32))(v228, v129, v127);
    WitnessTable = swift_getWitnessTable();
    sub_1CF06D940(v127, WitnessTable, &v269);
    v116 = v266;
    if (v269)
    {
      v248(v139, v127);
      (*(v241 + 8))(v232, AssociatedTypeWitness);
      v58 = (v237 + 1);
      v141 = v237[1];
      v142 = v239;
      v141(v235, v239);
      v143 = v240;
LABEL_36:
      v141(v143, v142);
      v73 = v262;
      goto LABEL_37;
    }

    v144 = v240;
    v145 = v138(v240, 1, v127);
    v146 = AssociatedTypeWitness;
    v147 = v241;
    if (v145 == 1)
    {
      v248(v139, v127);
      (*(v147 + 8))(v232, v146);
      v58 = (v237 + 1);
      v141 = v237[1];
      v142 = v239;
      v141(v235, v239);
      v143 = v144;
      goto LABEL_36;
    }

    v73 = v262;
    if ((v251 & 8) == 0)
    {
      v248(v228, v127);
      (*(v147 + 8))(v232, v146);
      v58 = (v237 + 1);
      v179 = v237[1];
      v180 = v239;
      v179(v235, v239);
      v179(v240, v180);
      goto LABEL_37;
    }

    v117 = v253;
    v184 = v232;
    if ((v251 & 0x10) != 0)
    {
      v248(v228, v238);
      (*(v147 + 8))(v184, v146);
    }

    else
    {
      v185 = v238;
      v186 = v228;
      v187 = &v228[*(v238 + 48)];
      v188 = v187[*(type metadata accessor for ItemMetadata() + 80)];
      sub_1CF233198(v184, v188, 0, v265, v264, v263);
      if (v73)
      {
        v248(v186, v185);
        (*(v147 + 8))(v184, AssociatedTypeWitness);
        v189 = v237[1];
        v190 = v239;
        v189(v235, v239);
        v189(v240, v190);
        return (*(v257 + 8))(v258, v254);
      }

      v248(v186, v185);
      (*(v147 + 8))(v184, AssociatedTypeWitness);
    }

    v58 = (v237 + 1);
    v194 = v237[1];
    v195 = v239;
    v194(v235, v239);
    v194(v240, v195);
    goto LABEL_38;
  }

  v73 = v262;
  if (EnumCaseMultiPayload != 14)
  {
    if (EnumCaseMultiPayload == 48)
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      v74 = v263;
      v75 = v264;
      *(&v214 - 4) = v264;
      *(&v214 - 3) = v74;
      v76 = v265;
      v212 = v266;
      v213 = v265;
      v77 = *(v74 + 8);
      sub_1CF247174(sub_1CF24CDA8, (&v214 - 6), v265, v252, v249, v75, v251, v248, v77);
      if (!v73)
      {
        sub_1CF23309C(v76, v75, v77);
      }

      return (*(v257 + 8))(v258, v254);
    }

    goto LABEL_19;
  }

  v96 = v233;
  v71(v233, v258, v254);
  v97 = v96;
  v98 = swift_getAssociatedTypeWitness();
  v65 = &unk_1CFAA0630;
  v99 = AssociatedTypeWitness;
  v100 = swift_getAssociatedConformanceWitness();
  v101 = swift_getAssociatedConformanceWitness();
  v269 = v99;
  v270 = v98;
  v271 = v100;
  v272 = v101;
  v58 = type metadata accessor for ReconciliationID();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_18;
  }

  if (v97[*(swift_getTupleTypeMetadata2() + 48)] <= 1u)
  {
    v249 = v58;
    v102 = v241;
    v103 = (v241 + 32);
    v104 = v229;
    v248 = *(v241 + 32);
    (v248)(v229, v97, v99);
    v105 = v254;
    (*(v257 + 8))(v258, v254);
    v106 = v264;
    v107 = *(v263 + 8);
    v108 = v227;
    sub_1CF68DDB0(v104, v265, v264, v107, v227);
    if (v73)
    {
      return (*(v102 + 8))(v104, AssociatedTypeWitness);
    }

    v178 = v107;
    v262 = v103;
    v58 = v226;
    v65 = v225;
    if ((*(v226 + 48))(v108, 1, v225) == 1)
    {
      (*(v241 + 8))(v229, AssociatedTypeWitness);
      (*(v222 + 8))(v108, v223);
      goto LABEL_20;
    }

    v181 = v224;
    (*(v58 + 32))(v224, v108, v65);
    v182 = type metadata accessor for ItemReconciliationHalf();
    v117 = v253;
    if ((v181[*(v182 + 36)] & 0x10) != 0)
    {
      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v191 = *(result + 32);

      v192 = v221;
      (*(*v191 + 240))(v229, 1, v265, v106, v178);

      v193 = v236;
      v58 = v238;
      if ((*(v236 + 48))(v192, 1, v238) == 1)
      {
        (*(v226 + 8))(v224, v65);
        (*(v241 + 8))(v229, AssociatedTypeWitness);
        (v237[1])(v192, v239);
        goto LABEL_77;
      }

      v196 = v218;
      (*(v193 + 32))(v218, v192, v58);
      v197 = &v196[*(v58 + 48)];
      if ((v197[*(type metadata accessor for ItemMetadata() + 64)] & 1) == 0)
      {
        sub_1CF9E7FA8();
        v198 = *(v216 + 72);
        v199 = *(v216 + 80);
        swift_allocObject();
        v268 = sub_1CF9E6D68();
        v201 = v200;
        v202 = type metadata accessor for ReconciliationSideMutation();
        v261 = swift_getTupleTypeMetadata2();
        v203 = *(v261 + 12);
        v204 = v241;
        v205 = v229;
        v206 = AssociatedTypeWitness;
        (*(v241 + 16))(v201, v229, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        *(v201 + v203) = 0;
        v267 = v202;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v116 = v225;
        v269 = sub_1CF045898(v268);
        v58 = v224;
        if (!sub_1CF07CD80(v116))
        {
          v117 = &v215[*(v261 + 12)];
          (v248)(v215, v205, v206);
          swift_storeEnumTagMultiPayload();
          v65 = v238;
          if (qword_1EDEABDE0 != -1)
          {
            goto LABEL_100;
          }

          goto LABEL_93;
        }

        (*(v204 + 8))(v205, v206);
        v207 = v264;
        v65 = v238;
LABEL_94:
        v209 = v218;
        v273 = v269;
        v210 = sub_1CF9E6E58();
        v211 = swift_getWitnessTable();
        sub_1CF693824(&v273, v265, v210, v207, v211, v263);

        (*(v236 + 8))(v209, v65);
        return (*(v226 + 8))(v224, v116);
      }

      (*(v193 + 8))(v196, v58);
      (*(v226 + 8))(v224, v65);
    }

    else
    {
      v183 = *(v58 + 8);
      v58 += 8;
      v183(v181, v65);
    }

    (*(v241 + 8))(v229, AssociatedTypeWitness);
LABEL_77:
    v116 = v266;
    goto LABEL_39;
  }

  (*(v241 + 8))(v97, v99);
LABEL_19:
  v105 = v254;
  (*(v257 + 8))(v258, v254);
LABEL_20:
  v116 = v266;
  v117 = v253;
LABEL_39:
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_97;
  }

  v149 = (*(*Strong + 152))(Strong);

  v150 = sub_1CF05A838(0, v149, v105);
  if (sub_1CF9E6DF8())
  {
    v65 = v73;
    v116 = 0;
    v262 = (v260 + 16);
    v257 = v259 - 8;
    v258 = (v260 + 8);
    v105 = v242;
    while (1)
    {
      v58 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v58)
      {
        (*(v260 + 16))(v268, v150 + ((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v116, v117);
        v151 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        v160 = sub_1CF9E7998();
        if (v220 != 8)
        {
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          swift_once();
LABEL_93:
          v208 = *(v116 + 64);
          *v117 = qword_1EDEABDE8;
          *(v117 + 8) = *(v58 + v208);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          v207 = v264;
          goto LABEL_94;
        }

        v269 = v160;
        (*v262)(v268, &v269, v117);
        swift_unknownObjectRelease();
        v151 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
LABEL_50:
          __break(1u);
          break;
        }
      }

      v152 = v268;
      v153 = *v268;
      v154 = *(v117 + 12);
      *v105 = *v268;
      v155 = (*(*(v259 - 8) + 32))(&v105[v154], &v152[v154]);
      v73 = &v214;
      MEMORY[0x1EEE9AC00](v155);
      v157 = v263;
      v156 = v264;
      *(&v214 - 4) = v264;
      *(&v214 - 3) = v157;
      v212 = v266;
      v213 = v105;
      v158 = sub_1CF22F954(v267, v153, 0, v265, sub_1CF24CD90, (&v214 - 6), v156, v157);
      if (v65)
      {

        return (*v258)(v105, v117);
      }

      v159 = v158;
      (*v258)(v105, v117);
      ++v116;
      if (v151 == sub_1CF9E6DF8())
      {
        v73 = 0;
        v116 = v266;
        v117 = v247;
        v105 = v254;
        goto LABEL_53;
      }
    }
  }

  v159 = 0;
  v117 = v247;
LABEL_53:

  v58 = v267;
  sub_1CF060FD0(v105, v117);
  v161 = swift_weakLoadStrong();
  if (!v161)
  {
    goto LABEL_98;
  }

  v262 = v73;
  v162 = (*(*v161 + 152))(v161);

  v163 = v244;
  v58 = v117;
  v164 = sub_1CF05A838(1, v162, v244);
  (*(v243 + 8))(v117, v163);
  v165 = TupleTypeMetadata2;
  v166 = sub_1CF9E6DF8();
  v65 = v245;
  if (v166)
  {
    v167 = 0;
    v268 = (v256 + 16);
    v259 = v255 - 8;
    v260 = v256 + 8;
    while (1)
    {
      v58 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v58)
      {
        (*(v256 + 16))(v261, v164 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v167, v165);
        v168 = v167 + 1;
        if (__OFADD__(v167, 1))
        {
          goto LABEL_64;
        }
      }

      else
      {
        v176 = sub_1CF9E7998();
        if (v219 != 8)
        {
          goto LABEL_96;
        }

        v269 = v176;
        v58 = v176;
        (*v268)(v261, &v269, v165);
        swift_unknownObjectRelease();
        v168 = v167 + 1;
        if (__OFADD__(v167, 1))
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      v169 = v261;
      v116 = *v261;
      v170 = *(v165 + 48);
      *v65 = *v261;
      v171 = (*(*(v255 - 8) + 32))(v65 + v170, &v169[v170]);
      v117 = &v214;
      MEMORY[0x1EEE9AC00](v171);
      v173 = v263;
      v172 = v264;
      *(&v214 - 4) = v264;
      *(&v214 - 3) = v173;
      v58 = v266;
      v212 = v266;
      v213 = v65;
      v174 = v262;
      v175 = sub_1CF22F954(v267, v116, 1, v265, sub_1CF24CD9C, (&v214 - 6), v172, v173);
      v262 = v174;
      if (v174)
      {
        break;
      }

      v159 |= v175;
      (*v260)(v65, v165);
      ++v167;
      if (v168 == sub_1CF9E6DF8())
      {
        goto LABEL_65;
      }
    }

    return (*v260)(v65, v165);
  }

  else
  {
LABEL_65:

    if (v159)
    {
      v177 = swift_weakLoadStrong();
      if (!v177)
      {
        goto LABEL_99;
      }

      (*(*v177 + 304))(v177);
    }
  }

  return result;
}

void sub_1CF232DB4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = *(*a2 + 608);
  v6 = *(*a2 + 616);
  v7 = *(*a2 + 624);
  AssociatedTypeWitness = *(*a2 + 600);
  v23 = v5;
  AssociatedConformanceWitness = v6;
  v25 = v7;
  v16 = type metadata accessor for ReconciliationMutation();
  sub_1CF9E7FA8();
  v8 = *(*(v16 - 8) + 72);
  v9 = *(*(v16 - 8) + 80);
  swift_allocObject();
  v17 = sub_1CF9E6D68();
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  v12 = v11 + *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(v11, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *v12 = 3;
  *(v12 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  AssociatedTypeWitness = sub_1CF045898(v17);
  v13 = sub_1CF9E6E58();
  WitnessTable = swift_getWitnessTable();
  v15 = v26;
  sub_1CF693824(&AssociatedTypeWitness, a3, v13, a4, WitnessTable, a5);

  if (v15)
  {
  }
}

void sub_1CF23309C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + *(*v3 + 680)) = 0;
  v5 = (*(a3 + 24))(sub_1CF233FE8, 0, a2, a3);
  if (!v4)
  {
    v6 = v5;
    if ([v5 next])
    {
      do
      {
        v7 = objc_autoreleasePoolPush();
        sub_1CF234004(v3, v6);
        objc_autoreleasePoolPop(v7);
      }

      while (([v6 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF233198(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v18 = a2;
  v19 = a3;
  v17 = *v7;
  v9 = v17[77];
  v10 = v17[75];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 64);
  v13 = swift_checkMetadataState();
  result = v12(v13, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
    result = (*(AssociatedConformanceWitness + 72))(v13, AssociatedConformanceWitness);
    if ((result & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      v15 = v17[76];
      v16[2] = v10;
      v16[3] = v15;
      v16[4] = v21;
      v16[5] = v9;
      v16[6] = v17[78];
      v16[7] = v22;
      v16[8] = a1;
      return sub_1CF23A2B4(v18 & 1, v19 & 1, v20, sub_1CF24CDC8, v16, v21, v22);
    }
  }

  return result;
}

uint64_t sub_1CF23335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*a2 + 608);
  v10 = *(*a2 + 616);
  v11 = *(*a2 + 624);
  v15 = *(*a2 + 600);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  type metadata accessor for PersistenceTrigger.AffectedReconciliation();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  v14[2] = v15;
  v14[3] = v9;
  v14[4] = a4;
  v14[5] = v10;
  v14[6] = v11;
  v14[7] = a5;
  v14[8] = a3;
  return sub_1CF086D88(a3 + v12, a1, sub_1CF24D040, v14);
}

uint64_t sub_1CF233470(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a3;
  v23 = a4;
  v24 = a6;
  v25 = a7;
  v8 = type metadata accessor for PersistenceTrigger.AffectedReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v21 - v12;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1CF9E7948();
  v21[0] = v22;
  v21[1] = v23;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA37420);
  v22 = 0;
  v14 = MEMORY[0x1E69E6530];
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA37440);
  (*(v10 + 16))(v13, a2, TupleTypeMetadata2);
  v16 = *v13;
  v25 = v14;
  v22 = v16;
  v17 = sub_1CEFF8EA0(&v22);
  v19 = v18;
  sub_1CEFCCC44(&v22, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v19)
  {
    (*(*(v8 - 8) + 8))(&v13[*(TupleTypeMetadata2 + 48)], v8);
    MEMORY[0x1D3868CC0](v17, v19);

    return v21[0];
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF2336E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a1;
  v24 = a4;
  v6 = *(*a2 + 608);
  v7 = *(*a2 + 616);
  v8 = *(*a2 + 624);
  v36 = *(*a2 + 600);
  v37 = v6;
  v9 = v36;
  v22 = v36;
  v38 = v7;
  v39 = v8;
  v25 = type metadata accessor for PersistenceTrigger.AffectedReconciliation();
  v23 = *(v25 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v12 = &v22 - v11;
  v36 = v6;
  v37 = v9;
  v38 = v8;
  v39 = v7;
  v13 = type metadata accessor for PersistenceTrigger.AffectedReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v22 - v16;
  (*(v18 + 16))(&v22 - v16, a3, TupleTypeMetadata2);
  v19 = *(TupleTypeMetadata2 + 48);
  sub_1CF684634(v13, v12);
  (*(*(v13 - 1) + 8))(&v17[v19], v13);
  v29 = v22;
  v30 = v6;
  v31 = v24;
  v32 = v7;
  v33 = v8;
  v34 = v26;
  v35 = a3;
  v20 = sub_1CF086D88(v12, v27, sub_1CF24CF2C, v28);
  (*(v23 + 8))(v12, v25);
  return v20;
}

uint64_t sub_1CF233980(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  v23 = a3;
  v24 = a7;
  v25 = a6;
  v8 = type metadata accessor for PersistenceTrigger.AffectedReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v21 - v12;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1CF9E7948();
  v21[0] = v22;
  v21[1] = v23;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA373D0);
  v22 = 0;
  v14 = MEMORY[0x1E69E6530];
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA373F0);
  (*(v10 + 16))(v13, a2, TupleTypeMetadata2);
  v16 = *v13;
  v25 = v14;
  v22 = v16;
  v17 = sub_1CEFF8EA0(&v22);
  v19 = v18;
  sub_1CEFCCC44(&v22, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v19)
  {
    (*(*(v8 - 8) + 8))(&v13[*(TupleTypeMetadata2 + 48)], v8);
    MEMORY[0x1D3868CC0](v17, v19);

    return v21[0];
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF233BF4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA3C400);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  return 0;
}

uint64_t sub_1CF233CA0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000035FLL, 0x80000001CFA3C070);
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3C3D0);
  v10 = [a1 bindLongParameter_];
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  return 0;
}

uint64_t sub_1CF233DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 40) + 8);
  if ((sub_1CF9E6868() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for ItemIDAndLastChange() + 36);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1CF233E7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 40);
  sub_1CF9E6758();
  v6 = (v2 + *(a2 + 36));
  if (*(v6 + 8) == 1)
  {
    return sub_1CF9E81F8();
  }

  v8 = *v6;
  sub_1CF9E81F8();
  return MEMORY[0x1D386A470](v8);
}

uint64_t sub_1CF233EF4(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF233E7C(v3, a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF233F44(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  sub_1CF233E7C(v4, a2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF234004(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v6 = *(*a1 + 624);
  v7 = *(*a1 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v25 - v14;
  if ((*(a1 + *(v5 + 680)) & 1) == 0)
  {
    v28 = v13;
    v29 = v12;
    v16 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
    v17 = a2;
    v27 = v15;
    result = v16();
    if (!v2)
    {
      v26 = [v17 longAtIndex_];
      v18 = [v17 isNullAtIndex_];
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = [v17 integerAtIndex_];
      }

      v20 = AssociatedTypeWitness;
      type metadata accessor for PendingSetItem();
      v21 = v29;
      v23 = v27;
      v22 = v28;
      (*(v29 + 16))(v28, v27, v20);
      v24 = sub_1CF206528(v22, v26, v19, v18);
      sub_1CF212638(v24);

      return (*(v21 + 8))(v23, v20);
    }
  }

  return result;
}

uint64_t sub_1CF234294(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  v6 = sub_1CF208628(3044198, 0xE300000000000000);
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v7 = sub_1CF2080AC(3043430, 0xE300000000000000);
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD00000000000018CLL, 0x80000001CFA38770);
  v8 = sub_1CEFE8C10(3044466, 0xE300000000000000);
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v9 = sub_1CEFE91F8(0x726F6365642E7066, 0xEE005F6E6F697461);
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD0000000000000A3, 0x80000001CFA38900);
  v10 = [a1 bindLongParameter_];
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA389B0);
  v14 = [a1 bindLongParameter_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);

  return 0;
}

uint64_t sub_1CF2344D8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v152 = v2;
  v4 = v3;
  v155 = v5;
  LODWORD(v157) = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v151 = type metadata accessor for PendingIndexingItemRow();
  v15 = *(*(v151 - 8) + 64);
  MEMORY[0x1EEE9AC00](v151);
  v153 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for ItemMetadata();
  v17 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v143 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v209 = &v121 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v150 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v149 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v148 = &v121 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v147 = &v121 - v30;
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  v144 = &v121 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v121 - v35;
  *&v39 = MEMORY[0x1EEE9AC00](v37).n128_u64[0];
  v41 = &v121 - v40;
  v42 = *v14 + 1;
  if (__OFADD__(*v14, 1))
  {
    __break(1u);
    goto LABEL_124;
  }

  v145 = v38;
  v146 = v4;
  *v14 = v42;
  if ([v12 isNullAtIndex_])
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
  }

  else
  {
    v44 = sub_1CF1CBB20();
    sub_1CF2408F8(v44, v12, 0, v41);
    if (v1)
    {
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    (*(*(v46 - 8) + 56))(v41, 0, 1, v46);
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v48 = *(v47 - 8);
  v49 = *(v48 + 48);
  v50 = 1;
  v141 = v47;
  v142 = v49;
  v156 = v48 + 48;
  if (v49(v41, 1) != 1 || ([v12 isNullAtIndex_] & 1) != 0)
  {
LABEL_11:
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
    (*(*(v52 - 8) + 56))(v209, v50, 1, v52);
    v140 = [v12 isNullAtIndex_];
    if (v140)
    {
      v53 = 0;
    }

    else
    {
      v53 = [v12 longAtIndex_];
    }

    if (!__OFADD__(v8, 1))
    {
      v139 = v53;
      v138 = [v12 isNullAtIndex_];
      if (v138)
      {
        v54 = 0;
      }

      else
      {
        v54 = [v12 longAtIndex_];
      }

      if (!__OFADD__(v8, 2))
      {
        v137 = v54;
        if ([v12 isNullAtIndex_])
        {
          v55 = 2;
        }

        else
        {
          v55 = [v12 BOOLAtIndex_];
        }

        if (!__OFADD__(v8, 3))
        {
          v136 = v55;
          if ([v12 isNullAtIndex_])
          {
            v56 = 2;
          }

          else
          {
            v56 = [v12 BOOLAtIndex_];
          }

          if (!__OFADD__(v8, 4))
          {
            v135 = v56;
            v134 = [v12 isNullAtIndex_];
            if (v134)
            {
              v57 = 0;
            }

            else
            {
              v57 = [v12 longAtIndex_];
            }

            if (!__OFADD__(v8, 5))
            {
              v133 = v57;
              if ([v12 isNullAtIndex_])
              {
                v160 = 0;
                v161 = 0xF000000000000000;
              }

              else
              {
                if ([v12 isNullAtIndex_])
                {
                  goto LABEL_136;
                }

                if (swift_dynamicCastMetatype())
                {
                  goto LABEL_137;
                }

                v58 = [v12 dataAtIndex_];
                v160 = sub_1CF9E5B88();
                v161 = v59;
              }

              if (!__OFADD__(v8, 6))
              {
                if ([v12 isNullAtIndex_])
                {
                  v158 = 0;
                  v159 = 0xF000000000000000;
                  goto LABEL_42;
                }

                if ([v12 isNullAtIndex_])
                {
                  goto LABEL_136;
                }

                if (!swift_dynamicCastMetatype())
                {
                  v60 = [v12 dataAtIndex_];
                  v158 = sub_1CF9E5B88();
                  v159 = v61;

LABEL_42:
                  if (!__OFADD__(v8, 7))
                  {
                    v132 = [v12 isNullAtIndex_];
                    if (v132)
                    {
                      v62 = 0;
                    }

                    else
                    {
                      v62 = [v12 longAtIndex_];
                    }

                    if (!__OFADD__(v8, 8))
                    {
                      v131 = v62;
                      v63 = [v12 isNullAtIndex_];
                      if (v63)
                      {
                        v64 = 0;
                      }

                      else
                      {
                        v64 = [v12 longAtIndex_];
                      }

                      if (!__OFADD__(v8, 9))
                      {
                        v65 = [v12 longAtIndex_];
                        if (!__OFADD__(v8, 10))
                        {
                          v129 = v65;
                          v130 = v63;
                          v66 = [v12 integerAtIndex_];
                          if (!__OFADD__(v8, 11))
                          {
                            v67 = v66;
                            v128 = v64;
                            v68 = [v12 longAtIndex_];
                            if (!__OFADD__(v8, 12))
                            {
                              v69 = v68;
                              v70 = sub_1CEFE9C6C();
                              sub_1CEFE9EC8(v12, v70, v8 + 12, v208);
                              if (v1)
                              {
                                sub_1CEFCCC44(v209, &unk_1EC4BFBB0, &qword_1CF9FCB90);

                                sub_1CEFE48D8(v158, v159);
                                sub_1CEFE48D8(v160, v161);
                                goto LABEL_56;
                              }

                              v74 = sub_1CEFF12E8();
                              sub_1CEFF14E0(v12, v74, v157, v206);
                              v127 = v69;
                              v157 = v67;

                              v202 = v206[12];
                              v203 = v206[13];
                              v204 = v206[14];
                              v205 = v207;
                              v198 = v206[8];
                              v199 = v206[9];
                              v200 = v206[10];
                              v201 = v206[11];
                              v194 = v206[4];
                              v195 = v206[5];
                              v196 = v206[6];
                              v197 = v206[7];
                              v190 = v206[0];
                              v191 = v206[1];
                              v192 = v206[2];
                              v193 = v206[3];
                              v75 = v208[13];
                              v76 = v141;
                              if (!v208[13])
                              {
LABEL_81:
                                v92 = v208[37];
                                v93 = v161;
                                if (v208[37] == 1)
                                {
                                  v94 = v160;
                                  if (v161 >> 60 != 15)
                                  {
                                    v95 = 0;
                                    v96 = 0xF000000000000000;
LABEL_88:
                                    sub_1CEFF05F4(v94, v93);
                                    sub_1CEFF05F4(v94, v93);
                                    sub_1CEFE4714(v94, v93);
LABEL_90:
                                    sub_1CEFE48D8(v94, v93);
                                    sub_1CEFE48D8(v95, v96);
                                    v97 = v155;
                                    v98 = v159;
LABEL_91:
                                    if ((v208[33] & 8) == 0)
                                    {
                                      v208[33] |= 8uLL;
                                    }

LABEL_93:
                                    if (v92 == 1)
                                    {
                                      v99 = v148;
                                      v100 = v141;
                                      if (v98 >> 60 != 15)
                                      {
                                        v101 = 0;
                                        v102 = 0xF000000000000000;
LABEL_101:
                                        v105 = v158;
                                        sub_1CEFF05F4(v158, v98);
                                        sub_1CEFF05F4(v105, v98);
                                        sub_1CEFE4714(v105, v98);
LABEL_103:
                                        sub_1CEFE48D8(v105, v98);
                                        sub_1CEFE48D8(v101, v102);
                                        v97 = v155;
                                        goto LABEL_104;
                                      }

                                      goto LABEL_99;
                                    }

LABEL_97:
                                    v101 = v208[38];
                                    v102 = v208[39];
                                    sub_1CEFE42D4(v208[38], v208[39]);
                                    if (v98 >> 60 != 15)
                                    {
                                      v99 = v148;
                                      v100 = v141;
                                      if (v102 >> 60 == 15)
                                      {
                                        goto LABEL_101;
                                      }

                                      v119 = v158;
                                      sub_1CEFF05F4(v158, v98);
                                      sub_1CEFF05F4(v101, v102);
                                      sub_1CEFF05F4(v119, v98);
                                      LODWORD(v145) = sub_1CF328660(v119, v98, v101, v102);
                                      sub_1CEFE48D8(v101, v102);
                                      sub_1CEFE48D8(v101, v102);
                                      sub_1CEFE4714(v119, v98);
                                      v120 = v119;
                                      v97 = v155;
                                      sub_1CEFE48D8(v120, v98);
                                      if ((v145 & 1) == 0)
                                      {
LABEL_104:
                                        if ((~LOBYTE(v208[33]) & 3) != 0)
                                        {
                                          v208[33] |= 3uLL;
                                        }
                                      }

LABEL_106:
                                      v106 = v147;
                                      if (v129 < *v97)
                                      {
                                        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 4171);
                                      }

                                      *v97 = v129;
                                      memcpy(v189, v208, sizeof(v189));
                                      sub_1CEFCCBDC(v41, v106, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      v107 = v142;
                                      v108 = v142(v106, 1, v100);
                                      v110 = v149;
                                      v109 = v150;
                                      if (v108 == 1)
                                      {
                                        sub_1CEFCCBDC(v189, v181, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                                        sub_1CEFCCC44(v106, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                        LODWORD(v155) = 2;
                                      }

                                      else
                                      {
                                        LODWORD(v155) = *(v106 + *(v100 + 48) + *(v154 + 80));
                                        sub_1CEFCCBDC(v189, v181, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                                        sub_1CEFCCC44(v106, &unk_1EC4BE360, &qword_1CF9FE650);
                                      }

                                      sub_1CEFCCBDC(v41, v99, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      if (v107(v99, 1, v100) == 1)
                                      {
                                        sub_1CEFCCC44(v99, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                        LODWORD(v154) = 2;
                                      }

                                      else
                                      {
                                        v111 = v143;
                                        sub_1CEFF4408(v99 + *(v100 + 48), v143);
                                        sub_1CEFCCC44(v99, &unk_1EC4BE360, &qword_1CF9FE650);
                                        LODWORD(v154) = *(v111 + *(v154 + 72));
                                        sub_1CEFD5218(v111, type metadata accessor for ItemMetadata);
                                      }

                                      sub_1CEFCCBDC(v41, v110, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      v112 = v107(v110, 1, v100);
                                      if (v112 == 1)
                                      {
                                        sub_1CEFCCC44(v110, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                        v148 = 0;
                                      }

                                      else
                                      {
                                        v148 = *(v110 + 32);
                                        sub_1CEFCCC44(v110, &unk_1EC4BE360, &qword_1CF9FE650);
                                      }

                                      sub_1CEFCCBDC(v41, v109, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      if (v107(v109, 1, v100) == 1)
                                      {
                                        sub_1CEFCCC44(v109, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                        v156 = 0;
                                        LODWORD(v149) = 255;
                                      }

                                      else
                                      {
                                        v156 = *(v109 + 16);
                                        LODWORD(v149) = *(v109 + 24);
                                        sub_1CEFCCC44(v109, &unk_1EC4BE360, &qword_1CF9FE650);
                                      }

                                      v113 = v112 == 1;
                                      memcpy(v163, v189, sizeof(v163));
                                      nullsub_1(v163);
                                      v176 = v202;
                                      v177 = v203;
                                      v178 = v204;
                                      v179 = v205;
                                      v172 = v198;
                                      v173 = v199;
                                      v174 = v200;
                                      v175 = v201;
                                      v168 = v194;
                                      v169 = v195;
                                      v170 = v196;
                                      v171 = v197;
                                      v164 = v190;
                                      v165 = v191;
                                      v166 = v192;
                                      v167 = v193;
                                      nullsub_1(&v164);
                                      memcpy(v180, v163, sizeof(v180));
                                      *(&v182[12] + 5) = v176;
                                      *(&v182[13] + 5) = v177;
                                      *(&v182[14] + 5) = v178;
                                      *(&v182[8] + 5) = v172;
                                      *(&v182[9] + 5) = v173;
                                      *(&v182[10] + 5) = v174;
                                      *(&v182[11] + 5) = v175;
                                      *(&v182[4] + 5) = v168;
                                      *(&v182[5] + 5) = v169;
                                      *(&v182[6] + 5) = v170;
                                      *(&v182[7] + 5) = v171;
                                      *(v182 + 5) = v164;
                                      *(&v182[1] + 5) = v165;
                                      *(&v182[2] + 5) = v166;
                                      v188 = v113;
                                      v187 = v140;
                                      v186 = v138;
                                      v185 = v132;
                                      v184 = v130;
                                      v183 = v134;
                                      *(&v182[15] + 5) = v179;
                                      *(&v182[3] + 5) = v167;
                                      v114 = v140;
                                      v115 = v138;
                                      LODWORD(v145) = v132;
                                      LODWORD(v147) = v130;
                                      LODWORD(v150) = v134;
                                      v116 = v153;
                                      sub_1CEFCCBDC(v41, v153, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      v117 = v151;
                                      sub_1CEFCCBDC(v209, v116 + *(v151 + 20), &unk_1EC4BFBB0, &qword_1CF9FCB90);
                                      memcpy(v181, v180, 0x208uLL);
                                      LOBYTE(v181[65]) = v155;
                                      BYTE1(v181[65]) = v154;
                                      v181[66] = v148;
                                      LOBYTE(v181[67]) = v113;
                                      v181[68] = v156;
                                      LOBYTE(v181[69]) = v149;
                                      v181[70] = v139;
                                      LOBYTE(v181[71]) = v114;
                                      v181[72] = v137;
                                      LOBYTE(v181[73]) = v115;
                                      v181[74] = v131;
                                      LOBYTE(v181[75]) = v145;
                                      v181[76] = v128;
                                      LOBYTE(v181[77]) = v147;
                                      v181[78] = v133;
                                      LOBYTE(v181[79]) = v150;
                                      BYTE1(v181[79]) = v136;
                                      BYTE2(v181[79]) = v135;
                                      *(&v181[103] + 3) = v182[12];
                                      *(&v181[105] + 3) = v182[13];
                                      *(&v181[107] + 3) = v182[14];
                                      *&v181[109] = *(&v182[14] + 13);
                                      *(&v181[95] + 3) = v182[8];
                                      *(&v181[97] + 3) = v182[9];
                                      *(&v181[99] + 3) = v182[10];
                                      *(&v181[101] + 3) = v182[11];
                                      *(&v181[87] + 3) = v182[4];
                                      *(&v181[89] + 3) = v182[5];
                                      *(&v181[91] + 3) = v182[6];
                                      *(&v181[93] + 3) = v182[7];
                                      *(&v181[79] + 3) = v182[0];
                                      *(&v181[81] + 3) = v182[1];
                                      *(&v181[83] + 3) = v182[2];
                                      *(&v181[85] + 3) = v182[3];
                                      nullsub_1(v181);
                                      memcpy((v116 + v117[6]), v181, 0x378uLL);
                                      *(v116 + v117[7]) = v157;
                                      v118 = v116 + v117[8];
                                      *v118 = v127;
                                      *(v118 + 8) = 0;
                                      sub_1CEFF7474(&v190, v162);
                                      v146(v116);
                                      sub_1CF07574C(&v190);
                                      sub_1CEFE48D8(v158, v159);
                                      sub_1CEFE48D8(v160, v161);
                                      sub_1CEFD5218(v116, type metadata accessor for PendingIndexingItemRow);
                                      sub_1CEFCCC44(v209, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                                      sub_1CEFCCC44(v41, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      memcpy(v162, v208, sizeof(v162));
                                      v71 = &qword_1EC4BFBC0;
                                      v72 = &unk_1CF9FCAC0;
                                      v73 = v162;
                                      return sub_1CEFCCC44(v73, v71, v72);
                                    }

                                    v99 = v148;
                                    v100 = v141;
                                    if (v102 >> 60 != 15)
                                    {
                                      v105 = v158;
                                      sub_1CEFF05F4(v158, v98);
                                      goto LABEL_103;
                                    }

LABEL_99:
                                    v104 = v158;
                                    sub_1CEFF05F4(v158, v98);
                                    sub_1CEFE48D8(v104, v98);
                                    goto LABEL_106;
                                  }
                                }

                                else
                                {
                                  v95 = v208[35];
                                  v96 = v208[36];
                                  sub_1CEFE42D4(v208[35], v208[36]);
                                  if (v93 >> 60 != 15)
                                  {
                                    v94 = v160;
                                    if (v96 >> 60 != 15)
                                    {
                                      sub_1CEFF05F4(v160, v93);
                                      sub_1CEFF05F4(v95, v96);
                                      sub_1CEFF05F4(v94, v93);
                                      v103 = sub_1CF328660(v94, v93, v95, v96);
                                      sub_1CEFE48D8(v95, v96);
                                      sub_1CEFE48D8(v95, v96);
                                      sub_1CEFE4714(v94, v93);
                                      sub_1CEFE48D8(v94, v93);
                                      v97 = v155;
                                      v98 = v159;
                                      if (v103)
                                      {
                                        goto LABEL_97;
                                      }

                                      goto LABEL_91;
                                    }

                                    goto LABEL_88;
                                  }

                                  v94 = v160;
                                  if (v96 >> 60 != 15)
                                  {
                                    sub_1CEFF05F4(v160, v93);
                                    goto LABEL_90;
                                  }
                                }

                                sub_1CEFF05F4(v94, v93);
                                sub_1CEFE48D8(v94, v93);
                                v97 = v155;
                                v98 = v159;
                                goto LABEL_93;
                              }

                              v77 = v208[5];
                              v126 = v208[6];
                              v78 = v208[7];
                              v79 = LOBYTE(v208[8]);
                              sub_1CEFCCBDC(v41, v36, &qword_1EC4C1B40, &unk_1CF9FCB70);
                              if (v142(v36, 1, v76) == 1)
                              {
                                sub_1CEFCCC44(v36, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                v80 = v142;
                              }

                              else
                              {
                                LODWORD(v125) = v79;
                                v123 = v78;
                                v82 = *(v36 + 4);
                                v83 = *(v36 + 10);
                                v122 = *(v36 + 6);
                                v124 = v36[56];
                                sub_1CEFCCC44(v36, &unk_1EC4BE360, &qword_1CF9FE650);
                                v80 = v142;
                                if (v77 == v82 && v126 == v83)
                                {
                                  if (v125)
                                  {
                                    if (v124)
                                    {
                                      goto LABEL_73;
                                    }
                                  }

                                  else
                                  {
                                    v85 = v124;
                                    if (v123 != v122)
                                    {
                                      v85 = 1;
                                    }

                                    if ((v85 & 1) == 0)
                                    {
LABEL_73:
                                      LODWORD(v144) = LOBYTE(v208[11]);
                                      v86 = v208[10];
                                      v87 = v208[12];
                                      v88 = v145;
                                      sub_1CEFCCBDC(v41, v145, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      if (v80(v88, 1, v76) == 1)
                                      {

                                        sub_1CEFCCC44(v88, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      }

                                      else
                                      {
                                        v89 = *(v88 + 72);
                                        v126 = *(v88 + 80);
                                        v90 = *(v88 + 96);
                                        v125 = *(v88 + 88);

                                        sub_1CEFCCC44(v88, &unk_1EC4BE360, &qword_1CF9FE650);
                                        if (v90)
                                        {

                                          v91 = sub_1CF443664(v86, v144, v87, v75, v89, v126, v125, v90);
                                          swift_bridgeObjectRelease_n();
                                          swift_bridgeObjectRelease_n();
                                          if (v91)
                                          {
                                            goto LABEL_81;
                                          }

                                          goto LABEL_79;
                                        }
                                      }

LABEL_79:
                                      if ((~LOBYTE(v208[3]) & 3) != 0)
                                      {
                                        v208[3] |= 3uLL;
                                      }

                                      goto LABEL_81;
                                    }
                                  }
                                }
                              }

                              v81 = v144;
                              sub_1CEFCCBDC(v41, v144, &qword_1EC4C1B40, &unk_1CF9FCB70);
                              if (v80(v81, 1, v76) == 1)
                              {
                                sub_1CEFCCC44(v81, &qword_1EC4C1B40, &unk_1CF9FCB70);
                              }

                              else
                              {
                                v84 = *(v81 + *(v76 + 48) + *(v154 + 80));
                                sub_1CEFCCC44(v81, &unk_1EC4BE360, &qword_1CF9FE650);
                                if ((v84 & 1) == 0 && (v208[3] & 8) == 0)
                                {
                                  v208[3] |= 8uLL;
                                }
                              }

                              goto LABEL_73;
                            }

                            goto LABEL_135;
                          }

LABEL_134:
                          __break(1u);
LABEL_135:
                          __break(1u);
LABEL_136:
                          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
                        }

LABEL_133:
                        __break(1u);
                        goto LABEL_134;
                      }

LABEL_132:
                      __break(1u);
                      goto LABEL_133;
                    }

LABEL_131:
                    __break(1u);
                    goto LABEL_132;
                  }

LABEL_130:
                  __break(1u);
                  goto LABEL_131;
                }

LABEL_137:
                sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
              }

LABEL_129:
              __break(1u);
              goto LABEL_130;
            }

LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v51 = sub_1CF1CC7A8();
  sub_1CF241018(v12, v51, v10, v209);

  if (!v1)
  {
    v50 = 0;
    goto LABEL_11;
  }

LABEL_56:
  v71 = &qword_1EC4C1B40;
  v72 = &unk_1CF9FCB70;
  v73 = v41;
  return sub_1CEFCCC44(v73, v71, v72);
}

uint64_t sub_1CF235AC4(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA38A90);
  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);

  return 0;
}

uint64_t sub_1CF235B80(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA38A10);
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA38A60);
  v10 = [a1 bindLongParameter_];
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  return 0;
}

uint64_t sub_1CF235CB0(uint64_t a1, char *a2, int a3, uint64_t a4, int a5, void *a6)
{
  LODWORD(v110) = a5;
  v82 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v64 - v13;
  v15 = sub_1CF1CBB20();
  sub_1CF2408F8(v15, a6, a3, v14);
  if (v6)
  {
  }

  v81 = v14;
  v77 = a1;

  LODWORD(v76) = [a6 isNullAtIndex_];
  if (v76)
  {
    v17 = 0;
  }

  else
  {
    v17 = [a6 longAtIndex_];
  }

  if (__OFADD__(a4, 1))
  {
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v75 = [a6 isNullAtIndex_];
  if (v75)
  {
    v18 = 0;
  }

  else
  {
    v18 = [a6 longAtIndex_];
  }

  if (__OFADD__(a4, 2))
  {
    goto LABEL_89;
  }

  v74 = v18;
  if ([a6 isNullAtIndex_])
  {
    v19 = 2;
  }

  else
  {
    v19 = [a6 BOOLAtIndex_];
  }

  if (__OFADD__(a4, 3))
  {
    goto LABEL_90;
  }

  v73 = v19;
  if ([a6 isNullAtIndex_])
  {
    v20 = 2;
  }

  else
  {
    v20 = [a6 BOOLAtIndex_];
  }

  if (__OFADD__(a4, 4))
  {
    goto LABEL_91;
  }

  v72 = v20;
  v71 = [a6 isNullAtIndex_];
  if (v71)
  {
    v21 = 0;
  }

  else
  {
    v21 = [a6 longAtIndex_];
  }

  if (__OFADD__(a4, 5))
  {
    goto LABEL_92;
  }

  v22 = [a6 isNullAtIndex_];
  v70 = v17;
  if (v22)
  {
    v79 = 0;
    v80 = 0xF000000000000000;
  }

  else
  {
    if ([a6 isNullAtIndex_])
    {
      goto LABEL_97;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_98;
    }

    v23 = [a6 dataAtIndex_];
    v79 = sub_1CF9E5B88();
    v80 = v24;
  }

  if (__OFADD__(a4, 6))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if ([a6 isNullAtIndex_])
  {
    v78 = 0;
    v25 = 0xF000000000000000;
    goto LABEL_34;
  }

  if ([a6 isNullAtIndex_])
  {
    goto LABEL_97;
  }

  if (swift_dynamicCastMetatype())
  {
LABEL_98:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  v26 = [a6 dataAtIndex_];
  v78 = sub_1CF9E5B88();
  v25 = v27;

LABEL_34:
  if (__OFADD__(a4, 7))
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  v69 = [a6 isNullAtIndex_];
  if (v69)
  {
    v28 = 0;
  }

  else
  {
    v28 = [a6 longAtIndex_];
  }

  if (__OFADD__(a4, 8))
  {
    goto LABEL_95;
  }

  v68 = v28;
  v67 = [a6 isNullAtIndex_];
  if (v67)
  {
    v29 = 0;
  }

  else
  {
    v29 = [a6 longAtIndex_];
  }

  if (__OFADD__(a4, 9))
  {
    goto LABEL_96;
  }

  v66 = v21;
  v30 = sub_1CEFE9C6C();
  sub_1CEFE9EC8(a6, v30, a4 + 9, v109);

  if (v109[31])
  {
    v31 = sub_1CEFF12E8();
    sub_1CEFF14E0(a6, v31, v110, v91);
    v110 = v11;

    v92[12] = *&v91[192];
    v92[13] = *&v91[208];
    v92[14] = *&v91[224];
    *&v92[15] = *&v91[240];
    v92[8] = *&v91[128];
    v92[9] = *&v91[144];
    v92[10] = *&v91[160];
    v92[11] = *&v91[176];
    v92[4] = *&v91[64];
    v92[5] = *&v91[80];
    v92[6] = *&v91[96];
    v92[7] = *&v91[112];
    v92[0] = *v91;
    v92[1] = *&v91[16];
    v92[2] = *&v91[32];
    v92[3] = *&v91[48];
    nullsub_1(v92);
    v105 = v92[12];
    v106 = v92[13];
    v107 = v92[14];
    v108 = *&v92[15];
    v101 = v92[8];
    v102 = v92[9];
    v103 = v92[10];
    v104 = v92[11];
    v97 = v92[4];
    v98 = v92[5];
    v99 = v92[6];
    v100 = v92[7];
    v93 = v92[0];
    v94 = v92[1];
    v95 = v92[2];
    v96 = v92[3];
  }

  else
  {
    sub_1CEFE528C(&v93);
    v110 = v11;
  }

  v32 = v109[13];
  v33 = v80;
  if (!v109[13])
  {
    goto LABEL_61;
  }

  v34 = v81;
  if (v109[5] != *(v81 + 4) || LODWORD(v109[6]) != *(v81 + 10))
  {
    goto LABEL_55;
  }

  v35 = v81[56];
  if ((v109[8] & 1) == 0)
  {
    if (v109[7] != *(v81 + 6))
    {
      v35 = 1;
    }

    if ((v35 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if ((v81[56] & 1) == 0)
  {
LABEL_55:
    v36 = &v81[*(v110 + 48)];
    v37 = type metadata accessor for ItemMetadata();
    v34 = v81;
    if ((v36[*(v37 + 80)] & 1) == 0 && (v109[3] & 8) == 0)
    {
      v109[3] |= 8uLL;
    }
  }

LABEL_58:
  if ((sub_1CF443664(v109[10], v109[11], v109[12], v32, *(v34 + 9), v34[80], *(v34 + 11), *(v34 + 12)) & 1) == 0 && (~LOBYTE(v109[3]) & 3) != 0)
  {
    v109[3] |= 3uLL;
  }

LABEL_61:
  v65 = v29;
  v38 = v109[37];
  if (v109[37] != 1)
  {
    v40 = v109[35];
    v41 = v109[36];
    sub_1CEFE42D4(v109[35], v109[36]);
    if (v33 >> 60 != 15)
    {
      v39 = v79;
      if (v41 >> 60 != 15)
      {
        sub_1CEFF05F4(v79, v33);
        sub_1CEFF05F4(v40, v41);
        sub_1CEFF05F4(v39, v33);
        v45 = sub_1CF328660(v39, v33, v40, v41);
        sub_1CEFE48D8(v40, v41);
        sub_1CEFE48D8(v40, v41);
        sub_1CEFE4714(v39, v33);
        sub_1CEFE48D8(v39, v33);
        if (v45)
        {
LABEL_77:
          v43 = v109[38];
          v44 = v109[39];
          sub_1CEFE42D4(v109[38], v109[39]);
          if (v25 >> 60 == 15)
          {
            v42 = v78;
            if (v44 >> 60 != 15)
            {
              sub_1CEFF05F4(v78, v25);
LABEL_82:
              sub_1CEFE48D8(v42, v25);
              sub_1CEFE48D8(v43, v44);
              goto LABEL_83;
            }
          }

          else
          {
            v42 = v78;
            if (v44 >> 60 == 15)
            {
              goto LABEL_81;
            }

            sub_1CEFF05F4(v78, v25);
            sub_1CEFF05F4(v43, v44);
            sub_1CEFF05F4(v42, v25);
            v49 = sub_1CF328660(v42, v25, v43, v44);
            sub_1CEFE48D8(v43, v44);
            sub_1CEFE48D8(v43, v44);
            sub_1CEFE4714(v42, v25);
            sub_1CEFE48D8(v42, v25);
            if ((v49 & 1) == 0)
            {
LABEL_83:
              sub_1CEFE48D8(v42, v25);
              sub_1CEFE48D8(v79, v80);
              v47 = v75;
              v46 = v76;
              v48 = v110;
              if ((~LOBYTE(v109[33]) & 3) != 0)
              {
                v109[33] |= 3uLL;
              }

              goto LABEL_87;
            }
          }

          goto LABEL_86;
        }

        goto LABEL_71;
      }

      goto LABEL_68;
    }

    v39 = v79;
    if (v41 >> 60 != 15)
    {
      sub_1CEFF05F4(v79, v33);
      goto LABEL_70;
    }

LABEL_66:
    sub_1CEFF05F4(v39, v33);
    sub_1CEFE48D8(v39, v33);
    goto LABEL_73;
  }

  v39 = v79;
  if (v33 >> 60 == 15)
  {
    goto LABEL_66;
  }

  v40 = 0;
  v41 = 0xF000000000000000;
LABEL_68:
  sub_1CEFF05F4(v39, v33);
  sub_1CEFF05F4(v39, v33);
  sub_1CEFE4714(v39, v33);
LABEL_70:
  sub_1CEFE48D8(v39, v33);
  sub_1CEFE48D8(v40, v41);
LABEL_71:
  if ((v109[33] & 8) == 0)
  {
    v109[33] |= 8uLL;
  }

LABEL_73:
  if (v38 != 1)
  {
    goto LABEL_77;
  }

  v42 = v78;
  if (v25 >> 60 != 15)
  {
    v43 = 0;
    v44 = 0xF000000000000000;
LABEL_81:
    sub_1CEFF05F4(v42, v25);
    sub_1CEFF05F4(v42, v25);
    sub_1CEFE4714(v42, v25);
    goto LABEL_82;
  }

LABEL_86:
  sub_1CEFE48D8(v79, v80);
  sub_1CEFE48D8(v42, v25);
  v47 = v75;
  v46 = v76;
  v48 = v110;
LABEL_87:
  memcpy(v89, v109, sizeof(v89));
  memcpy(v90, v109, sizeof(v90));
  nullsub_1(v90);
  v50 = v81;
  v51 = &v81[*(v48 + 48)];
  v52 = type metadata accessor for ItemMetadata();
  LODWORD(v110) = v51[*(v52 + 80)];
  LODWORD(v78) = v51[*(v52 + 72)];
  v76 = *(v50 + 32);
  v80 = *(v50 + 16);
  LODWORD(v79) = *(v50 + 24);
  memcpy(v91, v90, sizeof(v91));
  *(&v84[12] + 5) = v105;
  *(&v84[13] + 5) = v106;
  *(&v84[14] + 5) = v107;
  *(&v84[8] + 5) = v101;
  *(&v84[9] + 5) = v102;
  *(&v84[10] + 5) = v103;
  *(&v84[11] + 5) = v104;
  *(&v84[4] + 5) = v97;
  *(&v84[5] + 5) = v98;
  *(&v84[6] + 5) = v99;
  *(&v84[7] + 5) = v100;
  *(v84 + 5) = v93;
  *(&v84[1] + 5) = v94;
  *(&v84[2] + 5) = v95;
  LOBYTE(v92[0]) = 0;
  v83[0] = v46;
  v88 = v47;
  v87 = v69;
  v86 = v67;
  v85 = v71;
  *(&v84[15] + 5) = v108;
  *(&v84[3] + 5) = v96;
  v53 = v69;
  v54 = v67;
  v75 = v71;
  sub_1CEFE55D0(v50, v77, &unk_1EC4BE360, &qword_1CF9FE650);
  v55 = v82;
  memcpy(v82, v91, 0x208uLL);
  v55[520] = v110;
  v55[521] = v78;
  *(v55 + 66) = v76;
  v55[536] = 0;
  *(v55 + 68) = v80;
  v55[552] = v79;
  *(v55 + 70) = v70;
  v55[568] = v46;
  *(v55 + 72) = v74;
  v55[584] = v47;
  *(v55 + 74) = v68;
  v55[600] = v53;
  v56 = v66;
  *(v55 + 76) = v65;
  v55[616] = v54;
  *(v55 + 78) = v56;
  v55[632] = v75;
  LOBYTE(v56) = v72;
  v55[633] = v73;
  v55[634] = v56;
  v57 = v84[13];
  *(v55 + 827) = v84[12];
  *(v55 + 843) = v57;
  *(v55 + 859) = v84[14];
  *(v55 + 872) = *(&v84[14] + 13);
  v58 = v84[9];
  *(v55 + 763) = v84[8];
  *(v55 + 779) = v58;
  v59 = v84[11];
  *(v55 + 795) = v84[10];
  *(v55 + 811) = v59;
  v60 = v84[5];
  *(v55 + 699) = v84[4];
  *(v55 + 715) = v60;
  v61 = v84[7];
  *(v55 + 731) = v84[6];
  *(v55 + 747) = v61;
  v62 = v84[1];
  *(v55 + 635) = v84[0];
  *(v55 + 651) = v62;
  v63 = v84[3];
  *(v55 + 667) = v84[2];
  *(v55 + 683) = v63;
  memcpy(v92, v109, 0x208uLL);
  sub_1CEFCCBDC(v89, v83, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  return sub_1CEFCCC44(v92, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
}

void sub_1CF2368F4(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _BYTE *), uint64_t a5, char *a6, uint64_t a7)
{
  v55 = a7;
  v56 = a4;
  v52 = a3;
  v53 = a6;
  v57 = a5;
  v51 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v47 - v10;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v23 = type metadata accessor for Signpost(0);
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v58 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a1;
  v49 = *(a1 + 8);
  if (qword_1EDEAE980 != -1)
  {
LABEL_26:
    swift_once();
  }

  v26 = qword_1EDEBBE40;
  (*(v12 + 56))(v22, 1, 1, v11);
  v48 = v22;
  sub_1CEFCCBDC(v22, v19, &unk_1EC4BED20, &unk_1CFA00700);
  v27 = *(v12 + 48);
  if (v27(v19, 1, v11) == 1)
  {
    v28 = v26;
    sub_1CF9E6048();
    if (v27(v19, 1, v11) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
  }

  v29 = v58;
  (*(v12 + 16))(v58, v15, v11);
  *&v29[v23[5]] = v26;
  v30 = &v29[v23[6]];
  *v30 = "SQLDB: Scan decorated";
  *(v30 + 1) = 21;
  v30[16] = 2;
  v31 = v26;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v12 + 8))(v15, v11);
  v32 = sub_1CEFCCC44(v48, &unk_1EC4BED20, &unk_1CFA00700);
  if (v51)
  {
    v33 = *(v51 + 16);
  }

  else
  {
    v33 = 0;
  }

  v34 = v54;
  v35 = MEMORY[0x1EEE9AC00](v32);
  *(&v47 - 4) = v36;
  *(&v47 - 24) = v37;
  *(&v47 - 2) = 200;
  *(&v47 - 1) = v33;
  v39 = (*(v38 + 24))(sub_1CF24EF80, v35);
  v19 = v34;
  if (v34)
  {
    sub_1CF9E7458();
    v40 = v58;
    sub_1CF9E6038();
    sub_1CEFD5218(v40, type metadata accessor for Signpost);
    return;
  }

  v41 = v39;
  v15 = *(sub_1CF1CBB20() + 2);

  if (v15 >> 31)
  {
    __break(1u);
    goto LABEL_28;
  }

  v22 = (v15 + 9);
  if (__OFADD__(v15, 9))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v42 = *(sub_1CEFE9C6C() + 16);

  if (v42 >> 31)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  LODWORD(v55) = v22 + v42;
  if (__OFADD__(v22, v42))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  if ([v41 next])
  {
    v53 = v33;
    v54 = v31;
    v12 = 0;
    v11 = v47;
    do
    {
      v43 = objc_autoreleasePoolPush();
      v44 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      v23 = v43;
      sub_1CF235CB0(v11, v61, 0, v15, v55, v41);
      memcpy(v60, v61, sizeof(v60));
      memcpy(v59, v61, sizeof(v59));
      v22 = v57;
      v56(v11, v59);
      sub_1CEFCCC44(v11, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFF5410(v60);
      objc_autoreleasePoolPop(v23);
      ++v12;
    }

    while (([v41 next] & 1) != 0);

    if (v44 != 200)
    {
      goto LABEL_23;
    }

    v45 = v53 + 200;
    if (!__OFADD__(v53, 200))
    {
      type metadata accessor for PaginatedContinuation();
      *(swift_allocObject() + 16) = v45;
      goto LABEL_23;
    }

    goto LABEL_31;
  }

LABEL_23:
  sub_1CF9E7458();
  v46 = v58;
  sub_1CF9E6038();
  sub_1CEFD5218(v46, type metadata accessor for Signpost);
}

uint64_t sub_1CF236F88(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  v10 = sub_1CF208628(3044198, 0xE300000000000000);
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000138, 0x80000001CFA381A0);
  v11 = sub_1CEFE8C10(3044466, 0xE300000000000000);
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v12 = sub_1CEFE91F8(0x726F6365642E7066, 0xEE005F6E6F697461);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD0000000000000A1, 0x80000001CFA382E0);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v13 = [a1 bindLongParameter_];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  MEMORY[0x1D3868CC0](v14, v16);

  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA38390);
  v17 = [a1 bindLongParameter_];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  MEMORY[0x1D3868CC0](v18, v20);

  MEMORY[0x1D3868CC0](0x2054455346464F20, 0xE800000000000000);
  v21 = [a1 bindLongParameter_];
  v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;

  MEMORY[0x1D3868CC0](v22, v24);

  return v26;
}

uint64_t sub_1CF237234(void *a1, unint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000100, 0x80000001CFA37FE0);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  MEMORY[0x1D3868CC0](0xD000000000000087, 0x80000001CFA380F0);
  return v11;
}

void sub_1CF237350(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v73 = v2;
  v85 = v1;
  v74 = v4;
  v75 = v3;
  v70 = v5;
  v71 = v6;
  v76 = v7;
  v69 = v8;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v77 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v64 - v17;
  v18 = sub_1CF9E6068();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - v28;
  v30 = type metadata accessor for Signpost(0);
  v31 = *(*(v30 - 1) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v72 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *v12;
  LODWORD(v67) = *(v12 + 8);
  v33 = *v10;
  v65 = v10[1];
  v66 = v33;
  if (qword_1EDEAE980 != -1)
  {
LABEL_32:
    swift_once();
  }

  v34 = qword_1EDEBBE40;
  (*(v19 + 56))(v29, 1, 1, v18);
  v64 = v29;
  sub_1CEFCCBDC(v29, v26, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = *(v19 + 48);
  if (v35(v26, 1, v18) == 1)
  {
    v36 = v34;
    sub_1CF9E6048();
    if (v35(v26, 1, v18) != 1)
    {
      sub_1CEFCCC44(v26, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v19 + 32))(v22, v26, v18);
  }

  v37 = v72;
  (*(v19 + 16))(v72, v22, v18);
  *(v37 + v30[5]) = v34;
  v38 = v37 + v30[6];
  *v38 = "SQLDB: Scan decorated app libraries";
  *(v38 + 8) = 35;
  *(v38 + 16) = 2;
  v39 = v34;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v19 + 8))(v22, v18);
  sub_1CEFCCC44(v64, &unk_1EC4BED20, &unk_1CFA00700);
  if (v69)
  {
    v40 = *(v69 + 2);
  }

  else
  {
    v40 = 0;
  }

  v41 = v73;
  v42 = MEMORY[0x1EEE9AC00](v65);
  *(&v64 - 10) = v43;
  *(&v64 - 9) = v44;
  *(&v64 - 8) = v46;
  *(&v64 - 7) = v45;
  *(&v64 - 6) = v47;
  *(&v64 - 5) = v48;
  *(&v64 - 32) = v49;
  *(&v64 - 3) = 200;
  *(&v64 - 2) = v40;
  v50 = (*(v44 + 24))(sub_1CF24D128, v42);
  if (v41)
  {
    goto LABEL_29;
  }

  v30 = v50;
  v22 = *(sub_1CF1CBB20() + 2);

  if (v22 >> 31)
  {
    __break(1u);
    goto LABEL_34;
  }

  v51 = v22 + 9;
  if (__OFADD__(v22, 9))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v52 = *(sub_1CEFE9C6C() + 16);

  if (v52 >> 31)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  LODWORD(v74) = v51 + v52;
  if (__OFADD__(v51, v52))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v53 = *(sub_1CEFF12E8() + 2);

  if (v53 >> 31)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  LODWORD(v73) = v74 + v53;
  if (__OFADD__(v74, v53))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v54 = *(sub_1CF1CBB20() + 2);

  if (v54 >> 31)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v55 = v73 + v54;
  if (__OFADD__(v73, v54))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v29 = (v55 + 9);
  if (__OFADD__(v55, 9))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  LODWORD(v71) = v55;
  v56 = *(sub_1CEFE9C6C() + 16);

  if (v56 >> 31)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  LODWORD(v70) = v29 + v56;
  if (!__OFADD__(v29, v56))
  {
    if ([v30 next])
    {
      v67 = v40;
      v68 = v39;
      v26 = 0;
      v19 = v78;
      do
      {
        v57 = objc_autoreleasePoolPush();
        v18 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          goto LABEL_32;
        }

        v58 = v57;
        sub_1CF235CB0(v19, v84, 0, v22, v74, v30);
        memcpy(v83, v84, sizeof(v83));
        v59 = v77;
        sub_1CF235CB0(v77, v82, v73, v71, v70, v30);
        v69 = v26 + 1;
        v60 = v30;
        v61 = v22;
        memcpy(v81, v82, sizeof(v81));
        memcpy(v80, v83, sizeof(v80));
        memcpy(v79, v82, sizeof(v79));
        v62 = v78;
        v75(v78, v80, v59, v79);
        v29 = &unk_1EC4BE360;
        sub_1CEFCCC44(v59, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v62, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFF5410(v81);
        sub_1CEFF5410(v83);
        objc_autoreleasePoolPop(v58);
        ++v26;
        v19 = v62;
        v22 = v61;
        v30 = v60;
      }

      while (([v60 next] & 1) != 0);

      if (v69 == 200)
      {
        v63 = v67 + 200;
        v37 = v72;
        if (__OFADD__(v67, 200))
        {
          goto LABEL_44;
        }

        type metadata accessor for PaginatedContinuation();
        *(swift_allocObject() + 16) = v63;
      }

      else
      {
        v37 = v72;
      }
    }

    else
    {
    }

LABEL_29:
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v37, type metadata accessor for Signpost);
    return;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1CF237BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  sub_1CF9E7948();
  v46 = 0;
  v47 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  v13 = sub_1CF208628(0x656E6961746E6F63, 0xED00002E73665F72);
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD000000000000199, 0x80000001CFA37940);
  v14 = sub_1CEFE8C10(0x656E6961746E6F63, 0xED00002E74725F72);
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v15 = sub_1CEFE91F8(0xD000000000000018, 0x80000001CFA37AE0);
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v16 = sub_1CF208628(0x746E656D75636F64, 0xEC0000002E73665FLL);
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0xD000000000000190, 0x80000001CFA37B00);
  v17 = sub_1CEFE8C10(0x746E656D75636F64, 0xEC0000002E74725FLL);
  MEMORY[0x1D3868CC0](v17);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v18 = sub_1CEFE91F8(0xD000000000000017, 0x80000001CFA37CA0);
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](0xD0000000000000B5, 0x80000001CFA37CC0);
  if (a3)
  {

    v19 = MEMORY[0x1E69E6158];
  }

  else
  {

    a2 = 0;
    v19 = 0;
    v45[2] = 0;
  }

  v45[0] = a2;
  v45[1] = a3;
  v45[3] = v19;
  v20 = sub_1CEFF8EA0(v45);
  v22 = v21;
  sub_1CEFCCC44(v45, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v22)
  {
    MEMORY[0x1D3868CC0](v20, v22);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = *(Strong + 32);

      v25 = *(v24 + 16);

      v27 = (*(*v25 + 112))(v26);

      if (v27 == 2 || (v27 & 1) == 0)
      {
        v29 = 0xEE00455341434F4ELL;
        v28 = 0x204554414C4C4F43;
      }

      else
      {
        v28 = 0;
        v29 = 0xE000000000000000;
      }

      MEMORY[0x1D3868CC0](v28, v29);

      MEMORY[0x1D3868CC0](0xD00000000000016DLL, 0x80000001CFA37D80);
      if (a6)
      {
        if (a6 != 1)
        {
          a5 = (a5 != 0) << 63;
          goto LABEL_16;
        }

        if ((a5 & 0x8000000000000000) == 0)
        {
LABEL_16:
          v30 = [a1 bindLongParameter_];
          v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v33 = v32;

          MEMORY[0x1D3868CC0](v31, v33);

          MEMORY[0x1D3868CC0](0xD0000000000000BALL, 0x80000001CFA37EF0);
          v34 = [a1 bindLongParameter_];
          v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v37 = v36;

          MEMORY[0x1D3868CC0](v35, v37);

          MEMORY[0x1D3868CC0](0x2054455346464F20, 0xE800000000000000);
          v38 = [a1 bindLongParameter_];
          v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v41 = v40;

          MEMORY[0x1D3868CC0](v39, v41);

          return v46;
        }

        __break(1u);
      }

      a5 = -a5;
      goto LABEL_16;
    }

    __break(1u);
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF238104(void *a1, char a2, uint64_t a3)
{
  v6 = 0xE000000000000000;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000001F7, 0x80000001CFA365C0);
  v7 = sub_1CEFE8C10(3044466, 0xE300000000000000);
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0x202020202020200ALL, 0xE800000000000000);
  if (a2)
  {
    v8 = sub_1CEFE91F8(0x726F6365642E7066, 0xEE005F6E6F697461);
    v27 = 44;
    v28 = 0xE100000000000000;
    MEMORY[0x1D3868CC0](v8);

    v9 = 44;
    v6 = 0xE100000000000000;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1D3868CC0](v9, v6);

  MEMORY[0x1D3868CC0](0xD000000000000092, 0x80000001CFA367C0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v10, 0);
    v11 = v29;
    v12 = (a3 + 41);
    do
    {
      v13 = *v12;
      v14 = *(v12 - 1);
      v24 = *(v12 - 9);
      v25 = v14;
      v26 = v13;
      sub_1CEFD0988(v24, v14, v13);
      sub_1CF2383D8(&v24, a1, &v27);
      sub_1CEFD0994(v24, v25, v26);
      v15 = v27;
      v16 = v28;
      v29 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1CEFE95CC((v17 > 1), v18 + 1, 1);
        v11 = v29;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v12 += 16;
      --v10;
    }

    while (v10);
  }

  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v20 = sub_1CF9E67D8();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);

  return v30;
}

uint64_t sub_1CF2383D8@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v4 = sub_1CEFE96F8(*a1, *(a1 + 8) | (*(a1 + 9) << 8), 0, 0xE000000000000000, a2);
  MEMORY[0x1D3868CC0](v4);

  *a3 = 3044466;
  a3[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_1CF238460(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v249 = v1;
  v245 = v3;
  LODWORD(v247) = v4;
  v311 = v2;
  v235 = sub_1CF9E5CF8();
  v239 = *(v235 - 8);
  v5 = v239[8];
  v6 = MEMORY[0x1EEE9AC00](v235);
  v223 = &v198[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v226 = &v198[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v232 = &v198[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v225 = &v198[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v234 = &v198[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v233 = &v198[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v229 = &v198[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v236 = &v198[-v22];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v230 = &v198[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v231 = &v198[-v25];
  v237 = type metadata accessor for ItemMetadata();
  v26 = *(*(v237 - 1) + 64);
  v27 = MEMORY[0x1EEE9AC00](v237);
  v227 = &v198[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x1EEE9AC00](v27);
  v238 = &v198[-v30];
  MEMORY[0x1EEE9AC00](v29);
  v228 = &v198[-v31];
  v32 = sub_1CF9E6068();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v198[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v41 = &v198[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v198[-v42];
  v44 = type metadata accessor for Signpost(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v252 = &v198[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDEBBE40;
  (*(v33 + 56))(v43, 1, 1, v32);
  v251 = v43;
  sub_1CEFCCBDC(v43, v41, &unk_1EC4BED20, &unk_1CFA00700);
  v48 = *(v33 + 48);
  if (v48(v41, 1, v32) == 1)
  {
    v49 = v47;
    sub_1CF9E6048();
    if (v48(v41, 1, v32) != 1)
    {
      sub_1CEFCCC44(v41, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v33 + 32))(v36, v41, v32);
  }

  v50 = v252;
  (*(v33 + 16))(v252, v36, v32);
  *&v50[*(v44 + 20)] = v47;
  v51 = &v50[*(v44 + 24)];
  *v51 = "SQLDB: Decoration Decoding";
  *(v51 + 1) = 26;
  v52 = 2;
  v51[16] = 2;
  v53 = v47;
  sub_1CF9E7468();
  v250 = v53;
  sub_1CF9E6038();
  (*(v33 + 8))(v36, v32);
  sub_1CEFCCC44(v251, &unk_1EC4BED20, &unk_1CFA00700);
  v54 = v311;
  if (([v311 isNullAtIndex_] & 1) == 0)
  {
    v52 = [v54 BOOLAtIndex_];
  }

  v55 = [v54 isNullAtIndex_];
  v248 = v52;
  if (v55)
  {
    v56 = 2;
  }

  else
  {
    v56 = [v54 BOOLAtIndex_];
  }

  v243 = [v54 isNullAtIndex_];
  if (v243)
  {
    v57 = 0;
  }

  else
  {
    v57 = [v54 longAtIndex_];
  }

  v242 = [v54 isNullAtIndex_];
  if (v242)
  {
    v58 = 0;
  }

  else
  {
    v58 = [v54 longAtIndex_];
  }

  LODWORD(v251) = [v54 isNullAtIndex_];
  v244 = v58;
  if (v251)
  {
    v246 = 0;
  }

  else
  {
    if ([v54 isNullAtIndex_])
    {
      goto LABEL_210;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_211;
    }

    v246 = [v54 unsignedLongLongAtIndex_];
  }

  v59 = [v54 isNullAtIndex_];
  if (v59)
  {
    v60 = 0;
  }

  else
  {
    if ([v54 isNullAtIndex_])
    {
      goto LABEL_210;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_211;
    }

    v60 = [v54 unsignedIntAtIndex_];
  }

  if ([v54 isNullAtIndex_])
  {
    v224 = 0;
  }

  else
  {
    if ([v54 isNullAtIndex_])
    {
      goto LABEL_210;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_211;
    }

    v54 = v311;
    v224 = [v311 longLongAtIndex_];
  }

  v61 = [v54 isNullAtIndex_];
  v222 = v60;
  if (v61)
  {
    LODWORD(v241) = 2;
  }

  else
  {
    LODWORD(v241) = [v54 BOOLAtIndex_];
  }

  v62 = [v54 isNullAtIndex_];
  if (v62)
  {
    v216 = 0;
    v63 = 4;
  }

  else
  {
    v66 = [v54 longAtIndex_];
    if (v66 >= 5 || ((0x17u >> v66) & 1) == 0)
    {
      sub_1CF1DA5D8();
      swift_allocError();
      *v67 = 0;
      swift_willThrow();
      goto LABEL_187;
    }

    v216 = 2u >> v66;
    v63 = 0x300020100uLL >> (8 * v66);
  }

  v217 = v63;
  v64 = v311;
  if ([v311 isNullAtIndex_])
  {
    v215 = 0;
    v65 = 255;
    goto LABEL_46;
  }

  v68 = [v64 longAtIndex_];
  v69 = v249;
  sub_1CEFE9AC4(v68, v253);
  if (!v69)
  {
    v249 = 0;
    v215 = *&v253[0];
    v65 = BYTE8(v253[0]);
LABEL_46:
    v218 = v65;
    v70 = v311;
    v71 = [v311 isNullAtIndex_];
    v213 = v57;
    if (v71)
    {
      v206 = 0;
      v220 = 0;
    }

    else
    {
      v72 = [v70 stringAtIndex_];
      v206 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v220 = v73;
    }

    v214 = v56;
    if ([v70 isNullAtIndex_])
    {
      v74 = 2;
    }

    else
    {
      v74 = [v70 BOOLAtIndex_];
    }

    if ([v70 isNullAtIndex_])
    {
      v75 = 2;
    }

    else
    {
      v75 = [v70 BOOLAtIndex_];
    }

    v209 = [v70 isNullAtIndex_];
    if (v209)
    {
      v76 = 0;
    }

    else
    {
      v76 = [v70 longAtIndex_];
    }

    v77 = [v70 isNullAtIndex_];
    v211 = v75;
    v210 = v76;
    if (v77)
    {
      v78 = 0;
      v219 = 0xF000000000000000;
    }

    else
    {
      if ([v70 isNullAtIndex_])
      {
        goto LABEL_210;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_211;
      }

      v70 = v311;
      v79 = [v311 dataAtIndex_];
      v78 = sub_1CF9E5B88();
      v219 = v80;
    }

    v81 = [v70 isNullAtIndex_];
    v221 = v78;
    v212 = v74;
    if (v81)
    {
      v82 = 0;
      v240 = 0xF000000000000000;
      goto LABEL_68;
    }

    if ([v70 isNullAtIndex_])
    {
      goto LABEL_210;
    }

    if (!swift_dynamicCastMetatype())
    {
      v70 = v311;
      v83 = [v311 dataAtIndex_];
      v82 = sub_1CF9E5B88();
      v240 = v84;

LABEL_68:
      v85 = [v70 isNullAtIndex_];
      if (v85)
      {
        v208 = 0;
      }

      else
      {
        v208 = [v70 longAtIndex_];
      }

      v207 = [v70 isNullAtIndex_];
      if (v207)
      {
        v86 = 0;
      }

      else
      {
        v86 = [v70 longAtIndex_];
      }

      v87 = sub_1CEFE9C6C();
      v88 = v249;
      sub_1CEFE9EC8(v70, v87, 18, v278);
      v89 = v88;
      if (v88)
      {

        sub_1CEFE48D8(v82, v240);
        sub_1CEFE48D8(v221, v219);

        goto LABEL_187;
      }

      v204 = v85;
      v205 = v86;

      if ((v247 & 1) == 0)
      {
        sub_1CEFE528C(v253);
        v274 = v253[12];
        v275 = v253[13];
        v276 = v253[14];
        v277 = *&v253[15];
        v270 = v253[8];
        v271 = v253[9];
        v95 = v253[10];
        v96 = v253[11];
        goto LABEL_83;
      }

      v90 = *(sub_1CEFE9C6C() + 16);

      v91 = __OFADD__(v90, 18);
      v92 = v90 + 18;
      if (v91)
      {
        __break(1u);
      }

      else if (v92 >= 0xFFFFFFFF80000000)
      {
        if (!(v92 >> 31))
        {
          v93 = v311;
          if ([v311 isNullAtIndex_])
          {
            v94.n128_f64[0] = sub_1CEFE528C(&v262);
            v89 = 0;
            goto LABEL_84;
          }

          v115 = sub_1CEFF12E8();
          sub_1CEFF14E0(v93, v115, v92, v261);
          v89 = v88;

          v253[12] = *&v261[192];
          v253[13] = *&v261[208];
          v253[14] = *&v261[224];
          *&v253[15] = *&v261[240];
          v253[8] = *&v261[128];
          v253[9] = *&v261[144];
          v253[10] = *&v261[160];
          v253[11] = *&v261[176];
          v253[4] = *&v261[64];
          v253[5] = *&v261[80];
          v253[6] = *&v261[96];
          v253[7] = *&v261[112];
          v253[0] = *v261;
          v253[1] = *&v261[16];
          v253[2] = *&v261[32];
          v253[3] = *&v261[48];
          nullsub_1(v253);
          v274 = v253[12];
          v275 = v253[13];
          v276 = v253[14];
          v277 = *&v253[15];
          v270 = v253[8];
          v271 = v253[9];
          v95 = v253[10];
          v96 = v253[11];
LABEL_83:
          v272 = v95;
          v273 = v96;
          v266 = v253[4];
          v267 = v253[5];
          v268 = v253[6];
          v269 = v253[7];
          v262 = v253[0];
          v263 = v253[1];
          v94 = v253[2];
          v264 = v253[2];
          v265 = v253[3];
LABEL_84:
          v97 = v82;
          v311 = v82;
          if (((v251 | v59) & 1) != 0 || v241 == 2)
          {
            goto LABEL_125;
          }

          v98 = v248 == 2 ? 1 : v62;
          if (v98 & 1) != 0 || (v248)
          {
            goto LABEL_125;
          }

          v249 = v89;
          v99 = v239[7];
          v100 = v231;
          v101 = v235;
          v99(v231, 1, 1, v235, v94);
          v102 = v230;
          (v99)(v230, 1, 1, v101);
          (v99)(v236, 1, 1, v101);
          v103 = sub_1CF9E6218();
          v104 = sub_1CF9E61F8() | v103;
          v105 = sub_1CF9E6208();
          v199 = v104 | v105 | sub_1CF9E6248();
          v106 = v100;
          v107 = v229;
          sub_1CEFCCBDC(v106, v229, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          sub_1CEFCCBDC(v102, v233, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          sub_1CEFCCBDC(v236, v234, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v109 = v237;
          v108 = v238;
          v110 = &v238[v237[14]];
          *v110 = 0;
          v110[1] = 0;
          v203 = v110;
          v108[v109[17]] = 2;
          v247 = v109[23];
          v108[v247] = 6;
          v200 = v109[30];
          (v99)(&v108[v200], 1, 1, v101);
          v111 = v199;
          v202 = &v108[v109[34]];
          v201 = xmmword_1CF9F4E20;
          *v202 = xmmword_1CF9F4E20;
          v112 = &v108[v109[38]];
          v113 = v216 | v241;
          *v112 = 0;
          v112[1] = 0;
          if (fpfs_supports_vfs_ignore_permissions_iopolicy())
          {
            v114 = v111 & 0x1BF | 0x40;
            if ((v113 & 1) == 0)
            {
              v114 = v111 & 0x1FF;
            }
          }

          else
          {
            v116 = v111 & 0x1FF | (v111 >> 2) & 0x40 | 0x80;
            if ((v113 & 1) == 0)
            {
              LOWORD(v116) = v111 & 0x1FF;
            }

            v114 = (4 * v116) & 0x100 | v116;
          }

          v117 = v238;
          v118 = &v238[v109[37]];
          *v238 = v217;
          v117[v109[20]] = 0;
          v119 = v241;
          v117[v109[28]] = v241;
          v117[v109[29]] = v119;
          v120 = v224;
          *&v117[v109[26]] = v224;
          *&v117[v109[27]] = v120;
          *(v117 + 1) = 0;
          v117[8] = 1;
          *v118 = 0;
          v118[4] = 1;
          *(v117 + 5) = v114;
          v121 = v225;
          sub_1CEFCCBDC(v107, v225, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v122 = v239;
          v123 = v239[6];
          v124 = v235;
          v125 = v123(v121, 1, v235);
          v126 = v232;
          v127 = v226;
          v224 = v123;
          if (v125 == 1)
          {
            sub_1CF9E5C88();
            if (v123(v121, 1, v124) != 1)
            {
              sub_1CEFCCC44(v121, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            }
          }

          else
          {
            (v122[4])(v226, v121, v124);
          }

          v128 = v122[4];
          v128(&v238[v237[7]], v127, v124);
          v129 = v233;
          sub_1CEFCCBDC(v233, v126, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v130 = v224;
          v131 = (v224)(v126, 1, v124);
          v239 = v122 + 4;
          v241 = v128;
          if (v131 == 1)
          {
            v132 = v223;
            sub_1CF9E5C88();
            sub_1CEFCCC44(v129, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v229, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v236, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v230, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v231, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            v133 = v232;
            if (v130(v232, 1, v124) != 1)
            {
              sub_1CEFCCC44(v133, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            }
          }

          else
          {
            sub_1CEFCCC44(v129, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v229, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v236, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v230, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v231, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            v132 = v223;
            v128(v223, v232, v124);
          }

          v135 = v237;
          v134 = v238;
          v136 = v237[31];
          v137 = &v238[v237[32]];
          v236 = v237[33];
          v138 = &v238[v237[35]];
          v241(&v238[v237[8]], v132, v124);
          *(v134 + v135[9]) = 0;
          *(v134 + v135[10]) = 0;
          *(v134 + v135[13]) = 0;
          *(v134 + v135[19]) = 0;
          *(v134 + v135[21]) = 0;
          *(v134 + v135[15]) = 0;
          *(v134 + v135[16]) = 0;
          *(v134 + v135[11]) = 0;
          *(v134 + v135[12]) = 0;
          *(v134 + v135[18]) = 0;
          sub_1CEFDA9E0(v234, v134 + v200, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          *(v134 + v136) = 0;
          *v137 = 0;
          v139 = 1;
          v137[8] = 1;
          *(v134 + v236) = 0;
          v140 = v203;
          v141 = v203[1];

          *v140 = 0;
          v140[1] = 0;
          v142 = v202;
          sub_1CEFE48D8(*v202, *(v202 + 1));
          *v142 = v201;
          *v138 = 0;
          v138[8] = 1;
          *(v134 + v135[36]) = 0;
          *(v134 + v135[24]) = 0;
          *(v134 + v135[25]) = 0;
          *(v134 + v135[22]) = 0;
          *(v134 + v247) = 6;
          v143 = v228;
          sub_1CEFE4874(v134, v228);
          v144 = v227;
          sub_1CEFF4408(v143, v227);
          v145 = *v144;
          if (v145 == 1)
          {
            v146 = 0;
            v147 = 0;
            v97 = v311;
          }

          else
          {
            v147 = 0;
            v146 = 0;
            v97 = v311;
            if (v145 != 2 && !v144[v135[20]])
            {
              if (v144[v135[28]])
              {
                v146 = 0;
              }

              else
              {
                v139 = 0;
                v146 = *&v144[v135[26]];
              }

              v147 = v222;
            }
          }

          sub_1CEFD5218(v144, type metadata accessor for ItemMetadata);
          if (v278[13] && v278[5] == v246 && LODWORD(v278[6]) == v147)
          {
            if (v278[8])
            {
              if ((v139 & 1) == 0)
              {
                goto LABEL_113;
              }

LABEL_124:
              sub_1CEFD5218(v143, type metadata accessor for ItemMetadata);
              goto LABEL_125;
            }

            if (v278[7] == v146)
            {
              v148 = v139;
            }

            else
            {
              v148 = 1;
            }

            if ((v148 & 1) == 0)
            {
              goto LABEL_124;
            }
          }

LABEL_113:
          sub_1CEFD5218(v143, type metadata accessor for ItemMetadata);
          if ((v278[3] & 8) == 0)
          {
            v278[3] |= 8uLL;
          }

LABEL_125:
          v149 = v278[13];
          v150 = v278[10];
          v151 = v278[11];
          if (!v278[13])
          {
            v150 = 0;
            v151 = -1;
          }

          v152 = v240;
          if (v218 == 255)
          {
            v154 = v219;
            v153 = v220;
            if (v151 != -1)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v154 = v219;
            v153 = v220;
            if (v151 == -1)
            {
              goto LABEL_153;
            }

            if (v218)
            {
              if (v218 == 1)
              {
                if (v151 != 1 || v215 != v150)
                {
                  goto LABEL_153;
                }
              }

              else if (v215)
              {
                if (v151 != 2 || v150 != 1)
                {
                  goto LABEL_153;
                }
              }

              else if (v151 != 2 || v150)
              {
                goto LABEL_153;
              }
            }

            else if (v151 || v215 != v150)
            {
              goto LABEL_153;
            }
          }

          if (v278[13])
          {
            v155 = v278[12];

            if (v153)
            {

              v156 = sub_1CEFE7394(v206, v153);
              if (v157)
              {
                if (v156 == 12565487 && v157 == 0xA300000000000000)
                {

LABEL_192:
                  v184 = v206;
                  v185 = v220;
                  v186 = sub_1CF9E69E8();
                  v187 = sub_1CF025150(v186, v184, v185);
                  v206 = MEMORY[0x1D3868C10](v187);
                  v189 = v188;

                  goto LABEL_194;
                }

                v183 = sub_1CF9E8048();

                if (v183)
                {
                  goto LABEL_192;
                }
              }

              v189 = v220;

LABEL_194:
              v190 = sub_1CEFE7394(v155, v149);
              if (v191)
              {
                if (v190 == 12565487 && v191 == 0xA300000000000000)
                {

LABEL_199:
                  v193 = sub_1CF9E69E8();
                  v194 = sub_1CF025150(v193, v155, v149);
                  v155 = MEMORY[0x1D3868C10](v194);
                  v196 = v195;

LABEL_201:
                  v154 = v219;
                  if (v206 == v155 && v189 == v196)
                  {

                    swift_bridgeObjectRelease_n();
                    swift_bridgeObjectRelease_n();
                    v152 = v240;
                    v97 = v311;
                    goto LABEL_156;
                  }

                  v197 = sub_1CF9E8048();

                  swift_bridgeObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  v152 = v240;
                  v97 = v311;
                  if (v197)
                  {
LABEL_156:
                    v158 = v278[37];
                    if (v278[37] == 1)
                    {
                      if (v154 >> 60 != 15)
                      {
                        v159 = 0;
                        v160 = 0xF000000000000000;
LABEL_163:
                        v162 = v221;
                        sub_1CEFF05F4(v221, v154);
                        sub_1CEFF05F4(v162, v154);
                        sub_1CEFE4714(v162, v154);
LABEL_165:
                        sub_1CEFE48D8(v162, v154);
                        sub_1CEFE48D8(v159, v160);
                        v152 = v240;
LABEL_166:
                        if ((v278[33] & 8) == 0)
                        {
                          v278[33] |= 8uLL;
                        }

LABEL_168:
                        if (v158 == 1)
                        {
                          v163 = v245;
                          if (v152 >> 60 != 15)
                          {
                            v164 = 0;
                            v165 = 0xF000000000000000;
LABEL_176:
                            sub_1CEFF05F4(v97, v152);
                            sub_1CEFF05F4(v97, v152);
                            sub_1CEFE4714(v97, v152);
LABEL_178:
                            sub_1CEFE48D8(v97, v152);
                            sub_1CEFE48D8(v164, v165);
                            v168 = v204;
LABEL_179:
                            if ((~LOBYTE(v278[33]) & 3) != 0)
                            {
                              v278[33] |= 3uLL;
                            }

LABEL_181:
                            memcpy(v260, v278, sizeof(v260));
                            v169 = v260[31];
                            memcpy(v261, v278, sizeof(v261));
                            nullsub_1(v261);
                            memcpy(v279, v261, 0x208uLL);
                            v259 = v251;
                            v258 = v243;
                            v257 = v242;
                            v256 = v168;
                            v255 = v207;
                            v254 = v209;
                            *(&v253[12] + 5) = v274;
                            *(&v253[13] + 5) = v275;
                            *(&v253[14] + 5) = v276;
                            *(&v253[15] + 5) = v277;
                            *(&v253[8] + 5) = v270;
                            *(&v253[9] + 5) = v271;
                            *(&v253[10] + 5) = v272;
                            *(&v253[11] + 5) = v273;
                            *(&v253[4] + 5) = v266;
                            *(&v253[5] + 5) = v267;
                            *(&v253[6] + 5) = v268;
                            *(&v253[7] + 5) = v269;
                            *(v253 + 5) = v262;
                            *(&v253[1] + 5) = v263;
                            *(&v253[2] + 5) = v264;
                            *(&v253[3] + 5) = v265;
                            v279[520] = v248;
                            v279[521] = v214;
                            v280 = v246;
                            v281 = v251;
                            v282 = v215;
                            v283 = v218;
                            v284 = v213;
                            v285 = v243;
                            v286 = v244;
                            v287 = v242;
                            v288 = v208;
                            v289 = v168;
                            v290 = v205;
                            v291 = v207;
                            v292 = v210;
                            v293 = v209;
                            v294 = v212;
                            v295 = v211;
                            v308 = v253[12];
                            v309 = v253[13];
                            v310[0] = v253[14];
                            *(v310 + 13) = *(&v253[14] + 13);
                            v304 = v253[8];
                            v305 = v253[9];
                            v306 = v253[10];
                            v307 = v253[11];
                            v300 = v253[4];
                            v301 = v253[5];
                            v302 = v253[6];
                            v303 = v253[7];
                            v296 = v253[0];
                            v297 = v253[1];
                            v298 = v253[2];
                            v299 = v253[3];
                            v170 = LOBYTE(v278[1]);
                            if (LOBYTE(v278[1]) == 255)
                            {
                              sub_1CEFCCBDC(v260, v253, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                              v179 = v169;
                              sub_1CEFCCBDC(&v262, v253, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                              v175 = v311;
                              if (v169)
                              {
                                goto LABEL_183;
                              }
                            }

                            else
                            {
                              v171 = v278[0];
                              sub_1CEFCCBDC(v260, v253, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                              v172 = v169;
                              sub_1CEFCCBDC(&v262, v253, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                              sub_1CEFF4514(v279, v253);
                              v173 = *v163;
                              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                              *&v253[0] = *v163;
                              *v163 = 0x8000000000000000;
                              sub_1CEFF45EC(v279, v171, v170, isUniquelyReferenced_nonNull_native);
                              *v163 = *&v253[0];
                              v175 = v311;
                              if (v169)
                              {
LABEL_183:
                                v176 = v169;
                                sub_1CEFF4514(v279, v253);
                                v177 = *v163;
                                v178 = swift_isUniquelyReferenced_nonNull_native();
                                *&v253[0] = *v163;
                                *v163 = 0x8000000000000000;
                                sub_1CEFF45EC(v279, v169, 256, v178);

                                *v163 = *&v253[0];
                                sub_1CEFCCC44(&v262, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                                sub_1CEFF5410(v279);

LABEL_186:
                                sub_1CEFE48D8(v175, v240);
                                sub_1CEFE48D8(v221, v154);
                                memcpy(v253, v278, 0x208uLL);
                                sub_1CEFCCC44(v253, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                                goto LABEL_187;
                              }
                            }

                            sub_1CEFCCC44(&v262, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                            sub_1CEFF5410(v279);
                            goto LABEL_186;
                          }

                          goto LABEL_174;
                        }

LABEL_172:
                        v164 = v278[38];
                        v165 = v278[39];
                        sub_1CEFE42D4(v278[38], v278[39]);
                        if (v152 >> 60 != 15)
                        {
                          v163 = v245;
                          if (v165 >> 60 != 15)
                          {
                            sub_1CEFF05F4(v97, v152);
                            sub_1CEFF05F4(v164, v165);
                            sub_1CEFF05F4(v97, v152);
                            LODWORD(v249) = sub_1CF328660(v97, v152, v164, v165);
                            sub_1CEFE48D8(v164, v165);
                            sub_1CEFE48D8(v164, v165);
                            sub_1CEFE4714(v97, v152);
                            v182 = v97;
                            v168 = v204;
                            sub_1CEFE48D8(v182, v152);
                            if (v249)
                            {
                              goto LABEL_181;
                            }

                            goto LABEL_179;
                          }

                          goto LABEL_176;
                        }

                        v163 = v245;
                        if (v165 >> 60 != 15)
                        {
                          sub_1CEFF05F4(v97, v152);
                          goto LABEL_178;
                        }

LABEL_174:
                        sub_1CEFF05F4(v97, v152);
                        sub_1CEFE48D8(v97, v152);
                        v168 = v204;
                        goto LABEL_181;
                      }
                    }

                    else
                    {
                      v159 = v278[35];
                      v160 = v278[36];
                      sub_1CEFE42D4(v278[35], v278[36]);
                      if (v154 >> 60 != 15)
                      {
                        if (v160 >> 60 != 15)
                        {
                          v166 = v221;
                          sub_1CEFF05F4(v221, v154);
                          sub_1CEFF05F4(v159, v160);
                          sub_1CEFF05F4(v166, v154);
                          LODWORD(v249) = sub_1CF328660(v166, v154, v159, v160);
                          sub_1CEFE48D8(v159, v160);
                          sub_1CEFE48D8(v159, v160);
                          sub_1CEFE4714(v166, v154);
                          v167 = v166;
                          v152 = v240;
                          sub_1CEFE48D8(v167, v154);
                          if (v249)
                          {
                            goto LABEL_172;
                          }

                          goto LABEL_166;
                        }

                        goto LABEL_163;
                      }

                      if (v160 >> 60 != 15)
                      {
                        v162 = v221;
                        sub_1CEFF05F4(v221, v154);
                        goto LABEL_165;
                      }
                    }

                    v161 = v221;
                    sub_1CEFF05F4(v221, v154);
                    sub_1CEFE48D8(v161, v154);
                    goto LABEL_168;
                  }

LABEL_154:
                  if ((~LOBYTE(v278[3]) & 3) != 0)
                  {
                    v278[3] |= 3uLL;
                  }

                  goto LABEL_156;
                }

                v192 = sub_1CF9E8048();

                if (v192)
                {
                  goto LABEL_199;
                }
              }

              v196 = v149;
              goto LABEL_201;
            }
          }

          else if (!v153)
          {

            goto LABEL_156;
          }

LABEL_153:

          goto LABEL_154;
        }

        goto LABEL_209;
      }

      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
    }

LABEL_211:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

LABEL_187:
  sub_1CF9E7458();
  v180 = v252;
  sub_1CF9E6038();
  return sub_1CEFD5218(v180, type metadata accessor for Signpost);
}

uint64_t sub_1CF23A2B4(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v7;
  Strong = sub_1CF24CDE0(a1);
  if (a2)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = *(v10 + 600);
      v17 = *(v10 + 616);
      type metadata accessor for SQLDatabase();
      if (swift_dynamicCastClass())
      {
        v12 = sub_1CF3B0DB4();
        v14 = v13;

        if ((v14 & 0x100) == 0)
        {
          if (v14)
          {
            v12 = qword_1CF9FF898[v12];
          }

          Strong = swift_allocObject();
          *(Strong + 16) = v12;
        }
      }

      else
      {
      }
    }
  }

  MEMORY[0x1EEE9AC00](Strong);
  (*(a7 + 32))(sub_1CF24CF18);
}

uint64_t sub_1CF23A488(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA37470);
  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);

  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA37490);
  return 0;
}

uint64_t sub_1CF23A570(void *a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA374C0);
  v9 = [a1 bindLongParameter_];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xEF203D20646E696BLL);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v14 = a3(a1);
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](538976266, 0xE400000000000000);
  v16 = *a5;
  v15 = *(a5 + 8);

  v17 = v16(a1);
  v19 = v18;

  MEMORY[0x1D3868CC0](v17, v19);

  return 0;
}

uint64_t sub_1CF23A734(uint64_t a1)
{
  strcpy(v7, "    fs_id = ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  swift_getAssociatedTypeWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  v3 = *(v2 + 32);
  v4 = swift_checkMetadataState();
  v5 = v3(a1, v4, v2);
  MEMORY[0x1D3868CC0](v5);

  return v7[0];
}

void sub_1CF23A828(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CF2401BC(0, a1, sub_1CF7D52B8, &qword_1EC4BEA50, &qword_1CF9FF068);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_1CF23FAA0(1, a1);
    v8 = sub_1CF23FCF8(2, a1, sub_1CF7D52B8);
    if ((v6 & 1) == 0)
    {
      if (!v7)
      {
LABEL_6:
        sub_1CF1DA5D8();
        swift_allocError();
        *v9 = 0;
        swift_willThrow();
        return;
      }

      if (v8 != 89)
      {
        *a2 = v7;
        *(a2 + 8) = 0;
        *(a2 + 10) = v8;
        return;
      }
    }

    goto LABEL_6;
  }
}

uint64_t sub_1CF23A928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CF2401BC(0, a1, sub_1CF7D52B8, &qword_1EC4BEA38, &qword_1CF9FF050);
  if (!v2)
  {
    v6 = result;
    sub_1CF23FF54(1, a1, &v9);
    result = sub_1CF23FCF8(2, a1, sub_1CF7D52B8);
    if ((v6 & 1) != 0 || (v7 = v10, v10 == 255) || result == 89)
    {
      sub_1CF1DA5D8();
      swift_allocError();
      *v8 = 0;
      return swift_willThrow();
    }

    else
    {
      *a2 = v9;
      *(a2 + 8) = v7;
      *(a2 + 9) = 0;
      *(a2 + 10) = result;
    }
  }

  return result;
}

uint64_t sub_1CF23AA30(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v12;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v14, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v10 = 0xD000000000000011;
        }

        else
        {
          v10 = 0xD00000000000001ALL;
        }

        if (a1 == 6)
        {
          v11 = 0x80000001CFA2C070;
        }

        else
        {
          v11 = 0x80000001CFA2C090;
        }
      }

      else if (a1 == 4)
      {
        v11 = 0xEA0000000000726FLL;
        v10 = 0x7272655F7473616CLL;
      }

      else
      {
        v11 = 0xE800000000000000;
        v10 = 0x797469726F697270;
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v11 = 0xEF657461645F7972;
        v10 = 0x7465725F7478656ELL;
      }

      else
      {
        v10 = 0x7272655F7473616CLL;
        v11 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (a1)
      {
        v10 = 0x6F635F7972746572;
      }

      else
      {
        v10 = 0x6574617473;
      }

      if (a1)
      {
        v11 = 0xEB00000000746E75;
      }

      else
      {
        v11 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v10, v11);

    *(v8 + 32) = 0xD000000000000027;
    *(v8 + 40) = 0x80000001CFA35FC0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23AD58(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v12;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v14, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v10 = 0xD000000000000011;
        }

        else
        {
          v10 = 0xD00000000000001ALL;
        }

        if (a1 == 6)
        {
          v11 = 0x80000001CFA2C070;
        }

        else
        {
          v11 = 0x80000001CFA2C090;
        }
      }

      else
      {
        if (a1 == 4)
        {
          v10 = 0x7272655F7473616CLL;
        }

        else
        {
          v10 = 0x797469726F697270;
        }

        if (a1 == 4)
        {
          v11 = 0xEA0000000000726FLL;
        }

        else
        {
          v11 = 0xE800000000000000;
        }
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v11 = 0xEF657461645F7972;
        v10 = 0x7465725F7478656ELL;
      }

      else
      {
        v10 = 0x7272655F7473616CLL;
        v11 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (a1)
      {
        v10 = 0x6F635F7972746572;
      }

      else
      {
        v10 = 0x6574617473;
      }

      if (a1)
      {
        v11 = 0xEB00000000746E75;
      }

      else
      {
        v11 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v10, v11);

    *(v8 + 32) = 0xD000000000000033;
    *(v8 + 40) = 0x80000001CFA385B0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23B07C(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v12;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v14, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v10 = 0xD000000000000011;
        }

        else
        {
          v10 = 0xD00000000000001ALL;
        }

        if (a1 == 6)
        {
          v11 = 0x80000001CFA2C070;
        }

        else
        {
          v11 = 0x80000001CFA2C090;
        }
      }

      else if (a1 == 4)
      {
        v11 = 0xEA0000000000726FLL;
        v10 = 0x7272655F7473616CLL;
      }

      else
      {
        v11 = 0xE800000000000000;
        v10 = 0x797469726F697270;
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v11 = 0xEF657461645F7972;
        v10 = 0x7465725F7478656ELL;
      }

      else
      {
        v10 = 0x7272655F7473616CLL;
        v11 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (a1)
      {
        v10 = 0x6F635F7972746572;
      }

      else
      {
        v10 = 0x6574617473;
      }

      if (a1)
      {
        v11 = 0xEB00000000746E75;
      }

      else
      {
        v11 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v10, v11);

    *(v8 + 32) = 0xD000000000000026;
    *(v8 + 40) = 0x80000001CFA35FF0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23B3A4(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v12;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v14, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v10 = 0xD000000000000011;
        }

        else
        {
          v10 = 0xD00000000000001ALL;
        }

        if (a1 == 6)
        {
          v11 = 0x80000001CFA2C070;
        }

        else
        {
          v11 = 0x80000001CFA2C090;
        }
      }

      else
      {
        if (a1 == 4)
        {
          v10 = 0x7272655F7473616CLL;
        }

        else
        {
          v10 = 0x797469726F697270;
        }

        if (a1 == 4)
        {
          v11 = 0xEA0000000000726FLL;
        }

        else
        {
          v11 = 0xE800000000000000;
        }
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v11 = 0xEF657461645F7972;
        v10 = 0x7465725F7478656ELL;
      }

      else
      {
        v10 = 0x7272655F7473616CLL;
        v11 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (a1)
      {
        v10 = 0x6F635F7972746572;
      }

      else
      {
        v10 = 0x6574617473;
      }

      if (a1)
      {
        v11 = 0xEB00000000746E75;
      }

      else
      {
        v11 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v10, v11);

    *(v8 + 32) = 0xD000000000000024;
    *(v8 + 40) = 0x80000001CFA360D0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23B6BC(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v18);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  sub_1CEFCCBDC(v18, v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v16;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v18, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v18, v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v14 = 0xD000000000000011;
        }

        else
        {
          v14 = 0xD00000000000001ALL;
        }

        if (a1 == 6)
        {
          v15 = 0x80000001CFA2C070;
        }

        else
        {
          v15 = 0x80000001CFA2C090;
        }
      }

      else
      {
        if (a1 == 4)
        {
          v14 = 0x7272655F7473616CLL;
        }

        else
        {
          v14 = 0x797469726F697270;
        }

        if (a1 == 4)
        {
          v15 = 0xEA0000000000726FLL;
        }

        else
        {
          v15 = 0xE800000000000000;
        }
      }
    }

    else
    {
      v10 = 0x6574617473;
      v11 = 0xEF657461645F7972;
      v12 = 0x7465725F7478656ELL;
      if (a1 != 2)
      {
        v12 = 0x7272655F7473616CLL;
        v11 = 0xEF657461645F726FLL;
      }

      v13 = 0xEB00000000746E75;
      if (a1)
      {
        v10 = 0x6F635F7972746572;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      if (a1 <= 1u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }
    }

    MEMORY[0x1D3868CC0](v14, v15);

    *(v8 + 32) = 0xD00000000000001ALL;
    *(v8 + 40) = 0x80000001CFA360B0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23B9D0(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v12;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v14, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v10 = 0xD000000000000011;
        }

        else
        {
          v10 = 0xD00000000000001ALL;
        }

        if (a1 == 6)
        {
          v11 = 0x80000001CFA2C070;
        }

        else
        {
          v11 = 0x80000001CFA2C090;
        }
      }

      else
      {
        if (a1 == 4)
        {
          v10 = 0x7272655F7473616CLL;
        }

        else
        {
          v10 = 0x797469726F697270;
        }

        if (a1 == 4)
        {
          v11 = 0xEA0000000000726FLL;
        }

        else
        {
          v11 = 0xE800000000000000;
        }
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v11 = 0xEF657461645F7972;
        v10 = 0x7465725F7478656ELL;
      }

      else
      {
        v10 = 0x7272655F7473616CLL;
        v11 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (a1)
      {
        v10 = 0x6F635F7972746572;
      }

      else
      {
        v10 = 0x6574617473;
      }

      if (a1)
      {
        v11 = 0xEB00000000746E75;
      }

      else
      {
        v11 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v10, v11);

    *(v8 + 32) = 0xD00000000000002CLL;
    *(v8 + 40) = 0x80000001CFA36100;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23BCE8(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v12;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v14, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v10 = 0xD000000000000011;
        }

        else
        {
          v10 = 0xD00000000000001ALL;
        }

        if (a1 == 6)
        {
          v11 = 0x80000001CFA2C070;
        }

        else
        {
          v11 = 0x80000001CFA2C090;
        }
      }

      else
      {
        if (a1 == 4)
        {
          v10 = 0x7272655F7473616CLL;
        }

        else
        {
          v10 = 0x797469726F697270;
        }

        if (a1 == 4)
        {
          v11 = 0xEA0000000000726FLL;
        }

        else
        {
          v11 = 0xE800000000000000;
        }
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v11 = 0xEF657461645F7972;
        v10 = 0x7465725F7478656ELL;
      }

      else
      {
        v10 = 0x7272655F7473616CLL;
        v11 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (a1)
      {
        v10 = 0x6F635F7972746572;
      }

      else
      {
        v10 = 0x6574617473;
      }

      if (a1)
      {
        v11 = 0xEB00000000746E75;
      }

      else
      {
        v11 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v10, v11);

    *(v8 + 32) = 0xD000000000000029;
    *(v8 + 40) = 0x80000001CFA385F0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23C000(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B0, &qword_1CF9FDDB8);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF1CA5F0(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD00000000000003DLL;
    *(v8 + 40) = 0x80000001CFA377B0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23C214(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF1CA5F0(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000025;
    *(v8 + 40) = 0x80000001CFA377F0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23C420(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE498, &qword_1CF9FDDB0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF1CA5F0(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000039;
    *(v8 + 40) = 0x80000001CFA37820;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23C62C(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE490, &unk_1CF9FF020);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF1CA5F0(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000027;
    *(v8 + 40) = 0x80000001CFA37860;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23C840(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE488, &qword_1CF9FDDA8);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF1CA5F0(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000025;
    *(v8 + 40) = 0x80000001CFA37890;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23CA4C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA20, &qword_1CF9FF030);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  if (*(a2 + 16) && (v10 = sub_1CF7BF3BC(a1), (v11 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v10, v22);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  sub_1CEFCCBDC(v22, v21, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v22, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
    return sub_1CEFE55D0(v9, a3, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_1CEFCCC44(v9, &qword_1EC4BEA20, &qword_1CF9FF030);
    sub_1CF24CD3C();
    swift_allocError();
    v15 = v14;
    sub_1CEFCCBDC(v22, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1CF9E7948();

    v19 = 0xD000000000000025;
    v20 = 0x80000001CFA378C0;
    sub_1CEFCCBDC(v22, v21, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v16);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v17 = sub_1CF1CA5F0(a1);
    MEMORY[0x1D3868CC0](v17);

    v18 = v20;
    *(v15 + 32) = v19;
    *(v15 + 40) = v18;
    *(v15 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v22, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23CD44(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF1CA5F0(a1);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD00000000000001DLL;
    *(v8 + 40) = 0x80000001CFA378F0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23CF40@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a2 + 16) && (v6 = sub_1CF7BF3BC(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v15);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  sub_1CEFCCBDC(v15, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v13;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v15, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v15, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v11 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v11);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v12 = sub_1CF1CA5F0(a1);
    MEMORY[0x1D3868CC0](v12);

    *(v10 + 32) = 0xD000000000000023;
    *(v10 + 40) = 0x80000001CFA37910;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23D13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v16, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = a4(a1);
    MEMORY[0x1D3868CC0](v13);

    *(v11 + 32) = 0xD00000000000001DLL;
    *(v11 + 40) = 0x80000001CFA361C0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

unint64_t sub_1CF23D344(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE480, &qword_1CF9FEF30);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14 | ((v15 & 1) << 32);
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v17, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = a4(a1);
    MEMORY[0x1D3868CC0](v13);

    *(v11 + 32) = 0xD000000000000027;
    *(v11 + 40) = 0x80000001CFA361E0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23D568(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9A0, &qword_1CF9FEF38);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF357F60(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000025;
    *(v8 + 40) = 0x80000001CFA36210;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23D77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v18);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  sub_1CEFCCBDC(v18, v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A0, &unk_1CFA03A10);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a5 = v16;
  }

  else
  {
    sub_1CEFF0584(0, 0xB000000000000000);
    sub_1CF24CD3C();
    swift_allocError();
    v13 = v12;
    sub_1CEFCCBDC(v18, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v18, v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v14 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v14);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v15 = a4(a1);
    MEMORY[0x1D3868CC0](v15);

    *(v13 + 32) = 0xD000000000000025;
    *(v13 + 40) = 0x80000001CFA36270;
    *(v13 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23D9AC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v6 = sub_1CF7BF3BC(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v15);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  sub_1CEFCCBDC(v15, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v13;
  }

  else
  {
    sub_1CEFE48D8(0, 0xF000000000000000);
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v15, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v15, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v11 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v11);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v12 = sub_1CF1CA5F0(a1);
    MEMORY[0x1D3868CC0](v12);

    *(v10 + 32) = 0xD000000000000028;
    *(v10 + 40) = 0x80000001CFA38580;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23DBC0(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF0448F0(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v12;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v14, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    v10 = 0xE500000000000000;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v11 = 0xD000000000000012;
      }

      if (a1 == 1)
      {
        v10 = 0x80000001CFA2C3F0;
      }

      else
      {
        v10 = 0x80000001CFA2C410;
      }
    }

    else
    {
      v11 = 0x6574617473;
    }

    MEMORY[0x1D3868CC0](v11, v10);

    *(v8 + 32) = 0xD000000000000027;
    *(v8 + 40) = 0x80000001CFA362C0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23DE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A0, &qword_1CF9FD3F0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v16, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = a4(a1);
    MEMORY[0x1D3868CC0](v13);

    *(v11 + 32) = 0xD00000000000002DLL;
    *(v11 + 40) = 0x80000001CFA362F0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23E024(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v16, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = a4(a1);
    MEMORY[0x1D3868CC0](v13);

    *(v11 + 32) = 0xD000000000000027;
    *(v11 + 40) = 0x80000001CFA362C0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23E22C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BFB60(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2B0, &unk_1CF9FD410);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF1D841C(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000024;
    *(v8 + 40) = 0x80000001CFA37580;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23E440(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BFB60(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF1D841C(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD000000000000020;
    *(v8 + 40) = 0x80000001CFA375B0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23E63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CF7BFB60(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v25);
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  sub_1CEFCCBDC(v25, v24, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v25, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = v21;
    *a3 = v20;
    a3[1] = v9;
    v10 = v23;
    a3[2] = v22;
    a3[3] = v10;
  }

  else
  {
    v20 = 0uLL;
    *&v21 = 0;
    *(&v21 + 1) = 0xB000000000000000;
    v22 = 0u;
    v23 = 0u;
    v19[0] = 0uLL;
    v19[1] = v21;
    memset(&v19[2], 0, 32);
    sub_1CEFCCC44(v19, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CF24CD3C();
    swift_allocError();
    v12 = v11;
    sub_1CEFCCBDC(v25, v11, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1CF9E7948();

    v17 = 0xD000000000000026;
    v18 = 0x80000001CFA37640;
    sub_1CEFCCBDC(v25, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v13 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v13);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v14 = sub_1CF1D841C(v3);
    MEMORY[0x1D3868CC0](v14);

    v15 = v18;
    *(v12 + 32) = v17;
    *(v12 + 40) = v15;
    *(v12 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v25, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23E884(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v16, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = a4(a1);
    MEMORY[0x1D3868CC0](v13);

    *(v11 + 32) = 0xD000000000000033;
    *(v11 + 40) = 0x80000001CFA37600;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23EA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CF7BFB60(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v23);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  sub_1CEFCCBDC(v23, &v21, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA10, &qword_1CF9FEFF8);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v23, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = *&v19[16];
    v10 = v20;
    v11 = *v19;
    *a3 = v18;
    *(a3 + 16) = v11;
    *(a3 + 32) = v9;
    *(a3 + 40) = v10;
  }

  else
  {
    *v19 = 0;
    *&v19[8] = xmmword_1CF9FD920;
    v20 = 0;
    sub_1CF24D114(0, 0, 0, 1);
    sub_1CF24CD3C();
    swift_allocError();
    v13 = v12;
    sub_1CEFCCBDC(v23, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    v21 = 0xD000000000000012;
    v22 = 0x80000001CFA362A0;
    v14 = sub_1CF9E82E8();
    MEMORY[0x1D3868CC0](v14);

    MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
    sub_1CEFCCBDC(v23, &v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v15);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v16 = sub_1CF1D841C(v3);
    MEMORY[0x1D3868CC0](v16);

    v17 = v22;
    *(v13 + 32) = v21;
    *(v13 + 40) = v17;
    *(v13 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v23, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23ED24(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BFB60(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v11;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v13, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v13, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = sub_1CF1D841C(v2);
    MEMORY[0x1D3868CC0](v10);

    *(v8 + 32) = 0xD00000000000001BLL;
    *(v8 + 40) = 0x80000001CFA375E0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23EF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  sub_1CEFCCBDC(v19, v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a5 = v16;
    *(a5 + 8) = v17;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v13 = v12;
    sub_1CEFCCBDC(v19, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v19, v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v14 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v14);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v15 = a4(a1);
    MEMORY[0x1D3868CC0](v15);

    *(v13 + 32) = 0xD000000000000020;
    *(v13 + 40) = 0x80000001CFA36540;
    *(v13 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23F130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CF7BFB60(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F0, &unk_1CF9FEFC0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v14;
    a3[1] = v15;
  }

  else
  {
    sub_1CF24D104(1, 0, 0, 0);
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v17, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1CF9E7948();

    v11 = sub_1CF9E82E8();
    MEMORY[0x1D3868CC0](v11);

    MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
    sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v13 = sub_1CF1D841C(v3);
    MEMORY[0x1D3868CC0](v13);

    *(v10 + 32) = 0xD000000000000012;
    *(v10 + 40) = 0x80000001CFA362A0;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23F398(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BFABC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14 & 1;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v16, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = a1 >> 2;
    if (v10 == 63)
    {
      v11 = 0xE400000000000000;
      v12 = 1701079411;
    }

    else if (v10 == 55)
    {
      v11 = 0xE400000000000000;
      v12 = 1701869940;
    }

    else
    {
      v12 = sub_1CF1D841C(a1);
      v11 = v13;
    }

    MEMORY[0x1D3868CC0](v12, v11);

    *(v8 + 32) = 0xD000000000000023;
    *(v8 + 40) = 0x80000001CFA37670;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23F5D8(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BFABC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v14;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v16, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v16, v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v10 = a1 >> 2;
    if (v10 == 63)
    {
      v11 = 0xE400000000000000;
      v12 = 1701079411;
    }

    else if (v10 == 55)
    {
      v11 = 0xE400000000000000;
      v12 = 1701869940;
    }

    else
    {
      v12 = sub_1CF1D841C(a1);
      v11 = v13;
    }

    MEMORY[0x1D3868CC0](v12, v11);

    *(v8 + 32) = 0xD00000000000001ELL;
    *(v8 + 40) = 0x80000001CFA376A0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23F814(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7BFABC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A8, &qword_1CF9FD3F8);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v15;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v17, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1CF9E7948();

    v9 = sub_1CF9E82E8();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
    sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v10 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v10);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v11 = a1 >> 2;
    if (v11 == 63)
    {
      v12 = 0xE400000000000000;
      v13 = 1701079411;
    }

    else if (v11 == 55)
    {
      v12 = 0xE400000000000000;
      v13 = 1701869940;
    }

    else
    {
      v13 = sub_1CF1D841C(a1);
      v12 = v14;
    }

    MEMORY[0x1D3868CC0](v13, v12);

    *(v8 + 32) = 0xD000000000000012;
    *(v8 + 40) = 0x80000001CFA362A0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23FAA0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7D52B8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9B8, &qword_1CF9FEF70);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v12;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v14, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v14, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v2)
    {
      if (v2 == 1)
      {
        v10 = 0x64695F6D657469;
      }

      else
      {
        v10 = 0x657079745F626F6ALL;
      }

      if (v2 == 1)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      v10 = 1684957547;
    }

    MEMORY[0x1D3868CC0](v10, v11);

    *(v8 + 32) = 0xD00000000000003DLL;
    *(v8 + 40) = 0x80000001CFA36420;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23FCF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a1;
  if (*(a2 + 16) && (v5 = a3(a1), (v6 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v5, v15);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  sub_1CEFCCBDC(v15, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF730, &qword_1CF9FF048);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v13;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v9 = v8;
    sub_1CEFCCBDC(v15, v8, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v15, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v10 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v10);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v3)
    {
      if (v3 == 1)
      {
        v11 = 0x64695F6D657469;
      }

      else
      {
        v11 = 0x657079745F626F6ALL;
      }

      if (v3 == 1)
      {
        v12 = 0xE700000000000000;
      }

      else
      {
        v12 = 0xE800000000000000;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      v11 = 1684957547;
    }

    MEMORY[0x1D3868CC0](v11, v12);

    *(v9 + 32) = 0xD000000000000028;
    *(v9 + 40) = 0x80000001CFA38620;
    *(v9 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23FF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CF7D52B8(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9C8, &unk_1CFA12A40);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v14;
    *(a3 + 8) = v15;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v17, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v17, v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v11 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v11);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v3)
    {
      if (v3 == 1)
      {
        v12 = 0x64695F6D657469;
      }

      else
      {
        v12 = 0x657079745F626F6ALL;
      }

      if (v3 == 1)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0xE800000000000000;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      v12 = 1684957547;
    }

    MEMORY[0x1D3868CC0](v12, v13);

    *(v10 + 32) = 0xD00000000000002ALL;
    *(v10 + 40) = 0x80000001CFA36510;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF2401BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t *a4, uint64_t *a5)
{
  v7 = a1;
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  sub_1CEFCCBDC(v19, v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v17 & 1;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v13 = v12;
    sub_1CEFCCBDC(v19, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1CF9E7948();

    sub_1CEFCCBDC(v19, v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v14 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v14);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v7)
    {
      if (v7 == 1)
      {
        v15 = 0x64695F6D657469;
      }

      else
      {
        v15 = 0x657079745F626F6ALL;
      }

      if (v7 == 1)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xE800000000000000;
      }
    }

    else
    {
      v16 = 0xE400000000000000;
      v15 = 1684957547;
    }

    MEMORY[0x1D3868CC0](v15, v16);

    *(v13 + 32) = 0xD000000000000025;
    *(v13 + 40) = 0x80000001CFA38650;
    *(v13 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF24041C@<X0>(id a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = [a1 columns];
  v7 = sub_1CF24EF90();
  v8 = MEMORY[0x1D38688F0](v6, &_s9SQLFieldsON_4, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = *(a2 + 16);
  if (!v9)
  {
LABEL_39:
    sub_1CF246D50(v8, v52);
    if (v46)
    {
    }

    v42 = v52[3];
    *(a4 + 32) = v52[2];
    *(a4 + 48) = v42;
    *(a4 + 64) = v53;
    v43 = v52[1];
    *a4 = v52[0];
    *(a4 + 16) = v43;
    return result;
  }

  v10 = 0;
  v11 = a2 + 32;
  while (1)
  {
    v12 = (a3 + v10);
    if (__OFADD__(a3, v10))
    {
      break;
    }

    v13 = *(v11 + v10);
    if (v13 <= 3)
    {
      if (*(v11 + v10) > 1u)
      {
        *(&v50 + 1) = &type metadata for NSecTimestamp;
        v22 = [a1 longAtIndex_];
      }

      else
      {
        if (!*(v11 + v10))
        {
          *(&v50 + 1) = &type metadata for JobThrottlingState;
          v14 = [a1 longAtIndex_];
          if (v14 >= 3)
          {
            goto LABEL_43;
          }

          LOBYTE(v49) = v14;
          goto LABEL_22;
        }

        v22 = [a1 longAtIndex_];
        *(&v50 + 1) = MEMORY[0x1E69E6530];
      }

      goto LABEL_21;
    }

    if (*(v11 + v10) > 5u)
    {
      if (v13 == 6)
      {
        *(&v50 + 1) = &type metadata for JobThrottlingDomainWideError;
        v23 = sub_1CF94C0BC([a1 longAtIndex_]);
        if (v23 == 13)
        {
LABEL_43:
          sub_1CF1DA5D8();
          swift_allocError();
          *v44 = 0;
          swift_willThrow();
          __swift_deallocate_boxed_opaque_existential_0(&v49);
        }

        LOBYTE(v49) = v23;
      }

      else
      {
        if ([a1 isNullAtIndex_])
        {
          goto LABEL_32;
        }

        v37 = [a1 stringAtIndex_];
        v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v40 = v39;

        *(&v50 + 1) = MEMORY[0x1E69E6158];
        *&v49 = v38;
        *(&v49 + 1) = v40;
      }
    }

    else
    {
      if (v13 != 4)
      {
        *(&v50 + 1) = &type metadata for JobSchedulingPriority;
        v22 = [a1 unsignedLongAtIndex_];
LABEL_21:
        *&v49 = v22;
        goto LABEL_22;
      }

      if ([a1 isNullAtIndex_])
      {
        goto LABEL_32;
      }

      v15 = [a1 dataAtIndex_];
      v16 = sub_1CF9E5B88();
      v18 = v17;

      sub_1CF4C2898(v16, v18);
      if (v46)
      {
        sub_1CEFE4714(v16, v18);
      }

      v20 = v19;
      sub_1CEFE4714(v16, v18);
      if (!v20)
      {
LABEL_32:
        v49 = 0u;
        v50 = 0u;
        sub_1CEFCCC44(&v49, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_33;
      }

      swift_getErrorValue();
      *(&v50 + 1) = v48;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v49);
      (*(*(v48 - 8) + 16))(boxed_opaque_existential_0);
    }

LABEL_22:
    sub_1CEFE9EB8(&v49, v51);
    sub_1CEFD1104(v51, &v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v8;
    v26 = sub_1CF7BF0F8(v13);
    v27 = v8[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_47;
    }

    v30 = v25;
    if (v8[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v8 = v54;
        if (v25)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_1CF7CF384();
        v8 = v54;
        if (v30)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      sub_1CF7C3430(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_1CF7BF0F8(v13);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_49;
      }

      v26 = v31;
      v8 = v54;
      if (v30)
      {
LABEL_30:
        v36 = (v8[7] + 32 * v26);
        __swift_destroy_boxed_opaque_existential_1(v36);
        sub_1CEFE9EB8(&v49, v36);
        __swift_destroy_boxed_opaque_existential_1(v51);
        goto LABEL_33;
      }
    }

    v8[(v26 >> 6) + 8] |= 1 << v26;
    *(v8[6] + v26) = v13;
    sub_1CEFE9EB8(&v49, (v8[7] + 32 * v26));
    __swift_destroy_boxed_opaque_existential_1(v51);
    v33 = v8[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_48;
    }

    v8[2] = v35;
LABEL_33:
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }

    if (v9 == ++v10)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF2408F8@<X0>(uint64_t a1@<X0>, id a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v8 = sub_1CF9E5248();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57[1] = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5268();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v58 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 columns];
  v16 = sub_1CF1CD084();
  v17 = MEMORY[0x1D38688F0](v15, &type metadata for SnapshotItemSQLFields, MEMORY[0x1E69E7CA0] + 8, v16);
  v18 = 0;
  v72 = *(a1 + 16);
  v63 = a2;
  v64 = a1 + 32;
  v62 = a3;
  while (1)
  {
    if (v72 == v18)
    {
      sub_1CF2018B8(v17, v61);
    }

    if (__OFADD__(a3, v18))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      sub_1CF9E8108();
      __break(1u);
LABEL_56:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
    }

    v20 = *(v64 + v18);
    if (v20 <= 0x1E)
    {
      switch(v20)
      {
        case 0x1Cu:
          v70 = &type metadata for VFSItemID;
          v40 = [a2 longAtIndex_];
          if (v40 != 0x8000000000000000)
          {
            if (v40)
            {
LABEL_26:
              if ((v40 & 0x8000000000000000) == 0)
              {
                LOBYTE(v41) = 1;
                goto LABEL_30;
              }

              v40 = -v40;
              v41 = HIDWORD(v40);
              if (!HIDWORD(v40))
              {
                goto LABEL_30;
              }

              sub_1CF9E51B8();
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF24D0AC();
              v55 = v58;
              v56 = v60;
              sub_1CF9E57D8();
              sub_1CF9E50D8();
              (*(v59 + 8))(v55, v56);
              swift_willThrow();
LABEL_48:
              __swift_deallocate_boxed_opaque_existential_0(&v69);
            }

LABEL_23:
            LOBYTE(v41) = 2;
LABEL_30:
            *&v69 = v40;
            BYTE8(v69) = v41;
            goto LABEL_34;
          }

          break;
        case 0x1Du:
          v70 = &type metadata for VFSItemID;
          v40 = [a2 longAtIndex_];
          if (v40 != 0x8000000000000000)
          {
            if (v40)
            {
              goto LABEL_26;
            }

            goto LABEL_23;
          }

          break;
        case 0x1Eu:
          v70 = &type metadata for Filename;
          v21 = [a2 stringAtIndex_];
          v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v24 = v23;

          *&v69 = v22;
          *(&v69 + 1) = v24;
          goto LABEL_34;
        default:
          goto LABEL_32;
      }

      LOBYTE(v41) = 2;
      v40 = 1;
      goto LABEL_30;
    }

    if (*(v64 + v18) <= 0x20u)
    {
      if (v20 == 31)
      {
        v39 = [a2 longLongAtIndex_];
        v70 = MEMORY[0x1E69E76D8];
        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        *&v69 = v39;
      }

      else
      {
        v25 = [a2 unsignedIntAtIndex_];
        v70 = MEMORY[0x1E69E7668];
        LODWORD(v69) = v25;
      }

      goto LABEL_34;
    }

    if (v20 == 33)
    {
      v70 = &type metadata for VFSVersion;
      v26 = swift_allocObject();
      v27 = a2;
      v28 = v26;
      *&v69 = v26;
      if ([v27 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_56;
      }

      v29 = sub_1CF9E5688();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      sub_1CF9E5678();
      v32 = [v63 dataAtIndex_];
      v33 = sub_1CF9E5B88();
      v35 = v34;

      sub_1CF1E10C4();
      sub_1CF9E5668();
      if (v4)
      {
        sub_1CEFE4714(v33, v35);

        goto LABEL_48;
      }

      sub_1CEFE4714(v33, v35);

      v36 = v66;
      v37 = v67;
      v38 = v68;
      *(v28 + 16) = v65;
      *(v28 + 24) = v36;
      *(v28 + 32) = v37;
      *(v28 + 40) = v38;
      a3 = v62;
      a2 = v63;
      goto LABEL_34;
    }

    if (v20 == 34)
    {
      break;
    }

LABEL_32:
    sub_1CF07F730(v20, a2, (a3 + v18), &v69);
    if (v4)
    {
    }

    if (!v70)
    {
      sub_1CEFCCC44(&v69, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      goto LABEL_3;
    }

LABEL_34:
    sub_1CEFE9EB8(&v69, v71);
    sub_1CEFD1104(v71, &v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v17;
    v43 = sub_1CF7BF3BC(v20);
    v45 = v17[2];
    v46 = (v44 & 1) == 0;
    v47 = __OFADD__(v45, v46);
    v48 = v45 + v46;
    if (v47)
    {
      goto LABEL_52;
    }

    v49 = v44;
    if (v17[3] < v48)
    {
      sub_1CF7C3EA4(v48, isUniquelyReferenced_nonNull_native);
      v43 = sub_1CF7BF3BC(v20);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_55;
      }

LABEL_39:
      v17 = v65;
      if (v49)
      {
        goto LABEL_2;
      }

      goto LABEL_40;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_39;
    }

    v53 = v43;
    sub_1CF7CF840();
    v43 = v53;
    v17 = v65;
    if (v49)
    {
LABEL_2:
      v19 = (v17[7] + 32 * v43);
      __swift_destroy_boxed_opaque_existential_1(v19);
      sub_1CEFE9EB8(&v69, v19);
      __swift_destroy_boxed_opaque_existential_1(v71);
      goto LABEL_3;
    }

LABEL_40:
    v17[(v43 >> 6) + 8] |= 1 << v43;
    *(v17[6] + v43) = v20;
    sub_1CEFE9EB8(&v69, (v17[7] + 32 * v43));
    __swift_destroy_boxed_opaque_existential_1(v71);
    v51 = v17[2];
    v47 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v47)
    {
      goto LABEL_53;
    }

    v17[2] = v52;
LABEL_3:
    if (++v18 == 0x80000000)
    {
      goto LABEL_51;
    }
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA18, &qword_1CF9FFB00);
  *&v69 = swift_allocObject();
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}