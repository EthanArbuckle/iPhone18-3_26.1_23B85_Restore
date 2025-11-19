uint64_t sub_1CF6D1B24(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - v4;
  v6 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 8);
  v7 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 24);
  v8 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 25);
  v9 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 26);
  v26 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext);
  v27 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1CEFDB088;
  v25 = &block_descriptor_366_0;
  v10 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 16);
  v11 = _Block_copy(&aBlock);

  aBlock = v11;
  v23 = v10;
  LOBYTE(v24) = v7;
  BYTE1(v24) = v8;
  BYTE2(v24) = v9;
  v12 = [objc_allocWithZone(FPFSChecker) init];
  v13 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
  swift_beginAccess();
  sub_1CEFCCBDC(a1 + v13, v5, &unk_1EC4BE310, qword_1CF9FCBE0);
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    __break(1u);
  }

  v16 = sub_1CF9E5928();
  (*(v15 + 8))(v5, v14);
  v17 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_detachedRoots);
  type metadata accessor for FPCKDetachedRoot(0);

  v18 = sub_1CF9E6D28();

  [v12 enumerateItemsOnDiskAtURL:v16 detachedRoots:v18 usingFPFS:*(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_usingFPFS) ioContext:&aBlock delegate:a1];

  _Block_release(v11);
  v19 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t sub_1CF6D1DDC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
  if (v2)
  {
    v3 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
    v4 = 1;
    if (v3)
    {
      v8 = 1;
      MEMORY[0x1EEE9AC00](a1);
      v7[2] = v5;
      v7[3] = &v8;
      v7[4] = v2;
      v7[5] = v3;

      sub_1CF70EBDC(0, sub_1CF6FCB08, v7);

      if (!v1)
      {
        v4 = v8;
      }
    }
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_1CF6D1EC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - v5;
  v7 = sub_1CF9E5868();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker))
  {
    v27 = v1;
    (*(v8 + 104))(v11, *MEMORY[0x1E6968F68], v7, v15);
    (*(v13 + 56))(v6, 1, 1, v12);

    sub_1CF9E5A38();
    v18 = type metadata accessor for SQLBackupManifest();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = v27;
    v22 = sub_1CF1BA200(v17);
    if (!v21)
    {
      MEMORY[0x1EEE9AC00](v22);
      *(&v25 - 2) = v26;
      *(&v25 - 1) = v23;
      sub_1CF70EBDC(1, sub_1CF6FCAB0, &v25 - 4);
    }
  }

  return 1;
}

BOOL sub_1CF6D22AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  if (*(a1 + 456) - 1 < 4)
  {
    return 0;
  }

  v18 = 0;
  v19 = *(a1 + 496);
  if (v19 && v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((a4 & 1) == 0)
    {
      v21 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
      if (v21)
      {
        v22 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase);
        if (v22)
        {
          v23 = *(a1 + 248);
          if (v23)
          {
            v33 = v15;
            v35 = &v33;
            MEMORY[0x1EEE9AC00](v15);
            *(&v33 - 4) = v21;
            *(&v33 - 3) = v23;
            *(&v33 - 2) = a2;

            v34 = v23;
            v24 = objc_autoreleasePoolPush();
            v25 = sub_1CF803A54(v22, 2, "itemIsIndexed(entry:domainID:indexerRank:)", 42, 2, 0, sub_1CF6FC674, (&v33 - 6));
            objc_autoreleasePoolPop(v24);
            if (v25)
            {
              v26 = v34;
              if (a3 == 0x7FFFFFFFFFFFFFFFLL)
              {
                sub_1CF9E5C88();
                sub_1CF9E5CE8();
                sub_1CF9E5C28();
                v28 = v27;
                v29 = *(v10 + 8);
                v30 = v33;
                v29(v13, v33);
                v31 = [objc_opt_self() defaultStore];
                v32 = [v31 timeForMarkingAnItemOnTheMacAsIndexed];

                v29(v17, v30);
                return v28 > v32;
              }

              else
              {

                return v19 < a3;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return v18;
}

void sub_1CF6D25B0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *(a2 + 32);
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1CF702E04(&v21, a3, a4, v12, v10, v11);
  if (v5)
  {

    *a5 = 0;
  }

  else
  {
    v15[12] = v33;
    v15[13] = v34;
    v15[14] = v35;
    v15[8] = v29;
    v15[9] = v30;
    v15[10] = v31;
    v15[11] = v32;
    v15[4] = v25;
    v15[5] = v26;
    v15[6] = v27;
    v15[7] = v28;
    v15[0] = v21;
    v15[1] = v22;
    v15[2] = v23;
    v15[3] = v24;
    v17[12] = v33;
    v18 = v34;
    v19 = v35;
    v17[8] = v29;
    v17[9] = v30;
    v17[10] = v31;
    v17[11] = v32;
    v17[4] = v25;
    v17[5] = v26;
    v17[6] = v27;
    v17[7] = v28;
    v17[0] = v21;
    v17[1] = v22;
    v16 = v36;
    v20 = v36;
    v17[2] = v23;
    v17[3] = v24;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v17) == 1)
    {
      *a5 = 0;
    }

    else
    {
      v13 = sub_1CEFF8538(v18, *(&v18 + 1), 0, v9, 0, 1u);
      if (v13 == 501)
      {
        v14 = fpfs_supports_indexAllRemoteItems();
        sub_1CEFCCC44(v15, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        *a5 = v14 ^ 1;
      }

      else if (v13 == 1003 || v13 == 502)
      {
        sub_1CEFCCC44(v15, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        *a5 = 1;
      }

      else
      {
        sub_1CEFCCC44(v15, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        *a5 = 0;
      }
    }
  }
}

void *sub_1CF6D27BC(void *result, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, char *a6, uint64_t *a7)
{
  v15 = a2;
  if (!*result && !*a2)
  {
    return result;
  }

  v16 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  swift_beginAccess();
  v17 = *(a3 + v16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(a3 + v16) = v19;
  v21 = *a4;
  v20 = a4[1];

  v22 = sub_1CF9E6888();

  v23 = [v22 fp_prettyPath];

  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;

  v7 = *a6;
  v8 = *v15;
  v15 = *a7;
  if (*a6 | *a7)
  {
    v42 = v26;
    v43 = v24;
    sub_1CF9E7948();

    v27 = sub_1CF7F5AAC(v7);
    MEMORY[0x1D3868CC0](v27);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v28 = sub_1CF7F5394(v15);
    MEMORY[0x1D3868CC0](v28);

    v9 = 0x6578694620859CE2;
    a4 = 0xAC000000203A2064;
    a6 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = *(a6 + 2);
    v19 = *(a6 + 3);
    a7 = (v16 + 1);
    if (v16 < v19 >> 1)
    {
LABEL_7:
      *(a6 + 2) = a7;
      v29 = &a6[16 * v16];
      *(v29 + 4) = v9;
      *(v29 + 5) = a4;
      v26 = v42;
      v24 = v43;
      goto LABEL_8;
    }

LABEL_17:
    a6 = sub_1CF0710C0((v19 > 1), a7, 1, a6);
    goto LABEL_7;
  }

  a6 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v30 = a5 & ~v7;
  if (v30 | v8 & ~v15)
  {
    sub_1CF9E7948();

    v31 = sub_1CF7F5AAC(v30);
    MEMORY[0x1D3868CC0](v31);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v32 = sub_1CF7F5394(v8 & ~v15);
    MEMORY[0x1D3868CC0](v32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a6 = sub_1CF0710C0(0, *(a6 + 2) + 1, 1, a6);
    }

    v34 = *(a6 + 2);
    v33 = *(a6 + 3);
    if (v34 >= v33 >> 1)
    {
      a6 = sub_1CF0710C0((v33 > 1), v34 + 1, 1, a6);
    }

    *(a6 + 2) = v34 + 1;
    v35 = &a6[16 * v34];
    *(v35 + 4) = 0x7466654C208C9DE2;
    *(v35 + 5) = 0xAB00000000203A20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v36 = sub_1CF9E67D8();
  v38 = v37;

  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);

  MEMORY[0x1D3868CC0](v36, v38);

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);

  v39 = v24;
  v41 = *(a3 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);
  v40 = *(a3 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler + 8);

  v41(v39, v26);
}

void *sub_1CF6D2BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
  if (!v5)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v8 = *(v5 + 24);
  if (!*(v8 + 16))
  {
    goto LABEL_7;
  }

  v9 = sub_1CEFE863C(a2);
  if ((v10 & 1) == 0)
  {

LABEL_7:
    sub_1CF4858E8(v17);
    return memcpy(a4, v17, 0x208uLL);
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v16[2] = v11;
    v16[3] = a3;
    v14 = *(*v13 + 464);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC20, &unk_1CFA0A290);
    v14(1, "checker(_:handleItem:itemStatus:under:brokenInvariants:)", 56, 2, 2, sub_1CF6FCA78, v16, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1CF6D2D88@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v24 = a3;
  v23 = sub_1CF9E6118();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v10 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = *(a2 + 8);
  v28 = *a2;
  v29 = v13;
  sub_1CF20A25C(&v28, 0, v12, v11, v10, v30);
  if (v3)
  {
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = v3;
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E72A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      swift_getErrorValue();
      v20 = Error.prettyDescription.getter(v27);
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&dword_1CEFC7000, v16, v17, "FPCK: error fetching the item in the reconciliation table: %{public}@", v18, 0xCu);
      sub_1CEFCCC44(v19, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v19, -1, -1);
      MEMORY[0x1D386CDC0](v18, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v23);
    sub_1CF4858E8(v30);
    return memcpy(v24, v30, 0x208uLL);
  }

  else
  {
    memcpy(v26, v30, 0x210uLL);
    if (sub_1CF08B99C(v26) == 1)
    {
      sub_1CF4858E8(v25);
    }

    else
    {
      memcpy(v25, v26, sizeof(v25));
      nullsub_1(v25);
    }

    return memcpy(v24, v25, 0x208uLL);
  }
}

uint64_t sub_1CF6D3100()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___vendorExcludedFolders;
  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___vendorExcludedFolders))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___vendorExcludedFolders);
  }

  else
  {
    v2 = sub_1CF6D3168(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1CF6D3168(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18[0] = 47;
  v18[1] = 0xE100000000000000;
  sub_1CEFE4E68();

  v3 = sub_1CF9E7638();

  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = (v3 + 16 + 16 * v4);
  v7 = *v5;
  v6 = v5[1];

  v8 = sub_1CF9E6888();
  swift_beginAccess();
  v9 = *(v1 + 24);
  if (!*(v9 + 16))
  {
LABEL_9:

    return MEMORY[0x1E69E7CD0];
  }

  v10 = *(v1 + 24);

  v11 = sub_1CEFE863C(v8);
  if ((v12 & 1) == 0)
  {

    goto LABEL_9;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;

    v16 = *(*v15 + 464);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2830, &unk_1CFA12A58);
    v16(v18, 0, "vendorExcludedFolders", 21, 2, 2, sub_1CF6FC658, v13, v17);

    return v18[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF6D3380(void *a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = 1;
  v19 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v5 = v19;
    if (*(v19 + 16) > 0x249EFuLL)
    {
      break;
    }

    v6 = a1[3];
    v7 = a1[4];
    v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
    v9 = sub_1CF21A104(v3, v4 & 1, v8, v6, v7);
    if (v2)
    {

      break;
    }

    v12 = v11;
    v17 = v10;
    v13 = *(v9 + 2);
    if (v13)
    {
      v14 = v9 + 40;
      do
      {
        if (*v14 == 1)
        {
          sub_1CF6E9C5C(&v18, *(v14 - 1), &qword_1EC4C2898, &unk_1CFA12AE0);
        }

        v14 += 520;
        --v13;
      }

      while (v13);
    }

    v4 = 0;
    v3 = v17;
    if (v12)
    {
      v5 = v19;
      break;
    }
  }

  *a2 = v5;
}

char *sub_1CF6D34D8(unint64_t a1)
{
  v2 = sub_1CF6D3100();
  if (a1 >> 62)
  {
    v3 = sub_1CF9E7818();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_15:
    v15 = sub_1CF6F35CC(v4, v2);

    return ((v15 & 1) == 0);
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1CF680E14(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        v7 = [MEMORY[0x1D3869C30](i a1)];
        swift_unknownObjectRelease();
        v9 = *(v16 + 16);
        v8 = *(v16 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1CF680E14((v8 > 1), v9 + 1, 1);
        }

        *(v16 + 16) = v9 + 1;
        *(v16 + 8 * v9 + 32) = v7;
      }
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = [*v10 unsignedLongLongValue];
        v13 = *(v16 + 16);
        v12 = *(v16 + 24);
        if (v13 >= v12 >> 1)
        {
          v14 = v11;
          sub_1CF680E14((v12 > 1), v13 + 1, 1);
          v11 = v14;
        }

        *(v16 + 16) = v13 + 1;
        *(v16 + 8 * v13 + 32) = v11;
        ++v10;
        --v3;
      }

      while (v3);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF6D369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker))
  {
    v5 = *a4;
    swift_beginAccess();

    sub_1CF6E9C5C(&v7, v5, &qword_1EC4C2898, &unk_1CFA12AE0);
    swift_endAccess();
  }

  return 1;
}

id sub_1CF6D37DC(void *a1, char a2, uint64_t (*a3)(void *, __n128), uint64_t a4, int a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return a3(a1, v13);
  }

  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v17 = a1;
  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E72A8();
  sub_1CF481340(a1, 1);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = a4;
    v21 = a3;
    v22 = v20;
    v23 = swift_slowAlloc();
    *v22 = 67109378;
    *(v22 + 4) = a5;
    *(v22 + 8) = 2112;
    v24 = a1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 10) = v25;
    *v23 = v25;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "Failed gathering diag info for item with did %u: %@", v22, 0x12u);
    sub_1CEFCCC44(v23, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v23, -1, -1);
    v26 = v22;
    a3 = v21;
    MEMORY[0x1D386CDC0](v26, -1, -1);
  }

  (*(v11 + 8))(v15, v10);
  v27 = sub_1CF9E57E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7F8, &unk_1CF9FE6C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  v29 = *MEMORY[0x1E6966F50];
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v30;
  result = [v27 domain];
  if (result)
  {
    *(inited + 48) = result;
    v32 = *MEMORY[0x1E6966F48];
    *(inited + 56) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 64) = v33;
    v34 = [v27 code];
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v35 = *MEMORY[0x1E6966F58];
    *(inited + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 88) = v36;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v37 = sub_1CF4E30B4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE800, &qword_1CFA12A50);
    swift_arrayDestroy();
    (a3)(v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF6D3B28(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a1;
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = a1;
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E72A8();
    sub_1CF481340(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v39 = a4;
      v22 = a3;
      v23 = v21;
      v24 = swift_slowAlloc();
      *v23 = 134218242;
      *(v23 + 4) = a5;
      *(v23 + 12) = 2112;
      v25 = a1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "Failed gathering diag info for item with fid %llu: %@", v23, 0x16u);
      sub_1CEFCCC44(v24, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v24, -1, -1);
      v27 = v23;
      a3 = v22;
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    v28 = sub_1CF9E57E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7F8, &unk_1CF9FE6C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FC3C0;
    v30 = *MEMORY[0x1E6966F50];
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 40) = v31;
    v32 = [v28 domain];
    if (v32)
    {
      *(inited + 48) = v32;
      v33 = *MEMORY[0x1E6966F48];
      *(inited + 56) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 64) = v34;
      v35 = [v28 code];
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v36 = *MEMORY[0x1E6966F58];
      *(inited + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 88) = v37;
      *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v38 = sub_1CF4E30B4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE800, &qword_1CFA12A50);
      swift_arrayDestroy();
      a3(v38);

      sub_1CF481340(a1, 1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (a3)(a1, v13);
  }
}

uint64_t sub_1CF6D3E88(const void *a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, char a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = v14;
  v16 = v13;
  v184 = a4;
  v185 = a8;
  v192 = a7;
  v195 = a6;
  v194 = a5;
  v199 = a3;
  v18 = sub_1CF9E5CF8();
  v187 = *(v18 - 8);
  v188 = v18;
  v19 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E6938();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v183 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v208, a1, 0x208uLL);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = dispatch_group_create();
  dispatch_group_enter(v25);
  memcpy(v207, a1, sizeof(v207));

  v26 = v25;
  sub_1CF6F9484(v207, v16, v24, v26);

  v196 = v26;
  sub_1CF9E72F8();
  v198 = v16;
  if (*(v16 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase))
  {
    memcpy(v207, v208, sizeof(v207));
    v27 = LOBYTE(v208[1]) != 255;

    v28 = sub_1CF1E44DC(v207, v27, 0, 0, a11, a12, a13);
    if (v15)
    {

      v29 = 0;
      v15 = 0;
    }

    else
    {
      v29 = v28;
    }
  }

  else
  {
    v29 = 0;
  }

  swift_beginAccess();
  if (!*(v24 + 16))
  {
    v30 = sub_1CF4E30B4(MEMORY[0x1E69E7CC0]);
    v206 = v30;
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_12:
    v193 = v15;

    goto LABEL_13;
  }

  v30 = *(v24 + 16);
  v206 = v30;
  if (!v29)
  {
    goto LABEL_12;
  }

LABEL_9:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v207[0] = v30;
  sub_1CF6F9A38(v29, sub_1CF6F37BC, 0, isUniquelyReferenced_nonNull_native, v207);
  if (v15)
  {
LABEL_62:

    __break(1u);
    return result;
  }

  v193 = 0;

  v30 = v207[0];
  v206 = v207[0];
LABEL_13:
  v197 = v24;
  v32 = sub_1CF9E57E8();
  v33 = *MEMORY[0x1E6966F10];
  v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v36 = v35;
  v37 = [v32 domain];
  if (!v37)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v38 = v37;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v207[0] = v30;
  sub_1CF1D1950(v38, v34, v36, v39);

  v40 = v207[0];
  v206 = v207[0];
  v41 = *MEMORY[0x1E6966F08];
  v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v44 = v43;
  v189 = v32;
  v45 = [v32 code];
  v46 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v207[0] = v40;
  sub_1CF1D1950(v46, v42, v44, v47);

  v206 = v207[0];
  memcpy(v207, v208, sizeof(v207));
  nullsub_1(v207);
  v191 = v208[0];
  v190 = LOBYTE(v208[1]);
  sub_1CEFCCBDC(v208, v205, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v48 = sub_1CF9E57E8();
  v49 = v48;
  v50 = [v49 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v51 = sub_1CF9E6D48();

  if (!*(v51 + 16))
  {
    v201 = 0;
    v202 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v72 = v191;

    goto LABEL_33;
  }

  v52 = *(v51 + 32);
  v53 = v52;

  v205[0] = v52;
  v200 = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v201 = 0;
    v202 = MEMORY[0x1E69E7CC0];
    v54 = 11;
    v182 = v49;
    v55 = v49;
    while (1)
    {
      v48 = v203;
      v56 = [v203 domain];
      v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v59 = v58;

      v205[0] = v57;
      v205[1] = v59;
      MEMORY[0x1D3868CC0](59, 0xE100000000000000);
      v203 = [v48 code];
      v60 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v60);

      v61 = v205[0];
      v62 = v205[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v202 = sub_1CF0710C0(0, *(v202 + 2) + 1, 1, v202);
      }

      v64 = *(v202 + 2);
      v63 = *(v202 + 3);
      if (v64 >= v63 >> 1)
      {
        v202 = sub_1CF0710C0((v63 > 1), v64 + 1, 1, v202);
      }

      v65 = v202;
      *(v202 + 2) = v64 + 1;
      v66 = &v65[16 * v64];
      *(v66 + 4) = v61;
      *(v66 + 5) = v62;
      if (!v201)
      {
        v67 = v48;
        v201 = v48;
      }

      if (!--v54)
      {
        v49 = v182;
        goto LABEL_32;
      }

      v68 = [v48 underlyingErrors];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v69 = sub_1CF9E6D48();

      if (!*(v69 + 16))
      {
        break;
      }

      v70 = *(v69 + 32);
      v71 = v70;

      v205[0] = v70;
      v55 = v48;
      if (!swift_dynamicCast())
      {
        v49 = v182;
        goto LABEL_32;
      }
    }

    v49 = v182;
    goto LABEL_31;
  }

  v201 = 0;
  v202 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v72 = v191;
LABEL_33:
  memcpy(v205, v207, 0x208uLL);
  v203 = v72;
  v204 = v190;
  v73 = sub_1CF6D6908(v49, v205, &v203);
  if (v73)
  {
    v74 = v73;
    v75 = v49;

    v76 = v74;
    v77 = [v76 domain];
    v78 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v80 = v79;

    v205[0] = v78;
    v205[1] = v80;
    MEMORY[0x1D3868CC0](59, 0xE100000000000000);
    v81 = [v76 code];

    v203 = v81;
    v82 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v82);

    v83 = v205[0];
    v84 = v205[1];
    v85 = v74;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v202 = sub_1CF0710C0(0, *(v202 + 2) + 1, 1, v202);
    }

    v87 = *(v202 + 2);
    v86 = *(v202 + 3);
    if (v87 >= v86 >> 1)
    {
      v202 = sub_1CF0710C0((v86 > 1), v87 + 1, 1, v202);
    }

    v88 = v202;
    *(v202 + 2) = v87 + 1;
    v89 = &v88[16 * v87];
    *(v89 + 4) = v83;
    *(v89 + 5) = v84;
    v90 = v85;
    v49 = v75;
  }

  else
  {
    v90 = v201;
  }

  v91 = [v49 domain];
  v92 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v94 = v93;

  v205[0] = v92;
  v205[1] = v94;
  MEMORY[0x1D3868CC0](59, 0xE100000000000000);
  v203 = [v49 code];
  v95 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v95);

  sub_1CEFCCC44(v208, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

  v96 = v205[0];
  v97 = v205[1];
  v201 = v90;
  if (!v90)
  {
    goto LABEL_44;
  }

  v205[0] = v90;
  v98 = v90;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  v99 = v203;
  v100 = *MEMORY[0x1E6966F40];
  v101 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v103 = v102;
  v104 = v99;
  v105 = [v99 domain];
  if (!v105)
  {
    goto LABEL_61;
  }

  v106 = v105;
  v107 = v206;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v205[0] = v107;
  sub_1CF1D1950(v106, v101, v103, v108);

  v109 = v205[0];
  v206 = v205[0];
  v110 = *MEMORY[0x1E6966F38];
  v111 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v113 = v112;
  v114 = [v104 code];
  v115 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v205[0] = v109;
  sub_1CF1D1950(v115, v111, v113, v116);

  v206 = v205[0];
LABEL_44:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2808, &qword_1CFA12A28);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1CF9FA450;
  *(v117 + 32) = v96;
  v118 = v117 + 32;
  *(v117 + 40) = v97;
  *(v117 + 48) = 1;
  *(v117 + 56) = v199;
  v119 = v195;
  *(v117 + 57) = v195;
  *(v117 + 58) = v192;
  *(v117 + 64) = v202;
  v120 = sub_1CF4E360C(v117);
  swift_setDeallocating();
  sub_1CEFCCC44(v118, &qword_1EC4C2810, &qword_1CFA12A30);
  swift_deallocClassInstance();
  v121 = sub_1CF9E5438();
  v122 = *(v121 + 48);
  v123 = *(v121 + 52);
  swift_allocObject();
  v124 = sub_1CF9E5428();
  v205[0] = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2818, &qword_1CFA12A38);
  sub_1CF6FC740(&qword_1EC4C2820, &qword_1EC4C2818, &qword_1CFA12A38, sub_1CF6FC5B8);
  v125 = v193;
  v126 = sub_1CF9E5418();
  v128 = v125;
  if (v125)
  {

    v128 = 0;
  }

  else
  {
    v129 = v126;
    v130 = v127;

    sub_1CF9E6918();
    sub_1CF9E68D8();
    if (v131)
    {
      v132 = *MEMORY[0x1E6966F18];
      v133 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v202 = 0;
      v134 = v124;
      v136 = v135;
      v137 = sub_1CF9E6888();

      v138 = v206;
      v139 = swift_isUniquelyReferenced_nonNull_native();
      v205[0] = v138;
      sub_1CF1D1950(v137, v133, v136, v139);
      v124 = v134;
      v128 = v202;

      sub_1CEFE4714(v129, v130);
      v206 = v205[0];
    }

    else
    {
      sub_1CEFE4714(v129, v130);
    }
  }

  if (v199 == 2)
  {
    v140 = *MEMORY[0x1E6966F20];
    v141 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v143 = v142;
    v144 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v145 = v206;
    v146 = swift_isUniquelyReferenced_nonNull_native();
    v205[0] = v145;
    sub_1CF1D1950(v144, v141, v143, v146);

    v206 = v205[0];
  }

  if ((v194 & 1) == 0)
  {
    v147 = *MEMORY[0x1E6966E90];
    v148 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v150 = v149;
    v151 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v152 = [v151 initWithInteger_];
    v153 = v206;
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v205[0] = v153;
    sub_1CF1D1950(v152, v148, v150, v154);

    v206 = v205[0];
  }

  if (v119 != 89)
  {
    v155 = *MEMORY[0x1E6966F28];
    v156 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v158 = v157;
    v159 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v160 = v206;
    v161 = swift_isUniquelyReferenced_nonNull_native();
    v205[0] = v160;
    sub_1CF1D1950(v159, v156, v158, v161);

    v206 = v205[0];
  }

  v162 = a10;
  if ((a9 & 1) == 0)
  {
    v163 = v186;
    sub_1CF9E5C88();
    v199 = a10;
    sub_1CF9E5C98();
    v165 = v164;
    v200 = v124;
    v166 = *(v187 + 8);
    v202 = v128;
    v167 = v188;
    v166(v163, v188);
    v168 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v169 = *MEMORY[0x1E6966E80];
    v198 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v171 = v170;
    sub_1CF9E5CC8();
    v172 = sub_1CF1C61B4(v163, 12, 8);
    v166(v163, v167);
    sub_1CF1C8820(v172, v198, v171);
    v162 = v199;
  }

  if (v162 == 2)
  {

    return v206;
  }

  else
  {
    v174 = *MEMORY[0x1E6966EF8];
    v175 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v177 = v176;
    v178 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v179 = v206;
    v180 = swift_isUniquelyReferenced_nonNull_native();
    v205[0] = v179;
    sub_1CF1D1950(v178, v175, v177, v180);

    return v205[0];
  }
}

void sub_1CF6D4E3C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;

  dispatch_group_leave(a3);
}

uint64_t sub_1CF6D4EA8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v92 = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E5648();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5A58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 8);
  if (v19 == 255)
  {
    goto LABEL_18;
  }

  v20 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
  if (!v20)
  {
    goto LABEL_18;
  }

  v84 = v9;
  v85 = a1;
  v86 = v16;
  v87 = v15;
  v88 = *a2;
  v21 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);

  v22 = v21;
  v23 = [v22 pathComponents];
  v24 = sub_1CF9E6D48();

  v25 = *(v24 + 16);

  if (v25 < 2)
  {
    v26 = *MEMORY[0x1E6967178];
  }

  else
  {
    v26 = [v22 lastPathComponent];
    if (!v26)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v26 = sub_1CF9E6888();
    }
  }

  swift_beginAccess();
  v27 = *(v20 + 24);
  if (!*(v27 + 16))
  {
    goto LABEL_17;
  }

  v83 = v4;

  v28 = sub_1CEFE863C(v26);
  if ((v29 & 1) == 0)
  {

    goto LABEL_17;
  }

  v30 = *(*(v27 + 56) + 8 * v28);

  if (v19)
  {
    v31 = v19 == 1;
    v32 = v83;
    v33 = v88;
    if (!v31)
    {
      v34 = objc_sync_enter(v30);
      if (v33)
      {
        if (!v34)
        {
          v35 = v30[20];

          v36 = objc_sync_exit(v30);
          if (!v36)
          {
            v37 = *(v35 + 40);
            v38 = *(v35 + 48);

            if (v38)
            {

LABEL_17:

LABEL_18:
              result = 0;
              goto LABEL_19;
            }

            a3 = 0;
            goto LABEL_29;
          }

LABEL_74:
          MEMORY[0x1EEE9AC00](v36);
          *(&v82 - 2) = v30;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v82 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

LABEL_73:
        MEMORY[0x1EEE9AC00](v34);
        *(&v82 - 2) = v30;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v82 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      if (v34)
      {
        goto LABEL_73;
      }

      v43 = v30[20];

      v36 = objc_sync_exit(v30);
      if (v36)
      {
        goto LABEL_74;
      }

      v44 = *(v43 + 24);
    }

    a3 = 0;
    goto LABEL_30;
  }

  v34 = objc_sync_enter(v30);
  if (v34)
  {
    goto LABEL_73;
  }

  v41 = v30[20];

  v36 = objc_sync_exit(v30);
  if (v36)
  {
    goto LABEL_74;
  }

  v42 = *(v41 + 16);

  if (!GSLibraryResolveDocumentId2())
  {

    goto LABEL_18;
  }

LABEL_29:
  v32 = v83;
LABEL_30:
  v91 = 0;
  v34 = objc_sync_enter(v30);
  if (v34)
  {
    goto LABEL_73;
  }

  v88 = v26;
  v45 = v30[20];

  v36 = objc_sync_exit(v30);
  if (v36)
  {
    goto LABEL_74;
  }

  v46 = *(v45 + 16);

  v47 = fpfs_fsgetpath();
  v48 = v91;
  if (v47 < 0 || !v91)
  {
    free(v91);

    goto LABEL_18;
  }

  v82 = v30;
  v49 = [objc_opt_self() defaultManager];
  v50 = [v49 stringWithFileSystemRepresentation:v48 length:strlen(v48)];

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E58B8();

  if (!faccessat(-2, v48, 4, 32))
  {
    v52 = faccessat(-2, v48, 2, 32);
    if (v52)
    {
      v51 = 8;
    }

    else
    {
      v51 = 9;
    }

    if (((v52 == 0) & a3) != 1)
    {
      goto LABEL_46;
    }

    v53 = [v85 userInfo];
    v54 = sub_1CF9E6638();

    if (*(v54 + 16) && (v55 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA3C930), v32 = v83, (v56 & 1) != 0))
    {
      sub_1CEFD1104(*(v54 + 56) + 32 * v55, v89);

      type metadata accessor for URLFileProtection(0);
      if (swift_dynamicCast())
      {
        v57 = v90;
        if (v90)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    else
    {
    }

    v90 = 0;
LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v63 = *MEMORY[0x1E695DAF0];
    *(inited + 32) = *MEMORY[0x1E695DAF0];
    v64 = v63;
    sub_1CEFF8A84(inited);
    swift_setDeallocating();
    sub_1CF0081E0(inited + 32, type metadata accessor for URLResourceKey);
    sub_1CF9E58A8();

    v65 = sub_1CF9E55A8();
    (*(v84 + 8))(v12, v8);
    v66 = v90;
    v90 = v65;

    v57 = v90;
    v32 = v83;
    if (!v90)
    {
      v73 = 9;
LABEL_66:

      v51 = v73;
      goto LABEL_46;
    }

LABEL_53:
    v67 = v32;
    v68 = *MEMORY[0x1E695DAD8];
    v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v71 = v70;
    if (v69 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v71 == v72)
    {

      v73 = 11;
    }

    else
    {
      v74 = sub_1CF9E8048();
      v75 = v57;

      if (v74)
      {

        v73 = 11;
      }

      else
      {
        v76 = *MEMORY[0x1E695DAE0];
        v77 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v79 = v78;
        if (v77 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v79 == v80)
        {
        }

        else
        {
          v81 = sub_1CF9E8048();

          if ((v81 & 1) == 0)
          {
            v73 = 9;
            goto LABEL_65;
          }
        }

        v73 = 12;
      }
    }

LABEL_65:
    v32 = v67;
    goto LABEL_66;
  }

  v51 = 10;
LABEL_46:
  if (*(*(v32 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURLs) + 16) && (v58 = , v59 = sub_1CF517830(v58), , (v59 & 1) == 0))
  {
    sub_1CF6FC3E4();
    v60 = swift_allocError();
    *v61 = v51;
    *(v61 + 8) = 18;
    (*(v86 + 8))(v18, v87);
    free(v91);

    result = v60;
  }

  else
  {
    (*(v86 + 8))(v18, v87);
    free(v91);

    result = v51;
  }

LABEL_19:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF6D59E4(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v79[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v79[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79[-v12];
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v79[-v16];
  v18 = *(a1 + 8);
  if (v18 != 255)
  {
    v24 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
    if (!v24)
    {
      v31 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v32 = sub_1CF9E6108();
      v33 = sub_1CF9E72A8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v83[0] = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_1CEFD0DF0(0xD000000000000014, 0x80000001CFA58CF0, v83);
        _os_log_impl(&dword_1CEFC7000, v32, v33, "%s: nil fsSnapshotChecker", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1D386CDC0](v35, -1, -1);
        MEMORY[0x1D386CDC0](v34, -1, -1);
      }

      (*(v4 + 8))(v10, v3);
      goto LABEL_12;
    }

    v82 = *a1;
    v25 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);

    v26 = v25;
    v27 = [v26 pathComponents];
    v28 = sub_1CF9E6D48();

    v29 = *(v28 + 16);

    if (v29 < 2)
    {
      v30 = *MEMORY[0x1E6967178];
    }

    else
    {
      v30 = [v26 lastPathComponent];
      if (!v30)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v30 = sub_1CF9E6888();
      }
    }

    swift_beginAccess();
    v38 = *(v24 + 24);
    if (*(v38 + 16))
    {
      v39 = *(v24 + 24);

      v40 = sub_1CEFE863C(v30);
      if (v41)
      {
        v81 = *(*(v38 + 56) + 8 * v40);

        if (!v18)
        {

          v43 = 0;
          v42 = v82;
          goto LABEL_36;
        }

        if (v18 == 1)
        {

          v42 = 0;
          v43 = v82;
LABEL_36:
          v62 = v81;
          goto LABEL_37;
        }

        v51 = objc_sync_enter(v81);
        if (!v82)
        {
          if (v51)
          {
            MEMORY[0x1EEE9AC00](v51);
            v75 = &v79[-32];
            *&v79[-16] = v81;
            v76 = sub_1CF1C546C;
            goto LABEL_49;
          }

          v62 = v81;
          v63 = v81[20];

          v64 = objc_sync_exit(v62);
          if (v64)
          {
            MEMORY[0x1EEE9AC00](v64);
            v77 = &v79[-32];
            *&v79[-16] = v62;
            v78 = sub_1CF1C5468;
            goto LABEL_51;
          }

          v43 = *(v63 + 24);

          v42 = 0;
LABEL_37:
          v65 = objc_sync_enter(v62);
          if (!v65)
          {
            v80 = v30;
            v66 = v62[20];

            v67 = objc_sync_exit(v62);
            if (!v67)
            {
              v68 = *(v66 + 16);

              v86[0] = v43;
              v86[1] = 0;
              v89 = 0;
              v88 = 0;
              v87 = v42;
              v90 = 0;
              v70 = sub_1CEFDADE0(v86, v68, 2129920);

              v85 = 0u;
              v84 = 0u;
              memset(v83, 0, sizeof(v83));
              MEMORY[0x1EEE9AC00](v71);
              *&v79[-16] = v70;
              *&v79[-8] = v83;
              sub_1CEFE1894(sub_1CF6FCF48);
              v72 = v80;
              if ((DWORD1(v84) & 0x40000020) == 0x20)
              {
                sub_1CF6FC3E4();
                v74 = swift_allocError();
                *v73 = 14;
                *(v73 + 8) = 18;
              }

              else
              {
                v74 = 0;
              }

              v49 = v74;
              if ((v70 & 0x80000000) == 0)
              {
                close(v70);
              }

              goto LABEL_40;
            }

            MEMORY[0x1EEE9AC00](v67);
            v77 = &v79[-32];
            *&v79[-16] = v81;
            v78 = sub_1CF1C5468;
LABEL_51:
            fp_preconditionFailure(_:file:line:)(v78, v77, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          MEMORY[0x1EEE9AC00](v65);
          v75 = &v79[-32];
          *&v79[-16] = v62;
          v76 = sub_1CF1C546C;
LABEL_49:
          fp_preconditionFailure(_:file:line:)(v76, v75, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

        if (v51)
        {
          MEMORY[0x1EEE9AC00](v51);
          v75 = &v79[-32];
          *&v79[-16] = v81;
          v76 = sub_1CF1C5288;
          goto LABEL_49;
        }

        v52 = v81;
        v53 = v81[20];

        v54 = objc_sync_exit(v52);
        if (v54)
        {
          MEMORY[0x1EEE9AC00](v54);
          v77 = &v79[-32];
          *&v79[-16] = v81;
          v78 = sub_1CF1C5290;
          goto LABEL_51;
        }

        v43 = *(v53 + 40);
        v55 = *(v53 + 48);

        if ((v55 & 1) == 0)
        {

          v42 = 0;
          goto LABEL_36;
        }

        v56 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v57 = sub_1CF9E6108();
        v58 = sub_1CF9E72A8();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *&v83[0] = v60;
          *v59 = 136315138;
          *(v59 + 4) = sub_1CEFD0DF0(0xD000000000000014, 0x80000001CFA58CF0, v83);
          _os_log_impl(&dword_1CEFC7000, v57, v58, "%s: failed to retrieve error for trash, it's inode is unexpectedly nil", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v60);
          MEMORY[0x1D386CDC0](v60, -1, -1);
          MEMORY[0x1D386CDC0](v59, -1, -1);
        }

        (*(v4 + 8))(v17, v3);
        sub_1CF6FC3E4();
        v49 = swift_allocError();
        *v61 = 13;
        *(v61 + 8) = 18;

LABEL_23:

LABEL_40:
        result = v49;
        goto LABEL_41;
      }
    }

    v44 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v45 = sub_1CF9E6108();
    v46 = sub_1CF9E72A8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v83[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_1CEFD0DF0(0xD000000000000014, 0x80000001CFA58CF0, v83);
      _os_log_impl(&dword_1CEFC7000, v45, v46, "%s: nil fsTree", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1D386CDC0](v48, -1, -1);
      MEMORY[0x1D386CDC0](v47, -1, -1);
    }

    (*(v4 + 8))(v13, v3);
    sub_1CF6FC3E4();
    v49 = swift_allocError();
    *v50 = 13;
    *(v50 + 8) = 18;
    goto LABEL_23;
  }

  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v20 = sub_1CF9E6108();
  v21 = sub_1CF9E72A8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v83[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1CEFD0DF0(0xD000000000000014, 0x80000001CFA58CF0, v83);
    _os_log_impl(&dword_1CEFC7000, v20, v21, "%s: nil item ID", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D386CDC0](v23, -1, -1);
    MEMORY[0x1D386CDC0](v22, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
LABEL_12:
  sub_1CF6FC3E4();
  result = swift_allocError();
  *v37 = 13;
  *(v37 + 8) = 18;
LABEL_41:
  v69 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF6D67AC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  LODWORD(v15) = sub_1CF9E52C8();
  sub_1CF196978();
  if (sub_1CF9E5658())
  {
    v15 = v3;
    v16 = v4;
    v5 = a1;
    v6 = 0;
  }

  else
  {
    LODWORD(v15) = sub_1CF9E52B8();
    if ((sub_1CF9E5658() & 1) == 0)
    {
      LODWORD(v15) = sub_1CF9E5388();
      if ((sub_1CF9E5658() & 1) == 0)
      {
        return 0;
      }

      v15 = v3;
      v16 = v4;
      return sub_1CF6D59E4(&v15);
    }

    v15 = v3;
    v16 = v4;
    v5 = a1;
    v6 = 1;
  }

  v7 = sub_1CF6D4EA8(v5, &v15, v6);
  v9 = v8;
  v10 = v8;
  sub_1CF6FC3E4();
  result = swift_allocError();
  v13 = 7;
  if (v10 == 255)
  {
    v14 = 18;
  }

  else
  {
    v13 = v7;
    v14 = v9;
  }

  *v12 = v13;
  *(v12 + 8) = v14;
  return result;
}

uint64_t sub_1CF6D6908(void *a1, const void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = [a1 domain];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  v11 = *MEMORY[0x1E696A250];
  if (_sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() == v8 && v12 == v10)
  {

LABEL_8:

    if ([a1 code] == 257)
    {
      memcpy(__dst, a2, sizeof(__dst));
      if (sub_1CF08B99C(__dst) != 1 && LOBYTE(__dst[1]) != 255)
      {
        v32 = __dst[0];
        v33 = __dst[1];
        v15 = sub_1CF6D4EA8(a1, &v32, 1u);
        if (v16 != -1)
        {
          v17 = v15;
          v18 = v16;
          sub_1CF6FC3E4();
          v19 = swift_allocError();
          *v20 = v17;
          *(v20 + 8) = v18;
          v32 = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
          v21 = swift_dynamicCast();
          v22 = v31;
          goto LABEL_22;
        }
      }
    }

    return 0;
  }

  v14 = sub_1CF9E8048();

  if (v14)
  {
    goto LABEL_8;
  }

  v23 = *MEMORY[0x1E696A798];
  if (_sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() == v8 && v24 == v10)
  {

    goto LABEL_20;
  }

  v26 = sub_1CF9E8048();

  if (v26)
  {
LABEL_20:

    __dst[0] = v5;
    LOBYTE(__dst[1]) = v6;
    result = sub_1CF6D67AC(a1, __dst);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  v28 = *MEMORY[0x1E6967190];
  if (_sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() == v8 && v29 == v10)
  {
  }

  else
  {
    v30 = sub_1CF9E8048();

    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_1CF6F9CD4(a1);
  if (!result)
  {
    return result;
  }

LABEL_21:
  __dst[0] = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  v21 = swift_dynamicCast();
  v22 = v32;
LABEL_22:
  if (v21)
  {
    return v22;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF6D6C14(void *__src, const void *a2, uint64_t *a3, int a4, char a5, unsigned __int8 a6, unsigned __int8 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = v12;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, a2, sizeof(__srca));
  v18 = *a3;
  v19 = *(a3 + 8);
  memcpy(v160, a2, 0x208uLL);
  v129 = a8;
  if (sub_1CF08B99C(v160) != 1)
  {
    v11 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_itemIDsWithTargetedErros;
    swift_beginAccess();
    v126 = v11;
    if (*(*(v14 + v11) + 16) <= 0xC7uLL)
    {
      memcpy(v157, __srca, sizeof(v157));
      sub_1CEFCCBDC(v157, v154, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v11 = sub_1CF9E57E8();
      type metadata accessor for FPCK(0);
      v20 = sub_1CF6C4380(v11, a6, a7, 0, 0);
      v21 = v20;
      v144 = *(v20 + 16);
      if (!v144)
      {

        sub_1CEFCCC44(__srca, &unk_1EC4BFC20, &unk_1CFA0A290);

        if (v19 == 255)
        {
          goto LABEL_59;
        }

        goto LABEL_62;
      }

      v131 = v19;
      v132 = v18;
      v22 = 0;
      v23 = 0;
      v130 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_targetedSPSErrors;
      v127 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase;
      v142 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair;
      v143 = v20 + 32;
      v135 = v14 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions;
      v136 = v14;
      v140 = v20;
      v141 = v11;
      do
      {
        if (v23 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_133;
        }

        v24 = v143 + 32 * v23;
        v148 = *(v24 + 16);
        v149 = *v24;
        v145 = *(v24 + 25);
        v146 = *(v24 + 26);
        v147 = *(v24 + 24);
        v150 = *(v24 + 8);
        if (v22)
        {

          v22 = 1;
          goto LABEL_42;
        }

        v25 = *(v14 + v130);
        v26 = 1 << *(v25 + 32);
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        else
        {
          v27 = -1;
        }

        v14 = v27 & *(v25 + 64);
        v28 = (v26 + 63) >> 6;

        a8 = 0;
        while (1)
        {
          if (v14)
          {
            v29 = v150;
            goto LABEL_21;
          }

          v29 = v150;
          do
          {
            v30 = a8 + 1;
            if (__OFADD__(a8, 1))
            {
              __break(1u);
              goto LABEL_124;
            }

            if (v30 >= v28)
            {

              v22 = 0;
              goto LABEL_41;
            }

            v14 = *(v25 + 64 + 8 * v30);
            ++a8;
          }

          while (!v14);
          a8 = v30;
LABEL_21:
          v31 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
          v32 = *(v25 + 48) + ((a8 << 11) | (32 * v31));
          a2 = *(v32 + 16);
          v33 = *(v32 + 24);
          v34 = *(v32 + 25);
          v35 = *(v32 + 26);
          v36 = *v32 == v149 && *(v32 + 8) == v29;
          if (v36 || (sub_1CF9E8048()) && a2 == v148)
          {
            v37 = v33 == 6 || v33 == v147;
            if (v37 && (v34 == 89 || v145 != 89 && qword_1CFA12E48[v34] == qword_1CFA12E48[v145]) && (v35 == 2 || v146 != 2 && ((v35 ^ v146) & 1) == 0))
            {
              break;
            }
          }
        }

        v22 = 1;
LABEL_41:
        v14 = v136;
        v21 = v140;
        v11 = v141;
LABEL_42:
        v13 = *(v14 + v142);
        if (v13 && (*(v135 + 1) & 8) != 0)
        {
          memcpy(v154, __src, sizeof(v154));
          v38 = sub_1CF08B99C(v154);
          v39 = v154[0];
          v40 = v154[1];
          if (v38 == 1)
          {
            v39 = 0;
            v40 = -1;
          }

          v155 = v39;
          v156 = v40;
          v152 = v160[0];
          v153 = v160[1];
          a8 = *(v14 + v127);
          v11 = v141;

          a2 = v150;
          v134 = v134 & 0xFF000000 | v147 | (v145 << 8) | (v146 << 16);
          sub_1CF708188(v149, v150, v148, v134, &v155, &v152, a8, a9, a10, a11);
          v21 = v140;
        }

        else
        {
        }

        ++v23;
      }

      while (v23 != v144);

      if (v22)
      {
        v11 = LOBYTE(v160[1]);
        if (LOBYTE(v160[1]) != 255)
        {
          v41 = v160[0];
          swift_beginAccess();
          v42 = *(v14 + v126);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v14 + v126) = v42;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_51;
          }

          goto LABEL_145;
        }

LABEL_124:
        v11 = v160[31];
        v18 = v132;
        v19 = v131;
        if (v160[31])
        {
          swift_beginAccess();
          v120 = *(v14 + v126);
          v121 = v11;
          v122 = swift_isUniquelyReferenced_nonNull_native();
          *(v14 + v126) = v120;
          if ((v122 & 1) == 0)
          {
            v120 = sub_1CF1F77F0(0, v120[2] + 1, 1, v120);
            *(v14 + v126) = v120;
          }

          v124 = v120[2];
          v123 = v120[3];
          if (v124 >= v123 >> 1)
          {
            v120 = sub_1CF1F77F0((v123 > 1), v124 + 1, 1, v120);
          }

          v120[2] = v124 + 1;
          v125 = &v120[2 * v124];
          v125[4] = v11;
          *(v125 + 20) = 256;
          *(v14 + v126) = v120;
          swift_endAccess();

          goto LABEL_130;
        }

        goto LABEL_54;
      }

      sub_1CEFCCC44(__srca, &unk_1EC4BFC20, &unk_1CFA0A290);
      v18 = v132;
      v19 = v131;
    }
  }

  if (v19 == 255)
  {
    goto LABEL_59;
  }

  while (1)
  {
LABEL_62:
    v23 = sub_1CF9E57E8();
    v13 = v23;
    v47 = [v13 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v48 = sub_1CF9E6D48();

    v132 = v18;
    v131 = v19;
    if (*(v48 + 16))
    {
      v49 = *(v48 + 32);
      v50 = v49;

      v157[0] = v49;
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (!swift_dynamicCast())
      {
        v22 = 0;
        a8 = MEMORY[0x1E69E7CC0];
        goto LABEL_80;
      }

      v137 = v14;
      v22 = 0;
      a8 = MEMORY[0x1E69E7CC0];
      v11 = v13;
      v51 = 11;
      v151 = v11;
      while (1)
      {
        v23 = v154[0];
        v52 = [v154[0] domain];
        v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v55 = v54;

        v157[0] = v53;
        v157[1] = v55;
        MEMORY[0x1D3868CC0](59, 0xE100000000000000);
        v154[0] = [v23 code];
        v56 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v56);

        v57 = v157[0];
        v58 = v157[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a8 = sub_1CF0710C0(0, *(a8 + 16) + 1, 1, a8);
        }

        v60 = *(a8 + 16);
        v59 = *(a8 + 24);
        if (v60 >= v59 >> 1)
        {
          a8 = sub_1CF0710C0((v59 > 1), v60 + 1, 1, a8);
        }

        *(a8 + 16) = v60 + 1;
        v61 = a8 + 16 * v60;
        *(v61 + 32) = v57;
        *(v61 + 40) = v58;
        if (!v22)
        {
          v62 = v23;
          v22 = v23;
        }

        if (!--v51)
        {
LABEL_77:
          v14 = v137;
          v13 = v151;
          goto LABEL_80;
        }

        v63 = [v23 underlyingErrors];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v64 = sub_1CF9E6D48();

        if (!*(v64 + 16))
        {
          break;
        }

        v65 = *(v64 + 32);
        v66 = v65;

        v157[0] = v65;
        v11 = v23;
        if (!swift_dynamicCast())
        {
          goto LABEL_77;
        }
      }

      v14 = v137;
      v13 = v151;
    }

    else
    {
      v22 = 0;
      a8 = MEMORY[0x1E69E7CC0];
    }

LABEL_80:
    v157[0] = v132;
    LOBYTE(v157[1]) = v131;
    v67 = sub_1CF6D6908(v13, __dst, v157);
    if (v67)
    {
      v68 = v67;

      v22 = v68;
      v69 = [v22 domain];
      v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v72 = v71;

      v157[0] = v70;
      v157[1] = v72;
      MEMORY[0x1D3868CC0](59, 0xE100000000000000);
      v73 = [v22 code];

      v154[0] = v73;
      v74 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v74);

      v11 = v157[0];
      a2 = v157[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_82;
    }

    while (1)
    {
      v78 = [v13 domain];
      v79 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v81 = v80;

      v157[0] = v79;
      v157[1] = v81;
      MEMORY[0x1D3868CC0](59, 0xE100000000000000);
      v154[0] = [v13 code];
      v82 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v82);

      v23 = v157[0];
      v83 = v157[1];
      v13 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetErrors;
      swift_beginAccess();
      v84 = *&v13[v14];
      if (*(v84 + 16))
      {
        v85 = *&v13[v14];

        v86 = sub_1CEFE4328(v23, v83);
        if (v87)
        {
          v41 = *(*(v84 + 56) + 8 * v86);
        }

        else
        {
          v41 = MEMORY[0x1E69E7CC0];
        }

        v22 = v129;
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
        v22 = v129;
      }

      a2 = (a6 | (a7 << 8) | (v22 << 16));
      sub_1CF6C02DC(1, a6 | (a7 << 8) | (v22 << 16), a8, v41);
      if (v89)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1CF1F7588(0, *(v41 + 2) + 1, 1, v41);
        }

        v11 = *(v41 + 2);
        v90 = *(v41 + 3);
        if (v11 >= v90 >> 1)
        {
          v41 = sub_1CF1F7588((v90 > 1), v11 + 1, 1, v41);
        }

        *(v41 + 2) = v11 + 1;
        v91 = &v41[24 * v11];
        *(v91 + 4) = 1;
        v91[40] = a6;
        v91[41] = a7;
        v91[42] = v22;
        *(v91 + 6) = a8;
      }

      else
      {
        v92 = v88;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v92 & 0x8000000000000000) != 0)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v41 = sub_1CF7722D4(v41);
          if ((v92 & 0x8000000000000000) != 0)
          {
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }
        }

        if (v92 >= *(v41 + 2))
        {
          goto LABEL_137;
        }

        v93 = &v41[24 * v92];
        v95 = *(v93 + 4);
        v94 = v93 + 32;
        v96 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          goto LABEL_138;
        }

        *v94 = v96;
      }

      swift_beginAccess();

      v97 = *&v13[v14];
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v155 = *&v13[v14];
      *&v13[v14] = 0x8000000000000000;
      sub_1CF1D2AE0(v41, v23, v83, v98);

      *&v13[v14] = v155;
      swift_endAccess();
      v99 = *(v14 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetSize);
      v100 = __OFADD__(v99, 1);
      v101 = v99 + 1;
      if (!v100)
      {
        break;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      a8 = sub_1CF0710C0(0, *(a8 + 16) + 1, 1, a8);
LABEL_82:
      v76 = *(a8 + 16);
      v75 = *(a8 + 24);
      if (v76 >= v75 >> 1)
      {
        a8 = sub_1CF0710C0((v75 > 1), v76 + 1, 1, a8);
      }

      *(a8 + 16) = v76 + 1;
      v77 = a8 + 16 * v76;
      *(v77 + 32) = v11;
      *(v77 + 40) = a2;
    }

    *(v14 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetSize) = v101;
    if (a5)
    {
    }

    v13 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetErrors;
    swift_beginAccess();
    v103 = *&v13[v14];
    if (*(v103 + 16))
    {
      v104 = *&v13[v14];

      v105 = sub_1CEFE4328(v23, v83);
      if (v106)
      {
        v41 = *(*(v103 + 56) + 8 * v105);
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    sub_1CF6C02DC(1, a2, a8, v41);
    if (v108)
    {
      break;
    }

    v42 = v107;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_142;
      }
    }

    else
    {
      v41 = sub_1CF7722D4(v41);
      if ((v42 & 0x8000000000000000) != 0)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

    if (v42 >= *(v41 + 2))
    {
      goto LABEL_143;
    }

    v112 = &v41[24 * v42];
    v114 = *(v112 + 4);
    v113 = v112 + 32;
    v115 = v114 + 1;
    if (!__OFADD__(v114, 1))
    {
      *v113 = v115;
      goto LABEL_121;
    }

LABEL_144:
    __break(1u);
LABEL_145:
    v42 = sub_1CF1F77F0(0, *(v42 + 16) + 1, 1, v42);
    *(v14 + v126) = v42;
LABEL_51:
    v18 = v132;
    v19 = v131;
    v45 = *(v42 + 16);
    v44 = *(v42 + 24);
    if (v45 >= v44 >> 1)
    {
      v42 = sub_1CF1F77F0((v44 > 1), v45 + 1, 1, v42);
    }

    *(v42 + 16) = v45 + 1;
    v46 = (v42 + 16 * v45);
    v46[4] = v41;
    *(v46 + 40) = v11;
    *(v46 + 41) = 0;
    *(v14 + v126) = v42;
    swift_endAccess();
LABEL_54:

LABEL_130:
    sub_1CEFCCC44(__srca, &unk_1EC4BFC20, &unk_1CFA0A290);
    if (v19 == 255)
    {
LABEL_59:
      memcpy(v157, __dst, sizeof(v157));
      if (sub_1CF08B99C(v157) == 1)
      {
        v18 = 0;
        v19 = 255;
      }

      else
      {
        v18 = v157[0];
        v19 = LOBYTE(v157[1]);
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_140;
  }

  while (1)
  {
    v110 = *(v41 + 2);
    v109 = *(v41 + 3);
    if (v110 >= v109 >> 1)
    {
      v41 = sub_1CF1F7588((v109 > 1), v110 + 1, 1, v41);
    }

    *(v41 + 2) = v110 + 1;
    v111 = &v41[24 * v110];
    *(v111 + 4) = 1;
    v111[40] = a6;
    v111[41] = a7;
    v111[42] = v22;
    *(v111 + 6) = a8;
LABEL_121:
    swift_beginAccess();
    v116 = *&v13[v14];
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v152 = *&v13[v14];
    *&v13[v14] = 0x8000000000000000;
    sub_1CF1D2AE0(v41, v23, v83, v117);

    *&v13[v14] = v152;
    result = swift_endAccess();
    v118 = *(v14 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetSize);
    v100 = __OFADD__(v118, 1);
    v119 = v118 + 1;
    if (!v100)
    {
      break;
    }

LABEL_139:
    __break(1u);
LABEL_140:
    v41 = sub_1CF1F7588(0, *(v41 + 2) + 1, 1, v41);
  }

  *(v14 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetSize) = v119;
  return result;
}

uint64_t sub_1CF6D7B60()
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v76 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v79 = (v76 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v76 - v13;
  v15 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_itemIDsWithTargetedErros;
  swift_beginAccess();
  v16 = *&v0[v15];
  if (*(v16 + 16))
  {
    v81 = v1;

    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = v0;
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E7288();

    v21 = os_log_type_enabled(v19, v20);
    v80 = v2;
    v78 = v6;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v82 = v23;
      *v22 = 136446210;
      v24 = &v18[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v77 = v16;
      v25 = v18;
      v26 = v3;
      v27 = *v24;
      v28 = v24[1];

      v29 = sub_1CEFD0DF0(v27, v28, &v82);
      v3 = v26;
      v18 = v25;
      v16 = v77;

      *(v22 + 4) = v29;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "🧹 FPCK %{public}s: sending TTR, we have nil errors", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1D386CDC0](v23, -1, -1);
      v30 = v22;
      v2 = v80;
      MEMORY[0x1D386CDC0](v30, -1, -1);
    }

    v31 = *(v3 + 8);
    v31(v14, v2);
    v32 = *&v18[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sendDiagnostics];
    if (v32)
    {
      v79 = v31;
      v33 = *&v18[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sendDiagnostics + 8];
      v34 = sub_1CF9E56C8();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();

      sub_1CF9E56B8();
      sub_1CF9E5698();
      v82 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
      sub_1CF6FC524(&qword_1EC4BE540, &qword_1EC4BE520, &qword_1CF9FEF10);
      v37 = v81;
      v38 = sub_1CF9E56A8();
      v81 = v37;
      if (v37)
      {
        v77 = v33;

        v40 = fpfs_current_or_default_log();
        v41 = v78;
        sub_1CF9E6128();
        v42 = v18;
        v43 = sub_1CF9E6108();
        v44 = sub_1CF9E72A8();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v82 = v46;
          *v45 = 136446210;
          v76[1] = v3;
          v47 = *&v42[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
          v48 = *&v42[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

          v49 = sub_1CEFD0DF0(v47, v48, &v82);

          *(v45 + 4) = v49;
          _os_log_impl(&dword_1CEFC7000, v43, v44, "🧹 FPCK %{public}s: error encoding IDs for TTR", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          MEMORY[0x1D386CDC0](v46, -1, -1);
          MEMORY[0x1D386CDC0](v45, -1, -1);
        }

        sub_1CEFF7124(v32);

        v79(v41, v80);
      }

      else
      {
        v73 = v38;
        v74 = v39;

        v32(v73, v74);

        sub_1CEFF7124(v32);
        sub_1CEFE4714(v73, v74);
      }
    }

    else
    {

      v61 = fpfs_current_or_default_log();
      v62 = v79;
      sub_1CF9E6128();
      v63 = v18;
      v64 = sub_1CF9E6108();
      v65 = sub_1CF9E7288();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v82 = v67;
        *v66 = 136446210;
        v68 = *&v63[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
        v69 = *&v63[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

        v70 = sub_1CEFD0DF0(v68, v69, &v82);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_1CEFC7000, v64, v65, "🧹 FPCK %{public}s: cannot send TTR, the sender is nil", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1D386CDC0](v67, -1, -1);
        MEMORY[0x1D386CDC0](v66, -1, -1);

        v71 = v62;
        v72 = v80;
      }

      else
      {

        v71 = v62;
        v72 = v2;
      }

      v31(v71, v72);
    }
  }

  else
  {
    v50 = v3;
    v51 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v52 = v0;
    v53 = sub_1CF9E6108();
    v54 = sub_1CF9E7298();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v80 = v2;
      v56 = v55;
      v57 = swift_slowAlloc();
      v82 = v57;
      *v56 = 136446210;
      v58 = *&v52[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v59 = *&v52[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

      v60 = sub_1CEFD0DF0(v58, v59, &v82);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_1CEFC7000, v53, v54, "🧹 FPCK %{public}s: skipping TTR, no nil errors", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1D386CDC0](v57, -1, -1);
      MEMORY[0x1D386CDC0](v56, -1, -1);

      (*(v50 + 8))(v9, v80);
    }

    else
    {

      (*(v50 + 8))(v9, v2);
    }
  }

  return 1;
}

uint64_t sub_1CF6D82E4()
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  MEMORY[0x1EEE9AC00](v2);
  v86 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v81 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v85 = (&v81 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v81 - v12;
  v14 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair;
  v15 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair];
  if (v15 && (swift_beginAccess(), v16 = *(v15 + 16), *(v16 + 16)))
  {
    v84 = v1;

    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v83 = v0;
    v18 = v0;
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E7288();

    v21 = os_log_type_enabled(v19, v20);
    v88 = v2;
    v82 = v14;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v87[0] = v23;
      *v22 = 136446210;
      v81 = v3;
      v24 = *&v18[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v25 = *&v18[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

      v26 = v16;
      v27 = v18;
      v28 = sub_1CEFD0DF0(v24, v25, v87);
      v3 = v81;

      *(v22 + 4) = v28;
      v18 = v27;
      v16 = v26;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "🧹 FPCK %{public}s: sending reingestion, we have items", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v29 = v23;
      v2 = v88;
      MEMORY[0x1D386CDC0](v29, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    v30 = *(v3 + 1);
    v30(v13, v2);
    v31 = *&v18[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reingestItems];
    if (v31)
    {
      v81 = v18;
      v85 = v30;
      v32 = *&v18[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reingestItems + 8];
      v33 = sub_1CF9E56C8();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();

      sub_1CF9E56B8();
      sub_1CF9E5698();
      v87[0] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27F8, &qword_1CFA12A20);
      sub_1CF6FC524(&qword_1EC4C2800, &qword_1EC4C27F8, &qword_1CFA12A20);
      v36 = v84;
      v37 = sub_1CF9E56A8();
      v39 = v36;
      if (v36)
      {
        v84 = v32;

        v40 = fpfs_current_or_default_log();
        v41 = v86;
        sub_1CF9E6128();
        v42 = v81;
        v43 = sub_1CF9E6108();
        v44 = sub_1CF9E72A8();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v87[0] = v46;
          *v45 = 136446210;
          v81 = v3;
          v47 = *&v42[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
          v48 = *&v42[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

          v49 = sub_1CEFD0DF0(v47, v48, v87);

          *(v45 + 4) = v49;
          _os_log_impl(&dword_1CEFC7000, v43, v44, "🧹 FPCK %{public}s: error encoding IDs for reingestion", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          MEMORY[0x1D386CDC0](v46, -1, -1);
          MEMORY[0x1D386CDC0](v45, -1, -1);

          v50 = v86;
        }

        else
        {

          v50 = v41;
        }

        v85(v50, v88);
        v76 = v83;
      }

      else
      {
        v74 = v37;
        v75 = v38;

        v31(v74, v75);
        sub_1CEFE4714(v74, v75);
        v76 = v83;
      }

      v77 = *&v76[v82];
      if (v77)
      {
        v78 = *&v76[v82];

        sub_1CEFF7124(v31);

        swift_beginAccess();
        v79 = *(v77 + 16);
        *(v77 + 16) = MEMORY[0x1E69E7CD0];
      }

      else
      {
        sub_1CEFF7124(v31);
      }
    }

    else
    {

      v62 = fpfs_current_or_default_log();
      v63 = v85;
      sub_1CF9E6128();
      v64 = v18;
      v65 = sub_1CF9E6108();
      v66 = sub_1CF9E7288();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v87[0] = v68;
        *v67 = 136446210;
        v69 = *&v64[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
        v70 = *&v64[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

        v71 = sub_1CEFD0DF0(v69, v70, v87);

        *(v67 + 4) = v71;
        _os_log_impl(&dword_1CEFC7000, v65, v66, "🧹 FPCK %{public}s: cannot send reingestion, the sender is nil", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x1D386CDC0](v68, -1, -1);
        MEMORY[0x1D386CDC0](v67, -1, -1);

        v72 = v63;
        v73 = v88;
      }

      else
      {

        v72 = v63;
        v73 = v2;
      }

      v30(v72, v73);
    }
  }

  else
  {
    v51 = v3;
    v52 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v53 = v0;
    v54 = sub_1CF9E6108();
    v55 = sub_1CF9E7298();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v88 = v2;
      v58 = v57;
      v87[0] = v57;
      *v56 = 136446210;
      v59 = *&v53[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v60 = *&v53[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

      v61 = sub_1CEFD0DF0(v59, v60, v87);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1CEFC7000, v54, v55, "🧹 FPCK %{public}s: skipping reingestion, no items", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v56, -1, -1);

      (*(v51 + 1))(v8, v88);
    }

    else
    {

      (*(v51 + 1))(v8, v2);
    }
  }

  return 1;
}

uint64_t sub_1CF6D8AD4()
{
  v2 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
  if (!v2)
  {
    LOBYTE(v11) = 1;
    return v11 & 1;
  }

  v3 = v1;
  v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);
  v5 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);

  v6 = v4;
  v7 = [v6 pathComponents];
  v8 = sub_1CF9E6D48();

  v9 = *(v8 + 16);

  if (v9 < 2)
  {
    v10 = *MEMORY[0x1E6967178];
  }

  else
  {
    v10 = [v6 lastPathComponent];
    if (!v10)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v10 = sub_1CF9E6888();
    }
  }

  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;
  swift_beginAccess();
  v14 = *(v2 + 24);
  if (!*(v14 + 16))
  {

LABEL_15:

LABEL_16:
    LOBYTE(v11) = 1;
    return v11 & 1;
  }

  v15 = v0;
  v16 = *(v2 + 24);

  v17 = sub_1CEFE863C(v10);
  if ((v18 & 1) == 0)
  {

    goto LABEL_15;
  }

  v19 = *(*(v14 + 56) + 8 * v17);

  v21 = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase);
  if (!v21)
  {

    goto LABEL_16;
  }

  MEMORY[0x1EEE9AC00](v20);
  v26[2] = v19;
  v26[3] = v22;
  v26[4] = v21;
  v26[5] = v11;
  v26[6] = v13;
  v26[7] = v2;

  v23 = objc_autoreleasePoolPush();
  v24 = sub_1CF803A54(v21, 2, "generateSPSAnalysis()", 21, 2, 1, sub_1CF6FC4C0, v26);
  if (!v3)
  {
    LOBYTE(v11) = v24;
  }

  objc_autoreleasePoolPop(v23);

  return v11 & 1;
}

void sub_1CF6D8D94(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v32 = a7;
  v36 = a6;
  v16 = a1[3];
  v15 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  v34 = a3;
  v35 = a1;
  v18 = sub_1CF219D30(1, v17, sub_1CF6FC4E4, v33, v16, v15);
  if (!v8)
  {
    v31[6] = a5;
    if (v18)
    {
      v19 = a1[3];
      v20 = a1[4];
      v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
      v22 = a3;
      sub_1CF6D9EE0(a4, a2, v21, v19, v20);
      v23 = a1[3];
      v24 = a1[4];
      v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
      sub_1CF6DA510(a4, a2, v25, v23, v24);
      v26 = sub_1CF9E6888();
      v28 = a1[3];
      v27 = a1[4];
      v29 = __swift_project_boxed_opaque_existential_1(a1, v28);
      MEMORY[0x1EEE9AC00](v29);
      v31[2] = v32;
      v31[3] = v26;
      v31[4] = a1;
      v31[5] = v22;
      sub_1CF702B68(v26, v30, sub_1CF6FC504, v31, v28, v27);

      *a8 = 1;
    }

    else
    {
      *a8 = 0;
    }
  }
}

uint64_t sub_1CF6D8F64(void *__src, uint64_t a2, void *a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_1CF6CF224("generateSPSAnalysis()", 21, 2, 1789);
  if ((v4 & 1) != 0 && sub_1CF39B7F0())
  {
    v5 = a3[3];
    v6 = a3[4];
    v7 = __swift_project_boxed_opaque_existential_1(a3, v5);
    sub_1CF6E36F8(__dst, v7, v5, v6);
  }

  return v4 & 1;
}

uint64_t sub_1CF6D9028(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  v11 = *(a3 + 24);
  if (*(v11 + 16))
  {

    v12 = sub_1CEFE863C(a4);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = a5[3];
  v16 = a5[4];
  v17 = __swift_project_boxed_opaque_existential_1(a5, v15);
  if (!v14)
  {
    goto LABEL_11;
  }

  v18 = v17;
  v26 = a1;
  v27 = 256;

  v19 = a1;
  sub_1CF20A25C(&v26, 0, v18, v15, v16, __src);
  if (v5)
  {
    sub_1CEFD0994(v26, v27, SHIBYTE(v27));
  }

  sub_1CEFD0994(v26, v27, SHIBYTE(v27));

  memcpy(__dst, __src, sizeof(__dst));
  if (sub_1CF08B99C(__dst) != 1)
  {
    memcpy(v24, __dst, sizeof(v24));
    nullsub_1(v24);
    memcpy(v29, v24, sizeof(v29));
  }

  else
  {
LABEL_11:
    sub_1CF4858E8(v29);
  }

  v21 = a5[3];
  v22 = a5[4];
  v23 = __swift_project_boxed_opaque_existential_1(a5, v21);
  memcpy(__src, v29, 0x208uLL);
  memcpy(__dst, v29, 0x208uLL);
  v24[0] = 0;
  LOBYTE(v24[1]) = -1;
  sub_1CF6D6C14(__src, __dst, v24, a2, 1, 0, 0x59u, 2, v23, v21, v22);

  return sub_1CEFCCC44(v29, &unk_1EC4BFC20, &unk_1CFA0A290);
}

uint64_t sub_1CF6D9260()
{
  v2 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
  if (!v2)
  {
    v11 = 1;
    return v11 & 1;
  }

  v3 = v1;
  v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);
  v5 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);

  v6 = v4;
  v7 = [v6 pathComponents];
  v8 = sub_1CF9E6D48();

  v9 = *(v8 + 16);

  if (v9 < 2)
  {
    v10 = *MEMORY[0x1E6967178];
  }

  else
  {
    v10 = [v6 lastPathComponent];
    if (!v10)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v10 = sub_1CF9E6888();
    }
  }

  swift_beginAccess();
  v12 = *(v2 + 24);
  if (!*(v12 + 16))
  {

LABEL_14:

    v11 = 1;
    return v11 & 1;
  }

  v13 = *(v2 + 24);

  v14 = sub_1CEFE863C(v10);
  if ((v15 & 1) == 0)
  {

    goto LABEL_14;
  }

  v16 = *(*(v12 + 56) + 8 * v14);

  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = MEMORY[0x1EEE9AC00](result);
    (*(*v19 + 464))(&v20, 1, "reconciliationTableCheck()", 26, 2, 2, sub_1CF6FC484, v18);

    if (!v3)
    {
      v11 = v20;
    }

    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF6D94CC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v10[2] = a2;
  result = sub_1CF219D30(0, v8, sub_1CF6FC4A0, v10, v6, v7);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

unint64_t sub_1CF6D9560(void *__src, uint64_t a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  LODWORD(v5) = sub_1CF6CF224("reconciliationTableCheck()", 26, 2, 1836);
  if (v5)
  {
    v7 = __dst[31];
    v6 = __dst[32];
    v8 = __dst[33];
    v9 = __dst[37];
    v10 = LOBYTE(__dst[43]);
    v11 = __dst[44];
    v12 = __dst[45];
    v13 = LOBYTE(__dst[46]);
    v14 = __dst[50];
    if (LOBYTE(__dst[46]) || (__dst[44] & 2) == 0)
    {
      v85 = __dst[32];
      v87 = LOBYTE(__dst[43]);
      v89 = __dst[45];
      LODWORD(v95) = LOBYTE(__dst[46]);
      v15 = __dst[44];
      v16 = __dst[37];
      v17 = __dst[33];
      v18 = v5;
      v19 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
      v5 = swift_beginAccess();
      v20 = *(a2 + v19);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_132;
      }

      *(a2 + v19) = v22;
      LOBYTE(v5) = v18;
      v8 = v17;
      v9 = v16;
      v11 = v15;
      v13 = v95;
      v12 = v89;
      v10 = v87;
      v6 = v85;
    }

    v23 = LOBYTE(__dst[1]) == 255 || v7 == 0;
    v24 = !v23;
    LODWORD(v25) = LOBYTE(__dst[17]);
    v18 = BYTE1(__dst[17]);
    LODWORD(v16) = LOBYTE(__dst[20]);
    v26 = BYTE1(__dst[17]) == 6 && v10 == 3;
    v27 = v26;
    v28 = 2;
    if (v26)
    {
      v28 = 3;
    }

    if ((v24 & (LOBYTE(__dst[17]) == 0)) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    LOBYTE(v17) = v2;
    if (LOBYTE(__dst[20]) == 2)
    {
      if (v13 == 2)
      {
LABEL_31:
        v29 |= 4uLL;
LABEL_32:
        v3 = __dst[2];
        v30 = __dst[3];
        LODWORD(v15) = LOBYTE(__dst[4]);
        v31 = __dst[13];
        v32 = __dst[18];
        v33 = __dst[19];
        v34 = __dst[24];
        v2 = __dst[30];
        if (qword_1EDEABDE0 != -1)
        {
          goto LABEL_130;
        }

        while (1)
        {
          v35 = qword_1EDEABDE8;
          if (!qword_1EDEABDE8)
          {
            break;
          }

          if ((qword_1EDEABDE8 & 0x10) == 0)
          {
            v36 = (qword_1EDEABDE8 | 0x10) & v30;
LABEL_37:
            if (v36 | v3 & 0x51)
            {
              goto LABEL_41;
            }

            v35 = qword_1EDEABDE8 | 0x10;
            goto LABEL_40;
          }

          if (qword_1EDEABDE8 & v30 | v3 & 0x51)
          {
            goto LABEL_41;
          }

LABEL_40:
          if ((v35 & v8) != 0 || (v6 & 0x51) != 0 || v25 == 1 || v10 == 1 || v15 != 5 || v18 != 6 || ((v34 & 0xF000000000000000) != 0xB000000000000000 ? (v73 = v24) : (v73 = 0), v73 == 1 && !v10))
          {
LABEL_41:
            v3 = v17;
            if (v16 != 2)
            {
              goto LABEL_43;
            }

LABEL_42:
            v29 |= 0x400uLL;
            goto LABEL_43;
          }

          v3 = v17;
          if (v16 == 2)
          {
            goto LABEL_42;
          }

          if ((v16 == 3 || v16 == 4 && !(v32 & 0xFFFFFFFFFFFFFFFELL | v33)) && (v13 == 3 || v13 == 4 && !(v11 & 0xFFFFFFFFFFFFFFFELL | v12)))
          {
            if (__dst[59] == 0x2000000000000000)
            {
              v74 = v29;
            }

            else
            {
              v74 = v29 | 8;
            }

            if ((v34 & 0xF000000000000000) == 0xB000000000000000)
            {
              v39 = v74;
            }

            else
            {
              v39 = v74 | 0x10;
            }

            if (v14 >> 60 != 11)
            {
              v39 |= 0x20uLL;
            }

            if (!v24)
            {
              goto LABEL_66;
            }

            goto LABEL_56;
          }

LABEL_43:
          v37 = v29 | 0x800;
          if (v13 != 2)
          {
            v37 = v29;
          }

          if ((v32 & 0x40100) == 0x100 && v16 == 0)
          {
            v37 |= 0x1000uLL;
          }

          if ((v11 & 0x40100) == 0x100)
          {
            v39 = v37 | 0x2000;
          }

          else
          {
            v39 = v37;
          }

          if (v13)
          {
            v39 = v37;
          }

          if (!v24)
          {
            goto LABEL_66;
          }

LABEL_56:
          if (!v31)
          {
            v39 |= 0x40uLL;
          }

          if (v9 == 1)
          {
            v39 |= 0x80uLL;
          }

          if (LOBYTE(__dst[57]) == 1)
          {
            v40 = v39 | (32 * v30) & 0x100;
            v41 = (v39 >> 9) & 1;
            if ((v8 & 8) == 0)
            {
              LODWORD(v41) = 1;
            }

            if (v41)
            {
              v39 = v40;
            }

            else
            {
              v39 = v40 | 0x200;
            }
          }

LABEL_66:
          if ((v2 & 0xC) == 8)
          {
            v39 |= 0x4000uLL;
          }

          if ((*(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions) & 2) != 0)
          {
            v42 = v39 & 0xFFFFFFFFFFFFC3FFLL;
          }

          else
          {
            v42 = v39;
          }

          if (!v42)
          {
            return v5 & 1;
          }

          v91 = v5;
          v16 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredReconciliationTableBrokenInvariantsCounters;
          v95 = v42;
          v14 = v42 & -v42;
          swift_beginAccess();
          sub_1CEFF7124(0);
          v43 = *(a2 + v16);
          LOBYTE(v17) = swift_isUniquelyReferenced_nonNull_native();
          v25 = *(a2 + v16);
          v93 = v25;
          *(a2 + v16) = 0x8000000000000000;
          v5 = sub_1CF7D52B0(v14);
          v44 = v25[2];
          v45 = (v30 & 1) == 0;
          v21 = __OFADD__(v44, v45);
          v46 = v44 + v45;
          if (v21)
          {
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          v18 = v30;
          if (v25[3] < v46)
          {
            sub_1CF7C7758(v46, v17);
            v5 = sub_1CF7D52B0(v14);
            if ((v18 & 1) == (v30 & 1))
            {
              goto LABEL_77;
            }

LABEL_75:
            v5 = sub_1CF9E8108();
            __break(1u);
          }

          if (v17)
          {
LABEL_77:
            *(a2 + v16) = v25;
            if ((v18 & 1) == 0)
            {
              goto LABEL_78;
            }

            goto LABEL_80;
          }

          while (1)
          {
            v29 = v5;
            sub_1CF7D1240();
            v5 = v29;
            v25 = v93;
            *(a2 + v16) = v93;
            if ((v18 & 1) == 0)
            {
              break;
            }

LABEL_80:
            v49 = v25[7];
            v50 = *(v49 + 8 * v5);
            v21 = __OFADD__(v50, 1);
            v51 = v50 + 1;
            if (v21)
            {
              goto LABEL_128;
            }

            *(v49 + 8 * v5) = v51;
            swift_endAccess();
            if (v95 != v14)
            {
              v29 = v14 ^ v95;
              LODWORD(v15) = 0;
              v3 = 1;
              while (1)
              {
                v14 = v29 & -v29;
                swift_beginAccess();
                sub_1CEFF7124(sub_1CF193338);
                v64 = *(a2 + v16);
                LOBYTE(v17) = swift_isUniquelyReferenced_nonNull_native();
                v25 = *(a2 + v16);
                v93 = v25;
                *(a2 + v16) = 0x8000000000000000;
                v5 = sub_1CF7D52B0(v14);
                v65 = v25[2];
                v66 = (v30 & 1) == 0;
                v21 = __OFADD__(v65, v66);
                v67 = v65 + v66;
                if (v21)
                {
                  goto LABEL_127;
                }

                v18 = v30;
                if (v25[3] < v67)
                {
                  break;
                }

                if (v17)
                {
                  goto LABEL_91;
                }

                v17 = v5;
                sub_1CF7D1240();
                v5 = v17;
                *(a2 + v16) = v25;
                if ((v18 & 1) == 0)
                {
LABEL_92:
                  v25[(v5 >> 6) + 8] |= 1 << v5;
                  *(v25[6] + 8 * v5) = v14;
                  *(v25[7] + 8 * v5) = 0;
                  v68 = v25[2];
                  v21 = __OFADD__(v68, 1);
                  v69 = v68 + 1;
                  if (v21)
                  {
                    goto LABEL_129;
                  }

                  v25[2] = v69;
                }

LABEL_94:
                v70 = v25[7];
                v71 = *(v70 + 8 * v5);
                v21 = __OFADD__(v71, 1);
                v72 = v71 + 1;
                if (v21)
                {
                  goto LABEL_128;
                }

                *(v70 + 8 * v5) = v72;
                swift_endAccess();
                v23 = v29 == v14;
                v29 ^= v14;
                if (v23)
                {
                  goto LABEL_82;
                }
              }

              sub_1CF7C7758(v67, v17);
              v5 = sub_1CF7D52B0(v29 & -v29);
              if ((v18 & 1) != (v30 & 1))
              {
                goto LABEL_75;
              }

LABEL_91:
              *(a2 + v16) = v25;
              if ((v18 & 1) == 0)
              {
                goto LABEL_92;
              }

              goto LABEL_94;
            }

LABEL_82:
            v52 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
            v5 = swift_beginAccess();
            v53 = *(a2 + v52);
            v21 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (!v21)
            {
              *(a2 + v52) = v54;
              v55 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);
              v56 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler + 8);

              v59 = sub_1CF6D9D30(v57, v58);
              v61 = v60;
              sub_1CF9E7948();

              MEMORY[0x1D3868CC0](0x654C208C9DE2203ALL, 0xAD0000203A207466);
              v62 = sub_1CF7F5810(v95);
              MEMORY[0x1D3868CC0](v62);

              MEMORY[0x1D3868CC0](2592, 0xE200000000000000);
              v55(v59, v61);

              LOBYTE(v5) = v91;
              return v5 & 1;
            }

            __break(1u);
LABEL_132:
            __break(1u);
          }

LABEL_78:
          v25[(v5 >> 6) + 8] |= 1 << v5;
          *(v25[6] + 8 * v5) = v14;
          *(v25[7] + 8 * v5) = 0;
          v47 = v25[2];
          v21 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (!v21)
          {
            v25[2] = v48;
            goto LABEL_80;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          v92 = v5;
          LODWORD(v95) = v13;
          v90 = v12;
          v81 = v30;
          v83 = v9;
          v84 = v8;
          v82 = v11;
          v76 = v15;
          v75 = v24;
          v88 = v10;
          v79 = v32;
          v80 = v31;
          v86 = v6;
          v77 = v34;
          v78 = v33;
          swift_once();
          v34 = v77;
          v33 = v78;
          v32 = v79;
          v31 = v80;
          v8 = v84;
          v6 = v86;
          v10 = v88;
          v12 = v90;
          v13 = v95;
          v30 = v81;
          v24 = v75;
          LODWORD(v15) = v76;
          v11 = v82;
          v9 = v83;
          LOBYTE(v5) = v92;
        }

        v36 = v30 & 0x10;
        goto LABEL_37;
      }
    }

    else if (v13 != 2)
    {
      if (LOBYTE(__dst[17]) != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (LOBYTE(__dst[17]) == 1)
    {
      goto LABEL_31;
    }

LABEL_30:
    if (v10 != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  return v5 & 1;
}

uint64_t sub_1CF6D9D30(uint64_t a1, uint64_t a2)
{
  v18 = *v2;
  if (*(v2 + 8) == 255)
  {
    v5 = 0xE200000000000000;
    v3 = 16191;
    if (v2[31])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = VFSItemID.description.getter(a1, a2);
    v5 = v4;
    if (v2[31])
    {
LABEL_3:
      v6 = NSFileProviderItemIdentifier.description.getter();
      v8 = v7;
      goto LABEL_6;
    }
  }

  v8 = 0xE200000000000000;
  v6 = 16191;
LABEL_6:
  v9 = *(v2 + 456);
  v10 = 6516580;
  v11 = 0xE700000000000000;
  v12 = 0x6B6E696C6D7973;
  v13 = 0xE500000000000000;
  v14 = 0x7361696C61;
  if (v9 != 3)
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  if (v9 != 2)
  {
    v12 = v14;
    v11 = v13;
  }

  if (*(v2 + 456))
  {
    v10 = 7498084;
  }

  if (*(v2 + 456) <= 1u)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (*(v2 + 456) <= 1u)
  {
    v16 = 0xE300000000000000;
  }

  else
  {
    v16 = v11;
  }

  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](v3, v5);

  MEMORY[0x1D3868CC0](0x663C203E2D3C203ELL, 0xEA00000000003A70);
  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v15, v16);

  return 980641340;
}

unint64_t sub_1CF6D9EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v8 = a4;
  v10 = a1;
  v11 = 0;
  v26 = a3;
  while (1)
  {
    result = (*(**(v10 + 24) + 512))(89, 256, v11, 0, a3, v8, v7);
    v22 = v14;
    if (v6)
    {
      return result;
    }

    v15 = result;
    v21 = v13;
    if (result >> 62)
    {
      break;
    }

    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_15:

    if ((v21 & 1) == 0)
    {
      v8 = a4;
      v7 = a5;
      v10 = a1;
      a3 = v26;
      v11 = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        continue;
      }
    }

    return result;
  }

  result = sub_1CF9E7818();
  v16 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_5:
  v17 = 0;
  while ((v15 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1D3869C30](v17, v15);
    v18 = result;
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_19;
    }

LABEL_9:
    v20 = objc_autoreleasePoolPush();
    sub_1CF6DA0BC(v18, a2, v26, a1, v24, a4, a5, &v29);
    v6 = 0;
    objc_autoreleasePoolPop(v20);

    ++v17;
    if (v19 == v16)
    {
      goto LABEL_15;
    }
  }

  if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  v18 = *(v15 + 8 * v17 + 32);

  v19 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1CF6DA0BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v55 = a5;
  v14 = a1;
  v15 = *a1;
  if (sub_1CF388E8C() == 3)
  {
    v16 = *(v14 + 152);
    v52 = v14[18];
    v53 = v16;
    sub_1CF68DDB0(&v52, a3, a6, a7, __src);
    if (v8)
    {
      *a8 = v8;
    }

    else
    {
      v39 = a7;
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v51, __src, sizeof(v51));
      if (sub_1CF08B99C(v51) == 1)
      {
        v17 = *(a4 + 24);
        v18 = *(v14 + 152);
        *&v49[0] = v14[18];
        BYTE8(v49[0]) = v18;
        v19 = a7;
        v20 = (*(*v17 + 384))(v49, 89, 0, 1, a3, a6, a7);
        v21 = *(v20 + 16);
        if (v21)
        {
          v38 = a3;
          v22 = 0;
          v40 = v21 - 1;
          v41 = v14;
          v23 = 32;
          v42 = v20;
          while (1)
          {
            v24 = *(v20 + v23 + 64);
            v25 = *(v20 + v23 + 80);
            v26 = *(v20 + v23 + 32);
            v49[3] = *(v20 + v23 + 48);
            v27 = *(v20 + v23 + 16);
            v49[0] = *(v20 + v23);
            v49[1] = v27;
            *&v49[5] = v25;
            v49[4] = v24;
            v49[2] = v26;
            v28 = *(&v49[3] + 1);
            v29 = *&v49[0];
            v30 = BYTE8(v49[0]);
            v31 = BYTE9(v49[0]);
            v44 = v27;
            sub_1CEFCCBDC(v49, v48, qword_1EC4C2060, &unk_1CFA0EC30);
            sub_1CEFCCBDC(v49, v48, qword_1EC4C2060, &unk_1CFA0EC30);
            sub_1CEFD0994(v29, v30, v31);
            v43 = v28;

            if (v44 == 1)
            {
              sub_1CEFCCBDC(v49, v48, qword_1EC4C2060, &unk_1CFA0EC30);
              sub_1CEFD0994(v29, v30, v31);
              v32 = v28;

              if (v28)
              {
                break;
              }
            }

            sub_1CEFCCC44(v49, qword_1EC4C2060, &unk_1CFA0EC30);
            v14 = v41;
            if (v40 == v22)
            {
              goto LABEL_14;
            }

            ++v22;
            v20 = v42;
            v23 += 88;
            if (v22 >= *(v42 + 16))
            {
              __break(1u);
LABEL_14:

              v43 = 0;
              a3 = v38;
              v19 = v39;
              goto LABEL_17;
            }
          }

          sub_1CEFD0994(v29, v30, v31);
          v33 = v28;

          a3 = v38;
          v19 = v39;
          v14 = v41;
        }

        else
        {

          v43 = 0;
        }

LABEL_17:
        sub_1CF4858E8(v49);
        memcpy(v48, v49, sizeof(v48));
        memcpy(v47, v49, sizeof(v47));
        v34 = *(v14 + 152);
        v45 = v14[18];
        v46 = v34;
        if (v43)
        {
          v35 = v43;
        }

        else
        {
          sub_1CF6FC3E4();
          v35 = swift_allocError();
          v43 = 0;
          *v36 = 29;
          *(v36 + 8) = 18;
        }

        v37 = v43;
        sub_1CF6D6C14(v48, v47, &v45, v35, 1, 3u, 3u, 0, a3, a6, v19);
      }

      else
      {
        sub_1CEFCCC44(__dst, &unk_1EC4BFC20, &unk_1CFA0A290);
      }
    }
  }
}

unint64_t sub_1CF6DA510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v8 = a4;
  v10 = a1;
  v11 = 0;
  v26 = a3;
  while (1)
  {
    result = (*(**(v10 + 24) + 520))(89, 256, v11, 0, a3, v8, v7);
    v22 = v14;
    if (v6)
    {
      return result;
    }

    v15 = result;
    v21 = v13;
    if (result >> 62)
    {
      break;
    }

    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_15:

    if ((v21 & 1) == 0)
    {
      v8 = a4;
      v7 = a5;
      v10 = a1;
      a3 = v26;
      v11 = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        continue;
      }
    }

    return result;
  }

  result = sub_1CF9E7818();
  v16 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_5:
  v17 = 0;
  while ((v15 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1D3869C30](v17, v15);
    v18 = result;
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_19;
    }

LABEL_9:
    v20 = objc_autoreleasePoolPush();
    sub_1CF6DA6EC(v18, a2, v26, a1, v24, a4, a5, &v29);
    v6 = 0;
    objc_autoreleasePoolPop(v20);

    ++v17;
    if (v19 == v16)
    {
      goto LABEL_15;
    }
  }

  if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  v18 = *(v15 + 8 * v17 + 32);

  v19 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1CF6DA6EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = *a1;
  if (sub_1CF387EDC() == 3)
  {
    v54 = a1[18];
    v16 = v54;
    sub_1CF68E230(&v54, a3, a6, a7, __src);
    if (v8)
    {

      *a8 = v8;
    }

    else
    {
      v41 = a7;

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v52, __src, sizeof(v52));
      if (sub_1CF08B99C(v52) == 1)
      {
        v17 = *(a4 + 24);
        *&v50[0] = v16;
        v18 = *(*v17 + 376);
        v19 = v16;
        v20 = a7;
        v21 = v18(v50, 89, 0, 1, a3, a6, a7);

        v40 = a3;
        v22 = *(v21 + 16);
        if (v22)
        {
          v39 = a6;
          v23 = 0;
          v42 = v22 - 1;
          v43 = v21;
          v24 = 32;
          while (1)
          {
            v25 = *(v21 + v24 + 64);
            v26 = *(v21 + v24 + 80);
            v27 = *(v21 + v24 + 32);
            v50[3] = *(v21 + v24 + 48);
            v28 = *(v21 + v24 + 16);
            v50[0] = *(v21 + v24);
            v50[1] = v28;
            *&v50[5] = v26;
            v50[4] = v25;
            v50[2] = v27;
            v29 = *(&v50[3] + 1);
            v30 = *&v50[0];
            v31 = BYTE8(v50[0]);
            v32 = BYTE9(v50[0]);
            v45 = v28;
            sub_1CEFCCBDC(v50, v49, &qword_1EC4BE5B8, &qword_1CF9FDE98);
            sub_1CEFCCBDC(v50, v49, &qword_1EC4BE5B8, &qword_1CF9FDE98);
            sub_1CF1E53F8(v30, v31, v32);
            v44 = v29;

            if (v45 == 1)
            {
              sub_1CEFCCBDC(v50, v49, &qword_1EC4BE5B8, &qword_1CF9FDE98);
              sub_1CF1E53F8(v30, v31, v32);
              v33 = v29;

              if (v29)
              {
                break;
              }
            }

            sub_1CEFCCC44(v50, &qword_1EC4BE5B8, &qword_1CF9FDE98);
            if (v42 == v23)
            {

              v44 = 0;
              goto LABEL_16;
            }

            ++v23;
            v21 = v43;
            v24 += 88;
            if (v23 >= *(v43 + 16))
            {
              __break(1u);
              goto LABEL_12;
            }
          }

          sub_1CF1E53F8(v30, v31, v32);
          v35 = v29;

LABEL_16:
          a6 = v39;
          v34 = v40;
          v20 = v41;
        }

        else
        {

          v44 = 0;
          v34 = a3;
        }

        sub_1CF4858E8(v50);
        memcpy(v49, v50, sizeof(v49));
        memcpy(v48, v50, sizeof(v48));
        v46 = 0;
        v47 = -1;
        if (v44)
        {
          v36 = v44;
        }

        else
        {
          sub_1CF6FC3E4();
          v36 = swift_allocError();
          v44 = 0;
          *v37 = 29;
          *(v37 + 8) = 18;
        }

        v38 = v44;
        sub_1CF6D6C14(v49, v48, &v46, v36, 1, 4u, 3u, 1, v34, a6, v20);
      }

      else
      {
LABEL_12:
        sub_1CEFCCC44(__dst, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }
    }
  }
}

uint64_t sub_1CF6DAB2C(__int128 *a1, void *a2, uint64_t a3, int a4, unsigned int a5, int a6, uint64_t a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = &OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetItemPayload;
  v17 = *(a1 + 31);
  if (v17)
  {
    v16 = &OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload;
  }

  v18 = *(v12 + *v16);
  if (!v18)
  {
    goto LABEL_23;
  }

  v19 = a1[13];
  v70 = a1[12];
  v71 = v19;
  v72 = a1[14];
  v20 = *(a1 + 30);
  v21 = a1[9];
  v66 = a1[8];
  v67 = v21;
  v22 = a1[11];
  v68 = a1[10];
  v69 = v22;
  v23 = a1[5];
  v62 = a1[4];
  v63 = v23;
  v24 = a1[7];
  v64 = a1[6];
  v65 = v24;
  v25 = a1[1];
  v58 = *a1;
  v59 = v25;
  v26 = a1[3];
  v60 = a1[2];
  v61 = v26;
  v73 = v20;
  v74 = v17;
  memcpy(v75, a1 + 16, sizeof(v75));

  v27 = sub_1CF6F9188(&v58, a2, a3, 0, v18);

  if (v27)
  {
LABEL_23:
    v29 = a1[13];
    v70 = a1[12];
    v71 = v29;
    v72 = a1[14];
    v30 = *(a1 + 30);
    v31 = a1[9];
    v66 = a1[8];
    v67 = v31;
    v32 = a1[11];
    v68 = a1[10];
    v69 = v32;
    v33 = a1[5];
    v62 = a1[4];
    v63 = v33;
    v34 = a1[7];
    v64 = a1[6];
    v65 = v34;
    v35 = a1[1];
    v58 = *a1;
    v59 = v35;
    v36 = a1[3];
    v60 = a1[2];
    v61 = v36;
    v73 = v30;
    v74 = v17;
    memcpy(v75, a1 + 16, sizeof(v75));
    result = sub_1CF6D3E88(&v58, a2, a4, a3, 0, a5, a6, a7, a8 & 1, v17 == 0, a10, a11, a12);
    v37 = result;
    if (result)
    {
      if (a9)
      {
        v38 = *MEMORY[0x1E6966F58];
        v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v41 = v39;
        v42 = v40;
        if (*(v37 + 16) && (v43 = sub_1CEFE4328(v39, v40), (v44 & 1) != 0) && (v45 = *(*(v37 + 56) + 8 * v43), objc_opt_self(), (v46 = swift_dynamicCastObjCClass()) != 0))
        {
          v47 = [v46 integerValue] | 0x80000000;
        }

        else
        {
          v47 = 0x80000000;
        }

        v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v58 = v37;
        sub_1CF1D1950(v48, v41, v42, isUniquelyReferenced_nonNull_native);

        v37 = v58;
      }

      if (v17)
      {
        v50 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload;
      }

      else
      {
        v50 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetItemPayload;
      }

      v51 = *(v57 + v50);
      *(v57 + v50) = v37;
    }
  }

  return result;
}

uint64_t sub_1CF6DAE10@<X0>(char *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v184 = a8;
  v185 = a7;
  v164 = a6;
  v163 = a5;
  v181 = a4;
  v162 = a3;
  v188 = a9;
  v183 = a2;
  v10 = *a2;
  v11 = sub_1CF9E6118();
  v186 = *(v11 - 8);
  v187 = v11;
  v12 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v193 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v179 = &v157 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v170 = &v157 - v17;
  v18 = *(v10 + 80);
  v190 = *(v10 + 96);
  v191 = v18;
  v194 = v18;
  v195 = v190;
  v19 = type metadata accessor for ItemReconciliation();
  v167 = sub_1CF9E75D8();
  v166 = *(v167 - 8);
  v20 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v175 = &v157 - v21;
  v189 = v19;
  v182 = *(v19 - 8);
  v22 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v180 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v192 = &v157 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v161 = &v157 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v169 = &v157 - v30;
  v172 = v190;
  v173 = v191;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = sub_1CF9E75D8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  *&v190 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  *&v191 = &v157 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v157 - v39;
  v41 = *(AssociatedTypeWitness - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v174 = &v157 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v171 = &v157 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v168 = &v157 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v165 = &v157 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v176 = &v157 - v52;
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = &v157 - v55;
  v178 = *(v33 + 16);
  v178(v40, a1, v32, v54);
  v177 = *(v41 + 48);
  if (v177(v40, 1, AssociatedTypeWitness) != 1)
  {
    v193 = a1;
    v160 = v32;
    v159 = v33;
    v72 = *(v41 + 32);
    v72(v56, v40, AssociatedTypeWitness);
    v73 = v181;
    v74 = v197;
    (*(**(v183 + 4) + 288))(v56, v181, v185, v184);
    if (v74)
    {
      return (*(v41 + 8))(v56, AssociatedTypeWitness);
    }

    v192 = v72;
    v158 = v56;
    v77 = v41;
    v197 = 0;
    v78 = v190;
    v79 = v160;
    (v178)(v190, v191, v160);
    if (v177(v78, 1, AssociatedTypeWitness) == 1)
    {
      v80 = v159 + 8;
      v193 = *(v159 + 8);
      (v193)(v78, v79);
      v81 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v82 = *(v41 + 16);
      v83 = v174;
      v84 = v158;
      v82(v174, v158, AssociatedTypeWitness);
      v85 = sub_1CF9E6108();
      v86 = sub_1CF9E72A8();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v159 = v80;
        v88 = v87;
        v89 = swift_slowAlloc();
        *&v194 = v89;
        *v88 = 136315138;
        LODWORD(v192) = v86;
        v90 = v171;
        v82(v171, v83, AssociatedTypeWitness);
        v91 = *(v77 + 8);
        v91(v83, AssociatedTypeWitness);
        v92 = *(swift_getAssociatedConformanceWitness() + 16);
        v93 = sub_1CF9E7F98();
        v95 = v94;
        v91(v90, AssociatedTypeWitness);
        v96 = sub_1CEFD0DF0(v93, v95, &v194);

        *(v88 + 4) = v96;
        _os_log_impl(&dword_1CEFC7000, v85, v192, "no parent ID in snapshot for %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        MEMORY[0x1D386CDC0](v89, -1, -1);
        MEMORY[0x1D386CDC0](v88, -1, -1);

        (*(v186 + 8))(v179, v187);
        (v193)(v191, v160);
        v91(v158, AssociatedTypeWitness);
      }

      else
      {
        v103 = *(v77 + 8);
        v103(v83, AssociatedTypeWitness);

        (*(v186 + 8))(v179, v187);
        (v193)(v191, v160);
        v103(v84, AssociatedTypeWitness);
      }

LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      return (*(*(TupleTypeMetadata3 - 8) + 56))(v188, 1, 1, TupleTypeMetadata3);
    }

    v97 = v176;
    (v192)(v176, v78, AssociatedTypeWitness);
    v98 = *(v183 + 2);
    v99 = v175;
    v100 = v197;
    sub_1CF68DDB0(v97, v73, v185, v184, v175);
    v101 = v159;
    if (v100)
    {
      v102 = *(v77 + 8);
      v102(v97, AssociatedTypeWitness);
      (*(v101 + 8))(v191, v160);
    }

    else
    {
      v105 = v182;
      v106 = v189;
      v107 = (*(v182 + 48))(v99, 1, v189);
      v197 = 0;
      if (v107 == 1)
      {
        (*(v166 + 8))(v99, v167);
        v108 = fpfs_current_or_default_log();
        v109 = v170;
        sub_1CF9E6128();
        v110 = v97;
        v111 = *(v77 + 16);
        v112 = v165;
        v111(v165, v110, AssociatedTypeWitness);
        v113 = v168;
        v111(v168, v158, AssociatedTypeWitness);
        v114 = sub_1CF9E6108();
        LODWORD(v192) = sub_1CF9E72A8();
        v193 = v114;
        if (os_log_type_enabled(v114, v192))
        {
          v115 = swift_slowAlloc();
          v185 = v115;
          *&v190 = swift_slowAlloc();
          *&v194 = v190;
          *v115 = 136315394;
          v116 = v171;
          v111(v171, v112, AssociatedTypeWitness);
          v117 = *(v77 + 8);
          v117(v112, AssociatedTypeWitness);
          v183 = v117;
          v118 = AssociatedTypeWitness;
          v184 = *(swift_getAssociatedConformanceWitness() + 16);
          v119 = sub_1CF9E7F98();
          v120 = v113;
          v122 = v121;
          v117(v116, v118);
          v123 = sub_1CEFD0DF0(v119, v122, &v194);

          v124 = v185;
          *(v185 + 4) = v123;
          *(v124 + 6) = 2080;
          v111(v116, v120, v118);
          v125 = v183;
          v183(v120, v118);
          v126 = sub_1CF9E7F98();
          v128 = v127;
          v125(v116, v118);
          v129 = sub_1CEFD0DF0(v126, v128, &v194);

          *(v124 + 14) = v129;
          v130 = v193;
          _os_log_impl(&dword_1CEFC7000, v193, v192, "no parentRec in RT for parent %s of %s", v124, 0x16u);
          v131 = v190;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v131, -1, -1);
          MEMORY[0x1D386CDC0](v124, -1, -1);

          (*(v186 + 8))(v170, v187);
          v125(v176, v118);
          (*(v159 + 8))(v191, v160);
          v125(v158, v118);
        }

        else
        {
          v143 = *(v77 + 8);
          v143(v113, AssociatedTypeWitness);
          v143(v112, AssociatedTypeWitness);

          (*(v186 + 8))(v109, v187);
          v143(v176, AssociatedTypeWitness);
          (*(v101 + 8))(v191, v160);
          v143(v158, AssociatedTypeWitness);
        }

        goto LABEL_15;
      }

      v132 = v99;
      v133 = v169;
      (*(v105 + 32))(v169, v132, v106);
      if ((v133[*(type metadata accessor for ItemReconciliationHalf() + 36)] & 2) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v134 = v133;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
        v135 = swift_getTupleTypeMetadata3();
        v136 = *(v135 + 48);
        v137 = v188;
        v138 = AssociatedTypeWitness;
        v192 = (v188 + *(v135 + 64));
        v139 = v193;
        (*(v105 + 16))(v188, v193, v106);
        sub_1CF6FC3E4();
        *(v137 + v136) = swift_allocError();
        *v140 = 0;
        *(v140 + 8) = 3;
        (*(v105 + 8))(v134, v106);
        v141 = *(v77 + 8);
        v141(v176, v138);
        (*(v159 + 8))(v191, v160);
        v141(v158, v138);
        v142 = v192;
        *v192 = *&v139[*(v106 + 64) + 8];
        v142[8] = 0;
        return (*(*(v135 - 8) + 56))(v137, 0, 1, v135);
      }

      v144 = v161;
      v145 = v197;
      sub_1CF6DC314(&v194, v161, v133, v183, v162, v73, v163, v164, v185, v184);
      v146 = v191;
      if (!v145)
      {
        v186 = v194;
        v193 = *(&v195 + 1);
        LODWORD(v192) = v196;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v197 = 0;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
        v147 = swift_getTupleTypeMetadata3();
        *&v190 = *(v147 + 48);
        v148 = v188;
        v187 = (v188 + *(v147 + 64));
        v149 = v182;
        (*(v182 + 16))(v188, v144, v106);
        sub_1CF6FC3E4();
        v150 = swift_allocError();
        v184 = v150;
        v151 = v186;
        *v152 = v186;
        *(v152 + 8) = 4;
        v153 = v151;
        v185 = sub_1CF72AC6C(v150, v151);
        v154 = *(v149 + 8);
        v154(v144, v106);
        v154(v169, v106);
        v155 = *(v77 + 8);
        v155(v176, AssociatedTypeWitness);
        (*(v159 + 8))(v191, v160);
        v155(v158, AssociatedTypeWitness);

        *(v148 + v190) = v185;
        v156 = v187;
        *v187 = v193;
        *(v156 + 8) = v192;
        return (*(*(v147 - 8) + 56))(v148, 0, 1, v147);
      }

      (*(v182 + 8))(v133, v106);
      v102 = *(v77 + 8);
      v102(v97, AssociatedTypeWitness);
      (*(v159 + 8))(v146, v160);
    }

    return (v102)(v158, AssociatedTypeWitness);
  }

  (*(v33 + 8))(v40, v32);
  v57 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v58 = v182;
  v59 = *(v182 + 16);
  v60 = v189;
  v59(v192, a1, v189);
  v61 = sub_1CF9E6108();
  v62 = sub_1CF9E72A8();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *&v191 = swift_slowAlloc();
    *&v194 = v191;
    *v63 = 136315138;
    v64 = v180;
    v65 = v192;
    v59(v180, v192, v60);
    v66 = *(v58 + 8);
    v66(v65, v60);
    v67 = sub_1CF082CB0(v60);
    v69 = v68;
    v66(v64, v60);
    v70 = sub_1CEFD0DF0(v67, v69, &v194);

    *(v63 + 4) = v70;
    _os_log_impl(&dword_1CEFC7000, v61, v62, "no entry.a.id for entry: %s", v63, 0xCu);
    v71 = v191;
    __swift_destroy_boxed_opaque_existential_1(v191);
    MEMORY[0x1D386CDC0](v71, -1, -1);
    MEMORY[0x1D386CDC0](v63, -1, -1);
  }

  else
  {
    (*(v58 + 8))(v192, v60);
  }

  (*(v186 + 8))(v193, v187);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
  v76 = swift_getTupleTypeMetadata3();
  return (*(*(v76 - 8) + 56))(v188, 1, 1, v76);
}

uint64_t sub_1CF6DC314@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, char **a5@<X4>, uint64_t (*a6)(uint64_t *)@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t *a9@<X8>, char *a10)
{
  v215 = a2;
  v202 = a8;
  v203 = a6;
  v204 = a7;
  v201 = a5;
  v214 = a4;
  v207 = a1;
  v208 = a9;
  v11 = *a3;
  v12 = *(*a3 + 96);
  v217 = *(*a3 + 80);
  v255 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v183 = *(v14 - 8);
  v184 = v14;
  v15 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v186 = &v169 - v16;
  v187 = *(AssociatedTypeWitness - 8);
  v17 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v182 = &v169 - v19;
  v20 = *(v11 + 104);
  v200 = a3;
  v21 = *(v11 + 88);
  v22 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v211 = AssociatedConformanceWitness;
  v24 = v217;
  v25 = swift_getAssociatedConformanceWitness();
  *&v227 = v22;
  *(&v227 + 1) = AssociatedTypeWitness;
  v26 = AssociatedTypeWitness;
  *&v228 = AssociatedConformanceWitness;
  *(&v228 + 1) = v25;
  v179 = type metadata accessor for ThrottlingKey();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = sub_1CF9E75D8();
  v177 = *(v27 - 8);
  v178 = v27;
  v28 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v181 = &v169 - v29;
  v30 = sub_1CF9E75D8();
  v189 = *(v30 - 8);
  v190 = v30;
  v31 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v191 = &v169 - v32;
  v192 = *(v22 - 8);
  v33 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v185 = &v169 - v35;
  *&v36 = v24;
  *(&v36 + 1) = v21;
  v213 = v36;
  *&v36 = v255;
  *(&v36 + 1) = v20;
  v212 = v36;
  v205 = v21;
  v206 = v20;
  *&v36 = v21;
  *(&v36 + 1) = v24;
  *&v37 = v20;
  *(&v37 + 1) = v255;
  v227 = v36;
  v228 = v37;
  v38 = type metadata accessor for ItemReconciliation();
  v39 = *(v38 - 8);
  v197 = v38;
  v198 = v39;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v195 = &v169 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v194 = &v169 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v169 - v45;
  v227 = v213;
  v228 = v212;
  v47 = type metadata accessor for ItemReconciliation();
  v209 = *(v47 - 8);
  v210 = v47;
  v48 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v196 = &v169 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v169 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v169 - v54;
  v188 = v26;
  *&v227 = v26;
  *(&v227 + 1) = v22;
  v193 = v22;
  *&v228 = v25;
  *(&v228 + 1) = v211;
  v199 = type metadata accessor for ReconciliationID();
  v211 = *(v199 - 8);
  v56 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v58 = (&v169 - v57);
  v59 = sub_1CF9E6118();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v169 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v169 - v65;
  if (v214 >= 10)
  {
    v86 = v215;
    v87 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v88 = sub_1CF9E6108();
    v89 = sub_1CF9E72A8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1CEFC7000, v88, v89, "Recursion too deep - aborting", v90, 2u);
      MEMORY[0x1D386CDC0](v90, -1, -1);
    }

    (*(v60 + 8))(v66, v59);
    (*(v209 + 16))(v207, v86, v210);
    sub_1CF6FC3E4();
    result = swift_allocError();
    v91 = 0;
    v92 = 0;
    *v93 = 15;
    *(v93 + 8) = 18;
    v94 = 1;
    v95 = 2;
    v96 = 89;
    v97 = 5;
    goto LABEL_9;
  }

  type metadata accessor for FPCK(0);
  v67 = v216;
  result = sub_1CF6E2A6C(v215, v217, v205, v255, v206, v58);
  if (v67)
  {
    return result;
  }

  v174 = v46;
  v216 = 0;
  v176 = v58;
  if (v203(v58))
  {
    v255 = v59;
    v175 = a10;
    v69 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v70 = v209;
    v72 = v209 + 16;
    v71 = *(v209 + 16);
    v71(v55, v215, v210);
    v73 = sub_1CF9E6108();
    LODWORD(v214) = sub_1CF9E72A8();
    v217 = v73;
    v74 = os_log_type_enabled(v73, v214);
    *&v213 = v72;
    *&v212 = v71;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v205 = v75;
      v206 = swift_slowAlloc();
      *&v227 = v206;
      *v75 = 136315138;
      v71(v52, v55, v210);
      v76 = *(v70 + 8);
      v76(v55, v210);
      v77 = v217;
      v78 = sub_1CF082CB0(v210);
      v80 = v79;
      v76(v52, v210);
      v81 = sub_1CEFD0DF0(v78, v80, &v227);

      v82 = v205;
      *(v205 + 1) = v81;
      v83 = v82;
      _os_log_impl(&dword_1CEFC7000, v77, v214, "Cycle detected for %s!", v82, 0xCu);
      v84 = v206;
      __swift_destroy_boxed_opaque_existential_1(v206);
      MEMORY[0x1D386CDC0](v84, -1, -1);
      v85 = v210;
      MEMORY[0x1D386CDC0](v83, -1, -1);
    }

    else
    {
      v85 = v210;
      (*(v70 + 8))(v55, v210);
    }

    (*(v60 + 8))(v63, v255);
    v104 = v215;
    v103 = v216;
    v105 = v176;
    v106 = sub_1CF6E2768(*&v215[*(v85 + 64) + 8], v200, v201, v202, v175);
    if (v103)
    {
      return (*(v211 + 8))(v105, v199);
    }

    v110 = v106;
    v111 = v107;
    (v212)(v207, v104, v85);
    sub_1CF6FC3E4();
    v112 = swift_allocError();
    *v113 = v110;
    *(v113 + 8) = v111;
    (*(v211 + 8))(v105, v199);
    result = v112;
    v91 = 0;
    v92 = 0;
    v94 = 1;
    v95 = 2;
    v96 = 89;
    v97 = 5;
    goto LABEL_9;
  }

  v99 = v216;
  v100 = v200;
  v101 = v201;
  v102 = v202;
  sub_1CF6DE894(v215, v200, v201, v202, a10, v231);
  if (v99)
  {
    return (*(v211 + 8))(v176, v199);
  }

  if (!v231[0])
  {
    v114 = v174;
    v216 = 0;
    v115 = sub_1CF07EE34(v210, v174);
    v116 = *(*v100 + 176);
    v172 = *v100 + 176;
    v173 = v116;
    v117 = (v116)(v115);
    v175 = a10;
    v118 = v216;
    sub_1CF6DE894(v114, v117, v101, v102, a10, v237);
    if (v118)
    {

      (*(v198 + 8))(v114, v197);
      return (*(v211 + 8))(v176, v199);
    }

    v120 = v198 + 8;
    v119 = *(v198 + 8);
    v119(v114, v197);

    if (v237[0])
    {
      v121 = v237[0];
      v122 = v242;
      v92 = v241;
      v95 = v240;
      v96 = v239;
      v97 = v238;
      v91 = v237[1];
      (*(v211 + 8))(v176, v199);
LABEL_23:
      (*(v209 + 16))(v207, v215, v210);
      v94 = v122;
      result = v121;
      goto LABEL_9;
    }

    sub_1CF6E1A6C(v215, v100, v101, v102, v175, v243);
    if (v243[0])
    {
      v121 = v243[0];
      v122 = v248;
      v92 = v247;
      v95 = v246;
      v96 = v245;
      v97 = v244;
      v91 = v243[1];
      (*(v211 + 8))(v176, v199);
      goto LABEL_23;
    }

    v123 = v196;
    sub_1CF6DF4BC(v196, v215, v100, v214 + 1, v101, v203, v204, v102, &v227, v175);
    v174 = v119;
    v198 = v120;
    v216 = 0;
    v91 = *(&v227 + 1);
    v97 = v228;
    v96 = BYTE1(v228);
    v95 = BYTE2(v228);
    v170 = *(&v228 + 1);
    v171 = v227;
    LODWORD(v215) = v229;
    if (v230)
    {
      v124 = sub_1CF07EE34(v210, v195);
      v125 = (v173)(v124);
      v173 = &v169;
      MEMORY[0x1EEE9AC00](v125);
      v126 = v205;
      *(&v169 - 8) = v217;
      *(&v169 - 7) = v126;
      v127 = v202;
      v128 = v255;
      *(&v169 - 6) = v202;
      *(&v169 - 5) = v128;
      v129 = v175;
      *(&v169 - 4) = v206;
      *(&v169 - 3) = v129;
      v168 = v204;
      v130 = v216;
      sub_1CF6DF4BC(v194, v195, v125, v214 + 1, v201, sub_1CF6FC438, (&v169 - 10), v127, v220, v129);
      v216 = v130;
      if (v130)
      {

        sub_1CEFCCC44(&v227, &qword_1EC4C27D8, &qword_1CFA129F8);
        v174(v195, v197);
        (*(v209 + 8))(v196, v210);
        return (*(v211 + 8))(v176, v199);
      }

      v174(v195, v197);

      if ((v226 & 1) == 0)
      {
        LODWORD(v215) = v225;
        v133 = v224;
        v95 = v223;
        v96 = v222;
        v97 = v221;
        v134 = v220[0];
        v91 = v220[1];
        v135 = v197;
        v136 = v194;
        sub_1CF07EE34(v197, v207);
        sub_1CEFCCC44(&v227, &qword_1EC4C27D8, &qword_1CFA129F8);
        v174(v136, v135);
        (*(v209 + 8))(v196, v210);
        (*(v211 + 8))(v176, v199);
        result = v134;
        v92 = v133;
        v94 = v215;
        goto LABEL_9;
      }

      if (sub_1CF07F1A0(v210))
      {
        v131 = v191;
        (*(v189 + 16))(v191, &v196[*(v210 + 52)], v190);
        if ((*(v192 + 48))(v131, 1, v193) == 1)
        {
          (*(v189 + 8))(v191, v190);
        }

        else
        {
          v138 = v185;
          (*(v192 + 32))(v185, v191, v193);
          v139 = v216;
          v140 = (*(**(v200 + 3) + 376))(v138, 23, 0, 1, v201, v202, v175);
          v216 = v139;
          if (v139)
          {
            sub_1CEFCCC44(&v227, &qword_1EC4C27D8, &qword_1CFA129F8);
            sub_1CEFCCC44(v220, &qword_1EC4C27D8, &qword_1CFA129F8);
            (*(v192 + 8))(v185, v193);
LABEL_47:
            v174(v194, v197);
            (*(v209 + 8))(v196, v210);
            return (*(v211 + 8))(v176, v199);
          }

          *&v218 = v140;
          v145 = TupleTypeMetadata2;
          sub_1CF9E6E58();
          swift_getWitnessTable();
          v146 = v181;
          sub_1CF9E7118();

          if ((*(*(v145 - 8) + 48))(v146, 1, v145) == 1)
          {
            (*(v177 + 8))(v181, v178);
            (*(v192 + 8))(v185, v193);
          }

          else
          {
            v147 = &v181[*(TupleTypeMetadata2 + 48)];
            v148 = *v147;
            v150 = *(v147 + 4);
            v149 = *(v147 + 5);
            v151 = *(v147 + 8);
            (*(*(v179 - 8) + 8))();
            if (v148 == 2)
            {
              if (v150 >= *&v196[*(v210 + 64) + 8])
              {
                sub_1CF6FC3E4();
                v165 = swift_allocError();
                *v166 = v149;
                *(v166 + 8) = 14;
                v167 = v149;

                (*(v192 + 8))(v185, v193);
                v149 = v165;
                goto LABEL_61;
              }

              (*(v192 + 8))(v185, v193);
            }

            else
            {
              (*(v192 + 8))(v185, v193);
              v154 = v149;

              if (v149)
              {
                goto LABEL_61;
              }
            }
          }
        }

        v132 = v186;
        (*(v183 + 16))(v186, v196, v184);
        if ((*(v187 + 48))(v132, 1, v188) == 1)
        {
          (*(v183 + 8))(v186, v184);
LABEL_60:
          v149 = 0;
          goto LABEL_61;
        }

        (*(v187 + 32))(v182, v186, v188);
        v219 = v212;
        v218 = v213;
        type metadata accessor for SQLDatabase();
        if (!swift_dynamicCastClass())
        {
          (*(v187 + 8))(v182, v188);
          goto LABEL_60;
        }

        v141 = *(sub_1CF478C28() + 32);

        v142 = v216;
        sub_1CF354C98(v182, v201, v217, v205, v202, v255, v206, v175);
        v216 = v142;
        if (v142)
        {
          sub_1CEFCCC44(&v227, &qword_1EC4C27D8, &qword_1CFA129F8);

          sub_1CEFCCC44(v220, &qword_1EC4C27D8, &qword_1CFA129F8);

          (*(v187 + 8))(v182, v188);
          goto LABEL_47;
        }

        v152 = v143;

        if ((v152 & 1) == 0)
        {
          (*(v187 + 8))(v182, v188);

          goto LABEL_60;
        }

        sub_1CF6FC3E4();
        v149 = swift_allocError();
        *v153 = 38;
        *(v153 + 8) = 18;

        (*(v187 + 8))(v182, v188);
LABEL_61:
        v155 = v210;
        v156 = v196;
        v157 = *&v196[*(v210 + 64) + 8];
        v158 = sub_1CF72A344(v157, 3, v149, 0x10u);
        v160 = v159;
        v161 = v209;
        (*(v209 + 16))(v207, v156, v155);
        sub_1CF6FC3E4();
        v162 = swift_allocError();
        *v163 = v158;
        *(v163 + 8) = v160;
        sub_1CEFCCC44(&v227, &qword_1EC4C27D8, &qword_1CFA129F8);
        sub_1CEFCCC44(v220, &qword_1EC4C27D8, &qword_1CFA129F8);

        v174(v194, v197);
        v164 = v155;
        v92 = v157;
        (*(v161 + 8))(v156, v164);
        (*(v211 + 8))(v176, v199);
        result = v162;
        v91 = 0;
        v94 = 0;
        v95 = 1;
        v96 = 23;
        v97 = 2;
        goto LABEL_9;
      }

      if (*&v196[*(type metadata accessor for ItemReconciliationHalf() + 76)])
      {
        v137 = v216;
        sub_1CF6F3FE4(v196, v217, v205, v255, v206, v249);
        if (v137)
        {
          sub_1CEFCCC44(&v227, &qword_1EC4C27D8, &qword_1CFA129F8);
          sub_1CEFCCC44(v220, &qword_1EC4C27D8, &qword_1CFA129F8);
          v174(v194, v197);
          (*(v209 + 8))(v196, v210);
          return (*(v211 + 8))(v176, v199);
        }

        v91 = v249[1];
        v97 = v250;
        v96 = v251;
        v95 = v252;
        v170 = v253;
        v171 = v249[0];
        v144 = v254;
        sub_1CEFCCC44(&v227, &qword_1EC4C27D8, &qword_1CFA129F8);
        sub_1CEFCCC44(v220, &qword_1EC4C27D8, &qword_1CFA129F8);
        v174(v194, v197);
        (*(v211 + 8))(v176, v199);
        (*(v209 + 32))(v207, v196, v210);
        v94 = v144;
        v92 = v170;
        result = v171;
        goto LABEL_9;
      }

      sub_1CEFCCC44(v220, &qword_1EC4C27D8, &qword_1CFA129F8);
      v174(v194, v197);
      (*(v211 + 8))(v176, v199);
      (*(v209 + 32))(v207, v196, v210);
    }

    else
    {
      (*(v211 + 8))(v176, v199);
      (*(v209 + 32))(v207, v123, v210);
    }

    v92 = v170;
    result = v171;
    v94 = v215;
    goto LABEL_9;
  }

  v108 = v231[0];
  v109 = v236;
  v92 = v235;
  v95 = v234;
  v96 = v233;
  v97 = v232;
  v91 = v231[1];
  (*(v211 + 8))(v176, v199);
  (*(v209 + 16))(v207, v215, v210);
  v94 = v109;
  result = v108;
LABEL_9:
  v98 = v208;
  *v208 = result;
  v98[1] = v91;
  *(v98 + 16) = v97;
  *(v98 + 17) = v96;
  *(v98 + 18) = v95;
  v98[3] = v92;
  *(v98 + 32) = v94 & 1;
  return result;
}

uint64_t sub_1CF6DDC04@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v110 = a8;
  v108 = a7;
  v95 = a6;
  v94 = a5;
  v111 = a4;
  v93 = a3;
  v112 = a9;
  v113 = a1;
  v10 = *a2;
  v11 = (*a2)[12];
  v12 = (*a2)[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = v10[13];
  v109 = a2;
  v15 = v10[11];
  v118 = AssociatedTypeWitness;
  v119 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v121 = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for ReconciliationID();
  v102 = *(v16 - 8);
  v103 = v16;
  v17 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v89 - v18;
  v118 = v12;
  v119 = v15;
  AssociatedConformanceWitness = v11;
  v121 = v14;
  v19 = type metadata accessor for ItemReconciliation();
  v92 = sub_1CF9E75D8();
  v91 = *(v92 - 8);
  v20 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v101 = &v89 - v21;
  v98 = *(v19 - 8);
  v22 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v97 = &v89 - v26;
  v27 = type metadata accessor for SnapshotItem();
  v28 = sub_1CF9E75D8();
  v99 = *(v28 - 8);
  v29 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v89 - v30;
  v106 = v27;
  v107 = *(v27 - 8);
  v32 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v105 = &v89 - v34;
  v35 = sub_1CF9E75D8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v89 - v38;
  v40 = *(AssociatedTypeWitness - 1);
  v41 = *(v40 + 64);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v89 - v44;
  (*(v36 + 16))(v39, v113, v35, v43);
  if ((*(v40 + 48))(v39, 1, AssociatedTypeWitness) == 1)
  {
    (*(v36 + 8))(v39, v35);
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
LABEL_4:
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    return (*(*(TupleTypeMetadata3 - 8) + 56))(v112, 1, 1, TupleTypeMetadata3);
  }

  v48 = *(v40 + 32);
  v104 = AssociatedTypeWitness;
  v48(v45, v39, AssociatedTypeWitness);
  v49 = v114;
  v50 = (*(*v109[4] + 496))(v45, 0, v111, v108, v110);
  v114 = v49;
  if (!v49)
  {
    v52 = v50;
    v90 = v45;

    v118 = v52;
    v53 = v106;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v54 = v107;
    if ((*(v107 + 48))(v31, 1, v53) == 1)
    {
      (*(v40 + 8))(v90, v104);
      (*(v99 + 8))(v31, v28);

      goto LABEL_3;
    }

    v55 = v105;
    (*(v54 + 32))(v105, v31, v53);
    v56 = v55;

    v57 = v54;
    v58 = v109[2];
    v59 = v100;
    (*(v40 + 16))(v100, v55, v104);
    v60 = v103;
    swift_storeEnumTagMultiPayload();
    v61 = v101;
    v62 = v114;
    sub_1CF68DB40(v59, v111, v108, v110, v101);
    v114 = v62;
    if (v62)
    {
      (*(v102 + 8))(v59, v60);
      (*(v57 + 8))(v56, v53);
LABEL_14:
      v51 = v104;
      v45 = v90;
      return (*(v40 + 8))(v45, v51);
    }

    (*(v102 + 8))(v59, v60);
    v63 = v98;
    v64 = v19;
    if ((*(v98 + 48))(v61, 1, v19) == 1)
    {
      (*(v107 + 8))(v105, v53);
      (*(v40 + 8))(v90, v104);
      (*(v91 + 8))(v61, v92);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
      goto LABEL_4;
    }

    v65 = v97;
    (*(v63 + 32))(v97, v61, v64);
    v66 = v114;
    sub_1CF6DC314(&v118, v96, v65, v109, v93, v111, v94, v95, v108, v110);
    v114 = v66;
    if (v66)
    {
      (*(v63 + 8))(v65, v64);
      (*(v107 + 8))(v105, v53);
      goto LABEL_14;
    }

    v67 = v118;
    v68 = v121;
    v69 = v122;
    v123 = v118;
    v70 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v71 = swift_dynamicCast();
    v72 = v112;
    if (!v71)
    {
      goto LABEL_31;
    }

    if (v119 != 11)
    {
      if (v119 != 18 || v118)
      {
        sub_1CF6FC470(v118, v119);
LABEL_31:
        LODWORD(v111) = v69;
        v113 = v68;

        v78 = v67;
        v76 = v67;
        goto LABEL_32;
      }

LABEL_28:

      v113 = *(v113 + *(v64 + 64) + 8);
      v73 = sub_1CF72A344(v113, 1, 0x1B, 0x12u);
      v75 = v74;
      sub_1CF6FC3E4();
      v76 = swift_allocError();
      LODWORD(v111) = 0;
      *v77 = v73;
      *(v77 + 8) = v75;
      v72 = v112;
LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
      v79 = swift_getTupleTypeMetadata3();
      v112 = *(v79 + 48);
      v80 = v64;
      v110 = v72 + *(v79 + 64);
      v81 = v98;
      v82 = v96;
      (*(v98 + 16))(v72, v96, v80);
      sub_1CF6FC3E4();
      v83 = swift_allocError();
      *v84 = v76;
      *(v84 + 8) = 2;
      v85 = v76;
      v109 = sub_1CF72AC6C(v83, v76);

      v86 = *(v81 + 8);
      v86(v82, v80);
      v86(v97, v80);
      (*(v107 + 8))(v105, v106);
      (*(v40 + 8))(v90, v104);

      v87 = v113;
      v88 = v110;
      *(v72 + v112) = v109;
      *v88 = v87;
      *(v88 + 8) = v111;
      return (*(*(v79 - 8) + 56))(v72, 0, 1, v79);
    }

    v117 = v118;
    if (swift_dynamicCast())
    {
      if (v116 == 18 && !v115)
      {

        goto LABEL_28;
      }

      sub_1CF6FC470(v115, v116);
    }

    goto LABEL_31;
  }

  v51 = v104;
  return (*(v40 + 8))(v45, v51);
}

void sub_1CF6DE894(uint64_t a1@<X0>, void *a2@<X1>, char **a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v134 = a6;
  v130 = a5;
  v131 = a3;
  v132 = a4;
  v129 = *a2;
  v7 = v129[12];
  v133 = a2;
  v8 = v129[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v121 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v121 - v19;
  (*(v11 + 16))(v14, a1, v10, v18);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v10);
LABEL_3:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = v134;
LABEL_4:
    *v24 = v21;
    *(v24 + 8) = 0;
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    *(v24 + 32) = 0;
    return;
  }

  (*(v15 + 32))(v20, v14, AssociatedTypeWitness);
  v25 = sub_1CF6FC3E4();
  v26 = swift_allocError();
  *v27 = 0;
  *(v27 + 8) = 18;
  v28 = type metadata accessor for ItemReconciliationHalf();
  v29 = AssociatedTypeWitness;
  if (*(a1 + *(v28 + 52)) == 1)
  {
    v125 = v25;
    v126 = AssociatedTypeWitness;
    v127 = v26;
    v128 = v15;
    v124 = a1;
    v30 = v20;
    v31 = v133[3];
    v32 = v129[11];
    v33 = v129[13];
    v136 = v8;
    v137 = v32;
    v138 = v7;
    v139 = v33;
    v129 = type metadata accessor for ItemJob();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v35 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
    v36 = *(v35 + 52);
    v37 = (*(v35 + 48) + 7) & 0x1FFFFFFF8;
    swift_allocObject();
    v38 = sub_1CF9E6D68();
    v40 = v39;
    v136 = v8;
    v137 = v32;
    v138 = v7;
    v139 = v33;
    *v39 = type metadata accessor for Ingestion.FetchContent();
    v136 = v8;
    v137 = v32;
    v138 = v7;
    v139 = v33;
    v40[1] = type metadata accessor for Ingestion.FetchChildrenMetadata();
    v41 = sub_1CF045898(v38);
    v42 = v130;
    v43 = v135;
    v44 = (*(*v31 + 312))(v30, v41, v131, v132, v130);
    if (v43)
    {
      (*(v128 + 8))(v30, v126);

      v45 = v127;
LABEL_11:

      return;
    }

    v122 = v33;
    v123 = v30;
    v135 = 0;
    v50 = v44;

    v136 = v50;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v51 = v141;

    if (v51)
    {
      v136 = v8;
      v137 = v32;
      v129 = v32;
      v52 = v122;
      v138 = v7;
      v139 = v122;
      v53 = type metadata accessor for ItemReconciliation();
      v54 = v124;
      v55 = *(v124 + *(v53 + 64) + 8);

      v57 = v55;
      v58 = v42;
      v59 = v133;
      v60 = v135;
      sub_1CF72A56C(v56, v57, v133, v131, v132, v58);
      v62 = v127;
      v63 = (v128 + 8);
      v135 = v60;
      if (v60)
      {

        (*v63)(v123, v126);
        return;
      }

      v21 = v61;
      v77 = v61;

      v78 = sub_1CF03D760();

      (*v63)(v123, v126);

      v76 = v78 << 8;
      v24 = v134;
      v74 = v129;
    }

    else
    {
      v21 = swift_allocError();
      *v73 = 23;
      *(v73 + 8) = 18;

      (*(v128 + 8))(v123, v126);
      v136 = v8;
      v137 = v32;
      v74 = v32;
      v52 = v122;
      v138 = v7;
      v139 = v122;
      v75 = type metadata accessor for ItemReconciliation();
      v54 = v124;
      if (*(v124 + *(v75 + 56)) == 1)
      {
        v76 = 1536;
      }

      else
      {
        v76 = 5888;
      }

      v59 = v133;
      v24 = v134;
    }

    v136 = v8;
    v137 = v74;
    v138 = v7;
    v139 = v52;
    v23 = *(v54 + *(type metadata accessor for ItemReconciliation() + 64) + 8);
    v79 = *(v59 + 32);
    v80 = sub_1CF056558();
    v81 = 1;
    if (!v80)
    {
      v81 = 2;
    }

    v82 = 0x10000;
    if (!*(v79 + 32))
    {
      v82 = 0;
    }

    v22 = v81 | v82 | v76;
    goto LABEL_4;
  }

  v46 = v133;
  if (*(a1 + *(v28 + 64) + 16) != 2)
  {
    (*(v15 + 8))(v20, v29);

    goto LABEL_3;
  }

  v125 = v25;
  v128 = v15;
  v47 = v133[3];
  v48 = v135;
  v49 = (*(*v47 + 264))(v20, v131, v132, v130);
  if (v48)
  {
    (*(v128 + 8))(v20, v29);
    v45 = v26;
    goto LABEL_11;
  }

  v123 = v20;
  if (v49)
  {
    v126 = v29;
    v127 = v26;
    v135 = 0;
    v136 = v8;
    v64 = v129[11];
    v65 = v129[13];
    v137 = v64;
    v138 = v7;
    v129 = v65;
    v139 = v65;
    v66 = v49;
    v67 = *(a1 + *(type metadata accessor for ItemReconciliation() + 64) + 8);
    v68 = *(*v46 + 176);

    v70 = v68(v69);
    v71 = v135;
    sub_1CF72A56C(v66, v67, v70, v131, v132, v130);
    v135 = v71;
    if (v71)
    {

      (*(v128 + 8))(v123, v126);
      return;
    }

    v21 = v72;
    v122 = v64;
    v124 = a1;

    v92 = v21;

    v93 = sub_1CF03D760();

    v24 = v134;
    v29 = v126;
    goto LABEL_33;
  }

  v83 = (*(*v47 + 296))(v123, v131, v132, v130);
  v126 = v47;
  v127 = v26;
  v124 = a1;
  v135 = 0;
  v136 = v8;
  v141 = v83;
  v84 = v129[11];
  v85 = v129[13];
  v137 = v84;
  v138 = v7;
  v139 = v85;
  type metadata accessor for Ingestion.MergeItems();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7118();
  v86 = v140;

  if (v86)
  {
    v136 = v8;
    v137 = v84;
    v138 = v7;
    v139 = v85;
    v87 = *(v124 + *(type metadata accessor for ItemReconciliation() + 64) + 8);

    v89 = v87;
    v90 = v135;
    sub_1CF72A56C(v88, v89, v46, v131, v132, v130);
    v135 = v90;
    if (!v90)
    {
      v21 = v91;
      v122 = v84;
      v110 = v91;

      v93 = sub_1CF03D760();

      v24 = v134;
      goto LABEL_34;
    }

LABEL_31:

    (*(v128 + 8))(v123, v29);
    return;
  }

  v136 = v8;
  v137 = v84;
  v138 = v7;
  v139 = v85;
  v121[1] = type metadata accessor for ItemJob();
  v99 = swift_getMetatypeMetadata();
  v100 = sub_1CF656CD8(v99, v99);
  v101 = *(v100 + 52);
  v102 = (*(v100 + 48) + 7) & 0x1FFFFFFF8;
  swift_allocObject();
  v103 = sub_1CF9E6D68();
  v136 = v8;
  v137 = v84;
  v138 = v7;
  v139 = v85;
  *v104 = type metadata accessor for Ingestion.DeleteRejectedItemInTree();
  v105 = sub_1CF045898(v103);
  v106 = v84;
  v107 = v123;
  v108 = v135;
  v109 = (*(*v126 + 312))(v123, v105, v131, v132, v130);
  v135 = v108;
  if (!v108)
  {
    v129 = v85;
    v122 = v106;
    v111 = v109;

    v136 = v111;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v112 = v141;

    if (!v112)
    {
      v21 = swift_allocError();
      *v119 = 22;
      *(v119 + 8) = 18;

      v120 = v21;
      v93 = 89;
      v24 = v134;
LABEL_33:
      v85 = v129;
LABEL_34:
      (*(v128 + 8))(v123, v29);

      v136 = v8;
      v137 = v122;
      v138 = v7;
      v139 = v85;
      v23 = *(v124 + *(type metadata accessor for ItemReconciliation() + 64) + 8);
      v94 = v46[4];
      v95 = sub_1CF056558();
      v96 = 1;
      if (!v95)
      {
        v96 = 2;
      }

      v97 = v96 | (v93 << 8);
      v98 = 0x10000;
      if (!*(v46[5] + 32))
      {
        v98 = 0;
      }

      v22 = v98 | v97;
      goto LABEL_4;
    }

    v136 = v8;
    v137 = v122;
    v85 = v129;
    v138 = v7;
    v139 = v129;
    v113 = *(v124 + *(type metadata accessor for ItemReconciliation() + 64) + 8);

    v115 = v113;
    v116 = v135;
    sub_1CF72A56C(v114, v115, v46, v131, v132, v130);
    v135 = v116;
    v24 = v134;
    if (!v116)
    {
      v21 = v117;
      v118 = v117;

      v93 = sub_1CF03D760();

      goto LABEL_34;
    }

    goto LABEL_31;
  }

  (*(v128 + 8))(v107, v29);
}

void sub_1CF6DF4BC(char *a1@<X0>, char *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, char **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>, void *a10)
{
  v331 = a4;
  v336 = a8;
  v332 = a6;
  v333 = a7;
  v338 = a5;
  v341 = a2;
  v329 = a9;
  v330 = a1;
  v11 = *a3;
  v12 = *(*a3 + 104);
  v13 = *(*a3 + 88);
  v337 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v294 = *(v15 - 8);
  v295 = v15;
  v16 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v334 = &v288 - v17;
  v296 = *(AssociatedTypeWitness - 8);
  v18 = *(v296 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v291 = &v288 - v20;
  v21 = *(v11 + 96);
  v339 = a3;
  v22 = *(v11 + 80);
  v23 = v21;
  v24 = swift_getAssociatedTypeWitness();
  v25 = sub_1CF9E75D8();
  v298 = *(v25 - 8);
  v299 = v25;
  v26 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v292 = &v288 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v293 = &v288 - v29;
  v300 = *(v24 - 8);
  v30 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v289 = &v288 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v290 = &v288 - v34;
  v35.i64[0] = v22;
  v35.i64[1] = v13;
  v36.i64[0] = v23;
  v340 = v23;
  v36.i64[1] = v12;
  v343 = v36;
  v344 = v35;
  *v348 = v35;
  *&v348[16] = v36;
  v342 = type metadata accessor for ItemReconciliation();
  v37 = sub_1CF9E75D8();
  v304 = *(v37 - 8);
  v305 = v37;
  v38 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v311 = &v288 - v39;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v326 = v13;
  v327 = v12;
  v41 = v341;
  v42 = swift_getAssociatedConformanceWitness();
  v302 = v24;
  *v348 = v24;
  v297 = AssociatedTypeWitness;
  *&v348[8] = AssociatedTypeWitness;
  *&v348[16] = AssociatedConformanceWitness;
  *&v348[24] = v42;
  v43 = type metadata accessor for ReconciliationID();
  v335 = *(v43 - 8);
  v44 = *(v335 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v312 = &v288 - v45;
  *v348 = v344;
  *&v348[16] = v343;
  v317 = type metadata accessor for PersistenceTrigger();
  v46 = sub_1CF9E75D8();
  v318 = *(v46 - 8);
  v319 = v46;
  v47 = *(v318 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v324 = &v288 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v307 = &v288 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v325 = &v288 - v52;
  v314 = v43;
  v53 = sub_1CF9E75D8();
  v315 = *(v53 - 8);
  v316 = v53;
  v54 = *(v315 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v308 = &v288 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v309 = &v288 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v313 = &v288 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v320 = &v288 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C27E0, &qword_1CFA12A00);
  v63 = v342;
  v301 = v62;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v64 = sub_1CF9E75D8();
  v65 = *(v64 - 8);
  v322 = v64;
  v323 = v65;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v321 = &v288 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v288 - v69;
  v71 = *(v63 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v310 = &v288 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v306 = &v288 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v303 = &v288 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v288 - v80;
  v82 = type metadata accessor for ItemReconciliationHalf();
  if ((v41[*(v82 + 36)] & 4) != 0)
  {
    v288 = v71;
    v96 = v370;
    sub_1CF6DDC04(v41, v339, v331, v338, v332, v333, v336, v337, v70);
    if (v96)
    {
      return;
    }

    v370 = 0;
    v97 = TupleTypeMetadata3;
    if ((*(*(TupleTypeMetadata3 - 8) + 48))(v70, 1, TupleTypeMetadata3) != 1)
    {
      v104 = *&v70[*(v97 + 48)];
      v105 = &v70[*(v97 + 64)];
      v93 = *v105;
      v95 = v105[8];
      v106 = *(v288 + 32);
      v107 = v70;
      v108 = v342;
      v106(v81, v107, v342);
      v109 = *(v339 + 4);
      if (sub_1CF056558())
      {
        v90 = 1;
      }

      else
      {
        v90 = 2;
      }

      v110 = v108;
      v88 = v104;
      v106(v330, v81, v110);
      goto LABEL_13;
    }

    (*(v323 + 8))(v70, v322);
    v71 = v288;
  }

  v83 = &v41[*(v82 + 64)];
  v85 = v343;
  v84 = v344;
  v86 = v334;
  v87 = v335;
  if (v83[16])
  {
    (*(v71 + 16))(v330, v41, v342, v344, v343);
    sub_1CF6E176C(v41, v350);
    v88 = v350[0];
    v89 = v350[1];
    v90 = v351;
    v91 = v352;
    v92 = v353;
    v93 = v354;
    v94 = 1;
    v95 = v355;
    goto LABEL_39;
  }

  v340 = *v83;
  v98 = v340;
  if (!v340)
  {
LABEL_32:
    sub_1CF6FC3E4();
    v126 = swift_allocError();
    *v125 = v340;
    v127 = 17;
LABEL_33:
    *(v125 + 8) = v127;
    v121 = v71;
    v122 = v41;
    v123 = *(v339 + 4);
    if (sub_1CF056558())
    {
      v90 = 1;
    }

    else
    {
      v90 = 2;
    }

    v93 = *&v122[*(v342 + 64) + 8];
    (*(v121 + 16))(v330, v122);
    v88 = v126;
    goto LABEL_37;
  }

  v99 = v324;
  v326 = (v323 + 8);
  v327 = TupleTypeMetadata3 - 8;
  v100 = v332;
  v101 = v333;
  v102 = v331;
  v103 = v325;
  v288 = v71;
  while (1)
  {
    v112 = v98 & -v98;
    if (v112 > 1023)
    {
      if (v112 >= 0x4000)
      {
        if (v112 == 0x4000)
        {
          v128 = v339;
          v129 = v342;
          v130 = v370;
          sub_1CF95B47C(v339, v338, v342, v336, v337, v348);
          if (v130)
          {
            return;
          }

          v131 = v41;
          v370 = 0;
          if (*v348 == 1)
          {
            v132 = 0;
          }

          else
          {
            v364 = *v348;
            v366 = *&v348[24];
            v367 = *&v348[40];
            v368 = *&v348[56];
            v369 = *&v348[72];
            v365 = *&v348[8];
            sub_1CEFCCBDC(v348, v346, &qword_1EC4C27E8, &qword_1CFA12A08);
            v132 = sub_1CF6C7130();
            sub_1CEFCCC44(v348, &qword_1EC4C27E8, &qword_1CFA12A08);
          }

          sub_1CF6FC3E4();
          v149 = swift_allocError();
          *v150 = v132;
          *(v150 + 8) = 10;
          sub_1CEFCCC44(v348, &qword_1EC4C27E8, &qword_1CFA12A08);
          v151 = *(v128 + 4);
          if (sub_1CF056558())
          {
            v90 = 1;
          }

          else
          {
            v90 = 2;
          }

          v93 = *&v131[*(v129 + 64) + 8];
          v152 = v129;
          v88 = v149;
          (*(v71 + 16))(v330, v131, v152);
          goto LABEL_37;
        }

        if (v112 == 0x100000)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v112 == 1024)
        {
          goto LABEL_30;
        }

        if (v112 == 4096)
        {
          sub_1CF6FC3E4();
          v126 = swift_allocError();
          *v125 = 19;
          v127 = 18;
          goto LABEL_33;
        }
      }

      goto LABEL_15;
    }

    if (v112 == 512)
    {
      v113 = v321;
      v114 = v102;
      v115 = v100;
      v116 = v101;
      v117 = v370;
      sub_1CF6DAE10(v41, v339, v102, v338, v100, v101, v336, v337, v321);
      if (v117)
      {
        return;
      }

      v370 = 0;
      if ((*(*(TupleTypeMetadata3 - 8) + 48))(v113, 1) != 1)
      {
        v160 = *(v113 + *(TupleTypeMetadata3 + 48));
        v161 = v113 + *(TupleTypeMetadata3 + 64);
        v93 = *v161;
        v95 = *(v161 + 8);
        v162 = v288;
        v164 = v288 + 32;
        v163 = *(v288 + 32);
        v165 = v310;
        v340 = v160;
        v341 = v163;
        (v163)(v310);
        *v348 = v344;
        *&v348[16] = v343;
        type metadata accessor for ReconciliationTable();
        v166 = v307;
        (*(*(v317 - 8) + 56))(v307, 1, 1);
        v167 = v339;
        v168 = v370;
        v169 = sub_1CF6A5608(v309, 512, v165, v166, 0, v339, v338, v336, v337);
        v170 = (v318 + 8);
        v370 = v168;
        if (v168)
        {

          (*v170)(v166, v319);
          (*(v162 + 8))(v310, v342);
          return;
        }

        v344.i64[0] = v164;
        v185 = BYTE1(v169);
        (*v170)(v166, v319);
        (*(v315 + 8))(v309, v316);
        if (sub_1CF670F38(v185) == 0x65526D6165727473 && v186 == 0xEB00000000746573)
        {

          goto LABEL_84;
        }

        v193 = sub_1CF9E8048();

        v88 = v340;
        v194 = v341;
        v195 = v310;
        if (v193)
        {
LABEL_84:
          v196 = sub_1CF9E57E8();
          v197 = [v196 underlyingErrors];
          v198 = sub_1CF9E6D48();

          sub_1CF6FC3E4();
          v199 = swift_allocError();
          *v200 = 18;
          *(v200 + 8) = 18;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v198 = sub_1CF1F6CD4(0, v198[2] + 1, 1, v198);
          }

          v202 = v198[2];
          v201 = v198[3];
          if (v202 >= v201 >> 1)
          {
            v198 = sub_1CF1F6CD4((v201 > 1), v202 + 1, 1, v198);
          }

          v198[2] = v202 + 1;
          v198[v202 + 4] = v199;
          v203 = [v196 userInfo];
          v204 = sub_1CF9E6638();

          v205 = *MEMORY[0x1E696A750];
          v206 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v208 = v207;
          *&v348[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27F0, &unk_1CFA12A10);
          *v348 = v198;
          sub_1CEFE9EB8(v348, v346);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v345[0] = v204;
          sub_1CF1D154C(v346, v206, v208, isUniquelyReferenced_nonNull_native);

          v210 = [v196 domain];
          if (!v210)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v210 = sub_1CF9E6888();
          }

          v211 = [v196 code];
          v212 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v213 = sub_1CF9E6618();

          v88 = [v212 initWithDomain:v210 code:v211 userInfo:v213];

          v214 = *(v339 + 4);
          if (sub_1CF056558())
          {
            v90 = 1;
          }

          else
          {
            v90 = 2;
          }

          (v341)(v330, v310, v342);
        }

        else
        {
          v234 = *(v167 + 4);
          if (sub_1CF056558())
          {
            v90 = 1;
          }

          else
          {
            v90 = 2;
          }

          (v194)(v330, v195, v342);
        }

LABEL_13:
        v89 = 0;
LABEL_38:
        v94 = 0;
        v92 = 2;
        v91 = 89;
        goto LABEL_39;
      }

      (*v326)(v113, v322);
      v85 = v343;
      v84 = v344;
      v101 = v116;
      v100 = v115;
      v102 = v114;
      v86 = v334;
      v87 = v335;
      v99 = v324;
      v103 = v325;
      v71 = v288;
      goto LABEL_15;
    }

    if (v112 <= 0x10 && ((1 << v112) & 0x10114) != 0)
    {
LABEL_30:
      *v348 = v84;
      *&v348[16] = v85;
      type metadata accessor for ReconciliationTable();
      (*(*(v317 - 8) + 56))(v103, 1, 1);
      v118 = v320;
      v119 = v336;
      v120 = v370;
      sub_1CF6A5608(v320, v112, v41, v103, 0, v339, v338, v336, v337);
      v370 = v120;
      if (v120)
      {
        (*(v318 + 8))(v325, v319);
        return;
      }

      (*(v318 + 8))(v325, v319);
      v133 = v118;
      v135 = v315;
      v134 = v316;
      v136 = v313;
      (*(v315 + 16))(v313, v133, v316);
      v137 = *(v87 + 48);
      v138 = v87;
      v139 = v314;
      if (v137(v136, 1, v314) == 1)
      {
        (*(v135 + 8))(v136, v134);
        v140 = v342;
        goto LABEL_46;
      }

      v143 = v312;
      (*(v138 + 32))(v312, v136, v139);
      v144 = *(v339 + 2);
      v145 = v311;
      v146 = v337;
      v147 = v370;
      sub_1CF68DB40(v143, v338, v119, v337, v311);
      v370 = v147;
      v148 = v146;
      v140 = v342;
      if (v147)
      {
        (*(v138 + 8))(v143, v139);
        goto LABEL_52;
      }

      v153 = v145;
      v154 = v288;
      if ((*(v288 + 48))(v153, 1, v342) != 1)
      {
        v171 = *(v154 + 32);
        v172 = v303;
        v344.i64[0] = v154 + 32;
        v343.i64[0] = v171;
        v171(v303, v153, v140);
        v173 = v370;
        sub_1CF6DC314(v348, v306, v172, v339, v331, v338, v332, v333, v336, v148);
        v370 = v173;
        v174 = v335;
        if (!v173)
        {
          v187 = *v348;
          v93 = *&v348[24];
          v188 = v140;
          v95 = v348[32];
          v189 = *v348;
          v190 = v112;
          v191 = v187;
          v340 = sub_1CF72ADB4(v190, v187);

          (*(v288 + 8))(v172, v188);
          (*(v174 + 8))(v312, v139);
          (*(v315 + 8))(v320, v316);
          v192 = *(v339 + 4);
          LOBYTE(v192) = sub_1CF056558();

          if (v192)
          {
            v90 = 1;
          }

          else
          {
            v90 = 2;
          }

          (v343.i64[0])(v330, v306, v188);
          v88 = v340;
          goto LABEL_13;
        }

        (*(v154 + 8))(v172, v140);
        (*(v174 + 8))(v312, v139);
LABEL_52:
        (*(v315 + 8))(v320, v316);
        return;
      }

      (*(v335 + 8))(v312, v139);
      (*(v304 + 8))(v153, v305);
      v135 = v315;
      v134 = v316;
LABEL_46:
      v141 = sub_1CF72ADB4(v112, 0);
      (*(v135 + 8))(v320, v134);
      v142 = *(v339 + 4);
      if (sub_1CF056558())
      {
        v90 = 1;
      }

      else
      {
        v90 = 2;
      }

      v93 = *&v341[*(v140 + 64) + 8];
      (*(v288 + 16))(v330);
      v88 = v141;
LABEL_37:
      v89 = 0;
      v95 = 0;
      goto LABEL_38;
    }

    if (v112 == 256)
    {
      break;
    }

LABEL_15:
    v111 = v98 == v112;
    v98 ^= v112;
    if (v111)
    {
      goto LABEL_32;
    }
  }

  *v348 = v84;
  *&v348[16] = v85;
  type metadata accessor for ReconciliationTable();
  (*(*(v317 - 8) + 56))(v99, 1, 1);
  v155 = v308;
  v156 = v339;
  v157 = v336;
  v158 = v370;
  v159 = sub_1CF6A5608(v308, 256, v41, v99, 0, v339, v338, v336, v337);
  v370 = v158;
  if (v158)
  {
    (*(v318 + 8))(v324, v319);
    return;
  }

  v175 = BYTE1(v159);
  (*(v318 + 8))(v324, v319);
  (*(v315 + 8))(v155, v316);
  if (v175 == 20)
  {
    v223 = v298;
    v222 = v299;
    v224 = v292;
    (*(v298 + 16))(v292, v341, v299);
    v225 = v300;
    v226 = v302;
    if ((*(v300 + 48))(v224, 1, v302) == 1)
    {
      (*(v223 + 8))(v224, v222);
    }

    else
    {
      v246 = v289;
      (*(v225 + 32))(v289, v224, v226);
      v247 = *(v156 + 3);
      *v348 = v344;
      *&v348[16] = v343;
      type metadata accessor for ItemJob();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v249 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      v250 = *(v249 + 52);
      v251 = (*(v249 + 48) + 7) & 0x1FFFFFFF8;
      swift_allocObject();
      v252 = sub_1CF9E6D68();
      *v348 = v344;
      *&v348[16] = v343;
      *v253 = type metadata accessor for Ingestion.FaultDirectoryInTree();
      v254 = sub_1CF045898(v252);
      v255 = v370;
      v256 = (*(*v247 + 312))(v246, v254, v338, v336, v337);
      v370 = v255;
      if (v255)
      {
        (*(v225 + 8))(v246, v302);
        goto LABEL_126;
      }

      v277 = v256;

      *v348 = v277;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      sub_1CF9E7118();
      v278 = *&v346[0];
      if (*&v346[0])
      {

        v279 = v370;
        sub_1CF72A56C(v278, *&v341[*(v342 + 64) + 8], v156, v338, v336, v337);
        v370 = v279;
        if (v279)
        {

          (*(v300 + 8))(v289, v302);
          return;
        }

        v88 = v280;

        (*(v300 + 8))(v289, v302);
        v227 = v342;
LABEL_105:
        v229 = *(v156 + 4);
        if (sub_1CF056558())
        {
          v90 = 1;
        }

        else
        {
          v90 = 2;
        }

        v92 = *(v229 + 32);
        v93 = *&v341[*(v227 + 64) + 8];
        (*(v288 + 16))(v330);
        v89 = 0;
        v95 = 0;
        v94 = 0;
        v91 = 14;
        goto LABEL_39;
      }

      (*(v300 + 8))(v289, v302);
    }

    v227 = v342;
    sub_1CF6FC3E4();
    v88 = swift_allocError();
    *v228 = 26;
    *(v228 + 8) = 18;
    goto LABEL_105;
  }

  v176 = v342;
  if (v175 == 19)
  {
    v216 = v294;
    v215 = v295;
    (*(v294 + 16))(v86, &v341[*(v342 + 52)], v295);
    v218 = v296;
    v217 = v297;
    if ((*(v296 + 48))(v86, 1, v297) == 1)
    {
      (*(v216 + 8))(v86, v215);
    }

    else
    {
      v235 = v291;
      (*(v218 + 32))(v291, v86, v217);
      v236 = *(v339 + 3);
      v343 = vextq_s8(v343, v343, 8uLL);
      v344 = vextq_s8(v344, v344, 8uLL);
      *v348 = v344;
      *&v348[16] = v343;
      type metadata accessor for ItemJob();
      v237 = swift_getMetatypeMetadata();
      v238 = sub_1CF656CD8(v237, v237);
      v239 = *(v238 + 52);
      v240 = (*(v238 + 48) + 7) & 0x1FFFFFFF8;
      swift_allocObject();
      v241 = sub_1CF9E6D68();
      *v348 = v344;
      *&v348[16] = v343;
      *v242 = type metadata accessor for Ingestion.FetchItemMetadata();
      v243 = sub_1CF045898(v241);
      v244 = v370;
      v245 = (*(*v236 + 304))(v235, v243, v338, v157, v337);
      v370 = v244;
      if (v244)
      {
        (*(v218 + 8))(v235, v297);
        goto LABEL_126;
      }

      v269 = v245;

      *v348 = v269;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      sub_1CF9E7118();
      v270 = *&v346[0];
      if (*&v346[0])
      {

        v272 = *&v341[*(v342 + 64) + 8];
        v273 = v339;
        v274 = (*(*v339 + 176))(v271);
        v275 = v370;
        sub_1CF72A56C(v270, v272, v274, v338, v157, v337);
        v370 = v275;
        if (v275)
        {

          (*(v296 + 8))(v291, v297);
          return;
        }

        v287 = v276;

        (*(v296 + 8))(v291, v297);
        v176 = v342;
        v220 = v273;
        v71 = v288;
        v88 = v287;
        goto LABEL_97;
      }

      (*(v296 + 8))(v291, v297);

      v176 = v342;
      v71 = v288;
    }

    sub_1CF6FC3E4();
    v88 = swift_allocError();
    *v219 = 26;
    *(v219 + 8) = 18;
    v220 = v339;
LABEL_97:
    v221 = *(v220 + 4);
    if (sub_1CF056558())
    {
      v90 = 2;
    }

    else
    {
      v90 = 1;
    }

    v92 = *(*(v220 + 5) + 32);
    goto LABEL_101;
  }

  if (v175 != 18)
  {
    v230 = v370;
    sub_1CF95B47C(v156, v338, v342, v157, v337, v348);
    if (!v230)
    {
      v370 = 0;
      v89 = *&v348[8];
      v231 = v348[16];
      v91 = v349;
      if (*v348 != 1)
      {
        v232 = v156;
        v356 = *v348;
        v357 = *&v348[8];
        v358 = v348[16];
        *v359 = *&v348[17];
        *&v359[3] = *&v348[20];
        v93 = *&v348[24];
        v360 = *&v348[24];
        v95 = v348[32];
        v361 = v348[32];
        v362 = *&v348[33];
        *v363 = *&v348[49];
        *&v363[9] = *&v348[58];
        *(v347 + 10) = *&v348[58];
        v346[2] = *&v348[32];
        v347[0] = *&v348[48];
        v346[0] = *v348;
        v346[1] = *&v348[16];
        sub_1CEFF8D38(v346, v345);
        v340 = sub_1CF6C7130();
        if (v340)
        {
          sub_1CEFCCC44(v348, &qword_1EC4C27E8, &qword_1CFA12A08);
          v92 = *(*(v232 + 4) + 32);
          v233 = sub_1CF056558();
          sub_1CEFCCC44(v348, &qword_1EC4C27E8, &qword_1CFA12A08);
          if (v233)
          {
            v90 = 1;
          }

          else
          {
            v90 = 2;
          }

          (*(v288 + 16))(v330, v341, v342);
          v94 = 0;
          v91 = v231;
          v88 = v340;
          goto LABEL_39;
        }

        sub_1CEFCCC44(v348, &qword_1EC4C27E8, &qword_1CFA12A08);
        v176 = v342;
        v156 = v232;
      }

      sub_1CF6FC3E4();
      v88 = swift_allocError();
      *v285 = 26;
      *(v285 + 8) = 18;
      sub_1CEFCCC44(v348, &qword_1EC4C27E8, &qword_1CFA12A08);
      v286 = *(v156 + 4);
      if (sub_1CF056558())
      {
        v90 = 1;
      }

      else
      {
        v90 = 2;
      }

      v93 = *&v341[*(v176 + 64) + 8];
      (*(v288 + 16))(v330);
      v89 = 0;
      v95 = 0;
      v94 = 0;
      v92 = 2;
LABEL_39:
      v124 = v329;
      *v329 = v88;
      v124[1] = v89;
      *(v124 + 16) = v90;
      *(v124 + 17) = v91;
      *(v124 + 18) = v92;
      v124[3] = v93;
      *(v124 + 32) = v95 & 1;
      *(v124 + 33) = v94;
    }

    return;
  }

  v178 = v298;
  v177 = v299;
  v179 = v293;
  (*(v298 + 16))(v293, v341, v299);
  v180 = v300;
  v181 = v302;
  if ((*(v300 + 48))(v179, 1, v302) == 1)
  {
    (*(v178 + 8))(v179, v177);
    goto LABEL_71;
  }

  v257 = v179;
  v258 = v290;
  (*(v180 + 32))(v290, v257, v181);
  v259 = *(v339 + 3);
  *v348 = v344;
  *&v348[16] = v343;
  type metadata accessor for ItemJob();
  v260 = swift_getMetatypeMetadata();
  v261 = sub_1CF656CD8(v260, v260);
  v262 = *(v261 + 52);
  v263 = (*(v261 + 48) + 7) & 0x1FFFFFFF8;
  swift_allocObject();
  v264 = sub_1CF9E6D68();
  *v348 = v344;
  *&v348[16] = v343;
  *v265 = type metadata accessor for Ingestion.FetchItemMetadata();
  v266 = sub_1CF045898(v264);
  v267 = v370;
  v268 = (*(*v259 + 312))(v258, v266, v338, v157, v337);
  v370 = v267;
  if (!v267)
  {
    v281 = v268;

    *v348 = v281;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v282 = *&v346[0];
    if (*&v346[0])
    {

      v183 = v339;
      v283 = v370;
      sub_1CF72A56C(v282, *&v341[*(v342 + 64) + 8], v339, v338, v157, v337);
      v370 = v283;
      if (v283)
      {

        (*(v300 + 8))(v290, v302);
        return;
      }

      v88 = v284;

      (*(v300 + 8))(v290, v302);
      v176 = v342;
      v71 = v288;
    }

    else
    {
      (*(v300 + 8))(v290, v302);

      v176 = v342;
      v71 = v288;
LABEL_71:
      sub_1CF6FC3E4();
      v88 = swift_allocError();
      *v182 = 26;
      *(v182 + 8) = 18;
      v183 = v339;
    }

    v184 = *(v183 + 4);
    if (sub_1CF056558())
    {
      v90 = 1;
    }

    else
    {
      v90 = 2;
    }

    v92 = *(v184 + 32);
LABEL_101:
    v93 = *&v341[*(v176 + 64) + 8];
    (*(v71 + 16))(v330);
    v89 = 0;
    v95 = 0;
    v94 = 0;
    v91 = 3;
    goto LABEL_39;
  }

  (*(v180 + 8))(v258, v302);
LABEL_126:
}

void sub_1CF6E176C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ItemReconciliation();
  v5 = qword_1CFA12DB0[sub_1CF083B80(v4)];
  v6 = *(a1 + *(v4 + 64) + 8);
  v7 = sub_1CF72A344(v6, 1, v5, 0x12u);
  v9 = v8;
  sub_1CF6FC3E4();
  v10 = swift_allocError();
  *v11 = v7;
  *(v11 + 8) = v9;
  sub_1CF6FC470(v5, 0x12u);
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 22789;
  *(a2 + 18) = 2;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
}

void sub_1CF6E184C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unsigned __int8 a5@<W4>, char **a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a1;
  (*(**(a1 + 24) + 280))(a2, a6, a7, a8);
  if (!v9)
  {
    v25 = a8;
    v27 = *(v17 + 80);
    v28 = *(v17 + 96);
    type metadata accessor for Bouncing.BounceItem();
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();

    if (v29)
    {
      sub_1CF6FC3E4();
      v18 = swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 18;
      sub_1CF72A56C(v29, a3, a1, a6, a7, v25);
      v21 = v20;
      v22 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = 8;

      v24 = a5 | ((a4 & 1) << 16) | 0xA00;
    }

    else
    {
      v22 = 0;
      v24 = 0;
      a3 = 0;
    }

    *a9 = v22;
    *(a9 + 8) = 0;
    *(a9 + 16) = v24;
    *(a9 + 24) = a3;
    *(a9 + 32) = 0;
  }
}

uint64_t sub_1CF6E1A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v98 = a5;
  v97 = a4;
  v96 = a3;
  v91 = a1;
  v85 = a6;
  v7 = *a2;
  v8 = *(*a2 + 80);
  v95 = *(*a2 + 96);
  v88 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(v7 + 104);
  v99 = a2;
  v11 = *(v7 + 88);
  v12 = swift_getAssociatedTypeWitness();
  v100 = AssociatedTypeWitness;
  v101 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v103 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ReconciliationID();
  v94 = *(v13 - 8);
  v14 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v74 - v17;
  v83 = sub_1CF9E75D8();
  v82 = *(v83 - 1);
  v18 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v74 - v19;
  v92 = v12;
  v84 = *(v12 - 8);
  v20 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v79 = &v74 - v24;
  v25 = sub_1CF9E75D8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v74 - v28;
  v30 = *(AssociatedTypeWitness - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v87 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v74 - v35;
  v100 = v88;
  v101 = v11;
  AssociatedConformanceWitness = v95;
  v103 = v10;
  v37 = v91;
  v38 = type metadata accessor for ItemReconciliation();
  v95 = *(v37 + v38[15]);
  v80 = v13;
  result = sub_1CF9E6DF8();
  if (result < 1)
  {
    v61 = 0;
    v63 = 0uLL;
    v64 = 0uLL;
LABEL_29:
    v73 = v85;
LABEL_34:
    *v73 = v63;
    *(v73 + 16) = v64;
    *(v73 + 32) = v61;
    return result;
  }

  (*(v26 + 16))(v29, v37, v25);
  if ((*(v30 + 48))(v29, 1, AssociatedTypeWitness) == 1)
  {
    v75 = v30;
    v78 = AssociatedTypeWitness;
    (*(v26 + 8))(v29, v25);
    v40 = v89;
    v41 = v99;
    v42 = v95;
  }

  else
  {
    (*(v30 + 32))(v36, v29, AssociatedTypeWitness);
    v65 = v89;
    sub_1CF6E184C(v99, v36, *(v37 + v38[16] + 8), 0, 2u, v96, v97, v98, v104);
    v40 = v65;
    if (v65)
    {
      return (*(v30 + 8))(v36, AssociatedTypeWitness);
    }

    v86 = v104[1];
    v89 = v104[0];
    v61 = v105;
    result = (*(v30 + 8))(v36);
    if (*&v104[0])
    {
      goto LABEL_33;
    }

    v75 = v30;
    v78 = AssociatedTypeWitness;
    v41 = v99;
    v42 = v95;
  }

  v43 = v82;
  v44 = v81;
  v45 = v83;
  (*(v82 + 16))(v81, v37 + v38[13], v83);
  v46 = v84;
  v47 = (*(v84 + 48))(v44, 1, v92);
  v48 = v38;
  v49 = v90;
  v88 = v48;
  if (v47 == 1)
  {
    (*(v43 + 8))(v44, v45);
    goto LABEL_6;
  }

  v66 = v48;
  v67 = v79;
  v68 = v44;
  v69 = v92;
  v70 = (*(v46 + 32))(v79, v68, v92);
  v71 = (*(*v41 + 176))(v70);
  sub_1CF6E184C(v71, v67, *(v37 + v66[16] + 8), 0, 2u, v96, v97, v98, v106);
  if (v40)
  {
    (*(v46 + 8))(v67, v69);
  }

  v86 = v106[1];
  v89 = v106[0];
  v61 = v107;
  (*(v46 + 8))(v67, v69);

  if (*&v106[0])
  {
LABEL_33:
    v73 = v85;
    v63 = v89;
    v64 = v86;
    goto LABEL_34;
  }

  v41 = v99;
  v42 = v95;
LABEL_6:

  if (!sub_1CF9E6DF8())
  {
LABEL_28:

    sub_1CF6FC3E4();
    result = swift_allocError();
    v61 = 0;
    *v72 = 24;
    *(v72 + 8) = 18;
    v63 = result;
    *&v64 = vdupq_n_s64(0x25905uLL).u64[0];
    *(&v64 + 1) = *(v91 + v88[16] + 8);
    goto LABEL_29;
  }

  v50 = 0;
  v82 = v37 + 8;
  v83 = (v94 + 16);
  v81 = (v94 + 32);
  v76 = (v75 + 4);
  v79 = (v75 + 1);
  v75 = (v84 + 32);
  v84 += 8;
  v51 = v87;
  v52 = v80;
  while (1)
  {
    v54 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v54)
    {
      result = (*(v94 + 16))(v112, v42 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v50, v52);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v77 != 8)
      {
        goto LABEL_39;
      }

      v100 = result;
      (*v83)(v112, &v100, v52);
      result = swift_unknownObjectRelease();
    }

    v55 = v50 + 1;
    v56 = v93;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    (*v81)(v49, v112, v52);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v57 = v49;
      v58 = v92;
      v59 = (*v75)(v56, v57, v92);
      v60 = (*(*v41 + 176))(v59);
      sub_1CF6E184C(v60, v56, *(v82 + v88[16]), 1, 1u, v96, v97, v98, v110);
      if (v40)
      {
        (*v84)(v56, v58);
      }

      v86 = v110[1];
      v89 = v110[0];
      v61 = v111;
      (*v84)(v56, v58);

      if (*&v110[0])
      {
        goto LABEL_32;
      }

      v49 = v90;
      v51 = v87;
    }

    else
    {
      v62 = v78;
      (*v76)(v51, v49, v78);
      sub_1CF6E184C(v41, v51, *(v82 + v88[16]), 0, 2u, v96, v97, v98, v108);
      if (v40)
      {
        (*v79)(v51, v62);
      }

      v86 = v108[1];
      v89 = v108[0];
      v61 = v109;
      (*v79)(v51, v62);
      if (*&v108[0])
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v42 = v95;
    v53 = sub_1CF9E6DF8();
    ++v50;
    v41 = v99;
    if (v55 == v53)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1CF6E2768(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *a2;
  v11 = v36[12];
  v12 = v36[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v28 - v18;
  if (byte_1EC4C23F0 != 2)
  {
    if (byte_1EC4C23F0)
    {
      return sub_1CF72A344(a1, 1, 0x12, 0x12u);
    }

    return 16;
  }

  v29 = v16;
  v30 = v15;
  v31 = a1;
  v20 = a2[3];
  result = (*(*v20 + 584))(a3, a4, a5, v17);
  if (!v5)
  {
    v28 = a5;
    if (result)
    {
      byte_1EC4C23F0 = 1;
      a1 = v31;
      return sub_1CF72A344(a1, 1, 0x12, 0x12u);
    }

    v22 = v30;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 48))(v22, AssociatedConformanceWitness);
    v24 = v36[11];
    v25 = v36[13];
    v32 = v12;
    v33 = v24;
    v34 = v11;
    v35 = v25;
    v26 = type metadata accessor for Ingestion.DeferredRescan();
    v27 = (*(*v20 + 328))(v19, v26, 0x8000, a3, a4, v28);
    (*(v29 + 8))(v19, v22);
    byte_1EC4C23F0 = v27 & 1;
    a1 = v31;
    if (v27)
    {
      return sub_1CF72A344(a1, 1, 0x12, 0x12u);
    }

    return 16;
  }

  return result;
}

uint64_t sub_1CF6E2A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v95 = a1;
  v100 = a6;
  v10 = sub_1CF9E5248();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5268();
  v84 = *(v13 - 8);
  v85 = v13;
  v14 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a2;
  v97 = a3;
  v98 = a4;
  v99 = a5;
  v90 = type metadata accessor for ItemReconciliation();
  v79 = *(v90 - 8);
  v16 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v76 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v76 - v19;
  v20 = sub_1CF9E6118();
  v80 = *(v20 - 8);
  v81 = v20;
  v21 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a5;
  v94 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1CF9E75D8();
  v88 = *(v24 - 8);
  v89 = v24;
  v25 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v76 - v26;
  v87 = *(AssociatedTypeWitness - 8);
  v28 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v77 = &v76 - v30;
  v91 = a4;
  v92 = a2;
  v31 = swift_getAssociatedTypeWitness();
  v32 = sub_1CF9E75D8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v76 - v35;
  v37 = *(v31 - 8);
  v38 = *(v37 + 64);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v76 - v41;
  v43 = v95;
  (*(v33 + 16))(v36, v40);
  if ((*(v37 + 48))(v36, 1, v31) != 1)
  {
    v66 = *(v37 + 32);
    v66(v42, v36, v31);
    v66(v100, v42, v31);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v68 = swift_getAssociatedConformanceWitness();
    v96 = v31;
    v97 = AssociatedTypeWitness;
    v98 = AssociatedConformanceWitness;
    v99 = v68;
    type metadata accessor for ReconciliationID();
    return swift_storeEnumTagMultiPayload();
  }

  v44 = v100;
  (*(v33 + 8))(v36, v32);
  v45 = v90;
  v46 = v88;
  v47 = v43;
  v48 = v43 + *(v90 + 52);
  v49 = v89;
  (*(v88 + 16))(v27, v48, v89);
  v50 = v87;
  if ((*(v87 + 48))(v27, 1, AssociatedTypeWitness) != 1)
  {
    v69 = *(v50 + 32);
    v70 = v77;
    v69(v77, v27, AssociatedTypeWitness);
    v69(v44, v70, AssociatedTypeWitness);
    v71 = swift_getAssociatedConformanceWitness();
    v72 = swift_getAssociatedConformanceWitness();
    v96 = v31;
    v97 = AssociatedTypeWitness;
    v98 = v71;
    v99 = v72;
    type metadata accessor for ReconciliationID();
    return swift_storeEnumTagMultiPayload();
  }

  (*(v46 + 8))(v27, v49);
  v51 = fpfs_current_or_default_log();
  v52 = v86;
  sub_1CF9E6128();
  v53 = v79;
  v54 = *(v79 + 16);
  v55 = v78;
  v54(v78, v47, v45);
  v56 = sub_1CF9E6108();
  v57 = sub_1CF9E72A8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v96 = v100;
    *v58 = 136315138;
    v59 = v76;
    v54(v76, v55, v45);
    v60 = *(v53 + 8);
    v60(v55, v45);
    v61 = sub_1CF082CB0(v45);
    v63 = v62;
    v60(v59, v45);
    v64 = sub_1CEFD0DF0(v61, v63, &v96);

    *(v58 + 4) = v64;
    _os_log_impl(&dword_1CEFC7000, v56, v57, "RT entry without ID on either side: %s", v58, 0xCu);
    v65 = v100;
    __swift_destroy_boxed_opaque_existential_1(v100);
    MEMORY[0x1D386CDC0](v65, -1, -1);
    MEMORY[0x1D386CDC0](v58, -1, -1);

    (*(v80 + 8))(v86, v81);
  }

  else
  {
    (*(v53 + 8))(v55, v45);

    (*(v80 + 8))(v52, v81);
  }

  sub_1CF9E5148();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF00BCE0(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  v74 = v82;
  v75 = v85;
  sub_1CF9E57D8();
  sub_1CF9E50D8();
  (*(v84 + 8))(v74, v75);
  return swift_willThrow();
}

uint64_t sub_1CF6E3340(uint64_t a1, uint64_t (*a2)(char *))
{
  v14 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = AssociatedTypeWitness;
  v16 = v3;
  v17 = AssociatedConformanceWitness;
  v18 = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ReconciliationID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v15 = v3;
  v16 = AssociatedTypeWitness;
  v17 = v18;
  v18 = AssociatedConformanceWitness;
  v10 = type metadata accessor for ReconciliationID();
  sub_1CF050768(v10, v9);
  v11 = v14(v9);
  (*(v6 + 8))(v9, v5);
  return v11 & 1;
}

BOOL sub_1CF6E34F8(uint64_t a1)
{
  v12[0] = swift_getAssociatedTypeWitness();
  v12[1] = swift_getAssociatedTypeWitness();
  v12[2] = swift_getAssociatedConformanceWitness();
  v12[3] = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for ReconciliationID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  (*(v3 + 16))(v6, a1, v2, v8);
  swift_getWitnessTable();
  sub_1CF9E7068();
  LOBYTE(a1) = sub_1CF9E6FF8();
  (*(v3 + 8))(v10, v2);
  return (a1 & 1) == 0;
}

uint64_t sub_1CF6E36F8(const void *a1, char **a2, char *a3, char *a4)
{
  v31 = a3;
  v32 = a2;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v37, a1, 0x208uLL);
  v13 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase);
  if (v13)
  {
    v30 = v4;
    v38 = MEMORY[0x1E69E7CD0];
    type metadata accessor for FPCK(0);
    v14 = memcpy(v35, a1, sizeof(v35));
    MEMORY[0x1EEE9AC00](v14);

    sub_1CF6DC314(v36, v35, v13, 0, v32, sub_1CF6FC3DC, &v25, v31, v34, a4);
    if (v5)
    {
    }

    else
    {
      v20 = v34[0];
      v29 = v34[1];
      v27 = BYTE1(v34[2]);
      v28 = LOBYTE(v34[2]);
      v21 = BYTE2(v34[2]);
      v22 = v34[3];
      v23 = v34[4];
      memcpy(v34, v36, sizeof(v34));
      memcpy(v33, v36, sizeof(v33));
      v24 = v20;
      sub_1CF6E3AAC(v33, v37, v20, v29, v28, v27, v21, v22, v23, 2, v32, v31, a4);

      sub_1CEFCCC44(v34, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    }
  }

  else
  {
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = sub_1CF9E6108();
    v18 = sub_1CF9E72A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1CEFC7000, v17, v18, "Update for pending set, db is not a sql db", v19, 2u);
      MEMORY[0x1D386CDC0](v19, -1, -1);
    }

    return (*(v9 + 8))(v12, v8);
  }
}

BOOL sub_1CF6E3A34(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  sub_1CEFD0988(*a1, v2, v3);
  LOBYTE(v1) = sub_1CF6E9D5C(&v5, v1, v2 | (v3 << 8));
  sub_1CEFD0994(v5, v6, v7);
  return (v1 & 1) == 0;
}

void *sub_1CF6E3AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  MEMORY[0x1EEE9AC00](a1);
  v15 = v14;
  v40 = v16;
  v41 = v17;
  v29 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a10;
  memcpy(__dst, v25, sizeof(__dst));
  result = memcpy(v39, v24, 0x208uLL);
  if ((*(v13 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions) & 0x80) == 0)
  {
    if (!v22)
    {
LABEL_9:
      __break(1u);
      return result;
    }

    sub_1CF6DAB2C(v26, v22, v20, v29, v40, v41, v15, a9 & 1, a10 != 2, a11, a12, a13);
  }

  memcpy(__src, __dst, sizeof(__src));
  nullsub_1(__src);
  memcpy(v35, __src, sizeof(v35));
  memcpy(v37, v39, sizeof(v37));
  nullsub_1(v37);
  result = memcpy(v34, v37, sizeof(v34));
  v32 = 0;
  v33 = -1;
  if (!v22)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a10 == 2)
  {
    v27 = __dst[31] == 0;
  }

  sub_1CEFCCBDC(__dst, v31, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v39, v31, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CF6D6C14(v35, v34, &v32, v22, v27, v29, v40, v41, a11, a12, a13);
  memcpy(v30, v34, sizeof(v30));
  sub_1CEFCCC44(v30, &unk_1EC4BFC20, &unk_1CFA0A290);
  memcpy(v31, v35, sizeof(v31));
  return sub_1CEFCCC44(v31, &unk_1EC4BFC20, &unk_1CFA0A290);
}

uint64_t sub_1CF6E3CE8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v162 = v1;
  v182 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v160 = v9;
  v163 = v11;
  v164 = v10;
  v13 = v12;
  v14 = sub_1CF9E6118();
  v159 = *(v14 - 8);
  v15 = *(v159 + 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v158 = &v154 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v156 = *(v21 - 8);
  v22 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v157 = (&v154 - v23);
  result = sub_1CF6CF224("FSSnapshotAndFPSnapshotCheck()", 30, 2, 2930);
  if ((result & 1) == 0)
  {
    *v6 = 0;
    return result;
  }

  if (v13 & 1) != 0 || (swift_beginAccess(), (sub_1CF052620(*(v164 + 32), *(v4 + 40))))
  {
    v13 = 0;
    v161 = 1;
  }

  else
  {
    v25 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
    v26 = swift_beginAccess();
    v27 = *(v8 + v25);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_135;
    }

    v161 = 0;
    *(v8 + v25) = v29;
    v13 = 0x20000000;
  }

  v30 = v182;
  swift_beginAccess();
  v31 = *(v30 + 24);
  v32 = *(v31 + 16);
  v155 = v13;
  if (!v32)
  {
    goto LABEL_16;
  }

  v33 = sub_1CEFE863C(v163);
  if ((v34 & 1) == 0)
  {

LABEL_16:
    sub_1CF4858E8(v180);
LABEL_17:
    memcpy(v181, v180, sizeof(v181));
    v4 = 0;
    v182 = 1;
    goto LABEL_18;
  }

  v35 = *(*(v31 + 56) + 8 * v33);

  sub_1CEFCCBDC(v160, v176, &qword_1EC4C0700, &qword_1CFA05B10);
  if (!*(&v176[1] + 1))
  {

    sub_1CEFCCC44(v176, &qword_1EC4C0700, &qword_1CFA05B10);
    goto LABEL_16;
  }

  sub_1CF054EA0(v176, v177);
  v36 = v178;
  v37 = v179;
  v38 = __swift_project_boxed_opaque_existential_1(v177, v178);
  v39 = *(v164 + 8);
  v174 = *v164;
  v175 = v39;
  v40 = v162;
  sub_1CF20A25C(&v174, 0, v38, v36, v37, v176);
  v41 = v40;
  if (v40)
  {
    v42 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v43 = v40;
    v44 = sub_1CF9E6108();
    v45 = sub_1CF9E72A8();

    if (os_log_type_enabled(v44, v45))
    {
      v21 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v182 = v44;
      v47 = v46;
      *v21 = 138543362;
      swift_getErrorValue();
      v162 = v40;
      v48 = Error.prettyDescription.getter(v173[67]);
      *(v21 + 4) = v48;
      *v47 = v48;
      v49 = v182;
      _os_log_impl(&dword_1CEFC7000, v182, v45, "FPCK: error fetching the item in the reconciliation table: %{public}@", v21, 0xCu);
      sub_1CEFCCC44(v47, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v47, -1, -1);
      MEMORY[0x1D386CDC0](v21, -1, -1);
    }

    else
    {
    }

    v13 = v155;
    (*(v159 + 1))(v17, v14);
    sub_1CF4858E8(v176);
    __swift_destroy_boxed_opaque_existential_1(v177);
    memcpy(v180, v176, sizeof(v180));
    v162 = 0;
    goto LABEL_17;
  }

  memcpy(v172, v176, sizeof(v172));
  memcpy(v173, v176, 0x210uLL);
  if (sub_1CF08B99C(v173) == 1)
  {
    v162 = 0;
    sub_1CF4858E8(v167);
    __swift_destroy_boxed_opaque_existential_1(v177);
    memcpy(v180, v167, sizeof(v180));
    v13 = v155;
    goto LABEL_17;
  }

  memcpy(v171, v173, sizeof(v171));
  nullsub_1(v171);
  __swift_destroy_boxed_opaque_existential_1(v177);
  sub_1CEFCCBDC(v160, v167, &qword_1EC4C0700, &qword_1CFA05B10);
  v13 = v155;
  if (!*(&v167[1] + 1))
  {
    v162 = 0;
    sub_1CEFCCC44(v167, &qword_1EC4C0700, &qword_1CFA05B10);
    memcpy(v180, v171, sizeof(v180));
    goto LABEL_17;
  }

  sub_1CF054EA0(v167, v168);
  sub_1CEFCCBDC(v172, v167, &unk_1EC4BFD20, &unk_1CFA05440);
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  if ((v173[3] & (qword_1EDEABDE8 | 0x10)) != 0 || (v173[2] & 0x51) != 0 || (v173[33] & (qword_1EDEABDE8 | 0x10)) != 0 || (v173[32] & 0x51) != 0 || LOBYTE(v173[17]) == 1 || LOBYTE(v173[43]) == 1)
  {
    sub_1CEFCCC44(v172, &unk_1EC4BFD20, &unk_1CFA05440);
    goto LABEL_122;
  }

  if (LOBYTE(v173[4]) != 5 || BYTE1(v173[17]) != 6 || LOBYTE(v173[1]) != 255 && v173[31] && !LOBYTE(v173[43]) && (v173[24] & 0xF000000000000000) != 0xB000000000000000 || LOBYTE(v173[20]) != 3 && (LOBYTE(v173[20]) != 4 || v173[18] & 0xFFFFFFFFFFFFFFFELL | v173[19]) || LOBYTE(v173[46]) != 3 && (LOBYTE(v173[46]) != 4 || v173[44] & 0xFFFFFFFFFFFFFFFELL | v173[45]))
  {
    sub_1CEFCCC44(v172, &unk_1EC4BFD20, &unk_1CFA05440);
    v13 = v155;
    goto LABEL_122;
  }

  v142 = v169;
  v143 = v170;
  v144 = __swift_project_boxed_opaque_existential_1(v168, v169);
  v145 = *(v164 + 8);
  *&v167[0] = *v164;
  BYTE8(v167[0]) = v145;
  sub_1CF70258C(v167, v163, v144, v142, v143, v158);
  v162 = v40;
  if ((*(v156 + 48))(v158, 1, v21) == 1)
  {
    sub_1CEFCCC44(v172, &unk_1EC4BFD20, &unk_1CFA05440);
    sub_1CEFCCC44(v158, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v41 = v162;
    v13 = v155;
LABEL_122:
    __swift_destroy_boxed_opaque_existential_1(v168);
    if (v161)
    {
      return sub_1CEFCCC44(v172, &unk_1EC4BFD20, &unk_1CFA05440);
    }

    goto LABEL_160;
  }

  v146 = v157;
  sub_1CEFE55D0(v158, v157, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v147 = v169;
  v148 = v170;
  v149 = __swift_project_boxed_opaque_existential_1(v168, v169);
  v150 = v162;
  v151 = sub_1CF702E04(v165, *v146, v163, v149, v147, v148);
  v162 = v150;
  if (v150)
  {
    sub_1CEFCCC44(v172, &unk_1EC4BFD20, &unk_1CFA05440);
    sub_1CEFCCC44(v172, &unk_1EC4BFD20, &unk_1CFA05440);
    sub_1CEFCCC44(v157, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    return __swift_destroy_boxed_opaque_existential_1(v168);
  }

  v167[12] = v165[12];
  v167[13] = v165[13];
  v167[14] = v165[14];
  *&v167[15] = v166;
  v167[8] = v165[8];
  v167[9] = v165[9];
  v167[10] = v165[10];
  v167[11] = v165[11];
  v167[4] = v165[4];
  v167[5] = v165[5];
  v167[6] = v165[6];
  v167[7] = v165[7];
  v167[0] = v165[0];
  v167[1] = v165[1];
  v167[2] = v165[2];
  v167[3] = v165[3];
  v152 = v157;
  v153 = sub_1CF6E6314(v164, v157, v165, *(v182 + 32), v151);
  sub_1CEFCCC44(v172, &unk_1EC4BFD20, &unk_1CFA05440);
  sub_1CEFCCC44(v167, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  sub_1CEFCCC44(v152, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  __swift_destroy_boxed_opaque_existential_1(v168);
  v182 = v153;
  if (v153)
  {
    memcpy(v181, v171, sizeof(v181));
    v4 = 0;
    v13 = v155;
    goto LABEL_18;
  }

  v41 = v162;
  v13 = v155;
  if (v161)
  {
    return sub_1CEFCCC44(v172, &unk_1EC4BFD20, &unk_1CFA05440);
  }

LABEL_160:
  v162 = v41;
  memcpy(v181, v171, sizeof(v181));
  v182 = 0;
  v4 = 1;
LABEL_18:
  v50 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  v26 = swift_beginAccess();
  v51 = *(v8 + v50);
  v28 = __OFADD__(v51, 1);
  v52 = v51 + 1;
  if (v28)
  {
    goto LABEL_134;
  }

  LODWORD(v163) = v4;
  *(v8 + v50) = v52;
  v53 = v13;
  v4 = *(v8 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);
  v54 = *(v8 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler + 8);
  v55 = v164;
  v56 = *(v164 + 24);
  v172[0] = *(v164 + 16);
  LOBYTE(v172[1]) = v56;

  v173[0] = VFSItemID.description.getter(v57, v58);
  v173[1] = v59;
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v60 = *(v55 + 128);
  v61 = *(v55 + 136);
  v62 = sub_1CF9E6888();
  v21 = [v62 fp_obfuscatedFilename];

  v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v65 = v64;

  MEMORY[0x1D3868CC0](v63, v65);

  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  v66 = sub_1CF7F5394(v53);
  MEMORY[0x1D3868CC0](v66);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v67 = sub_1CF7F57DC(v182);
  MEMORY[0x1D3868CC0](v67);

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  LOBYTE(v21) = v173[1];
  (v4)(v173[0], v173[1]);

  if (v161)
  {
    v68 = 0;
    goto LABEL_48;
  }

  v14 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
  v69 = __clz(__rbit64(v53));
  v13 = 1 << v69;
  v70 = ~(1 << v69);
  if ((v13 & v53) != 0)
  {
    v4 = v70;
  }

  else
  {
    v4 = 0x20000000;
  }

  swift_beginAccess();
  sub_1CEFF7124(0);
  v71 = *(v8 + v14);
  LOBYTE(v72) = swift_isUniquelyReferenced_nonNull_native();
  v172[0] = *(v8 + v14);
  v73 = v172[0];
  *(v8 + v14) = 0x8000000000000000;
  v26 = sub_1CF7D52B4(v13);
  v75 = v73[2];
  v76 = (v74 & 1) == 0;
  v28 = __OFADD__(v75, v76);
  v77 = v75 + v76;
  if (v28)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  LOBYTE(v21) = v74;
  if (v73[3] < v77)
  {
    sub_1CF7C7708(v77, v72);
    v73 = v172[0];
    v26 = sub_1CF7D52B4(v13);
    if ((v21 & 1) == (v78 & 1))
    {
      goto LABEL_29;
    }

LABEL_27:
    v26 = sub_1CF9E8108();
    __break(1u);
  }

  if ((v72 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_29:
  *(v8 + v14) = v73;
  if ((v21 & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
LABEL_32:
    v81 = v73[7];
    v82 = *(v81 + 8 * v26);
    v28 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    if (v28)
    {
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v4 &= v155;
    *(v81 + 8 * v26) = v83;
    swift_endAccess();
    v68 = sub_1CF193338;
    if (v4)
    {
      while (1)
      {
        v13 = v4 & -v4;
        swift_beginAccess();
        sub_1CEFF7124(sub_1CF193338);
        v84 = *(v8 + v14);
        LOBYTE(v72) = swift_isUniquelyReferenced_nonNull_native();
        v172[0] = *(v8 + v14);
        v73 = v172[0];
        *(v8 + v14) = 0x8000000000000000;
        v26 = sub_1CF7D52B4(v13);
        v86 = v73[2];
        v87 = (v85 & 1) == 0;
        v28 = __OFADD__(v86, v87);
        v88 = v86 + v87;
        if (v28)
        {
          goto LABEL_125;
        }

        LOBYTE(v21) = v85;
        if (v73[3] < v88)
        {
          break;
        }

        if (v72)
        {
          goto LABEL_39;
        }

        v96 = v26;
        sub_1CF7D1218();
        v26 = v96;
        v73 = v172[0];
        *(v8 + v14) = v172[0];
        if ((v21 & 1) == 0)
        {
LABEL_40:
          v73[(v26 >> 6) + 8] |= 1 << v26;
          *(v73[6] + 8 * v26) = v13;
          *(v73[7] + 8 * v26) = 0;
          v90 = v73[2];
          v28 = __OFADD__(v90, 1);
          v91 = v90 + 1;
          if (v28)
          {
            goto LABEL_129;
          }

          v73[2] = v91;
        }

LABEL_42:
        v92 = v73[7];
        v93 = *(v92 + 8 * v26);
        v28 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v28)
        {
          goto LABEL_126;
        }

        *(v92 + 8 * v26) = v94;
        swift_endAccess();
        v68 = sub_1CF193338;
        v95 = v13 == v4;
        v4 ^= v13;
        if (v95)
        {
          goto LABEL_48;
        }
      }

      sub_1CF7C7708(v88, v72);
      v73 = v172[0];
      v26 = sub_1CF7D52B4(v4 & -v4);
      if ((v21 & 1) != (v89 & 1))
      {
        goto LABEL_27;
      }

LABEL_39:
      *(v8 + v14) = v73;
      if ((v21 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_42;
    }

LABEL_48:
    v160 = v68;
    if (v163)
    {
      v97 = 0;
      goto LABEL_85;
    }

    v14 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredFSSnapshotVsFPSnapshotDiffCounters;
    v98 = __clz(__rbit64(v182));
    v99 = v182 & ~(1 << v98);
    if (((1 << v98) & v182) == 0)
    {
      v99 = v182;
    }

    if (v98 <= 0x3F)
    {
      v13 = 1 << v98;
    }

    else
    {
      v13 = 0;
    }

    if (v98 <= 0x3F)
    {
      v100 = v99;
    }

    else
    {
      v100 = v182;
    }

    swift_beginAccess();
    sub_1CEFF7124(0);
    v101 = *(v8 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v172[0] = *(v8 + v14);
    v103 = v172[0];
    *(v8 + v14) = 0x8000000000000000;
    v26 = sub_1CF7D52B4(v13);
    v105 = v103[2];
    v106 = (v104 & 1) == 0;
    v28 = __OFADD__(v105, v106);
    v107 = v105 + v106;
    if (v28)
    {
      goto LABEL_127;
    }

    LOBYTE(v21) = v104;
    if (v103[3] < v107)
    {
      sub_1CF7C7780(v107, isUniquelyReferenced_nonNull_native);
      v103 = v172[0];
      v26 = sub_1CF7D52B4(v13);
      if ((v21 & 1) == (v108 & 1))
      {
        goto LABEL_63;
      }

LABEL_61:
      v26 = sub_1CF9E8108();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_63:
      *(v8 + v14) = v103;
      if (v21)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    v4 = v26;
    sub_1CF7D1254();
    v26 = v4;
    v103 = v172[0];
    *(v8 + v14) = v172[0];
    if (v21)
    {
      goto LABEL_66;
    }

LABEL_64:
    v103[(v26 >> 6) + 8] |= 1 << v26;
    *(v103[6] + 8 * v26) = v13;
    *(v103[7] + 8 * v26) = 0;
    v109 = v103[2];
    v28 = __OFADD__(v109, 1);
    v110 = v109 + 1;
    if (!v28)
    {
      break;
    }

LABEL_130:
    while (1)
    {
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
      v141 = v26;
      sub_1CF7D1218();
      v26 = v141;
      v73 = v172[0];
      *(v8 + v14) = v172[0];
      if (v21)
      {
        break;
      }

LABEL_30:
      v73[(v26 >> 6) + 8] |= 1 << v26;
      *(v73[6] + 8 * v26) = v13;
      *(v73[7] + 8 * v26) = 0;
      v79 = v73[2];
      v28 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (!v28)
      {
        v73[2] = v80;
        goto LABEL_32;
      }

LABEL_129:
      __break(1u);
    }
  }

  v103[2] = v110;
LABEL_66:
  v111 = v103[7];
  v112 = *(v111 + 8 * v26);
  v28 = __OFADD__(v112, 1);
  v113 = v112 + 1;
  if (v28)
  {
    goto LABEL_128;
  }

  *(v111 + 8 * v26) = v113;
  swift_endAccess();
  if (v100)
  {
    v4 = 0x8000000000000000;
    while (1)
    {
      v13 = v100 & -v100;
      if (v13)
      {
        v100 ^= v13;
      }

      swift_beginAccess();
      sub_1CEFF7124(sub_1CF193338);
      v114 = *(v8 + v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v172[0] = *(v8 + v14);
      v103 = v172[0];
      *(v8 + v14) = 0x8000000000000000;
      v26 = sub_1CF7D52B4(v13);
      v116 = v103[2];
      v117 = (v115 & 1) == 0;
      v28 = __OFADD__(v116, v117);
      v118 = v116 + v117;
      if (v28)
      {
        goto LABEL_127;
      }

      LOBYTE(v21) = v115;
      if (v103[3] < v118)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_76;
      }

      v125 = v26;
      sub_1CF7D1254();
      v26 = v125;
      v103 = v172[0];
      *(v8 + v14) = v172[0];
      if ((v21 & 1) == 0)
      {
LABEL_77:
        v103[(v26 >> 6) + 8] |= 1 << v26;
        *(v103[6] + 8 * v26) = v13;
        *(v103[7] + 8 * v26) = 0;
        v120 = v103[2];
        v28 = __OFADD__(v120, 1);
        v121 = v120 + 1;
        if (v28)
        {
          goto LABEL_130;
        }

        v103[2] = v121;
      }

LABEL_79:
      v122 = v103[7];
      v123 = *(v122 + 8 * v26);
      v28 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v28)
      {
        goto LABEL_128;
      }

      *(v122 + 8 * v26) = v124;
      swift_endAccess();
      if (!v100)
      {
        goto LABEL_84;
      }
    }

    sub_1CF7C7780(v118, isUniquelyReferenced_nonNull_native);
    v103 = v172[0];
    v26 = sub_1CF7D52B4(v13);
    if ((v21 & 1) != (v119 & 1))
    {
      goto LABEL_61;
    }

LABEL_76:
    *(v8 + v14) = v103;
    if ((v21 & 1) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_79;
  }

LABEL_84:
  v97 = sub_1CF193338;
  v68 = v160;
LABEL_85:
  v163 = *(v8 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair);
  if (v163)
  {
    v159 = v97;
    if (v161)
    {
      sub_1CEFCCC44(v181, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CEFF7124(v160);
      v126 = v159;
      return sub_1CEFF7124(v126);
    }

    v182 = *v164;
    LODWORD(v164) = *(v164 + 8);
    v21 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskVsFSSnapshotDiffCounters;

    v14 = 0;
    v128 = v155;
    do
    {
      v72 = 1 << __clz(__rbit64(v128));
      if ((v72 & v128) != 0)
      {
        v4 = ~v72;
      }

      else
      {
        v4 = -1;
      }

      v173[0] = v182;
      LOBYTE(v173[1]) = v164;
      if (sub_1CF707D94(v72, v173))
      {
        swift_beginAccess();
        sub_1CEFF7124(v14);
        v129 = *(v8 + v21);
        v13 = swift_isUniquelyReferenced_nonNull_native();
        v172[0] = *(v8 + v21);
        v73 = v172[0];
        *(v8 + v21) = 0x8000000000000000;
        v26 = sub_1CF7D52B4(v72);
        v131 = v73[2];
        v132 = (v130 & 1) == 0;
        v28 = __OFADD__(v131, v132);
        v133 = v131 + v132;
        if (v28)
        {
          goto LABEL_131;
        }

        v14 = v130;
        if (v73[3] >= v133)
        {
          if ((v13 & 1) == 0)
          {
            v140 = v26;
            sub_1CF7D1218();
            v26 = v140;
            v73 = v172[0];
          }
        }

        else
        {
          sub_1CF7C7708(v133, v13);
          v73 = v172[0];
          v26 = sub_1CF7D52B4(v72);
          if ((v14 & 1) != (v134 & 1))
          {
            goto LABEL_27;
          }
        }

        v13 = v163;
        *(v8 + v21) = v73;
        if ((v14 & 1) == 0)
        {
          v73[(v26 >> 6) + 8] |= 1 << v26;
          *(v73[6] + 8 * v26) = v72;
          *(v73[7] + 8 * v26) = 0;
          v135 = v73[2];
          v28 = __OFADD__(v135, 1);
          v136 = v135 + 1;
          if (v28)
          {
            goto LABEL_133;
          }

          v73[2] = v136;
        }

        v137 = v73[7];
        v138 = *(v137 + 8 * v26);
        v28 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v28)
        {
          goto LABEL_132;
        }

        *(v137 + 8 * v26) = v139;
        swift_endAccess();
        v14 = sub_1CF193338;
      }

      v128 &= v4;
    }

    while (v128);

    sub_1CEFCCC44(v181, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFF7124(v160);
    sub_1CEFF7124(v159);
    return sub_1CEFF7124(v14);
  }

  else
  {
    v127 = v68;
    sub_1CEFCCC44(v181, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFF7124(v127);
    v126 = v97;
    return sub_1CEFF7124(v126);
  }
}

uint64_t sub_1CF6E512C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v249 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v242 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v242 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v246 = (&v242 - v15);
  v247 = v13;
  v17 = (a1 + 40);
  v16 = *(a1 + 40);
  if (v16 == 1)
  {
    v18 = *(a1 + 144) > 1u;
    if (!*(a1 + 24))
    {
      v25 = 0;
      goto LABEL_16;
    }

    v248 = a4;
  }

  else
  {
    if (!*(a1 + 24))
    {
      v25 = 0;
      if (v16 == 4)
      {
LABEL_34:
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
        v44 = v25 | 8;
        v45 = *(a2 + *(v46 + 48)) == 2;
LABEL_35:
        if (!v45)
        {
          v25 = v44;
        }

        goto LABEL_41;
      }

      if (v16 == 3)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    v248 = a4;
    v18 = 0;
  }

  v19 = sub_1CF9E6A58();
  v21 = v20;
  v22 = *(a2 + 136);
  *&v256 = *(a2 + 128);
  *(&v256 + 1) = v22;
  v254 = 47;
  v255 = 0xE100000000000000;
  v252 = 58;
  v253 = 0xE100000000000000;
  sub_1CEFE4E68();
  if (v19 == sub_1CF9E7668() && v21 == v23)
  {

    goto LABEL_10;
  }

  v24 = sub_1CF9E8048();

  if ((v24 & 1) == 0)
  {
    v35 = *(a1 + 216);
    v266 = *(a1 + 200);
    v267 = v35;
    v36 = *(a1 + 248);
    v268 = *(a1 + 232);
    v269 = v36;
    v37 = *(a1 + 152);
    v262 = *(a1 + 136);
    v263 = v37;
    v38 = *(a1 + 184);
    v264 = *(a1 + 168);
    v265 = v38;
    v39 = *(a1 + 88);
    v258 = *(a1 + 72);
    v259 = v39;
    v40 = *(a1 + 120);
    v260 = *(a1 + 104);
    v261 = v40;
    v41 = *(a1 + 56);
    v256 = *v17;
    v257 = v41;
    v42 = sub_1CEFE47B0(&v256);
    v16 = *v17;
    if (v42)
    {
      v25 = 0;
    }

    else if (v18)
    {
      v25 = 0;
    }

    else
    {
      v25 = 2;
    }

    LOBYTE(a4) = v248;
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }

    if (v16 != 1)
    {
LABEL_30:
      if (v16 != 2)
      {
        goto LABEL_41;
      }

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      v44 = v25 | 8;
      v45 = *(a2 + *(v43 + 48)) == 1;
      goto LABEL_35;
    }

LABEL_16:
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
    v27 = *(a2 + v26);
    if (*(a2 + v26))
    {
      v28 = *(a1 + 216);
      v266 = *(a1 + 200);
      v267 = v28;
      v29 = *(a1 + 248);
      v268 = *(a1 + 232);
      v269 = v29;
      v30 = *(a1 + 152);
      v262 = *(a1 + 136);
      v263 = v30;
      v31 = *(a1 + 184);
      v264 = *(a1 + 168);
      v265 = v31;
      v32 = *(a1 + 88);
      v258 = *(a1 + 72);
      v259 = v32;
      v33 = *(a1 + 120);
      v260 = *(a1 + 104);
      v261 = v33;
      v34 = *(a1 + 56);
      v256 = *v17;
      v257 = v34;
      if (((v27 > 2) & sub_1CF1ADD54(&v256)) == 0)
      {
        v25 |= 8uLL;
      }
    }

    goto LABEL_41;
  }

LABEL_10:
  v25 = 0;
  v16 = *v17;
  if (*v17 <= 2)
  {
    LOBYTE(a4) = v248;
    if (v16 == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  LOBYTE(a4) = v248;
  if (v16 != 3)
  {
LABEL_33:
    if (v16 != 4)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

LABEL_38:
  v47 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48));
  if (*v47 || (v47[*(type metadata accessor for ItemMetadata() + 112)] & 1) == 0)
  {
    v25 |= 8uLL;
  }

LABEL_41:
  v48 = fpfs_supports_parent_mtime_iopolicy();
  v49 = *v17;
  v251 = a1;
  if ((v48 & 1) != 0 || v49 != 2)
  {
    v248 = a2;
    v245 = v10;
    if (v49 == 3 || (a4 & 1) != 0)
    {
      v51 = v246;
      v56 = v247;
    }

    else
    {
      v50 = *(a1 + 88) / 1000000000.0 + *(a1 + 80);
      v51 = v246;
      sub_1CF9E5C88();
      v52 = sub_1CF9E5CF8();
      v53 = *(v52 - 8);
      v244 = *(v53 + 56);
      (v244)(v51, 0, 1, v52);
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
      v55 = type metadata accessor for ItemMetadata();
      v56 = v247;
      v57 = v248 + *(v55 + 32) + v54;
      a2 = v248;
      (*(v53 + 16))(v247, v57, v52);
      (v244)(v56, 0, 1, v52);
      LOBYTE(v52) = sub_1CF51586C(v56);
      sub_1CEFCCC44(v56, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v51, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      if ((v52 & 1) == 0)
      {
        v25 |= 0x10uLL;
      }
    }

    v244 = v25;
    v58 = *(a1 + 72) / 1000000000.0 + *(a1 + 64);
    sub_1CF9E5C88();
    v59 = sub_1CF9E5CF8();
    v60 = *(v59 - 8);
    v61 = *(v60 + 56);
    v61(v51, 0, 1, v59);
    v62 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
    v246 = type metadata accessor for ItemMetadata();
    v63 = v246[7];
    v64 = *(v60 + 16);
    v243 = v62;
    v64(v56, v62 + v63, v59);
    v61(v56, 0, 1, v59);
    LOBYTE(v60) = sub_1CF51586C(v56);
    sub_1CEFCCC44(v56, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v51, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v65 = 1;
    v66 = v245;
    if (v60)
    {
      v25 = v244;
    }

    else
    {
      v25 = v244 | 0x20;
    }

    if (*(v251 + 96) != 0)
    {
      sub_1CF9E5C88();
      v65 = 0;
    }

    v61(v66, v65, 1, v59);
    v67 = v246;
    v68 = sub_1CF51586C(v243 + v246[30]);
    sub_1CEFCCC44(v66, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if ((v68 & 1) == 0)
    {
      v25 |= 0x40uLL;
    }

    v69 = *v17;
    a1 = v251;
    a2 = v248;
    if (*v17 != 2)
    {
      v70 = *(v251 + 56);
      v71 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
      if (v70 != *(v71 + v67[26]))
      {
        v25 |= 0x100uLL;
      }

      v72 = v17[11];
      v266 = v17[10];
      v267 = v72;
      v73 = v17[13];
      v268 = v17[12];
      v269 = v73;
      v74 = v17[7];
      v262 = v17[6];
      v263 = v74;
      v75 = v17[9];
      v264 = v17[8];
      v265 = v75;
      v76 = v17[3];
      v258 = v17[2];
      v259 = v76;
      v77 = v17[5];
      v260 = v17[4];
      v261 = v77;
      v78 = v17[1];
      v256 = *v17;
      v257 = v78;
      if (sub_1CEFE478C(&v256) && (*(v71 + v67[13]) & 1) == 0)
      {
        v25 |= 0x800000uLL;
      }

      else
      {
        v79 = v17[11];
        v266 = v17[10];
        v267 = v79;
        v80 = v17[13];
        v268 = v17[12];
        v269 = v80;
        v81 = v17[7];
        v262 = v17[6];
        v263 = v81;
        v82 = v17[9];
        v264 = v17[8];
        v265 = v82;
        v83 = v17[3];
        v258 = v17[2];
        v259 = v83;
        v84 = v17[5];
        v260 = v17[4];
        v261 = v84;
        v85 = v17[1];
        v256 = *v17;
        v257 = v85;
        if ((sub_1CEFE478C(&v256) & 1) == 0 && *(v71 + v67[13]))
        {
          v25 |= 0x1000000uLL;
        }
      }

      if (*(a1 + 20) != *(a2 + 40) && !(*(v71 + v67[20]) & 1 | (v69 == 4) | (v25 >> 13) & 1))
      {
        v25 |= 0x2000uLL;
      }
    }
  }

  v86 = *(a1 + 48);
  v87 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
  if (((*(v87 + 10) ^ v86) & 0x1C0) != 0)
  {
    v88 = v25 | 0x200;
  }

  else
  {
    v88 = v25;
  }

  v89 = type metadata accessor for ItemMetadata();
  v90 = v87 + v89[32];
  if (*(v90 + 8))
  {
    if (!*(a1 + 112))
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (*(a1 + 112) != *v90)
  {
LABEL_74:
    v88 |= 0x400uLL;
  }

LABEL_75:
  v91 = sub_1CF661030(*(a1 + 120), *(a1 + 128), *(a1 + 136));
  if (v91)
  {
    sub_1CF6601AC(v91);

    sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
    v92 = sub_1CF9E6D28();

    v93 = FPGetTagsDataForTags();

    v94 = sub_1CF9E5B88();
    v96 = v95;

    v97 = *(v87 + v89[31]);
    if (!v97)
    {
      if (v96 >> 60 != 15)
      {
        v98 = 0;
        v99 = 0xF000000000000000;
LABEL_87:
        sub_1CEFE48D8(v94, v96);
        sub_1CEFE48D8(v98, v99);
        goto LABEL_89;
      }

      goto LABEL_84;
    }
  }

  else
  {
    v94 = 0;
    v97 = *(v87 + v89[31]);
    v96 = 0xF000000000000000;
    if (!v97)
    {
LABEL_84:
      sub_1CEFE48D8(v94, v96);
      goto LABEL_85;
    }
  }

  sub_1CF6601AC(v97);
  sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
  v100 = sub_1CF9E6D28();

  v101 = FPGetTagsDataForTags();

  v98 = sub_1CF9E5B88();
  v99 = v102;

  if (v96 >> 60 == 15)
  {
    if (v99 >> 60 != 15)
    {
      goto LABEL_87;
    }

    goto LABEL_84;
  }

  if (v99 >> 60 == 15)
  {
    goto LABEL_87;
  }

  sub_1CEFF05F4(v94, v96);
  sub_1CEFF05F4(v98, v99);
  v104 = sub_1CF328660(v94, v96, v98, v99);
  sub_1CEFE48D8(v98, v99);
  sub_1CEFE48D8(v94, v96);
  sub_1CEFE48D8(v98, v99);
  sub_1CEFE48D8(v94, v96);
  if (v104)
  {
LABEL_85:
    v103 = v251;
    goto LABEL_91;
  }

LABEL_89:
  v103 = v251;
  if ((v88 & 0x800) == 0)
  {
    v88 |= 0x800uLL;
  }

LABEL_91:
  v105 = (v87 + v89[14]);
  if (v103[22])
  {
    v106 = v105[1];
    if (v106)
    {
      v107 = *v105;
      v108 = v105[1];

      if (sub_1CF9E6A58() == v107 && v106 == v109)
      {
      }

      else
      {
        v110 = sub_1CF9E8048();

        if ((v110 & 1) == 0)
        {
          v88 |= 0x4000uLL;
        }
      }

      goto LABEL_101;
    }
  }

  else if (!v105[1])
  {
    goto LABEL_101;
  }

  if ((v88 & 0x4000) == 0)
  {
    v88 |= 0x4000uLL;
  }

LABEL_101:
  v111 = v17[11];
  v266 = v17[10];
  v267 = v111;
  v112 = v17[13];
  v268 = v17[12];
  v269 = v112;
  v113 = v17[7];
  v262 = v17[6];
  v263 = v113;
  v114 = v17[9];
  v264 = v17[8];
  v265 = v114;
  v115 = v17[3];
  v258 = v17[2];
  v259 = v115;
  v116 = v17[5];
  v260 = v17[4];
  v261 = v116;
  v117 = v17[1];
  v256 = *v17;
  v257 = v117;
  if (sub_1CEFE47F8(&v256) && (*(v87 + v89[20]) & 1) == 0)
  {
    v88 |= 0x8000uLL;
  }

  else
  {
    v118 = v17[11];
    v266 = v17[10];
    v267 = v118;
    v119 = v17[13];
    v268 = v17[12];
    v269 = v119;
    v120 = v17[7];
    v262 = v17[6];
    v263 = v120;
    v121 = v17[9];
    v264 = v17[8];
    v265 = v121;
    v122 = v17[3];
    v258 = v17[2];
    v259 = v122;
    v123 = v17[5];
    v260 = v17[4];
    v261 = v123;
    v124 = v17[1];
    v256 = *v17;
    v257 = v124;
    if ((sub_1CEFE47F8(&v256) & 1) == 0 && (*(v87 + v89[20]) & ((v88 & 0x10000) == 0)) != 0)
    {
      v88 |= 0x10000uLL;
    }
  }

  v125 = v17[11];
  v266 = v17[10];
  v267 = v125;
  v126 = v17[13];
  v268 = v17[12];
  v269 = v126;
  v127 = v17[7];
  v262 = v17[6];
  v263 = v127;
  v128 = v17[9];
  v264 = v17[8];
  v265 = v128;
  v129 = v17[3];
  v258 = v17[2];
  v259 = v129;
  v130 = v17[5];
  v260 = v17[4];
  v261 = v130;
  v131 = v17[1];
  v256 = *v17;
  v257 = v131;
  if ((sub_1CEFE47F8(&v256) & 1) == 0)
  {
    v132 = v17[11];
    v266 = v17[10];
    v267 = v132;
    v133 = v17[13];
    v268 = v17[12];
    v269 = v133;
    v134 = v17[7];
    v262 = v17[6];
    v263 = v134;
    v135 = v17[9];
    v264 = v17[8];
    v265 = v135;
    v136 = v17[3];
    v258 = v17[2];
    v259 = v136;
    v137 = v17[5];
    v260 = v17[4];
    v261 = v137;
    v138 = v17[1];
    v256 = *v17;
    v257 = v138;
    if (sub_1CF198AD4(&v256) && !*(v87 + v89[21]))
    {
      v88 |= 0x20000uLL;
    }

    else
    {
      v139 = v17[11];
      v266 = v17[10];
      v267 = v139;
      v140 = v17[13];
      v268 = v17[12];
      v269 = v140;
      v141 = v17[7];
      v262 = v17[6];
      v263 = v141;
      v142 = v17[9];
      v264 = v17[8];
      v265 = v142;
      v143 = v17[3];
      v258 = v17[2];
      v259 = v143;
      v144 = v17[5];
      v260 = v17[4];
      v261 = v144;
      v145 = v17[1];
      v256 = *v17;
      v257 = v145;
      if ((sub_1CF198AD4(&v256) & 1) == 0 && (v88 & 0x40000) == 0 && *(v87 + v89[21]) != 0)
      {
        v88 |= 0x40000uLL;
      }
    }
  }

  v147 = v17[11];
  v266 = v17[10];
  v267 = v147;
  v148 = v17[13];
  v268 = v17[12];
  v269 = v148;
  v149 = v17[7];
  v262 = v17[6];
  v263 = v149;
  v150 = v17[9];
  v264 = v17[8];
  v265 = v150;
  v151 = v17[3];
  v258 = v17[2];
  v259 = v151;
  v152 = v17[5];
  v260 = v17[4];
  v261 = v152;
  v153 = v17[1];
  v256 = *v17;
  v257 = v153;
  if (sub_1CEFE47A4(&v256) && (*(v87 + v89[15]) & 1) == 0)
  {
    v88 |= 0x80000uLL;
  }

  else
  {
    v154 = v17[11];
    v266 = v17[10];
    v267 = v154;
    v155 = v17[13];
    v268 = v17[12];
    v269 = v155;
    v156 = v17[7];
    v262 = v17[6];
    v263 = v156;
    v157 = v17[9];
    v264 = v17[8];
    v265 = v157;
    v158 = v17[3];
    v258 = v17[2];
    v259 = v158;
    v159 = v17[5];
    v260 = v17[4];
    v261 = v159;
    v160 = v17[1];
    v256 = *v17;
    v257 = v160;
    if ((sub_1CEFE47A4(&v256) & 1) == 0 && (*(v87 + v89[15]) & ((v88 & 0x100000) == 0)) != 0)
    {
      v88 |= 0x100000uLL;
    }
  }

  v161 = v17[11];
  v266 = v17[10];
  v267 = v161;
  v162 = v17[13];
  v268 = v17[12];
  v269 = v162;
  v163 = v17[7];
  v262 = v17[6];
  v263 = v163;
  v164 = v17[9];
  v264 = v17[8];
  v265 = v164;
  v165 = v17[3];
  v258 = v17[2];
  v259 = v165;
  v166 = v17[5];
  v260 = v17[4];
  v261 = v166;
  v167 = v17[1];
  v256 = *v17;
  v257 = v167;
  if (sub_1CEFE47BC(&v256) != *(v87 + v89[11]))
  {
    v168 = v17[11];
    v266 = v17[10];
    v267 = v168;
    v169 = v17[13];
    v268 = v17[12];
    v269 = v169;
    v170 = v17[7];
    v262 = v17[6];
    v263 = v170;
    v171 = v17[9];
    v264 = v17[8];
    v265 = v171;
    v172 = v17[3];
    v258 = v17[2];
    v259 = v172;
    v173 = v17[5];
    v260 = v17[4];
    v261 = v173;
    v174 = v17[1];
    v256 = *v17;
    v257 = v174;
    if (sub_1CEFE47BC(&v256))
    {
      v88 |= 0x200000uLL;
    }

    else
    {
      v88 |= 0x400000uLL;
    }
  }

  v175 = v17[11];
  v266 = v17[10];
  v267 = v175;
  v176 = v17[13];
  v268 = v17[12];
  v269 = v176;
  v177 = v17[7];
  v262 = v17[6];
  v263 = v177;
  v178 = v17[9];
  v264 = v17[8];
  v265 = v178;
  v179 = v17[3];
  v258 = v17[2];
  v259 = v179;
  v180 = v17[5];
  v260 = v17[4];
  v261 = v180;
  v181 = v17[1];
  v256 = *v17;
  v257 = v181;
  if (sub_1CEFE4768(&v256) && (*(v87 + v89[10]) & 1) == 0)
  {
    v88 |= 0x2000000uLL;
  }

  else
  {
    v182 = v17[11];
    v266 = v17[10];
    v267 = v182;
    v183 = v17[13];
    v268 = v17[12];
    v269 = v183;
    v184 = v17[7];
    v262 = v17[6];
    v263 = v184;
    v185 = v17[9];
    v264 = v17[8];
    v265 = v185;
    v186 = v17[3];
    v258 = v17[2];
    v259 = v186;
    v187 = v17[5];
    v260 = v17[4];
    v261 = v187;
    v188 = v17[1];
    v256 = *v17;
    v257 = v188;
    if ((sub_1CEFE4768(&v256) & 1) == 0 && *(v87 + v89[10]))
    {
      v88 |= 0x4000000uLL;
    }
  }

  v189 = v17[11];
  v266 = v17[10];
  v267 = v189;
  v190 = v17[13];
  v268 = v17[12];
  v269 = v190;
  v191 = v17[7];
  v262 = v17[6];
  v263 = v191;
  v192 = v17[9];
  v264 = v17[8];
  v265 = v192;
  v193 = v17[3];
  v258 = v17[2];
  v259 = v193;
  v194 = v17[5];
  v260 = v17[4];
  v261 = v194;
  v195 = v17[1];
  v256 = *v17;
  v257 = v195;
  if (sub_1CEFE4774(&v256) && (*(v87 + v89[9]) & 1) == 0)
  {
    v88 |= 0x8000000uLL;
    if (v103[27])
    {
      goto LABEL_143;
    }
  }

  else
  {
    v196 = v17[11];
    v266 = v17[10];
    v267 = v196;
    v197 = v17[13];
    v268 = v17[12];
    v269 = v197;
    v198 = v17[7];
    v262 = v17[6];
    v263 = v198;
    v199 = v17[9];
    v264 = v17[8];
    v265 = v199;
    v200 = v17[3];
    v258 = v17[2];
    v259 = v200;
    v201 = v17[5];
    v260 = v17[4];
    v261 = v201;
    v202 = v17[1];
    v256 = *v17;
    v257 = v202;
    if ((sub_1CEFE4774(&v256) & 1) == 0 && *(v87 + v89[9]))
    {
      v88 |= 0x10000000uLL;
    }

    if (v103[27])
    {
LABEL_143:
      v203 = sub_1CF9E6878();
      v205 = (v87 + v89[38]);
      v206 = v205[1];
      if (v204)
      {
        if (v206)
        {
          if (v203 == *v205 && v204 == v206)
          {

            goto LABEL_157;
          }

          v207 = sub_1CF9E8048();

          if (v207)
          {
            goto LABEL_157;
          }
        }

        else
        {
        }
      }

      else if (!v206)
      {
        goto LABEL_157;
      }

      v88 |= 0x80000000uLL;
      goto LABEL_157;
    }
  }

  if (*(v87 + v89[38] + 8))
  {
    v88 |= 0x80000000uLL;
  }

LABEL_157:
  v208 = v17[11];
  v266 = v17[10];
  v267 = v208;
  v209 = v17[13];
  v268 = v17[12];
  v269 = v209;
  v210 = v17[7];
  v262 = v17[6];
  v263 = v210;
  v211 = v17[9];
  v264 = v17[8];
  v265 = v211;
  v212 = v17[3];
  v258 = v17[2];
  v259 = v212;
  v213 = v17[5];
  v260 = v17[4];
  v261 = v213;
  v214 = v17[1];
  v256 = *v17;
  v257 = v214;
  if (sub_1CEFE47B0(&v256) && (*(v87 + v89[18]) & 1) == 0)
  {
    v88 |= 0x100000000uLL;
  }

  else
  {
    v215 = v17[11];
    v266 = v17[10];
    v267 = v215;
    v216 = v17[13];
    v268 = v17[12];
    v269 = v216;
    v217 = v17[7];
    v262 = v17[6];
    v263 = v217;
    v218 = v17[9];
    v264 = v17[8];
    v265 = v218;
    v219 = v17[3];
    v258 = v17[2];
    v259 = v219;
    v220 = v17[5];
    v260 = v17[4];
    v261 = v220;
    v221 = v17[1];
    v256 = *v17;
    v257 = v221;
    if ((sub_1CEFE47B0(&v256) & 1) == 0 && *(v87 + v89[18]))
    {
      v88 |= 0x200000000uLL;
    }
  }

  if ((*(v87 + v89[20]) & 1) == 0 && v103[30] != qword_1CFA12DF8[*(v87 + v89[21])])
  {
    v88 |= 0x400000000uLL;
  }

  if ((v249 & 1) != 0 && (*(v87 + v89[21]) & 0xFE) == 2)
  {
    v88 |= 0x2000000000uLL;
  }

  v222 = v17[11];
  v266 = v17[10];
  v267 = v222;
  v223 = v17[13];
  v268 = v17[12];
  v269 = v223;
  v224 = v17[7];
  v262 = v17[6];
  v263 = v224;
  v225 = v17[9];
  v264 = v17[8];
  v265 = v225;
  v226 = v17[3];
  v258 = v17[2];
  v259 = v226;
  v227 = v17[5];
  v260 = v17[4];
  v261 = v227;
  v228 = v17[1];
  v256 = *v17;
  v257 = v228;
  result = sub_1CEFE47F8(&v256);
  if (!result)
  {
LABEL_174:
    v230 = v250;
    v231 = (v250 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalMaterializedItems);
    v235 = *(v250 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalMaterializedItems);
    v233 = __OFADD__(v235, 1);
    v234 = v235 + 1;
    if (v233)
    {
      goto LABEL_180;
    }

    goto LABEL_175;
  }

  v230 = v250;
  v231 = (v250 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalDatalessItems);
  v232 = *(v250 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalDatalessItems);
  v233 = __OFADD__(v232, 1);
  v234 = v232 + 1;
  if (v233)
  {
    __break(1u);
    goto LABEL_174;
  }

LABEL_175:
  *v231 = v234;
  v236 = v103[7];
  v237 = *(v230 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedFileSizes);
  v233 = __OFADD__(v237, v236);
  v238 = v237 + v236;
  if (v233)
  {
    __break(1u);
  }

  else
  {
    *(v230 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedFileSizes) = v238;
    v239 = v103[21];
    v240 = *(v230 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedSizeOfDisk);
    v233 = __OFADD__(v240, v239);
    v241 = v240 + v239;
    if (!v233)
    {
      *(v230 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedSizeOfDisk) = v241;
      return v88;
    }
  }

  __break(1u);
LABEL_180:
  __break(1u);
  return result;
}