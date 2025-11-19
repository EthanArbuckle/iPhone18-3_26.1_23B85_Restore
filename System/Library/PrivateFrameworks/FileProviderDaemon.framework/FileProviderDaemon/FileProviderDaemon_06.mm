uint64_t sub_1CF04FF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  v22 = AssociatedTypeWitness;
  v23 = v5;
  v24 = AssociatedConformanceWitness;
  v25 = v7;
  v8 = type metadata accessor for ThrottlingKey();
  v9 = sub_1CF9E75D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v20 - v14;
  if ((a1 & 0x8000000000000000) == 0)
  {
    return (*(*a1 + 448))(v13);
  }

  v21 = v12;
  (*(*(a1 & 0x7FFFFFFFFFFFFFFFLL) + 448))(v13);
  v17 = *(v8 - 1);
  if ((*(v17 + 48))(v15, 1, v8) == 1)
  {
    (*(v10 + 8))(v15, v21);
    v22 = v5;
    v23 = AssociatedTypeWitness;
    v24 = v7;
    v25 = AssociatedConformanceWitness;
    v18 = type metadata accessor for ThrottlingKey();
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }

  else
  {
    sub_1CF05043C(v8, a2);
    (*(v17 + 8))(v15, v8);
    v22 = v5;
    v23 = AssociatedTypeWitness;
    v24 = v7;
    v25 = AssociatedConformanceWitness;
    v19 = type metadata accessor for ThrottlingKey();
    return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }
}

uint64_t sub_1CF050230@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *(*v1 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(v2 + 568);
  v7 = *(v2 + 552);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = v2;
  v10 = *(TupleTypeMetadata2 + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + *(v9 + 576), AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *(a1 + v10) = sub_1CF03D760();
  v11 = type metadata accessor for ThrottlingKey();
  return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
}

uint64_t sub_1CF05043C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v23 = a2;
  v24 = v5;
  v25 = v6;
  v26 = v8;
  v27 = v7;
  v9 = type metadata accessor for ReconciliationID();
  v10 = v9[-1].i64[1];
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - v13;
  v15 = *(*(a1 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v3, a1);
  LOBYTE(v3) = v17[*(swift_getTupleTypeMetadata2() + 48)];
  (*(v10 + 32))(v14, v17, v9);
  v24 = v6;
  v25 = v5;
  v26 = v7;
  v27 = v8;
  type metadata accessor for ReconciliationID();
  v19 = *(swift_getTupleTypeMetadata2() + 48);
  v20 = v23;
  sub_1CF050768(v9, v23);
  result = (*(v10 + 8))(v14, v9);
  *(v20 + v19) = v3;
  return result;
}

uint64_t sub_1CF050640(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 2;
  v5 = 8 * (v3 + 2);
  if ((v3 + 2) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

uint64_t sub_1CF050768@<X0>(int8x16_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1[-1].i64[1] + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = a1[1].i64[1];
    (*(*(v8 - 8) + 32))(a2, v6, v8);
    v9 = a1[1].i64[0];
    v12 = v8;
    v13 = v9;
  }

  else
  {
    v10 = a1[1].i64[0];
    (*(*(v10 - 8) + 32))(a2, v6, v10);
    v12 = a1[1].i64[1];
    v13 = v10;
  }

  v14 = vextq_s8(a1[2], a1[2], 8uLL);
  type metadata accessor for ReconciliationID();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF050908(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1CF9E75D8();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v29 - v10;
  v41 = 0x203D20646E696BLL;
  v42 = 0xE700000000000000;
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = v34;
  v14 = swift_getAssociatedConformanceWitness();
  v37 = AssociatedTypeWitness;
  v38 = v11;
  v39 = AssociatedConformanceWitness;
  v40 = v14;
  v15 = type metadata accessor for ThrottlingKey();
  sub_1CF050DB4(v15);
  LOBYTE(v35) = 0;
  v37 = AssociatedTypeWitness;
  v38 = v11;
  v16 = v7;
  v39 = AssociatedConformanceWitness;
  v40 = v14;
  v17 = type metadata accessor for ThrottlingKey.Kind();
  swift_getWitnessTable();
  v18 = sub_1CF04EAEC(&v35, v17);
  MEMORY[0x1D3868CC0](v18);

  sub_1CF050EC8(v15, v6);
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v30 + 8))(v6, v31);
  }

  else
  {
    v19 = *(v7 + 32);
    v20 = v32;
    v19(v32, v6, AssociatedTypeWitness);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();

    v37 = 0x65746920444E4120;
    v38 = 0xEF203D2064695F6DLL;
    v21 = (*(*(AssociatedConformanceWitness + 8) + 32))(v13, AssociatedTypeWitness);
    MEMORY[0x1D3868CC0](v21);

    MEMORY[0x1D3868CC0](v37, v38);

    (*(v16 + 8))(v20, AssociatedTypeWitness);
  }

  v22 = sub_1CF051078(v15);
  if (v22 == 89)
  {
    return v41;
  }

  v23 = v22;
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1CF9E7948();

  v35 = 0xD000000000000010;
  v36 = 0x80000001CFA400C0;
  v24 = qword_1CFA02AA8[v23];
  v40 = MEMORY[0x1E69E6530];
  v37 = v24;
  v25 = sub_1CEFF8EA0(&v37);
  v27 = v26;
  sub_1CEFCCC44(&v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v27)
  {
    MEMORY[0x1D3868CC0](v25, v27);

    MEMORY[0x1D3868CC0](v35, v36);

    return v41;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF050DB4(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  v7 = *(a1 + 32);
  v10[0] = *(a1 + 16);
  v10[1] = v7;
  v8 = type metadata accessor for ReconciliationID();
  return (*(*(v8 - 8) + 8))(v5, v8);
}

uint64_t sub_1CF050EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  v9 = *(a1 + 32);
  v17[0] = *(a1 + 16);
  v17[1] = v17[0];
  v17[2] = v9;
  v10 = type metadata accessor for ReconciliationID();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(*&v17[0] - 8);
  v13 = v12;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v12 + 56))(a2, 1, 1);
    return (*(*(v10 - 8) + 8))(v7, v10);
  }

  else
  {
    v15 = v7;
    v16 = *&v17[0];
    (*(v12 + 32))(a2, v15, *&v17[0]);
    return (*(v13 + 56))(a2, 0, 1, v16);
  }
}

uint64_t sub_1CF051078(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  v6 = *(a1 + 32);
  v10[0] = *(a1 + 16);
  v10[1] = v6;
  v7 = type metadata accessor for ReconciliationID();
  v8 = v4[*(swift_getTupleTypeMetadata2() + 48)];
  (*(*(v7 - 8) + 8))(v4, v7);
  return v8;
}

unint64_t sub_1CF0511A4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v6 = 0xD000000000000010;
          v7 = 0x80000001CFA2C3F0;
        }

        else
        {
          v6 = 0xD000000000000012;
          v7 = 0x80000001CFA2C410;
        }
      }

      else
      {
        v7 = 0xE500000000000000;
        v6 = 0x6574617473;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v8 = 0xD000000000000010;
        }

        else
        {
          v8 = 0xD000000000000012;
        }

        if (a1 == 1)
        {
          v9 = 0x80000001CFA2C3F0;
        }

        else
        {
          v9 = 0x80000001CFA2C410;
        }

        if (v6 != v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v9 = 0xE500000000000000;
        if (v6 != 0x6574617473)
        {
          goto LABEL_19;
        }
      }

      if (v7 == v9)
      {

        return v4;
      }

LABEL_19:
      v10 = sub_1CF9E8048();

      if ((v10 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1CF051344(uint64_t a1)
{
  result = sub_1CF0514A0(0, a1);
  if (!v1)
  {
    if (result <= 2)
    {
      if (!result)
      {
        v4 = sub_1CF23DBC0(1, a1);
        sub_1CF0516F0(2, a1);
        return v4;
      }

      if (result == 1 || result == 2)
      {
        return sub_1CF0516F0(2, a1);
      }

      goto LABEL_13;
    }

    if (result == 3)
    {
      sub_1CF1DA62C();
      return swift_allocError();
    }

    if (result != 4)
    {
      if (result == 5)
      {
        return 0;
      }

LABEL_13:
      sub_1CF1DA5D8();
      swift_allocError();
      *v5 = 0;
      return swift_willThrow();
    }

    return 1;
  }

  return result;
}

uint64_t sub_1CF0514A0(char a1, uint64_t a2)
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

    *(v8 + 32) = 0xD00000000000001ALL;
    *(v8 + 40) = 0x80000001CFA360B0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF0516F0(char a1, uint64_t a2)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A0, &qword_1CF9FD3F0);
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

    *(v8 + 32) = 0xD00000000000002DLL;
    *(v8 + 40) = 0x80000001CFA362F0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF05194C(char a1)
{
  switch(a1)
  {
    case 1:
      v49 = vextq_s8(v1[5], v1[5], 8uLL);
      v138 = vextq_s8(v1[6], v1[6], 8uLL);
      result = type metadata accessor for Propagation.UpdateItem();
      break;
    case 2:
      v44 = vextq_s8(v1[5], v1[5], 8uLL);
      v133 = vextq_s8(v1[6], v1[6], 8uLL);
      result = type metadata accessor for Propagation.DeleteItem();
      break;
    case 3:
      v47 = v1[5];
      v136 = v1[6];
      result = type metadata accessor for Ingestion.FetchItemMetadata();
      break;
    case 4:
      v36 = v1[5];
      v125 = v1[6];
      result = type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty();
      break;
    case 5:
      v56 = v1[5];
      v145 = v1[6];
      result = type metadata accessor for Ingestion.ReSnapshotChildren();
      break;
    case 6:
      v61 = v1[5];
      v150 = v1[6];
      result = type metadata accessor for Ingestion.FetchChildrenMetadata();
      break;
    case 7:
      v48 = v1[5];
      v137 = v1[6];
      result = type metadata accessor for Materialization.MaterializeItem();
      break;
    case 8:
      v64 = v1[5];
      v153 = v1[6];
      result = type metadata accessor for Materialization.EvictItem();
      break;
    case 9:
      v41 = v1[5];
      v130 = v1[6];
      result = type metadata accessor for Materialization.EvictChildren();
      break;
    case 10:
      v63 = v1[5];
      v152 = v1[6];
      result = type metadata accessor for Bouncing.BounceItem();
      break;
    case 11:
      v33 = v1[5];
      v122 = v1[6];
      result = type metadata accessor for Ingestion.CollectCapturedContent();
      break;
    case 12:
      v40 = v1[5];
      v129 = v1[6];
      result = type metadata accessor for Ingestion.DeleteRejectedItemInTree();
      break;
    case 13:
      v60 = v1[5];
      v149 = v1[6];
      result = type metadata accessor for DiskImport.MarkDirectorDiskImportAsDone();
      break;
    case 14:
      v28 = v1[5];
      v117 = v1[6];
      result = type metadata accessor for Ingestion.FaultDirectoryInTree();
      break;
    case 15:
      v45 = v1[5];
      v134 = v1[6];
      result = type metadata accessor for Ingestion.CancelFetchFileContent();
      break;
    case 16:
      v25 = v1[5];
      v114 = v1[6];
      result = type metadata accessor for DiskImport.DiskImportFinished();
      break;
    case 17:
      v51 = v1[5];
      v140 = v1[6];
      result = type metadata accessor for DiskImport.ContinueDiskImport();
      break;
    case 18:
      v62 = v1[5];
      v151 = v1[6];
      result = type metadata accessor for Ingestion.UnfaultDirectoryInTree();
      break;
    case 19:
      v72 = v1[5];
      v161 = v1[6];
      result = type metadata accessor for DiskImport.UnfaultDirectoryAndChildren();
      break;
    case 20:
      v54 = v1[5];
      v143 = v1[6];
      result = type metadata accessor for Ingestion.MergeItems();
      break;
    case 21:
      v59 = v1[5];
      v148 = v1[6];
      result = type metadata accessor for Materialization.MaterializeParentHierarchy();
      break;
    case 22:
      v69 = vextq_s8(v1[5], v1[5], 8uLL);
      v158 = vextq_s8(v1[6], v1[6], 8uLL);
      result = type metadata accessor for Propagation.CancelUpdate();
      break;
    case 23:
      v76 = v1[5];
      v165 = v1[6];
      result = type metadata accessor for Ingestion.FetchContent();
      break;
    case 24:
      v43 = v1[5];
      v132 = v1[6];
      result = type metadata accessor for Ingestion.FetchEventStream();
      break;
    case 25:
      v42 = v1[5];
      v131 = v1[6];
      result = type metadata accessor for Materialization.MaterializeIgnoredItem();
      break;
    case 26:
      v80 = v1[5];
      v169 = v1[6];
      result = type metadata accessor for Maintenance.UnblockEvictability();
      break;
    case 27:
      v23 = v1[5];
      v112 = v1[6];
      result = type metadata accessor for Maintenance.MarkPackagesAsEvictable();
      break;
    case 28:
      v77 = v1[5];
      v166 = v1[6];
      result = type metadata accessor for Maintenance.MarkPackagesAsSyncRoot();
      break;
    case 29:
      v78 = v1[5];
      v167 = v1[6];
      result = type metadata accessor for Maintenance.UnblockIgnoreFolderProcessing();
      break;
    case 30:
      v65 = v1[5];
      v154 = v1[6];
      result = type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy();
      break;
    case 31:
      v50 = v1[5];
      v139 = v1[6];
      result = type metadata accessor for Maintenance.MarkDirectoriesAsLocked();
      break;
    case 32:
      v66 = v1[5];
      v155 = v1[6];
      result = type metadata accessor for Ingestion.DeferredRescan();
      break;
    case 33:
      v29 = v1[5];
      v118 = v1[6];
      result = type metadata accessor for Ingestion.MarkParentDeleted();
      break;
    case 34:
      v24 = v1[5];
      v113 = v1[6];
      result = type metadata accessor for Maintenance.UnpauseReconciliations();
      break;
    case 35:
      v20 = v1[5];
      v109 = v1[6];
      result = type metadata accessor for Maintenance.RetriggerResolvedVendorExclusion();
      break;
    case 36:
      v21 = v1[5];
      v110 = v1[6];
      result = type metadata accessor for Maintenance.ResolveItemEvictability();
      break;
    case 37:
      v15 = v1[5];
      v104 = v1[6];
      result = type metadata accessor for Conflict.PopulateConflicts();
      break;
    case 38:
      v79 = v1[5];
      v168 = v1[6];
      result = type metadata accessor for RemoteVersion.CleanRemoteVersions();
      break;
    case 39:
      v71 = v1[5];
      v160 = v1[6];
      result = type metadata accessor for Maintenance.UpdateClosestSyncRoot();
      break;
    case 40:
      v37 = v1[5];
      v126 = v1[6];
      result = type metadata accessor for Maintenance.RescanParentDeletedChildren();
      break;
    case 41:
      v52 = v1[5];
      v141 = v1[6];
      result = type metadata accessor for Maintenance.UnblockItemRejection();
      break;
    case 42:
      v74 = v1[5];
      v163 = v1[6];
      result = type metadata accessor for Maintenance.UnblockDiskImportItems();
      break;
    case 43:
      v11 = v1[5];
      v100 = v1[6];
      result = type metadata accessor for Maintenance.RescanPendingSetFSSide();
      break;
    case 44:
      v27 = v1[5];
      v116 = v1[6];
      result = type metadata accessor for Maintenance.RescanPendingSetFPSide();
      break;
    case 45:
      v67 = v1[5];
      v156 = v1[6];
      result = type metadata accessor for Maintenance.UnblockRemoteDeletions();
      break;
    case 46:
      v85 = v1[5];
      v174 = v1[6];
      result = type metadata accessor for Maintenance.UnblockPathMatchingCycles();
      break;
    case 47:
      v17 = v1[5];
      v106 = v1[6];
      result = type metadata accessor for Maintenance.UnblockChildrenDeletion();
      break;
    case 48:
      v30 = v1[5];
      v119 = v1[6];
      result = type metadata accessor for Maintenance.RescanRecTableForConflictsInGS();
      break;
    case 49:
      v35 = v1[5];
      v124 = v1[6];
      result = type metadata accessor for Maintenance.UnmarkParentDeletedMergeSource();
      break;
    case 50:
      v9 = v1[5];
      v98 = v1[6];
      result = type metadata accessor for Maintenance.ReimportMissingJobs();
      break;
    case 51:
      v89 = v1[5];
      v178 = v1[6];
      result = type metadata accessor for Maintenance.UnblockPathMatchingDuringImport();
      break;
    case 52:
      v84 = v1[5];
      v173 = v1[6];
      result = type metadata accessor for Maintenance.UnblockThrottledReconciliations();
      break;
    case 53:
      v16 = v1[5];
      v105 = v1[6];
      result = type metadata accessor for Maintenance.UnblockThrottledItemJobs();
      break;
    case 54:
      v81 = v1[5];
      v170 = v1[6];
      result = type metadata accessor for Maintenance.UnblockThrottledJobs();
      break;
    case 55:
      v83 = v1[5];
      v172 = v1[6];
      result = type metadata accessor for Ingestion.TrackTemporaryItem();
      break;
    case 56:
      v18 = v1[5];
      v107 = v1[6];
      result = type metadata accessor for Maintenance.RescanMaterializedSpeculativeItems();
      break;
    case 57:
      v73 = v1[5];
      v162 = v1[6];
      result = type metadata accessor for Materialization.BackgroundMaterializeParentHierarchy();
      break;
    case 58:
      v31 = v1[5];
      v120 = v1[6];
      result = type metadata accessor for Maintenance.ReimportOnGitOrFolderPackage();
      break;
    case 59:
      v75 = v1[5];
      v164 = v1[6];
      result = type metadata accessor for Maintenance.FixupOutOfSyncFSBaseVersion();
      break;
    case 60:
      v38 = v1[5];
      v127 = v1[6];
      result = type metadata accessor for Maintenance.RemoveConflictStuckInTheWharf();
      break;
    case 61:
      v55 = v1[5];
      v144 = v1[6];
      result = type metadata accessor for Maintenance.FixupConflictInGSForDatalessItems();
      break;
    case 62:
      v58 = vextq_s8(v1[5], v1[5], 8uLL);
      v147 = vextq_s8(v1[6], v1[6], 8uLL);
      result = type metadata accessor for Propagation.DeletionAcked();
      break;
    case 63:
      v46 = v1[5];
      v135 = v1[6];
      result = type metadata accessor for PinningJob.PinItem();
      break;
    case 64:
      v39 = v1[5];
      v128 = v1[6];
      result = type metadata accessor for PinningJob.UnpinItem();
      break;
    case 65:
      v57 = v1[5];
      v146 = v1[6];
      result = type metadata accessor for Maintenance.MarkAllUploadedItemAsPurgable();
      break;
    case 66:
      v12 = v1[5];
      v101 = v1[6];
      result = type metadata accessor for Maintenance.RefreshInheritedContentPolicy();
      break;
    case 67:
      v26 = v1[5];
      v115 = v1[6];
      result = type metadata accessor for Maintenance.FixContentPolicyInNonMaterializedFolders();
      break;
    case 68:
      v91 = v1[5];
      v180 = v1[6];
      result = type metadata accessor for PinningJob.RefreshChildPinStatus();
      break;
    case 69:
      v22 = v1[5];
      v111 = v1[6];
      result = type metadata accessor for Maintenance.PaceRefreshInheritedContentPolicy();
      break;
    case 70:
      v7 = v1[5];
      v96 = v1[6];
      result = type metadata accessor for Maintenance.UnblockChildrenEviction();
      break;
    case 71:
      v14 = v1[5];
      v103 = v1[6];
      result = type metadata accessor for Maintenance.UnblockMaterializingUnboundDatalessItems();
      break;
    case 72:
      v82 = v1[5];
      v171 = v1[6];
      result = type metadata accessor for Maintenance.UnblockItemBlockedOnMissingBounceItem();
      break;
    case 73:
      v86 = v1[5];
      v175 = v1[6];
      result = type metadata accessor for Maintenance.UnblockSnapshottingItemsWithoutJob();
      break;
    case 74:
      v88 = v1[5];
      v177 = v1[6];
      result = type metadata accessor for Ingestion.UnlinkOldVersion();
      break;
    case 75:
      v19 = v1[5];
      v108 = v1[6];
      result = type metadata accessor for Materialization.InjectOldVersion();
      break;
    case 76:
      v53 = v1[5];
      v142 = v1[6];
      result = type metadata accessor for Maintenance.UnblockEvictionWithNotInterested();
      break;
    case 77:
      v8 = v1[5];
      v97 = v1[6];
      result = type metadata accessor for Maintenance.UnblockDiskImportStatusOnFPSide();
      break;
    case 78:
      v90 = v1[5];
      v179 = v1[6];
      result = type metadata accessor for Maintenance.UnblockDeletionsInIgnoredHierarchy();
      break;
    case 79:
      v6 = v1[5];
      v95 = v1[6];
      result = type metadata accessor for Maintenance.ExpireAllThrottles();
      break;
    case 80:
      v13 = v1[5];
      v102 = v1[6];
      result = type metadata accessor for Maintenance.UnblockIgnoreWithDLV2Content();
      break;
    case 81:
      v34 = v1[5];
      v123 = v1[6];
      result = type metadata accessor for Maintenance.UnblockMissedChildDeletion();
      break;
    case 82:
      v32 = v1[5];
      v121 = v1[6];
      result = type metadata accessor for Maintenance.UpdateContentRankForMaterializedItems();
      break;
    case 83:
      v5 = v1[5];
      v94 = v1[6];
      result = type metadata accessor for Ingestion.ReparentTrashedItemToTrashRoot();
      break;
    case 84:
      v4 = v1[5];
      v93 = v1[6];
      result = type metadata accessor for Maintenance.UpdateContentRankAfterIndexDrop();
      break;
    case 85:
      v68 = v1[5];
      v157 = v1[6];
      result = type metadata accessor for Maintenance.UpdateIndexableItems();
      break;
    case 86:
      v70 = v1[5];
      v159 = v1[6];
      result = type metadata accessor for Maintenance.UpdateDLV2ItemsWithRecursiveCount();
      break;
    case 87:
      v87 = v1[5];
      v176 = v1[6];
      result = type metadata accessor for Maintenance.FixParentMaterializationStuckOnImport();
      break;
    case 88:
      v10 = v1[5];
      v99 = v1[6];
      result = type metadata accessor for Ingestion.ReactToOwnershipChange();
      break;
    default:
      v3 = vextq_s8(v1[5], v1[5], 8uLL);
      v92 = vextq_s8(v1[6], v1[6], 8uLL);
      result = type metadata accessor for Propagation.CreateItem();
      break;
  }

  return result;
}

uint64_t sub_1CF05236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CF0523F0(a1, a2, a3, a4);
  v7 = *(v4 + 616);
  v8 = *(v4 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_1CF0523F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_1CF052464(a1, a2, a3, a4);
  sub_1CF052548(0x80000);
  return v11;
}

uint64_t sub_1CF052464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 576);
  v10 = *(*v4 + 560);
  v11 = *(*v4 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v4 + v9, a1, AssociatedTypeWitness);

  return sub_1CF0525C8(a2, a3, a4);
}

uint64_t sub_1CF052548(uint64_t a1)
{
  if (*(v1 + 112))
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  else
  {
    *(v1 + 96) |= a1;
    return v1;
  }

  return result;
}

uint64_t sub_1CF0525C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *(v3 + 96) = xmmword_1CF9FEC30;
  *(v3 + 112) = 0;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  *(v3 + 136) = a3;
  if ((a3 & 0x8000) != 0)
  {
    sub_1CF052548(0x200000);
  }

  return v3;
}

BOOL sub_1CF052664(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_1CF9E81C8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1CF05270C(uint64_t a1)
{
  v3 = *v1;
  v1[5] = a1;
  v4 = v3[18];
  v5 = v3[19];
  v6 = v3[20];
  v7 = v3[21];
  v8 = sub_1CF052838(a1);
  v10 = v9;
  v11 = sub_1CF0527F4(a1) != 9;

  return sub_1CF05284C(v8, v10, v11);
}

uint64_t sub_1CF052838(uint64_t a1)
{
  v1 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  result = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x78);
  v3 = *(v1 + 128);
  return result;
}

uint64_t sub_1CF05284C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_1CF05285C()
{
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 168);
  v7 = *(*v0 + 160);
  type metadata accessor for SchedulableJob();
  v1 = sub_1CF0452C8(v0[5]);
  swift_allocObject();
  v2 = sub_1CF05270C(v1);

  return v2;
}

uint64_t sub_1CF05295C()
{
  v0 = *(sub_1CF0529A8() + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF0529B0()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 240))(result);

    return v1 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF052A14()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 216))(result);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF052A78()
{
  sub_1CF052AA0();
}

uint64_t sub_1CF052AA8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 224))(result);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF052B0C()
{
  sub_1CF052B34();
}

uint64_t sub_1CF052B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 88);
  v7 = type metadata accessor for JobLockRule();
  sub_1CF9E7FA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  swift_allocObject();
  v11 = sub_1CF9E6D68();
  (*(v8 + 16))(v12, a3, v7);
  sub_1CF045898(v11);
  v13 = sub_1CF052C94();

  return v13;
}

uint64_t sub_1CF052C94()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for JobLock.Registration();
  sub_1CF9E75D8();
  type metadata accessor for JobLock.BlockedRuleError();
  swift_getWitnessTable();
  sub_1CF9E8238();
  sub_1CF052DA4(v0, sub_1CF054E80);
  return v4;
}

uint64_t sub_1CF052DA4(void *a1, void (*a2)(void))
{
  if (objc_sync_enter(a1))
  {
    swift_unknownObjectRetain();
    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
  }

  a2();
  result = objc_sync_exit(a1);
  if (result)
  {
    swift_unknownObjectRetain();
    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
  }

  return result;
}

uint64_t sub_1CF052E68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1CF052EB0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  sub_1CF052EF4(v4, a2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF052EF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40[3] = a1;
  v5 = *(a2 + 16);
  v40[1] = *(a2 + 24);
  v40[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1CF9E75D8();
  v40[0] = *(v7 - 8);
  v8 = *(v40[0] + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v40 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v40 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v40 - v21;
  v23 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v3, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return MEMORY[0x1D386A470](4);
      }

      (*(v12 + 32))(v22, v25, AssociatedTypeWitness);
      v28 = 7;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      (*(v12 + 32))(v22, v25, AssociatedTypeWitness);
      v28 = 5;
    }

    else
    {
      (*(v12 + 32))(v22, v25, AssociatedTypeWitness);
      v28 = 6;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v33 = *(TupleTypeMetadata3 + 48);
      v34 = *(TupleTypeMetadata3 + 64);
      v35 = *(v12 + 32);
      v35(v22, v25, AssociatedTypeWitness);
      v35(v19, &v25[v33], AssociatedTypeWitness);
      v35(v16, &v25[v34], AssociatedTypeWitness);
      MEMORY[0x1D386A470](1);
      v36 = *(swift_getAssociatedConformanceWitness() + 40);
      sub_1CF9E6758();
      sub_1CF9E6758();
      sub_1CF9E6758();
      v37 = *(v12 + 8);
      v37(v16, AssociatedTypeWitness);
      v37(v19, AssociatedTypeWitness);
      return (v37)(v22, AssociatedTypeWitness);
    }

    (*(v12 + 32))(v22, v25, AssociatedTypeWitness);
    v28 = 0;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 2)
  {
    (*(v12 + 32))(v22, v25, AssociatedTypeWitness);
    v28 = 3;
LABEL_15:
    MEMORY[0x1D386A470](v28);
    v39 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1CF9E6758();
    return (*(v12 + 8))(v22, AssociatedTypeWitness);
  }

  v29 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v12 + 32))(v22, v25, AssociatedTypeWitness);
  v30 = v40[0];
  (*(v40[0] + 32))(v11, &v25[v29], v7);
  MEMORY[0x1D386A470](2);
  v31 = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1CF9E6758();
  sub_1CF9E75E8();
  (*(v30 + 8))(v11, v7);
  return (*(v12 + 8))(v22, AssociatedTypeWitness);
}

uint64_t sub_1CF053478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BE0, &unk_1CF9FD400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF0534E8(id a1, uint64_t a2, unsigned __int8 a3)
{
  result = 0;
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        return result;
      }

      v18 = a1;
      v6 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast())
      {

        return 0xD000000000000017;
      }

      v19 = 0x3C3A726F72726520;
      swift_getErrorValue();
      v11 = Error.prettyDescription.getter(v17);
      v12 = [v11 description];
      v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v15 = v14;

      MEMORY[0x1D3868CC0](v13, v15);

LABEL_15:
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      return v19;
    }

LABEL_9:
    if (!a1)
    {
      return 0;
    }

    v19 = 0;
    v7 = a1;
    sub_1CF03C530(a1, a2, a3);
    MEMORY[0x1D3868CC0](0x3C3A6D6F726620, 0xE700000000000000);
    type metadata accessor for Continuation();
    sub_1CF9E7B58();
    sub_1CF03D7A8(v7, a2, a3);
    goto LABEL_15;
  }

  if (!a3)
  {
    if (a2)
    {
      v19 = 0;
      v9 = a1;
      MEMORY[0x1D3868CC0](0x3C3A6D6F726620, 0xE700000000000000);
      type metadata accessor for Continuation();
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](8254, 0xE200000000000000);
      v10 = v9;
    }

    else
    {
      v19 = 32;
      v10 = a1;
    }

    v16 = sub_1CF057690(v10);
    MEMORY[0x1D3868CC0](v16);

    return v19;
  }

  if (a3 == 1)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1CF0537B0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v190 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v162 = *(TupleTypeMetadata2 - 8);
  v9 = *(v162 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v163 = &v159 - v11;
  v182 = v8;
  v180 = *(v8 - 8);
  v12 = *(v180 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v161 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v171 = &v159 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v181 = &v159 - v18;
  v188 = AssociatedTypeWitness;
  v189 = *(AssociatedTypeWitness - 8);
  v19 = *(v189 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v169 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v168 = &v159 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v167 = &v159 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v166 = &v159 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v160 = &v159 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v173 = &v159 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v172 = &v159 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v177 = &v159 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v179 = &v159 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v178 = &v159 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v170 = &v159 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v164 = &v159 - v42;
  v183 = a4;
  v184 = a3;
  v43 = type metadata accessor for JobLockRule();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x1EEE9AC00](v43);
  v174 = &v159 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v159 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48);
  v53 = &v159 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v56 = &v159 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54);
  v175 = &v159 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v176 = &v159 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v159 - v61;
  v63 = swift_getTupleTypeMetadata2();
  v187 = *(v63 - 8);
  v64 = *(v187 + 64);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v67 = &v159 - v66;
  v185 = v44;
  v186 = v65;
  v68 = &v159 + *(v65 + 48) - v66;
  v69 = *(v44 + 16);
  v69(&v159 - v66, a1, v43);
  v70 = v68;
  v69(v68, v190, v43);
  v190 = v43;
  v191 = v67;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v107 = v189;
      v74 = v190;
      if (EnumCaseMultiPayload == 6)
      {
        v108 = v174;
        v73 = v191;
        v69(v174, v191, v190);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          (*(v107 + 8))(v108, v188);
          goto LABEL_35;
        }

        v109 = v169;
        v110 = v73;
        v111 = v188;
        (*(v107 + 32))(v169, v68, v188);
        v112 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
        v80 = sub_1CF9E6868();
        v113 = *(v107 + 8);
        v113(v109, v111);
        v114 = v108;
        v115 = v111;
        v73 = v110;
        goto LABEL_38;
      }

      v141 = swift_getEnumCaseMultiPayload();
      v73 = v191;
      if (v141 != 7)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    v75 = v189;
    v74 = v190;
    if (EnumCaseMultiPayload != 4)
    {
      v69(v50, v191, v190);
      v133 = swift_getEnumCaseMultiPayload();
      v134 = v188;
      if (v133 != 5)
      {
        (*(v75 + 8))(v50, v188);
        v73 = v191;
        goto LABEL_35;
      }

      v135 = v168;
      (*(v75 + 32))(v168, v68, v188);
      v136 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
      v80 = sub_1CF9E6868();
      v137 = *(v75 + 8);
      v137(v135, v134);
      v137(v50, v134);
LABEL_47:
      v82 = v185;
      v73 = v191;
      goto LABEL_36;
    }

    v73 = v191;
    v69(v53, v191, v190);
    v76 = swift_getEnumCaseMultiPayload();
    v77 = v188;
    if (v76 != 4)
    {
      (*(v75 + 8))(v53, v188);
      goto LABEL_35;
    }

    v78 = v167;
    (*(v75 + 32))(v167, v68, v188);
    v79 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
    v80 = sub_1CF9E6868();
    v81 = *(v75 + 8);
    v81(v78, v77);
    v81(v53, v77);
    v82 = v185;
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v72 = v188;
      v73 = v191;
      if (!EnumCaseMultiPayload)
      {
        v74 = v190;
        v69(v62, v191, v190);
        if (swift_getEnumCaseMultiPayload())
        {
          (*(v189 + 8))(v62, v72);
LABEL_35:
          v80 = 0;
          v74 = v186;
          v82 = v187;
          goto LABEL_36;
        }

        v144 = v189;
        v145 = v164;
        (*(v189 + 32))(v164, v68, v72);
        v146 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
        v80 = sub_1CF9E6868();
        v113 = *(v144 + 8);
        v113(v145, v72);
        v114 = v62;
        v115 = v72;
LABEL_38:
        v113(v114, v115);
        v82 = v185;
        goto LABEL_36;
      }

      v116 = v176;
      v74 = v190;
      v69(v176, v191, v190);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v118 = *(TupleTypeMetadata3 + 48);
      v119 = *(TupleTypeMetadata3 + 64);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v142 = *(v189 + 8);
        v142(&v116[v119], v72);
        v142(&v116[v118], v72);
        v142(v116, v72);
        v73 = v191;
        goto LABEL_35;
      }

      v120 = v189;
      v121 = *(v189 + 32);
      v122 = v170;
      v121(v170, v70, v72);
      v121(v178, &v116[v118], v72);
      v121(v179, &v116[v119], v72);
      v121(v177, &v70[v118], v72);
      v123 = &v70[v119];
      v124 = v172;
      v121(v172, v123, v72);
      v125 = v122;
      v126 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
      v127 = sub_1CF9E6868();
      v128 = *(v120 + 8);
      v128(v116, v72);
      if (v127)
      {
        v130 = v177;
        v129 = v178;
        if (sub_1CF9E6868())
        {
          v131 = v172;
          v132 = v125;
          v80 = sub_1CF9E6868();
          v128(v131, v72);
          v128(v130, v72);
          v128(v179, v72);
          v128(v129, v72);
          v128(v132, v72);
          goto LABEL_47;
        }

        v128(v172, v72);
        v128(v130, v72);
        v128(v179, v72);
        v148 = v129;
      }

      else
      {
        v128(v124, v72);
        v128(v177, v72);
        v128(v179, v72);
        v148 = v178;
      }

      v128(v148, v72);
      v128(v125, v72);
      v80 = 0;
      goto LABEL_47;
    }

    v83 = v188;
    v84 = v189;
    v73 = v191;
    if (EnumCaseMultiPayload == 2)
    {
      v85 = v175;
      v69(v175, v191, v190);
      v86 = v182;
      v87 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v180 + 8))(&v85[v87], v86);
        (*(v84 + 8))(v85, v83);
        v73 = v191;
        goto LABEL_35;
      }

      v88 = v173;
      v186 = *(v84 + 32);
      v187 = v84 + 32;
      v186(v173, v70, v83);
      v89 = v180;
      v90 = v85;
      v91 = *(v180 + 32);
      (v91)(v181, &v90[v87], v86);
      v92 = v171;
      v91();
      v93 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
      v94 = sub_1CF9E6868();
      v95 = v90;
      v96 = *(v84 + 8);
      v96(v95, v83);
      if ((v94 & 1) == 0)
      {
        v147 = *(v89 + 8);
        v147(v92, v86);
        v147(v181, v86);
        v96(v88, v83);
        v80 = 0;
        v82 = v185;
        v74 = v190;
        v73 = v191;
        goto LABEL_36;
      }

      v179 = v93;
      v184 = v96;
      v97 = *(TupleTypeMetadata2 + 48);
      v98 = v86;
      v99 = v84;
      v100 = *(v89 + 16);
      v101 = v89;
      v102 = v163;
      v100(v163, v181, v98);
      v183 = v97;
      v100(&v102[v97], v92, v98);
      v103 = *(v99 + 48);
      if (v103(v102, 1, v83) == 1)
      {
        v104 = *(v101 + 8);
        v105 = v182;
        v104(v92, v182);
        v104(v181, v105);
        v184(v173, v83);
        v106 = v103(&v102[v183], 1, v83);
        v74 = v190;
        v73 = v191;
        if (v106 == 1)
        {
          v104(v102, v182);
LABEL_28:
          v80 = 1;
          v82 = v185;
          goto LABEL_36;
        }
      }

      else
      {
        v149 = v161;
        v100(v161, v102, v182);
        v150 = v183;
        if (v103(&v102[v183], 1, v83) != 1)
        {
          v154 = v160;
          v186(v160, &v102[v150], v83);
          v155 = sub_1CF9E6868();
          v156 = v184;
          v184(v154, v83);
          v157 = *(v180 + 8);
          v158 = v182;
          v157(v171, v182);
          v157(v181, v158);
          v156(v173, v83);
          v156(v149, v83);
          v157(v102, v158);
          v74 = v190;
          v73 = v191;
          if (v155)
          {
            goto LABEL_28;
          }

LABEL_44:
          v80 = 0;
          v82 = v185;
          goto LABEL_36;
        }

        v151 = *(v180 + 8);
        v152 = v182;
        v151(v171, v182);
        v151(v181, v152);
        v153 = v184;
        v184(v173, v83);
        v153(v149, v83);
        v74 = v190;
        v73 = v191;
      }

      (*(v162 + 8))(v102, TupleTypeMetadata2);
      goto LABEL_44;
    }

    v74 = v190;
    v69(v56, v191, v190);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v84 + 8))(v56, v83);
      goto LABEL_35;
    }

    v138 = v166;
    (*(v84 + 32))(v166, v68, v83);
    v139 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
    v80 = sub_1CF9E6868();
    v140 = *(v84 + 8);
    v140(v138, v83);
    v140(v56, v83);
    v82 = v185;
  }

LABEL_36:
  (*(v82 + 8))(v73, v74);
  return v80 & 1;
}

uint64_t sub_1CF054A5C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1CF9E70C8();
  if (!v26)
  {
    return sub_1CF9E6DA8();
  }

  v48 = v26;
  v52 = sub_1CF9E7A88();
  v39 = sub_1CF9E7A98();
  sub_1CF9E7A38();
  result = sub_1CF9E70B8();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1CF9E7168();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1CF9E7A78();
      result = sub_1CF9E70E8();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF054EA0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1CF054F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = (*(*a1 + 184))();
  if (v7 == 9)
  {
    return 0;
  }

  v9 = v7;
  v10 = (*(*v3 + 488))();
  v11 = *(*v3 + 168);

  v13 = v11(v12);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = *(v6 + 80);
  *(v15 + 24) = *(v6 + 88);
  *(v15 + 40) = *(v6 + 104);
  *(v15 + 48) = v14;
  type metadata accessor for JobLimitSlot();
  swift_allocObject();
  sub_1CF9AC8EC(v10, v9, a2, a3, v13, sub_1CF527D34, v15);
  v17 = v16;

  return v17;
}

uint64_t sub_1CF055124()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF05515C()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF055198@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v143 = a4;
  v7 = a1;
  v126 = a5;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  v10 = type metadata accessor for JobLockRule();
  v157 = *(v10 - 8);
  v11 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v138 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v142 = &v123 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v131 = &v123 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v123 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v129 = &v123 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v133 = &v123 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v136 = &v123 - v26;
  v123 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v123 - v29;
  swift_beginAccess();
  v31 = v7[2];
  v147[6] = v8;
  v147[7] = v9;
  v144 = a2;
  v147[8] = a2;
  v147[9] = a3;
  v128 = a3;

  WitnessTable = swift_getWitnessTable();
  v33 = v146;
  v34 = sub_1CF9E66C8();
  v145 = v33;
  *&v148 = v34;
  v124 = v8;
  v125 = v9;
  v147[2] = v8;
  v147[3] = v9;
  v137 = WitnessTable;
  v35 = sub_1CF9E6708();
  v36 = swift_getWitnessTable();
  v146 = v35;
  v37 = v145;
  v39 = sub_1CF054A5C(sub_1CF52BB30, v147, v35, v10, MEMORY[0x1E69E73E0], v36, MEMORY[0x1E69E7410], v38);
  v127 = v37;
  v40 = v136;

  v41 = sub_1CF9E6DF8();
  v145 = v7;
  v135 = v39;
  if (v41)
  {
    v42 = 0;
    v140 = (v157 + 32);
    v141 = (v157 + 16);
    v139 = (v157 + 8);
    v134 = v30;
    do
    {
      v43 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v43)
      {
        v44 = (*(v157 + 16))(v30, v39 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v42, v10);
        v45 = (v42 + 1);
        if (__OFADD__(v42, 1))
        {
          goto LABEL_77;
        }
      }

      else
      {
        v44 = sub_1CF9E7998();
        if (v123 != 8)
        {
          goto LABEL_82;
        }

        *&v148 = v44;
        (*v141)(v30, &v148, v10);
        v44 = swift_unknownObjectRelease();
        v45 = (v42 + 1);
        if (__OFADD__(v42, 1))
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }
      }

      (*v140)(v40, v30, v10);
      swift_beginAccess();
      v47 = sub_1CF9E6718();
      if (*v46)
      {
        v48 = v46;
        v44 = sub_1CEFCCBDC(v143, &v148, &unk_1EC4C1BE0, &unk_1CF9FD400);
        if (!*(&v149 + 1))
        {
          goto LABEL_80;
        }

        v49 = v48[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48[1] = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v49 = sub_1CF1F7408(0, v49[2] + 1, 1, v49);
          v48[1] = v49;
        }

        v52 = v49[2];
        v51 = v49[3];
        if (v52 >= v51 >> 1)
        {
          v49 = sub_1CF1F7408((v51 > 1), v52 + 1, 1, v49);
          v48[1] = v49;
        }

        v7 = v145;
        v49[2] = v52 + 1;
        sub_1CF054EA0(&v148, &v49[5 * v52 + 4]);
        v47(&v152, 0);
        swift_endAccess();
        v40 = v136;
        (*v139)(v136, v10);
        v30 = v134;
        v39 = v135;
      }

      else
      {
        v47(&v152, 0);
        swift_endAccess();
        (*v139)(v40, v10);
        v7 = v145;
      }

      ++v42;
    }

    while (v45 != sub_1CF9E6DF8());
  }

  *&v148 = v39;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  if (sub_1CF9E7128())
  {
    v42 = v144;
    v53 = sub_1CF9E6DF8();
    v54 = v132;
    if (v53)
    {
      v55 = 0;
      v139 = (v157 + 32);
      v140 = (v157 + 16);
      v134 = (v157 + 8);
      v136 = ((v157 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      do
      {
        v58 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v58)
        {
          v59 = *(v157 + 16);
          v44 = (v59)(v142, v42 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v55, v10);
        }

        else
        {
          v44 = sub_1CF9E7998();
          if (v123 != 8)
          {
            goto LABEL_83;
          }

          *&v148 = v44;
          v59 = *v140;
          (*v140)(v142, &v148, v10);
          v44 = swift_unknownObjectRelease();
        }

        v42 = v146;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_78;
        }

        v141 = (v55 + 1);
        (*v139)(v54, v142, v10);
        swift_beginAccess();
        v60 = v7[2];
        sub_1CF9E6728();
        v61 = v54;
        v62 = v152;
        swift_endAccess();
        if (v62)
        {
          sub_1CF24CCFC(v62);
        }

        else
        {
          v59(v130, v54, v10);
          *&v152 = MEMORY[0x1E69E7CC0];
          *(&v152 + 1) = MEMORY[0x1E69E7CC0];
          swift_beginAccess();
          sub_1CF9E6738();
          swift_endAccess();
        }

        v63 = v138;
        v59(v138, v61, v10);
        swift_beginAccess();
        v65 = sub_1CF9E6718();
        if (*v64)
        {
          v42 = v64;
          v44 = sub_1CEFCCBDC(v143, &v152, &unk_1EC4C1BE0, &unk_1CF9FD400);
          if (!v153)
          {
            goto LABEL_81;
          }

          sub_1CF054EA0(&v152, &v148);
          *(&v150 + 1) = 0;
          v151 = 1;
          v66 = *v42;
          v67 = swift_isUniquelyReferenced_nonNull_native();
          *v42 = v66;
          v57 = v141;
          if ((v67 & 1) == 0)
          {
            v66 = sub_1CF044A50(0, v66[2] + 1, 1, v66);
            *v42 = v66;
          }

          v69 = v66[2];
          v68 = v66[3];
          if (v69 >= v68 >> 1)
          {
            v66 = sub_1CF044A50((v68 > 1), v69 + 1, 1, v66);
            *v42 = v66;
          }

          v42 = v144;
          v66[2] = v69 + 1;
          v70 = &v66[7 * v69];
          v71 = v148;
          v72 = v149;
          v73 = v150;
          *(v70 + 80) = v151;
          *(v70 + 3) = v72;
          *(v70 + 4) = v73;
          *(v70 + 2) = v71;
          v65(v154, 0);
          swift_endAccess();
          v74 = *v134;
          (*v134)(v138, v10);
          v54 = v132;
          v74(v132, v10);
          v7 = v145;
        }

        else
        {
          v65(v154, 0);
          swift_endAccess();
          v56 = *v134;
          (*v134)(v63, v10);
          v56(v61, v10);
          v42 = v144;
          v54 = v61;
          v57 = v141;
        }

        ++v55;
      }

      while (v57 != sub_1CF9E6DF8());
    }

    v85 = [v7[5] allObjects];
    v10 = v124;
    type metadata accessor for JobLockAggregator();
    v86 = sub_1CF9E6D48();

    if (sub_1CF9E6DF8())
    {
      TupleTypeMetadata2 = 0;
      v87 = v127;
      do
      {
        v88 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v88)
        {
          v42 = *(v86 + 8 * TupleTypeMetadata2 + 32);

          v89 = TupleTypeMetadata2 + 1;
          if (__OFADD__(TupleTypeMetadata2, 1))
          {
            goto LABEL_52;
          }
        }

        else
        {
          v42 = sub_1CF9E7998();
          v89 = TupleTypeMetadata2 + 1;
          if (__OFADD__(TupleTypeMetadata2, 1))
          {
LABEL_52:
            __break(1u);
LABEL_53:
            v136 = TupleTypeMetadata2;
            __swift_destroy_boxed_opaque_existential_1(&v148);
            v92 = sub_1CF9E6DF8();
            v93 = v129;
            if (v92)
            {
              v94 = 0;
              v140 = (v157 + 32);
              v141 = (v157 + 16);
              v138 = (v157 + 8);
              v139 = ((v157 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
              do
              {
                v97 = sub_1CF9E6DC8();
                sub_1CF9E6D78();
                if (v97)
                {
                  v98 = *(v157 + 16);
                  v44 = (v98)(v133, v42 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v94, v10);
                }

                else
                {
                  v44 = sub_1CF9E7998();
                  if (v123 != 8)
                  {
                    goto LABEL_85;
                  }

                  *&v148 = v44;
                  v98 = *v141;
                  (*v141)(v133, &v148, v10);
                  v44 = swift_unknownObjectRelease();
                }

                v42 = v146;
                if (__OFADD__(v94, 1))
                {
                  goto LABEL_79;
                }

                v142 = (v94 + 1);
                (*v140)(v93, v133, v10);
                swift_beginAccess();
                v99 = v7[2];
                sub_1CF9E6728();
                v100 = v93;
                v101 = v152;
                swift_endAccess();
                if (v101)
                {
                  sub_1CF24CCFC(v101);
                }

                else
                {
                  v98(v130, v93, v10);
                  *&v152 = MEMORY[0x1E69E7CC0];
                  *(&v152 + 1) = MEMORY[0x1E69E7CC0];
                  swift_beginAccess();
                  sub_1CF9E6738();
                  swift_endAccess();
                }

                v102 = v131;
                v98(v131, v100, v10);
                swift_beginAccess();
                v104 = sub_1CF9E6718();
                if (*v103)
                {
                  v42 = v103;
                  v44 = sub_1CEFCCBDC(v143, &v152, &unk_1EC4C1BE0, &unk_1CF9FD400);
                  if (!v153)
                  {
                    goto LABEL_84;
                  }

                  sub_1CF054EA0(&v152, &v148);
                  *(&v150 + 1) = v128;
                  v151 = 0;
                  v105 = *v42;
                  v106 = swift_isUniquelyReferenced_nonNull_native();
                  *v42 = v105;
                  v96 = v142;
                  if ((v106 & 1) == 0)
                  {
                    v105 = sub_1CF044A50(0, v105[2] + 1, 1, v105);
                    *v42 = v105;
                  }

                  v108 = v105[2];
                  v107 = v105[3];
                  if (v108 >= v107 >> 1)
                  {
                    v105 = sub_1CF044A50((v107 > 1), v108 + 1, 1, v105);
                    *v42 = v105;
                  }

                  v42 = v144;
                  v105[2] = v108 + 1;
                  v109 = &v105[7 * v108];
                  v110 = v148;
                  v111 = v149;
                  v112 = v150;
                  *(v109 + 80) = v151;
                  *(v109 + 3) = v111;
                  *(v109 + 4) = v112;
                  *(v109 + 2) = v110;
                  v104(v154, 0);
                  swift_endAccess();
                  v113 = *v138;
                  (*v138)(v131, v10);
                  v93 = v129;
                  v113(v129, v10);
                  v7 = v145;
                }

                else
                {
                  v104(v154, 0);
                  swift_endAccess();
                  v95 = *v138;
                  (*v138)(v102, v10);
                  v95(v100, v10);
                  v42 = v144;
                  v93 = v100;
                  v96 = v142;
                }

                ++v94;
              }

              while (v96 != sub_1CF9E6DF8());
            }

            v44 = sub_1CEFCCBDC(v143, &v148, &unk_1EC4C1BE0, &unk_1CF9FD400);
            v116 = *(&v149 + 1);
            if (*(&v149 + 1))
            {
              v117 = v150;
              __swift_project_boxed_opaque_existential_1(&v148, *(&v149 + 1));
              v118 = (*(v117 + 16))(v116, v117);
              v84 = v135;
              v154[0] = v42;
              v154[1] = v135;
              v155 = v118;
              v156 = v119;
              swift_beginAccess();
              sub_1CF9E6708();

              sub_1CF9E6738();
              swift_endAccess();
              result = __swift_destroy_boxed_opaque_existential_1(&v148);
              goto LABEL_76;
            }

LABEL_88:
            __break(1u);
LABEL_89:
            MEMORY[0x1EEE9AC00](v44);
            *(&v123 - 2) = v42;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v123 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }
        }

        v44 = objc_sync_enter(v90);
        if (v44)
        {
          goto LABEL_89;
        }

        sub_1CF529494(v42);
        if (v87)
        {

          v121 = objc_sync_exit(v42);
          MEMORY[0x1EEE9AC00](v121);
          v122 = &v123 - 4;
          *(&v123 - 2) = v42;
          goto LABEL_92;
        }

        v91 = objc_sync_exit(v42);
        if (v91)
        {
          MEMORY[0x1EEE9AC00](v91);
          v122 = &v123 - 4;
          *(&v123 - 2) = v42;
LABEL_92:
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v122, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        ++TupleTypeMetadata2;
      }

      while (v89 != sub_1CF9E6DF8());
    }

    v44 = sub_1CEFCCBDC(v143, &v148, &unk_1EC4C1BE0, &unk_1CF9FD400);
    if (!*(&v149 + 1))
    {
      goto LABEL_87;
    }

    type metadata accessor for JobLock.Registration();
    v114 = swift_allocObject();
    *(v114 + 80) = 0;
    *(v114 + 88) = 0;
    *(v114 + 64) = v7;
    sub_1CF054EA0(&v148, v114 + 16);
    *(v114 + 56) = v144;
    *(v114 + 72) = 0;
    *(v114 + 80) = 0;
    *(v114 + 88) = 0;
    v115 = v126;
    *v126 = v114;
    *(v115 + 8) = 0;
  }

  else
  {
    v44 = sub_1CEFCCBDC(v143, &v148, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v75 = *(&v149 + 1);
    v42 = v144;
    if (!*(&v149 + 1))
    {
      goto LABEL_86;
    }

    v76 = v150;
    __swift_project_boxed_opaque_existential_1(&v148, *(&v149 + 1));
    v77 = (*(v76 + 16))(v75, v76);
    v79 = v78;
    swift_beginAccess();
    v80 = v7[4];
    v155 = v77;
    v156 = v79;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1CF9E6728();

    v82 = v154[0];
    swift_endAccess();
    if (!v82)
    {
      goto LABEL_53;
    }

    sub_1CF24CCFC(v82);
    result = __swift_destroy_boxed_opaque_existential_1(&v148);
    v84 = v135;
LABEL_76:
    v120 = v126;
    *v126 = v84;
    *(v120 + 8) = 1;
  }

  return result;
}

uint64_t sub_1CF056468(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();

  v3 = *(v1 + 616);
  v4 = *(v1 + 632);
  type metadata accessor for FSOrFPJob();
  sub_1CF9E6708();
  sub_1CF9E6738();
  return swift_endAccess();
}

uint64_t sub_1CF056580()
{
  v0 = swift_allocObject();
  sub_1CF0565B8();
  return v0;
}

void *sub_1CF0565B8()
{
  v1 = *v0;
  v0[6] = 0;
  v0[2] = MEMORY[0x1E69E7CC0];
  v2 = v1[25];
  v3 = v1[26];
  v4 = v1[27];
  v5 = v1[28];
  type metadata accessor for Mutation();
  v0[3] = sub_1CF9E6DA8();
  type metadata accessor for ReconciliationMutation();
  v0[4] = sub_1CF9E6DA8();
  type metadata accessor for FSOrFPJob();
  v6 = sub_1CF9E6DA8();
  v7 = v0[6];
  v0[5] = v6;
  v0[6] = 0;

  return v0;
}

uint64_t sub_1CF0566C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v6 + 168) + 64))(a1, a2, *(v6 + 160));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF05677C(uint64_t a1)
{
  v3 = *v1;
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_1CF045354();

  if (!v5)
  {
    return result;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = v3[78];
  v8 = v3[77];
  v9 = v3[80];
  v10 = v3[79];
  v11 = sub_1CF0452C8(a1);
  v12 = *(*v5 + 144);

  v12(v6, v11);
}

uint64_t sub_1CF0568A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF056904()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for JobLockAggregator();
  sub_1CF052DA4(v0, sub_1CF05698C);
  return v4;
}

uint64_t sub_1CF0569B8(uint64_t a1)
{
  v2 = type metadata accessor for JobLockRule();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = *(*(TupleTypeMetadata2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v18[-v6 - 8];
  (*(v8 + 16))(&v18[-v6 - 8], a1, TupleTypeMetadata2, v5);
  v9 = &v7[*(TupleTypeMetadata2 + 48)];
  v10 = *v9;
  v17 = v9[1];
  result = v10 + 32;
  v12 = -*(v10 + 16);
  v13 = -1;
  while (1)
  {
    v14 = v12 + v13;
    if (v12 + v13 == -1)
    {
LABEL_5:

      (*(*(v2 - 8) + 8))(v7, v2);
      return v14 != -1;
    }

    if (++v13 >= *(v10 + 16))
    {
      break;
    }

    v15 = result + 56;
    sub_1CEFCCBDC(result, v18, &qword_1EC4BE650, &qword_1CF9FE490);
    v16 = v18[48];
    sub_1CF056B84(v18);
    result = v15;
    if (v16 == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF056B7C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF0569B8(a1);
}

uint64_t sub_1CF056B84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF056BEC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1E69E77B0];
  v4 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  (*(v5 + 16))(&v17 - v11, v10);
  v13 = *(*(v2 + *v3 + 8) - 8);
  v14 = *(v4 + 48);
  v15 = *(v13 + 32);
  v17 = *&v12[v14];
  v15(v8, v12);
  *&v8[v14] = v17;
  swift_getAtKeyPath();
  return (*(v5 + 8))(v8, v4);
}

void *sub_1CF056D94()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for JobLockRule();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v0[2] = sub_1CF9E7078();
  v0[3] = sub_1CF9E7078();
  return v0;
}

unint64_t sub_1CF056E98()
{
  result = qword_1EDEA3930;
  if (!qword_1EDEA3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3930);
  }

  return result;
}

unint64_t sub_1CF056EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C18, &qword_1CFA07AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0C20, &qword_1CFA07AC8);
    v8 = sub_1CF9E7BE8();
    v22 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1CEFCCBDC(v9, v6, &qword_1EC4C0C18, &qword_1CFA07AC0);
      result = sub_1CF7BF2C0(*v6, v6[8]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6] + 16 * result;
      v15 = v6[8];
      *v14 = *v6;
      *(v14 + 8) = v15;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
      result = sub_1CEFE55D0(&v6[v22], v16 + *(*(v17 - 8) + 72) * v13, &qword_1EC4BE1C8, &qword_1CFA058F0);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v9 += v10;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CF0570E4(uint64_t a1)
{
  if (a1 < 0)
  {
    MEMORY[0x1D3868CC0](2650214, 0xE300000000000000);
  }

  else
  {
    MEMORY[0x1D3868CC0](2650982, 0xE300000000000000);
  }

  type metadata accessor for Job();
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF057204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BE0, &unk_1CF9FD400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF0572BC(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  v19 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  v6 = v19;
  do
  {
    v7 = v5 & -v5;
    v8 = a2(v7);
    if (!v9)
    {
      a3(v8);
      v10 = sub_1CF9E6B28();
      MEMORY[0x1D3868CC0](v10);

      v8 = 30768;
      v9 = 0xE200000000000000;
    }

    v20 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      v18 = v8;
      v15 = v9;
      sub_1CEFE95CC((v11 > 1), v12 + 1, 1);
      v9 = v15;
      v8 = v18;
      v6 = v20;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 16 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
    v14 = v5 == v7;
    v5 ^= v7;
  }

  while (!v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v16 = sub_1CF9E67D8();

  return v16;
}

uint64_t sub_1CF057488(unint64_t a1)
{
  if ((a1 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    v4 = a1 >> 61;
    if (a1 >> 61 > 2)
    {
      if (v4 == 3)
      {
        return 0x74696E4972657375;
      }

      if (v4 == 4)
      {
        return 0x65746E4972657375;
      }
    }

    else
    {
      if (!v4)
      {
        return 0x756F72676B636162;
      }

      if (v4 == 2)
      {
        return 0x746C7561666564;
      }
    }

    return 0x7974696C697475;
  }

  v1 = a1 >> 61;
  if (a1 >> 61 <= 1)
  {
    if (!v1)
    {
      v2 = 0x756F72676B636162;
      v3 = 0xEA0000000000646ELL;
      goto LABEL_19;
    }

LABEL_12:
    v3 = 0xE700000000000000;
    v2 = 0x7974696C697475;
    goto LABEL_19;
  }

  if (v1 == 2)
  {
    v2 = 0x746C7561666564;
    v3 = 0xE700000000000000;
    goto LABEL_19;
  }

  if (v1 == 3)
  {
    v2 = 0x74696E4972657375;
    v3 = 0xED00006465746169;
    goto LABEL_19;
  }

  if (v1 != 4)
  {
    goto LABEL_12;
  }

  v2 = 0x65746E4972657375;
  v3 = 0xEF65766974636172;
LABEL_19:
  MEMORY[0x1D3868CC0](v2, v3);

  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  v6 = sub_1CF9E6F58();
  MEMORY[0x1D3868CC0](v6);

  return 0;
}

uint64_t sub_1CF0576C4(uint64_t a1)
{
  if (a1 >= 0x2000)
  {
    if (a1 < 0x80000)
    {
      if (a1 >= 0x10000)
      {
        v15 = 0x1000000000000013;
        v16 = 0x1000000000000012;
        v21 = 0x1000000000000016;
        if (a1 != 0x40000)
        {
          v21 = 0;
        }

        if (a1 != 0x20000)
        {
          v16 = v21;
        }

        v18 = a1 == 0x10000;
        goto LABEL_70;
      }

      v13 = 0x1000000000000015;
      v14 = 0x726F6E676997A7E2;
      if (a1 != 0x8000)
      {
        v14 = 0;
      }

      if (a1 != 0x4000)
      {
        v13 = v14;
      }

      if (a1 == 0x2000)
      {
        return 0x696174657297A7E2;
      }

      else
      {
        return v13;
      }
    }

    else if (a1 < 0x400000)
    {
      v19 = 0x1000000000000013;
      v20 = 0x616572747397A7E2;
      if (a1 != 0x200000)
      {
        v20 = 0;
      }

      if (a1 != 0x100000)
      {
        v19 = v20;
      }

      if (a1 == 0x80000)
      {
        return 0x696E6E757297A7E2;
      }

      else
      {
        return v19;
      }
    }

    else
    {
      if (a1 == 0x2000000)
      {
        v6 = 0x100000000000001DLL;
      }

      else
      {
        v6 = 0;
      }

      if (a1 == 0x1000000)
      {
        v7 = 0x1000000000000015;
      }

      else
      {
        v7 = v6;
      }

      v8 = 0x1000000000000018;
      if (a1 != 0x800000)
      {
        v8 = 0;
      }

      if (a1 == 0x400000)
      {
        v8 = 0x1000000000000015;
      }

      if (a1 <= 0xFFFFFF)
      {
        return v8;
      }

      else
      {
        return v7;
      }
    }
  }

  else
  {
    if (a1 > 63)
    {
      if (a1 > 511)
      {
        v1 = 0x657571657297A7E2;
        v2 = 0x1000000000000015;
        if (a1 != 4096)
        {
          v2 = 0;
        }

        if (a1 != 2048)
        {
          v1 = v2;
        }

        v3 = 0x100000000000001BLL;
        v4 = 0x4D6874617097A7E2;
        if (a1 != 1024)
        {
          v4 = 0;
        }

        if (a1 != 512)
        {
          v3 = v4;
        }

        if (a1 <= 2047)
        {
          return v3;
        }

        else
        {
          return v1;
        }
      }

      v15 = 0x746369766597A7E2;
      v16 = 0x496B73696497A7E2;
      v17 = 0x746F72687497A7E2;
      if (a1 != 256)
      {
        v17 = 0;
      }

      if (a1 != 128)
      {
        v16 = v17;
      }

      v18 = a1 == 64;
LABEL_70:
      if (v18)
      {
        return v15;
      }

      else
      {
        return v16;
      }
    }

    v9 = 0x1000000000000013;
    v10 = 0x726574616D97A7E2;
    if (a1 != 32)
    {
      v10 = 0;
    }

    if (a1 == 16)
    {
      v10 = 0x1000000000000013;
    }

    if (a1 != 8)
    {
      v9 = v10;
    }

    v11 = 0x1000000000000011;
    v12 = 0x1000000000000013;
    if (a1 != 4)
    {
      v12 = 0;
    }

    if (a1 != 2)
    {
      v11 = v12;
    }

    if (a1 == 1)
    {
      v11 = 0x697372657097A7E2;
    }

    if (a1 <= 7)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }
}

uint64_t sub_1CF057B00(uint64_t a1)
{
  v1 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  result = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x60);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  return result;
}

void *sub_1CF057B28()
{
  v1 = *v0;
  if (v0[28])
  {
    v2 = v0[28];
  }

  else
  {
    v3 = v0;
    v7 = *(v1 + 616);
    v8 = *(v1 + 632);
    type metadata accessor for SwappedDatabase();

    v2 = sub_1CF68C1B8(v4);

    v5 = v3[28];
    v3[28] = v2;
  }

  return v2;
}

uint64_t sub_1CF057C00()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[12];
  v3 = v0[13];
  type metadata accessor for Propagation.CreateItem();
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  type metadata accessor for Propagation.UpdateItem();
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  type metadata accessor for Propagation.DeleteItem();
  if (swift_dynamicCastMetatype())
  {
    return 2;
  }

  type metadata accessor for Ingestion.FetchItemMetadata();
  if (swift_dynamicCastMetatype())
  {
    return 3;
  }

  type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty();
  if (swift_dynamicCastMetatype())
  {
    return 4;
  }

  type metadata accessor for Ingestion.ReSnapshotChildren();
  if (swift_dynamicCastMetatype())
  {
    return 5;
  }

  type metadata accessor for Ingestion.FetchChildrenMetadata();
  if (swift_dynamicCastMetatype())
  {
    return 6;
  }

  type metadata accessor for Materialization.MaterializeItem();
  if (swift_dynamicCastMetatype())
  {
    return 7;
  }

  type metadata accessor for Materialization.EvictItem();
  if (swift_dynamicCastMetatype())
  {
    return 8;
  }

  type metadata accessor for Materialization.EvictChildren();
  if (swift_dynamicCastMetatype())
  {
    return 9;
  }

  type metadata accessor for Bouncing.BounceItem();
  if (swift_dynamicCastMetatype())
  {
    return 10;
  }

  type metadata accessor for Ingestion.CollectCapturedContent();
  if (swift_dynamicCastMetatype())
  {
    return 11;
  }

  type metadata accessor for Ingestion.DeleteRejectedItemInTree();
  if (swift_dynamicCastMetatype())
  {
    return 12;
  }

  type metadata accessor for DiskImport.MarkDirectorDiskImportAsDone();
  if (swift_dynamicCastMetatype())
  {
    return 13;
  }

  type metadata accessor for Ingestion.FaultDirectoryInTree();
  if (swift_dynamicCastMetatype())
  {
    return 14;
  }

  type metadata accessor for Ingestion.CancelFetchFileContent();
  if (swift_dynamicCastMetatype())
  {
    return 15;
  }

  type metadata accessor for DiskImport.DiskImportFinished();
  if (swift_dynamicCastMetatype())
  {
    return 16;
  }

  type metadata accessor for DiskImport.ContinueDiskImport();
  if (swift_dynamicCastMetatype())
  {
    return 17;
  }

  type metadata accessor for Ingestion.UnfaultDirectoryInTree();
  if (swift_dynamicCastMetatype())
  {
    return 18;
  }

  type metadata accessor for DiskImport.UnfaultDirectoryAndChildren();
  if (swift_dynamicCastMetatype())
  {
    return 19;
  }

  type metadata accessor for Ingestion.MergeItems();
  if (swift_dynamicCastMetatype())
  {
    return 20;
  }

  type metadata accessor for Materialization.MaterializeParentHierarchy();
  if (swift_dynamicCastMetatype())
  {
    return 21;
  }

  type metadata accessor for Propagation.CancelUpdate();
  if (swift_dynamicCastMetatype())
  {
    return 22;
  }

  type metadata accessor for Ingestion.FetchContent();
  if (swift_dynamicCastMetatype())
  {
    return 23;
  }

  type metadata accessor for Ingestion.FetchEventStream();
  if (swift_dynamicCastMetatype())
  {
    return 24;
  }

  type metadata accessor for Materialization.MaterializeIgnoredItem();
  if (swift_dynamicCastMetatype())
  {
    return 25;
  }

  type metadata accessor for Maintenance.UnblockEvictability();
  if (swift_dynamicCastMetatype())
  {
    return 26;
  }

  type metadata accessor for Maintenance.MarkPackagesAsEvictable();
  if (swift_dynamicCastMetatype())
  {
    return 27;
  }

  type metadata accessor for Maintenance.MarkPackagesAsSyncRoot();
  if (swift_dynamicCastMetatype())
  {
    return 28;
  }

  type metadata accessor for Maintenance.UnblockIgnoreFolderProcessing();
  if (swift_dynamicCastMetatype())
  {
    return 29;
  }

  type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy();
  if (swift_dynamicCastMetatype())
  {
    return 30;
  }

  type metadata accessor for Maintenance.MarkDirectoriesAsLocked();
  if (swift_dynamicCastMetatype())
  {
    return 31;
  }

  type metadata accessor for Ingestion.DeferredRescan();
  if (swift_dynamicCastMetatype())
  {
    return 32;
  }

  type metadata accessor for Ingestion.MarkParentDeleted();
  if (swift_dynamicCastMetatype())
  {
    return 33;
  }

  type metadata accessor for PinningJob.PinItem();
  if (swift_dynamicCastMetatype())
  {
    return 63;
  }

  type metadata accessor for PinningJob.UnpinItem();
  if (swift_dynamicCastMetatype())
  {
    return 64;
  }

  type metadata accessor for Maintenance.UnpauseReconciliations();
  if (swift_dynamicCastMetatype())
  {
    return 34;
  }

  type metadata accessor for Maintenance.RetriggerResolvedVendorExclusion();
  if (swift_dynamicCastMetatype())
  {
    return 35;
  }

  type metadata accessor for Maintenance.ResolveItemEvictability();
  if (swift_dynamicCastMetatype())
  {
    return 36;
  }

  type metadata accessor for Conflict.PopulateConflicts();
  if (swift_dynamicCastMetatype())
  {
    return 37;
  }

  type metadata accessor for RemoteVersion.CleanRemoteVersions();
  if (swift_dynamicCastMetatype())
  {
    return 38;
  }

  type metadata accessor for Maintenance.UpdateClosestSyncRoot();
  if (swift_dynamicCastMetatype())
  {
    return 39;
  }

  type metadata accessor for Maintenance.RescanParentDeletedChildren();
  if (swift_dynamicCastMetatype())
  {
    return 40;
  }

  type metadata accessor for Maintenance.UnblockItemRejection();
  if (swift_dynamicCastMetatype())
  {
    return 41;
  }

  type metadata accessor for Maintenance.UnblockDiskImportItems();
  if (swift_dynamicCastMetatype())
  {
    return 42;
  }

  type metadata accessor for Maintenance.RescanPendingSetFSSide();
  if (swift_dynamicCastMetatype())
  {
    return 43;
  }

  type metadata accessor for Maintenance.RescanPendingSetFPSide();
  if (swift_dynamicCastMetatype())
  {
    return 44;
  }

  type metadata accessor for Maintenance.UnblockRemoteDeletions();
  if (swift_dynamicCastMetatype())
  {
    return 45;
  }

  type metadata accessor for Maintenance.UnblockPathMatchingCycles();
  if (swift_dynamicCastMetatype())
  {
    return 46;
  }

  type metadata accessor for Maintenance.UnblockChildrenDeletion();
  if (swift_dynamicCastMetatype())
  {
    return 47;
  }

  type metadata accessor for Maintenance.RescanRecTableForConflictsInGS();
  if (swift_dynamicCastMetatype())
  {
    return 48;
  }

  type metadata accessor for Maintenance.UnmarkParentDeletedMergeSource();
  if (swift_dynamicCastMetatype())
  {
    return 49;
  }

  type metadata accessor for Maintenance.ReimportMissingJobs();
  if (swift_dynamicCastMetatype())
  {
    return 50;
  }

  type metadata accessor for Maintenance.UnblockPathMatchingDuringImport();
  if (swift_dynamicCastMetatype())
  {
    return 51;
  }

  type metadata accessor for Maintenance.UnblockThrottledReconciliations();
  if (swift_dynamicCastMetatype())
  {
    return 52;
  }

  type metadata accessor for Maintenance.UnblockThrottledItemJobs();
  if (swift_dynamicCastMetatype())
  {
    return 53;
  }

  type metadata accessor for Maintenance.UnblockThrottledJobs();
  if (swift_dynamicCastMetatype())
  {
    return 54;
  }

  type metadata accessor for Ingestion.TrackTemporaryItem();
  if (swift_dynamicCastMetatype())
  {
    return 55;
  }

  type metadata accessor for Maintenance.RescanMaterializedSpeculativeItems();
  if (swift_dynamicCastMetatype())
  {
    return 56;
  }

  type metadata accessor for Materialization.BackgroundMaterializeParentHierarchy();
  if (swift_dynamicCastMetatype())
  {
    return 57;
  }

  type metadata accessor for Maintenance.ReimportOnGitOrFolderPackage();
  if (swift_dynamicCastMetatype())
  {
    return 58;
  }

  type metadata accessor for Maintenance.FixupOutOfSyncFSBaseVersion();
  if (swift_dynamicCastMetatype())
  {
    return 59;
  }

  type metadata accessor for Propagation.DeletionAcked();
  if (swift_dynamicCastMetatype())
  {
    return 62;
  }

  type metadata accessor for Maintenance.RemoveConflictStuckInTheWharf();
  if (swift_dynamicCastMetatype())
  {
    return 60;
  }

  type metadata accessor for Maintenance.FixupConflictInGSForDatalessItems();
  if (swift_dynamicCastMetatype())
  {
    return 61;
  }

  type metadata accessor for Maintenance.MarkAllUploadedItemAsPurgable();
  if (swift_dynamicCastMetatype())
  {
    return 65;
  }

  type metadata accessor for Maintenance.RefreshInheritedContentPolicy();
  if (swift_dynamicCastMetatype())
  {
    return 66;
  }

  type metadata accessor for Maintenance.FixContentPolicyInNonMaterializedFolders();
  if (swift_dynamicCastMetatype())
  {
    return 67;
  }

  type metadata accessor for PinningJob.RefreshChildPinStatus();
  if (swift_dynamicCastMetatype())
  {
    return 68;
  }

  type metadata accessor for Maintenance.PaceRefreshInheritedContentPolicy();
  if (swift_dynamicCastMetatype())
  {
    return 69;
  }

  type metadata accessor for Maintenance.UnblockChildrenEviction();
  if (swift_dynamicCastMetatype())
  {
    return 70;
  }

  type metadata accessor for Maintenance.UnblockMaterializingUnboundDatalessItems();
  if (swift_dynamicCastMetatype())
  {
    return 71;
  }

  type metadata accessor for Maintenance.UnblockItemBlockedOnMissingBounceItem();
  if (swift_dynamicCastMetatype())
  {
    return 72;
  }

  type metadata accessor for Maintenance.UnblockSnapshottingItemsWithoutJob();
  if (swift_dynamicCastMetatype())
  {
    return 73;
  }

  type metadata accessor for Ingestion.UnlinkOldVersion();
  if (swift_dynamicCastMetatype())
  {
    return 74;
  }

  type metadata accessor for Materialization.InjectOldVersion();
  if (swift_dynamicCastMetatype())
  {
    return 75;
  }

  type metadata accessor for Maintenance.UnblockEvictionWithNotInterested();
  if (swift_dynamicCastMetatype())
  {
    return 76;
  }

  type metadata accessor for Maintenance.UnblockDiskImportStatusOnFPSide();
  if (swift_dynamicCastMetatype())
  {
    return 77;
  }

  type metadata accessor for Maintenance.UnblockDeletionsInIgnoredHierarchy();
  if (swift_dynamicCastMetatype())
  {
    return 78;
  }

  type metadata accessor for Maintenance.ExpireAllThrottles();
  if (swift_dynamicCastMetatype())
  {
    return 79;
  }

  type metadata accessor for Maintenance.UnblockIgnoreWithDLV2Content();
  if (swift_dynamicCastMetatype())
  {
    return 80;
  }

  type metadata accessor for Maintenance.UnblockMissedChildDeletion();
  if (swift_dynamicCastMetatype())
  {
    return 81;
  }

  type metadata accessor for Maintenance.UpdateContentRankForMaterializedItems();
  if (swift_dynamicCastMetatype())
  {
    return 82;
  }

  type metadata accessor for Ingestion.ReparentTrashedItemToTrashRoot();
  if (swift_dynamicCastMetatype())
  {
    return 83;
  }

  type metadata accessor for Maintenance.UpdateContentRankAfterIndexDrop();
  if (swift_dynamicCastMetatype())
  {
    return 84;
  }

  type metadata accessor for Maintenance.UpdateIndexableItems();
  if (swift_dynamicCastMetatype())
  {
    return 85;
  }

  type metadata accessor for Maintenance.UpdateDLV2ItemsWithRecursiveCount();
  if (swift_dynamicCastMetatype())
  {
    return 86;
  }

  type metadata accessor for Maintenance.FixParentMaterializationStuckOnImport();
  if (swift_dynamicCastMetatype())
  {
    return 87;
  }

  type metadata accessor for Ingestion.ReactToOwnershipChange();
  if (swift_dynamicCastMetatype())
  {
    return 88;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF058BD8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF058C1C();

    return v1 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF058C24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3 & 0x7FFFFFFFFFFFFFFFLL;
  v5 = *(v4 + 0x60);
  v6 = *(v4 + 104);
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;
  v7 = *(v4 + 112);
  *(v4 + 112) = a3;

  sub_1CF03D7A8(v5, v6, v7);
}

uint64_t sub_1CF058C94(void (*a1)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    a1();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF058CE4()
{
  v1 = sub_1CF9E6068();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  result = fp_task_tracker_is_cancelled(*(*(v0 + 168) + 16));
  if ((result & 1) == 0 && (*(v0 + 152) & 1) == 0)
  {
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDEBBE40;
    (*(v2 + 56))(v12, 1, 1, v1);
    sub_1CEFCCBDC(v12, v10, &unk_1EC4BED20, &unk_1CFA00700);
    v15 = *(v2 + 48);
    if (v15(v10, 1, v1) == 1)
    {
      v16 = v14;
      sub_1CF9E6048();
      if (v15(v10, 1, v1) != 1)
      {
        sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v2 + 32))(v5, v10, v1);
    }

    sub_1CF9E7478();
    sub_1CF9E6038();
    (*(v2 + 8))(v5, v1);
    sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    os_unfair_lock_lock((v0 + 208));
    if (!*(v0 + 216))
    {
      *(v0 + 216) = os_transaction_create();
    }

    os_unfair_lock_unlock((v0 + 208));
    v17 = *(v0 + 112);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF058FF0()
{
  v0 = swift_allocObject();
  sub_1CF059030();
  return v0;
}

uint64_t sub_1CF059030()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1CF059074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v6 + 168) + 40))(a1, a2, *(v6 + 160));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF059140(uint64_t a1)
{
  v3 = *v1;
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_1CF045354();

  if (!v5)
  {
    return result;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = v3[78];
  v8 = v3[77];
  v9 = v3[80];
  v10 = v3[79];
  v11 = sub_1CF0452C8(a1);
  v12 = *(*v5 + 120);

  v12(v6, v11);
}

uint64_t sub_1CF059264@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  os_unfair_lock_lock((v1 + v4));
  swift_endAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + *(*v1 + 88));
  return sub_1CF059330(v1);
}

uint64_t sub_1CF059330(uint64_t a1)
{
  v2 = *(*a1 + 96);
  swift_beginAccess();
  os_unfair_lock_unlock((a1 + v2));
  return swift_endAccess();
}

uint64_t sub_1CF059390()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF0593C8(uint64_t a1)
{
  v2 = type metadata accessor for Signpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF059424()
{
  v1 = v0;
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 48) & 1) == 0)
  {
    v9 = *(v1 + 40);
    v56 = 0x6574726174732820;
    v57 = 0xEA00000000002064;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v11 = v10;
    result = (*(v3 + 8))(v6, v2);
    v13 = v11 * 1000000000.0;
    if (COERCE__INT64(fabs(v11 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        v14 = sub_1CF065A84(v13, v9);
        MEMORY[0x1D3868CC0](v14);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v7 = v56;
        v8 = v57;
        goto LABEL_7;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = 0;
  v8 = 0xE000000000000000;
LABEL_7:
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_1CF9E7948();

  v60 = 60;
  v61 = 0xE100000000000000;
  swift_beginAccess();
  sub_1CEFCCBDC(v1 + 56, &v56, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v15 = v58;
  sub_1CEFCCC44(&v56, &unk_1EC4C1BE0, &unk_1CF9FD400);
  if (!v15)
  {
    v25 = 0xE600000000000000;
    v24 = 0x3E77656E3C4ALL;
LABEL_11:
    MEMORY[0x1D3868CC0](v24, v25);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v26 = *(v1 + 96);
    v27 = *(v1 + 104);
    v28 = *(v1 + 112);
    if (v28 <= 1)
    {
      if (*(v1 + 112))
      {
        v33 = 548376546;
        if (v26)
        {
          v35 = *(v1 + 96);

          v33 = 548966370;
        }
      }

      else
      {
        v32 = *(v1 + 104);

        v33 = 548638690;
      }

      v30 = 0xA400000000000000;
      goto LABEL_28;
    }

    if (v28 == 2)
    {
      v34 = *(v1 + 96);

      v30 = 0xA700000000000000;
      v31 = -273246494;
    }

    else
    {
      if (v28 != 3)
      {
        if (v26 | v27)
        {
          v33 = 545627362;
        }

        else
        {
          v33 = 0x208FB8EFB49CE2;
        }

        if (v26 | v27)
        {
          v30 = 0xA400000000000000;
        }

        else
        {
          v30 = 0xA700000000000000;
        }

        goto LABEL_28;
      }

      v29 = v26;
      v30 = 0xA700000000000000;
      v31 = -272858910;
    }

    v33 = v31 | 0x208FB800000000;
LABEL_28:
    MEMORY[0x1D3868CC0](v33, v30);

    sub_1CF03D7A8(v26, v27, v28);
    MEMORY[0x1D3868CC0](v7, v8);

    v36 = MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v56 = (*(*v1 + 176))(v36);
    v57 = v37;
    v38 = MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    v39 = (*(*v1 + 456))(v38);
    MEMORY[0x1D3868CC0](v39);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v56, v57);

    MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
    v40 = sub_1CF0572BC(*(v1 + 136), sub_1CF68CA84, sub_1CF66DD74);
    MEMORY[0x1D3868CC0](v40);

    v42 = v60;
    v41 = v61;
    v56 = 0x3A646568637320;
    v57 = 0xE700000000000000;
    v43 = *(v1 + 128);
    v60 = sub_1CF057488(*(v1 + 120));
    v61 = v44;
    MEMORY[0x1D3868CC0](35, 0xE100000000000000);
    v45 = sub_1CF9E6F58();
    MEMORY[0x1D3868CC0](v45);

    MEMORY[0x1D3868CC0](v60, v61);

    v46 = *(v1 + 96);
    v47 = *(v1 + 104);
    v48 = *(v1 + 112);
    sub_1CF03C530(v46, v47, v48);
    v49 = sub_1CF0534E8(v46, v47, v48);
    v51 = v50;
    sub_1CF03D7A8(v46, v47, v48);
    MEMORY[0x1D3868CC0](v49, v51);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v52 = v56;
    v53 = v57;
    v56 = v42;
    v57 = v41;

    MEMORY[0x1D3868CC0](v52, v53);

    return v56;
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  result = sub_1CEFCCBDC(v1 + 56, &v56, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v16 = v58;
  if (v58)
  {
    v17 = v59;
    v18 = __swift_project_boxed_opaque_existential_1(&v56, v58);
    v19 = *(v16 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x1EEE9AC00](v18);
    v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = *(v17 + 8);
    sub_1CF9E7FE8();
    (*(v19 + 8))(v22, v16);
    __swift_destroy_boxed_opaque_existential_1(&v56);
    v24 = v54;
    v25 = v55;
    goto LABEL_11;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1CF059AB4()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v2 = 20550;
  }

  else
  {
    v2 = 21318;
  }

  MEMORY[0x1D3868CC0](v2, 0xE200000000000000);

  sub_1CF056E98();
  v3 = sub_1CF9E6B28();
  MEMORY[0x1D3868CC0](v3);

  return 0;
}

uint64_t *sub_1CF059B48()
{
  v1 = *v0;
  sub_1CF04ADA4();
  v2 = *(*v0 + 576);
  v3 = *(v1 + 560);
  v4 = *(v1 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_1CF059BFC(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF059C70()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF042760();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF059CC8()
{
  if (*v0)
  {
    return 20550;
  }

  else
  {
    return 21318;
  }
}

uint64_t sub_1CF059CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for PersistenceTrigger.AffectedItemJobs() + 56);
  swift_getAssociatedTypeWitness();
  v7 = sub_1CF9E75D8();
  return (*(*(v7 - 8) + 32))(&a4[v6], a3, v7);
}

uint64_t sub_1CF059DA4()
{
  sub_1CF064568();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for JobCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA8)
  {
    goto LABEL_17;
  }

  if (a2 + 88 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 88) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 88;
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

      return (*a1 | (v4 << 8)) - 88;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 88;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x59;
  v8 = v6 - 89;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1CF059E68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = sub_1CF9E7F98();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1CF059ECC(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[4];
  v6 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = *(AssociatedTypeWitness - 8);
  v99 = v89;
  v98 = *(v89 + 84);
  if (v98)
  {
    v7 = v98 - 1;
  }

  else
  {
    v7 = 0;
  }

  v79 = swift_getAssociatedTypeWitness();
  v86 = *(v79 - 8);
  v96 = v86;
  v8 = *(v86 + 84);
  v76 = swift_getAssociatedTypeWitness();
  v92 = *(v76 - 8);
  v9 = *(v92 + 84);
  v81 = v8;
  v75 = v9;
  if (v8 > v9)
  {
    v9 = v8;
  }

  v78 = v9;
  if (v9 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  v82 = v9;
  v10 = v9 - 1;
  if (v7 > v10)
  {
    v10 = v7;
  }

  v84 = v7;
  v85 = v10;
  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  v100 = v10;
  v11 = a4[5];
  v12 = a4[3];
  v80 = swift_getAssociatedTypeWitness();
  v91 = *(v80 - 8);
  v97 = *(v91 + 84);
  if (v97)
  {
    v13 = v97 - 1;
  }

  else
  {
    v13 = 0;
  }

  v74 = swift_getAssociatedTypeWitness();
  v88 = *(v74 - 8);
  v14 = *(v88 + 84);
  v15 = 0;
  v73 = swift_getAssociatedTypeWitness();
  v16 = *(v73 - 8);
  v17 = *(v16 + 84);
  v18 = *(v89 + 64);
  v19 = v86;
  v77 = v14;
  if (v14 <= v17)
  {
    v20 = *(v16 + 84);
  }

  else
  {
    v20 = v14;
  }

  if (v20 <= 0x7FFFFFFE)
  {
    v21 = 2147483646;
  }

  else
  {
    v21 = v20;
  }

  v87 = v21;
  v22 = v21 - 1;
  v90 = v13;
  if (v13 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v13;
  }

  if (v23 <= 0x7FFFFFFE)
  {
    v24 = 2147483646;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v92 + 80);
  v72 = *(v73 - 8);
  v26 = *(v16 + 80);
  v27 = *(v19 + 64);
  v28 = *(v88 + 64);
  if (v24 <= v100)
  {
    v29 = v100;
  }

  else
  {
    v29 = v24;
  }

  if (v29 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = v29;
  }

  if (v30 - 1 < v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 - 1;
  }

  if (v98)
  {
    v32 = v18;
  }

  else
  {
    v32 = v18 + 1;
  }

  v33 = *(v96 + 80) & 0xF8 | v25;
  v34 = v33 | 7u;
  v35 = *(v88 + 80) & 0xF8 | v26 | 7;
  v36 = v35 | *(v91 + 80) & 0xF8;
  v37 = v33 | *(v99 + 80) & 0xF8 | v36;
  v38 = v27 + 7;
  v39 = ((((*(v92 + 64) + ((v25 + 8 + ((v27 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v40 = v32 + 7;
  v41 = v34 + 9;
  v42 = ((((((((v34 + 9 + ((((v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + v39 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v97)
  {
    v43 = *(v91 + 64);
  }

  else
  {
    v43 = *(v91 + 64) + 1;
  }

  v44 = v28 + 7;
  v45 = ((((*(*(v73 - 8) + 64) + ((v26 + 8 + ((v28 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v46 = v43 + 7;
  v47 = (((v43 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = v35 + 9;
  v49 = ((((((((v35 + 9 + v47) & ~v35) + v45 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v50 = (((((v49 + ((v42 + v36) & ~v36) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = ((v37 + 9 + ((((v50 + ((((v37 + 9) | v37) + v50 + 8) & ~v37) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v37) + v50 + 8;
  if (a3 > v31)
  {
    if (v51 <= 3)
    {
      v52 = ((a3 - v31 + ~(-1 << (8 * v51))) >> (8 * v51)) + 1;
      if (HIWORD(v52))
      {
        v15 = 4;
      }

      else
      {
        if (v52 < 0x100)
        {
          v53 = 1;
        }

        else
        {
          v53 = 2;
        }

        if (v52 >= 2)
        {
          v15 = v53;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  if (v31 < a2)
  {
    v54 = ~v31 + a2;
    if (v51 >= 4)
    {
      v55 = a1;
      bzero(a1, v51);
      *a1 = v54;
      v56 = 1;
      if (v15 > 1)
      {
        goto LABEL_56;
      }

      goto LABEL_88;
    }

    v56 = (v54 >> (8 * v51)) + 1;
    v55 = a1;
    if (v51)
    {
      v58 = v54 & ~(-1 << (8 * v51));
      bzero(a1, v51);
      if (v51 != 3)
      {
        if (v51 == 2)
        {
          *a1 = v58;
          if (v15 > 1)
          {
            goto LABEL_56;
          }
        }

        else
        {
          *a1 = v54;
          if (v15 > 1)
          {
LABEL_56:
            if (v15 == 2)
            {
              *&v55[v51] = v56;
            }

            else
            {
              *&v55[v51] = v56;
            }

            return;
          }
        }

LABEL_88:
        if (v15)
        {
          v55[v51] = v56;
        }

        return;
      }

      *a1 = v58;
      a1[2] = BYTE2(v58);
    }

    if (v15 > 1)
    {
      goto LABEL_56;
    }

    goto LABEL_88;
  }

  if (v15 > 1)
  {
    v57 = a1;
    if (v15 != 2)
    {
      *&a1[v51] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_70;
    }

    *&a1[v51] = 0;
  }

  else
  {
    v57 = a1;
    if (v15)
    {
      a1[v51] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_70;
    }
  }

  if (!a2)
  {
    return;
  }

LABEL_70:
  v59 = (&v57[v37 + 9] & ~v37);
  if (v85 == v30)
  {
    v60 = ~v34;
    if (v100 < a2)
    {
      v61 = (((((v39 + ((v41 + (((v40 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v60) + 34) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
      v39 = (v61 + 8);
      if (v61 == -8)
      {
        return;
      }

      v62 = ~v100 + a2;
LABEL_102:
      bzero(v59, v39);
      *v59 = v62;
      return;
    }

    if (v84 == v100)
    {
      v65 = *(v99 + 56);
      v66 = a2 + 1;
      v67 = v59;
      v17 = v98;
      v68 = AssociatedTypeWitness;
LABEL_113:

      v65(v67, v66, v17, v68);
      return;
    }

    v59 = ((v41 + ((((v59 + v40) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v60);
    v62 = a2 - v82;
    if (a2 >= v82)
    {
      if (!v39)
      {
        return;
      }

      goto LABEL_102;
    }

    v66 = a2 + 1;
    v17 = v81;
    if (v81 == v82)
    {
      v65 = *(v96 + 56);
      v67 = v59;
      v68 = v79;
      goto LABEL_113;
    }

    v71 = ((v59 + v38) & 0xFFFFFFFFFFFFFFF8);
    if (v78 > 0x7FFFFFFE)
    {
      v65 = *(v92 + 56);
      v67 = (v71 + v25 + 8) & ~v25;
      v17 = v75;
      v68 = v76;
      goto LABEL_113;
    }

LABEL_109:
    if (a2 > 0x7FFFFFFD)
    {
      *v71 = 0;
      *v71 = a2 - 2147483646;
    }

    else
    {
      *v71 = v66;
    }

    return;
  }

  v59 = ((v59 + v36 + v42) & ~v36);
  if (v23 != v30)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v69 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v69 = a2 - 1;
    }

    *(((v59 + v49) & 0xFFFFFFFFFFFFFFF8) + 8) = v69;
    return;
  }

  v63 = ~v35;
  if (v24 < a2)
  {
    v64 = (((((v45 + ((v48 + (((v46 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v63) + 34) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
    v39 = (v64 + 8);
    if (v64 == -8)
    {
      return;
    }

    v62 = ~v24 + a2;
    goto LABEL_102;
  }

  if (v90 == v24)
  {
    v65 = *(v91 + 56);
    v66 = a2 + 1;
    v67 = v59;
    v17 = v97;
    v68 = v80;
    goto LABEL_113;
  }

  v70 = ((v48 + ((((v59 + v46) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v63);
  if (a2 < v87)
  {
    v66 = a2 + 1;
    if (v77 == v87)
    {
      v65 = *(v88 + 56);
      v67 = v70;
      v17 = v77;
      v68 = v74;
      goto LABEL_113;
    }

    v71 = ((v70 + v44) & 0xFFFFFFFFFFFFFFF8);
    if (v20 > 0x7FFFFFFE)
    {
      v68 = v73;
      v65 = *(v72 + 56);
      v67 = (v71 + v26 + 8) & ~v26;
      goto LABEL_113;
    }

    goto LABEL_109;
  }

  if (v45)
  {
    bzero(v70, v45);
    *v70 = a2 - v87;
  }
}

uint64_t sub_1CF05A838(int a1, uint64_t a2, void *a3)
{
  v741 = a2;
  v778 = a1;
  v4 = a3[5];
  v5 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ItemState();
  v738 = sub_1CF9E75D8();
  v737 = *(v738 - 8);
  v8 = *(v737 + 64);
  v9 = MEMORY[0x1EEE9AC00](v738);
  v727 = &v709 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v735 = &v709 - v12;
  v747 = v7;
  v746 = *(v7 - 8);
  v13 = *(v746 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v724 = &v709 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v736 = &v709 - v16;
  v17 = a3[2];
  v18 = a3[4];
  v19 = type metadata accessor for FileTreeError();
  v713 = sub_1CF9E75D8();
  v712 = *(v713 - 8);
  v20 = *(v712 + 64);
  v21 = MEMORY[0x1EEE9AC00](v713);
  v716 = &v709 - v22;
  v718 = v19;
  v717 = *(v19 - 8);
  v23 = *(v717 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v711 = &v709 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v714 = &v709 - v26;
  v27 = swift_getAssociatedTypeWitness();
  v794 = swift_getAssociatedConformanceWitness();
  v28 = type metadata accessor for ItemState();
  v721 = sub_1CF9E75D8();
  v720 = *(v721 - 8);
  v29 = *(v720 + 64);
  v30 = MEMORY[0x1EEE9AC00](v721);
  v719 = &v709 - v31;
  v726 = v28;
  v723 = *(v28 - 8);
  v32 = *(v723 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v722 = &v709 - v33;
  v781 = type metadata accessor for SnapshotItem();
  v779 = *(v781 - 8);
  v34 = *(v779 + 64);
  v35 = MEMORY[0x1EEE9AC00](v781);
  v765 = &v709 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v772 = &v709 - v37;
  v38.i64[0] = v17;
  v38.i64[1] = v5;
  v39.i64[0] = v18;
  v39.i64[1] = v4;
  v786 = v39;
  v801 = v38;
  v802 = v39;
  v785 = v38;
  v40 = type metadata accessor for PersistenceTrigger.AffectedReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v791 = *(TupleTypeMetadata2 - 8);
  v41 = *(v791 + 64);
  v42 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v775 = &v709 - v43;
  v792 = v40;
  v780 = *(v40 - 8);
  v44 = *(v780 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v777 = &v709 - v45;
  v729 = v5;
  v728 = v4;
  v46 = type metadata accessor for SnapshotItem();
  v787 = *(v46 - 8);
  v47 = *(v787 + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v764 = &v709 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v732 = &v709 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v733 = &v709 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v731 = &v709 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v715 = &v709 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v742 = &v709 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v734 = &v709 - v60;
  v784 = v61;
  v774 = sub_1CF9E75D8();
  v783 = *(v774 - 8);
  v62 = *(v783 + 64);
  v63 = MEMORY[0x1EEE9AC00](v774);
  v744 = &v709 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v745 = &v709 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v743 = &v709 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v725 = &v709 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v766 = &v709 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v748 = &v709 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v776 = &v709 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v773 = &v709 - v78;
  *(&v795 + 1) = AssociatedTypeWitness;
  v789 = *(AssociatedTypeWitness - 8);
  v79 = *(v789 + 64);
  v80 = MEMORY[0x1EEE9AC00](v77);
  v771 = &v709 - v81;
  v82 = *(a3 - 1);
  v83 = *(v82 + 64);
  v84 = MEMORY[0x1EEE9AC00](v80);
  v763 = &v709 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x1EEE9AC00](v84);
  v762 = &v709 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v760 = &v709 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v759 = &v709 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v768 = &v709 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v754 = &v709 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v753 = &v709 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v757 = &v709 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v750 = &v709 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v755 = &v709 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v767 = &v709 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v749 = &v709 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v752 = &v709 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v751 = &v709 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v756 = &v709 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v761 = &v709 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v118 = &v709 - v117;
  v119 = MEMORY[0x1EEE9AC00](v116);
  v758 = &v709 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v770 = &v709 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v125 = &v709 - v124;
  v126 = MEMORY[0x1EEE9AC00](v123);
  v128 = &v709 - v127;
  v129 = MEMORY[0x1EEE9AC00](v126);
  v782 = &v709 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v133 = &v709 - v132;
  v800 = (&v709 - v132);
  *&v795 = v27;
  v790 = *(v27 - 8);
  v134 = *(v790 + 8);
  v135 = MEMORY[0x1EEE9AC00](v131);
  v769 = &v709 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = MEMORY[0x1EEE9AC00](v135);
  v740 = &v709 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v710 = &v709 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v143 = &v709 - v142;
  v144 = MEMORY[0x1EEE9AC00](v141);
  v788.i64[0] = &v709 - v145;
  v146 = MEMORY[0x1EEE9AC00](v144);
  v739 = &v709 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v150 = &v709 - v149;
  v151 = MEMORY[0x1EEE9AC00](v148);
  v730 = &v709 - v152;
  MEMORY[0x1EEE9AC00](v151);
  v154 = &v709 - v153;
  v796 = v82;
  v155 = *(v82 + 16);
  v155(v133, v797.i64[0], a3);
  v799 = a3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v156 = v782;
      v155(v782, v800, v799);
      v157 = v795;
      v797.i64[0] = *(swift_getTupleTypeMetadata2() + 48);
      v158 = v790;
      v159 = v788.i64[0];
      (*(v790 + 4))(v788.i64[0], v156, v157.i64[0]);
      v160 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v161 = *(v791 + 72);
      v162 = *(v791 + 80);
      swift_allocObject();
      v163 = sub_1CF9E6D68();
      v164 = *(v160 + 48);
      *v165 = 2;
      v166 = v165 + v164;
      v801 = v157;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      type metadata accessor for ReconciliationID();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v167 = &v166[*(swift_getTupleTypeMetadata2() + 48)];
      (*(v158 + 2))(v166, v159, v157.i64[0]);
      swift_storeEnumTagMultiPayload();
      *v167 = 0;
      *(v167 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v168 = sub_1CF045898(v163);
      (*(v158 + 1))(v159, v157.i64[0]);
      (*(v789 + 8))(&v156[v797.i64[0]], v157.i64[1]);
      goto LABEL_63;
    case 3u:
      v254 = v799;
      v255 = v800;
      v155(v128, v800, v799);
      v256 = *(&v795 + 1);
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v172 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_53;
      }

      v257 = v789;
      v258 = v771;
      (*(v789 + 32))(v771, v128, v256);
      v259 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v260 = *(v791 + 72);
      v261 = *(v791 + 80);
      swift_allocObject();
      v262 = sub_1CF9E6D68();
      v264 = v263 + *(v259 + 48);
      *v263 = 2;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v265 = &v264[*(swift_getTupleTypeMetadata2() + 48)];
      (*(v257 + 16))(v264, v258, v256);
      swift_storeEnumTagMultiPayload();
      *v265 = 0;
      *(v265 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v168 = sub_1CF045898(v262);
      (*(v257 + 8))(v258, v256);
      (*(v796 + 8))(v255, v254);
      return v168;
    case 5u:
      v218 = v761;
      v170 = v799;
      v155(v761, v800, v799);
      v219 = *(&v795 + 1);
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v220 = type metadata accessor for ReconciliationID();
      v221 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v222 = v789;
        v223 = v771;
        (*(v789 + 32))(v771, &v218[v221], v219);
        v224 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        v225 = *(v791 + 72);
        v226 = *(v791 + 80);
        swift_allocObject();
        v227 = sub_1CF9E6D68();
        v228 = *(v224 + 48);
        *v229 = 16;
        (*(v222 + 16))(&v229[v228], v223, v219);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v168 = sub_1CF045898(v227);
        (*(v222 + 8))(v223, v219);
        (*(*(v220 - 8) + 8))(v218, v220);
        goto LABEL_140;
      }

      v348 = *(*(v220 - 8) + 8);
      v348(&v218[v221], v220);
      v348(v218, v220);
      goto LABEL_61;
    case 6u:
      v313 = v770;
      v285 = v799;
      v155(v770, v800, v799);
      v314 = v781;
      v315 = sub_1CF9E75D8();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v317 = *(TupleTypeMetadata3 + 48);
      v318 = *&v313[*(TupleTypeMetadata3 + 64)];
      v319 = v779;
      if ((*(v779 + 48))(v313, 1, v314) == 1)
      {
        v320 = *(*(v315 - 8) + 8);
        v320(&v313[v317], v315);
        v320(v313, v315);
        goto LABEL_61;
      }

      v797.i64[0] = v317;
      v367 = *(v319 + 32);
      v368 = v772;
      v367(v772, v313, v314);
      v806 = sub_1CF9E6DA8();
      v369 = v792;
      v370 = v795;
      v371 = AssociatedConformanceWitness;
      v372 = v775;
      if ((v318 & 2) != 0)
      {
        v373 = v777;
        (*(v790 + 2))(v777, &v368[*(v314 + 36)], v795);
        v801.i64[0] = v370;
        v801.i64[1] = *(&v795 + 1);
        v802.i64[0] = v794;
        v802.i64[1] = v371;
        type metadata accessor for ReconciliationID();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v374 = *(TupleTypeMetadata2 + 48);
        *v372 = 4;
        (*(v780 + 32))(&v372[v374], v373, v369);
        sub_1CF9E6E58();
        sub_1CF9E6E18();
        v368 = v772;
      }

      if ((v318 & 3) != 0)
      {
        v791 = *(v790 + 2);
        v375 = v777;
        (v791)(v777, v368, v370);
        v801.i64[0] = v370;
        v801.i64[1] = *(&v795 + 1);
        v802.i64[0] = v794;
        v802.i64[1] = v371;
        type metadata accessor for ReconciliationID();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v376 = TupleTypeMetadata2;
        v377 = *(TupleTypeMetadata2 + 48);
        *v372 = 1024;
        *(&v795 + 1) = *(v780 + 32);
        (*(&v795 + 1))(&v372[v377], v375, v369);
        v794 = sub_1CF9E6E58();
        sub_1CF9E6E18();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
        v378 = swift_getTupleTypeMetadata2();
        v379 = v370;
        v380 = &v375[*(v378 + 48)];
        (v791)(v375, &v772[*(v781 + 36)], v379);
        v314 = v781;
        swift_storeEnumTagMultiPayload();
        v381 = &v772[*(v314 + 44)];
        v382 = *(v381 + 1);
        *v380 = *v381;
        *(v380 + 1) = v382;
        swift_storeEnumTagMultiPayload();
        v383 = *(v376 + 48);
        *v372 = 1024;
        (*(&v795 + 1))(&v372[v383], v375, v369);
        v285 = v799;

        sub_1CF9E6E18();
        v368 = v772;
      }

      (*(v779 + 8))(v368, v314);
      v168 = v806;
      (*(*(v315 - 8) + 8))(&v770[v797.i64[0]], v315);
      goto LABEL_91;
    case 7u:
      v155(v125, v800, v799);
      v321 = v774;
      v322 = swift_getTupleTypeMetadata3();
      v323 = *(v322 + 48);
      v324 = *&v125[*(v322 + 64)];
      v325 = v783;
      v326 = *(v783 + 32);
      v327 = v773;
      v326(v773, v125, v321);
      v328 = &v125[v323];
      v329 = v776;
      v326(v776, v328, v321);
      v330 = TupleTypeMetadata2;
      v806 = sub_1CF9E6DA8();
      v331 = *(v325 + 16);
      v791 = v324;
      v469 = (v324 & 3) == 0;
      v332 = v784;
      v333 = v787;
      if (!v469)
      {
        v334 = v748;
        v331(v748, v327, v321);
        if ((*(v333 + 48))(v334, 1, v332) == 1)
        {
          (*(v783 + 8))(v334, v321);
        }

        else
        {
          v790 = v331;
          v435 = v734;
          (*(v333 + 32))(v734, v334, v332);
          WitnessTable = swift_getWitnessTable();
          sub_1CF06D940(v332, WitnessTable, &v801);
          v437 = *(&v795 + 1);
          v438 = v775;
          v439 = v777;
          if (v801.u8[0] == 1)
          {
            v801 = v795;
            v802.i64[0] = v794;
            v802.i64[1] = AssociatedConformanceWitness;
            v440 = type metadata accessor for ReconciliationID();
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
            v441 = &v439[*(swift_getTupleTypeMetadata2() + 48)];
            v788.i64[0] = *(v789 + 16);
            (v788.i64[0])(v439, v435, v437);
            v797.i64[0] = v440;
            swift_storeEnumTagMultiPayload();
            *v441 = 0;
            *(v441 + 1) = 0;
            v442 = v792;
            swift_storeEnumTagMultiPayload();
            v443 = *(v330 + 48);
            *v438 = 2;
            v786.i64[0] = *(v780 + 32);
            (v786.i64[0])(&v438[v443], v439, v442);
            sub_1CF9E6E58();
            sub_1CF9E6E18();
            if (v778)
            {
              (v788.i64[0])(v439, &v435[*(v784 + 36)], v437);
              swift_storeEnumTagMultiPayload();
              v444 = v792;
              swift_storeEnumTagMultiPayload();
              v445 = *(v330 + 48);
              *v438 = 2;
              (v786.i64[0])(&v438[v445], v439, v444);
              sub_1CF9E6E18();
            }
          }

          v801.i64[0] = v795;
          v801.i64[1] = v437;
          v802.i64[0] = v794;
          v802.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
          v446 = &v439[*(swift_getTupleTypeMetadata2() + 48)];
          v447 = v784;
          (*(v789 + 16))(v439, &v435[*(v784 + 36)], v437);
          swift_storeEnumTagMultiPayload();
          v448 = &v435[*(v447 + 44)];
          v449 = *(v448 + 1);
          *v446 = *v448;
          *(v446 + 1) = v449;
          v450 = v792;
          swift_storeEnumTagMultiPayload();
          v451 = *(v330 + 48);
          *v438 = 1024;
          (*(v780 + 32))(&v438[v451], v439, v450);
          sub_1CF9E6E58();

          sub_1CF9E6E18();
          v333 = v787;
          (*(v787 + 8))(v435, v447);
          v332 = v447;
          v321 = v774;
          v329 = v776;
          v331 = v790;
        }
      }

      v452 = v766;
      v331(v766, v329, v321);
      v797.i64[0] = *(v333 + 48);
      if ((v797.i64[0])(v452, 1, v332) == 1)
      {
        (*(v783 + 8))(v452, v321);
        goto LABEL_112;
      }

      v453 = *(v333 + 32);
      v454 = v742;
      v453(v742, v452, v332);
      if ((v778 & 1) != 0 && (v791 & 0x12) != 0)
      {
        v455 = v331;
        v456 = swift_getWitnessTable();
        sub_1CF06D940(v332, v456, &v801);
        if (v801.u8[0] == 2 || (sub_1CF937C7C(v332, v456) & 1) != 0)
        {
          (*(v333 + 8))(v454, v332);
        }

        else
        {
          v628 = *(v789 + 16);
          v790 = *(v332 + 36);
          v629 = v777;
          v630 = *(&v795 + 1);
          v788.i64[0] = v789 + 16;
          v786.i64[0] = v628;
          v628(v777, v790 + v454, *(&v795 + 1));
          v801.i64[0] = v795;
          v801.i64[1] = v630;
          v802.i64[0] = v794;
          v802.i64[1] = AssociatedConformanceWitness;
          v782 = type metadata accessor for ReconciliationID();
          swift_storeEnumTagMultiPayload();
          v631 = v792;
          swift_storeEnumTagMultiPayload();
          v632 = *(TupleTypeMetadata2 + 48);
          v633 = v775;
          *v775 = 16;
          v634 = *(v780 + 32);
          v635 = v629;
          v332 = v784;
          v785.i64[0] = v780 + 32;
          v781 = v634;
          v634(&v633[v632], v635, v631);
          v779 = sub_1CF9E6E58();
          sub_1CF9E6E18();
          v636 = v725;
          v637 = v774;
          v455(v725, v773, v774);
          if ((v797.i64[0])(v636, 1, v332) == 1)
          {
            v333 = v787;
            (*(v787 + 8))(v454, v332);
            (*(v783 + 8))(v636, v637);
            v330 = TupleTypeMetadata2;
            v321 = v637;
            goto LABEL_110;
          }

          v669 = v715;
          v453(v715, v636, v332);
          v670 = *(v332 + 36);
          v671 = *(*(AssociatedConformanceWitness + 40) + 8);
          v672 = *(&v795 + 1);
          if ((sub_1CF9E6868() & 1) == 0)
          {
            v690 = v672;
            v691 = v777;
            (v786.i64[0])(v777, &v669[v670], v690);
            swift_storeEnumTagMultiPayload();
            v692 = v669;
            v693 = v792;
            swift_storeEnumTagMultiPayload();
            v330 = TupleTypeMetadata2;
            v694 = *(TupleTypeMetadata2 + 48);
            v695 = v775;
            *v775 = 16;
            (v781)(v695 + v694, v691, v693);
            sub_1CF9E6E18();
            v333 = v787;
            v696 = *(v787 + 8);
            v696(v692, v332);
            v696(v454, v332);
            goto LABEL_109;
          }

          v333 = v787;
          v673 = *(v787 + 8);
          v673(v669, v332);
          v673(v454, v332);
        }

        v330 = TupleTypeMetadata2;
LABEL_109:
        v321 = v774;
LABEL_110:
        v329 = v776;
        v331 = v455;
        goto LABEL_112;
      }

      (*(v333 + 8))(v454, v332);
      v330 = TupleTypeMetadata2;
      v321 = v774;
LABEL_112:
      if ((v791 & 2) != 0)
      {
        v461 = v743;
        v790 = v331;
        (v331)();
        if ((v797.i64[0])(v461, 1, v332) == 1)
        {
          (*(v783 + 8))(v461, v321);
          v462 = v792;
          v463 = v775;
          v464 = v332;
          v465 = v777;
        }

        else
        {
          v480 = v731;
          (*(v333 + 32))(v731, v461, v332);
          v481 = &v480[*(v332 + 36)];
          v464 = v332;
          v465 = v777;
          v482 = *(&v795 + 1);
          (*(v789 + 16))(v777, v481, *(&v795 + 1));
          v801.i64[0] = v795;
          v801.i64[1] = v482;
          v802.i64[0] = v794;
          v802.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID();
          swift_storeEnumTagMultiPayload();
          v462 = v792;
          swift_storeEnumTagMultiPayload();
          v483 = *(v330 + 48);
          v484 = v333;
          v463 = v775;
          *v775 = 12;
          (*(v780 + 32))(&v463[v483], v465, v462);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          v485 = v484;
          v321 = v774;
          (*(v485 + 8))(v480, v464);
        }

        v486 = v745;
        v487 = v773;
        v790(v745, v773, v321);
        if ((v797.i64[0])(v486, 1, v464) != 1)
        {
          v489 = v787;
          v490 = v733;
          (*(v787 + 32))(v733, v486, v464);
          v491 = *(&v795 + 1);
          (*(v789 + 16))(v465, &v490[*(v464 + 36)], *(&v795 + 1));
          v801.i64[0] = v795;
          v801.i64[1] = v491;
          v802.i64[0] = v794;
          v802.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v492 = *(v330 + 48);
          *v463 = 8;
          (*(v780 + 32))(&v463[v492], v465, v462);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          (*(v489 + 8))(v490, v464);
          v459 = *(v783 + 8);
          v459(v776, v321);
          v488 = v487;
          goto LABEL_136;
        }

        v457 = v486;
        v459 = *(v783 + 8);
        v459(v776, v321);
        v460 = v487;
LABEL_134:
        v459(v460, v321);
        v488 = v457;
LABEL_136:
        v459(v488, v321);
        v479 = v800;
        goto LABEL_137;
      }

      v457 = v744;
      v331(v744, v329, v321);
      if ((v797.i64[0])(v457, 1, v332) == 1)
      {
        v458 = v329;
        v459 = *(v783 + 8);
        v459(v458, v321);
        v460 = v773;
        goto LABEL_134;
      }

      v467 = v732;
      (*(v333 + 32))(v732, v457, v332);
      v468 = swift_getWitnessTable();
      sub_1CF06D940(v332, v468, &v801);
      v469 = (v791 & 0x4000) != 0 && v801.u8[0] == 1;
      v470 = v791 & 0xFFFFFFFFFFFFBFFDLL;
      if (!v469)
      {
        v470 = v791;
      }

      if ((v470 & 0x10800) != 0)
      {
        v470 &= 0xFFFFFFFFFFFEF7FDLL;
      }

      v471 = v800;
      v472 = v773;
      if (v470)
      {
        v473 = v777;
        v474 = *(&v795 + 1);
        (*(v789 + 16))(v777, &v467[*(v332 + 36)], *(&v795 + 1));
        v801.i64[0] = v795;
        v801.i64[1] = v474;
        v802.i64[0] = v794;
        v802.i64[1] = AssociatedConformanceWitness;
        type metadata accessor for ReconciliationID();
        swift_storeEnumTagMultiPayload();
        v475 = v792;
        swift_storeEnumTagMultiPayload();
        v476 = *(v330 + 48);
        v477 = v775;
        *v775 = 8;
        (*(v780 + 32))(&v477[v476], v473, v475);
        sub_1CF9E6E58();
        sub_1CF9E6E18();
      }

      (*(v333 + 8))(v467, v332);
      v478 = *(v783 + 8);
      v478(v776, v321);
      v478(v472, v321);
      v479 = v471;
LABEL_137:
      v168 = v806;
      (*(v796 + 8))(v479, v799);
      return v168;
    case 8u:
      v230 = v782;
      v170 = v799;
      v155(v782, v800, v799);
      v231 = v779;
      v232 = v765;
      v233 = v781;
      (*(v779 + 32))(v765, v230, v781);
      v234 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v235 = *(v791 + 72);
      v236 = *(v791 + 80);
      swift_allocObject();
      v237 = sub_1CF9E6D68();
      v238 = *(v234 + 48);
      *v239 = 2;
      v240 = v239 + v238;
      v241 = v795;
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      type metadata accessor for ReconciliationID();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v242 = &v240[*(swift_getTupleTypeMetadata2() + 48)];
      (*(v790 + 2))(v240, v232, v241);
      swift_storeEnumTagMultiPayload();
      *v242 = 0;
      *(v242 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v168 = sub_1CF045898(v237);
      (*(v231 + 8))(v232, v233);
      goto LABEL_140;
    case 9u:
      v266 = v782;
      v155(v782, v800, v799);
      v267 = v764;
      v268 = v784;
      (*(v787 + 32))(v764, v266);
      v269 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v790 = *(v791 + 72);
      v270 = *(v791 + 80);
      swift_allocObject();
      v797.i64[0] = sub_1CF9E6D68();
      v272 = v271;
      v273 = *(v269 + 48);
      *v271 = 1024;
      v274 = v271 + v273;
      v275 = *(&v795 + 1);
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      type metadata accessor for ReconciliationID();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v276 = &v274[*(swift_getTupleTypeMetadata2() + 48)];
      v277 = *(v268 + 36);
      v278 = *(v789 + 16);
      v278(v274, &v267[v277], v275);
      swift_storeEnumTagMultiPayload();
      v279 = &v267[*(v268 + 44)];
      v280 = *(v279 + 1);
      *v276 = *v279;
      *(v276 + 1) = v280;
      swift_storeEnumTagMultiPayload();
      v281 = v790 + v272;
      v282 = *(TupleTypeMetadata2 + 48);
      *v281 = 8;
      v278(&v281[v282], &v267[v277], *(&v795 + 1));
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v168 = sub_1CF045898(v797.i64[0]);
      v283 = *(v787 + 8);

      v283(v267, v784);
      goto LABEL_63;
    case 0xBu:
      v284 = v768;
      v285 = v799;
      v155(v768, v800, v799);
      v286 = v795;
      v801 = v795;
      v287 = v794;
      v288 = AssociatedConformanceWitness;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v801.i64[0] = type metadata accessor for ReconciliationID();
      v801.i64[1] = sub_1CF9E75D8();
      v802.i64[0] = &type metadata for ContentStatus;
      v802.i64[1] = &type metadata for ContentStatus;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v290 = TupleTypeMetadata[12];
      v291 = v284[TupleTypeMetadata[16]];
      v292 = v284[TupleTypeMetadata[20]];
      v801 = v286;
      v802.i64[0] = v287;
      v802.i64[1] = v288;
      v293 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v349 = v790;
        (*(v790 + 4))(v769, v284, v286.i64[0]);
        v350 = TupleTypeMetadata2;
        v801.i64[0] = sub_1CF9E6DA8();
        v351 = v792;
        v797.i64[0] = v290;
        if ((v778 & 1) != 0 && v292 == 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
          v352 = swift_getTupleTypeMetadata2();
          v353 = v285;
          v354 = v777;
          v355 = &v777[*(v352 + 48)];
          (*(v349 + 2))(v777, v769, v286.i64[0]);
          swift_storeEnumTagMultiPayload();
          *v355 = 0;
          *(v355 + 1) = 0;
          swift_storeEnumTagMultiPayload();
          v356 = *(v350 + 48);
          v357 = v775;
          *v775 = 2;
          v358 = v354;
          v285 = v353;
          v290 = v797.i64[0];
          (*(v780 + 32))(&v357[v356], v358, v351);
          sub_1CF9E6E58();
          v284 = v768;
          sub_1CF9E6E18();
        }

        if (v291 == 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
          v359 = swift_getTupleTypeMetadata2();
          v360 = v285;
          v361 = v777;
          v362 = &v777[*(v359 + 48)];
          (*(v349 + 2))(v777, v769, v286.i64[0]);
          swift_storeEnumTagMultiPayload();
          *v362 = 0;
          *(v362 + 1) = 0;
          swift_storeEnumTagMultiPayload();
          v363 = *(v350 + 48);
          v364 = v775;
          *v775 = 0x100000;
          v365 = v361;
          v285 = v360;
          v290 = v797.i64[0];
          (*(v780 + 32))(&v364[v363], v365, v351);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
        }

        (*(v349 + 1))(v769, v286.i64[0]);
        v168 = v801.i64[0];
        v366 = sub_1CF9E75D8();
        (*(*(v366 - 8) + 8))(&v284[v290], v366);
        goto LABEL_91;
      }

      v294 = *(v293 - 8);
      v295 = (*(v294 + 48))(&v284[v290], 1, v293);
      v296 = v790;
      if (v295 == 1)
      {
        (*(v294 + 8))(v284, v293);
        v297 = sub_1CF9E75D8();
        (*(*(v297 - 8) + 8))(&v284[v290], v297);
        goto LABEL_61;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v466 = *(v294 + 8);
        v466(&v284[v290], v293);
        v466(v284, v293);
        goto LABEL_61;
      }

      if (v291 == 1)
      {
        v556 = v788.i64[0];
        (*(v296 + 4))(v788.i64[0], &v284[v290], v286.i64[0]);
        v557 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        v558 = *(v791 + 72);
        v559 = *(v791 + 80);
        swift_allocObject();
        v560 = sub_1CF9E6D68();
        v562 = v561 + *(v557 + 48);
        *v561 = 0x100000;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
        v563 = &v562[*(swift_getTupleTypeMetadata2() + 48)];
        (*(v296 + 2))(v562, v556, v286.i64[0]);
        swift_storeEnumTagMultiPayload();
        *v563 = 0;
        *(v563 + 1) = 0;
        swift_storeEnumTagMultiPayload();
        v168 = sub_1CF045898(v560);
        (*(v296 + 1))(v556, v286.i64[0]);
        (*(v294 + 8))(v284, v293);
        goto LABEL_63;
      }

      (*(v296 + 1))(&v284[v290], v286.i64[0]);
      (*(v294 + 8))(v284, v293);
      goto LABEL_61;
    case 0xDu:
      v338 = v758;
      v339 = v799;
      v155(v758, v800, v799);
      v340 = v795;
      v801 = v795;
      v341 = v794;
      v342 = AssociatedConformanceWitness;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      type metadata accessor for ThrottlingKey();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);

      v801 = v340;
      v802.i64[0] = v341;
      v802.i64[1] = v342;
      v343 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(*(v343 - 8) + 8))(v338, v343);
        goto LABEL_61;
      }

      v392 = v338[*(swift_getTupleTypeMetadata2() + 48)];
      if ((v392 - 1) < 2)
      {
        v515 = *(v790 + 4);
        v515(v154, v338, v340.i64[0]);
        (*(v796 + 8))(v800, v339);
        v516 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        v517 = *(v791 + 72);
        v518 = *(v791 + 80);
        swift_allocObject();
        v519 = sub_1CF9E6D68();
        v520 = *(v516 + 48);
        *v521 = 1024;
        v515(&v521[v520], v154, v340.i64[0]);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v212 = v519;
        return sub_1CF045898(v212);
      }

      v393 = v800;
      v394 = TupleTypeMetadata2;
      if (!v392 || v392 == 23)
      {
        v395 = *(v790 + 4);
        v396 = v730;
        v395(v730, v338, v340.i64[0]);
        (*(v796 + 8))(v393, v339);
        sub_1CF9E7FA8();
        v397 = *(v791 + 72);
        v398 = *(v791 + 80);
        swift_allocObject();
        v399 = sub_1CF9E6D68();
        v400 = *(v394 + 48);
        *v401 = 4;
        v395(&v401[v400], v396, v340.i64[0]);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v212 = v399;
        return sub_1CF045898(v212);
      }

      (*(v790 + 1))(v338, v340.i64[0]);
      goto LABEL_61;
    case 0xEu:
      v169 = v756;
      v155(v756, v800, v799);
      v335 = v795;
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v172 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v384 = v169[*(swift_getTupleTypeMetadata2() + 48)];
      if (v384 > 0x17)
      {
        goto LABEL_176;
      }

      if (((1 << v384) & 0x80104B) != 0)
      {
        v385 = *(v790 + 4);
        v385(v150, v169, v335);
        (*(v796 + 8))(v800, v799);
        v386 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        v387 = *(v791 + 72);
        v388 = *(v791 + 80);
        swift_allocObject();
        v389 = sub_1CF9E6D68();
        v390 = *(v386 + 48);
        *v391 = 262400;
        v385(&v391[v390], v150, v335);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v212 = v389;
        return sub_1CF045898(v212);
      }

      if (v384 == 2)
      {
        v564 = v790;
        v565 = v788.i64[0];
        (*(v790 + 4))(v788.i64[0], v169, v335);
        v566 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        v567 = *(v791 + 72);
        v568 = *(v791 + 80);
        swift_allocObject();
        v569 = sub_1CF9E6D68();
        v570 = *(v566 + 48);
        *v571 = 262912;
        (*(v564 + 2))(&v571[v570], v565, v335);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v168 = sub_1CF045898(v569);
        (*(v564 + 1))(v565, v335);
        goto LABEL_63;
      }

LABEL_176:
      v336 = *(v790 + 1);
      goto LABEL_56;
    case 0x15u:
      v193 = v750;
      v194 = v799;
      v155(v750, v800, v799);
      if ((*v193 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      v801 = v785;
      v802 = v786;
      type metadata accessor for Propagation.CreateItem();
      v422 = swift_dynamicCastClass();
      if (v422)
      {
        v423 = v422;
        v424 = v795;
        goto LABEL_155;
      }

      v801 = v785;
      v802 = v786;
      type metadata accessor for Propagation.UpdateItem();
      v522 = swift_dynamicCastClass();
      v424 = v795;
      if (!v522)
      {
        goto LABEL_13;
      }

      goto LABEL_178;
    case 0x16u:
      v243 = v749;
      v194 = v799;
      v155(v749, v800, v799);
      if ((*v243 & 0x8000000000000000) == 0)
      {
        v801 = v785;
        v802 = v786;
        type metadata accessor for Materialization.MaterializeIgnoredItem();
        v244 = swift_dynamicCastClass();
        v245 = v795;
        if (v244)
        {
          v246 = v244;
          v247 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          v248 = *(v791 + 72);
          v249 = *(v791 + 80);
          swift_allocObject();

          v251 = sub_1CF9E6D68();
          v252 = *(v247 + 48);
          v253 = 0x4000;
LABEL_29:
          *v250 = v253;
          (*(v790 + 2))(v250 + v252, v246 + *(*v246 + 576), v245);
          v801.i64[0] = v245;
          v801.i64[1] = *(&v795 + 1);
          v802.i64[0] = v794;
          v802.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID();
          swift_storeEnumTagMultiPayload();
LABEL_96:
          swift_storeEnumTagMultiPayload();
          v168 = sub_1CF045898(v251);

LABEL_196:
          (*(v796 + 8))(v800, v194);
          return v168;
        }

        v788 = vextq_s8(v785, v785, 8uLL);
        v801 = v788;
        v802 = vextq_s8(v786, v786, 8uLL);
        v797 = v802;
        type metadata accessor for Propagation.CreateItem();
        v494 = swift_dynamicCastClass();
        if (v494)
        {
          if ((v778 & 1) != 0 && v494[112] == 3)
          {
            v495 = *(*v494 + 664);
            v496 = v494;
            swift_beginAccess();
            v497 = v720;
            v498 = *(v720 + 16);
            v797.i64[0] = v496;
            v499 = v719;
            v500 = v721;
            v498(v719, &v496[v495], v721);
            v501 = v723;
            v502 = v726;
            if ((*(v723 + 48))(v499, 1, v726) != 1)
            {
              v674 = v722;
              (*(v501 + 32))(v722, v499, v502);
              v675 = v245;
              v676 = TupleTypeMetadata2;
              sub_1CF9E7FA8();
              v677 = *(v791 + 72);
              v678 = *(v791 + 80);
              swift_allocObject();
              v791 = sub_1CF9E6D68();
              v679 = v501;
              v681 = v680;
              v682 = *(v676 + 48);
              *v680 = 8;
              (*(v790 + 2))(v680 + v682, v674, v675);
              v683 = *(&v795 + 1);
              v801.i64[0] = v675;
              v801.i64[1] = *(&v795 + 1);
              v802.i64[0] = v794;
              v802.i64[1] = AssociatedConformanceWitness;
              type metadata accessor for ReconciliationID();
              swift_storeEnumTagMultiPayload();
              swift_storeEnumTagMultiPayload();
              v684 = v681 + v677;
              v685 = *(v676 + 48);
              *v684 = 8;
              (*(v789 + 16))(&v684[v685], v797.i64[0] + *(*v797.i64[0] + 576), v683);
              swift_storeEnumTagMultiPayload();
              swift_storeEnumTagMultiPayload();
              v168 = sub_1CF045898(v791);

              (*(v679 + 8))(v722, v726);
              goto LABEL_196;
            }

            (*(v497 + 8))(v499, v500);
          }

LABEL_195:
          v168 = sub_1CF9E6DA8();

          goto LABEL_196;
        }

        v801 = v788;
        v802 = v797;
        type metadata accessor for Propagation.UpdateItem();
        v572 = swift_dynamicCastClass();
        if (v572)
        {
          if (*(v572 + 112) == 3)
          {
            v573 = v572;
            v801.i64[0] = *(v572 + 96);
            v574 = v801.i64[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            v575 = v716;
            v576 = v718;
            v577 = swift_dynamicCast();
            v578 = v717;
            v579 = *(v717 + 56);
            if (v577)
            {
              v579(v575, 0, 1, v576);
              v580 = v714;
              (*(v578 + 32))(v714, v575, v576);
              if ((*(v573 + *(*v573 + 648)) & 3) != 0)
              {
                v581 = v711;
                (*(v578 + 16))(v711, v580, v576);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                if (EnumCaseMultiPayload == 1)
                {
                  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
                  strcpy(&v709 - 48, " filename below syncability originalError ");
                  v801.i64[0] = v245;
                  v801.i64[1] = &type metadata for Filename;
                  v802.i64[0] = v245;
                  v802.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
                  v803 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
                  v583 = swift_getTupleTypeMetadata();
                  v584 = *&v581[v583[12] + 8];

                  v585 = v583[16];
                  sub_1CF480620(*&v581[v583[20]], *&v581[v583[20] + 8]);

                  v586 = v790;
                  v587 = v710;
                  (*(v790 + 4))(v710, v581, v245);
                  v797.i64[0] = *(v586 + 1);
                  (v797.i64[0])(&v581[v585], v245);
                  v588 = TupleTypeMetadata2;
                  sub_1CF9E7FA8();
                  v589 = *(v791 + 72);
                  v590 = *(v791 + 80);
                  swift_allocObject();
                  v791 = sub_1CF9E6D68();
                  v591 = *(v588 + 48);
                  *v592 = 1024;
                  (*(v586 + 2))(&v592[v591], v587, v245);
                  v801.i64[0] = v245;
                  v801.i64[1] = *(&v795 + 1);
                  v802.i64[0] = v794;
                  v802.i64[1] = AssociatedConformanceWitness;
                  type metadata accessor for ReconciliationID();
                  swift_storeEnumTagMultiPayload();
                  swift_storeEnumTagMultiPayload();
                  v168 = sub_1CF045898(v791);

                  (v797.i64[0])(v587, v245);
                  (*(v578 + 8))(v714, v718);
                }

                else
                {
                  v708 = *(v578 + 8);
                  v708(v581, v576);
                  v168 = sub_1CF9E6DA8();

                  v708(v580, v576);
                }
              }

              else
              {
                v168 = sub_1CF9E6DA8();

                (*(v578 + 8))(v580, v576);
              }

              goto LABEL_196;
            }

            v579(v575, 1, 1, v576);
            (*(v712 + 8))(v575, v713);
          }

          goto LABEL_195;
        }

        v801 = v785;
        v802 = v786;
        type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty();
        v649 = swift_dynamicCastClass();
        if (v649)
        {
          v650 = v649;
          v651 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          v652 = *(v791 + 72);
          v653 = *(v791 + 80);
          swift_allocObject();

          v251 = sub_1CF9E6D68();
          v654 = *(v651 + 48);
          *v655 = 1024;
          (*(v790 + 2))(&v655[v654], v650 + *(*v650 + 576), v245);
          v801.i64[0] = v245;
          v801.i64[1] = *(&v795 + 1);
          v802.i64[0] = v794;
          v802.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID();
          swift_storeEnumTagMultiPayload();
          goto LABEL_96;
        }

        v801 = v785;
        v802 = v786;
        type metadata accessor for Ingestion.FaultDirectoryInTree();
        v686 = swift_dynamicCastClass();
        if (v686)
        {
          v246 = v686;
          goto LABEL_199;
        }

        v801 = v785;
        v802 = v786;
        type metadata accessor for Ingestion.FetchItemMetadata();
        v707 = swift_dynamicCastClass();
        if (v707)
        {
          v246 = v707;
          if ((*(v707 + 136) & 0x2140) == 0)
          {
            goto LABEL_195;
          }

LABEL_199:
          v687 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          v688 = *(v791 + 72);
          v689 = *(v791 + 80);
          swift_allocObject();

          v251 = sub_1CF9E6D68();
          v252 = *(v687 + 48);
          v253 = 256;
          goto LABEL_29;
        }

LABEL_13:

        goto LABEL_61;
      }

      v788 = vextq_s8(v785, v785, 8uLL);
      v801 = v788;
      v802 = vextq_s8(v786, v786, 8uLL);
      v797 = v802;
      type metadata accessor for Materialization.EvictChildren();
      v425 = swift_dynamicCastClass();
      v424 = v795;
      if (v425)
      {
        v426 = v425;
        v427 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        v428 = *(v791 + 72);
        v429 = *(v791 + 80);
        swift_allocObject();

        v251 = sub_1CF9E6D68();
        v430 = *(v427 + 48);
        *v431 = 16;
        v432 = v431 + v430;
        v433 = v426 + *(*v426 + 576);
        v434 = *(&v795 + 1);
        (*(v789 + 16))(v432, v433, *(&v795 + 1));
        v801.i64[0] = v424;
        v801.i64[1] = v434;
        v802.i64[0] = v794;
        v802.i64[1] = AssociatedConformanceWitness;
        type metadata accessor for ReconciliationID();
        swift_storeEnumTagMultiPayload();
        goto LABEL_96;
      }

      v801 = v785;
      v802 = v786;
      type metadata accessor for Propagation.CreateItem();
      v523 = swift_dynamicCastClass();
      if (v523)
      {
        v423 = v523;
LABEL_155:
        (*(v796 + 8))(v800, v194);
        v524 = *(*v423 + 664);
        swift_beginAccess();
        v525 = v737;
        v526 = v735;
        v527 = v738;
        (*(v737 + 16))(v735, v423 + v524, v738);
        v528 = v746;
        v529 = v747;
        if ((*(v746 + 48))(v526, 1, v747) == 1)
        {
          (*(v525 + 8))(v526, v527);
          v530 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          v531 = *(v791 + 72);
          v532 = *(v791 + 80);
          swift_allocObject();
          v533 = sub_1CF9E6D68();
          v534 = *(v530 + 48);
          *v535 = 8;
          (*(v790 + 2))(&v535[v534], v423 + *(*v423 + 576), v424);

          v801.i64[0] = v424;
          v801.i64[1] = *(&v795 + 1);
          v802.i64[0] = v794;
          v802.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v212 = v533;
          return sub_1CF045898(v212);
        }

        (*(v528 + 32))(v736, v526, v529);
        v536 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        v797.i64[0] = *(v791 + 72);
        v537 = *(v791 + 80);
        v799 = 2 * v797.i64[0];
        swift_allocObject();
        v538 = sub_1CF9E6D68();
        v540 = v539;
        v541 = *(v536 + 48);
        *v539 = 1024;
        v542 = v539 + v541;
        v800 = v538;
        v801.i64[0] = v424;
        v543 = *(&v795 + 1);
        v801.i64[1] = *(&v795 + 1);
        v802.i64[0] = v794;
        v802.i64[1] = AssociatedConformanceWitness;
        v544 = type metadata accessor for ReconciliationID();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
        v794 = v544;
        v545 = &v542[*(swift_getTupleTypeMetadata2() + 48)];
        v546 = *(v789 + 16);
        v547 = v736;
        v546(v542, v736, v543);
        swift_storeEnumTagMultiPayload();
        v548 = &v547[*(v529 + 36)];
        v550 = *v548;
        v549 = *(v548 + 1);
        v796 = v549;
        *v545 = v550;
        *(v545 + 1) = v549;
        swift_storeEnumTagMultiPayload();
        v551 = v540 + v797.i64[0];
        v552 = TupleTypeMetadata2;
        v553 = *(TupleTypeMetadata2 + 48);
        *v551 = 8;
        v546(&v551[v553], v547, v543);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v554 = v540 + v799;
        v555 = *(v552 + 48);
        *v554 = 8;
        (*(v790 + 2))(&v554[v555], v423 + *(*v423 + 576), v795);

        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v168 = sub_1CF045898(v800);
        (*(v746 + 8))(v547, v747);
      }

      else
      {
        v801 = v785;
        v802 = v786;
        type metadata accessor for Propagation.UpdateItem();
        v522 = swift_dynamicCastClass();
        if (v522)
        {
LABEL_178:
          v612 = v522;
          (*(v796 + 8))(v800, v194);
          v613 = TupleTypeMetadata2;
          v806 = sub_1CF9E6DA8();
          v614 = v777;
          (*(v790 + 2))(v777, v612 + *(*v612 + 576), v424);
          v615 = *(&v795 + 1);
          v801.i64[0] = v424;
          v801.i64[1] = *(&v795 + 1);
          v802.i64[0] = v794;
          v802.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID();
          swift_storeEnumTagMultiPayload();
          v616 = v792;
          swift_storeEnumTagMultiPayload();
          v617 = *(v613 + 48);
          v618 = v775;
          *v775 = 8;
          v619 = *(v780 + 32);
          v780 += 32;
          v619(&v618[v617], v614, v616);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          if ((*(v612 + *(*v612 + 648)) & 3) != 0)
          {
            v620 = *(*v612 + 672);
            swift_beginAccess();
            v621 = v737;
            v622 = v612 + v620;
            v623 = v727;
            v624 = v738;
            (*(v737 + 16))(v727, v622, v738);
            v625 = v623;

            v626 = v746;
            v627 = v747;
            if ((*(v746 + 48))(v625, 1, v747) == 1)
            {
              (*(v621 + 8))(v625, v624);
            }

            else
            {
              v638 = *(v626 + 32);
              v800 = v619;
              v639 = v724;
              v638(v724, v625, v627);
              __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
              v640 = swift_getTupleTypeMetadata2();
              v641 = v777;
              v642 = v626;
              v643 = &v777[*(v640 + 48)];
              (*(v789 + 16))(v777, v639, v615);
              swift_storeEnumTagMultiPayload();
              v644 = &v639[*(v627 + 36)];
              v645 = *(v644 + 1);
              *v643 = *v644;
              *(v643 + 1) = v645;
              v646 = v792;
              swift_storeEnumTagMultiPayload();
              v647 = *(v613 + 48);
              v648 = v775;
              *v775 = 1024;
              v800(&v648[v647], v641, v646);

              sub_1CF9E6E18();
              (*(v642 + 8))(v639, v627);
            }

            return v806;
          }

          else
          {

            return v806;
          }
        }

        else
        {
          v801 = v788;
          v802 = v797;
          type metadata accessor for Ingestion.FetchItemMetadata();
          v656 = swift_dynamicCastClass();
          if (!v656)
          {
            v801 = v788;
            v802 = v797;
            type metadata accessor for Ingestion.ReparentTrashedItemToTrashRoot();
            v697 = swift_dynamicCastClass();
            if (v697)
            {
              v698 = v697;
              v699 = TupleTypeMetadata2;
              sub_1CF9E7FA8();
              v700 = *(v791 + 72);
              v701 = *(v791 + 80);
              swift_allocObject();

              v251 = sub_1CF9E6D68();
              v702 = *(v699 + 48);
              *v703 = 8;
              v704 = v703 + v702;
              v705 = v698 + *(*v698 + 576);
              v706 = *(&v795 + 1);
              (*(v789 + 16))(v704, v705, *(&v795 + 1));
              v801.i64[0] = v424;
              v801.i64[1] = v706;
              v802.i64[0] = v794;
              v802.i64[1] = AssociatedConformanceWitness;
              type metadata accessor for ReconciliationID();
              swift_storeEnumTagMultiPayload();
              goto LABEL_96;
            }

            goto LABEL_13;
          }

          v657 = v656;
          if ((*(v656 + 136) & 0x2140) == 0)
          {
            goto LABEL_195;
          }

          v658 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          v790 = *(v791 + 72);
          v659 = *(v791 + 80);
          swift_allocObject();

          v797.i64[0] = sub_1CF9E6D68();
          v661 = v660;
          v662 = v660 + *(v658 + 48);
          *v660 = 2;
          v663 = *(&v795 + 1);
          v801.i64[0] = v424;
          v801.i64[1] = *(&v795 + 1);
          v802.i64[0] = v794;
          v802.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
          v664 = &v662[*(swift_getTupleTypeMetadata2() + 48)];
          v665 = *(*v657 + 576);
          v666 = *(v789 + 16);
          v666(v662, v657 + v665, v663);
          swift_storeEnumTagMultiPayload();
          *v664 = 0;
          *(v664 + 1) = 0;
          swift_storeEnumTagMultiPayload();
          v667 = v790 + v661;
          v668 = *(TupleTypeMetadata2 + 48);
          *v667 = 256;
          v666(&v667[v668], v657 + v665, *(&v795 + 1));
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v168 = sub_1CF045898(v797.i64[0]);

LABEL_63:
          (*(v796 + 8))(v800, v799);
        }
      }

      return v168;
    case 0x17u:
      v198 = v753;
      v155(v753, v800, v799);
      if (*v198 != 1)
      {
        goto LABEL_20;
      }

      if ((v741 & 0x4000) == 0)
      {
        goto LABEL_61;
      }

      v199 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v200 = *(v791 + 72);
      v201 = *(v791 + 80);
      swift_allocObject();
      v202 = sub_1CF9E6D68();
      v203 = *(v199 + 48);
      *v204 = 512;
      swift_storeEnumTagMultiPayload();
      v205 = sub_1CF045898(v202);
      goto LABEL_62;
    case 0x18u:
      v188 = v754;
      v155(v754, v800, v799);
      if (*v188)
      {
        goto LABEL_61;
      }

LABEL_20:
      (*(v796 + 8))(v800, v799);
      v206 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v207 = *(v791 + 72);
      v208 = *(v791 + 80);
      swift_allocObject();
      v209 = sub_1CF9E6D68();
      v210 = *(v206 + 48);
      *v211 = 512;
      swift_storeEnumTagMultiPayload();
      v212 = v209;
      return sub_1CF045898(v212);
    case 0x19u:
      v169 = v755;
      v170 = v799;
      v155(v755, v800, v799);
      v298 = v795;
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v172 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v299 = v790;
      v300 = v740;
      (*(v790 + 4))(v740, v169, v298);
      if (v778)
      {
        v307 = sub_1CF9E6DA8();
      }

      else
      {
        v301 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        v302 = *(v791 + 72);
        v303 = *(v791 + 80);
        swift_allocObject();
        v304 = sub_1CF9E6D68();
        v305 = *(v301 + 48);
        *v306 = 0x4000;
        (*(v299 + 2))(&v306[v305], v300, v298);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v307 = sub_1CF045898(v304);
      }

      v168 = v307;
      (*(v299 + 1))(v300, v298);
      goto LABEL_140;
    case 0x1Au:
      v169 = v751;
      v170 = v799;
      v155(v751, v800, v799);
      v171 = *(&v795 + 1);
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v172 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_49;
      }

      v173 = v789;
      v174 = v771;
      (*(v789 + 32))(v771, v169, v171);
      v308 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v309 = *(v791 + 72);
      v310 = *(v791 + 80);
      swift_allocObject();
      v179 = sub_1CF9E6D68();
      v311 = *(v308 + 48);
      *v312 = 4096;
      (v173[2])(&v312[v311], v174, v171);
      goto LABEL_41;
    case 0x1Bu:
      v169 = v752;
      v170 = v799;
      v155(v752, v800, v799);
      v345 = v795;
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v335 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v406 = v790;
        (*(v790 + 4))(v143, v169, v345);
        if (v778)
        {
          v413 = sub_1CF9E6DA8();
        }

        else
        {
          v407 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          v408 = *(v791 + 72);
          v409 = *(v791 + 80);
          swift_allocObject();
          v410 = sub_1CF9E6D68();
          v411 = *(v407 + 48);
          *v412 = 2;
          (*(v406 + 2))(&v412[v411], v143, v345);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v413 = sub_1CF045898(v410);
        }

        v168 = v413;
        (*(v406 + 1))(v143, v345);
        goto LABEL_140;
      }

      v336 = *(*(v335 - 8) + 8);
LABEL_56:
      v337 = v169;
      v346 = v335;
      goto LABEL_60;
    case 0x1Cu:
      v128 = v767;
      v344 = v799;
      v155(v767, v800, v799);
      v801 = v785;
      v802 = v786;
      v172 = type metadata accessor for TestingOperation();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_53;
      }

      v801 = v785;
      v802 = v786;
      v172 = type metadata accessor for DirectionalTestingOperation();
      v402 = swift_getEnumCaseMultiPayload();
      if (v402 <= 1)
      {
        v403 = v795;
        if (!v402)
        {
          MEMORY[0x1EEE9AC00](v402);
          strcpy(&v709 - 48, " item version domainVersion ");
          v801.i64[0] = v403;
          v801.i64[1] = sub_1CF9E75D8();
          v802.i64[0] = MEMORY[0x1E69E6810];
          v802.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
          v603 = swift_getTupleTypeMetadata();
          v604 = *(v603 + 48);

          v404 = *(v790 + 4);
          v405 = v739;
          v404(v739, v128, v403);
          v605 = sub_1CF9E75D8();
          (*(*(v605 - 8) + 8))(&v128[v604], v605);
          goto LABEL_172;
        }

        if (v402 != 1)
        {
LABEL_53:
          v336 = *(*(v172 - 8) + 8);
          v337 = v128;
          goto LABEL_59;
        }

        MEMORY[0x1EEE9AC00](v402);
        strcpy(&v709 - 80, " item destinationItemID baseVersion fields version domainVersion ");
        v801.i64[0] = v403;
        v801.i64[1] = sub_1CF9E75D8();
        v802.i64[0] = sub_1CF9E75D8();
        v503 = v128;
        v504 = swift_getAssociatedTypeWitness();
        v505 = swift_getAssociatedTypeWitness();
        v506 = swift_getAssociatedConformanceWitness();
        v507 = swift_getAssociatedConformanceWitness();
        v806 = v504;
        v807 = v505;
        v808 = v506;
        v809 = v507;
        type metadata accessor for FileItemVersion();
        v802.i64[1] = sub_1CF9E75D8();
        v803 = &type metadata for Fields;
        v804 = MEMORY[0x1E69E6810];
        v805 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        v508 = swift_getTupleTypeMetadata();
        v797.i64[0] = v508[12];
        v789 = v508[16];
        v509 = v508[20];

        v404 = *(v790 + 4);
        v405 = v739;
        v404(v739, v503, v795);
        v801.i64[0] = v504;
        v801.i64[1] = v505;
        v802.i64[0] = v506;
        v802.i64[1] = v507;
        v510 = *(&v795 + 1);
        type metadata accessor for FileItemVersion();
        v511 = sub_1CF9E75D8();
        v512 = &v503[v509];
        v403 = v795;
        (*(*(v511 - 8) + 8))(v512, v511);
        v513 = sub_1CF9E75D8();
        (*(*(v513 - 8) + 8))(&v503[v789], v513);
        v514 = sub_1CF9E75D8();
        (*(*(v514 - 8) + 8))(&v503[v797.i64[0]], v514);
LABEL_170:
        v602 = v796;
        goto LABEL_173;
      }

      v403 = v795;
      if (v402 == 2)
      {
        v797.i64[0] = &v709;
        MEMORY[0x1EEE9AC00](v402);
        strcpy(&v709 - 64, " destinationItemID baseVersion recursive domainVersion ");
        v801.i64[0] = v403;
        v801.i64[1] = sub_1CF9E75D8();
        v593 = v128;
        v594 = swift_getAssociatedTypeWitness();
        v595 = swift_getAssociatedTypeWitness();
        v596 = swift_getAssociatedConformanceWitness();
        v789 = v596;
        v597 = swift_getAssociatedConformanceWitness();
        v806 = v594;
        v807 = v595;
        v808 = v596;
        v809 = v597;
        type metadata accessor for FileItemVersion();
        v802.i64[0] = sub_1CF9E75D8();
        v802.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
        v803 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        v598 = swift_getTupleTypeMetadata();
        v797.i64[0] = v598[12];
        v599 = v598[16];

        v404 = *(v790 + 4);
        v405 = v739;
        v404(v739, v593, v403);
        v801.i64[0] = v594;
        v801.i64[1] = v595;
        v802.i64[0] = v789;
        v802.i64[1] = v597;
        v510 = *(&v795 + 1);
        type metadata accessor for FileItemVersion();
        v600 = sub_1CF9E75D8();
        (*(*(v600 - 8) + 8))(&v593[v599], v600);
        v601 = sub_1CF9E75D8();
        (*(*(v601 - 8) + 8))(&v593[v797.i64[0]], v601);
        goto LABEL_170;
      }

      if (v402 != 4 && v402 != 5)
      {
        goto LABEL_53;
      }

      v404 = *(v790 + 4);
      v405 = v739;
      v404(v739, v128, v795);
LABEL_172:
      v510 = *(&v795 + 1);
      v602 = v796;
LABEL_173:
      (*(v602 + 8))(v800, v344);
      v606 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v607 = *(v791 + 72);
      v608 = *(v791 + 80);
      swift_allocObject();
      v609 = sub_1CF9E6D68();
      v610 = *(v606 + 48);
      *v611 = 0x2000;
      v404(&v611[v610], v405, v403);
      v801.i64[0] = v403;
      v801.i64[1] = v510;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      type metadata accessor for ReconciliationID();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v212 = v609;
      return sub_1CF045898(v212);
    case 0x1Fu:
      v169 = v760;
      v170 = v799;
      v155(v760, v800, v799);
      v171 = v795;
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v172 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v173 = v790;
      v174 = v788.i64[0];
      (*(v790 + 4))(v788.i64[0], v169, v171);
      v175 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v176 = *(v791 + 72);
      v177 = *(v791 + 80);
      swift_allocObject();
      v179 = sub_1CF9E6D68();
      v180 = v178 + *(v175 + 48);
      v181 = 0x4000;
      goto LABEL_11;
    case 0x21u:
      v169 = v757;
      v170 = v799;
      v155(v757, v800, v799);
      v171 = v795;
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v172 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v173 = v790;
      v174 = v788.i64[0];
      (*(v790 + 4))(v788.i64[0], v169, v171);
      v213 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v214 = *(v791 + 72);
      v215 = *(v791 + 80);
      swift_allocObject();
      v179 = sub_1CF9E6D68();
      v216 = *(v213 + 48);
      *v217 = 8;
      (v173[2])(&v217[v216], v174, v171);
      swift_storeEnumTagMultiPayload();
      goto LABEL_42;
    case 0x22u:
      v285 = v799;
      v155(v118, v800, v799);
      v347 = v795;
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v172 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v336 = *(*(v172 - 8) + 8);
        v337 = v118;
        goto LABEL_59;
      }

      v414 = v790;
      v415 = v788.i64[0];
      (*(v790 + 4))(v788.i64[0], v118, v347);
      v416 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v417 = *(v791 + 72);
      v418 = *(v791 + 80);
      swift_allocObject();
      v419 = sub_1CF9E6D68();
      v420 = *(v416 + 48);
      *v421 = 1024;
      (*(v414 + 2))(&v421[v420], v415, v347);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v168 = sub_1CF045898(v419);
      (*(v414 + 1))(v415, v347);
LABEL_91:
      (*(v796 + 8))(v800, v285);
      return v168;
    case 0x23u:
      v169 = v759;
      v170 = v799;
      v155(v759, v800, v799);
      v171 = v795;
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v172 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v173 = v790;
      v174 = v788.i64[0];
      (*(v790 + 4))(v788.i64[0], v169, v171);
      v182 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v183 = *(v791 + 72);
      v184 = *(v791 + 80);
      swift_allocObject();
      v179 = sub_1CF9E6D68();
      v186 = *(v182 + 48);
      v187 = 0x80000;
      goto LABEL_16;
    case 0x28u:
      v169 = v762;
      v170 = v799;
      v155(v762, v800, v799);
      v171 = v795;
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v172 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v173 = v790;
      v174 = v788.i64[0];
      (*(v790 + 4))(v788.i64[0], v169, v171);
      v195 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v196 = *(v791 + 72);
      v197 = *(v791 + 80);
      swift_allocObject();
      v179 = sub_1CF9E6D68();
      v186 = *(v195 + 48);
      v187 = 1024;
LABEL_16:
      *v185 = v187;
      (v173[2])(v185 + v186, v174, v171);
LABEL_41:
      swift_storeEnumTagMultiPayload();
      goto LABEL_42;
    case 0x2Au:
      v169 = v763;
      v170 = v799;
      v155(v763, v800, v799);
      v171 = v795;
      v801 = v795;
      v802.i64[0] = v794;
      v802.i64[1] = AssociatedConformanceWitness;
      v172 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v173 = v790;
        v174 = v788.i64[0];
        (*(v790 + 4))(v788.i64[0], v169, v171);
        v189 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        v190 = *(v791 + 72);
        v191 = *(v791 + 80);
        swift_allocObject();
        v179 = sub_1CF9E6D68();
        v180 = v178 + *(v189 + 48);
        v181 = 512;
LABEL_11:
        *v178 = v181;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
        v192 = &v180[*(swift_getTupleTypeMetadata2() + 48)];
        (v173[2])(v180, v174, v171);
        swift_storeEnumTagMultiPayload();
        *v192 = 0;
        *(v192 + 1) = 0;
LABEL_42:
        swift_storeEnumTagMultiPayload();
        v168 = sub_1CF045898(v179);
        (v173[1])(v174, v171);
LABEL_140:
        (*(v796 + 8))(v800, v170);
        return v168;
      }

LABEL_49:
      v336 = *(*(v172 - 8) + 8);
      v337 = v169;
LABEL_59:
      v346 = v172;
LABEL_60:
      v336(v337, v346);
LABEL_61:
      v205 = sub_1CF9E6DA8();
LABEL_62:
      v168 = v205;
      goto LABEL_63;
    default:
      goto LABEL_61;
  }
}

void sub_1CF060D50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_1CF060D9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return v0;
}

uint64_t sub_1CF060DDC()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 272))(result);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF060E50()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 632);
  v4 = *(*v0 + 640);
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = type metadata accessor for PersistenceTrigger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = v2;
    v13 = v1;
    v14 = v4;
    v15 = v3;
    v11 = type metadata accessor for PersistenceTrigger();
    sub_1CF060FD0(v11, v9);
    sub_1CF042D98(v9);

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF060FD0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v258 = a2;
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  *&v262 = a1[2];
  v4 = v262;
  *(&v262 + 1) = v3;
  *&v263 = v5;
  *(&v263 + 1) = v6;
  v243 = type metadata accessor for ItemReconciliation();
  v242 = *(v243 - 8);
  v7 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v240 = &v228 - v8;
  *(&v262 + 1) = v3;
  *&v263 = v5;
  *(&v263 + 1) = v6;
  v239 = type metadata accessor for TestingOperation();
  v238 = *(v239 - 8);
  v9 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v237 = &v228 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  *&v262 = AssociatedTypeWitness;
  *(&v262 + 1) = v12;
  *&v263 = AssociatedConformanceWitness;
  *(&v263 + 1) = v14;
  v248 = type metadata accessor for ThrottlingKey();
  v247 = *(v248 - 8);
  v15 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v245 = &v228 - v16;
  *&v262 = AssociatedTypeWitness;
  *(&v262 + 1) = v12;
  *&v252 = v12;
  *(&v251 + 1) = AssociatedConformanceWitness;
  *&v263 = AssociatedConformanceWitness;
  *(&v263 + 1) = v14;
  *&v251 = v14;
  v17 = type metadata accessor for ReconciliationID();
  v249 = sub_1CF9E75D8();
  v250 = *(v249 - 8);
  v18 = *(v250 + 64);
  v19 = MEMORY[0x1EEE9AC00](v249);
  v241 = &v228 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v246 = &v228 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v236 = &v228 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v235 = &v228 - v25;
  *&v256 = v3;
  *&v257 = v6;
  v229 = type metadata accessor for SnapshotItem();
  v233 = sub_1CF9E75D8();
  v232 = *(v233 - 8);
  v26 = *(v232 + 64);
  v27 = MEMORY[0x1EEE9AC00](v233);
  v231 = &v228 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v228 - v29;
  *(&v256 + 1) = v4;
  *(&v257 + 1) = v5;
  v31 = type metadata accessor for SnapshotItem();
  v32 = sub_1CF9E75D8();
  v230 = *(v32 - 8);
  v33 = *(v230 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v228 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v228 - v38;
  v255 = v17;
  v254 = *(v17 - 8);
  v40 = *(v254 + 64);
  v41 = MEMORY[0x1EEE9AC00](v37);
  v234 = &v228 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v228 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v244 = &v228 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v253 = &v228 - v49;
  *(&v252 + 1) = AssociatedTypeWitness;
  v50 = *(AssociatedTypeWitness - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x1EEE9AC00](v48);
  v54 = &v228 - v53;
  v55 = *(*(a1 - 1) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v228 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v58 + 16))(v57, v259, a1);
  v259 = v57;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v146 = *(&v252 + 1);
      v147 = v252;
      v148 = *(swift_getTupleTypeMetadata2() + 48);
      v149 = *(v50 + 32);
      v150 = v259;
      v149(v54, v259, v146);
      v151 = *(swift_getTupleTypeMetadata2() + 48);
      v152 = v150 + v148;
      v153 = v258;
      (*(*(v147 - 8) + 32))(v258, v152, v147);
      v149(&v153[v151], v54, v146);
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 2:
    case 3:
    case 10:
    case 18:
    case 25:
    case 26:
    case 27:
    case 30:
    case 31:
    case 33:
    case 34:
    case 35:
    case 36:
    case 40:
    case 41:
    case 42:
      v76 = v254;
      v75 = v255;
      v77 = v253;
      (*(v254 + 32))(v253, v259, v255);
      sub_1CF050768(v75, v258);
      (*(v76 + 8))(v77, v75);
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 4:
    case 29:
      v109 = v255;
      v110 = *(v259 + *(swift_getTupleTypeMetadata2() + 48));
      v111 = v254;
      v112 = v253;
      (*(v254 + 32))(v253);
      v262 = v252;
      v263 = v251;
      type metadata accessor for ReconciliationID();
      v113 = *(swift_getTupleTypeMetadata2() + 48);
      v114 = v258;
      sub_1CF050768(v109, v258);
      (*(v111 + 8))(v112, v109);
      v114[v113] = v110;
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 5:
      v169 = v255;
      v170 = *(swift_getTupleTypeMetadata2() + 48);
      v171 = v254;
      v172 = *(v254 + 32);
      v173 = v253;
      v174 = v259;
      v172(v253, v259, v169);
      v175 = v174 + v170;
      v176 = v244;
      v172(v244, v175, v169);
      v262 = v252;
      v263 = v251;
      type metadata accessor for ReconciliationID();
      v177 = *(swift_getTupleTypeMetadata2() + 48);
      v178 = v258;
      sub_1CF050768(v169, v258);
      v179 = *(v171 + 8);
      v179(v173, v169);
      sub_1CF050768(v169, &v178[v177]);
      v179(v176, v169);
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 6:
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v187 = *(TupleTypeMetadata3 + 48);
      v188 = v259;
      v189 = *(v259 + *(TupleTypeMetadata3 + 64));
      v190 = *(v230 + 32);
      v190(v39, v259, v32);
      v190(v36, v188 + v187, v32);
      v191 = *(TupleTypeMetadata3 + 48);
      v192 = *(TupleTypeMetadata3 + 64);
      v193 = v258;
      v190(v258, v39, v32);
      v190(&v193[v191], v36, v32);
      *&v193[v192] = v189;
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 7:
      v136 = v233;
      v137 = swift_getTupleTypeMetadata3();
      v138 = *(v137 + 48);
      v139 = v259;
      v140 = *(v259 + *(v137 + 64));
      v141 = *(v232 + 32);
      v141(v30, v259, v136);
      v142 = v231;
      v141(v231, v139 + v138, v136);
      v143 = *(v137 + 48);
      v144 = *(v137 + 64);
      v145 = v258;
      v141(v258, v30, v136);
      v141(&v145[v143], v142, v136);
      *&v145[v144] = v140;
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 8:
      (*(*(v31 - 8) + 32))(v258, v259, v31);
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 9:
      (*(*(v229 - 8) + 32))(v258, v259);
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 11:
      v91 = v255;
      v92 = v249;
      *&v262 = v255;
      *(&v262 + 1) = v249;
      *&v263 = &type metadata for ContentStatus;
      *(&v263 + 1) = &type metadata for ContentStatus;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v94 = TupleTypeMetadata[12];
      v95 = v259;
      LODWORD(v253) = *(v259 + TupleTypeMetadata[16]);
      LODWORD(v248) = *(v259 + TupleTypeMetadata[20]);
      v96 = v254;
      (*(v254 + 32))(v45, v259, v91);
      v97 = *(v250 + 32);
      v98 = v95 + v94;
      v99 = v235;
      v97(v235, v98, v92);
      v262 = v252;
      v263 = v251;
      *&v262 = type metadata accessor for ReconciliationID();
      *(&v262 + 1) = sub_1CF9E75D8();
      *&v263 = &type metadata for ContentStatus;
      *(&v263 + 1) = &type metadata for ContentStatus;
      v259 = swift_getTupleTypeMetadata();
      v247 = *(v259 + 48);
      v100 = v258;
      sub_1CF050768(v91, v258);
      v101 = *(v96 + 8);
      v101(v45, v91);
      v102 = v236;
      v97(v236, v99, v92);
      if ((*(v96 + 48))(v102, 1, v91) == 1)
      {
        (*(v250 + 8))(v102, v92);
        v262 = v252;
        v263 = v251;
        v103 = type metadata accessor for ReconciliationID();
        v104 = 1;
        v105 = *(&v257 + 1);
        v106 = v257;
        v107 = v256;
        v108 = v247;
      }

      else
      {
        v222 = v247;
        sub_1CF050768(v91, &v100[v247]);
        v101(v102, v91);
        v262 = v252;
        v263 = v251;
        v103 = type metadata accessor for ReconciliationID();
        v104 = 0;
        v105 = *(&v257 + 1);
        v106 = v257;
        v107 = v256;
        v108 = v222;
      }

      (*(*(v103 - 8) + 56))(&v100[v108], v104, 1);
      v223 = *(v259 + 80);
      v100[*(v259 + 64)] = v253;
      v100[v223] = v248;
      *&v262 = v107;
      *(&v262 + 1) = *(&v256 + 1);
      *&v263 = v106;
      *(&v263 + 1) = v105;
      type metadata accessor for PersistenceTrigger();
      break;
    case 12:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      v115 = v259;
      strcpy(&v228 - 32, " otherID from to ");
      v116 = v255;
      v117 = v249;
      *&v262 = v255;
      *(&v262 + 1) = v249;
      *&v263 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      *(&v263 + 1) = v263;
      v118 = swift_getTupleTypeMetadata();
      v119 = v118[12];
      LODWORD(v253) = *(v115 + v118[16]);
      LODWORD(v248) = *(v115 + v118[20]);
      v120 = v254;
      v121 = v234;
      (*(v254 + 32))(v234, v115, v116);
      v247 = *(v250 + 32);
      v122 = (v247)(v246, v115 + v119, v117);
      MEMORY[0x1EEE9AC00](v122);
      strcpy(&v228 - 32, " otherID from to ");
      v262 = v252;
      v263 = v251;
      *&v262 = type metadata accessor for ReconciliationID();
      *(&v262 + 1) = sub_1CF9E75D8();
      *&v263 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      *(&v263 + 1) = v263;
      v123 = swift_getTupleTypeMetadata();
      v124 = v123[12];
      v125 = v258;
      sub_1CF050768(v116, v258);
      v126 = *(v120 + 8);
      v126(v121, v116);
      v127 = v241;
      (v247)(v241, v246, v117);
      if ((*(v120 + 48))(v127, 1, v116) == 1)
      {
        (*(v250 + 8))(v127, v117);
        v262 = v252;
        v263 = v251;
        v128 = type metadata accessor for ReconciliationID();
        v129 = 1;
      }

      else
      {
        sub_1CF050768(v116, &v125[v124]);
        v126(v127, v116);
        v262 = v252;
        v263 = v251;
        v128 = type metadata accessor for ReconciliationID();
        v129 = 0;
      }

      v224 = v257;
      v225 = v256;
      (*(*(v128 - 8) + 56))(&v125[v124], v129, 1);
      v226 = v123[20];
      v125[v123[16]] = v253;
      v125[v226] = v248;
      v262 = v225;
      v263 = v224;
      type metadata accessor for PersistenceTrigger();
      break;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v180 = v248;
      v181 = *(v259 + *(swift_getTupleTypeMetadata2() + 48));
      v182 = v247;
      v183 = v245;
      (*(v247 + 32))(v245);
      v262 = v252;
      v263 = v251;
      type metadata accessor for ThrottlingKey();
      v184 = *(swift_getTupleTypeMetadata2() + 48);
      v185 = v258;
      sub_1CF05043C(v180, v258);
      (*(v182 + 8))(v183, v180);
      *(v185 + v184) = v181;
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 14:
      v88 = v247;
      v89 = v245;
      v90 = v248;
      (*(v247 + 32))(v245, v259, v248);
      sub_1CF05043C(v90, v258);
      (*(v88 + 8))(v89, v90);
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 15:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v130 = v255;
      v131 = *(v259 + *(swift_getTupleTypeMetadata2() + 48));
      v132 = v254;
      v133 = v253;
      (*(v254 + 32))(v253);
      v262 = v252;
      v263 = v251;
      type metadata accessor for ReconciliationID();
      v134 = *(swift_getTupleTypeMetadata2() + 48);
      v135 = v258;
      sub_1CF050768(v130, v258);
      (*(v132 + 8))(v133, v130);
      *(v135 + v134) = v131;
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v78 = v255;
      v79 = swift_getTupleTypeMetadata3();
      v80 = *(v259 + *(v79 + 48));
      v81 = *(v259 + *(v79 + 64));
      v82 = v254;
      v83 = v253;
      (*(v254 + 32))(v253);
      v262 = v252;
      v263 = v251;
      type metadata accessor for ReconciliationID();
      v84 = swift_getTupleTypeMetadata3();
      v85 = *(v84 + 48);
      v86 = *(v84 + 64);
      v87 = v258;
      sub_1CF050768(v78, v258);
      (*(v82 + 8))(v83, v78);
      *(v87 + v85) = v80;
      *(v87 + v86) = v81;
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 17:
      v155 = v258;
      v154 = v259;
      v156 = *(v259 + 16);
      *v258 = *v259;
      *(v155 + 1) = v156;
      v157 = *(v154 + 48);
      *(v155 + 2) = *(v154 + 32);
      *(v155 + 3) = v157;
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 19:
      v205 = *(&v252 + 1);
      v206 = v252;
      v207 = *(swift_getTupleTypeMetadata2() + 48);
      v208 = *(v50 + 32);
      v209 = v259;
      v208(v54, v259, v205);
      v210 = *(swift_getTupleTypeMetadata2() + 48);
      v211 = v209 + v207;
      v212 = v258;
      (*(*(v206 - 8) + 32))(v258, v211, v206);
      v208(&v212[v210], v54, v205);
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 20:
      v158 = v259;
      v159 = *v259;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v160 = v255;
      v161 = swift_getTupleTypeMetadata3();
      v162 = *(v158 + *(v161 + 64));
      v163 = v254;
      v164 = v253;
      (*(v254 + 32))(v253, v158 + *(v161 + 48), v160);
      v262 = v252;
      v263 = v251;
      type metadata accessor for ReconciliationID();
      v165 = swift_getTupleTypeMetadata3();
      v166 = *(v165 + 48);
      v167 = *(v165 + 64);
      v168 = v258;
      *v258 = v159;
      sub_1CF050768(v160, v168 + v166);
      (*(v163 + 8))(v164, v160);
      *(v168 + v167) = v162;
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 23:
    case 24:
      *v258 = (*v259 & 1) == 0;
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 28:
      v213 = v238;
      v214 = v237;
      v215 = v239;
      (*(v238 + 32))(v237, v259, v239);
      sub_1CF940280(v215, v258);
      (*(v213 + 8))(v214, v215);
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 32:
      v194 = v255;
      v195 = *(swift_getTupleTypeMetadata2() + 48);
      v196 = v254;
      v197 = *(v254 + 32);
      v198 = v253;
      v199 = v259;
      v197(v253, v259, v194);
      v200 = v199 + v195;
      v201 = v244;
      v197(v244, v200, v194);
      v262 = v252;
      v263 = v251;
      type metadata accessor for ReconciliationID();
      v202 = *(swift_getTupleTypeMetadata2() + 48);
      v203 = v258;
      sub_1CF050768(v194, v258);
      v204 = *(v196 + 8);
      v204(v198, v194);
      sub_1CF050768(v194, &v203[v202]);
      v204(v201, v194);
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 37:
      v72 = v242;
      v73 = v240;
      v74 = v243;
      (*(v242 + 32))(v240, v259, v243);
      sub_1CF07EE34(v74, v258);
      (*(v72 + 8))(v73, v74);
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 38:
      v216 = v255;
      v217 = *(v259 + *(swift_getTupleTypeMetadata2() + 48));
      v218 = v254;
      v219 = v253;
      (*(v254 + 32))(v253);
      v262 = v252;
      v263 = v251;
      type metadata accessor for ReconciliationID();
      v220 = *(swift_getTupleTypeMetadata2() + 48);
      v221 = v258;
      sub_1CF050768(v216, v258);
      (*(v218 + 8))(v219, v216);
      v221[v220] = v217;
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 39:
      *v258 = *v259;
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 43:
      v63 = v255;
      v64 = (v259 + *(swift_getTupleTypeMetadata2() + 48));
      v65 = v64[1];
      v262 = *v64;
      v263 = v65;
      v66 = v64[3];
      v264 = v64[2];
      v265 = v66;
      v67 = v254;
      v68 = v253;
      (*(v254 + 32))(v253);
      v260 = v252;
      v261 = v251;
      type metadata accessor for ReconciliationID();
      v69 = &v258[*(swift_getTupleTypeMetadata2() + 48)];
      sub_1CF050768(v63, v258);
      (*(v67 + 8))(v68, v63);
      v70 = v263;
      *v69 = v262;
      *(v69 + 1) = v70;
      v71 = v265;
      *(v69 + 2) = v264;
      *(v69 + 3) = v71;
      v260 = v256;
      v261 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
      v262 = v256;
      v263 = v257;
      type metadata accessor for PersistenceTrigger();
      break;
    default:
      v60 = v256;
      v61 = v257;
      v62 = sub_1CF0452C8(*v259);

      *v258 = v62;
      v262 = v60;
      v263 = v61;
      type metadata accessor for PersistenceTrigger();
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF063B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v6 + 168) + 48))(a1, a2, *(v6 + 160));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF063BC4(uint64_t a1)
{
  v3 = *v1;
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_1CF045354();

  if (!v5)
  {
    return result;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = v3[78];
  v8 = v3[77];
  v9 = v3[80];
  v10 = v3[79];
  v11 = sub_1CF0452C8(a1);
  v12 = *(*v5 + 128);

  v12(v6, v11);
}

uint64_t sub_1CF063CE8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[4];
  v5 = a3[2];
  v74 = *(swift_getAssociatedTypeWitness() - 8);
  v77 = *(v74 + 84);
  if (v77)
  {
    v6 = v77 - 1;
  }

  else
  {
    v6 = 0;
  }

  v73 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v73 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = *(AssociatedTypeWitness - 8);
  v8 = *(v72 + 84);
  v60 = v8;
  if (v7 > v8)
  {
    v8 = v7;
  }

  v63 = v8;
  if (v8 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  v65 = v8;
  v66 = v7;
  v9 = v8 - 1;
  if (v6 > v9)
  {
    v9 = v6;
  }

  v67 = v6;
  v68 = v9;
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = a3[5];
  v12 = a3[3];
  v71 = *(swift_getAssociatedTypeWitness() - 8);
  v76 = *(v71 + 84);
  if (v76)
  {
    v13 = v76 - 1;
  }

  else
  {
    v13 = 0;
  }

  v59 = swift_getAssociatedTypeWitness();
  v70 = *(v59 - 8);
  v14 = *(v70 + 84);
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  v62 = v14;
  if (v14 <= v18)
  {
    v19 = *(v16 + 84);
  }

  else
  {
    v19 = v14;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v20 = 2147483646;
  }

  else
  {
    v20 = v19;
  }

  v64 = v13;
  if (v13 <= v20 - 1)
  {
    v21 = v20 - 1;
  }

  else
  {
    v21 = v13;
  }

  if (v21 <= 0x7FFFFFFE)
  {
    v22 = 2147483646;
  }

  else
  {
    v22 = v21;
  }

  if (v22 <= v10)
  {
    v23 = v10;
  }

  else
  {
    v23 = v22;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v72 + 80);
  v26 = *(v16 + 80);
  v27 = *(v70 + 64);
  v28 = v24 - 1;
  if (v24 - 1 < v24)
  {
    v28 = v24;
  }

  if (v77)
  {
    v29 = *(v74 + 64);
  }

  else
  {
    v29 = *(v74 + 64) + 1;
  }

  if (v76)
  {
    v30 = *(v71 + 64);
  }

  else
  {
    v30 = *(v71 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = *(v73 + 80) & 0xF8 | v25;
  v32 = v31 | 7u;
  v33 = v31 | *(v74 + 80) & 0xF8;
  v34 = *(v70 + 80) & 0xF8 | v26 | 7;
  v35 = v34 | *(v71 + 80) & 0xF8;
  v36 = v33 | v35;
  v37 = *(v73 + 64) + 7;
  v38 = v29 + 7;
  v39 = ((((((((v32 + 9 + ((((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v32) + ((((*(v72 + 64) + ((v25 + 8 + (v37 & 0xFFFFFFFFFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v40 = v30 + 7;
  v41 = ((((((((v34 + 9 + (((v40 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + ((((*(*(v15 - 8) + 64) + ((v26 + 8 + ((v27 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a2 <= v28)
  {
    goto LABEL_65;
  }

  v42 = (((((v41 + ((v39 + v35) & ~v35) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v43 = ((v36 + 9 + ((((v42 + ((((v36 + 9) | v36) + v42 + 8) & ~v36) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v36) + v42 + 8;
  v44 = 8 * v43;
  if (v43 > 3)
  {
    goto LABEL_45;
  }

  v46 = ((a2 - v28 + ~(-1 << v44)) >> v44) + 1;
  if (HIWORD(v46))
  {
    v45 = *(a1 + v43);
    if (v45)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (v46 <= 0xFF)
    {
      if (v46 < 2)
      {
        goto LABEL_65;
      }

LABEL_45:
      v45 = *(a1 + v43);
      if (!*(a1 + v43))
      {
        goto LABEL_65;
      }

LABEL_52:
      v47 = (v45 - 1) << v44;
      if (v43 > 3)
      {
        v47 = 0;
      }

      if (v43)
      {
        if (v43 <= 3)
        {
          v48 = v43;
        }

        else
        {
          v48 = 4;
        }

        if (v48 > 2)
        {
          if (v48 == 3)
          {
            v49 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v49 = *a1;
          }
        }

        else if (v48 == 1)
        {
          v49 = *a1;
        }

        else
        {
          v49 = *a1;
        }
      }

      else
      {
        v49 = 0;
      }

      return v28 + (v49 | v47) + 1;
    }

    v45 = *(a1 + v43);
    if (*(a1 + v43))
    {
      goto LABEL_52;
    }
  }

LABEL_65:
  v50 = (a1 + v36 + 9) & ~v36;
  if (v68 == v24)
  {
    if (v67 == v10)
    {
      if (v77 >= 2)
      {
        v51 = (*(v74 + 48))(v50);
        goto LABEL_93;
      }

      return 0;
    }

    v54 = (v32 + 9 + ((((v38 + v50) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v32;
    if (v66 == v65)
    {
      v51 = (*(v73 + 48))(v54);
      goto LABEL_93;
    }

    v57 = ((v37 + v54) & 0xFFFFFFFFFFFFFFF8);
    if (v63 > 0x7FFFFFFE)
    {
      v51 = (*(v72 + 48))((v57 + v25 + 8) & ~v25, v60, AssociatedTypeWitness);
      goto LABEL_93;
    }

LABEL_87:
    v58 = *v57;
    if (v58 >= 0xFFFFFFFF)
    {
      LODWORD(v58) = -1;
    }

    if ((v58 + 1) >= 2)
    {
      v51 = v58;
    }

    else
    {
      v51 = 0;
    }

    goto LABEL_93;
  }

  v52 = (v50 + v35 + v39) & ~v35;
  if (v21 == v24)
  {
    if (v64 == v22)
    {
      if (v76 < 2)
      {
        return 0;
      }

      v51 = (*(v71 + 48))(v52);
    }

    else
    {
      v56 = (v34 + 9 + ((((v40 + v52) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v34;
      if (v62 == v20)
      {
        v51 = (*(v70 + 48))(v56, v62, v59);
        goto LABEL_93;
      }

      v57 = ((v27 + 7 + v56) & 0xFFFFFFFFFFFFFFF8);
      if (v19 <= 0x7FFFFFFE)
      {
        goto LABEL_87;
      }

      v51 = (*(v17 + 48))((v57 + v26 + 8) & ~v26, v18, v15);
    }

LABEL_93:
    if (v51 >= 2)
    {
      return v51 - 1;
    }

    else
    {
      return 0;
    }
  }

  v55 = *(((v52 + v41) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v55 >= 0xFFFFFFFF)
  {
    LODWORD(v55) = -1;
  }

  return (v55 + 1);
}

uint64_t *sub_1CF064568()
{
  v1 = v0[8];

  v3 = objc_sync_enter(v2);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v10 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF0646E8(v0);
  v4 = objc_sync_exit(v1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v10 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[11];
  sub_1CF045404(v0[10]);
  return v0;
}

uint64_t sub_1CF0646E8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = type metadata accessor for JobLockRule();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v44 - v13;
  v58 = *(v3 + 64);
  result = sub_1CF04B9F0(v3);
  if (result)
  {
    v15 = *(v3 + 80);
    if (v15)
    {
      v16 = *(v3 + 88);

      v15(v17);
      result = sub_1CF045404(v15);
    }
  }

  if (*(v3 + 73) != 1)
  {
    return result;
  }

  v18 = *(v3 + 56);

  if (!sub_1CF9E6DF8())
  {
  }

  v45 = v8;
  v19 = 0;
  v57 = (v7 + 16);
  v53 = (v7 + 32);
  v51 = (v7 + 8);
  v20 = v50;
  v21 = v18;
  v46 = v6;
  v47 = v7;
  v48 = v12;
  v52 = v18;
  while (1)
  {
    v22 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v22)
    {
      v23 = v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19;
      v56 = *(v7 + 16);
      v56(v20, v23, v6);
      v24 = __OFADD__(v19++, 1);
      if (v24)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v43 = sub_1CF9E7998();
      if (v45 != 8)
      {
        goto LABEL_58;
      }

      *&v60[0] = v43;
      v56 = *v57;
      v56(v20, v60, v6);
      swift_unknownObjectRelease();
      v24 = __OFADD__(v19++, 1);
      if (v24)
      {
LABEL_46:
        __break(1u);
      }
    }

    (*v53)(v12, v20, v6);
    v25 = v58;
    swift_beginAccess();
    v26 = *(v25 + 24);
    WitnessTable = swift_getWitnessTable();
    sub_1CF9E6728();
    v27 = *&v59[0];
    if (!*&v59[0])
    {
      swift_endAccess();
      (*v51)(v12, v6);
      goto LABEL_8;
    }

    v54 = *(&v59[0] + 1);
    swift_endAccess();
    v28 = sub_1CF82645C(sub_1CF52BE20, v3, v27);
    if ((v29 & 1) == 0)
    {
      break;
    }

    v30 = v27[2];
    v31 = v30;
LABEL_18:
    if (__OFADD__(v30, v31 - v30))
    {
      goto LABEL_56;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v31 > v27[3] >> 1)
    {
      if (v30 <= v31)
      {
        v36 = v31;
      }

      else
      {
        v36 = v30;
      }

      v27 = sub_1CF1F7408(isUniquelyReferenced_nonNull_native, v36, 1, v27);
      v61 = v27;
    }

    sub_1CF8E42DC(v31, v30, 0);
    if (v27[2] | v54)
    {
      v12 = v48;
      v37 = v54;
      v56(v49, v48, v6);
      *&v59[0] = v27;
      *(&v59[0] + 1) = v37;
    }

    else
    {

      v12 = v48;
      v56(v49, v48, v6);
      v59[0] = 0uLL;
    }

    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    (*v51)(v12, v6);
    v20 = v50;
LABEL_8:
    v21 = v52;
    if (v19 == sub_1CF9E6DF8())
    {
    }
  }

  v31 = v28;
  v30 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    goto LABEL_57;
  }

  v32 = v3;
  v34 = v27 + 2;
  v33 = v27[2];
  if (v30 == v33)
  {
LABEL_16:
    v7 = v47;
    if (v30 < v31)
    {
      goto LABEL_54;
    }

    v3 = v32;
    v6 = v46;
    if (v31 < 0)
    {
      goto LABEL_55;
    }

    goto LABEL_18;
  }

  v38 = 40 * v28 + 72;
  while (v30 < v33)
  {
    sub_1CF1A91AC(v27 + v38, v60);
    v39 = sub_1CF528F8C(v60, v32);
    if (v2)
    {
      goto LABEL_59;
    }

    v40 = v39;
    v2 = 0;
    __swift_destroy_boxed_opaque_existential_1(v60);
    if ((v40 & 1) == 0)
    {
      if (v30 != v31)
      {
        if (v31 < 0)
        {
          goto LABEL_50;
        }

        v41 = *v34;
        if (v31 >= *v34)
        {
          goto LABEL_51;
        }

        sub_1CF1A91AC(&v27[5 * v31 + 4], v60);
        if (v30 >= v41)
        {
          goto LABEL_52;
        }

        sub_1CF1A91AC(v27 + v38, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1CF7722AC(v27);
        }

        v42 = &v27[5 * v31];
        __swift_destroy_boxed_opaque_existential_1(v42 + 4);
        sub_1CF054EA0(v59, (v42 + 4));
        if (v30 >= v27[2])
        {
          goto LABEL_53;
        }

        __swift_destroy_boxed_opaque_existential_1((v27 + v38));
        sub_1CF054EA0(v60, v27 + v38);
      }

      ++v31;
    }

    ++v30;
    v34 = v27 + 2;
    v33 = v27[2];
    v38 += 40;
    if (v30 == v33)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_50:
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
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = __swift_destroy_boxed_opaque_existential_1(v60);
  __break(1u);
  return result;
}

uint64_t sub_1CF064DAC@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 96);
  v3 = type metadata accessor for TestingOperation();
  return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF064ED0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF064F10()
{
  sub_1CF060D9C();

  return swift_deallocClassInstance();
}

unint64_t sub_1CF064F48()
{
  result = qword_1EDEA8320;
  if (!qword_1EDEA8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8320);
  }

  return result;
}

unint64_t sub_1CF064F9C()
{
  result = qword_1EDEA33B8;
  if (!qword_1EDEA33B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BFF50, &unk_1CFA05610);
    sub_1CEFCCCEC(&qword_1EDEA37D0, &qword_1EC4BE170, qword_1CFA03A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA33B8);
  }

  return result;
}

uint64_t sub_1CF065054@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  result = sub_1CF0660C4(*a1, *(v2 + 16));
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_1CF0650B4()
{
  v1 = sub_1CF9E6118();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v4 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = sub_1CF9E64A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + qword_1EDEBBC38);
  v13 = fpfs_adopt_log();
  v14 = *(v0 + 64);
  *v11 = v14;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v15 = v14;
  LOBYTE(v14) = sub_1CF9E64D8();
  (*(v8 + 8))(v11, v7);
  if (v14)
  {
    if (*(v0 + 88) == 1)
    {
      if (fp_task_tracker_is_cancelled(*(*(v0 + 168) + 16)) & 1) != 0 || (*(v0 + 152))
      {
        v16 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v17 = sub_1CF9E6108();
        v18 = sub_1CF9E7298();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_1CEFC7000, v17, v18, "not processing more jobs since we were cancelled", v19, 2u);
          MEMORY[0x1D386CDC0](v19, -1, -1);
        }

        (*(v22 + 8))(v6, v1);
      }

      else
      {
        sub_1CF7FD00C("onRunnableJobs()", 0x10uLL, 2, sub_1CF482DE0, v0);
      }
    }

    v20 = fpfs_adopt_log();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF0655D4()
{
  v7 = v0[2];
  v10 = sub_1CF9E7F98();
  v11 = v1;
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v8 = v0[3];
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  v4 = v0[3];
  if (v4 == v0[5] && v4 != v0[4])
  {
    result = MEMORY[0x1D3868CC0](0x208FB8EFA09AE220, 0xAC00000064726168);
    v4 = v0[3];
  }

  v5 = v0[2];
  if (__OFSUB__(v4, v5))
  {
    __break(1u);
  }

  else
  {
    if (v4 == v5)
    {
      v6 = 0x20919B9FF0;
    }

    else
    {
      v6 = 545627362;
    }

    v9 = v6;
    MEMORY[0x1D3868CC0](v10, v11);

    return v9;
  }

  return result;
}

BOOL sub_1CF06570C(_BOOL8 result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_15;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = *result < *a2;
  if (*result == *a2)
  {
    v3 = *(a2 + 32);
    if (*(result + 32))
    {
      if (*(a2 + 32))
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (*(a2 + 32))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    return *(result + 24) < *(a2 + 24);
  }

  return v2;
}

void *sub_1CF06577C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1CF065884(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BC0, &qword_1CF9FE630);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1CF065884(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE778, &qword_1CF9FE638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BC0, &qword_1CF9FE630);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t storeEnumTagSinglePayload for JobCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 88 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 88) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA8)
  {
    v4 = 0;
  }

  if (a2 > 0xA7)
  {
    v5 = ((a2 - 168) >> 8) + 1;
    *result = a2 + 88;
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
    *result = a2 + 88;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF065A84(uint64_t result, uint64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x726576656ELL;
  }

  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1CF064F48();
  v7 = sub_1CF9E7F98();
  result = MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  if (v2 < 0)
  {
    v5 = __OFSUB__(0, v2);
    v2 = -v2;
    if (!v5)
    {
      v4 = 0xE100000000000000;
      v3 = 45;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = 0xE000000000000000;
LABEL_8:
  v6 = sub_1CF04F854(v2);
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](v3, v4);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v7;
}

uint64_t sub_1CF065B7C()
{
  v2 = *v0 / 1000000000;
  sub_1CF056E98();
  return sub_1CF9E7718();
}

uint64_t sub_1CF065BDC(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1CF03D7E8();
  v11 = v10;
  v12 = v10[2];
  if (!v12)
  {
LABEL_37:

    v32 = sub_1CF03D7E8();
    v33 = swift_allocObject();
    *(v33 + 16) = a4;
    *(v33 + 24) = a5;
    v42[0] = v32;
    v42[1] = sub_1CF065054;
    v42[2] = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF50, &unk_1CFA05610);
    sub_1CF064F9C();
    v34 = sub_1CF9E67D8();

    return v34;
  }

  v13 = 0;
  v14 = (v10 + 4);
  if (a1 | a2)
  {
    v15 = 4;
  }

  else
  {
    v15 = 5;
  }

  v41 = v15;
  v39 = (v10 + 4);
  v40 = a2;
  v36 = a1;
  while (v13 < v11[2])
  {
    if (a3 == 0xFF)
    {
      v16 = [v6 bindObjectParameter_];
LABEL_7:

      goto LABEL_8;
    }

    if (!v14[v13])
    {
      v17 = v41;
      if (a3 == 3)
      {
        v17 = 3;
      }

      if (a3 == 2)
      {
        v17 = 2;
      }

      v18 = a3;
      if (a3)
      {
        v18 = 1;
      }

      if (a3 <= 1u)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v16 = [v6 bindLongParameter_];
      goto LABEL_7;
    }

    if (v14[v13] == 1)
    {
      if (a3)
      {
        v16 = [v6 bindLongParameter_];
        goto LABEL_7;
      }

      v43 = MEMORY[0x1E69E6530];
      v42[0] = a1;
      sub_1CEFF8EA0(v42);
      v24 = v23;
      sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (!v24)
      {
        goto LABEL_39;
      }

      a2 = v40;
    }

    else
    {
      if (a3)
      {
        if (a3 == 1 || a3 == 2)
        {
          v20 = a1;
          if (a1)
          {
LABEL_29:
            v44 = v20;
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
            v42[0] = v20;

            sub_1CF03C530(a1, a2, a3);
            sub_1CEFF8EA0(v42);
            v22 = v21;
            sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
            if (v22)
            {
              sub_1CF201778(a1, a2, a3);
            }

            else
            {
              v25 = sub_1CF9E56C8();
              v26 = *(v25 + 48);
              v27 = *(v25 + 52);
              swift_allocObject();
              sub_1CF9E56B8();
              sub_1CF9E5698();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE508, &qword_1CF9FDDC0);
              sub_1CF1E0FC0();
              v28 = sub_1CF9E56A8();
              v30 = v29;
              v31 = v28;
              sub_1CF04E5D8(v28, v29);

              sub_1CEFE4714(v31, v30);
              a1 = v36;
              sub_1CF201778(v36, v40, a3);
              a2 = v40;
            }

            v14 = v39;
            goto LABEL_8;
          }
        }
      }

      else
      {
        v20 = a2;
        if (a2)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_8:
    if (v12 == ++v13)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF066084()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF0660C4(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD000000000000010;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a1 == 1)
    {
      v3 = 0x80000001CFA2C3F0;
    }

    else
    {
      v3 = 0x80000001CFA2C410;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v2 = 0x6574617473;
  }

  MEMORY[0x1D3868CC0](v2, v3);

  MEMORY[0x1D3868CC0](1059077408, 0xE400000000000000);
  return a2;
}

uint64_t sub_1CF066180@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X8>)
{
  v5 = -1 << *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = a1 + 64;
  result = sub_1CF9E77C8();
  if (*(a1 + 36) == v6)
  {
    v9 = result;
    v21 = a3;
    v23 = -v5;
    v10 = result == -v5;
    if (result == -v5)
    {
LABEL_3:
      result = sub_1CF0663D8(v23, v6, 0);
      v9 = 1 << *(a1 + 32);
      v6 = *(a1 + 36);
LABEL_4:
      *v21 = v9;
      *(v21 + 8) = v6;
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = v10;
      return result;
    }

    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v24 = *(*(a1 + 56) + 16 * v9);

      a2(&v25, &v24);

      v13 = *(v25 + 16);

      if (v13)
      {
        goto LABEL_4;
      }

      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_25;
      }

      v14 = *(v7 + 8 * v12);
      if ((v14 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v15 = v14 & (-2 << (v9 & 0x3F));
      if (v15)
      {
        v11 = __clz(__rbit64(v15)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v12 << 6;
        v17 = v12 + 1;
        v18 = (a1 + 72 + 8 * v12);
        while (v17 < (v11 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_1CF0663D8(v9, v6, 0);
            v11 = __clz(__rbit64(v19)) + v16;
            goto LABEL_6;
          }
        }

        result = sub_1CF0663D8(v9, v6, 0);
      }

LABEL_6:
      v9 = v11;
      v10 = v11 == v23;
      if (v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1CF0663D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1CF0663E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, __int128 *), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t, void, void, uint64_t))
{
  result = sub_1CF06570C(a2, a1);
  v10 = result;
  if (result)
  {
    v11 = -(-1 << *(a3 + 32));
    v12 = *(a3 + 36);
    v13 = sub_1CF9E77C8();
    result = a6(v11, v12, 0, v13, *(a3 + 36), 0, a3);
  }

  if (*(a1 + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_60;
  }

  v14 = *(a1 + 8);
  v15 = *(a2 + 8);
  v16 = a3;
  if (v14 != v15)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v17 = *a1;
  v18 = *a2;
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  if (v17 != *a2)
  {
    v51 = v20;
    v50 = v19;
    if (v10)
    {
      *&v59 = sub_1CF477A40(v18, v15, 0, a3);
      *(&v59 + 1) = v23;
      a4(&v60, &v59);

      if (v22)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v24 = *(v60 + 16);

      if (__OFSUB__(v21, v24))
      {
        goto LABEL_57;
      }

      v58 = v21 - v24;
      v55 = -1;
      v56 = v17;
      v49 = v14;
      LOBYTE(v21) = v51;
      goto LABEL_19;
    }

LABEL_16:
    *&v59 = sub_1CF477A40(v17, v14, 0, v16);
    *(&v59 + 1) = v27;
    a4(&v60, &v59);

    if (v51)
    {
LABEL_63:
      __break(1u);
      return result;
    }

    v28 = *(v60 + 16);

    if (__OFSUB__(v28, v50))
    {
      goto LABEL_58;
    }

    v58 = v28 - v50;
    v55 = 1;
    v56 = v18;
    v49 = v15;
    v50 = v21;
    LOBYTE(v21) = v22;
    v18 = v17;
    v15 = v14;
LABEL_19:
    v29 = sub_1CF47794C(v18, v15, 0, a3);
    v31 = v30;
    v33 = v32;
    result = sub_1CF0663D8(v18, v15, 0);
    if (v33)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v31 == v49)
    {
      if (v29 < v56)
      {
        v52 = v21;
        v34 = a3;
        if ((v29 & 0x8000000000000000) == 0 && v29 < 1 << *(a3 + 32))
        {
          v35 = a3 + 64;
          v54 = v31;
          v36 = v31;
          while (1)
          {
            v21 = v31;
            v37 = v29 >> 6;
            if ((*(v35 + 8 * (v29 >> 6)) & (1 << v29)) == 0)
            {
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

            if (*(v34 + 36) != v36)
            {
              goto LABEL_49;
            }

            v59 = *(*(v34 + 56) + 16 * v29);

            a4(&v60, &v59);

            v38 = *(v60 + 16);

            v39 = v58 + v38 * v55;
            if (__OFADD__(v58, v38 * v55))
            {
              goto LABEL_50;
            }

            v40 = 1 << *(v34 + 32);
            if (v29 >= v40)
            {
              goto LABEL_51;
            }

            v41 = *(v35 + 8 * v37);
            if ((v41 & (1 << v29)) == 0)
            {
              goto LABEL_52;
            }

            v58 = v39;
            if (*(v34 + 36) != v36)
            {
              goto LABEL_53;
            }

            v42 = v41 & (-2 << (v29 & 0x3F));
            if (v42)
            {
              v29 = __clz(__rbit64(v42)) | v29 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v43 = v37 << 6;
              v44 = v37 + 1;
              v45 = (a3 + 72 + 8 * v37);
              while (v44 < (v40 + 63) >> 6)
              {
                v47 = *v45++;
                v46 = v47;
                v43 += 64;
                ++v44;
                if (v47)
                {
                  result = sub_1CF0663D8(v29, v36, 0);
                  v34 = a3;
                  v29 = __clz(__rbit64(v46)) + v43;
                  goto LABEL_38;
                }
              }

              result = sub_1CF0663D8(v29, v36, 0);
              v34 = a3;
              v29 = v40;
            }

LABEL_38:
            v31 = v21;
            if (v36 != v21)
            {
              goto LABEL_54;
            }

            if (v29 >= v56)
            {
              break;
            }

            if ((v29 & 0x8000000000000000) == 0)
            {
              v36 = v54;
              if (v29 < 1 << *(v34 + 32))
              {
                continue;
              }
            }

            goto LABEL_42;
          }

          if (v52)
          {
            return v58;
          }

          goto LABEL_46;
        }

LABEL_42:
        __break(1u);
      }

      v34 = a3;
      if (v21)
      {
        return v58;
      }

LABEL_46:
      *&v59 = sub_1CF477A40(v56, v49, 0, v34);
      *(&v59 + 1) = v48;
      a4(&v60, &v59);

      result = v58 + v50 * v55;
      if (!__OFADD__(v58, v50 * v55))
      {
        return result;
      }

      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if ((v20 | v22))
  {
    return 0;
  }

  v25 = v19;
  *&v59 = sub_1CF477A40(v17, v14, 0, a3);
  *(&v59 + 1) = v26;
  a4(&v60, &v59);

  result = v21 - v25;
  if (__OFSUB__(v21, v25))
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}