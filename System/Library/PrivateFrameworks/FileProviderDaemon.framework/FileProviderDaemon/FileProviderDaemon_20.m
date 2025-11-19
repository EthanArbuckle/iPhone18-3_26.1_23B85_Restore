unint64_t sub_1CF2551F4()
{
  result = qword_1EC4BEA78;
  if (!qword_1EC4BEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEA78);
  }

  return result;
}

unint64_t sub_1CF255248()
{
  result = qword_1EDEAB768[0];
  if (!qword_1EDEAB768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAB768);
  }

  return result;
}

uint64_t sub_1CF25529C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CF2552E4()
{
  result = qword_1EC4BEA88;
  if (!qword_1EC4BEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEA88);
  }

  return result;
}

uint64_t sub_1CF255338()
{
  v1 = v0;
  v2 = type metadata accessor for VFSItem(0);
  v3 = v0 + v2[8];
  v4 = *(v3 + 208);
  v64[12] = *(v3 + 192);
  v64[13] = v4;
  v64[14] = *(v3 + 224);
  v65 = *(v3 + 240);
  v5 = *(v3 + 144);
  v64[8] = *(v3 + 128);
  v64[9] = v5;
  v6 = *(v3 + 176);
  v64[10] = *(v3 + 160);
  v64[11] = v6;
  v7 = *(v3 + 80);
  v64[4] = *(v3 + 64);
  v64[5] = v7;
  v8 = *(v3 + 112);
  v64[6] = *(v3 + 96);
  v64[7] = v8;
  v9 = *(v3 + 48);
  v64[2] = *(v3 + 32);
  v64[3] = v9;
  v10 = *(v3 + 16);
  v64[0] = *v3;
  v64[1] = v10;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v64) == 1)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v13 = ItemNonSyncableAttributes.description.getter();
    MEMORY[0x1D3868CC0](v13);

    v12 = 0xE800000000000000;
    v11 = 0x3A72747461736E20;
  }

  v14 = sub_1CF252CF4();
  v47 = v11;
  v48 = v12;
  if (v15 >> 62)
  {
    if (v15 >> 62 != 1)
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      goto LABEL_10;
    }

    v16 = v14;
    sub_1CF07638C(v14, v15);
    v17 = 1886221352;
  }

  else
  {
    v16 = v14;
    sub_1CF07638C(v14, v15);
    v17 = 1852270888;
  }

  v49 = v17 & 0xFFFF0000FFFFFFFFLL | 0x3A00000000;
  v18 = fpfs_tempfile_pattern_t.description.getter(v16);
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v20 = 0xE500000000000000;
  v19 = v49;
LABEL_10:
  sub_1CF9E7948();

  v22 = *(v1 + 8);
  v52 = *v1;
  LOBYTE(v53) = v22;
  v24 = VFSItemID.description.getter(v21, v23);
  MEMORY[0x1D3868CC0](v24);

  v25 = MEMORY[0x1D3868CC0](3829792, 0xE300000000000000);
  v26 = *(v1 + 24);
  v52 = v1[2];
  LOBYTE(v53) = v26;
  v28 = VFSItemID.description.getter(v25, v27);
  MEMORY[0x1D3868CC0](v28);

  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v29 = v1[4];
  v30 = v1[5];
  v31 = sub_1CF9E6888();
  v32 = [v31 fp_obfuscatedFilename];

  v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v35 = v34;

  MEMORY[0x1D3868CC0](v33, v35);

  MEMORY[0x1D3868CC0](34, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v19, v20);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v36 = v1 + v2[7];
  v37 = sub_1CF0720C8();
  MEMORY[0x1D3868CC0](v37);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v38 = (v1 + v2[9]);
  v39 = *v38;
  LODWORD(v32) = *(v38 + 2);
  v40 = v38[2];
  LOBYTE(v35) = *(v38 + 24);
  v41 = v1[2];
  v42 = *(v1 + 24);
  v44 = v1[4];
  v43 = v1[5];

  v50 = sub_1CF680064();
  v51 = v45;
  v52 = v39;
  v53 = v32;
  v54 = v40;
  v55 = v35;
  v56 = 0;
  v57 = v41;
  v58 = v42;
  v59 = v44;
  v60 = v43;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  sub_1CEFCCC44(&v52, &unk_1EC4BE330, &unk_1CF9FF010);
  MEMORY[0x1D3868CC0](v47, v48);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  MEMORY[0x1D3868CC0](v50, v51);

  return 3828028;
}

uint64_t sub_1CF255768()
{
  sub_1CEFE4E68();
  result = sub_1CF9E7668();
  qword_1EDEBBE48 = result;
  qword_1EDEBBE50 = v1;
  return result;
}

uint64_t sub_1CF2557F8()
{
  sub_1CEFE4E68();
  result = sub_1CF9E7668();
  qword_1EDEBB698 = result;
  unk_1EDEBB6A0 = v1;
  return result;
}

uint64_t sub_1CF255890()
{
  sub_1CEFE4E68();
  result = sub_1CF9E7668();
  qword_1EC4EBC98 = result;
  unk_1EC4EBCA0 = v1;
  return result;
}

unint64_t sub_1CF25597C()
{
  result = qword_1EDEAB750;
  if (!qword_1EDEAB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB750);
  }

  return result;
}

unint64_t sub_1CF2559D0()
{
  result = qword_1EC4BEAB8;
  if (!qword_1EC4BEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEAB8);
  }

  return result;
}

uint64_t sub_1CF255A24(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF25529C(a2, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF255AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF255B30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C6966 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F436E6567 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

uint64_t sub_1CF255C44(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEAD0, &qword_1CF9FFB90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1CF255E20();
  sub_1CF9E8298();
  if (!v1)
  {
    v13 = 0;
    v8 = sub_1CF9E7DE8();
    v12 = 1;
    sub_1CF9E7DD8();
    v11 = 2;
    sub_1CF9E7D18();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1CF255E20()
{
  result = qword_1EC4BEAD8;
  if (!qword_1EC4BEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEAD8);
  }

  return result;
}

unint64_t sub_1CF255EA4()
{
  result = qword_1EC4BEAF0;
  if (!qword_1EC4BEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEAF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFSItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VFSItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CF25606C()
{
  result = qword_1EC4BEB00;
  if (!qword_1EC4BEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB00);
  }

  return result;
}

unint64_t sub_1CF2560C4()
{
  result = qword_1EC4BEB08;
  if (!qword_1EC4BEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB08);
  }

  return result;
}

unint64_t sub_1CF25611C()
{
  result = qword_1EC4BEB10;
  if (!qword_1EC4BEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB10);
  }

  return result;
}

unint64_t sub_1CF256174()
{
  result = qword_1EC4BEB18;
  if (!qword_1EC4BEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB18);
  }

  return result;
}

unint64_t sub_1CF2561CC()
{
  result = qword_1EC4BEB20;
  if (!qword_1EC4BEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB20);
  }

  return result;
}

unint64_t sub_1CF256224()
{
  result = qword_1EC4BEB28;
  if (!qword_1EC4BEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB28);
  }

  return result;
}

unint64_t sub_1CF25627C()
{
  result = qword_1EC4BEB30;
  if (!qword_1EC4BEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB30);
  }

  return result;
}

unint64_t sub_1CF2562D4()
{
  result = qword_1EC4BEB38;
  if (!qword_1EC4BEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB38);
  }

  return result;
}

unint64_t sub_1CF25632C()
{
  result = qword_1EC4BEB40;
  if (!qword_1EC4BEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB40);
  }

  return result;
}

uint64_t sub_1CF256380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E726574746170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F436E6567 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CFA3C820 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

uint64_t sub_1CF2564A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449746E65726170 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CFA3C8F0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x56746E65746E6F63 && a2 == 0xEE006E6F69737265 || (sub_1CF9E8048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFA3C910 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CFA3C930 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5255646568636163 && a2 == 0xE90000000000004CLL || (sub_1CF9E8048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4449636F64 && a2 == 0xE500000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

uint64_t sub_1CF25682C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  sub_1CF053478(a2, v16);
  v8 = v17;
  if (v17)
  {
    v9 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v5 == v10 && v7 == v12)
    {

      v14 = 1;
    }

    else
    {
      v14 = sub_1CF9E8048();
    }
  }

  else
  {
    sub_1CEFCCC44(v16, &unk_1EC4C1BE0, &unk_1CF9FD400);

    v14 = 0;
  }

  return v14 & 1;
}

void sub_1CF256970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 24))(sub_1CF256AB4, 0, a5, a6);
  if (!v6)
  {
    v9 = v8;
    MEMORY[0x1EEE9AC00](v8);
    sub_1CF257848(sub_1CF25A310);
    sub_1CEFD57E0(0, &unk_1EC4BEB58, 0x1E6967360);
    v10 = sub_1CF9E6D28();

    [a1 setItemsPendingReconciliation_];
  }
}

uint64_t sub_1CF256AB4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D7, 0x80000001CFA3CF70);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA3D050);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA3D090);
  return 0;
}

void sub_1CF256C14(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void (*a5)(id, _OWORD *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v106 = a7;
  v107 = a8;
  v109 = a5;
  v110 = a6;
  v104 = a4;
  v112 = a9;
  v13 = sub_1CF9E5248();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E5268();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(MEMORY[0x1E6967360]) init];
  v23 = sub_1CEFE9AC4([a1 longAtIndex_], v113);
  if (!v9)
  {
    v100 = v21;
    v101 = v16;
    v103 = a3;
    v102 = a2;
    v105 = v22;
    v27 = *&v113[0];
    v108 = BYTE8(v113[0]);
    v111 = 0;
    if (BYTE8(v113[0]) != 2 || *&v113[0])
    {
      v25 = v105;
      v29 = v18;
      if (v108 == 2 && *&v113[0] == 1)
      {
        v28 = *MEMORY[0x1E6967280];
      }

      else
      {
        *&v113[0] = 0x2F73662F70665F5FLL;
        *(&v113[0] + 1) = 0xE800000000000000;
        v115 = v27;
        v116 = v108;
        v30 = VFSItemID.description.getter(v23, v24);
        MEMORY[0x1D3868CC0](v30);

        v28 = sub_1CF9E6888();
      }
    }

    else
    {
      v28 = *MEMORY[0x1E6967258];
      v25 = v105;
      v29 = v18;
    }

    [v25 setItemIdentifier_];

    [v25 setItemPendingReconciliationIsLockedInDB_];
    v31 = [a1 isNullAtIndex_];
    if (v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = [a1 integerAtIndex_];
    }

    if ([a1 isNullAtIndex_])
    {
      goto LABEL_14;
    }

    v39 = [a1 dataAtIndex_];
    v40 = sub_1CF9E5B88();
    v42 = v41;

    v43 = v111;
    sub_1CF4C2898(v40, v42);
    if (v43)
    {

      sub_1CEFE4714(v40, v42);
      v38 = 0;
      v111 = 0;
      v25 = v105;
    }

    else
    {
      v45 = v44;
      v111 = 0;
      sub_1CEFE4714(v40, v42);
      v25 = v105;
      v38 = v45;
      if (!v45)
      {
LABEL_14:
        sub_1CF9E5198();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        v33 = v27;
        v34 = v32;
        v35 = v100;
        sub_1CF9E57D8();
        v36 = sub_1CF9E50D8();
        v37 = v35;
        v32 = v34;
        v27 = v33;
        v38 = v36;
        (*(v29 + 8))(v37, v17);
      }
    }

    if (!v31)
    {
      [v25 setItemPendingReconciliationJobSchedulingState_];
      v59 = sub_1CF043D7C(v32);
      if (v59 == 89)
      {
        v60 = -1;
      }

      else
      {
        v60 = qword_1CF9FFF10[v59];
      }

      v58 = v109;
      v26 = v112;
      [v25 setItemPendingReconciliationJobCode_];
      goto LABEL_55;
    }

    v46 = *(v102 + 24);
    *&v113[0] = v27;
    BYTE8(v113[0]) = v108;
    v47 = sub_1CF8DCAA0();
    v48 = *(v47 + 52);
    v49 = (*(v47 + 48) + 7) & 0x1FFFFFFF8;
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1CF9FA450;
    *(v50 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
    v52 = v106;
    v51 = v107;
    v53 = v111;
    v54 = (*(*v46 + 312))(v113, v50, v103, v106, v107);
    if (v53)
    {

      v111 = 0;
      v26 = v112;
      v55 = v103;
    }

    else
    {
      v61 = v54;
      v111 = 0;

      if (v61 >> 62)
      {
        v62 = sub_1CF9E7818();
      }

      else
      {
        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v112;
      v55 = v103;
      if (v62)
      {
        v99 = v27;
        if ((v61 & 0xC000000000000001) != 0)
        {
          v63 = MEMORY[0x1D3869C30](0, v61);
        }

        else
        {
          if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            MEMORY[0x1EEE9AC00](v62);
            *(&v98 - 2) = v26;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v98 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          v63 = *(v61 + 32);
        }

        v64 = v38;

        v65 = *v63;
        [v25 setItemPendingReconciliationJobCode_];
        v66 = *(v63 + 96);
        v67 = *(v63 + 104);
        v68 = *(v63 + 112);
        sub_1CF03C530(v66, v67, *(v63 + 112));
        v69 = 0;
LABEL_37:
        v72 = v26;
        sub_1CF03C530(v66, v67, v68);
        sub_1CF201778(v66, v67, v68);
        v26 = *(v102 + 136);
        v62 = objc_sync_enter(v26);
        if (v62)
        {
          goto LABEL_79;
        }

        swift_beginAccess();
        v73 = v26[2];

        v74 = objc_sync_exit(v26);
        if (v74)
        {
          MEMORY[0x1EEE9AC00](v74);
          *(&v98 - 2) = v26;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v98 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        if (v69)
        {
          v114 = 0;
          memset(v113, 0, sizeof(v113));
        }

        else
        {
          swift_beginAccess();
          v74 = sub_1CF053478(v63 + 56, v113);
        }

        v75 = v111;
        if (v68 <= 1)
        {
          if (v68)
          {

            v76 = 0;
          }

          else
          {
            MEMORY[0x1EEE9AC00](v74);
            *(&v98 - 2) = v113;
            v77 = sub_1CF7F7140(sub_1CF25A338, (&v98 - 4), v73, sub_1CF066914);
            v111 = v75;

            v76 = v77 & 1;
          }
        }

        else if (v68 == 2)
        {

          v76 = 2;
        }

        else if (v68 == 3)
        {

          v76 = 3;
        }

        else
        {

          if (v66 | v67)
          {
            v76 = 5;
          }

          else
          {
            v76 = 4;
          }
        }

        sub_1CEFCCC44(v113, &unk_1EC4C1BE0, &unk_1CF9FD400);
        v78 = v76;
        v25 = v105;
        [v105 setItemPendingReconciliationJobSchedulingState_];
        sub_1CF03D7A8(v66, v67, v68);

        v26 = v72;
        v58 = v109;
        v27 = v99;
        v38 = v64;
LABEL_55:
        if ([v25 itemPendingReconciliationJobCode] == 26)
        {
          if (v38)
          {
            *&v113[0] = v38;
            v79 = v38;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
            if (swift_dynamicCast())
            {
              v80 = v117;
              v81 = [v117 fp_protectionClassBehindError];
              if (v81)
              {
                v82 = v81;
                v83 = v27;
                v84 = *MEMORY[0x1E695DAD8];
                v85 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v87 = v86;
                if (v85 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v87 == v88)
                {
                  goto LABEL_61;
                }

                v89 = sub_1CF9E8048();

                if (v89)
                {
                  goto LABEL_66;
                }

                v92 = *MEMORY[0x1E695DAE0];
                v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v95 = v94;
                if (v93 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v95 == v96)
                {
LABEL_61:

LABEL_66:
                  v90 = v104;
                  if ([v104 numberOfItemsPendingReconciliation] < 1)
                  {

                    goto LABEL_70;
                  }

                  v62 = [v90 numberOfItemsPendingReconciliation];
                  v91 = v105;
                  if (!__OFSUB__(v62, 1))
                  {
                    [v90 setNumberOfItemsPendingReconciliation_];

LABEL_70:
                    v25 = 0;
                    goto LABEL_64;
                  }

                  goto LABEL_78;
                }

                v97 = sub_1CF9E8048();

                if (v97)
                {
                  goto LABEL_66;
                }

                v58 = v109;
                v25 = v105;
                v27 = v83;
              }

              else
              {
              }
            }
          }
        }

        *&v113[0] = v27;
        BYTE8(v113[0]) = v108;
        v58(v25, v113);

        goto LABEL_64;
      }
    }

    [v25 setItemPendingReconciliationJobCode_];
    *&v113[0] = v27;
    BYTE8(v113[0]) = v108;
    v56 = v111;
    v57 = (*(*v46 + 264))(v113, v55, v52, v51);
    if (v56)
    {

      v111 = 0;
LABEL_23:
      [v25 setItemPendingReconciliationJobCode_];
      [v25 setItemPendingReconciliationJobSchedulingState_];
      v58 = v109;
      goto LABEL_55;
    }

    v111 = 0;
    if (!v57)
    {
      goto LABEL_23;
    }

    v64 = v38;
    v99 = v27;
    v70 = *v57;
    v71 = v57;
    [v25 setItemPendingReconciliationJobCode_];
    v66 = v71[12];
    v67 = v71[13];
    v68 = *(v71 + 112);
    sub_1CF03C530(v66, v67, *(v71 + 112));

    v63 = 0;
    v69 = 1;
    goto LABEL_37;
  }

  v25 = 0;
  v26 = v112;
LABEL_64:
  *v26 = v25;
}

uint64_t sub_1CF257848(void (*a1)(id *__return_ptr))
{
  v4 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  if ([v1 next])
  {
    while (1)
    {
      v5 = objc_autoreleasePoolPush();
      a1(&v9);
      if (v2)
      {
        break;
      }

      if (v9)
      {
        v6 = v9;
        MEMORY[0x1D3868FA0]();
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();

        v4 = v10;
      }

      objc_autoreleasePoolPop(v5);
      if (([v1 next] & 1) == 0)
      {
        return v4;
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

void sub_1CF25797C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 24))(sub_1CF257AC0, 0, a5, a6);
  if (!v6)
  {
    v9 = v8;
    MEMORY[0x1EEE9AC00](v8);
    sub_1CF257848(sub_1CF25A2A0);
    sub_1CEFD57E0(0, &qword_1EC4BEB50, 0x1E6967368);
    v10 = sub_1CF9E6D28();

    [a1 setItemsPendingScanningDisk_];
  }
}

uint64_t sub_1CF257AC0()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000079, 0x80000001CFA3CEB0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA3CF30);
  return 0;
}

void sub_1CF257B80(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(void *, uint64_t *)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v101 = a5;
  v102 = a7;
  v110 = a6;
  v105 = a8;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = [objc_allocWithZone(MEMORY[0x1E6967368]) init];
  v19 = sub_1CEFE9AC4([a1 longAtIndex_], &v106);
  if (v8)
  {

    v21 = 0;
    v22 = v105;
    goto LABEL_51;
  }

  v100 = v14;
  v104 = a2;
  v95 = a1;
  v23 = v102;
  v96 = v17;
  v97 = v13;
  v24 = v106;
  v103 = v107;
  v99 = a4;
  if (v107 != 2 || v106)
  {
    v26 = v110;
    v21 = v18;
    if (v103 == 2 && v106 == 1)
    {
      v25 = *MEMORY[0x1E6967280];
    }

    else
    {
      v106 = 0x2F73662F70665F5FLL;
      v107 = 0xE800000000000000;
      v108 = v24;
      v109 = v103;
      v28 = VFSItemID.description.getter(v19, v20);
      MEMORY[0x1D3868CC0](v28);

      v25 = sub_1CF9E6888();
    }

    v27 = v23;
  }

  else
  {
    v25 = *MEMORY[0x1E6967258];
    v26 = v110;
    v27 = v23;
    v21 = v18;
  }

  [v21 setItemIdentifier_];

  v29 = v104;
  v30 = v104[3];
  v102 = v24;
  v106 = v24;
  LOBYTE(v107) = v103;
  v31 = sub_1CF8DCAA0();
  v32 = *(v31 + 52);
  v33 = (*(v31 + 48) + 7) & 0x1FFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1CF9FA450;
  *(v34 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
  v35 = 0;
  v42 = (*(*v30 + 312))(&v106, v34, a3, v26, v27);

  if (v42 >> 62)
  {
    goto LABEL_92;
  }

  v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = v102;
  if (v43)
  {
    goto LABEL_16;
  }

LABEL_93:

  [v21 setItemPendingScanningDiskEnumerationStatus_];
  v98 = 0;
LABEL_12:
  [v21 setItemPendingScanningDiskNumberOfChildrenPendingReconciliation_];
  [v21 setItemPendingScanningDiskNumberOfChildrenNotPendingReconciliation_];
  [v21 setItemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion_];
  [v21 setItemPendingScanningDiskNumberOfChildrenPendingRejection_];
  [v21 setItemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent_];
  v36 = [v21 setItemPendingScanningDiskNumberOfChildrenPendingSyncUp_];
  v37 = MEMORY[0x1EEE9AC00](v36);
  *&v90[-16] = v44;
  v90[-8] = v103;
  v38 = *(v27 + 24);
  v39 = v38(sub_1CF25A2FC, v37);
  v40 = v35;
  if (!v35)
  {
    v35 = v39;
    if ([v39 next])
    {
      do
      {
        v47 = objc_autoreleasePoolPush();
        sub_1CF258A48(v35, v21, v104, a3, v110, v27);
        objc_autoreleasePoolPop(v47);
      }

      while (([v35 next] & 1) != 0);
    }

    v104 = a3;
    [v21 setItemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion_];
    [v21 setItemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent_];
    [v21 setItemPendingScanningDiskNumberOfChildrenPendingSyncDown_];
    v48 = [v95 stringAtIndex_];
    v49 = v48;
    if (!v48)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v49 = sub_1CF9E6888();
    }

    v100 = v90;
    v50 = MEMORY[0x1EEE9AC00](v48);
    *&v90[-16] = v49;
    v27 = 0;
    v42 = v38(sub_1CF25A308, v50);
    v110 = v49;
    if (![v42 next])
    {
LABEL_45:

      v22 = v105;
      v59 = v99;
      v60 = v102;
      goto LABEL_50;
    }

    v29 = 13;
    while (1)
    {
      v52 = objc_autoreleasePoolPush();
      a3 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      if (([v42 longAtIndex_] & 0xD) != 0)
      {
        v53 = [v21 itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion];
        if (__OFADD__(v53, 1))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v43 = sub_1CF9E7818();
          v44 = v102;
          if (!v43)
          {
            goto LABEL_93;
          }

LABEL_16:
          if ((v42 & 0xC000000000000001) == 0)
          {
            if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v45 = *(v42 + 32);

              goto LABEL_19;
            }

            __break(1u);
LABEL_96:
            MEMORY[0x1EEE9AC00](v43);
            *&v90[-16] = v42;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v90[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          v45 = MEMORY[0x1D3869C30](0, v42);
LABEL_19:

          v46 = sub_1CEFEBAE8(1);
          v98 = v45;
          if (v35)
          {

            v35 = 0;
            goto LABEL_12;
          }

          v91 = v46;
          v71 = *(v45 + 96);
          v70 = *(v45 + 104);
          v72 = *(v45 + 112);
          v42 = *(v29 + 136);

          v94 = v71;
          v92 = v70;
          v93 = v72;
          sub_1CF03C530(v71, v70, v72);
          v43 = objc_sync_enter(v42);
          if (v43)
          {
            goto LABEL_96;
          }

          swift_beginAccess();
          v73 = *(v42 + 16);

          v74 = objc_sync_exit(v42);
          if (v74)
          {
            MEMORY[0x1EEE9AC00](v74);
            *&v90[-16] = v42;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v90[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          swift_beginAccess();
          v75 = sub_1CF053478(v45 + 56, &v106);
          if (v91 <= 1u)
          {
            if (v91)
            {
              goto LABEL_60;
            }

            v77 = v94;
            v78 = v92;
            v79 = v93;
LABEL_72:
            sub_1CF03D7A8(v77, v78, v79);
            v76 = 0;
            goto LABEL_73;
          }

          if (v91 == 2)
          {

            sub_1CF03D7A8(v94, v92, v93);
            v76 = 5;
            goto LABEL_73;
          }

          if (v91 != 3)
          {

            sub_1CF03D7A8(v94, v92, v93);
            v76 = -2;
            goto LABEL_73;
          }

LABEL_60:
          if (v93 <= 1)
          {
            if (!v93)
            {
              MEMORY[0x1EEE9AC00](v75);
              *&v90[-16] = &v106;
              v80 = sub_1CF7F7140(sub_1CF25A338, &v90[-32], v73, sub_1CF066914);

              sub_1CF03D7A8(v94, v92, 0);
              v76 = v80 & 1;
              goto LABEL_73;
            }

            v77 = v94;
            v78 = v92;
            v79 = 1;
            goto LABEL_72;
          }

          if (v93 == 2)
          {

            v76 = 2;
            sub_1CF03D7A8(v94, v92, 2u);
          }

          else if (v93 == 3)
          {

            v76 = 3;
            sub_1CF03D7A8(v94, v92, 3u);
          }

          else
          {

            if (v94 | v92)
            {
              v76 = 5;
            }

            else
            {
              v76 = 4;
            }
          }

LABEL_73:
          sub_1CEFCCC44(&v106, &unk_1EC4C1BE0, &unk_1CF9FD400);
          [v21 setItemPendingScanningDiskEnumerationStatus_];
          v82 = *(v45 + 96);
          v81 = *(v45 + 104);
          v83 = *(v45 + 112);
          sub_1CF03C530(v82, v81, *(v45 + 112));

          switch(v83)
          {
            case 0:
              v84 = v82;
              if (!v81)
              {
                v88 = 0;
                v89 = 0;
                break;
              }

              v85 = v81;
              v86 = 0;
              goto LABEL_82;
            case 1:
              if (!v82)
              {
                v84 = 0;
                v88 = v81;
                v89 = 1;
                break;
              }

              v84 = v82;
              v85 = v81;
              v86 = 1;
LABEL_82:
              sub_1CF03D7A8(v84, v85, v86);
              v87 = 1;
              goto LABEL_88;
            case 2:
              if (v82)
              {
                v84 = v82;
                v85 = v81;
                v86 = 2;
                goto LABEL_82;
              }

              v84 = 0;
              v88 = v81;
              v89 = 2;
              break;
            default:
              v84 = v82;
              v88 = v81;
              v89 = v83;
              break;
          }

          sub_1CF03D7A8(v84, v88, v89);
          v87 = 0;
LABEL_88:
          v44 = v102;
          [v21 setItemPendingScanningDiskHasMultiplePagesEnumeration_];

          goto LABEL_12;
        }

        [v21 setItemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion_];
      }

      v54 = [v42 longAtIndex_];
      v55 = [v42 longAtIndex_];
      v56 = [v42 longAtIndex_];
      if (v55)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56 == 2;
      }

      if (!v57)
      {
        goto LABEL_42;
      }

      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      if ((qword_1EDEABDE8 & ~v54) != 0)
      {
LABEL_42:
        if ((v54 & 2) != 0)
        {
          v58 = [v21 itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent];
          if (__OFADD__(v58, 1))
          {
            goto LABEL_91;
          }

          [v21 setItemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent_];
LABEL_28:
          v51 = [v21 itemPendingScanningDiskNumberOfChildrenPendingSyncDown];
          if (__OFADD__(v51, 1))
          {
            goto LABEL_90;
          }

          [v21 setItemPendingScanningDiskNumberOfChildrenPendingSyncDown_];
          goto LABEL_30;
        }

        if (v54)
        {
          goto LABEL_28;
        }
      }

LABEL_30:
      objc_autoreleasePoolPop(v52);
      if (([v42 next] & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  v41 = v100;
  v61 = fpfs_current_or_default_log();
  v62 = v96;
  sub_1CF9E6128();
  v63 = v35;
  v64 = sub_1CF9E6108();
  v65 = sub_1CF9E72A8();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    v68 = v40;
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v66 + 4) = v69;
    *v67 = v69;
    _os_log_impl(&dword_1CEFC7000, v64, v65, "Failed gathering info for item pending scanning disk %@", v66, 0xCu);
    sub_1CEFCCC44(v67, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v67, -1, -1);
    MEMORY[0x1D386CDC0](v66, -1, -1);
  }

  else
  {
  }

  v22 = v105;
  v59 = v99;
  v60 = v102;
  (*(v41 + 1))(v62, v97);
LABEL_50:
  v106 = v60;
  LOBYTE(v107) = v103;
  v59(v21, &v106);
LABEL_51:
  *v22 = v21;
}

uint64_t sub_1CF25892C(void *a1, unint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000E1, 0x80000001CFA3CD90);
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

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA3CE80);
  return v11;
}

uint64_t sub_1CF258A48(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (([a1 isNullAtIndex_] & 1) == 0)
  {
    v14 = sub_1CF1E0758(1);
    if (v6)
    {

      v7 = 0;
    }

    else if (!v14)
    {
      result = [a2 itemPendingScanningDiskNumberOfChildrenPendingReconciliation];
      v16 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_42:
        __break(1u);
        return result;
      }

      v17 = &selRef_setItemPendingScanningDiskNumberOfChildrenPendingReconciliation_;
      goto LABEL_7;
    }
  }

  result = [a2 itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation];
  v16 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = &selRef_setItemPendingScanningDiskNumberOfChildrenNotPendingReconciliation_;
LABEL_7:
  [a2 *v17];
  v18 = [a1 longAtIndex_];
  if ((v18 & 0xD) == 0 || (v18 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  if ((~v18 & 0x82) != 0)
  {
    v22 = 1;
  }

  else
  {
    v22 = (*(a3 + 80) & 0x4000) == 0;
    *(a3 + 80);
  }

  if (v22)
  {
LABEL_19:
    result = [a2 itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion];
    v20 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v21 = &selRef_setItemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion_;
    goto LABEL_21;
  }

  v27 = v18;
  v28 = a6;
  v23 = [a1 stringAtIndex_];
  v24 = v23;
  if (!v23)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = sub_1CF9E6888();
  }

  v29 = v24;
  v25 = sub_1CF033A74();
  v26 = sub_1CF5E1650(&v29, v25, a4, a5, v28);

  if (!v7)
  {

    LOBYTE(v18) = v27;
    if (v26)
    {
LABEL_11:
      if ((v18 & 0x40) == 0)
      {
LABEL_22:
        result = [a1 longAtIndex_];
        if ((result & 2) != 0)
        {
          result = [a2 itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent];
          if (__OFADD__(result, 1))
          {
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          [a2 setItemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent_];
        }

        else if (!result)
        {
          return result;
        }

        result = [a2 itemPendingScanningDiskNumberOfChildrenPendingSyncUp];
        if (!__OFADD__(result, 1))
        {
          return [a2 setItemPendingScanningDiskNumberOfChildrenPendingSyncUp_];
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      result = [a2 itemPendingScanningDiskNumberOfChildrenPendingRejection];
      v20 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v21 = &selRef_setItemPendingScanningDiskNumberOfChildrenPendingRejection_;
LABEL_21:
      [a2 *v21];
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1CF258D00(void *a1)
{
  v2 = sub_1CF9E6938();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000F8, 0x80000001CFA3CC60);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v7 = sub_1CF9E68C8();
  v9 = v8;

  result = (*(v3 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_1CF9E5B48();
    sub_1CEFE48D8(v7, v9);
    v12 = [a1 bindObjectParameter_];

    v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v15 = v14;

    MEMORY[0x1D3868CC0](v13, v15);

    MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3CD60);
    return v16[0];
  }

  return result;
}

void sub_1CF258EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 24))(sub_1CF25902C, 0, a5, a6);
  if (!v6)
  {
    v9 = v8;
    MEMORY[0x1EEE9AC00](v8);
    sub_1CF257848(sub_1CF259EFC);
    sub_1CEFD57E0(0, &qword_1EC4BEB48, 0x1E6967370);
    v10 = sub_1CF9E6D28();

    [a1 setItemsPendingScanningProvider_];
  }
}

uint64_t sub_1CF25902C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000090, 0x80000001CFA3CB70);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD00000000000004CLL, 0x80000001CFA3CC10);
  return 0;
}

void sub_1CF2590E8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *, void *)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v91 = a5;
  v92 = a4;
  v98 = a8;
  v97 = sub_1CF9E6118();
  v96 = *(v97 - 8);
  v13 = *(v96 + 64);
  *&v14 = MEMORY[0x1EEE9AC00](v97).n128_u64[0];
  v95 = &v84[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = a1;
  v16 = [a1 stringAtIndex_];
  if (!v16)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = sub_1CF9E6888();
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E6967370]) init];
  [v17 setItemIdentifier_];
  v18 = *(a2 + 24);
  v100[0] = v16;
  v19 = sub_1CF8DCAC4();
  v20 = *(v19 + 52);
  v21 = (*(v19 + 48) + 7) & 0x1FFFFFFF8;
  v22 = swift_allocObject();
  v93 = a2;
  v23 = v22;
  *(v22 + 16) = xmmword_1CF9FA450;
  *(v22 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
  v24 = v99;
  v25 = (*(*v18 + 304))(v100, v23, a3, a6, a7);
  if (!v24)
  {
    v35 = v25;
    v88 = v18;
    v36 = v16;
    v89 = a6;
    v99 = a7;

    v90 = a3;
    if (v35 >> 62)
    {
      goto LABEL_80;
    }

    for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
    {
      v39 = v94;
      v40 = v99;
      v41 = v89;
      v34 = v17;
      v42 = v36;
      if (i)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          goto LABEL_83;
        }

        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v43 = *(v35 + 32);

          goto LABEL_15;
        }

        __break(1u);
LABEL_85:
        MEMORY[0x1EEE9AC00](i);
        v80 = &v84[-32];
        *&v84[-16] = v39;
        v81 = sub_1CF1C5288;
LABEL_88:
        fp_preconditionFailure(_:file:line:)(v81, v80, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      [v17 setItemPendingScanningProviderEnumerationStatus_];
      *(&v87 + 1) = 0;
      v44 = v88;
LABEL_46:
      v100[0] = v42;
      v60 = (*(*v44 + 256))(v100, v90, v41, v40);
      v65 = v60;
      if (!v60)
      {
        break;
      }

      if (([v39 longAtIndex_] & 0x10) == 0)
      {
        [v34 setItemPendingScanningProviderRemovalOfDatalessBitStatus_];

        goto LABEL_48;
      }

      v71 = *(v65 + 96);
      v70 = *(v65 + 104);
      v72 = *(v65 + 112);
      v73 = *(v93 + 136);

      sub_1CF03C530(v71, v70, v72);
      v74 = objc_sync_enter(v73);
      if (v74)
      {
        MEMORY[0x1EEE9AC00](v74);
        v80 = &v84[-32];
        *&v84[-16] = v73;
        v81 = sub_1CF1C546C;
        goto LABEL_88;
      }

      swift_beginAccess();
      v75 = v73[2];

      v76 = objc_sync_exit(v73);
      if (v76)
      {
        MEMORY[0x1EEE9AC00](v76);
        v82 = &v84[-32];
        *&v84[-16] = v73;
        v83 = sub_1CF1C5468;
LABEL_90:
        fp_preconditionFailure(_:file:line:)(v83, v82, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      swift_beginAccess();
      sub_1CF053478(v65 + 56, v100);

      if (v72 <= 1)
      {
        if (v72)
        {

          sub_1CF03D7A8(v71, v70, 1u);
          v78 = 0;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v77);
          *&v84[-16] = v100;
          v79 = sub_1CF7F7140(sub_1CF25A280, &v84[-32], v75, sub_1CF066914);

          sub_1CF03D7A8(v71, v70, 0);
          v78 = v79 & 1;
        }
      }

      else if (v72 == 2)
      {

        v78 = 2;
        sub_1CF03D7A8(v71, v70, 2u);
      }

      else if (v72 == 3)
      {

        v78 = 3;
        sub_1CF03D7A8(v71, v70, 3u);
      }

      else
      {

        if (v71 | v70)
        {
          v78 = 5;
        }

        else
        {
          v78 = 4;
        }
      }

      sub_1CEFCCC44(v100, &unk_1EC4C1BE0, &unk_1CF9FD400);
      [v34 setItemPendingScanningProviderRemovalOfDatalessBitStatus_];

      v61 = v99;
LABEL_49:
      [v34 setItemPendingScanningProviderNumberOfChildren_];
      [v34 setItemPendingScanningProviderNumberOfChildrenPendingCreation_];
      v62 = [v34 setItemPendingScanningProviderNumberOfChildrenFailingCreation_];
      v63 = MEMORY[0x1EEE9AC00](v62);
      *&v84[-16] = v42;
      v64 = v61[3](sub_1CF25A278, v63);
      v41 = v64;
      v36 = &selRef_initWithTarget_;
      if (![v64 next])
      {
LABEL_64:
        sub_1CEFE9AC4([v94 longAtIndex_], v100);
        v92(v34, v100);

        goto LABEL_8;
      }

      v17 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      while (1)
      {
        v35 = objc_autoreleasePoolPush();
        v66 = [v34 itemPendingScanningProviderNumberOfChildren];
        if (__OFADD__(v66, 1))
        {
          break;
        }

        [v34 setItemPendingScanningProviderNumberOfChildren_];
        if ([v41 isNullAtIndex_])
        {
          if ([v41 isNullAtIndex_])
          {
            v67 = [v34 itemPendingScanningProviderNumberOfChildrenPendingCreation];
            v37 = v67 + 1;
            if (__OFADD__(v67, 1))
            {
              goto LABEL_82;
            }

            v68 = &selRef_setItemPendingScanningProviderNumberOfChildrenPendingCreation_;
          }

          else
          {
            v69 = [v34 itemPendingScanningProviderNumberOfChildrenFailingCreation];
            v37 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              v43 = MEMORY[0x1D3869C30](0, v35, v37);
LABEL_15:

              v45 = sub_1CEFEBAE8(1);
              v46 = v42;
              v48 = *(v43 + 96);
              v47 = *(v43 + 104);
              v49 = *(v43 + 112);
              v50 = v47 != 0;
              v51 = v48 != 0;
              v52 = v51;
              if (v49 != 2)
              {
                v52 = 0;
              }

              if (v49 != 1)
              {
                v51 = v52;
              }

              if (*(v43 + 112))
              {
                v50 = v51;
              }

              v85 = v50;
              v39 = *(v93 + 136);

              *&v87 = v48;
              *(&v87 + 1) = v47;
              sub_1CF03C530(v48, v47, v49);
              i = objc_sync_enter(v39);
              if (i)
              {
                goto LABEL_85;
              }

              swift_beginAccess();
              v86 = v39[2];

              v53 = objc_sync_exit(v39);
              if (v53)
              {
                MEMORY[0x1EEE9AC00](v53);
                v82 = &v84[-32];
                *&v84[-16] = v39;
                v83 = sub_1CF1C5290;
                goto LABEL_90;
              }

              swift_beginAccess();
              sub_1CF053478(v43 + 56, v100);

              v42 = v46;
              if (v45 <= 1u)
              {
                v39 = v94;
                if (v45)
                {
                  goto LABEL_31;
                }

                v57 = *(&v87 + 1);
                v56 = v87;
                v58 = v49;
LABEL_43:
                sub_1CF03D7A8(v56, v57, v58);
                v55 = 0;
                goto LABEL_44;
              }

              v39 = v94;
              if (v45 == 2)
              {

                sub_1CF03D7A8(v87, *(&v87 + 1), v49);
                v55 = 5;
                goto LABEL_44;
              }

              if (v45 != 3)
              {

                sub_1CF03D7A8(v87, *(&v87 + 1), v49);
                v55 = -2;
                goto LABEL_44;
              }

LABEL_31:
              if (v49 <= 1)
              {
                if (v49)
                {

                  v57 = *(&v87 + 1);
                  v56 = v87;
                  v58 = 1;
                  goto LABEL_43;
                }

                MEMORY[0x1EEE9AC00](v54);
                *&v84[-16] = v100;
                v59 = sub_1CF7F7140(sub_1CF25A338, &v84[-32], v86, sub_1CF066914);

                sub_1CF03D7A8(v87, *(&v87 + 1), 0);
                v55 = v59 & 1;
LABEL_44:
                v40 = v99;
                v44 = v88;
                goto LABEL_45;
              }

              if (v49 == 2)
              {

                v55 = 2;
                sub_1CF03D7A8(v87, *(&v87 + 1), 2u);
                goto LABEL_44;
              }

              if (v49 == 3)
              {

                v55 = 3;
                sub_1CF03D7A8(v87, *(&v87 + 1), 3u);
                goto LABEL_44;
              }

              v40 = v99;
              v44 = v88;

              if (v87 == 0)
              {
                v55 = 4;
              }

              else
              {
                v55 = 5;
              }

LABEL_45:
              sub_1CEFCCC44(v100, &unk_1EC4C1BE0, &unk_1CF9FD400);
              [v34 setItemPendingScanningProviderEnumerationStatus_];
              [v34 setItemPendingScanningProviderHasMultiplePagesEnumeration_];
              *(&v87 + 1) = v43;

              goto LABEL_46;
            }

            v68 = &selRef_setItemPendingScanningProviderNumberOfChildrenFailingCreation_;
          }

          [v34 *v68];
        }

        objc_autoreleasePoolPop(v35);
        if (([v41 next] & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_80:
      ;
    }

    [v34 setItemPendingScanningProviderRemovalOfDatalessBitStatus_];
LABEL_48:
    v61 = v99;
    goto LABEL_49;
  }

  v26 = fpfs_current_or_default_log();
  v27 = v95;
  sub_1CF9E6128();
  v28 = v24;
  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E72A8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    swift_getErrorValue();
    v33 = Error.prettyDescription.getter(v100[9]);
    *(v31 + 4) = v33;
    *v32 = v33;
    _os_log_impl(&dword_1CEFC7000, v29, v30, "Error gathering telemetry for scanning provider %@", v31, 0xCu);
    sub_1CEFCCC44(v32, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v32, -1, -1);
    MEMORY[0x1D386CDC0](v31, -1, -1);
  }

  else
  {
  }

  (*(v96 + 8))(v27, v97);
  v34 = 0;
LABEL_8:
  *v98 = v34;
}

uint64_t sub_1CF259F28(void *a1)
{
  v20 = a1;
  v1 = sub_1CF9E6938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000105, 0x80000001CFA3C950);
  v21 = 5;
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA3CA60);
  v21 = 26;
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA3CA60);
  v21 = 1;
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA3CA60);
  v21 = 8;
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA3CAA0);
  v21 = 1;
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000061, 0x80000001CFA3CAE0);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v11 = sub_1CF9E68C8();
  v13 = v12;

  result = (*(v2 + 8))(v5, v1);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_1CF9E5B48();
    sub_1CEFE48D8(v11, v13);
    v16 = [v20 bindObjectParameter_];

    v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v19 = v18;

    MEMORY[0x1D3868CC0](v17, v19);

    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA3CB50);
    return v22;
  }

  return result;
}

uint64_t sub_1CF25A3A4(void (*a1)(void *__return_ptr, __int128 *))
{
  v4 = *(v1 + 4);
  if (v4 == 1)
  {
    result = 0;
    memset(v12, 0, sizeof(v12));
    v13 = 256;
  }

  else
  {
    v6 = *(v1 + 2);
    v7 = *(v1 + 3);
    v8 = *v1;
    v9 = v6;
    v10 = v7;
    v11 = v4;

    a1(v12, &v8);
    if (v2)
    {

      __break(1u);
    }

    else
    {

      HIBYTE(v13) = 0;
      return v12[0];
    }
  }

  return result;
}

uint64_t sub_1CF25A464(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v9 = *(sub_1CF9E5A58() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1CF9E7A18();
      v12 = *(v14 + 16);
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CF25A5A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - v5;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v24[1] = v1;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1CF680CCC(0, v7, 0);
  v8 = v31;
  v9 = -1 << *(a1 + 32);
  v30 = a1 + 56;
  result = sub_1CF9E77C8();
  v11 = result;
  v12 = 0;
  v25 = a1 + 64;
  v26 = v7;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v30 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v29 = *(a1 + 36);
    *v6 = *(*(a1 + 48) + 8 * v11);
    v6[8] = 1;
    *(v6 + 2) = 4;
    v6[24] = 1;
    swift_storeEnumTagMultiPayload();
    v31 = v8;
    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1CF680CCC(v15 > 1, v16 + 1, 1);
      v8 = v31;
    }

    *(v8 + 16) = v16 + 1;
    result = sub_1CEFE55D0(v6, v8 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v16, &unk_1EC4BED40, &unk_1CFA00720);
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v17 = *(v30 + 8 * v14);
    if ((v17 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v11 & 0x3F));
    if (v18)
    {
      v13 = __clz(__rbit64(v18)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v14 << 6;
      v20 = v14 + 1;
      v21 = (v25 + 8 * v14);
      while (v20 < (v13 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1CF0663D8(v11, v29, 0);
          v13 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1CF0663D8(v11, v29, 0);
    }

LABEL_4:
    ++v12;
    v11 = v13;
    if (v12 == v26)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1CF25A894(void (*a1)(uint64_t *__return_ptr, id *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    for (i = (a3 + 32); ; ++i)
    {
      v13 = *i;
      v10 = v13;
      a1(&v14, &v13, &v12);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_1CF9E7A18();
      v11 = *(v15 + 16);
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      if (!--v6)
      {
        return v15;
      }
    }
  }

  return result;
}

uint64_t sub_1CF25A99C(void (*a1)(void *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1CF680FE8(0, v4, 0);
    v5 = v19;
    v7 = *(sub_1CF9E5A58() - 8);
    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    while (1)
    {
      a1(v18, v8, &v17);
      if (v3)
      {
        break;
      }

      v11 = v18[0];
      v10 = v18[1];
      v19 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1CF680FE8((v12 > 1), v13 + 1, 1);
        v5 = v19;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += v9;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1CF25AAFC(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  *(v4 + 48) = 0;
  *(v4 + 64) = 0;
  if (a3)
  {
    swift_beginAccess();
    v9 = *(a3 + 24);
    v10 = *(a3 + 40);
    v11 = *(a3 + 44);
    v12 = *(a3 + 32);
    v24 = v12;
    *(v4 + 16) = *(a3 + 16);
    *(v4 + 24) = v9;
    *(v4 + 32) = v12;
    *(v4 + 40) = v10;
    *(v4 + 44) = v11;
    swift_beginAccess();
    *(v4 + 44) = 1;
    v13 = v24;
  }

  else
  {
    v13 = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 37) = 0;
  }

  v14 = *(a1 + 16);
  swift_beginAccess();
  *(v4 + 16) = v14;
  *(v4 + 56) = a2;
  v15 = *(a1 + 24);

  v16 = *(v4 + 16);
  v27 = v15;
  v28 = 0;
  v29 = 0;
  v30 = v13;
  v32 = 0;
  v31 = 0;
  v17 = fpfs_openfdbyhandle();
  if (v17 < 0)
  {
    v21 = MEMORY[0x1D38683F0]();
    LODWORD(v25[0]) = 0;
    BYTE4(v25[0]) = 1;
    v26 = 0;
    sub_1CF19BBE4(v21, v25);
    sub_1CF1969CC(v25);
    swift_willThrow();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDA0, &unk_1CF9FDB50);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v17;

    swift_beginAccess();
    *(v4 + 52) = v18;
    os_unfair_lock_lock((a1 + 56));
    v19 = *(a1 + 80);
    os_unfair_lock_unlock((a1 + 56));

    *(v4 + 60) = v19;
    v20 = *(v4 + 64);
    *(v4 + 64) = a4;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1CF25AD70(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v3 = sub_1CF9E53C8();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1CF9E6118();
  v36 = *(v37 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v41 = *(v2 + 24);
  v8 = *(v2 + 56);
  result = swift_beginAccess();
  v10 = 0;
  while (v10 < v8)
  {
    v11 = *(v2 + 52);
    v12 = *(v2 + 60);
    v13 = swift_allocObject();
    v14 = v42;
    v15 = v43;
    v13[2] = v2;
    v13[3] = v14;
    v16 = v41;
    v13[4] = v15;
    v13[5] = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1CF2B1638;
    *(v17 + 24) = v13;
    v49 = sub_1CF1DBD5C;
    v50 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1CEFDB270;
    v48 = &block_descriptor_957;
    v18 = _Block_copy(&aBlock);

    swift_beginAccess();
    v19 = fpfs_fgetdirentries();
    swift_endAccess();
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
LABEL_20:
      aBlock = 0;
      v46 = 0xE000000000000000;
      sub_1CF9E7948();

      aBlock = 0xD00000000000001ALL;
      v46 = 0x80000001CFA2DF30;
      v44 = v19;
      v24 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v24);

      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
      v25 = aBlock;
      v26 = v46;
      v27 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v28 = sub_1CF9E6108();
      v29 = sub_1CF9E72B8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock = v31;
        *v30 = 136315650;
        v32 = sub_1CF9E7988();
        v34 = sub_1CEFD0DF0(v32, v33, &aBlock);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2048;
        *(v30 + 14) = 315;
        *(v30 + 22) = 2080;
        *(v30 + 24) = sub_1CEFD0DF0(v25, v26, &aBlock);
        _os_log_impl(&dword_1CEFC7000, v28, v29, "[ASSERT] ‼️  %s:%lu: %s", v30, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v31, -1, -1);
        MEMORY[0x1D386CDC0](v30, -1, -1);
      }

      (*(v36 + 8))(v35, v37);
      result = sub_1CF9E7B68();
      __break(1u);
      return result;
    }

    if (v19 < 0)
    {
      if (MEMORY[0x1D38683F0](result))
      {
        if (MEMORY[0x1D38683F0]() == 9939394)
        {
          [objc_opt_self() fp:2 errorForDataProtectionClass:?];
        }

        else
        {
          MEMORY[0x1D38683F0]();
          v21 = sub_1CF9E6138();
          if ((v21 & 0x100000000) != 0)
          {
            LODWORD(aBlock) = 22;
          }

          else
          {
            LODWORD(aBlock) = v21;
          }

          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v22 = v38;
          v23 = v40;
          sub_1CF9E57D8();
          sub_1CF9E53A8();
          (*(v39 + 8))(v22, v23);
        }

        return swift_willThrow();
      }

      goto LABEL_20;
    }

    if (!v19)
    {
      *(v2 + 48) = 1;
      return result;
    }

    v20 = __OFADD__(v10, v19);
    v10 += v19;
    if (v20)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_1CF25B3B4(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v26[1] = a5;
  v28 = a3;
  v29 = a4;
  v7 = sub_1CF9E6118();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v30 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E53C8();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v26 - v15;
  v17 = type metadata accessor for VFSItem(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*a2 + 280);
  v33 = a1;
  v34 = a2;
  v23(a1, v20);
  v24 = v28;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  else
  {
    sub_1CEFE4C60(v16, v22, type metadata accessor for VFSItem);
    v24(v22);
    sub_1CEFE5888(v22, type metadata accessor for VFSItem);
  }

  return 0;
}

void sub_1CF25B904(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 144);
  v5 = *(a1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFA001F0;
  strcpy((inited + 32), "operationType");
  *(inited + 46) = -4864;
  *(inited + 48) = 0xD00000000000002ELL;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 56) = 0x80000001CFA3D820;
  *(inited + 72) = v7;
  *(inited + 80) = 0x657079546D657469;
  *(inited + 88) = 0xE800000000000000;
  type metadata accessor for fpfs_item_type(0);
  *(inited + 96) = v2;
  *(inited + 120) = v8;
  strcpy((inited + 128), "documentSize");
  v9 = MEMORY[0x1E69E7360];
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v3;
  *(inited + 168) = v9;
  strcpy((inited + 176), "physicalSize");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  *(inited + 192) = v5;
  *(inited + 216) = v9;
  strcpy((inited + 224), "childItemCount");
  *(inited + 239) = -18;
  v10 = MEMORY[0x1E69E7668];
  *(inited + 240) = v4;
  *(inited + 264) = v10;
  *(inited + 272) = 0x6E756F436B6E696CLL;
  *(inited + 280) = 0xE900000000000074;
  *(inited + 312) = v10;
  *(inited + 288) = v4;
  v11 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v12 = *(v1 + 64);
  if (v12)
  {
    v13 = v12;
    sub_1CF7BA9CC(v11);

    v14 = sub_1CF9E6618();

    v15 = sub_1CF9E57E8();
    [v13 postReportWithCategory:1 type:1 payload:v14 error:v15];
  }

  else
  {
  }
}

uint64_t sub_1CF25BB70()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x6F4370756B6F6F6CLL, 0xEC0000003D746E75);
  v7 = *v0;
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0x756F436E61637320, 0xEB000000003D746ELL);
  v8 = v0[1];
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA3D470);
  v9 = v0[2];
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0x6144746573657220, 0xEB000000003D6574);
  v4 = v0 + *(type metadata accessor for VFSCounters(0) + 28);
  v5 = sub_1CF9E5C08();
  MEMORY[0x1D3868CC0](v5);

  return 0;
}

uint64_t sub_1CF25BD0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F60, &unk_1CFA00830);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CF9FC330;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CF9FA440;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x80000001CFA3D990;
  v4 = *(v0 + 2);
  v5 = MEMORY[0x1E69E76D8];
  *(v2 + 88) = MEMORY[0x1E69E76D8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  *(v1 + 56) = v6;
  *(v1 + 32) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CF9FA440;
  *(v7 + 32) = 0x6F4370756B6F6F6CLL;
  *(v7 + 40) = 0xEB00000000746E75;
  v8 = *v0;
  *(v7 + 88) = v5;
  *(v7 + 56) = v3;
  *(v7 + 64) = v8;
  *(v1 + 88) = v6;
  *(v1 + 64) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CF9FA440;
  *(v9 + 32) = 0x6E756F436E616373;
  *(v9 + 40) = 0xE900000000000074;
  v10 = *(v0 + 1);
  *(v9 + 88) = v5;
  *(v9 + 56) = v3;
  *(v9 + 64) = v10;
  *(v1 + 120) = v6;
  *(v1 + 96) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1CF9FA440;
  *(v11 + 56) = v3;
  *(v11 + 32) = 0x7461447465736572;
  *(v11 + 40) = 0xE900000000000065;
  v12 = *(type metadata accessor for VFSCounters(0) + 28);
  v13 = sub_1CF9E5CF8();
  *(v11 + 88) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 64));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, &v0[v12], v13);
  *(v1 + 152) = v6;
  *(v1 + 128) = v11;
  return v1;
}

uint64_t sub_1CF25BF24(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEBF0, &qword_1CFA00658);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF2A9490();
  sub_1CF9E82A8();
  v11 = *v3;
  v16[15] = 0;
  sub_1CF9E7F68();
  if (!v2)
  {
    v12 = v3[1];
    v16[14] = 1;
    sub_1CF9E7F68();
    v13 = v3[2];
    v16[13] = 2;
    sub_1CF9E7F68();
    v14 = *(type metadata accessor for VFSCounters(0) + 28);
    v16[12] = 3;
    sub_1CF9E5CF8();
    sub_1CF2A9448(&qword_1EDEAB3D0, MEMORY[0x1E6969530]);
    sub_1CF9E7F08();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF25C160@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1CF9E5CF8();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEBD8, &qword_1CFA00650);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for VFSCounters(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v16 = *(v13 + 36);
  sub_1CF9E5CC8();
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF2A9490();
  v18 = v28;
  sub_1CF9E8298();
  if (!v18)
  {
    v28 = v16;
    v19 = v6;
    v32 = 0;
    v20 = v26;
    v21 = v27;
    *v15 = sub_1CF9E7DE8();
    v31 = 1;
    v15[1] = sub_1CF9E7DE8();
    v30 = 2;
    v15[2] = sub_1CF9E7DE8();
    v29 = 3;
    sub_1CF2A9448(&unk_1EDEAB3A0, MEMORY[0x1E6969530]);
    sub_1CF9E7D88();
    (*(v20 + 8))(v10, v21);
    (*(v24 + 40))(v15 + v28, v19, v3);
    sub_1CEFD90AC(v15, v25, type metadata accessor for VFSCounters);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CEFE5888(v15, type metadata accessor for VFSCounters);
}

unint64_t sub_1CF25C4C0()
{
  v1 = 0x6F4370756B6F6F6CLL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7461447465736572;
  }

  if (*v0)
  {
    v1 = 0x6E756F436E616373;
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

uint64_t sub_1CF25C54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF2AAAA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF25C574(uint64_t a1)
{
  v2 = sub_1CF2A9490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF25C5B0(uint64_t a1)
{
  v2 = sub_1CF2A9490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF25C620()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CF9E81D8();
  MEMORY[0x1D386A4A0](v1);
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF25C684()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1D386A4A0](*v0);

  return sub_1CF9E69C8();
}

uint64_t sub_1CF25C6D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CF9E81D8();
  MEMORY[0x1D386A4A0](v1);
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF25C738(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1CF9E8048();
  }
}

uint64_t sub_1CF25C780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v21 - v10;
  sub_1CEFCCBDC(a1, &v21 - v10, &unk_1EC4BED40, &unk_1CFA00720);
  v12 = *(v3 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1CF1F6A90(0, v12[2] + 1, 1, v12);
  }

  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1CF1F6A90(v13 > 1, v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  result = sub_1CEFE55D0(v11, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, &unk_1EC4BED40, &unk_1CFA00720);
  *(v3 + 8) = v12;
  if (a2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v17 = *(v3 + 24);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CF1F6A6C(0, v17[2] + 1, 1, v17);
      v17 = result;
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_1CF1F6A6C((v18 > 1), v19 + 1, 1, v17);
      v17 = result;
    }

    v17[2] = v19 + 1;
    v20 = &v17[2 * v19];
    v20[4] = sub_1CF2B1738;
    v20[5] = v16;
    *(v3 + 24) = v17;
  }

  return result;
}

uint64_t sub_1CF25C998(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = v3;

      v6(&v7);

      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1CF25CA0C()
{
  v1 = v0;
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 152);
  if (v13 == 3)
  {
    v14 = v10;
    v15 = objc_sync_enter(v1);
    if (v15)
    {
      MEMORY[0x1EEE9AC00](v15);
      *(&v22 - 2) = v1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v22 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v16 = *(v1 + 160);

    v17 = objc_sync_exit(v1);
    if (v17)
    {
      MEMORY[0x1EEE9AC00](v17);
      *(&v22 - 2) = v1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v22 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    (*(v3 + 16))(v6, v16 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v19 = *MEMORY[0x1E695DE18];
    *(inited + 32) = *MEMORY[0x1E695DE18];
    v20 = v19;
    sub_1CEFF8A84(inited);
    swift_setDeallocating();
    sub_1CEFE5888(inited + 32, type metadata accessor for URLResourceKey);
    sub_1CF9E58A8();
    (*(v3 + 8))(v6, v2);

    v13 = sub_1CF9E5608();
    (*(v8 + 8))(v12, v14);
    *(v1 + 152) = v13;
  }

  return v13;
}

uint64_t sub_1CF25CD54()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = v0[20];

  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF25CED0()
{
  v0 = sub_1CF9E7388();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E7488();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8[0] = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
  v8[1] = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&unk_1EDEAB5D0, MEMORY[0x1E69E8110]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
  sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870);
  sub_1CF9E77B8();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v0);
  result = sub_1CF9E7498();
  qword_1EDEBBD70 = result;
  return result;
}

uint64_t sub_1CF25D11C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  return v1;
}

fp_task_tracker *sub_1CF25D1E8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, char a11)
{
  v227 = a1;
  v12 = v11;
  v230 = a4;
  v192 = sub_1CF9E6118();
  v191 = *(v192 - 8);
  v19 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v190 = &v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE28, &unk_1CFA00840);
  v188 = *(v189 - 8);
  v21 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v187 = &v186 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE30, &unk_1CFA03240);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v204 = &v186 - v25;
  v205 = sub_1CF9E7378();
  v210 = *(v205 - 8);
  v26 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v203 = &v186 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C50F0, &qword_1CFA00850);
  v194 = *(v195 - 8);
  v28 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v193 = &v186 - v29;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE40, &qword_1CFA00858);
  v209 = *(v202 - 8);
  v30 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v201 = &v186 - v31;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE48, &qword_1CFA00860);
  v196 = *(v197 - 8);
  v32 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v206 = &v186 - v33;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE50, &qword_1CFA00868);
  v199 = *(v200 - 8);
  v34 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v186 - v35;
  v208 = sub_1CF9E5A58();
  v36 = *(v208 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v39 = &v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v220 = &v186 - v41;
  *(v12 + 152) = 3;
  v229 = a6;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CF9E7818())
  {
    sub_1CF6F3CF4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v42 = MEMORY[0x1E69E7CD0];
  }

  v207 = v36;
  v228 = a5;
  *(v12 + 192) = v42;
  *(v12 + 200) = sub_1CF4E2378(MEMORY[0x1E69E7CC0]);
  type metadata accessor for TaskTracker();
  v43 = swift_allocObject();
  result = fp_task_tracker_create("vfstree");
  if (!result)
  {
    goto LABEL_38;
  }

  *(v43 + 16) = result;
  *(v12 + 224) = v43;
  *(v12 + 288) = 0;
  swift_unknownObjectWeakInit();
  v215 = qword_1EDEBBE78;
  *(v12 + qword_1EDEBBE78) = 0;
  v217 = qword_1EDEBBE80;
  *(v12 + qword_1EDEBBE80) = 0;
  v45 = (v12 + qword_1EDEAFB30);
  *v45 = 0u;
  v45[1] = 0u;
  v45[2] = 0u;
  v219 = v45;
  *(v45 + 41) = 0u;
  v46 = v12 + qword_1EDEAFB38;
  *v46 = 0;
  *(v46 + 8) = 1;
  v47 = v12 + qword_1EDEAFAF0;
  *v47 = 0;
  *(v47 + 8) = 0;
  *(v47 + 16) = 1;
  v216 = qword_1EDEAFB18;
  *(v12 + qword_1EDEAFB18) = 0;
  v48 = (v12 + qword_1EDEBBE70);
  v49 = type metadata accessor for VFSCounters(0);
  *(v48 + 1) = 0;
  *(v48 + 2) = 0;
  *v48 = 0;
  v50 = *(v49 + 28);
  v218 = v48;
  sub_1CF9E5CC8();
  v213 = qword_1EDEAFAE0;
  *(v12 + qword_1EDEAFAE0) = 1;
  v51 = v12 + qword_1EDEAFAF8;
  v52 = sub_1CF4E24AC(MEMORY[0x1E69E7CC0]);
  *v51 = 0;
  *(v51 + 8) = v52;
  v214 = (v51 + 8);
  *(v12 + 176) = a8;
  *(v12 + 184) = a9;
  v53 = 0x1E83BC000;
  v225 = v39;
  if (a7)
  {
    v54 = a7;
  }

  else
  {
    v231 = 0;
    v55 = a3;
    v56 = a2[2];
    v57 = a2[3];
    if (qword_1EDEAE418 != -1)
    {
      swift_once();
    }

    v58 = qword_1EDEBBD70;
    v59 = objc_allocWithZone(FPFSChangeMonitor);
    v60 = v58;
    v61 = sub_1CF9E6888();
    v54 = [v59 initWithLabel:v61 workloop:v60 shouldWatchRoot:1];

    v53 = 0x1E83BC000uLL;
    a3 = v55;
    a7 = v231;
  }

  LODWORD(v224) = a10;
  *(v12 + 232) = v54;
  *&v232 = 0;
  *(&v232 + 1) = 0xE000000000000000;
  v221 = a7;
  sub_1CF9E7948();
  v63 = a2[2];
  v62 = a2[3];

  *&v232 = v63;
  *(&v232 + 1) = v62;
  MEMORY[0x1D3868CC0](0x657620646C6F203ALL, 0xEE00736E6F697372);
  if (qword_1EDEAE418 != -1)
  {
    swift_once();
  }

  v64 = qword_1EDEBBD70;
  v65 = objc_allocWithZone(*(v53 + 1728));
  v66 = v64;
  v67 = sub_1CF9E6888();

  v68 = [v65 initWithLabel:v67 workloop:v66 shouldWatchRoot:0];

  *(v12 + 248) = v68;
  *(v12 + 216) = [*(v12 + 232) delegationQueue];
  v69 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v12 + 208) = v69;
  [v69 setUnderlyingQueue_];
  [*(v12 + 208) setMaxConcurrentOperationCount_];
  *&v232 = sub_1CF9E5A18();
  *(&v232 + 1) = v70;

  MEMORY[0x1D3868CC0](0x6F7473626D6F742FLL, 0xEB000000002F656ELL);

  v71 = v232;
  type metadata accessor for DocumentTrackingTombstoneSlayer();
  v72 = swift_allocObject();
  *(v72 + 32) = 1;
  *(v72 + 34) = 0;
  *(v72 + 16) = v71;
  sub_1CF4D406C();
  *(v12 + 256) = v72;
  *(v12 + 264) = sub_1CF4E25A8(MEMORY[0x1E69E7CC0]);
  *(v12 + 272) = dispatch_group_create();
  v73 = qword_1EDEAFB40;
  swift_beginAccess();
  v235 = 0;
  v212 = v73;
  sub_1CF9E6268();
  swift_endAccess();
  v74 = qword_1EDEAFB48;
  swift_beginAccess();
  v235 = 0;
  v211 = v74;
  sub_1CF9E6268();
  swift_endAccess();
  *(v12 + 168) = a3;
  v75 = a2 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  swift_beginAccess();
  LODWORD(v223) = *(v75 + 8);
  v222 = a3;
  v76 = a2 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v231 = a2;
  v77 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext);
  v78 = *(v76 + 8);
  LOBYTE(v65) = *(v76 + 24);
  v79 = *(v76 + 25);
  LOBYTE(v67) = *(v76 + 26);
  v80 = type metadata accessor for VFSLookupScope();
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  v83 = swift_allocObject();
  *(v83 + 40) = 0;
  *(v83 + 48) = 1;
  v84 = *(v76 + 16);
  v85 = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v83 + 64) = v77;
  *(v83 + 96) = v85;
  *(v83 + 56) = 0;
  *(v83 + 72) = v78;
  *(v83 + 80) = v84;
  *(v83 + 88) = v65;
  *(v83 + 89) = v79;
  *(v83 + 90) = v67;
  swift_retain_n();
  v86 = v222;
  v88 = v225;
  v87 = v226;
  sub_1CF3658E0(v225, v227, v223, v224 & 1, &v232);
  if (v87)
  {

    sub_1CF2B9AAC(v83 + 64);

    sub_1CEFF7124(v228);

    v89 = *(v83 + 96);

    v90 = *(*v83 + 48);
    v91 = *(*v83 + 52);
    swift_deallocPartialClassInstance();

    v92 = *(v12 + 184);

    v93 = *(v12 + 192);

    v94 = *(v12 + 200);

    v95 = *(v12 + 224);

    v96 = *(v12 + 256);

    v97 = *(v12 + 264);

    sub_1CF02B994(v12 + 280);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48E0, &unk_1CFA00680);
    (*(*(v98 - 8) + 8))(v12 + v212, v98);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
    (*(*(v99 - 8) + 8))(v12 + v211, v99);
    v100 = *(v12 + v215);

    v101 = *(v12 + v217);

    v102 = v219[1];
    v232 = *v219;
    v233 = v102;
    *v234 = v219[2];
    *&v234[9] = *(v219 + 41);
    sub_1CEFCCC44(&v232, &unk_1EC4BEDF0, &qword_1CFA00818);
    v103 = *(v12 + v216);

    sub_1CEFE5888(v218, type metadata accessor for VFSCounters);
    sub_1CF00D644(*(v12 + v213));
    sub_1CEFCCC44(v214, &qword_1EC4BEC48, &unk_1CFA00690);
    type metadata accessor for VFSFileTree(0);
    v104 = *(*v12 + 48);
    v105 = *(*v12 + 52);
    swift_deallocPartialClassInstance();
    return v12;
  }

  v224 = v78;
  v219 = v86;
  v226 = 0;
  v106 = v232;
  v107 = v233;
  v223 = *(&v233 + 1);
  LODWORD(v222) = v234[0];

  v108 = v207;
  v109 = *(v207 + 32);
  v110 = v88;
  v111 = v208;
  result = v109(v220, v110, v208);
  *(v83 + 16) = v107;
  *(v83 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v106;
  if (!*(v106 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  result = (*(v108 + 16))(v83 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v106 + ((*(v108 + 80) + 32) & ~*(v108 + 80)), v111);
  *(v83 + 32) = *(&v106 + 1);
  if (!*(*(&v106 + 1) + 16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v112 = *(*(&v106 + 1) + 32);

  *(v83 + 24) = v112;
  v109((v83 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL), v220, v111);
  *(v83 + 40) = v223;
  *(v83 + 48) = v222;
  *(v83 + 49) = 0;
  *(v83 + 50) = a11 & 1;
  *(v12 + 160) = v83;
  *(v12 + 240) = MEMORY[0x1E69E7CC0];
  v114 = v229;
  v113 = v230;
  *(v12 + qword_1EDEAFB20) = v230;
  v115 = v113;
  v116 = (v12 + qword_1EDEAFB08);
  v117 = v228;
  *v116 = v228;
  v116[1] = v114;
  v118 = objc_opt_self();
  v227 = v115;
  sub_1CF03C63C(v117);

  v119 = [v118 defaultStore];
  v120 = [v119 softConcurrentOperationLimit];
  LODWORD(v117) = [v119 hardConcurrentOperationLimit];

  v121 = v117;
  type metadata accessor for JobLimit();
  v122 = swift_allocObject();
  v122[2] = 0;
  v122[3] = v120;
  v122[4] = v120;
  v122[5] = v121;
  v123 = [v118 defaultStore];
  v124 = [v123 softConcurrentContentUpdateLimit];
  LODWORD(v120) = [v123 hardConcurrentContentUpdateLimit];

  v125 = v120;
  v126 = swift_allocObject();
  v126[2] = 0;
  v126[3] = v124;
  v126[4] = v124;
  v126[5] = v125;
  v127 = [v118 defaultStore];
  v128 = [v127 softConcurrentMetadataOnlyUpdateLimit];
  LODWORD(v124) = [v127 hardConcurrentMetadataOnlyUpdateLimit];

  v129 = v124;
  v130 = swift_allocObject();
  v130[2] = 0;
  v130[3] = v128;
  v130[4] = v128;
  v130[5] = v129;
  v131 = [v118 defaultStore];
  v132 = [v131 softConcurrentProvideFileLimit];
  LODWORD(v129) = [v131 hardConcurrentProvideFileLimit];

  v133 = v129;
  v134 = v231;
  v135 = swift_allocObject();
  v135[2] = 0;
  v135[3] = v132;
  v135[4] = v132;
  v135[5] = v133;
  *(v12 + 112) = 0;
  *(v12 + 144) = 0;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 120) = 0;
  *(v12 + 128) = 0;
  (*(*v12 + 520))();
  *(v12 + 136) = v134;
  *(v12 + 80) = v122;
  *(v12 + 88) = v126;
  *(v12 + 96) = v130;
  *(v12 + 104) = v135;
  type metadata accessor for OldVersionClonesEventsDelegate();
  v136 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v137 = *(v12 + qword_1EDEAFB18);
  *(v12 + qword_1EDEAFB18) = v136;

  v138 = *(v12 + 160);

  v139 = v226;
  sub_1CF368510(v230);
  if (v139)
  {

    sub_1CEFF7124(v228);

    return v12;
  }

  result = [*(v12 + 232) latency];
  v141 = v140 * 5000.0;
  if (v141 <= 100.0)
  {
    v141 = 100.0;
    goto LABEL_20;
  }

  if ((*&v141 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_20:
  if (v141 > -9.22337204e18)
  {
    v226 = 0;
    if (v141 < 9.22337204e18)
    {
      v142 = v141;
      v143 = qword_1EDEAFB40;
      swift_beginAccess();
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48E0, &unk_1CFA00680);
      v225 = v143;
      v145 = v201;
      v224 = v144;
      sub_1CF9E6278();
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
      v146 = v193;
      sub_1CF9E6278();
      swift_endAccess();
      v147 = sub_1CEFCCCEC(&qword_1EDEAB6E8, &qword_1EC4BEE40, &qword_1CFA00858);
      sub_1CEFCCCEC(&unk_1EDEAB6F0, &qword_1EC4C50F0, &qword_1CFA00850);
      v148 = v202;
      v149 = v195;
      v223 = v147;
      sub_1CF9E62C8();
      (*(v194 + 8))(v146, v149);
      v150 = *(v209 + 8);
      v209 += 8;
      v222 = v150;
      (v150)(v145, v148);
      v151 = v203;
      v230 = v142;
      sub_1CF9E7358();
      *&v232 = *(v12 + 216);
      v152 = v232;
      v153 = sub_1CF9E7338();
      v154 = *(v153 - 8);
      v155 = *(v154 + 56);
      v156 = v204;
      v220 = v153;
      v218 = v155;
      v217 = v154 + 56;
      (v155)(v204, 1, 1);
      v157 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
      sub_1CEFCCCEC(&unk_1EDEAB710, &qword_1EC4BEE48, &qword_1CFA00860);
      v158 = sub_1CF2B1654(&qword_1EDEAB610, &qword_1EDEAED70, 0x1E69E9610);
      v159 = v152;
      v160 = v198;
      v161 = v197;
      v216 = v157;
      v215 = v158;
      v162 = v206;
      sub_1CF9E62D8();
      sub_1CEFCCC44(v156, &unk_1EC4BEE30, &unk_1CFA03240);

      v163 = *(v210 + 8);
      v210 += 8;
      v214 = v163;
      v163(v151, v205);
      (*(v196 + 8))(v162, v161);
      swift_allocObject();
      swift_weakInit();
      sub_1CEFCCCEC(&qword_1EDEAB700, &unk_1EC4BEE50, &qword_1CFA00868);
      swift_retain_n();
      v164 = v200;
      v165 = sub_1CF9E62F8();

      (*(v199 + 8))(v160, v164);
      v166 = *(v12 + qword_1EDEBBE78);
      *(v12 + qword_1EDEBBE78) = v165;

      [*(v12 + 232) latency];
      if (v167 == 0.0)
      {
        v168 = 10 * v230;
        if ((v230 * 10) >> 64 == (10 * v230) >> 63)
        {
LABEL_26:
          swift_beginAccess();
          v169 = v201;
          sub_1CF9E6278();
          swift_endAccess();
          v170 = v203;
          v171 = v168;
          sub_1CF9E7358();
          *&v232 = *(v12 + 216);
          v172 = v232;
          v173 = v204;
          v218(v204, 1, 1, v220);
          v174 = v172;
          v175 = v187;
          v176 = v202;
          sub_1CF9E62D8();
          sub_1CEFCCC44(v173, &unk_1EC4BEE30, &unk_1CFA03240);

          v214(v170, v205);
          (v222)(v169, v176);
          swift_allocObject();
          swift_weakInit();

          sub_1CEFCCCEC(&qword_1EDEAB708, &qword_1EC4BEE28, &unk_1CFA00840);
          v177 = v189;
          v178 = sub_1CF9E62F8();

          (*(v188 + 8))(v175, v177);
          v179 = *(v12 + qword_1EDEBBE80);
          *(v12 + qword_1EDEBBE80) = v178;

          v180 = fpfs_current_or_default_log();
          v181 = v190;
          sub_1CF9E6128();
          v182 = sub_1CF9E6108();
          v183 = sub_1CF9E7288();
          if (os_log_type_enabled(v182, v183))
          {
            v184 = swift_slowAlloc();
            *v184 = 134218240;
            *(v184 + 4) = v230;
            *(v184 + 12) = 2048;
            *(v184 + 14) = v171;
            _os_log_impl(&dword_1CEFC7000, v182, v183, "idle stream timeouts: %ldms, long: %ldms", v184, 0x16u);
            MEMORY[0x1D386CDC0](v184, -1, -1);

            sub_1CEFF7124(v228);
          }

          else
          {

            sub_1CEFF7124(v228);
          }

          v185 = v227;

          (*(v191 + 8))(v181, v192);

          return v12;
        }

        __break(1u);
      }

      v168 = 60000;
      goto LABEL_26;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1CF25EBC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    if (v1 == v13)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CF9E6298();

      if (v2 == v13)
      {
        v5 = v4 + qword_1EDEAFB30;
        swift_beginAccess();
        if (*(v5 + 8) || [*(v4 + 232) hasBufferedEvents])
        {
          v6 = v4 + qword_1EDEAFAF0;
          *v6 = v1;
          *(v6 + 8) = v2;
          *(v6 + 16) = 0;
        }

        else
        {
          v7 = *(v4 + 16);
          if (v7)
          {
            v8 = *(v4 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
            v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
            v10 = *(v9 + 72);
            v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
            v12 = swift_allocObject();
            *(v12 + 16) = xmmword_1CF9FA450;
            swift_storeEnumTagMultiPayload();

            v7(v12, MEMORY[0x1E69E7CC0], 0, 0);
            sub_1CEFF7124(v7);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CF25EE10(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    if (v1 == v12)
    {
      v4 = v3 + qword_1EDEAFB30;
      swift_beginAccess();
      if (*(v4 + 8) || [*(v3 + 232) hasBufferedEvents])
      {
        v5 = v3 + qword_1EDEAFB38;
        *v5 = v1;
        *(v5 + 8) = 0;
      }

      else
      {
        v6 = *(v3 + 16);
        if (v6)
        {
          v7 = *(v3 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
          v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
          v9 = *(v8 + 72);
          v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_1CF9FA450;
          swift_storeEnumTagMultiPayload();

          v6(v11, MEMORY[0x1E69E7CC0], 0, 0);
          sub_1CEFF7124(v6);
        }
      }
    }
  }

  return result;
}

void *sub_1CF25F010()
{
  v1 = qword_1EDEAFAE0;
  v2 = *(v0 + qword_1EDEAFAE0);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = v0;
    v5 = *(v0 + qword_1EDEAFB08);
    if (v5)
    {
      v6 = *(v0 + qword_1EDEAFB08 + 8);
      v7 = v5();
      v3 = v7;
      if (v7)
      {
        sub_1CF25F0C0(v7, 0, 1);
      }
    }

    else
    {
      v3 = 0;
    }

    v8 = *(v4 + v1);
    *(v4 + v1) = v3;
    v9 = v3;
    sub_1CF00D644(v8);
  }

  sub_1CF2B1FC4(v2);
  return v3;
}

void sub_1CF25F0C0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(v4 + qword_1EDEAFB20);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 pathComponents];
    v11 = sub_1CF9E6D48();

    v12 = *(v11 + 16);

    if (v12 >= 2)
    {
      v8 = [v9 stringByDeletingLastPathComponent];
      if (!v8)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v8 = sub_1CF9E6888();
      }
    }
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v8;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3 & 1;
  v17[4] = sub_1CF2B1FB4;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1CF2D00A0;
  v17[3] = &block_descriptor_1423;
  v15 = _Block_copy(v17);
  v16 = v8;

  [a1 setModifyDecoratedPayloadHook:v15 forCategory:1];
  _Block_release(v15);
}

void sub_1CF25F284(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 112) & 1) == 0)
    {
      if (a5)
      {
        v12 = objc_opt_self();
        v13 = a5;
        v14 = [v12 defaultStore];
        v15 = [v14 dynamicErrorSampleRatePerProvider];

        v16 = sub_1CF9E6D48();
        v17 = sub_1CF51810C(v13, v16);
        LOBYTE(v15) = v18;

        if (v15)
        {

          goto LABEL_9;
        }

        v19 = sub_1CF518B08(0x64uLL);

        if (__OFADD__(v19, 1))
        {
          __break(1u);
          return;
        }

        if (v17 >= (v19 + 1))
        {
          goto LABEL_9;
        }
      }

      [a3 removeAllObjects];
LABEL_16:

      return;
    }

LABEL_9:
    v20 = sub_1CF9E6888();
    [a3 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (a2)
    {
      v21 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v22 = [v25 fp_protectionClassBehindError];
        if (v22)
        {
          v23 = v22;
          [a3 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
        }

        if ((a7 & 1) == 0)
        {
          v24 = sub_1CF9E7628();
          [a3 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
        }
      }
    }

    goto LABEL_16;
  }
}

uint64_t sub_1CF25F590@<X0>(uint64_t a1@<X8>)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v15 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v4 = v1[20];

  v5 = objc_sync_exit(v1);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v15 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v6 = objc_opt_self();
  v7 = *(v4 + 16);

  v8 = [v6 eventStreamUUIDForDevice_];
  if (v8)
  {
    v9 = v8;
    sub_1CF9E5D58();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_1CF9E5D98();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

uint64_t sub_1CF25F72C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v32) = a2;
  v5 = sub_1CF9E63D8();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = *(v3 + 216);
  v17 = *(v3 + 224);
  v18 = sub_1CF9E6448();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v15, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v32 & 1;
  *(v20 + 32) = v3;
  v21 = v16;

  v22 = fpfs_current_log();
  v32 = *(v17 + 16);
  sub_1CEFCCBDC(v15, v13, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4BE370, qword_1CFA01B30);
    v23 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (*(v19 + 8))(v13, v18);
    v23 = sub_1CF9E63C8();
    (*(v30 + 8))(v8, v31);
  }

  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = sub_1CF2B1F18;
  v24[4] = v20;
  v37 = sub_1CF2BA17C;
  v38 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CEFCA444;
  v36 = &block_descriptor_1411;
  v25 = _Block_copy(&aBlock);
  v26 = v22;

  v37 = nullsub_1;
  v38 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CEFCA444;
  v36 = &block_descriptor_1414;
  v27 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v32, v21, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v23, v25, v27);
  _Block_release(v27);
  _Block_release(v25);

  return sub_1CEFCCC44(v15, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF25FB1C(int64_t a1, int a2, uint64_t a3)
{
  v40 = a3;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  if (qword_1EDEA8528 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBB990;
  (*(v6 + 56))(v16, 1, 1, v5);
  v39 = a2;
  v38 = a1;
  v18 = sub_1CF953A9C(a1, a2 & 1);
  v20 = v19;
  sub_1CEFCCBDC(v16, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(v6 + 48);
  if (v21(v14, 1, v5) == 1)
  {
    v22 = v17;
    sub_1CF9E6048();
    if (v21(v14, 1, v5) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v14, v5);
  }

  sub_1CF9E7478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v23 = swift_allocObject();
  v37 = xmmword_1CF9FA450;
  *(v23 + 16) = xmmword_1CF9FA450;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1CEFD51C4();
  *(v23 + 32) = v18;
  *(v23 + 40) = v20;
  sub_1CF9E6028();

  (*(v6 + 8))(v9, v5);

  result = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(v40 + 16);
  if (v25)
  {
    v26 = *(v40 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v37;
    v31 = v30 + v29;
    *v31 = 0;
    *(v31 + 8) = v38;
    *(v31 + 16) = v39 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v32 = *(type metadata accessor for SyncState() - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1CF9FA440;
    v36 = v35 + v34;

    *v36 = FSEventsGetCurrentEventId();
    *(v36 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1CF25F590(v36 + v33);
    swift_storeEnumTagMultiPayload();
    v25(v30, v35, 0, 0);
    sub_1CEFF7124(v25);
  }

  return result;
}

void (*sub_1CF26003C())(uint64_t *, void)
{
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_1CF9E6288();
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v1;
    result(&v2, 0);
  }

  return result;
}

void sub_1CF2600E0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = *(v1 + 136);
  v9 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  swift_beginAccess();
  if (!*(v8 + v9))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v10 = sub_1CF9E6A58();
  v12 = v11;
  strcpy(v26, "/oldVersions");
  BYTE5(v26[1]) = 0;
  HIWORD(v26[1]) = -5120;
  v27 = v10;
  v28 = v11;

  v27 = sub_1CF9E6B48();
  v28 = v13;
  sub_1CF9E6A28();
  v25 = *(v2 + 248);
  v14 = sub_1CF9E6888();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  v24 = v26[0];
  sub_1CEFCCBDC(a1, v7, &unk_1EC4BEDE0, qword_1CF9FA390);
  v15 = sub_1CF9E5D98();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v7, 1, v15) != 1)
  {
    v17 = sub_1CF9E5D38();
    (*(v16 + 8))(v7, v15);
  }

  v18 = *(v2 + qword_1EDEAFB18);
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = *(v2 + qword_1EDEAFB18);

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_1CF9E7948();

  v26[0] = 0xD000000000000015;
  v26[1] = 0x80000001CFA3D930;
  MEMORY[0x1D3868CC0](v10, v12);

  v20 = sub_1CF9E6888();

  v21 = [v25 subscribeToEventsAtPath:v14 fd:0xFFFFFFFFLL sinceEventID:v24 streamUUID:v17 ignoreOwnEvents:0 delegate:v18 purpose:v20];

  swift_beginAccess();
  v22 = v21;
  MEMORY[0x1D3868FA0]();
  if (*((*(v2 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v23 = *((*(v2 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  swift_endAccess();
}

uint64_t sub_1CF260470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80 = a3;
  v6 = v5;
  v83 = *MEMORY[0x1E69E9840];
  v10 = sub_1CF9E6118();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v78 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v70 - v18;
  sub_1CF25F590(&v70 - v18);
  v20 = sub_1CF9E5D98();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v73 = v21 + 48;
  v74 = v22;
  if (v22(v19, 1, v20) == 1)
  {
    v75 = v19;
    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v24 = sub_1CF9E6108();
    v25 = sub_1CF9E72A8();
    if (os_log_type_enabled(v24, v25))
    {
      v71 = a4;
      v72 = a5;
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      if (objc_sync_enter(v6))
      {

        MEMORY[0x1EEE9AC00](v66);
        v67 = &v70 - 4;
        *(&v70 - 2) = v6;
        goto LABEL_42;
      }

      v70 = a2;
      v27 = v6;
      v28 = v6[20];

      if (objc_sync_exit(v27))
      {

        MEMORY[0x1EEE9AC00](v68);
        v69 = &v70 - 4;
        *(&v70 - 2) = v27;
        goto LABEL_44;
      }

      v29 = *(v28 + 16);

      *(v26 + 4) = v29;

      _os_log_impl(&dword_1CEFC7000, v24, v25, "Unable to retrieve FSEvent stream UUID for device %d", v26, 8u);
      MEMORY[0x1D386CDC0](v26, -1, -1);

      v6 = v27;
      a4 = v71;
      a5 = v72;
      a2 = v70;
    }

    else
    {
    }

    (*(v76 + 8))(v13, v77);
    v19 = v75;
  }

  ObjectType = swift_getObjectType();
  v31 = v79;
  v32 = v80;
  v33 = sub_1CF95F4C4(v80, ObjectType, a4, a2, a5);
  if (v31)
  {
LABEL_10:
    v40 = v19;
    goto LABEL_11;
  }

  v35 = a4;
  v36 = v6;
  v37 = a5;
  v38 = v34;
  v39 = v33;
  sub_1CF95F5EC(v32, ObjectType, v35, a2, v37, v78);
  if (v38)
  {
    v43 = v36;
    sub_1CF25F72C(0, 1);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    v39 = v82;
    v44 = v78;
    goto LABEL_20;
  }

  v44 = v78;
  v45 = v74;
  if (v74(v78, 1, v20) == 1)
  {
    v46 = 1;
LABEL_18:
    v43 = v36;
    sub_1CF25F72C(v46, 1);
    goto LABEL_20;
  }

  if (v45(v19, 1, v20) == 1)
  {
    v46 = 2;
    goto LABEL_18;
  }

  v43 = v36;
LABEL_20:
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v39;

  sub_1CF9E62A8();
  v47 = objc_sync_enter(v43);
  if (v47)
  {
    MEMORY[0x1EEE9AC00](v47);
    v67 = &v70 - 4;
    *(&v70 - 2) = v43;
LABEL_42:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v67, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v48 = v43[20];

  v49 = objc_sync_exit(v43);
  if (v49)
  {
    MEMORY[0x1EEE9AC00](v49);
    v69 = &v70 - 4;
    *(&v70 - 2) = v43;
LABEL_44:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v69, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v75 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  v51 = v43[29];
  v52 = *(v48 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);
  MEMORY[0x1EEE9AC00](v50);
  *(&v70 - 6) = v54;
  *(&v70 - 5) = v53;
  *(&v70 - 4) = v44;
  *(&v70 - 3) = v48;
  *(&v70 - 2) = v43;
  v56 = sub_1CF25A464(sub_1CF2B1720, (&v70 - 8), v55);

  swift_beginAccess();
  v57 = v43[30];
  v43[30] = v56;

  sub_1CF2600E0(v44);
  v58 = v43[30];
  if (v58 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
  {

    if (!i)
    {
      break;
    }

    v60 = 0;
    while (1)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x1D3869C30](v60, v58);
      }

      else
      {
        if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v61 = *(v58 + 8 * v60 + 32);
      }

      v62 = v61;
      v63 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v81 = 0;
      if (![v61 activateWithError_])
      {
        v65 = v81;

        sub_1CF9E57F8();

        swift_willThrow();
        sub_1CEFCCC44(v78, &unk_1EC4BEDE0, qword_1CF9FA390);
        v19 = v75;
        goto LABEL_10;
      }

      v64 = v81;

      ++v60;
      if (v63 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_34:

  sub_1CEFCCC44(v78, &unk_1EC4BEDE0, qword_1CF9FA390);
  v40 = v75;
LABEL_11:
  result = sub_1CEFCCC44(v40, &unk_1EC4BEDE0, qword_1CF9FA390);
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF260C6C()
{
  v1 = v0;
  v2 = *(v0 + 216);
  v3 = fpfs_current_log();
  v4 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v18 = v5;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v6 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v6);

  sub_1CF9E6978();

  v7 = __fp_log_fork();

  v25 = v7;
  v26 = 0;
  v13[2] = v3;
  v13[3] = &v25;
  v13[4] = v2;
  v13[5] = "stopEventAggregation()";
  v13[6] = 22;
  v14 = 2;
  v15 = sub_1CF2B16D8;
  v16 = v1;
  v24 = 1;
  v23 = 0;
  v8 = swift_allocObject();
  v8[2] = &v24;
  v8[3] = sub_1CF2BA13C;
  v8[4] = v13;
  v8[5] = &v23;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF2BA170;
  *(v9 + 24) = v8;
  v21 = sub_1CF1C0B54;
  v22 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1CEFFD02C;
  v20 = &block_descriptor_1056;
  v10 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v2, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!v23)
  {
    if ((v24 & 1) == 0)
    {

      v11 = fpfs_adopt_log();

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  swift_willThrow();

  v12 = fpfs_adopt_log();
  __break(1u);
}

uint64_t sub_1CF260F2C(void *a1)
{
  a1[36] = 0;
  swift_unknownObjectWeakAssign();
  v2 = a1[2];
  v3 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  sub_1CEFF7124(v2);
  v4 = a1[6];
  v5 = a1[7];
  a1[6] = 0;
  a1[7] = 0;
  return sub_1CEFF7124(v4);
}

void sub_1CF260F7C()
{
  v1 = v0;
  v2 = *(v0 + 216);
  v3 = fpfs_current_log();
  v4 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v18 = v5;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v6 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v6);

  sub_1CF9E6978();

  v7 = __fp_log_fork();

  v25 = v7;
  v26 = 0;
  v13[2] = v3;
  v13[3] = &v25;
  v13[4] = v2;
  v13[5] = "cancel()";
  v13[6] = 8;
  v14 = 2;
  v15 = sub_1CF2B16BC;
  v16 = v1;
  v24 = 1;
  v23 = 0;
  v8 = swift_allocObject();
  v8[2] = &v24;
  v8[3] = sub_1CF2BA13C;
  v8[4] = v13;
  v8[5] = &v23;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF2BA170;
  *(v9 + 24) = v8;
  v21 = sub_1CF1C0B54;
  v22 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1CEFFD02C;
  v20 = &block_descriptor_1044;
  v10 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v2, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!v23)
  {
    if ((v24 & 1) == 0)
    {

      v11 = fpfs_adopt_log();

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  swift_willThrow();

  v12 = fpfs_adopt_log();
  __break(1u);
}

uint64_t sub_1CF26123C(void *a1)
{
  swift_beginAccess();
  v3 = a1[24];
  v31 = v1;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_31;
  }

LABEL_2:

  v4 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v5 = a1[24];
    a1[24] = v4;

    v6 = sub_1CF4E2378(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    v7 = a1[25];
    a1[25] = v6;

    if ((v3 & 0xC000000000000001) != 0)
    {
      sub_1CF9E7808();
      sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
      sub_1CF2B1654(&unk_1EC4BEDB0, &unk_1EDEA3640, 0x1E696ABF8);
      sub_1CF9E7038();
      v3 = v33;
      v8 = v34;
      v9 = v35;
      v10 = v36;
      v11 = v37;
    }

    else
    {
      v10 = 0;
      v12 = -1 << *(v3 + 32);
      v8 = v3 + 56;
      v9 = ~v12;
      v13 = -v12;
      v14 = v13 < 64 ? ~(-1 << v13) : -1;
      v11 = v14 & *(v3 + 56);
    }

    v15 = (v9 + 64) >> 6;
    if (v3 < 0)
    {
      break;
    }

LABEL_10:
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (v11)
    {
LABEL_14:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v3 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (v20)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_20;
      }

      v17 = *(v8 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:
    if (!sub_1CF9E7818())
    {
      goto LABEL_2;
    }

    sub_1CF6F3CF4(MEMORY[0x1E69E7CC0]);
  }

  while (sub_1CF9E7838())
  {
    sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
    swift_dynamicCast();
    v20 = v32;
    v18 = v10;
    v19 = v11;
    if (!v32)
    {
      break;
    }

LABEL_18:
    [v20 cancel];

    v10 = v18;
    v11 = v19;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_20:
  sub_1CEFCB59C();
  fp_task_tracker_cancel(*(a1[28] + 16));
  result = swift_beginAccess();
  v22 = a1[30];
  if (v22 >> 62)
  {
    if (v22 < 0)
    {
      v30 = a1[30];
    }

    result = sub_1CF9E7818();
    v23 = result;
    if (!result)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
LABEL_29:
      v27 = a1[30];
      a1[30] = MEMORY[0x1E69E7CC0];

      v28 = *(a1 + qword_1EDEBBE78);
      *(a1 + qword_1EDEBBE78) = 0;

      v29 = *(a1 + qword_1EDEBBE80);
      *(a1 + qword_1EDEBBE80) = 0;
    }
  }

  if (v23 >= 1)
  {

    for (i = 0; i != v23; ++i)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1D3869C30](i, v22);
      }

      else
      {
        v25 = *(v22 + 8 * i + 32);
      }

      v26 = v25;
      [v25 dispose];
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

id sub_1CF2615EC()
{
  v1 = v0;
  fp_task_tracker_wait(*(*(v0 + 224) + 16));
  [*(v0 + 208) waitUntilAllOperationsAreFinished];
  swift_beginAccess();
  v2 = *(v0 + 264);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 264);
  swift_bridgeObjectRetain_n();
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
      sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
      v12 = v11;
      sub_1CF9E7418();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v13 = *(v0 + 216);
  v14 = fpfs_current_log();
  v30 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v32 = v15;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v16 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v16);

  sub_1CF9E6978();

  v17 = __fp_log_fork();

  v39 = v17;
  v40 = 0;
  MEMORY[0x1EEE9AC00](v18);
  v26[2] = v14;
  v26[3] = &v39;
  v26[4] = v13;
  v26[5] = "close()";
  v26[6] = 7;
  v27 = 2;
  v28 = nullsub_1;
  v29 = 0;
  v38 = 1;
  v37 = 0;
  v19 = swift_allocObject();
  v19[2] = &v38;
  v19[3] = sub_1CF2B1698;
  v19[4] = v26;
  v19[5] = &v37;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF2B16B0;
  *(v20 + 24) = v19;
  v35 = sub_1CEFFD054;
  v36 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1CEFFD02C;
  v34 = &block_descriptor_1032;
  v21 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v13, v21);
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v37)
  {
    goto LABEL_18;
  }

  if ((v38 & 1) == 0)
  {

    v22 = v30;
    v23 = fpfs_adopt_log();

    [*(v1 + 232) close];
    [*(v1 + 248) close];
    v24 = *(v1 + qword_1EDEAFB18);
    *(v1 + qword_1EDEAFB18) = 0;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  swift_willThrow();

  result = fpfs_adopt_log();
  __break(1u);
  return result;
}

uint64_t sub_1CF261A18(uint64_t a1)
{
  v3 = v1;
  v147 = a1;
  v157[3] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v148 = &v134 - v9;
  v155 = sub_1CF9E5A58();
  v153 = *(v155 - 8);
  v10 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v140 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v146 = &v134 - v17;
  v18 = sub_1CF9E64A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v3[27];
  *v23 = v24;
  (*(v19 + 104))(v23, *MEMORY[0x1E69E8020], v18, v21);
  v25 = v24;
  v26 = sub_1CF9E64D8();
  (*(v19 + 8))(v23, v18);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v145 = v12;
  v27 = objc_sync_enter(v3);
  if (v27)
  {
    goto LABEL_71;
  }

  v28 = v3[20];

  v29 = objc_sync_exit(v3);
  v30 = v146;
  if (v29)
  {
LABEL_72:
    MEMORY[0x1EEE9AC00](v29);
    *(&v134 - 2) = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v134 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v31 = *(v28 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v32 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v33 = v147;

  v34 = sub_1CF9E6108();
  v35 = sub_1CF9E7288();

  v143 = v35;
  v36 = os_log_type_enabled(v34, v35);
  v144 = v13;
  if (v36)
  {
    v136 = v34;
    v137 = v7;
    v37 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v157[0] = v135;
    v142 = v37;
    *v37 = 136315394;
    v38 = *(v33 + 16);
    v39 = MEMORY[0x1E69E7CC0];
    v141 = v3;
    v139 = v2;
    v138 = v31;
    if (v38)
    {
      v156 = MEMORY[0x1E69E7CC0];
      sub_1CEFE95CC(0, v38, 0);
      v39 = v156;
      v40 = *(v153 + 16);
      v41 = v33 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
      v150 = *(v153 + 72);
      v151 = v40;
      v152 = (v153 + 16);
      v149 = (v153 + 8);
      do
      {
        v42 = v154;
        v43 = v155;
        (v151)(v154, v41, v155);
        v44 = sub_1CF9E5928();
        v45 = [v44 fp_shortDescription];

        v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v48 = v47;

        (*v149)(v42, v43);
        v156 = v39;
        v50 = v39[2];
        v49 = v39[3];
        if (v50 >= v49 >> 1)
        {
          sub_1CEFE95CC((v49 > 1), v50 + 1, 1);
          v39 = v156;
        }

        v39[2] = v50 + 1;
        v51 = &v39[2 * v50];
        v51[4] = v46;
        v51[5] = v48;
        v41 += v150;
        --v38;
      }

      while (v38);
      v3 = v141;
      v13 = v144;
      v55 = v145;
      v56 = v139;
      v31 = v138;
    }

    else
    {
      v56 = v2;
      v55 = v145;
    }

    v57 = MEMORY[0x1D3868FE0](v39, MEMORY[0x1E69E6158]);
    v59 = v58;

    v60 = sub_1CEFD0DF0(v57, v59, v157);

    v61 = v142;
    *(v142 + 1) = v60;
    *(v61 + 6) = 2080;
    v62 = *(v31 + 16);
    if (v62)
    {
      v156 = MEMORY[0x1E69E7CC0];
      sub_1CEFE95CC(0, v62, 0);
      v63 = v156;
      v64 = *(v153 + 16);
      v65 = v31 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
      v151 = *(v153 + 72);
      v152 = v64;
      v153 += 16;
      v150 = (v153 - 8);
      do
      {
        v66 = v154;
        v67 = v155;
        v152(v154, v65, v155);
        v68 = sub_1CF9E5928();
        v69 = [v68 fp_shortDescription];

        v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v72 = v71;

        (*v150)(v66, v67);
        v156 = v63;
        v74 = v63[2];
        v73 = v63[3];
        if (v74 >= v73 >> 1)
        {
          sub_1CEFE95CC((v73 > 1), v74 + 1, 1);
          v63 = v156;
        }

        v63[2] = v74 + 1;
        v75 = &v63[2 * v74];
        v75[4] = v70;
        v75[5] = v72;
        v65 += v151;
        --v62;
      }

      while (v62);

      v3 = v141;
      v13 = v144;
      v55 = v145;
      v56 = v139;
    }

    else
    {

      v63 = MEMORY[0x1E69E7CC0];
    }

    v76 = MEMORY[0x1D3868FE0](v63, MEMORY[0x1E69E6158]);
    v78 = v77;

    v79 = sub_1CEFD0DF0(v76, v78, v157);

    v80 = v142;
    *(v142 + 14) = v79;
    v81 = v136;
    _os_log_impl(&dword_1CEFC7000, v136, v143, "starting to observe fsevent on %s (was %s)", v80, 0x16u);
    v82 = v135;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v82, -1, -1);
    MEMORY[0x1D386CDC0](v80, -1, -1);

    v52 = *(v13 + 8);
    v52(v146, v55);
    v7 = v137;
    v33 = v147;
  }

  else
  {

    v52 = *(v13 + 8);
    v53 = v30;
    v54 = v145;
    v52(v53, v145);
    v56 = v2;
    v55 = v54;
  }

  v27 = objc_sync_enter(v3);
  if (v27)
  {
LABEL_71:
    MEMORY[0x1EEE9AC00](v27);
    *(&v134 - 2) = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v134 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v83 = v3[20];

  v29 = objc_sync_exit(v3);
  if (v29)
  {
    goto LABEL_72;
  }

  v26 = sub_1CF36A09C(v33, 1);
  v85 = v84;
  v87 = v86;

  if (v56)
  {
    goto LABEL_64;
  }

  v151 = v87;
  if ((v85 & 1) == 0)
  {

    v90 = fpfs_current_or_default_log();
    v91 = v140;
    sub_1CF9E6128();
    v92 = sub_1CF9E6108();
    v93 = sub_1CF9E7298();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_1CEFC7000, v92, v93, "roots haven't changed", v94, 2u);
      MEMORY[0x1D386CDC0](v94, -1, -1);
    }

    else
    {
    }

    result = (v52)(v91, v55);
    goto LABEL_64;
  }

  LODWORD(v149) = v85;

  sub_1CF2AAC1C(v89);

  sub_1CF368510(*(v3 + qword_1EDEAFB20));
  v95 = sub_1CF9E5D98();
  v96 = *(v95 - 8);
  v153 = *(v96 + 56);
  v154 = v95;
  v152 = (v96 + 56);
  (v153)(v148, 1, 1);
  swift_beginAccess();
  v97 = v3[30];
  v3[30] = MEMORY[0x1E69E7CC0];
  v155 = v97;
  v141 = v3;
  v150 = 0;
  if (v97 >> 62)
  {
LABEL_42:
    v98 = sub_1CF9E7818();
    v147 = v26;
    if (v98)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  v98 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v147 = v26;
  if (v98)
  {
LABEL_32:
    if (v98 < 1)
    {
      __break(1u);
    }

    v99 = 0;
    v100 = v155 & 0xC000000000000001;
    do
    {
      if (v100)
      {
        v104 = MEMORY[0x1D3869C30](v99, v155);
      }

      else
      {
        v104 = *(v155 + 8 * v99 + 32);
      }

      v105 = v104;
      v106 = [v104 eventStreamUUID];
      v107 = v7;
      if (v106)
      {
        v101 = v106;
        sub_1CF9E5D58();

        v102 = 0;
      }

      else
      {
        v102 = 1;
      }

      ++v99;
      v103 = v148;
      sub_1CEFCCC44(v148, &unk_1EC4BEDE0, qword_1CF9FA390);
      (v153)(v107, v102, 1, v154);
      sub_1CEFE55D0(v107, v103, &unk_1EC4BEDE0, qword_1CF9FA390);
      [v105 dispose];

      v7 = v107;
    }

    while (v98 != v99);
  }

LABEL_43:

  swift_getKeyPath();
  swift_getKeyPath();
  v108 = v141;
  sub_1CF9E6298();

  v110 = v108[29];
  v111 = *(v147 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);
  MEMORY[0x1EEE9AC00](v109);
  *(&v134 - 6) = v113;
  *(&v134 - 5) = v112;
  v114 = v148;
  *(&v134 - 4) = v148;
  *(&v134 - 3) = v115;
  *(&v134 - 2) = v108;
  v116 = v150;
  v118 = sub_1CF25A464(sub_1CF2B9F1C, (&v134 - 8), v117);
  v119 = v108[30];
  v108[30] = v118;

  sub_1CF2600E0(v114);
  v120 = v108[30];
  v150 = v116;
  if (v120 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
  {

    if (!i)
    {
      break;
    }

    v122 = 0;
    while (1)
    {
      if ((v120 & 0xC000000000000001) != 0)
      {
        v123 = MEMORY[0x1D3869C30](v122, v120);
      }

      else
      {
        if (v122 >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v123 = *(v120 + 8 * v122 + 32);
      }

      v124 = v123;
      v125 = v122 + 1;
      if (__OFADD__(v122, 1))
      {
        break;
      }

      v156 = 0;
      if (![v123 activateWithError_])
      {
        v132 = v156;

        sub_1CF9E57F8();

        swift_willThrow();

        goto LABEL_63;
      }

      v126 = v156;

      ++v122;
      if (v125 == i)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

LABEL_55:

  v127 = v141;
  if ((v149 & 0x100) != 0)
  {
    sub_1CF25F72C(4, 1);
  }

  v128 = v151;
  if (*(v151 + 16))
  {
    v129 = v127[2];
    if (v129)
    {
      v130 = v127[3];

      v131 = sub_1CF25A5A8(v128);

      v129(v131, MEMORY[0x1E69E7CC0], 0, 0);

      sub_1CEFF7124(v129);
    }

    else
    {
    }

LABEL_63:
    result = sub_1CEFCCC44(v148, &unk_1EC4BEDE0, qword_1CF9FA390);
  }

  else
  {
    sub_1CEFCCC44(v148, &unk_1EC4BEDE0, qword_1CF9FA390);
  }

LABEL_64:
  v133 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF262924(char a1)
{
  v3 = v1;
  v5 = objc_sync_enter(v3);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v22 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v21, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v6 = v3[20];

  v7 = objc_sync_exit(v3);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v22 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v21, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v8 = sub_1CF367450(a1 & 1);

  if (!v2 && (v8 & 1) != 0)
  {
    v10 = v3[2];
    if (v10)
    {
      v11 = v3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
      v13 = *(v12 + 72);
      v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1CF9FA450;
      v16 = v15 + v14;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
      v18 = *(v17 + 48);
      v19 = *(v17 + 64);
      *v16 = 1;
      *(v16 + 8) = 2;
      v20 = type metadata accessor for VFSItem(0);
      (*(*(v20 - 8) + 56))(v16 + v18, 1, 1, v20);
      *(v16 + v19) = 0;
      swift_storeEnumTagMultiPayload();

      v10(v15, MEMORY[0x1E69E7CC0], 0, 0);
      sub_1CEFF7124(v10);
    }
  }

  return result;
}

void sub_1CF262BC8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  if (*(v2[33] + 16) && (sub_1CF7BF2C0(v5, v6), (v7 & 1) != 0))
  {
    sub_1CF2B1EB8(&v35);
  }

  else
  {
    flock_type = fpfs_get_flock_type();
    v9 = v2[6];
    if (v9)
    {
      v10 = flock_type;
      v11 = v2[7];
      *&v35 = v5;
      BYTE8(v35) = v6;

      v9(&v35, v10, 0);
      sub_1CEFF7124(v9);
    }

    v12 = v3[27];
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v5;
    *(v14 + 32) = v6;
    *&v37 = sub_1CF2B1EAC;
    *(&v37 + 1) = v14;
    *&v35 = MEMORY[0x1E69E9820];
    *(&v35 + 1) = 1107296256;
    *&v36 = sub_1CEFCA444;
    *(&v36 + 1) = &block_descriptor_1386;
    v15 = _Block_copy(&v35);
    v16 = v12;

    v17 = fpfs_set_unlock_handler(a2, v16, v15);
    _Block_release(v15);

    if (v17)
    {
      v18 = v3[34];
      v19 = v17;
      dispatch_group_enter(v18);
      swift_beginAccess();
      v20 = v19;
      sub_1CF1C8D78(v17, v5, v6);
      swift_endAccess();
      sub_1CF2B1EB8(&v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      swift_allocError();
      *v21 = v35;
      v22 = v39;
      v24 = v36;
      v23 = v37;
      *(v21 + 48) = v38;
      *(v21 + 64) = v22;
      *(v21 + 16) = v24;
      *(v21 + 32) = v23;
      v26 = v41;
      v25 = v42;
      v27 = v40;
      *(v21 + 128) = v43;
      *(v21 + 96) = v26;
      *(v21 + 112) = v25;
      *(v21 + 80) = v27;
      swift_willThrow();

      return;
    }

    sub_1CF2B0C28(&v35);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  swift_allocError();
  *v28 = v35;
  v29 = v39;
  v31 = v36;
  v30 = v37;
  *(v28 + 48) = v38;
  *(v28 + 64) = v29;
  *(v28 + 16) = v31;
  *(v28 + 32) = v30;
  v33 = v41;
  v32 = v42;
  v34 = v40;
  *(v28 + 128) = v43;
  *(v28 + 96) = v33;
  *(v28 + 112) = v32;
  *(v28 + 80) = v34;
  swift_willThrow();
}

uint64_t sub_1CF262F1C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    v7 = sub_1CF1CE738(a2, a3);
    swift_endAccess();
    if (v7)
    {
      dispatch_group_leave(*(v6 + 272));
      sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
      sub_1CF9E7418();
    }

    v8 = *(v6 + 48);
    if (v8)
    {
      v9 = *(v6 + 56);
      v10 = a2;
      v11 = a3;
      sub_1CF03C63C(v8);
      v8(&v10, 3, 1);
      sub_1CEFF7124(v8);
    }
  }

  return result;
}

uint64_t sub_1CF263024@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v86 = a3;
  v100 = *MEMORY[0x1E69E9840];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v10 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v83 = (v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v77 = (v72 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v84 = (v72 - v15);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v16 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v81 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v79 = (v72 - v20);
  v21 = *a1;
  v23 = *a2;
  v22 = a2[1];
  v19.n128_u64[0] = a2[2];
  v87 = v19;
  v24 = a2[3];
  v25 = a2[4];
  v26 = qword_1EDEBBE70;
  swift_beginAccess();
  v27 = *(v6 + v26);
  v28 = __CFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v78 = a4;
  *(v6 + v26) = v29;

  v30 = objc_sync_enter(v6);
  if (v30)
  {
    MEMORY[0x1EEE9AC00](v30);
    v72[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v72[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v31 = v25;
  LODWORD(v82) = v21;
  v32 = v6[20];

  v33 = objc_sync_exit(v6);
  if (v33)
  {
    MEMORY[0x1EEE9AC00](v33);
    v72[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v72[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v34 = type metadata accessor for VFSFileTree(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v36 = v6[36];
  aBlock = v23;
  v95 = v22;
  v96 = v87.n128_u64[0];
  v97 = v24;
  v98 = v31;
  v37 = sub_1CEFDADE0(&aBlock, *(v32 + 16), 2129920);
  if (v5)
  {

    result = swift_unknownObjectRelease();
    goto LABEL_30;
  }

  v75 = v34;
  v76 = Strong;
  v72[3] = v31;
  v72[1] = 0;
  if ((v82 - 1) >= 2)
  {
    v39 = v87.n128_u32[0];
    v40 = v87.n128_u32[0];
    if (v87.n128_u32[0])
    {
      LODWORD(v82) = 0;
      if (v86)
      {
        v41 = v37;
        v87.n128_u64[0] = 0;
        v23 = v39;
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  if ((v86 & 1) == 0)
  {
    LODWORD(v82) = 1;
    v40 = v23;
LABEL_12:
    v41 = v37;
    v87.n128_u64[0] = *(v32 + 24);
    v23 = v40;
    goto LABEL_14;
  }

  LODWORD(v82) = 1;
  v41 = v37;
  v87.n128_u64[0] = 0;
LABEL_14:
  os_unfair_lock_lock((v32 + 56));
  v42 = *(v32 + 64);
  v43 = *(v32 + 72);
  v44 = *(v32 + 88);
  v74 = *(v32 + 89);
  LODWORD(v73) = *(v32 + 90);

  v45 = *(v32 + 80);
  os_unfair_lock_unlock((v32 + 56));
  v72[2] = v72;
  MEMORY[0x1EEE9AC00](v46);
  v72[-10] = v75;
  LODWORD(v72[-9]) = v41;
  v75 = v32;
  v47 = v76;
  v72[-8] = v32;
  v72[-7] = v47;
  v72[-6] = v36;
  LOBYTE(v72[-5]) = 2;
  v72[-4] = v86;
  v72[-3] = v23;
  LOBYTE(v72[-2]) = v82;
  v72[-1] = 0;
  v98 = v42;
  v99 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = sub_1CEFDB088;
  v97 = &block_descriptor_1498;
  v48 = _Block_copy(&aBlock);
  v86 = v43;

  v82 = v48;
  v89 = v48;
  v90 = v45;
  v91 = v44;
  v92 = v74;
  v93 = v73;
  v73 = sub_1CEFDB034();
  v49 = swift_allocError();
  *v50 = 6;
  *(v50 + 8) = 0u;
  *(v50 + 24) = 0u;
  *(v50 + 40) = 19;
  v51 = v84;
  *v84 = v49;
  swift_storeEnumTagMultiPayload();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = sub_1CF2B9F90;
  v52[4] = &v72[-12];
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1CF1DBD3C;
  *(v53 + 24) = v52;
  v98 = sub_1CF1DBD5C;
  v99 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = sub_1CEFDB270;
  v97 = &block_descriptor_1509;
  v54 = _Block_copy(&aBlock);

  v74 = v41;
  v55 = fpfs_fgetfileattrs_detailed();
  _Block_release(v54);
  LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

  if (v54)
  {
    goto LABEL_32;
  }

  if (v55)
  {
    swift_getErrorValue();
    v56 = v88;
    v57 = swift_allocError();
    *v58 = 6;
    *(v58 + 8) = 0u;
    *(v58 + 24) = 0u;
    *(v58 + 40) = 19;
    v59 = v55;
    v60 = sub_1CF199074(v57, v56);

    v61 = v77;
    *v77 = v60;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v61, v51, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v62 = v83;
  sub_1CEFCCBDC(v51, v83, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v66 = v79;
    sub_1CEFE55D0(v62, v79, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v51, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v82);

    v67 = v81;
    goto LABEL_21;
  }

  aBlock = *v62;
  v63 = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v51, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v82);

  v64 = v63;
  LODWORD(aBlock) = sub_1CF9E52A8();
  sub_1CF196978();
  v65 = sub_1CF9E5658();

  if (v65)
  {

    v66 = v79;
    *v79 = xmmword_1CF9FD940;
    *(v66 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v67 = v81;
LABEL_21:
    if ((v74 & 0x80000000) == 0)
    {
      close(v74);
    }

    swift_unknownObjectRelease();

    sub_1CEFE55D0(v66, v67, &unk_1EC4BE2F0, qword_1CFA04220);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CEFCCC44(v67, &unk_1EC4BE2F0, qword_1CFA04220);
      v68 = 1;
      v69 = v78;
    }

    else
    {
      v69 = v78;
      sub_1CEFE4C60(v67, v78, type metadata accessor for VFSItem);
      v68 = 0;
    }

    v70 = type metadata accessor for VFSItem(0);
    result = (*(*(v70 - 8) + 56))(v69, v68, 1, v70);
    goto LABEL_30;
  }

  if ((v74 & 0x80000000) == 0)
  {
    close(v74);
  }

  swift_unknownObjectRelease();

LABEL_30:
  v71 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF263ADC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v82 = a3;
  LODWORD(v75) = a2;
  v94 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11);
  v73 = (v69 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v69 - v16);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v18 = *(*(v81 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v81);
  v21 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = (v69 - v22);
  v23 = qword_1EDEBBE70;
  swift_beginAccess();
  v24 = *(v6 + v23);
  v25 = __CFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
    goto LABEL_30;
  }

  v79 = v21;
  *(v6 + v23) = v26;
  v27 = objc_sync_enter(v6);
  if (v27)
  {
    MEMORY[0x1EEE9AC00](v27);
    v69[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v69[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v77 = v9;
  v74 = v13;
  v28 = v6[20];

  v29 = objc_sync_exit(v6);
  if (v29)
  {
    MEMORY[0x1EEE9AC00](v29);
    v69[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v69[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v30 = type metadata accessor for VFSFileTree(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v31 = v6[36];

  aBlock = a1;
  v91 = 0u;
  v92 = 0u;
  v32 = sub_1CEFDADE0(&aBlock, *(v28 + 16), 2129920);
  v33 = v5;
  v78 = a4;
  if (!v5)
  {
    v76 = v32;

    v69[2] = 0;
    if (v82)
    {
      v72 = 0;
    }

    else
    {
      v72 = *(v28 + 24);
    }

    os_unfair_lock_lock((v28 + 56));
    v39 = *(v28 + 64);
    v38 = *(v28 + 72);
    v71 = *(v28 + 88);
    v40 = *(v28 + 89);
    v70 = *(v28 + 90);

    v41 = *(v28 + 80);
    os_unfair_lock_unlock((v28 + 56));
    v69[1] = v69;
    MEMORY[0x1EEE9AC00](v42);
    v69[-10] = v30;
    LODWORD(v69[-9]) = v76;
    v43 = Strong;
    v69[-8] = v28;
    v69[-7] = v43;
    v69[-6] = v31;
    LOBYTE(v69[-5]) = v75;
    v69[-4] = v82;
    v69[-3] = 0;
    LOBYTE(v69[-2]) = -1;
    v69[-1] = 0;
    *(&v92 + 1) = v39;
    v93 = v38;
    aBlock = MEMORY[0x1E69E9820];
    *&v91 = 1107296256;
    *(&v91 + 1) = sub_1CEFDB088;
    *&v92 = &block_descriptor_1366;
    v44 = _Block_copy(&aBlock);
    v82 = v38;

    v85 = v44;
    v86 = v41;
    v87 = v71;
    v88 = v40;
    v89 = v70;
    v75 = sub_1CEFDB034();
    v45 = swift_allocError();
    *v46 = 6;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    *(v46 + 40) = 19;
    *v17 = v45;
    swift_storeEnumTagMultiPayload();
    v47 = swift_allocObject();
    v47[2] = v17;
    v47[3] = sub_1CF2B9F90;
    v47[4] = &v69[-12];
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1CF1DBD3C;
    *(v48 + 24) = v47;
    *(&v92 + 1) = sub_1CF1DBD5C;
    v93 = v48;
    aBlock = MEMORY[0x1E69E9820];
    *&v91 = 1107296256;
    *(&v91 + 1) = sub_1CEFDB270;
    *&v92 = &block_descriptor_1377;
    v49 = _Block_copy(&aBlock);

    v50 = fpfs_fgetfileattrs_detailed();
    _Block_release(v49);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if ((v49 & 1) == 0)
    {
      if (v50)
      {
        swift_getErrorValue();
        v51 = v84;
        v52 = swift_allocError();
        v75 = v47;
        v53 = v17;
        v54 = v44;
        v55 = v52;
        *v56 = 6;
        *(v56 + 8) = 0u;
        *(v56 + 24) = 0u;
        *(v56 + 40) = 19;
        v57 = v50;
        v58 = sub_1CF199074(v55, v51);

        v59 = v55;
        v44 = v54;
        v17 = v53;

        v60 = v73;
        *v73 = v58;
        swift_storeEnumTagMultiPayload();
        sub_1CEFDA9E0(v60, v53, &qword_1EC4BE000, &unk_1CFA006A0);
      }

      v61 = v74;
      sub_1CEFCCBDC(v17, v74, &qword_1EC4BE000, &unk_1CFA006A0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        aBlock = *v61;
        v33 = aBlock;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        swift_willThrowTypedImpl();

        sub_1CEFCCC44(v17, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v44);

        v62 = v33;
        LODWORD(aBlock) = sub_1CF9E52A8();
        sub_1CF196978();
        v63 = sub_1CF9E5658();

        if ((v63 & 1) == 0)
        {
          if ((v76 & 0x80000000) == 0)
          {
            close(v76);
          }

          goto LABEL_6;
        }

        v36 = v80;
        *v80 = xmmword_1CF9FD940;
        *(v36 + 16) = 2;
        swift_storeEnumTagMultiPayload();
        v37 = v78;
      }

      else
      {

        v36 = v80;
        sub_1CEFE55D0(v61, v80, &unk_1EC4BE2F0, qword_1CFA04220);
        sub_1CEFCCC44(v17, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v44);

        v37 = v78;
      }

      if ((v76 & 0x80000000) == 0)
      {
        close(v76);
      }

      swift_unknownObjectRelease();
      goto LABEL_22;
    }

LABEL_30:
    __break(1u);
  }

LABEL_6:
  v34 = v33;
  LODWORD(aBlock) = sub_1CF9E5328();
  sub_1CF196978();
  v35 = sub_1CF9E5658();

  swift_unknownObjectRelease();

  if ((v35 & 1) == 0)
  {
    goto LABEL_26;
  }

  v36 = v80;
  *v80 = xmmword_1CF9FD930;
  *(v36 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v37 = v78;
LABEL_22:
  v64 = v36;
  v65 = v79;
  sub_1CEFE55D0(v64, v79, &unk_1EC4BE2F0, qword_1CFA04220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v65, &unk_1EC4BE2F0, qword_1CFA04220);
    v66 = 1;
  }

  else
  {
    sub_1CEFE4C60(v65, v37, type metadata accessor for VFSItem);
    v66 = 0;
  }

  v67 = type metadata accessor for VFSItem(0);
  (*(*(v67 - 8) + 56))(v37, v66, 1, v67);
LABEL_26:
  v68 = *MEMORY[0x1E69E9840];
}

void sub_1CF26452C(int a1@<W2>, uint64_t a2@<X3>, unsigned int a3@<W4>, uint64_t a4@<X8>)
{
  v6 = v4;
  v81 = a2;
  LODWORD(v75) = a1;
  v94 = *MEMORY[0x1E69E9840];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v9 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = (v68 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v80 = (v68 - v15);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v16 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v78 = (v68 - v20);
  v21 = qword_1EDEBBE70;
  swift_beginAccess();
  v22 = *(v6 + v21);
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_26;
  }

  v77 = v18;
  *(v6 + v21) = v24;
  v25 = objc_sync_enter(v6);
  if (v25)
  {
    MEMORY[0x1EEE9AC00](v25);
    v68[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v68[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v74 = v11;
  v73 = v5;
  v26 = v6[20];

  v27 = objc_sync_exit(v6);
  if (v27)
  {
    MEMORY[0x1EEE9AC00](v27);
    v68[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v68[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v28 = type metadata accessor for VFSFileTree(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = v6[36];
  fpfs_openflags(a3);
  sub_1CF9E6978();
  v30 = openat_s();

  v83 = v30;
  if (v30 < 0)
  {
    v32 = MEMORY[0x1D38683F0](v31);
    v92 = 0;
    aBlock = 0u;
    v91 = 0u;
    LOBYTE(v93) = 19;
    v33 = sub_1CF19BBE4(v32, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();
    goto LABEL_18;
  }

  v69 = a4;
  if (v81)
  {
    v71 = 0;
  }

  else
  {
    v71 = *(v26 + 24);
  }

  os_unfair_lock_lock((v26 + 56));
  v34 = *(v26 + 64);
  v35 = *(v26 + 72);
  v70 = *(v26 + 88);
  v36 = *(v26 + 89);
  v37 = *(v26 + 90);

  v38 = *(v26 + 80);
  os_unfair_lock_unlock((v26 + 56));
  v68[1] = v68;
  MEMORY[0x1EEE9AC00](v39);
  v68[-10] = v28;
  LODWORD(v68[-9]) = v83;
  v40 = Strong;
  v68[-8] = v26;
  v68[-7] = v40;
  v68[-6] = v29;
  LOBYTE(v68[-5]) = v75;
  v68[-4] = v81;
  v68[-3] = 0;
  LOBYTE(v68[-2]) = -1;
  v68[-1] = 0;
  v92 = v34;
  v93 = v35;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v91 = sub_1CEFDB088;
  *(&v91 + 1) = &block_descriptor_1349;
  v41 = _Block_copy(&aBlock);
  v81 = v35;

  v75 = v41;
  v85 = v41;
  v86 = v38;
  v87 = v70;
  v88 = v36;
  v89 = v37;
  sub_1CEFDB034();
  v42 = swift_allocError();
  *v43 = 6;
  *(v43 + 8) = 0u;
  *(v43 + 24) = 0u;
  *(v43 + 40) = 19;
  v44 = v80;
  *v80 = v42;
  swift_storeEnumTagMultiPayload();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = sub_1CF2B9F90;
  v45[4] = &v68[-12];
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1CF1DBD3C;
  *(v46 + 24) = v45;
  v92 = sub_1CF1DBD5C;
  v93 = v46;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v91 = sub_1CEFDB270;
  *(&v91 + 1) = &block_descriptor_1360;
  v47 = _Block_copy(&aBlock);

  v48 = fpfs_fgetfileattrs_detailed();
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
LABEL_26:
    __break(1u);
  }

  if (v48)
  {
    swift_getErrorValue();
    v49 = v84;
    v50 = swift_allocError();
    *v51 = 6;
    *(v51 + 8) = 0u;
    *(v51 + 24) = 0u;
    *(v51 + 40) = 19;
    v52 = v48;
    v53 = sub_1CF199074(v50, v49);

    v54 = v72;
    *v72 = v53;
    v44 = v80;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v54, v44, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v55 = v74;
  sub_1CEFCCBDC(v44, v74, &qword_1EC4BE000, &unk_1CFA006A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  a4 = v69;
  if (EnumCaseMultiPayload != 1)
  {

    v60 = v55;
    v59 = v78;
    sub_1CEFE55D0(v60, v78, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v44, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v75);

    goto LABEL_16;
  }

  *&aBlock = *v55;
  v33 = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v44, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v75);

  v57 = v33;
  LODWORD(aBlock) = sub_1CF9E52A8();
  sub_1CF196978();
  v58 = sub_1CF9E5658();

  if (v58)
  {

    v59 = v78;
    *v78 = xmmword_1CF9FD940;
    *(v59 + 16) = 2;
    swift_storeEnumTagMultiPayload();
LABEL_16:
    close(v83);

    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  close(v83);
LABEL_18:
  v61 = v33;
  LODWORD(aBlock) = sub_1CF9E5328();
  sub_1CF196978();
  v62 = sub_1CF9E5658();

  swift_unknownObjectRelease();

  if ((v62 & 1) == 0)
  {
    goto LABEL_24;
  }

  v59 = v78;
  *v78 = xmmword_1CF9FD930;
  *(v59 + 16) = 2;
  swift_storeEnumTagMultiPayload();
LABEL_20:
  v63 = v59;
  v64 = v77;
  sub_1CEFE55D0(v63, v77, &unk_1EC4BE2F0, qword_1CFA04220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v64, &unk_1EC4BE2F0, qword_1CFA04220);
    v65 = 1;
  }

  else
  {
    sub_1CEFE4C60(v64, a4, type metadata accessor for VFSItem);
    v65 = 0;
  }

  v66 = type metadata accessor for VFSItem(0);
  (*(*(v66 - 8) + 56))(a4, v65, 1, v66);
LABEL_24:
  v67 = *MEMORY[0x1E69E9840];
}

void sub_1CF264F9C(int a1@<W1>, uint64_t a2@<X2>, unsigned int a3@<W3>, uint64_t a4@<X8>)
{
  v82 = a2;
  LODWORD(v75) = a1;
  v94 = *MEMORY[0x1E69E9840];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v8 = *(*(v76 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v76);
  v74 = (v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v68 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v80 = (v68 - v14);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v15 = *(*(v79 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v79);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = (v68 - v19);
  sub_1CF9E5A18();
  v20 = qword_1EDEBBE70;
  swift_beginAccess();
  v21 = *(v4 + v20);
  v22 = __CFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_26;
  }

  v77 = v18;
  *(v4 + v20) = v23;
  v24 = objc_sync_enter(v4);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    v68[-2] = v4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v68[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v72 = v13;
  v73 = v5;
  v25 = v4[20];

  v26 = objc_sync_exit(v4);
  if (v26)
  {
    MEMORY[0x1EEE9AC00](v26);
    v68[-2] = v4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v68[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v27 = type metadata accessor for VFSFileTree(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v28 = v4[36];
  fpfs_openflags(a3);
  sub_1CF9E6978();
  v29 = openat_s();

  v81 = v29;
  if (v29 < 0)
  {
    v31 = MEMORY[0x1D38683F0](v30);
    v92 = 0;
    aBlock = 0u;
    v91 = 0u;
    LOBYTE(v93) = 19;
    v32 = sub_1CF19BBE4(v31, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();

    goto LABEL_18;
  }

  v69 = a4;
  if (v82)
  {
    v71 = 0;
  }

  else
  {
    v71 = *(v25 + 24);
  }

  os_unfair_lock_lock((v25 + 56));
  v34 = *(v25 + 64);
  v33 = *(v25 + 72);
  v35 = *(v25 + 88);
  v36 = *(v25 + 89);
  v70 = *(v25 + 90);

  v37 = *(v25 + 80);
  os_unfair_lock_unlock((v25 + 56));
  v68[1] = v68;
  MEMORY[0x1EEE9AC00](v38);
  v68[-10] = v27;
  LODWORD(v68[-9]) = v81;
  v39 = Strong;
  v68[-8] = v25;
  v68[-7] = v39;
  v68[-6] = v28;
  LOBYTE(v68[-5]) = v75;
  v68[-4] = v82;
  v68[-3] = 0;
  LOBYTE(v68[-2]) = -1;
  v68[-1] = 0;
  v92 = v34;
  v93 = v33;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v91 = sub_1CEFDB088;
  *(&v91 + 1) = &block_descriptor_1332;
  v40 = _Block_copy(&aBlock);
  v82 = v33;

  v75 = v40;
  v85 = v40;
  v86 = v37;
  v87 = v35;
  v88 = v36;
  v89 = v70;
  sub_1CEFDB034();
  v41 = swift_allocError();
  *v42 = 6;
  *(v42 + 8) = 0u;
  *(v42 + 24) = 0u;
  *(v42 + 40) = 19;
  v43 = v80;
  *v80 = v41;
  swift_storeEnumTagMultiPayload();
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = sub_1CF2B9F90;
  v44[4] = &v68[-12];
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1CF1DBD3C;
  *(v45 + 24) = v44;
  v92 = sub_1CF1DBD5C;
  v93 = v45;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v91 = sub_1CEFDB270;
  *(&v91 + 1) = &block_descriptor_1343;
  v46 = _Block_copy(&aBlock);

  v47 = fpfs_fgetfileattrs_detailed();
  _Block_release(v46);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
LABEL_26:
    __break(1u);
  }

  if (v47)
  {
    swift_getErrorValue();
    v48 = v84;
    v49 = swift_allocError();
    *v50 = 6;
    *(v50 + 8) = 0u;
    *(v50 + 24) = 0u;
    *(v50 + 40) = 19;
    v51 = v47;
    v52 = sub_1CF199074(v49, v48);
    v43 = v80;
    v53 = v52;

    v54 = v72;
    *v72 = v53;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v54, v43, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v55 = v74;
  sub_1CEFCCBDC(v43, v74, &qword_1EC4BE000, &unk_1CFA006A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  a4 = v69;
  if (EnumCaseMultiPayload != 1)
  {

    v60 = v55;
    v59 = v78;
    sub_1CEFE55D0(v60, v78, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v43, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v75);

    goto LABEL_16;
  }

  v32 = *v55;
  *&aBlock = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v43, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v75);

  v57 = v32;
  LODWORD(aBlock) = sub_1CF9E52A8();
  sub_1CF196978();
  v58 = sub_1CF9E5658();

  if (v58)
  {

    v59 = v78;
    *v78 = xmmword_1CF9FD940;
    *(v59 + 16) = 2;
    swift_storeEnumTagMultiPayload();
LABEL_16:
    close(v81);

    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  close(v81);
LABEL_18:
  v61 = v32;
  LODWORD(aBlock) = sub_1CF9E5328();
  sub_1CF196978();
  v62 = sub_1CF9E5658();

  swift_unknownObjectRelease();

  if ((v62 & 1) == 0)
  {
    goto LABEL_24;
  }

  v59 = v78;
  *v78 = xmmword_1CF9FD930;
  *(v59 + 16) = 2;
  swift_storeEnumTagMultiPayload();
LABEL_20:
  v63 = v59;
  v64 = v77;
  sub_1CEFE55D0(v63, v77, &unk_1EC4BE2F0, qword_1CFA04220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v64, &unk_1EC4BE2F0, qword_1CFA04220);
    v65 = 1;
  }

  else
  {
    sub_1CEFE4C60(v64, a4, type metadata accessor for VFSItem);
    v65 = 0;
  }

  v66 = type metadata accessor for VFSItem(0);
  (*(*(v66 - 8) + 56))(a4, v65, 1, v66);
LABEL_24:
  v67 = *MEMORY[0x1E69E9840];
}

void *sub_1CF265A2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = (*(a2 + 64))(&v11, a1, a2);
  if (v12)
  {
    v7 = 0;
    v8 = -1;
  }

  else
  {
    (*(a2 + 112))(v9, a1, a2);
    v10[2] = v9[2];
    v10[3] = v9[3];
    v10[4] = v9[4];
    v10[5] = v9[5];
    v10[0] = v9[0];
    v10[1] = v9[1];
    result = sub_1CEFCCC44(v10, &unk_1EC4BE330, &unk_1CF9FF010);
    v7 = *&v10[0];
    v8 = 1;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  return result;
}

void sub_1CF265B04(uint64_t a1, unint64_t a2, char a3, void (*a4)(void, void), uint64_t a5)
{
  v6 = v5;
  v45 = a4;
  v11 = sub_1CF9E64A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = v6[27];
  *v16 = v19;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v20 = v19;
  LOBYTE(v19) = sub_1CF9E64D8();
  (*(v12 + 8))(v16, v11);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    if (!sub_1CF9E7818())
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    v45(0, 0);
    return;
  }

LABEL_4:
  if (a3)
  {
    goto LABEL_17;
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  if (v6[23])
  {
    v22 = v6[22];
    v23 = sub_1CF9E6888();
    [v21 setPurposeIdentifier_];
  }

  swift_beginAccess();
  v24 = v21;
  sub_1CF6E96F4(v46, v24);
  swift_endAccess();

  if (v18 != 255)
  {
    swift_beginAccess();
    if (v6[25][2] && (sub_1CF7BF2C0(v17, v18), (v25 & 1) != 0))
    {
      v26 = sub_1CF25CE44();
      v27 = sub_1CF598538(v46, v17, v18);
      if (*v28)
      {
        sub_1CF6E96F4(&v47, v24);
      }

      (v27)(v46, 0);
      (v26)(aBlock, 0);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CFA00250;
      *(inited + 32) = v24;
      v30 = v24;
      sub_1CF6F3CF4(inited);
      v32 = v31;
      swift_setDeallocating();
      v33 = *(inited + 16);
      swift_arrayDestroy();
      swift_beginAccess();
      v34 = v6[25];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46[0] = v6[25];
      v6[25] = 0x8000000000000000;
      sub_1CF1D20C8(v32, v17, v18, isUniquelyReferenced_nonNull_native);
      v6[25] = v46[0];
      swift_endAccess();
    }
  }

  v36 = fpfs_current_log();
  sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
  v37 = sub_1CF9E6D28();
  v38 = v6[26];
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v39 + 24) = v6;
  *(v39 + 32) = v24;
  *(v39 + 40) = v17;
  *(v39 + 48) = v18;
  *(v39 + 56) = v45;
  *(v39 + 64) = a5;
  aBlock[4] = sub_1CF2BA138;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_1326;
  v40 = _Block_copy(aBlock);
  v41 = v24;
  v42 = v38;
  v43 = v36;

  [v41 coordinateAccessWithIntents:v37 queue:v42 byAccessor:v40];
  _Block_release(v40);
}

void sub_1CF265FAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, void (*a7)(void, void))
{
  v13 = ~a6;
  v25 = fpfs_adopt_log();
  swift_beginAccess();
  v14 = sub_1CF8DD040(a4);
  swift_endAccess();

  if (v13)
  {
    v15 = a7;
    v16 = sub_1CF25CE44();
    v17 = sub_1CF598538(v26, a5, a6);
    if (*v18)
    {
    }

    (v17)(v26, 0);
    (v16)(v27, 0);
    swift_beginAccess();
    v19 = *(a3 + 200);
    a7 = v15;
    if (*(v19 + 16))
    {
      v20 = sub_1CF7BF2C0(a5, a6);
      if (v21)
      {
        v22 = *(*(v19 + 56) + 8 * v20);
        if ((v22 & 0xC000000000000001) == 0)
        {
          if (*(v22 + 16))
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        v23 = sub_1CF9E7818();

        if (!v23)
        {
LABEL_8:
          swift_beginAccess();
          sub_1CF1C8E4C(0, a5, a6);
          swift_endAccess();
        }
      }
    }
  }

LABEL_9:
  a7(a4, a1);
  v24 = fpfs_adopt_log();
}

uint64_t sub_1CF2661C0(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, void *, char *), uint64_t a4)
{
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  if (!a1)
  {
    return 2;
  }

  v14 = objc_sync_enter(a2);
  if (v14)
  {
    goto LABEL_17;
  }

  v15 = a2[20];

  v16 = objc_sync_exit(a2);
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    *(&v23 - 2) = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v23 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v17 = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v27 = *(v17 + 16);
  if (!v27)
  {

    return 2;
  }

  v23 = a4;
  v24 = a3;
  v18 = 0;
  v19 = *(v10 + 80);
  v25 = v4;
  v26 = v17 + ((v19 + 32) & ~v19);
  v20 = (v10 + 8);
  while (1)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
LABEL_17:
      MEMORY[0x1EEE9AC00](v14);
      *(&v23 - 2) = a2;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v23 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    (*(v10 + 16))(v13, v26 + *(v10 + 72) * v18, v9);
    sub_1CF9E5A18();
    sub_1CF9E6978();

    a2 = fpfs_path_relative_to();

    if (a2)
    {
      if (*a2)
      {
        break;
      }
    }

    ++v18;
    v14 = (*v20)(v13, v9);
    if (v27 == v18)
    {

      return 2;
    }
  }

  v21 = v25;
  v24(&v29, a2, v13);
  if (v21)
  {
    return (*v20)(v13, v9);
  }

  (*v20)(v13, v9);
  return v29;
}

uint64_t sub_1CF2664E0(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, void *, char *), uint64_t a4)
{
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  if (!a1)
  {
    return 0;
  }

  v14 = objc_sync_enter(a2);
  if (v14)
  {
    goto LABEL_17;
  }

  v15 = a2[20];

  v16 = objc_sync_exit(a2);
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    *(&v23 - 2) = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v23 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v17 = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v27 = *(v17 + 16);
  if (!v27)
  {

    return 0;
  }

  v23 = a4;
  v24 = a3;
  v18 = 0;
  v19 = *(v10 + 80);
  v25 = v4;
  v26 = v17 + ((v19 + 32) & ~v19);
  v20 = (v10 + 8);
  while (1)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
LABEL_17:
      MEMORY[0x1EEE9AC00](v14);
      *(&v23 - 2) = a2;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v23 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    (*(v10 + 16))(v13, v26 + *(v10 + 72) * v18, v9);
    sub_1CF9E5A18();
    sub_1CF9E6978();

    a2 = fpfs_path_relative_to();

    if (a2)
    {
      if (*a2)
      {
        break;
      }
    }

    ++v18;
    v14 = (*v20)(v13, v9);
    if (v27 == v18)
    {

      return 0;
    }
  }

  v21 = v25;
  v24(&v29, a2, v13);
  if (v21)
  {
    return (*v20)(v13, v9);
  }

  (*v20)(v13, v9);
  return v29;
}

uint64_t sub_1CF266814@<X0>(_BYTE *a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = fpfs_pkg_system_relative_lookup();
  *a1 = 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF266888@<X0>(_BYTE *a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = fpfs_pkg_system_relative_lookup();
  *a1 = 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF266978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E63D8();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = *a1;
  LODWORD(v41) = *(a1 + 8);
  v19 = *(v4 + 216);
  v20 = *(v4 + 224);
  v42 = v18;
  v43 = v19;
  v21 = sub_1CF9E6448();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v17, 1, 1, v21);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = swift_allocObject();
  v25 = v42;
  *(v24 + 16) = v4;
  *(v24 + 24) = v25;
  *(v24 + 32) = v41;
  *(v24 + 40) = a2;
  *(v24 + 48) = a3;
  v26 = swift_allocObject();
  v26[2] = sub_1CF2BA174;
  v26[3] = v23;
  v26[4] = v20;
  swift_retain_n();
  v41 = v43;

  v42 = v23;

  v27 = fpfs_current_log();
  v40 = *(v20 + 16);
  v43 = v17;
  sub_1CEFCCBDC(v17, v15, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v22 + 48))(v15, 1, v21) == 1)
  {
    sub_1CEFCCC44(v15, &unk_1EC4BE370, qword_1CFA01B30);
    v28 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v29 = v37;
    sub_1CF9E6438();
    (*(v22 + 8))(v15, v21);
    v28 = sub_1CF9E63C8();
    (*(v38 + 8))(v29, v39);
  }

  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = sub_1CF2B1644;
  v30[4] = v24;
  v48 = sub_1CF2BA17C;
  v49 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1CEFCA444;
  v47 = &block_descriptor_977;
  v31 = _Block_copy(&aBlock);
  v32 = v27;

  v48 = sub_1CF2BA180;
  v49 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1CEFCA444;
  v47 = &block_descriptor_980;
  v33 = _Block_copy(&aBlock);

  v34 = v41;
  fp_task_tracker_async_and_qos(v40, v41, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v28, v31, v33);
  _Block_release(v33);
  _Block_release(v31);

  return sub_1CEFCCC44(v43, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF266E1C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void))
{
  swift_beginAccess();
  v8 = *(a1 + 200);
  if (*(v8 + 16) && (v9 = sub_1CF7BF2C0(a2, a3), (v10 & 1) != 0))
  {
    v27 = a4;
    v11 = *(*(v8 + 56) + 8 * v9);
    if ((v11 & 0xC000000000000001) != 0)
    {
      if (v11 < 0)
      {
        v12 = *(*(v8 + 56) + 8 * v9);
      }

      sub_1CF9E7808();
      sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
      sub_1CF2B1654(&unk_1EC4BEDB0, &unk_1EDEA3640, 0x1E696ABF8);
      sub_1CF9E7038();
      v11 = v29;
      v13 = v30;
      v14 = v31;
      v15 = v32;
      v16 = v33;
    }

    else
    {
      v17 = -1 << *(v11 + 32);
      v13 = v11 + 56;
      v14 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(v11 + 56);

      v15 = 0;
    }

    v26 = v14;
    v20 = (v14 + 64) >> 6;
    if (v11 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v21 = v15;
      v22 = v16;
      v23 = v15;
      if (!v16)
      {
        break;
      }

LABEL_16:
      v24 = (v22 - 1) & v22;
      v25 = *(*(v11 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v25)
      {
LABEL_22:
        sub_1CEFCB59C();
        a4 = v27;
        goto LABEL_23;
      }

      while (1)
      {
        [v25 cancel];

        v15 = v23;
        v16 = v24;
        if ((v11 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        if (sub_1CF9E7838())
        {
          sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
          swift_dynamicCast();
          v25 = v28;
          v23 = v15;
          v24 = v16;
          if (v28)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        goto LABEL_22;
      }

      v22 = *(v13 + 8 * v23);
      ++v21;
      if (v22)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    a4(0);
  }
}

void sub_1CF26709C(void *a1, uint64_t a2, int a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v212 = a7;
  v213 = a8;
  v234 = *MEMORY[0x1E69E9840];
  v14 = sub_1CF9E5868();
  v200 = *(v14 - 8);
  v201 = v14;
  v15 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v199 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v203 = &v189 - v19;
  v207 = sub_1CF9E5A58();
  v209 = *(v207 - 8);
  v20 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v206 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v189 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v215 = &v189 - v27;
  v214 = type metadata accessor for VFSItem(0);
  v216 = *(v214 - 1);
  v28 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v211 = &v189 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_1CF9E53C8();
  *&v198 = *(v204 - 1);
  v30 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v204);
  *&v197 = &v189 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1CF9E6118();
  v195 = *(v32 - 8);
  v196 = v32;
  v33 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v189 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = a2;
  v221 = a2;
  v218 = a3;
  LOBYTE(v222) = a3;
  v229 = 0u;
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v224 = 0u;
  v219 = a1;
  sub_1CEFDAA48(&v221, &v224, v233);
  v36 = *v233;

  if (!v36)
  {
    a4(0, 0);
    goto LABEL_90;
  }

  v37 = a4;
  v205 = a5;
  v210 = a6;
  v208 = v36;
  if (!a6 || (type metadata accessor for VFSDirectoryLister(0), (v38 = swift_dynamicCastClass()) == 0))
  {
    v41 = v219;
    v42 = objc_sync_enter(v219);
    if (v42)
    {
      MEMORY[0x1EEE9AC00](v42);
      v185 = &v189 - 4;
      *(&v189 - 2) = v41;
      goto LABEL_98;
    }

    *&v198 = v24;
    v202 = a4;
    v43 = v41[20];

    v44 = objc_sync_exit(v41);
    if (v44)
    {
      MEMORY[0x1EEE9AC00](v44);
      v186 = &v189 - 4;
      *(&v189 - 2) = v219;
      goto LABEL_100;
    }

    swift_beginAccess();
    v45 = *(v43 + 96);

    v46 = 0;
    v47 = 1 << *(v45 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v45 + 64);
    v50 = (v47 + 63) >> 6;
    v51 = v218 == 2;
    v52 = v217 == 1 && v218 == 2;
    LODWORD(v196) = v52;
    if (v217)
    {
      v51 = 0;
    }

    LODWORD(v195) = v51;
    v204 = (v216 + 48);
    v197 = xmmword_1CF9FA450;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (v49)
            {
              goto LABEL_24;
            }

            do
            {
              v53 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                __break(1u);
              }

              if (v53 >= v50)
              {

                v37 = v202;
                v24 = v198;
                goto LABEL_42;
              }

              v49 = *(v45 + 64 + 8 * v53);
              ++v46;
            }

            while (!v49);
            v46 = v53;
LABEL_24:
            v54 = __clz(__rbit64(v49));
            v49 &= v49 - 1;
            v55 = v54 | (v46 << 6);
            v56 = *(v45 + 48) + 16 * v55;
            v57 = *v56;
            v58 = *(v56 + 8);
            v59 = *(v45 + 56) + 32 * v55;
            v60 = *v59;
            v61 = *(v59 + 24);
            if (*(v59 + 8))
            {
              break;
            }

            if (!v218 && v60 == v217)
            {
              goto LABEL_36;
            }
          }

          if (*(v59 + 8) != 1)
          {
            break;
          }

          if (v218 == 1 && v60 == v217)
          {
            goto LABEL_36;
          }
        }

        if (!v60)
        {
          break;
        }

        if (v196)
        {
          goto LABEL_36;
        }
      }

      if (v195)
      {
LABEL_36:
        v221 = v57;
        LOBYTE(v222) = v58;
        v229 = 0u;
        v227 = 0u;
        v228 = 0u;
        v225 = 0u;
        v226 = 0u;
        v224 = 0u;

        sub_1CEFDAA48(&v221, &v224, v233);

        v62 = *v233;
        v233[0] = 1;
        v224 = v62;
        v225 = *&v233[16];
        *&v226 = *&v233[32];
        v63 = v215;
        sub_1CF263024(v233, &v224, 1, v215);

        if ((*v204)(v63, 1, v214) == 1)
        {
          sub_1CEFCCC44(v63, &unk_1EC4BEC00, &unk_1CF9FCB60);
        }

        else
        {
          v64 = v63;
          v65 = v211;
          sub_1CEFE4C60(v64, v211, type metadata accessor for VFSItem);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED90, &unk_1CFA00770);
          v66 = *(v216 + 72);
          v67 = (*(v216 + 80) + 32) & ~*(v216 + 80);
          v68 = swift_allocObject();
          *(v68 + 16) = v197;
          sub_1CEFD90AC(v65, v68 + v67, type metadata accessor for VFSItem);
          LOBYTE(v67) = v212(v68);

          if (v67)
          {
            v202(0, 0);

            sub_1CEFE5888(v65, type metadata accessor for VFSItem);
            goto LABEL_90;
          }

          sub_1CEFE5888(v65, type metadata accessor for VFSItem);
        }
      }
    }
  }

  v39 = v38;
  swift_beginAccess();
  if (*(v39 + 24) == v36)
  {
    swift_retain_n();
    goto LABEL_6;
  }

  v93 = v218;
  swift_retain_n();
  if (v93 != 2 || v217)
  {

    sub_1CF510E7C("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree.swift", 123, 2, 978, v217, v218, v39);
  }

  v94 = v219;
  sub_1CF262924(0);
  v126 = *(v39 + 24);
  v127 = objc_sync_enter(v94);
  if (v127)
  {
    MEMORY[0x1EEE9AC00](v127);
    v185 = &v189 - 4;
    *(&v189 - 2) = v94;
    goto LABEL_98;
  }

  v128 = v24;
  v202 = a4;
  v129 = v94[20];

  v130 = objc_sync_exit(v94);
  if (v130)
  {
    MEMORY[0x1EEE9AC00](v130);
    v186 = &v189 - 4;
    *(&v189 - 2) = v94;
    goto LABEL_100;
  }

  v131 = *(v129 + 40);
  v132 = *(v129 + 48);

  if ((v132 & 1) != 0 || v126 != v131)
  {

    v146 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v147 = v219;

    v148 = sub_1CF9E6108();
    v149 = sub_1CF9E72A8();
    if (!os_log_type_enabled(v148, v149))
    {

      (*(v195 + 8))(v35, v196);
      v125 = v202;
LABEL_80:
      LODWORD(v224) = 70;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v163 = v197;
      v164 = v204;
      sub_1CF9E57D8();
      v165 = sub_1CF9E53A8();
      (*(v198 + 8))(v163, v164);
      swift_willThrow();
      v120 = v165;

      goto LABEL_81;
    }

    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *v233 = v151;
    *v150 = 134218754;
    *(v150 + 4) = *(v39 + 24);

    *(v150 + 12) = 2048;
    if (!objc_sync_enter(v147))
    {
      v152 = v147[20];

      if (!objc_sync_exit(v147))
      {
        v153 = *(v152 + 40);
        v154 = *(v152 + 48);

        if (v154)
        {
          v155 = 0;
        }

        else
        {
          v155 = v153;
        }

        *(v150 + 14) = v155;

        *(v150 + 22) = 2048;
        *(v150 + 24) = v208;
        *(v150 + 32) = 2080;
        *&v224 = 0;
        BYTE8(v224) = 2;
        v158 = VFSItemID.description.getter(v156, v157);
        v160 = sub_1CEFD0DF0(v158, v159, v233);

        *(v150 + 34) = v160;
        _os_log_impl(&dword_1CEFC7000, v148, v149, "ESTALE: root/trash changed during enumeration. %llu, %llu, %llu, %s", v150, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v151);
        MEMORY[0x1D386CDC0](v151, -1, -1);
        MEMORY[0x1D386CDC0](v150, -1, -1);

        (*(v195 + 8))(v35, v196);
        v125 = v202;
        goto LABEL_80;
      }

      MEMORY[0x1EEE9AC00](v188);
      v186 = &v189 - 4;
      *(&v189 - 2) = v147;
LABEL_100:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v186, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    MEMORY[0x1EEE9AC00](v187);
    v185 = &v189 - 4;
    *(&v189 - 2) = v147;
LABEL_98:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v185, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v208 = *(v39 + 24);
  v24 = v128;
  v37 = v202;
LABEL_6:
  v40 = sub_1CF25F010();

  if (v40)
  {
    if (*(v39 + 64))
    {
    }

    else
    {
      *(v39 + 64) = v40;
    }
  }

  else
  {
  }

LABEL_42:
  v69 = v219;
  v70 = [objc_opt_self() defaultStore];
  v71 = [v70 vfsDirectoryListerLimit];

  v72 = objc_sync_enter(v69);
  if (v72)
  {
    MEMORY[0x1EEE9AC00](v72);
    v185 = &v189 - 4;
    *(&v189 - 2) = v69;
    goto LABEL_98;
  }

  v73 = v69[20];

  v74 = objc_sync_exit(v69);
  v75 = v210;
  if (v74)
  {
    MEMORY[0x1EEE9AC00](v74);
    v186 = &v189 - 4;
    *(&v189 - 2) = v69;
    goto LABEL_100;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v77 = v69[36];
  v78 = v69[17];
  v80 = *(v78 + 16);
  v79 = *(v78 + 24);
  v196 = v80;
  *&v197 = v77;
  v219 = v79;
  v216 = Strong;
  LODWORD(v204) = v71;
  if (v75 && (type metadata accessor for VFSDirectoryLister(0), (v81 = swift_dynamicCastClass()) != 0))
  {
    v215 = v81;
    v82 = v37;
  }

  else
  {
    v82 = v37;
    v215 = 0;
  }

  v83 = v69[23];
  v210 = v69[22];
  v211 = v83;

  v214 = sub_1CF25F010();
  v84 = type metadata accessor for VFSDirectoryLister(0);
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  v87 = swift_allocObject();
  *(v87 + 12) = 0;
  *(v87 + 13) = 0;

  *v233 = v208;
  memset(&v233[8], 0, 32);
  v88 = *(v73 + 16);
  v221 = v208;
  v222 = 0u;
  v223 = 0u;
  v220 = -1;
  v89 = fpfs_openfdbyhandle();
  if (v89 < 0)
  {
    v91 = v220;
    v92 = MEMORY[0x1D38683F0]();
    if (v91 < 0)
    {
      LODWORD(v224) = 0;
      BYTE4(v224) = 1;
    }

    else
    {
      LODWORD(v224) = v220;
      BYTE4(v224) = 0;
    }

    BYTE8(v226) = 0;
    v118 = sub_1CF19BBE4(v92, &v224);
    sub_1CF1969CC(&v224);
    v119 = v214;
    swift_willThrow();
    v120 = v118;

    v121 = v118;
    LODWORD(v224) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();
    sub_1CF255928(v233);
    swift_unknownObjectRelease();

    v122 = *(v87 + 13);

    v123 = *(*v87 + 48);
    v124 = *(*v87 + 52);
    swift_deallocPartialClassInstance();
    v125 = v82;
LABEL_81:
    v166 = v120;
    LODWORD(v224) = sub_1CF9E5378();
    sub_1CF196978();
    v167 = sub_1CF9E5658();

    if (v167)
    {

      v125(0, 0);
    }

    else
    {
      v168 = v120;
      LODWORD(v224) = sub_1CF9E5358();
      v169 = sub_1CF9E5658();

      if (v169)
      {

        sub_1CF2B15E0(&v224);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
        v120 = swift_allocError();
        *v170 = v224;
        v171 = v228;
        v173 = v225;
        v172 = v226;
        *(v170 + 48) = v227;
        *(v170 + 64) = v171;
        *(v170 + 16) = v173;
        *(v170 + 32) = v172;
        v175 = v230;
        v174 = v231;
        v176 = v229;
        *(v170 + 128) = v232;
        *(v170 + 96) = v175;
        *(v170 + 112) = v174;
        *(v170 + 80) = v176;
        v125(v120, 1);
      }

      else
      {
        v177 = v120;
        LODWORD(v224) = sub_1CF9E5328();
        v178 = sub_1CF9E5658();

        if (v178)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
          sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
          v179 = swift_allocError();
          *v180 = v217;
          *(v180 + 8) = v218;
          *(v180 + 16) = 0u;
          *(v180 + 32) = 0u;
          *(v180 + 48) = 0u;
          *(v180 + 64) = 0u;
          *(v180 + 80) = 0u;
          *(v180 + 96) = 0u;
          *(v180 + 112) = v120;
          *(v180 + 120) = 0;
          sub_1CF2A8DE0(v180);
          v181 = v120;
          v125(v179, 1);
          v182 = v179;
        }

        else
        {
          v183 = v120;
          v125(v120, 1);
          v182 = v120;
        }
      }
    }

    goto LABEL_90;
  }

  v90 = v89;
  sub_1CF19811C(v89, v233, v88, 1, v24);
  v202 = v82;
  close(v90);
  sub_1CF255928(v233);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE798, &qword_1CF9FE660);
  v95 = v24;
  v96 = swift_allocObject();
  v198 = xmmword_1CF9FA450;
  *(v96 + 16) = xmmword_1CF9FA450;
  *(v96 + 32) = v208;
  v191 = *(v73 + 16);
  os_unfair_lock_lock((v73 + 56));
  v97 = *(v73 + 72);
  v195 = *(v73 + 64);
  v98 = *(v73 + 80);
  v99 = *(v73 + 88);
  v193 = *(v73 + 89);
  v194 = v99;
  v192 = *(v73 + 90);
  v208 = v97;

  os_unfair_lock_unlock((v73 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v100 = v209;
  v101 = *(v209 + 72);
  v102 = (*(v209 + 80) + 32) & ~*(v209 + 80);
  v103 = swift_allocObject();
  *(v103 + 16) = v198;
  v105 = v100 + 16;
  v104 = *(v100 + 16);
  *&v198 = v95;
  v106 = v95;
  v107 = v207;
  v104(v103 + v102, v106, v207);
  v104(v206, (v73 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL), v107);
  v108 = type metadata accessor for VFSLookupScope();
  v109 = *(v108 + 48);
  v110 = *(v108 + 52);
  v111 = swift_allocObject();
  *(v111 + 40) = 0;
  *(v111 + 48) = 1;
  *(v111 + 96) = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v111 + 16) = v191;
  *(v111 + 32) = v96;
  v112 = *(v96 + 16);
  if (v112)
  {
    v112 = *(v96 + 32);
  }

  *(v111 + 24) = v112;
  *(v111 + 40) = 0;
  *(v111 + 48) = 1;
  *(v111 + 56) = 0;
  v113 = v208;
  *(v111 + 64) = v195;
  *(v111 + 72) = v113;
  *(v111 + 80) = v98;
  v114 = v193;
  *(v111 + 88) = v194;
  *(v111 + 89) = v114;
  *(v111 + 90) = v192;
  v115 = *(v103 + 16);

  v189 = v105;
  v190 = v104;
  if (v115)
  {
    v116 = v207;
    v104(v111 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, (v103 + v102), v207);
    v117 = v209;
  }

  else
  {
    v116 = v207;
    (*(v209 + 56))(v203, 1, 1, v207);
    (*(v200 + 104))(v199, *MEMORY[0x1E6968F70], v201);
    v117 = v209;
    sub_1CF9E5A38();
  }

  *(v111 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v103;
  (*(v117 + 32))(v111 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v206, v116);
  *(v111 + 49) = 0;
  v133 = v216;
  *(v87 + 9) = v73;
  *(v87 + 10) = v133;
  v134 = v117;
  v135 = *(v87 + 13);
  v136 = v196;
  *(v87 + 11) = v197;
  *(v87 + 12) = v136;
  *(v87 + 13) = v219;

  swift_unknownObjectRetain();

  v137 = qword_1EDEBBC00;
  v138 = v198;
  v190(&v87[qword_1EDEBBC00], v198, v116);
  (*(v134 + 56))(&v87[v137], 0, 1, v116);
  v139 = &v87[qword_1EDEBBC08];
  v140 = v211;
  *v139 = v210;
  *(v139 + 1) = v140;
  v141 = sub_1CF25AAFC(v111, v204, v215, v214);
  v142 = v202;
  v143 = v141;

  swift_unknownObjectRelease();
  v144 = (*(v134 + 8))(v138, v116);
  LOBYTE(v224) = 0;
  MEMORY[0x1EEE9AC00](v144);
  *(&v189 - 4) = &v224;
  v145 = v213;
  *(&v189 - 3) = v212;
  *(&v189 - 2) = v145;

  sub_1CF25AD70(sub_1CF2B1618, (&v189 - 6));
  v161 = *(v143 + 48);

  if (v161)
  {
    v162 = 0;
  }

  else
  {

    v162 = v143;
  }

  v142(v162, 0);

LABEL_90:
  v184 = *MEMORY[0x1E69E9840];
}

void sub_1CF268864(uint64_t a1, _BYTE *a2, uint64_t (*a3)(uint64_t))
{
  v6 = objc_autoreleasePoolPush();
  if ((*a2 & 1) == 0 && (*(a1 + 8) != 2 || *a1 != 1))
  {
    v8 = v6;
    v9 = type metadata accessor for VFSItem(0);
    v10 = a1 + *(v9 + 28);
    v11 = type metadata accessor for ItemMetadata();
    v6 = v8;
    if ((*(v10 + *(v11 + 72)) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED90, &unk_1CFA00770);
      v12 = *(*(v9 - 8) + 72);
      v13 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1CF9FA450;
      sub_1CEFD90AC(a1, v14 + v13, type metadata accessor for VFSItem);
      v15 = a3(v14);

      v6 = v8;
      if (v15)
      {
        *a2 = 1;
      }
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1CF2689CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = FPNotSupportedError();
  a5();
}

id sub_1CF268A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v13 - v10);
  result = FPNotSupportedError();
  if (result)
  {
    *v11 = result;
    swift_storeEnumTagMultiPayload();
    a7(v11);
    return sub_1CEFCCC44(v11, &unk_1EC4C5A90, &qword_1CFA01BD0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF268AF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1CF9E6388();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v66 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v51 - v11;
  v12 = sub_1CF9E6498();
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v54 = &v51 - v17;
  v18 = sub_1CF9E63D8();
  v19 = *(v18 - 8);
  v52 = v18;
  v53 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E6448();
  v59 = *(v22 - 8);
  v60 = v22;
  v23 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v58 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E73D8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  v31 = *(a1 + 8);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  v56 = v30;
  *(v32 + 32) = v30;
  v55 = v31;
  *(v32 + 40) = v31;
  v51 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v61 = v3;
  v33 = *(v3 + 216);
  v69 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v35 = v52;
  sub_1CF9E77B8();
  v36 = v53;
  v37 = sub_1CF9E73E8();

  (*(v26 + 8))(v29, v25);
  v38 = v54;
  qos_class_self();
  sub_1CF9E63B8();
  v39 = *(v36 + 48);
  if (v39(v38, 1, v35) == 1)
  {
    (*(v36 + 104))(v57, *MEMORY[0x1E69E7FA0], v35);
    if (v39(v38, 1, v35) != 1)
    {
      sub_1CEFCCC44(v38, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v36 + 32))(v57, v38, v35);
  }

  ObjectType = swift_getObjectType();
  v41 = v58;
  sub_1CF9E6428();
  v42 = swift_allocObject();
  v43 = v56;
  *(v42 + 16) = v61;
  *(v42 + 24) = v43;
  *(v42 + 32) = v55;
  *(v42 + 40) = 0u;
  *(v42 + 56) = 0u;
  *(v42 + 72) = 0u;
  *(v42 + 88) = 0u;
  *(v42 + 104) = 0u;
  *(v42 + 120) = 0u;
  *(v42 + 136) = 0u;
  *(v42 + 152) = v37;
  *(v42 + 160) = sub_1CF2B1C18;
  *(v42 + 168) = v32;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v41, sub_1CF2B9F4C, v42);

  (*(v59 + 8))(v41, v60);
  v44 = v62;
  sub_1CF9E6478();
  v45 = v65;
  sub_1CEFD5B64(v65);
  v46 = v66;
  sub_1CEFD5BD8(v66);
  MEMORY[0x1D3869770](v44, v45, v46, ObjectType);
  v47 = *(v67 + 8);
  v48 = v46;
  v49 = v68;
  v47(v48, v68);
  v47(v45, v49);
  (*(v63 + 8))(v44, v64);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF26919C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(void, void, void), int a5)
{
  v106 = a5;
  v112 = a4;
  v114 = a2;
  v115 = a3;
  v113 = a1;
  v5 = sub_1CF9E5248();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v101 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1CF9E5268();
  v102 = *(v103 - 8);
  v8 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v104 = &v97 - v12;
  v105 = sub_1CF9E5A58();
  v107 = *(v105 - 8);
  v13 = *(v107 + 64);
  v14 = MEMORY[0x1EEE9AC00](v105);
  v99 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v97 = &v97 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v97 - v17;
  v18 = type metadata accessor for VFSItem(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1CF9E6118();
  v108 = *(v109 - 8);
  v22 = *(v108 + 64);
  v23 = MEMORY[0x1EEE9AC00](v109);
  v98 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED68, &qword_1CFA00748);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v97 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (&v97 - v33);
  sub_1CEFCCBDC(v113, &v97 - v33, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v34;
    *v30 = v35;
    swift_storeEnumTagMultiPayload();
    v36 = v35;
    v114(v30);

    return sub_1CEFCCC44(v30, &qword_1EC4BED68, &qword_1CFA00748);
  }

  else
  {
    v113 = v27;
    if ((*(v19 + 48))(v34, 1, v18) == 1)
    {
      v38 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v39 = sub_1CF9E6108();
      v40 = sub_1CF9E72A8();
      v41 = os_log_type_enabled(v39, v40);
      v42 = v30;
      v43 = v112;
      if (v41)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v125 = v45;
        *v44 = 136315138;
        *&v116 = v43;
        v46 = v106;
        BYTE8(v116) = v106;
        v48 = VFSItemID.description.getter(v45, v47);
        v50 = sub_1CEFD0DF0(v48, v49, &v125);

        *(v44 + 4) = v50;
        _os_log_impl(&dword_1CEFC7000, v39, v40, "⚔️  Item %s not found, can not update conflict losers for this item...", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1D386CDC0](v45, -1, -1);
        MEMORY[0x1D386CDC0](v44, -1, -1);

        (*(v108 + 8))(v26, v109);
      }

      else
      {

        (*(v108 + 8))(v26, v109);
        v46 = v106;
      }

      v74 = swift_allocObject();
      *(v74 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v75 = swift_allocError();
      v77 = v76;
      sub_1CF1B8150();
      v78 = swift_allocError();
      *v79 = v74;
      *&v116 = v43;
      BYTE8(v116) = v46;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = v78;
      sub_1CF2A8DE0(&v116);
      *v77 = v116;
      v80 = v117;
      v81 = v118;
      v82 = v120;
      *(v77 + 48) = v119;
      *(v77 + 64) = v82;
      *(v77 + 16) = v80;
      *(v77 + 32) = v81;
      v83 = v121;
      v84 = v122;
      v85 = v123;
      *(v77 + 128) = v124;
      *(v77 + 96) = v84;
      *(v77 + 112) = v85;
      *(v77 + 80) = v83;
      *v42 = v75;
      swift_storeEnumTagMultiPayload();
      v114(v42);
      return sub_1CEFCCC44(v42, &qword_1EC4BED68, &qword_1CFA00748);
    }

    else
    {
      v51 = v110;
      sub_1CEFE4C60(v34, v110, type metadata accessor for VFSItem);
      v52 = v112;
      if (qword_1EC4BCCF8 != -1)
      {
        swift_once();
      }

      v53 = off_1EC4BF328;
      v54 = v104;
      sub_1CF25116C(v104);
      v55 = v107;
      v56 = v105;
      v57 = (*(v107 + 48))(v54, 1, v105);
      v58 = v111;
      if (v57 == 1)
      {
        sub_1CEFCCC44(v54, &unk_1EC4BE310, qword_1CF9FCBE0);
        v59 = fpfs_current_or_default_log();
        v60 = v98;
        sub_1CF9E6128();
        v61 = sub_1CF9E6108();
        v62 = sub_1CF9E72A8();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v125 = v64;
          *v63 = 136315138;
          *&v116 = v52;
          BYTE8(v116) = v106;
          v66 = VFSItemID.description.getter(v64, v65);
          v68 = sub_1CEFD0DF0(v66, v67, &v125);

          *(v63 + 4) = v68;
          _os_log_impl(&dword_1CEFC7000, v61, v62, "⚔️  Impossible to fetch URL for Item %s, can not update conflict losers for this item...", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v64);
          MEMORY[0x1D386CDC0](v64, -1, -1);
          MEMORY[0x1D386CDC0](v63, -1, -1);
        }

        (*(v108 + 8))(v60, v109);
        v69 = v114;
        sub_1CF9E50F8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF2A9448(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v70 = v100;
        v71 = v103;
        sub_1CF9E57D8();
        v72 = sub_1CF9E50D8();
        (*(v102 + 8))(v70, v71);
        *v30 = v72;
        swift_storeEnumTagMultiPayload();
        v69(v30);
        sub_1CEFCCC44(v30, &qword_1EC4BED68, &qword_1CFA00748);
        v73 = v51;
      }

      else
      {
        v113 = v53;
        v86 = *(v55 + 32);
        v86(v111, v54, v56);
        v87 = v97;
        v112 = *(v55 + 16);
        v112(v97, v58, v56);
        v88 = *(v55 + 80);
        v109 = ~v88;
        v89 = swift_allocObject();
        v90 = v115;
        *(v89 + 16) = v114;
        *(v89 + 24) = v90;
        v86((v89 + ((v88 + 32) & ~v88)), v87, v56);
        v91 = qword_1EC4BCD00;

        if (v91 != -1)
        {
          swift_once();
        }

        v115 = qword_1EC4BF330;
        v92 = fpfs_current_log();
        v93 = v99;
        v112(v99, v111, v56);
        v94 = (v88 + 24) & v109;
        v95 = swift_allocObject();
        *(v95 + 16) = v113;
        v86((v95 + v94), v93, v56);
        v96 = (v95 + ((v13 + v94 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v96 = sub_1CF2B1C28;
        v96[1] = v89;

        sub_1CF01001C(v92, "listConflicts(for:completionHandler:)", 37, 2, sub_1CF2B1D88, v95);

        (*(v107 + 8))(v111, v56);
        v73 = v110;
      }

      return sub_1CEFE5888(v73, type metadata accessor for VFSItem);
    }
  }
}

uint64_t sub_1CF269E34(void *a1, char a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED68, &qword_1CFA00748);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v13 = a1;
  }

  else
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED70, &unk_1CFA00750) + 48);
    *v12 = a1;
    v15 = sub_1CF9E5A58();
    (*(*(v15 - 8) + 16))(&v12[v14], a5, v15);
    swift_storeEnumTagMultiPayload();
  }

  a3(v12);
  return sub_1CEFCCC44(v12, &qword_1EC4BED68, &qword_1CFA00748);
}

uint64_t sub_1CF269F8C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a2;
  v43 = a4;
  v8 = sub_1CF9E63D8();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(v5 + 224);
  v41 = *(v5 + 216);
  v21 = sub_1CF9E6448();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v17, 1, 1, v21);
  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  *(v23 + 24) = v18;
  *(v23 + 32) = v19;
  v25 = v42;
  v24 = v43;
  *(v23 + 40) = a3;
  *(v23 + 48) = v24;
  *(v23 + 56) = v25;
  v26 = swift_allocObject();
  v26[2] = a3;
  v27 = v24;
  v28 = v26;
  v26[3] = v27;
  v26[4] = v20;
  swift_retain_n();
  v29 = v41;

  v30 = fpfs_current_log();
  v42 = *(v20 + 16);
  v43 = v17;
  sub_1CEFCCBDC(v17, v15, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v22 + 48))(v15, 1, v21) == 1)
  {
    sub_1CEFCCC44(v15, &unk_1EC4BE370, qword_1CFA01B30);
    v31 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v32 = v38;
    sub_1CF9E6438();
    (*(v22 + 8))(v15, v21);
    v31 = sub_1CF9E63C8();
    (*(v39 + 8))(v32, v40);
  }

  v33 = swift_allocObject();
  v33[2] = v30;
  v33[3] = sub_1CF2B15A8;
  v33[4] = v23;
  v48 = sub_1CF2BA17C;
  v49 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1CEFCA444;
  v47 = &block_descriptor_911;
  v34 = _Block_copy(&aBlock);
  v35 = v30;

  v48 = sub_1CF2B15BC;
  v49 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1CEFCA444;
  v47 = &block_descriptor_914;
  v36 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v42, v29, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v31, v34, v36);
  _Block_release(v36);
  _Block_release(v34);

  return sub_1CEFCCC44(v43, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF26A3EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a2;
  v15 = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = a6;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;

  sub_1CF268AF4(&v14, sub_1CF2B15C8, v12);
}

uint64_t sub_1CF26A4C0(uint64_t a1, void (*a2)(void *), uint64_t a3, char *a4, uint64_t a5, unint64_t a6, int a7)
{
  LODWORD(v131) = a7;
  v130 = a6;
  v124 = a5;
  v141 = a4;
  v127 = a3;
  v128 = a2;
  v138 = sub_1CF9E6118();
  v132 = *(v138 - 8);
  v8 = *(v132 + 8);
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED60, &qword_1CFA00740);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v121 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED68, &qword_1CFA00748);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v121 - v21);
  sub_1CEFCCBDC(a1, &v121 - v21, &qword_1EC4BED68, &qword_1CFA00748);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = *v22;
  if (EnumCaseMultiPayload == 1)
  {
    *v18 = v24;
    swift_storeEnumTagMultiPayload();
    v25 = v24;
    v128(v18);

    return sub_1CEFCCC44(v18, &qword_1EC4BED60, &qword_1CFA00740);
  }

  v134 = v15;
  v135 = v18;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED70, &unk_1CFA00750);
  (*(v11 + 32))(v14, v22 + *(v27 + 48), v10);
  v137 = *&v141[qword_1EDEAFB20];
  v28 = MEMORY[0x1E69E7CC0];
  v29 = *(v124 + 16);
  v133 = v11;
  v136 = v24;
  v126 = v29;
  v123 = v10;
  v122 = v14;
  if (v29)
  {
    v30 = v124;
    v147 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v29, 0);
    v28 = v147;
    v140 = objc_opt_self();
    v31 = (v30 + 32);
    v32 = v29;
    do
    {
      v141 = v28;
      v33 = v31[3];
      v145 = v31[2];
      v146 = v33;
      v34 = v31[1];
      v143 = *v31;
      v144 = v34;
      v35 = *(&v146 + 1);
      v36 = *(&v34 + 1);
      v37 = v145;
      v38 = v143;
      sub_1CEFCCBDC(&v143, v142, &unk_1EC4BF250, &unk_1CFA01B50);
      sub_1CEFE42D4(v38, *(&v38 + 1));
      sub_1CEFE42D4(v36, v37);
      v39 = sub_1CF9E5B48();
      v40 = sub_1CF9E5B48();
      if (v35)
      {
        v41 = sub_1CF9E6888();
      }

      else
      {
        v41 = 0;
      }

      v42 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v39 metadataVersion:v40 lastEditorDeviceName:v41];

      sub_1CEFE4714(v36, v37);
      sub_1CEFE4714(v38, *(&v38 + 1));
      v43 = [v140 etagForVersion:v42 providerDomainID:v137];

      v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v46 = v45;

      sub_1CEFCCC44(&v143, &unk_1EC4BF250, &unk_1CFA01B50);
      v28 = v141;
      v147 = v141;
      v48 = *(v141 + 2);
      v47 = *(v141 + 3);
      if (v48 >= v47 >> 1)
      {
        sub_1CEFE95CC((v47 > 1), v48 + 1, 1);
        v28 = v147;
      }

      *(v28 + 2) = v48 + 1;
      v49 = &v28[16 * v48];
      *(v49 + 4) = v44;
      *(v49 + 5) = v46;
      v31 += 4;
      --v32;
    }

    while (v32);
    v11 = v133;
  }

  v50 = fpfs_current_or_default_log();
  v51 = v139;
  sub_1CF9E6128();

  v52 = sub_1CF9E6108();
  v53 = sub_1CF9E7288();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v142[0] = v55;
    *v54 = 136315650;
    *&v143 = v130;
    BYTE8(v143) = v131;
    LODWORD(v141) = v53;
    v57 = VFSItemID.description.getter(v55, v56);
    v59 = sub_1CEFD0DF0(v57, v58, v142);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;

    v60 = MEMORY[0x1E69E6158];
    v61 = sub_1CF9E6678();
    v63 = v62;

    v64 = sub_1CEFD0DF0(v61, v63, v142);

    *(v54 + 14) = v64;
    *(v54 + 22) = 2080;
    v65 = MEMORY[0x1D3868FE0](v28, v60);
    v67 = v66;

    v68 = sub_1CEFD0DF0(v65, v67, v142);

    *(v54 + 24) = v68;
    _os_log_impl(&dword_1CEFC7000, v52, v141, "⚔️  conflicts for %s: existing - %s new %s", v54, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v55, -1, -1);
    MEMORY[0x1D386CDC0](v54, -1, -1);

    result = (*(v132 + 1))(v139, v138);
  }

  else
  {

    result = (*(v132 + 1))(v51, v138);
  }

  v69 = v128;
  v70 = v135;
  v71 = v126;
  if (!v126)
  {
    v132 = MEMORY[0x1E69E7CC0];
    v73 = v136;
LABEL_43:

    v111 = v124;

    v112 = v137;
    v113 = v137;
    v114 = sub_1CF2AB528(v73, v111, v112);

    v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED80, &unk_1CFA00760) + 80);
    v116 = *(v73 + 16);

    v117 = v132;
    *v70 = v116;
    v70[1] = v117;
    v70[2] = v114;
    v118 = v70 + v115;
    v119 = v122;
    v120 = v123;
    (*(v11 + 16))(v118, v122, v123);
    swift_storeEnumTagMultiPayload();
    v69(v70);
    sub_1CEFCCC44(v70, &qword_1EC4BED60, &qword_1CFA00740);
    return (*(v11 + 8))(v119, v120);
  }

  v72 = 0;
  v125 = v124 + 32;
  v73 = v136;
  v129 = v136 + 64;
  v132 = MEMORY[0x1E69E7CC0];
LABEL_18:
  while (2)
  {
    if (v72 >= v71)
    {
LABEL_45:
      __break(1u);
    }

    else
    {
      v74 = (v125 + (v72 << 6));
      v75 = v74[1];
      v143 = *v74;
      v144 = v75;
      v76 = v74[3];
      v145 = v74[2];
      v146 = v76;
      v77 = __OFADD__(v72, 1);
      v78 = v72 + 1;
      if (!v77)
      {
        v130 = v78;
        v79 = 1 << *(v73 + 32);
        if (v79 < 64)
        {
          v80 = ~(-1 << v79);
        }

        else
        {
          v80 = -1;
        }

        v81 = v80 & *(v73 + 64);

        result = sub_1CEFCCBDC(&v143, v142, &unk_1EC4BF250, &unk_1CFA01B50);
        v82 = 0;
        v131 = (v79 + 63) >> 6;
        while (v81)
        {
LABEL_30:
          v85 = (v82 << 10) | (16 * __clz(__rbit64(v81)));
          v86 = *(v73 + 56);
          v87 = (*(v73 + 48) + v85);
          v88 = v87[1];
          v139 = *v87;
          v89 = *(v86 + v85 + 8);
          v90 = v143;
          v92 = *(&v144 + 1);
          v91 = v145;
          v93 = *(&v146 + 1);
          v141 = v88;

          v140 = v89;

          sub_1CEFE42D4(v90, *(&v90 + 1));
          sub_1CEFE42D4(v92, v91);
          v138 = *(&v90 + 1);
          v94 = sub_1CF9E5B48();
          v95 = sub_1CF9E5B48();
          if (v93)
          {
            v96 = sub_1CF9E6888();
          }

          else
          {
            v96 = 0;
          }

          v97 = objc_opt_self();
          v98 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v94 metadataVersion:v95 lastEditorDeviceName:v96];

          sub_1CEFE4714(v92, v91);
          sub_1CEFE4714(v90, v138);
          v99 = [v97 etagForVersion:v98 providerDomainID:v137];

          v100 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v102 = v101;

          if (v139 == v100 && v141 == v102)
          {

            v11 = v133;
            v70 = v135;
            v73 = v136;
LABEL_17:
            sub_1CEFCCC44(&v143, &unk_1EC4BF250, &unk_1CFA01B50);

            v71 = v126;
            v72 = v130;
            v69 = v128;
            if (v130 == v126)
            {
              goto LABEL_43;
            }

            goto LABEL_18;
          }

          v81 &= v81 - 1;
          v83 = sub_1CF9E8048();

          v11 = v133;
          v70 = v135;
          v73 = v136;
          if (v83)
          {
            goto LABEL_17;
          }
        }

        while (1)
        {
          v84 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v84 >= v131)
          {
            break;
          }

          v81 = *&v129[8 * v84];
          ++v82;
          if (v81)
          {
            v82 = v84;
            goto LABEL_30;
          }
        }

        v103 = v132;
        result = swift_isUniquelyReferenced_nonNull_native();
        v147 = v103;
        if ((result & 1) == 0)
        {
          result = sub_1CF680B2C(0, *(v132 + 2) + 1, 1);
          v132 = v147;
        }

        v69 = v128;
        v105 = *(v132 + 2);
        v104 = *(v132 + 3);
        if (v105 >= v104 >> 1)
        {
          result = sub_1CF680B2C((v104 > 1), v105 + 1, 1);
          v132 = v147;
        }

        v106 = v132;
        *(v132 + 2) = v105 + 1;
        v107 = &v106[64 * v105];
        v108 = v143;
        v109 = v144;
        v110 = v146;
        *(v107 + 4) = v145;
        *(v107 + 5) = v110;
        *(v107 + 2) = v108;
        *(v107 + 3) = v109;
        v71 = v126;
        v72 = v130;
        if (v130 != v126)
        {
          continue;
        }

        goto LABEL_43;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

BOOL sub_1CF26B16C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16) + 1;
  v5 = (a3 + 48);
  v6 = *a1;
  v28 = a1[1];
  do
  {
    if (!--v4)
    {
      break;
    }

    v30 = v4;
    v8 = *(v5 - 2);
    v9 = *(v5 - 1);
    v10 = v5[4];
    v11 = v5[5];
    v13 = v5[2];
    v12 = v5[3];
    v14 = *v5;
    v15 = v5[1];
    sub_1CEFE42D4(v8, v9);

    sub_1CEFE42D4(v15, v13);

    sub_1CEFE42D4(v8, v9);
    sub_1CEFE42D4(v15, v13);
    v16 = sub_1CF9E5B48();
    v29 = v13;
    v17 = sub_1CF9E5B48();
    if (v11)
    {
      v18 = sub_1CF9E6888();
    }

    else
    {
      v18 = 0;
    }

    v19 = objc_opt_self();
    v20 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v16 metadataVersion:v17 lastEditorDeviceName:v18];

    sub_1CEFE4714(v15, v29);
    sub_1CEFE4714(v8, v9);
    v21 = [v19 etagForVersion:v20 providerDomainID:a4];

    v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v23;

    if (v22 == v26 && v24 == v28)
    {

      sub_1CEFE4714(v8, v9);

      sub_1CEFE4714(v15, v29);

      v4 = v30;
      return v4 == 0;
    }

    v5 += 8;
    v7 = sub_1CF9E8048();

    sub_1CEFE4714(v8, v9);

    sub_1CEFE4714(v15, v29);

    v4 = v30;
  }

  while ((v7 & 1) == 0);
  return v4 == 0;
}

uint64_t sub_1CF26B3D8(uint64_t *a1, int a2, uint64_t a3, void *a4)
{
  v40 = a4;
  LODWORD(v41) = a2;
  v7 = sub_1CF9E63D8();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *a1;
  v38 = *(a1 + 8);
  v18 = *(v4 + 224);
  v39 = *(v4 + 216);
  v19 = sub_1CF9E6448();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v16, 1, 1, v19);
  v21 = swift_allocObject();
  v22 = v40;
  *(v21 + 16) = a3;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  *(v23 + 24) = v38;
  *(v23 + 28) = v41;
  *(v23 + 32) = a3;
  *(v23 + 40) = v22;
  v24 = swift_allocObject();
  v24[2] = sub_1CF2BA174;
  v24[3] = v21;
  v24[4] = v18;
  swift_retain_n();
  v40 = v39;

  v25 = fpfs_current_log();
  v39 = *(v18 + 16);
  v41 = v16;
  sub_1CEFCCBDC(v16, v14, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_1CEFCCC44(v14, &unk_1EC4BE370, qword_1CFA01B30);
    v26 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v27 = v35;
    sub_1CF9E6438();
    (*(v20 + 8))(v14, v19);
    v26 = sub_1CF9E63C8();
    (*(v36 + 8))(v27, v37);
  }

  v28 = swift_allocObject();
  v28[2] = v25;
  v28[3] = sub_1CF2B1594;
  v28[4] = v23;
  v46 = sub_1CF2BA17C;
  v47 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_892;
  v29 = _Block_copy(&aBlock);
  v30 = v25;

  v46 = sub_1CF2BA180;
  v47 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_895;
  v31 = _Block_copy(&aBlock);

  v32 = v40;
  fp_task_tracker_async_and_qos(v39, v40, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v26, v29, v31);
  _Block_release(v31);
  _Block_release(v29);

  return sub_1CEFCCC44(v41, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF26B87C(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), void *a5)
{
  v27[7] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    a4(0);
  }

  else
  {
    v9 = [objc_allocWithZone(FPGSStorageManager) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D0, &unk_1CF9FE760);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1CF9FA440;
    v11 = *MEMORY[0x1E69A07A8];
    *(v10 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v10 + 40) = v12;
    v13 = *MEMORY[0x1E69A0798];
    *(v10 + 48) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v10 + 56) = v14;
    v27[0] = 0;
    v15 = [v9 permanentStorageForItemWithDocID:a1 deviceID:a3 allocateIfNone:0 error:v27];
    if (v15)
    {
      v16 = v15;
      v17 = v27[0];
      v18 = sub_1CF9E6D28();

      v27[4] = a4;
      v27[5] = a5;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 1107296256;
      v27[2] = sub_1CF00A468;
      v27[3] = &block_descriptor_898;
      v19 = _Block_copy(v27);

      [v16 removeAllAdditionsForNamespaces:v18 completionHandler:v19];
      _Block_release(v19);
    }

    else
    {
      v20 = v27[0];

      v21 = sub_1CF9E57F8();

      swift_willThrow();
      v22 = v21;
      LODWORD(v27[0]) = sub_1CF9E5328();
      sub_1CF196978();
      LOBYTE(v20) = sub_1CF9E5658();

      if (v20)
      {

        a4(0);
      }

      else
      {
        v23 = sub_1CF9E57E8();
        v24 = [v23 fp_isGSInvalidStorageError];

        if (v24)
        {
          a4(0);
        }

        else
        {
          v25 = v21;
          a4(v21);
        }
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF26BB5C(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v47 = a5;
  v49 = a3;
  LODWORD(v48) = a2;
  v9 = sub_1CF9E63D8();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(v5 + 216);
  v43 = *(v5 + 224);
  v46 = v20;
  v21 = sub_1CF9E6448();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v17, 1, 1, v21);
  v23 = swift_allocObject();
  v24 = a4;
  *(v23 + 16) = a4;
  v25 = v47;
  *(v23 + 24) = v47;
  v26 = swift_allocObject();
  *(v26 + 16) = v18;
  *(v26 + 24) = v19;
  *(v26 + 28) = v48;
  *(v26 + 32) = v49;
  *(v26 + 40) = v6;
  *(v26 + 48) = v24;
  *(v26 + 56) = v25;
  v27 = swift_allocObject();
  v27[2] = sub_1CEFF9D98;
  v27[3] = v23;
  v45 = v27;
  v28 = v43;
  v27[4] = v43;
  swift_retain_n();
  v47 = v46;

  v48 = v23;

  v29 = fpfs_current_log();
  v30 = *(v28 + 16);
  v31 = v44;
  v46 = v30;
  v49 = v17;
  sub_1CEFCCBDC(v17, v44, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v22 + 48))(v31, 1, v21) == 1)
  {
    sub_1CEFCCC44(v31, &unk_1EC4BE370, qword_1CFA01B30);
    v32 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v33 = v40;
    sub_1CF9E6438();
    (*(v22 + 8))(v31, v21);
    v32 = sub_1CF9E63C8();
    (*(v41 + 8))(v33, v42);
  }

  v34 = swift_allocObject();
  v34[2] = v29;
  v34[3] = sub_1CF2B157C;
  v34[4] = v26;
  v54 = sub_1CF2BA17C;
  v55 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1CEFCA444;
  v53 = &block_descriptor_871;
  v35 = _Block_copy(&aBlock);
  v36 = v29;

  v54 = sub_1CF2B141C;
  v55 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1CEFCA444;
  v53 = &block_descriptor_874;
  v37 = _Block_copy(&aBlock);

  v38 = v47;
  fp_task_tracker_async_and_qos(v46, v47, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v32, v35, v37);
  _Block_release(v37);
  _Block_release(v35);

  return sub_1CEFCCC44(v49, &unk_1EC4BE370, qword_1CFA01B30);
}