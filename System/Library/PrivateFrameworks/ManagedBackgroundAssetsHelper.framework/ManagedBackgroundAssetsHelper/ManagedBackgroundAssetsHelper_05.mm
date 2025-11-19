uint64_t sub_1D30567C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A348, &qword_1D30F5648);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D3056830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D3056898()
{
  result = qword_1EC74A6C8;
  if (!qword_1EC74A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A6C8);
  }

  return result;
}

unint64_t sub_1D30568EC()
{
  result = qword_1EC74A6D0;
  if (!qword_1EC74A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A6D0);
  }

  return result;
}

uint64_t sub_1D3056940(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A440, &qword_1D30F5658);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D30569B8()
{
  result = qword_1EC74A6E0;
  if (!qword_1EC74A6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A460, &qword_1D30F5660);
    sub_1D3045A34(&qword_1EC74A6E8, type metadata accessor for AssetPackRecord.StaticRepresentation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A6E0);
  }

  return result;
}

uint64_t Helper.Reply.description.getter()
{
  v118 = sub_1D30E8D9C();
  v116 = *(v118 - 8);
  v0 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v114 = &v108 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Helper.PathToStagingDirectoryLookupResult(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v117 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Helper.PathForAppLookupResult(0);
  v113 = *(v115 - 8);
  v5 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v110 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Helper.PathInAssetPackLookupResult(0);
  v112 = *(v7 - 8);
  v8 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v109 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Helper.PathToManifestLookupResult(0);
  v111 = *(v18 - 8);
  v19 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Helper.URLRequestResult(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Helper.Reply(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D3058338(v119, v28, type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x692065766F6D6552;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v55 = *v28;
      v56 = *(v28 + 1);
      v66 = *(v28 + 2);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0x74736566696E614DLL;
      *(&v131 + 1) = 0xEF203A6174616420;
      v67 = sub_1D30E88EC();
      MEMORY[0x1D38B2610](v67);

      MEMORY[0x1D38B2610](0x3A656372756F7320, 0xE900000000000020);
      if (v66 > 2)
      {
        switch(v66)
        {
          case 3:
            v69 = 0xEA00000000007765;
            v68 = 0x6976655220707041;
            goto LABEL_86;
          case 4:
            v69 = 0x80000001D30EA750;
            v68 = 0xD000000000000012;
            goto LABEL_86;
          case 5:
            v69 = 0x80000001D30EA730;
            v68 = 0xD000000000000014;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v66)
        {
          case 0:
            v69 = 0xE900000000000065;
            v68 = 0x726F745320707041;
            goto LABEL_86;
          case 1:
            v68 = 0x67696C4674736554;
            v69 = 0xEA00000000007468;
LABEL_86:
            v77 = v69;
            goto LABEL_87;
          case 2:
            v69 = 0xEB00000000656863;
            v68 = 0x6143206C61636F4CLL;
            goto LABEL_86;
        }
      }

      result = sub_1D30E957C();
      __break(1u);
      return result;
    case 2:
      v55 = *v28;
      v56 = *(v28 + 1);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v57 = 0x80000001D30ED950;
      v58 = 0xD000000000000019;
      goto LABEL_29;
    case 3:
      v55 = *v28;
      v56 = *(v28 + 1);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v57 = 0x80000001D30ED930;
      v58 = 0xD00000000000001ALL;
LABEL_29:
      *&v131 = v58;
      *(&v131 + 1) = v57;
      v68 = sub_1D30E88EC();
LABEL_87:
      MEMORY[0x1D38B2610](v68, v77);

      sub_1D2FF1804(v55, v56);
      return v131;
    case 4:
      v80 = *(v28 + 1);
      if (v80 >> 60 == 15)
      {
        return 0xD000000000000019;
      }

      v105 = *v28;
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD00000000000001BLL;
      *(&v131 + 1) = 0x80000001D30ED910;
      v106 = sub_1D30E88EC();
      MEMORY[0x1D38B2610](v106);

      sub_1D30652E4(v105, v80);
      return v131;
    case 5:
      sub_1D3056830(v28, v24, type metadata accessor for Helper.URLRequestResult);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD00000000000001CLL;
      *(&v131 + 1) = 0x80000001D30ED8B0;
      *&v120 = 0;
      *(&v120 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v120 = 0xD00000000000001FLL;
      *(&v120 + 1) = 0x80000001D30ED8D0;
      sub_1D30E852C();
      sub_1D3045A34(&qword_1EC7493E8, MEMORY[0x1E6967EC8]);
      v86 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v86);

      MEMORY[0x1D38B2610](62, 0xE100000000000000);
      MEMORY[0x1D38B2610](v120, *(&v120 + 1));

      v87 = v131;
      v88 = type metadata accessor for Helper.URLRequestResult;
      v89 = v24;
      goto LABEL_77;
    case 6:
      if ((*(v111 + 48))(v28, 1, v18) == 1)
      {
        return 0xD00000000000001FLL;
      }

      v94 = v108;
      sub_1D3056830(v28, v108, type metadata accessor for Helper.PathToManifestLookupResult);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD000000000000021;
      *(&v131 + 1) = 0x80000001D30ED850;
      *&v120 = 0;
      *(&v120 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v120 = 0xD000000000000028;
      *(&v120 + 1) = 0x80000001D30ED880;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v103 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v103);

      MEMORY[0x1D38B2610](62, 0xE100000000000000);
      MEMORY[0x1D38B2610](v120, *(&v120 + 1));

      v87 = v131;
      v96 = type metadata accessor for Helper.PathToManifestLookupResult;
      goto LABEL_76;
    case 7:
      v59 = *v28;
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v60 = 0x80000001D30ED7D0;
      v61 = 0xD000000000000018;
      goto LABEL_46;
    case 8:
      v59 = *v28;
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v60 = 0x80000001D30ED7A0;
      v61 = 0xD000000000000026;
LABEL_46:
      *&v131 = v61;
      *(&v131 + 1) = v60;
      v43 = v59;
      v44 = v14;
      goto LABEL_47;
    case 9:
      sub_1D3056830(v28, v17, type metadata accessor for AssetPackRecord.StaticRepresentation);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD00000000000001ALL;
      *(&v131 + 1) = 0x80000001D30ED760;
      v90 = AssetPackRecord.StaticRepresentation.description.getter();
      MEMORY[0x1D38B2610](v90);

      v87 = v131;
      v88 = type metadata accessor for AssetPackRecord.StaticRepresentation;
      v89 = v17;
      goto LABEL_77;
    case 10:
      v52 = *v28;
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v53 = 0x80000001D30ED730;
      v54 = 0xD000000000000026;
      goto LABEL_60;
    case 11:
      v52 = *v28;
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v53 = 0x80000001D30ED710;
      v54 = 0xD000000000000019;
      goto LABEL_60;
    case 12:
      v82 = *v28;
      v83 = *(v28 + 1);
      v85 = *(v28 + 2);
      v84 = *(v28 + 3);
      sub_1D2FF1804(v82, v83);
      sub_1D2FF1804(v85, v84);
      return 0xD00000000000001CLL;
    case 13:
      v45 = *(v28 + 1);
      if (!v45)
      {
        return 0xD000000000000014;
      }

      v47 = *(v28 + 4);
      v46 = *(v28 + 5);
      v49 = *(v28 + 2);
      v48 = *(v28 + 3);
      v50 = *v28;
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v120 = 0xD000000000000016;
      *(&v120 + 1) = 0x80000001D30ED620;
      *&v131 = v50;
      *(&v131 + 1) = v45;
      *&v132 = v49;
      *(&v132 + 1) = v48;
      *&v133 = v47;
      *(&v133 + 1) = v46;
      v51 = AppLicenseDelivery.Request.StaticRepresentation.description.getter();
      MEMORY[0x1D38B2610](v51);

      sub_1D302A36C(v50, v45, v49, v48, v47, v46);
      return v120;
    case 14:
      v71 = *v28;
      v70 = *(v28 + 1);
      v72 = *(v28 + 2);
      v73 = *(v28 + 3);
      v74 = *(v28 + 4);
      v75 = *(v28 + 5);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v120 = 0xD00000000000001CLL;
      *(&v120 + 1) = 0x80000001D30ED5E0;
      *&v131 = v71;
      *(&v131 + 1) = v70;
      *&v132 = v72;
      *(&v132 + 1) = v73;
      *&v133 = v74;
      *(&v133 + 1) = v75;
      v76 = AppLicenseDelivery.Request.StaticRepresentation.description.getter();
      MEMORY[0x1D38B2610](v76);

      sub_1D2FF1804(v72, v73);
      sub_1D2FF1804(v74, v75);
      return v120;
    case 15:
      v42 = *v28;
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD000000000000015;
      *(&v131 + 1) = 0x80000001D30ED580;
      v43 = v42;
      v44 = v10;
      goto LABEL_47;
    case 16:
      sub_1D3056830(v28, v13, type metadata accessor for LicenseRecord.StaticRepresentation);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD000000000000017;
      *(&v131 + 1) = 0x80000001D30ED560;
      v78 = LicenseRecord.StaticRepresentation.description.getter();
      MEMORY[0x1D38B2610](v78);

      v79 = v131;
      sub_1D3065284(v13, type metadata accessor for LicenseRecord.StaticRepresentation);
      return v79;
    case 17:
      v65 = *v28;
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD000000000000018;
      *(&v131 + 1) = 0x80000001D30ED500;
      v44 = &type metadata for AppReviewRecord.StaticRepresentation;
      goto LABEL_43;
    case 18:
      v98 = *v28;
      v97 = *(v28 + 1);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD00000000000001ALL;
      *(&v131 + 1) = 0x80000001D30ED4C0;
      *&v120 = 0;
      *(&v120 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v120 = 0xD000000000000024;
      *(&v120 + 1) = 0x80000001D30EBD70;
      MEMORY[0x1D38B2610](v98, v97);
      MEMORY[0x1D38B2610](62, 0xE100000000000000);

      v64 = *(&v120 + 1);
      v63 = v120;
      goto LABEL_66;
    case 19:
      if ((*(v112 + 48))(v28, 1, v7) == 1)
      {
        return 0xD000000000000012;
      }

      v94 = v109;
      sub_1D3056830(v28, v109, type metadata accessor for Helper.PathInAssetPackLookupResult);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD000000000000014;
      *(&v131 + 1) = 0x80000001D30ED470;
      *&v120 = 0;
      *(&v120 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v120 = 0xD00000000000002ALL;
      *(&v120 + 1) = 0x80000001D30ED490;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v104 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v104);

      MEMORY[0x1D38B2610](15904, 0xE200000000000000);
      MEMORY[0x1D38B2610](v120, *(&v120 + 1));

      v87 = v131;
      v96 = type metadata accessor for Helper.PathInAssetPackLookupResult;
      goto LABEL_76;
    case 20:
      v81 = v115;
      if ((*(v113 + 48))(v28, 1, v115) == 1)
      {
        return 0x726F662068746150;
      }

      v94 = v110;
      sub_1D3056830(v28, v110, type metadata accessor for Helper.PathForAppLookupResult);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      strcpy(&v131, "Path for app: ");
      HIBYTE(v131) = -18;
      *&v120 = 0;
      *(&v120 + 1) = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000024, 0x80000001D30ED420);
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v107 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v107);

      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EBC00);
      MEMORY[0x1D38B2610](*(v94 + *(v81 + 20)), *(v94 + *(v81 + 20) + 8));
      MEMORY[0x1D38B2610](62, 0xE100000000000000);
      MEMORY[0x1D38B2610](v120, *(&v120 + 1));

      v87 = v131;
      v96 = type metadata accessor for Helper.PathForAppLookupResult;
LABEL_76:
      v88 = v96;
      v89 = v94;
LABEL_77:
      sub_1D3065284(v89, v88);
      return v87;
    case 21:
      v94 = v117;
      sub_1D3056830(v28, v117, type metadata accessor for Helper.PathToStagingDirectoryLookupResult);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD00000000000001BLL;
      *(&v131 + 1) = 0x80000001D30ED3C0;
      *&v120 = 0;
      *(&v120 + 1) = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000031, 0x80000001D30ED3E0);
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v95 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v95);

      MEMORY[0x1D38B2610](62, 0xE100000000000000);
      MEMORY[0x1D38B2610](v120, *(&v120 + 1));

      v87 = v131;
      v96 = type metadata accessor for Helper.PathToStagingDirectoryLookupResult;
      goto LABEL_76;
    case 22:
      v99 = v116;
      v100 = v114;
      v101 = v118;
      (*(v116 + 32))(v114, v28, v118);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD000000000000013;
      *(&v131 + 1) = 0x80000001D30ED370;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v102 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v102);

      v87 = v131;
      (*(v99 + 8))(v100, v101);
      return v87;
    case 23:
      v65 = *v28;
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v131 = 0xD000000000000018;
      *(&v131 + 1) = 0x80000001D30ED350;
      v44 = sub_1D30E8D5C();
LABEL_43:
      v43 = v65;
LABEL_47:
      v91 = MEMORY[0x1D38B26B0](v43, v44);
      v93 = v92;

      MEMORY[0x1D38B2610](v91, v93);
      goto LABEL_67;
    case 24:
      v62 = *v28;
      *&v131 = 0x7075206E61656C43;
      *(&v131 + 1) = 0xEA0000000000203ALL;
      if (v62)
      {
        v63 = 1702195828;
      }

      else
      {
        v63 = 0x65736C6166;
      }

      if (v62)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      goto LABEL_66;
    case 25:
      v52 = *v28;
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v53 = 0x80000001D30ED290;
      v54 = 0xD00000000000001ALL;
LABEL_60:
      *&v131 = v54;
      *(&v131 + 1) = v53;
      if (v52)
      {
        v63 = 1702195828;
      }

      else
      {
        v63 = 0x65736C6166;
      }

      if (v52)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

LABEL_66:
      MEMORY[0x1D38B2610](v63, v64);
LABEL_67:

      return v131;
    case 26:
    case 30:
      return 0xD000000000000010;
    case 27:
      return 0xD000000000000012;
    case 28:
    case 36:
    case 39:
    case 40:
    case 49:
      return 0xD000000000000015;
    case 29:
      return 0xD000000000000018;
    case 31:
      return 0xD000000000000018;
    case 32:
      return 0xD000000000000011;
    case 33:
      return 0xD000000000000016;
    case 34:
    case 41:
      return 0xD000000000000020;
    case 35:
      return 0xD00000000000001FLL;
    case 37:
    case 38:
      return 0xD000000000000013;
    case 42:
      return 0xD000000000000018;
    case 43:
    case 45:
      return 0xD00000000000001ALL;
    case 44:
      return 0xD000000000000018;
    case 46:
      return 0xD00000000000001ELL;
    case 47:
      return result;
    case 48:
      return 0x6164206573617245;
    default:
      v31 = *(v28 + 5);
      v32 = *(v28 + 7);
      v137 = *(v28 + 6);
      v138 = v32;
      v33 = *(v28 + 1);
      v34 = *(v28 + 3);
      v133 = *(v28 + 2);
      v134 = v34;
      v35 = *(v28 + 3);
      v36 = *(v28 + 5);
      v135 = *(v28 + 4);
      v136 = v36;
      v37 = *(v28 + 1);
      v131 = *v28;
      v132 = v37;
      v38 = *(v28 + 7);
      v126 = v137;
      v127 = v38;
      v122 = v133;
      v123 = v35;
      v124 = v135;
      v125 = v31;
      v139 = *(v28 + 16);
      v129 = 0x6F666E6920707041;
      v130 = 0xEA0000000000203ALL;
      v128 = *(v28 + 16);
      v120 = v131;
      v121 = v33;
      v39 = AppInfo.description.getter();
      v41 = v40;
      sub_1D2FE2EC4(&v131);
      MEMORY[0x1D38B2610](v39, v41);

      return v129;
  }
}

uint64_t sub_1D3058338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D30583A0(char a1)
{
  result = 0x6F666E49707061;
  switch(a1)
  {
    case 1:
      result = 0x74736566696E616DLL;
      break;
    case 2:
    case 15:
    case 30:
      result = 0xD000000000000014;
      break;
    case 3:
    case 4:
    case 17:
    case 36:
    case 41:
    case 43:
    case 48:
      result = 0xD000000000000016;
      break;
    case 5:
    case 24:
      result = 0xD000000000000017;
      break;
    case 6:
    case 44:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0x4D6C6C6174736E69;
      break;
    case 8:
    case 26:
    case 27:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
    case 23:
    case 29:
    case 32:
      result = 0xD000000000000012;
      break;
    case 12:
    case 13:
    case 33:
    case 40:
    case 42:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 16:
      result = 0x6176417349746573;
      break;
    case 18:
      v3 = 0x65766F6D6572;
      goto LABEL_19;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
    case 37:
      result = 0xD00000000000001CLL;
      break;
    case 21:
      result = 0x4C74736575716572;
      break;
    case 22:
      result = 0xD00000000000001BLL;
      break;
    case 25:
      result = 0xD000000000000013;
      break;
    case 28:
      result = 0xD000000000000013;
      break;
    case 31:
      result = 0xD000000000000013;
      break;
    case 34:
      v3 = 0x6E4968746170;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7341000000000000;
      break;
    case 35:
      result = 0x41726F4668746170;
      break;
    case 38:
      result = 0x6F436F5468746170;
      break;
    case 39:
      result = 0xD000000000000013;
      break;
    case 45:
      result = 0x744965766F6D6572;
      break;
    case 46:
      result = 0x70556E61656C63;
      break;
    case 47:
      result = 0x7461446573617265;
      break;
    case 49:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D3058818(uint64_t a1)
{
  v2 = sub_1D30659E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058854(uint64_t a1)
{
  v2 = sub_1D30659E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058890(uint64_t a1)
{
  v2 = sub_1D3066258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30588CC(uint64_t a1)
{
  v2 = sub_1D3066258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058908(uint64_t a1)
{
  v2 = sub_1D3065A3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058944(uint64_t a1)
{
  v2 = sub_1D3065A3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058980(uint64_t a1)
{
  v2 = sub_1D3066300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30589BC(uint64_t a1)
{
  v2 = sub_1D3066300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30589F8(uint64_t a1)
{
  v2 = sub_1D30662AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058A34(uint64_t a1)
{
  v2 = sub_1D30662AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058A70(uint64_t a1)
{
  v2 = sub_1D3065C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058AAC(uint64_t a1)
{
  v2 = sub_1D3065C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058AE8(uint64_t a1)
{
  v2 = sub_1D30665F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058B24(uint64_t a1)
{
  v2 = sub_1D30665F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058B60(uint64_t a1)
{
  v2 = sub_1D306654C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058B9C(uint64_t a1)
{
  v2 = sub_1D306654C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058BD8(uint64_t a1)
{
  v2 = sub_1D3066450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058C14(uint64_t a1)
{
  v2 = sub_1D3066450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058C50(uint64_t a1)
{
  v2 = sub_1D306534C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058C8C(uint64_t a1)
{
  v2 = sub_1D306534C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058CC8(uint64_t a1)
{
  v2 = sub_1D3066108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058D04(uint64_t a1)
{
  v2 = sub_1D3066108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058D40(uint64_t a1)
{
  v2 = sub_1D3065448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058D7C(uint64_t a1)
{
  v2 = sub_1D3065448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30DB2DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D3058DE8(uint64_t a1)
{
  v2 = sub_1D30652F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058E24(uint64_t a1)
{
  v2 = sub_1D30652F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058E60(uint64_t a1)
{
  v2 = sub_1D30653A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058E9C(uint64_t a1)
{
  v2 = sub_1D30653A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058ED8(uint64_t a1)
{
  v2 = sub_1D3065694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058F14(uint64_t a1)
{
  v2 = sub_1D3065694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058F50(uint64_t a1)
{
  v2 = sub_1D3065640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058F8C(uint64_t a1)
{
  v2 = sub_1D3065640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058FC8(uint64_t a1)
{
  v2 = sub_1D30657F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059004(uint64_t a1)
{
  v2 = sub_1D30657F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059040(uint64_t a1)
{
  v2 = sub_1D30655EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D305907C(uint64_t a1)
{
  v2 = sub_1D30655EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30590B8(uint64_t a1)
{
  v2 = sub_1D30661B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30590F4(uint64_t a1)
{
  v2 = sub_1D30661B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059130(uint64_t a1)
{
  v2 = sub_1D30653F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D305916C(uint64_t a1)
{
  v2 = sub_1D30653F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30591A8(uint64_t a1)
{
  v2 = sub_1D3065B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30591E4(uint64_t a1)
{
  v2 = sub_1D3065B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059220(uint64_t a1)
{
  v2 = sub_1D30663A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D305925C(uint64_t a1)
{
  v2 = sub_1D30663A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059298(uint64_t a1)
{
  v2 = sub_1D30664A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30592D4(uint64_t a1)
{
  v2 = sub_1D30664A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059310(uint64_t a1)
{
  v2 = sub_1D3065F64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D305934C(uint64_t a1)
{
  v2 = sub_1D3065F64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059388()
{
  if (*v0)
  {
    result = 0x656372756F73;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1D30593B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D3059484(uint64_t a1)
{
  v2 = sub_1D30665A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30594C0(uint64_t a1)
{
  v2 = sub_1D30665A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30594FC(uint64_t a1)
{
  v2 = sub_1D30654F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059538(uint64_t a1)
{
  v2 = sub_1D30654F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059574(uint64_t a1)
{
  v2 = sub_1D3065598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30595B0(uint64_t a1)
{
  v2 = sub_1D3065598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30595EC(uint64_t a1)
{
  v2 = sub_1D3065544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059628(uint64_t a1)
{
  v2 = sub_1D3065544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059664(uint64_t a1)
{
  v2 = sub_1D3065DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30596A0(uint64_t a1)
{
  v2 = sub_1D3065DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30596DC(uint64_t a1)
{
  v2 = sub_1D3065E14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059718(uint64_t a1)
{
  v2 = sub_1D3065E14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059754(uint64_t a1)
{
  v2 = sub_1D3065898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059790(uint64_t a1)
{
  v2 = sub_1D3065898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30597CC(uint64_t a1)
{
  v2 = sub_1D30658EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059808(uint64_t a1)
{
  v2 = sub_1D30658EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059844(uint64_t a1)
{
  v2 = sub_1D306579C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059880(uint64_t a1)
{
  v2 = sub_1D306579C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30598BC(uint64_t a1)
{
  v2 = sub_1D30663FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30598F8(uint64_t a1)
{
  v2 = sub_1D30663FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059934(uint64_t a1)
{
  v2 = sub_1D3065844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059970(uint64_t a1)
{
  v2 = sub_1D3065844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30599AC(uint64_t a1)
{
  v2 = sub_1D3065D6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30599E8(uint64_t a1)
{
  v2 = sub_1D3065D6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059A24(uint64_t a1)
{
  v2 = sub_1D3065FB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059A60(uint64_t a1)
{
  v2 = sub_1D3065FB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059A9C(uint64_t a1)
{
  v2 = sub_1D3065940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059AD8(uint64_t a1)
{
  v2 = sub_1D3065940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059B14(uint64_t a1)
{
  v2 = sub_1D306600C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059B50(uint64_t a1)
{
  v2 = sub_1D306600C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059B8C(uint64_t a1)
{
  v2 = sub_1D3066204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059BC8(uint64_t a1)
{
  v2 = sub_1D3066204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059C04(uint64_t a1)
{
  v2 = sub_1D306549C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059C40(uint64_t a1)
{
  v2 = sub_1D306549C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059C7C(uint64_t a1)
{
  v2 = sub_1D3065BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059CB8(uint64_t a1)
{
  v2 = sub_1D3065BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059CF4(uint64_t a1)
{
  v2 = sub_1D3065D18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059D30(uint64_t a1)
{
  v2 = sub_1D3065D18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059D6C(uint64_t a1)
{
  v2 = sub_1D3066060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059DA8(uint64_t a1)
{
  v2 = sub_1D3066060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1937335659 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D3059E7C(uint64_t a1)
{
  v2 = sub_1D3065EBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059EB8(uint64_t a1)
{
  v2 = sub_1D3065EBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059EF4(uint64_t a1)
{
  v2 = sub_1D3065E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059F30(uint64_t a1)
{
  v2 = sub_1D3065E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059F6C(uint64_t a1)
{
  v2 = sub_1D30660B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059FA8(uint64_t a1)
{
  v2 = sub_1D30660B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059FE4(uint64_t a1)
{
  v2 = sub_1D30664F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D305A020(uint64_t a1)
{
  v2 = sub_1D30664F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D305A05C(uint64_t a1)
{
  v2 = sub_1D306615C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D305A098(uint64_t a1)
{
  v2 = sub_1D306615C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D305A0D4(uint64_t a1)
{
  v2 = sub_1D3065B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D305A110(uint64_t a1)
{
  v2 = sub_1D3065B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D305A14C(uint64_t a1)
{
  v2 = sub_1D3066354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D305A188(uint64_t a1)
{
  v2 = sub_1D3066354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Helper.Reply.encode(to:)(void *a1)
{
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A6F0, &qword_1D30F5808);
  v404 = *(v405 - 8);
  v2 = *(v404 + 64);
  MEMORY[0x1EEE9AC00](v405);
  v402 = &v270 - v3;
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A6F8, &qword_1D30F5810);
  v431 = *(v403 - 8);
  v4 = *(v431 + 64);
  MEMORY[0x1EEE9AC00](v403);
  v401 = &v270 - v5;
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A700, &qword_1D30F5818);
  v399 = *(v400 - 8);
  v6 = *(v399 + 64);
  MEMORY[0x1EEE9AC00](v400);
  v397 = &v270 - v7;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A708, &qword_1D30F5820);
  v430 = *(v398 - 8);
  v8 = *(v430 + 64);
  MEMORY[0x1EEE9AC00](v398);
  v396 = &v270 - v9;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A710, &qword_1D30F5828);
  v394 = *(v395 - 8);
  v10 = *(v394 + 64);
  MEMORY[0x1EEE9AC00](v395);
  v393 = &v270 - v11;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A718, &qword_1D30F5830);
  v391 = *(v392 - 8);
  v12 = *(v391 + 64);
  MEMORY[0x1EEE9AC00](v392);
  v390 = &v270 - v13;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A720, &qword_1D30F5838);
  v388 = *(v389 - 8);
  v14 = *(v388 + 64);
  MEMORY[0x1EEE9AC00](v389);
  v387 = &v270 - v15;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A728, &qword_1D30F5840);
  v385 = *(v386 - 8);
  v16 = *(v385 + 64);
  MEMORY[0x1EEE9AC00](v386);
  v384 = &v270 - v17;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A730, &qword_1D30F5848);
  v382 = *(v383 - 8);
  v18 = *(v382 + 64);
  MEMORY[0x1EEE9AC00](v383);
  v381 = &v270 - v19;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A738, &qword_1D30F5850);
  v378 = *(v379 - 8);
  v20 = *(v378 + 64);
  MEMORY[0x1EEE9AC00](v379);
  v375 = &v270 - v21;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A740, &qword_1D30F5858);
  v429 = *(v380 - 8);
  v22 = *(v429 + 64);
  MEMORY[0x1EEE9AC00](v380);
  v377 = &v270 - v23;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A748, &qword_1D30F5860);
  v428 = *(v376 - 8);
  v24 = *(v428 + 64);
  MEMORY[0x1EEE9AC00](v376);
  v372 = &v270 - v25;
  v374 = sub_1D30E8D9C();
  v373 = *(v374 - 8);
  v26 = *(v373 + 64);
  MEMORY[0x1EEE9AC00](v374);
  v371 = &v270 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A750, &qword_1D30F5868);
  v367 = *(v369 - 8);
  v28 = *(v367 + 64);
  MEMORY[0x1EEE9AC00](v369);
  v365 = &v270 - v29;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A758, &qword_1D30F5870);
  v427 = *(v370 - 8);
  v30 = *(v427 + 64);
  MEMORY[0x1EEE9AC00](v370);
  v368 = &v270 - v31;
  v363 = type metadata accessor for Helper.PathToStagingDirectoryLookupResult(0);
  v32 = *(*(v363 - 8) + 64);
  MEMORY[0x1EEE9AC00](v363);
  v366 = &v270 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A760, &qword_1D30F5878);
  v426 = *(v364 - 8);
  v34 = *(v426 + 64);
  MEMORY[0x1EEE9AC00](v364);
  v362 = &v270 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A768, &qword_1D30F5880);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v361 = &v270 - v38;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A770, &qword_1D30F5888);
  v425 = *(v360 - 8);
  v39 = *(v425 + 64);
  MEMORY[0x1EEE9AC00](v360);
  v359 = &v270 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A778, &qword_1D30F5890);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v358 = &v270 - v43;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A780, &qword_1D30F5898);
  v424 = *(v357 - 8);
  v44 = *(v424 + 64);
  MEMORY[0x1EEE9AC00](v357);
  v356 = &v270 - v45;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A788, &qword_1D30F58A0);
  v353 = *(v354 - 8);
  v46 = *(v353 + 64);
  MEMORY[0x1EEE9AC00](v354);
  v351 = &v270 - v47;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A790, &qword_1D30F58A8);
  v423 = *(v355 - 8);
  v48 = *(v423 + 64);
  MEMORY[0x1EEE9AC00](v355);
  v352 = &v270 - v49;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A798, &qword_1D30F58B0);
  v349 = *(v350 - 8);
  v50 = *(v349 + 64);
  MEMORY[0x1EEE9AC00](v350);
  v347 = &v270 - v51;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7A0, &qword_1D30F58B8);
  v344 = *(v346 - 8);
  v52 = *(v344 + 64);
  MEMORY[0x1EEE9AC00](v346);
  v342 = &v270 - v53;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7A8, &qword_1D30F58C0);
  v422 = *(v348 - 8);
  v54 = *(v422 + 64);
  MEMORY[0x1EEE9AC00](v348);
  v345 = &v270 - v55;
  v341 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  v56 = *(*(v341 - 8) + 64);
  MEMORY[0x1EEE9AC00](v341);
  v343 = &v270 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7B0, &qword_1D30F58C8);
  v421 = *(v340 - 8);
  v58 = *(v421 + 64);
  MEMORY[0x1EEE9AC00](v340);
  v339 = &v270 - v59;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7B8, &qword_1D30F58D0);
  v337 = *(v338 - 8);
  v60 = *(v337 + 64);
  MEMORY[0x1EEE9AC00](v338);
  v335 = &v270 - v61;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7C0, &qword_1D30F58D8);
  v332 = *(v334 - 8);
  v62 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v334);
  v330 = &v270 - v63;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7C8, &qword_1D30F58E0);
  v420 = *(v336 - 8);
  v64 = *(v420 + 64);
  MEMORY[0x1EEE9AC00](v336);
  v333 = &v270 - v65;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7D0, &qword_1D30F58E8);
  v419 = *(v331 - 8);
  v66 = *(v419 + 64);
  MEMORY[0x1EEE9AC00](v331);
  v329 = &v270 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7D8, &qword_1D30F58F0);
  v326 = *(v68 - 8);
  v327 = v68;
  v69 = *(v326 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v324 = &v270 - v70;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7E0, &qword_1D30F58F8);
  v418 = *(v328 - 8);
  v71 = *(v418 + 64);
  MEMORY[0x1EEE9AC00](v328);
  v325 = &v270 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7E8, &qword_1D30F5900);
  v322 = *(v73 - 8);
  v323 = v73;
  v74 = *(v322 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v321 = &v270 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7F0, &qword_1D30F5908);
  v319 = *(v76 - 8);
  v320 = v76;
  v77 = *(v319 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v318 = &v270 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A7F8, &qword_1D30F5910);
  v316 = *(v79 - 8);
  v317 = v79;
  v80 = *(v316 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v315 = &v270 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A800, &qword_1D30F5918);
  v313 = *(v82 - 8);
  v314 = v82;
  v83 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v312 = &v270 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A808, &qword_1D30F5920);
  v310 = *(v85 - 8);
  v311 = v85;
  v86 = *(v310 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v308 = &v270 - v87;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A810, &qword_1D30F5928);
  v417 = *(v309 - 8);
  v88 = *(v417 + 64);
  MEMORY[0x1EEE9AC00](v309);
  v307 = &v270 - v89;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A818, &qword_1D30F5930);
  v416 = *(v306 - 8);
  v90 = *(v416 + 64);
  MEMORY[0x1EEE9AC00](v306);
  v305 = &v270 - v91;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A820, &qword_1D30F5938);
  v301 = *(v303 - 8);
  v92 = *(v301 + 64);
  MEMORY[0x1EEE9AC00](v303);
  v299 = &v270 - v93;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A828, &qword_1D30F5940);
  v415 = *(v304 - 8);
  v94 = *(v415 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v302 = &v270 - v95;
  v298 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v96 = *(*(v298 - 8) + 64);
  MEMORY[0x1EEE9AC00](v298);
  v300 = &v270 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A830, &qword_1D30F5948);
  v295 = *(v98 - 8);
  v296 = v98;
  v99 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v293 = &v270 - v100;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A838, &qword_1D30F5950);
  v414 = *(v297 - 8);
  v101 = *(v414 + 64);
  MEMORY[0x1EEE9AC00](v297);
  v294 = &v270 - v102;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A840, &qword_1D30F5958);
  v413 = *(v292 - 8);
  v103 = *(v413 + 64);
  MEMORY[0x1EEE9AC00](v292);
  v291 = &v270 - v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A848, &qword_1D30F5960);
  v289 = *(v105 - 8);
  v290 = v105;
  v106 = *(v289 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v287 = &v270 - v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A850, &qword_1D30F5968);
  v284 = *(v108 - 8);
  v285 = v108;
  v109 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v282 = &v270 - v110;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A858, &qword_1D30F5970);
  v412 = *(v288 - 8);
  v111 = *(v412 + 64);
  MEMORY[0x1EEE9AC00](v288);
  v286 = &v270 - v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A860, &qword_1D30F5978);
  v114 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113 - 8);
  v283 = &v270 - v115;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A868, &qword_1D30F5980);
  v411 = *(v281 - 8);
  v116 = *(v411 + 64);
  MEMORY[0x1EEE9AC00](v281);
  v280 = &v270 - v117;
  v278 = type metadata accessor for Helper.URLRequestResult(0);
  v118 = *(*(v278 - 8) + 64);
  MEMORY[0x1EEE9AC00](v278);
  v279 = &v270 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A870, &qword_1D30F5988);
  v410 = *(v277 - 8);
  v120 = *(v410 + 64);
  MEMORY[0x1EEE9AC00](v277);
  v276 = &v270 - v121;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A878, &qword_1D30F5990);
  v408 = *(v274 - 8);
  v122 = *(v408 + 64);
  MEMORY[0x1EEE9AC00](v274);
  v272 = &v270 - v123;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A880, &qword_1D30F5998);
  v407 = *(v271 - 8);
  v124 = *(v407 + 64);
  MEMORY[0x1EEE9AC00](v271);
  v126 = &v270 - v125;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A888, &qword_1D30F59A0);
  v409 = *(v275 - 8);
  v127 = *(v409 + 64);
  MEMORY[0x1EEE9AC00](v275);
  v273 = &v270 - v128;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A890, &qword_1D30F59A8);
  v406 = *(v270 - 8);
  v129 = *(v406 + 64);
  MEMORY[0x1EEE9AC00](v270);
  v131 = &v270 - v130;
  v132 = type metadata accessor for Helper.Reply(0);
  v133 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v135 = &v270 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A898, &qword_1D30F59B0);
  v435 = *(v454 - 8);
  v136 = *(v435 + 64);
  MEMORY[0x1EEE9AC00](v454);
  v138 = &v270 - v137;
  v139 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30652F8();
  v432 = v138;
  sub_1D30E992C();
  sub_1D3058338(v434, v135, type metadata accessor for Helper.Reply);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v219 = *v135;
      v218 = *(v135 + 1);
      v434 = *(v135 + 2);
      LOBYTE(v445) = 1;
      sub_1D30665A0();
      v220 = v273;
      v221 = v454;
      v222 = v432;
      sub_1D30E96DC();
      *&v445 = v219;
      *(&v445 + 1) = v218;
      LOBYTE(v436) = 0;
      sub_1D2FF92C4();
      v223 = v275;
      v224 = v433;
      sub_1D30E974C();
      if (v224)
      {
        (*(v409 + 8))(v220, v223);
        (*(v435 + 8))(v222, v221);
        sub_1D2FF1804(v219, v218);
      }

      else
      {
        *&v445 = v434;
        LOBYTE(v436) = 1;
        type metadata accessor for ManifestDataSource(0);
        sub_1D3045A34(&qword_1EC749338, type metadata accessor for ManifestDataSource);
        sub_1D30E974C();
        sub_1D2FF1804(v219, v218);
        (*(v409 + 8))(v220, v223);
        (*(v435 + 8))(v222, v221);
      }

      return;
    case 2u:
      v201 = *v135;
      v191 = *(v135 + 1);
      LOBYTE(v445) = 2;
      sub_1D306654C();
      v202 = v454;
      v203 = v432;
      sub_1D30E96DC();
      *&v445 = v201;
      *(&v445 + 1) = v191;
      sub_1D2FF92C4();
      v204 = v271;
      sub_1D30E974C();
      (*(v407 + 8))(v126, v204);
      (*(v435 + 8))(v203, v202);
      v172 = v201;
      goto LABEL_24;
    case 3u:
      v211 = *v135;
      v212 = *(v135 + 1);
      LOBYTE(v445) = 3;
      sub_1D30664F8();
      v213 = v272;
      v214 = v454;
      v215 = v432;
      sub_1D30E96DC();
      *&v445 = v211;
      *(&v445 + 1) = v212;
      sub_1D2FF92C4();
      v216 = v274;
      sub_1D30E974C();
      (*(v408 + 8))(v213, v216);
      (*(v435 + 8))(v215, v214);
      v172 = v211;
      v173 = v212;
      goto LABEL_27;
    case 4u:
      v182 = *v135;
      v183 = *(v135 + 1);
      LOBYTE(v445) = 4;
      sub_1D30664A4();
      v184 = v276;
      v185 = v454;
      v186 = v432;
      sub_1D30E96DC();
      *&v445 = v182;
      *(&v445 + 1) = v183;
      sub_1D2FF92C4();
      v187 = v277;
      sub_1D30E96FC();
      (*(v410 + 8))(v184, v187);
      (*(v435 + 8))(v186, v185);
      sub_1D30652E4(v182, v183);
      return;
    case 5u:
      v156 = v279;
      sub_1D3056830(v135, v279, type metadata accessor for Helper.URLRequestResult);
      LOBYTE(v445) = 5;
      sub_1D3066450();
      v232 = v280;
      v158 = v454;
      v159 = v432;
      sub_1D30E96DC();
      sub_1D3045A34(&qword_1EC74AA60, type metadata accessor for Helper.URLRequestResult);
      v233 = v281;
      sub_1D30E974C();
      (*(v411 + 8))(v232, v233);
      v161 = type metadata accessor for Helper.URLRequestResult;
      goto LABEL_37;
    case 6u:
      v227 = v283;
      sub_1D30E6F78(v135, v283, &qword_1EC74A860, &qword_1D30F5978);
      LOBYTE(v445) = 6;
      sub_1D30663FC();
      v245 = v286;
      v158 = v454;
      v159 = v432;
      sub_1D30E96DC();
      type metadata accessor for Helper.PathToManifestLookupResult(0);
      sub_1D3045A34(&qword_1EC74AA50, type metadata accessor for Helper.PathToManifestLookupResult);
      v246 = v288;
      sub_1D30E96FC();
      (*(v412 + 8))(v245, v246);
      v230 = &qword_1EC74A860;
      v231 = &qword_1D30F5978;
      goto LABEL_50;
    case 7u:
      v217 = *v135;
      LOBYTE(v445) = 9;
      sub_1D3066300();
      v206 = v291;
      v207 = v454;
      v208 = v432;
      sub_1D30E96DC();
      *&v445 = v217;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A460, &qword_1D30F5660);
      sub_1D304ED38();
      v209 = v292;
      sub_1D30E974C();
      v210 = v413;
      goto LABEL_55;
    case 8u:
      v254 = *v135;
      LOBYTE(v445) = 10;
      sub_1D30662AC();
      v206 = v294;
      v207 = v454;
      v208 = v432;
      sub_1D30E96DC();
      *&v445 = v254;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A460, &qword_1D30F5660);
      sub_1D304ED38();
      v209 = v297;
      sub_1D30E974C();
      v210 = v414;
      goto LABEL_55;
    case 9u:
      v156 = v300;
      sub_1D3056830(v135, v300, type metadata accessor for AssetPackRecord.StaticRepresentation);
      LOBYTE(v445) = 12;
      sub_1D3066204();
      v197 = v302;
      v158 = v454;
      v159 = v432;
      sub_1D30E96DC();
      sub_1D3045A34(&qword_1EC74A470, type metadata accessor for AssetPackRecord.StaticRepresentation);
      v198 = v304;
      sub_1D30E974C();
      (*(v415 + 8))(v197, v198);
      v161 = type metadata accessor for AssetPackRecord.StaticRepresentation;
      goto LABEL_37;
    case 0xAu:
      v253 = *v135;
      LOBYTE(v445) = 14;
      sub_1D306615C();
      v176 = v305;
      v177 = v454;
      v178 = v432;
      sub_1D30E96DC();
      v179 = v306;
      sub_1D30E971C();
      v180 = v416;
      goto LABEL_42;
    case 0xBu:
      v175 = *v135;
      LOBYTE(v445) = 15;
      sub_1D3066108();
      v176 = v307;
      v177 = v454;
      v178 = v432;
      sub_1D30E96DC();
      v179 = v309;
      sub_1D30E971C();
      v180 = v417;
      goto LABEL_42;
    case 0xCu:
      v189 = *v135;
      v190 = *(v135 + 1);
      v192 = *(v135 + 2);
      v191 = *(v135 + 3);
      LOBYTE(v445) = 21;
      sub_1D3065EBC();
      v193 = v325;
      v194 = v454;
      v195 = v432;
      sub_1D30E96DC();
      *&v445 = v189;
      *(&v445 + 1) = v190;
      v434 = v192;
      *&v446 = v192;
      *(&v446 + 1) = v191;
      sub_1D3065F10();
      v196 = v328;
      sub_1D30E974C();
      (*(v418 + 8))(v193, v196);
      (*(v435 + 8))(v195, v194);
      sub_1D2FF1804(v189, v190);
      v172 = v434;
LABEL_24:
      v173 = v191;
      goto LABEL_27;
    case 0xDu:
      v236 = *v135;
      v237 = *(v135 + 1);
      v238 = *(v135 + 3);
      v429 = *(v135 + 2);
      v240 = *(v135 + 4);
      v239 = *(v135 + 5);
      LOBYTE(v445) = 23;
      sub_1D3065E14();
      v241 = v329;
      v242 = v432;
      sub_1D30E96DC();
      v434 = v236;
      *&v445 = v236;
      *(&v445 + 1) = v237;
      v431 = v237;
      v243 = v429;
      *&v446 = v429;
      *(&v446 + 1) = v238;
      v430 = v240;
      *&v447 = v240;
      *(&v447 + 1) = v239;
      sub_1D2FF87F0();
      v244 = v331;
      sub_1D30E96FC();
      (*(v419 + 8))(v241, v244);
      (*(v435 + 8))(v242, v454);
      sub_1D302A36C(v434, v431, v243, v238, v430, v239);
      return;
    case 0xEu:
      v163 = *(v135 + 1);
      v434 = *v135;
      v164 = *(v135 + 2);
      v429 = *(v135 + 3);
      v165 = *(v135 + 4);
      v166 = *(v135 + 5);
      LOBYTE(v445) = 24;
      sub_1D3065DC0();
      v167 = v333;
      v168 = v454;
      v169 = v432;
      sub_1D30E96DC();
      *&v445 = v434;
      *(&v445 + 1) = v163;
      v430 = v163;
      v431 = v164;
      *&v446 = v164;
      v170 = v429;
      *(&v446 + 1) = v429;
      *&v447 = v165;
      v434 = v165;
      *(&v447 + 1) = v166;
      sub_1D2FF87F0();
      v171 = v336;
      sub_1D30E974C();
      (*(v420 + 8))(v167, v171);
      (*(v435 + 8))(v169, v168);

      sub_1D2FF1804(v431, v170);
      v172 = v434;
      v173 = v166;
LABEL_27:
      sub_1D2FF1804(v172, v173);
      return;
    case 0xFu:
      v205 = *v135;
      LOBYTE(v445) = 27;
      sub_1D3065C10();
      v206 = v339;
      v207 = v454;
      v208 = v432;
      sub_1D30E96DC();
      *&v445 = v205;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A998, &qword_1D30F59C8);
      sub_1D3065C64();
      v209 = v340;
      sub_1D30E974C();
      v210 = v421;
      goto LABEL_55;
    case 0x10u:
      v156 = v343;
      sub_1D3056830(v135, v343, type metadata accessor for LicenseRecord.StaticRepresentation);
      LOBYTE(v445) = 28;
      sub_1D3065BBC();
      v157 = v345;
      v158 = v454;
      v159 = v432;
      sub_1D30E96DC();
      sub_1D3045A34(&qword_1EC74A988, type metadata accessor for LicenseRecord.StaticRepresentation);
      v160 = v348;
      sub_1D30E974C();
      (*(v422 + 8))(v157, v160);
      v161 = type metadata accessor for LicenseRecord.StaticRepresentation;
      goto LABEL_37;
    case 0x11u:
      v225 = *v135;
      LOBYTE(v445) = 31;
      sub_1D3065A3C();
      v206 = v352;
      v207 = v454;
      v208 = v432;
      sub_1D30E96DC();
      *&v445 = v225;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A960, &qword_1D30F59C0);
      sub_1D3065A90();
      v209 = v355;
      sub_1D30E974C();
      v210 = v423;
      goto LABEL_55;
    case 0x12u:
      v248 = *v135;
      v247 = *(v135 + 1);
      LOBYTE(v445) = 33;
      sub_1D3065940();
      v249 = v356;
      v250 = v454;
      v251 = v432;
      sub_1D30E96DC();
      *&v445 = v248;
      *(&v445 + 1) = v247;
      sub_1D3065994();
      v252 = v357;
      sub_1D30E974C();
      (*(v424 + 8))(v249, v252);
      (*(v435 + 8))(v251, v250);
      goto LABEL_56;
    case 0x13u:
      v227 = v358;
      sub_1D30E6F78(v135, v358, &qword_1EC74A778, &qword_1D30F5890);
      LOBYTE(v445) = 34;
      sub_1D30658EC();
      v263 = v359;
      v158 = v454;
      v159 = v432;
      sub_1D30E96DC();
      type metadata accessor for Helper.PathInAssetPackLookupResult(0);
      sub_1D3045A34(&qword_1EC74A938, type metadata accessor for Helper.PathInAssetPackLookupResult);
      v264 = v360;
      sub_1D30E96FC();
      (*(v425 + 8))(v263, v264);
      v230 = &qword_1EC74A778;
      v231 = &qword_1D30F5890;
      goto LABEL_50;
    case 0x14u:
      v227 = v361;
      sub_1D30E6F78(v135, v361, &qword_1EC74A768, &qword_1D30F5880);
      LOBYTE(v445) = 35;
      sub_1D3065898();
      v228 = v362;
      v158 = v454;
      v159 = v432;
      sub_1D30E96DC();
      type metadata accessor for Helper.PathForAppLookupResult(0);
      sub_1D3045A34(&qword_1EC74A928, type metadata accessor for Helper.PathForAppLookupResult);
      v229 = v364;
      sub_1D30E96FC();
      (*(v426 + 8))(v228, v229);
      v230 = &qword_1EC74A768;
      v231 = &qword_1D30F5880;
LABEL_50:
      sub_1D2FF14DC(v227, v230, v231);
      goto LABEL_51;
    case 0x15u:
      v156 = v366;
      sub_1D3056830(v135, v366, type metadata accessor for Helper.PathToStagingDirectoryLookupResult);
      LOBYTE(v445) = 36;
      sub_1D3065844();
      v234 = v368;
      v158 = v454;
      v159 = v432;
      sub_1D30E96DC();
      sub_1D3045A34(&qword_1EC74A918, type metadata accessor for Helper.PathToStagingDirectoryLookupResult);
      v235 = v370;
      sub_1D30E974C();
      (*(v427 + 8))(v234, v235);
      v161 = type metadata accessor for Helper.PathToStagingDirectoryLookupResult;
LABEL_37:
      sub_1D3065284(v156, v161);
      goto LABEL_51;
    case 0x16u:
      v256 = v373;
      v257 = v371;
      v258 = v135;
      v259 = v374;
      (*(v373 + 32))(v371, v258, v374);
      LOBYTE(v445) = 38;
      sub_1D306579C();
      v260 = v372;
      v158 = v454;
      v159 = v432;
      sub_1D30E96DC();
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
      v261 = v376;
      sub_1D30E974C();
      (*(v428 + 8))(v260, v261);
      (*(v256 + 8))(v257, v259);
LABEL_51:
      (*(v435 + 8))(v159, v158);
      return;
    case 0x17u:
      v266 = *v135;
      LOBYTE(v445) = 39;
      sub_1D3065694();
      v206 = v377;
      v207 = v454;
      v208 = v432;
      sub_1D30E96DC();
      *&v445 = v266;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A8F0, &qword_1D30F59B8);
      sub_1D30656E8();
      v209 = v380;
      sub_1D30E974C();
      v210 = v429;
LABEL_55:
      (*(v210 + 8))(v206, v209);
      (*(v435 + 8))(v208, v207);
LABEL_56:

      return;
    case 0x18u:
      v200 = *v135;
      LOBYTE(v445) = 46;
      sub_1D3065448();
      v176 = v396;
      v177 = v454;
      v178 = v432;
      sub_1D30E96DC();
      v179 = v398;
      sub_1D30E971C();
      v180 = v430;
      goto LABEL_42;
    case 0x19u:
      v199 = *v135;
      LOBYTE(v445) = 48;
      sub_1D30653A0();
      v176 = v401;
      v177 = v454;
      v178 = v432;
      sub_1D30E96DC();
      v179 = v403;
      sub_1D30E971C();
      v180 = v431;
LABEL_42:
      (*(v180 + 8))(v176, v179);
      (*(v435 + 8))(v178, v177);
      return;
    case 0x1Au:
      LOBYTE(v445) = 7;
      sub_1D30663A8();
      v152 = v282;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      v154 = v284;
      v153 = v285;
      goto LABEL_61;
    case 0x1Bu:
      LOBYTE(v445) = 8;
      sub_1D3066354();
      v152 = v287;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      v154 = v289;
      v153 = v290;
      goto LABEL_61;
    case 0x1Cu:
      LOBYTE(v445) = 11;
      sub_1D3066258();
      v152 = v293;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      v154 = v295;
      v153 = v296;
      goto LABEL_61;
    case 0x1Du:
      LOBYTE(v445) = 13;
      sub_1D30661B0();
      v267 = v299;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v301 + 8))(v267, v303);
      goto LABEL_62;
    case 0x1Eu:
      LOBYTE(v445) = 16;
      sub_1D30660B4();
      v152 = v308;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      v154 = v310;
      v153 = v311;
      goto LABEL_61;
    case 0x1Fu:
      LOBYTE(v445) = 17;
      sub_1D3066060();
      v152 = v312;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      v154 = v313;
      v153 = v314;
      goto LABEL_61;
    case 0x20u:
      LOBYTE(v445) = 18;
      sub_1D306600C();
      v152 = v315;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      v154 = v316;
      v153 = v317;
      goto LABEL_61;
    case 0x21u:
      LOBYTE(v445) = 19;
      sub_1D3065FB8();
      v152 = v318;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      v154 = v319;
      v153 = v320;
      goto LABEL_61;
    case 0x22u:
      LOBYTE(v445) = 20;
      sub_1D3065F64();
      v152 = v321;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      v154 = v322;
      v153 = v323;
      goto LABEL_61;
    case 0x23u:
      LOBYTE(v445) = 22;
      sub_1D3065E68();
      v152 = v324;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      v154 = v326;
      v153 = v327;
LABEL_61:
      (*(v154 + 8))(v152, v153);
      goto LABEL_62;
    case 0x24u:
      LOBYTE(v445) = 25;
      sub_1D3065D6C();
      v155 = v330;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v332 + 8))(v155, v334);
      goto LABEL_62;
    case 0x25u:
      LOBYTE(v445) = 26;
      sub_1D3065D18();
      v150 = v335;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v337 + 8))(v150, v338);
      goto LABEL_62;
    case 0x26u:
      LOBYTE(v445) = 29;
      sub_1D3065B68();
      v268 = v342;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v344 + 8))(v268, v346);
      goto LABEL_62;
    case 0x27u:
      LOBYTE(v445) = 30;
      sub_1D3065B14();
      v262 = v347;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v349 + 8))(v262, v350);
      goto LABEL_62;
    case 0x28u:
      LOBYTE(v445) = 32;
      sub_1D30659E8();
      v188 = v351;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v353 + 8))(v188, v354);
      goto LABEL_62;
    case 0x29u:
      LOBYTE(v445) = 37;
      sub_1D30657F0();
      v226 = v365;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v367 + 8))(v226, v369);
      goto LABEL_62;
    case 0x2Au:
      LOBYTE(v445) = 40;
      sub_1D3065640();
      v265 = v375;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v378 + 8))(v265, v379);
      goto LABEL_62;
    case 0x2Bu:
      LOBYTE(v445) = 41;
      sub_1D30655EC();
      v147 = v381;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v382 + 8))(v147, v383);
      goto LABEL_62;
    case 0x2Cu:
      LOBYTE(v445) = 42;
      sub_1D3065598();
      v162 = v384;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v385 + 8))(v162, v386);
      goto LABEL_62;
    case 0x2Du:
      LOBYTE(v445) = 43;
      sub_1D3065544();
      v255 = v387;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v388 + 8))(v255, v389);
      goto LABEL_62;
    case 0x2Eu:
      LOBYTE(v445) = 44;
      sub_1D30654F0();
      v269 = v390;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v391 + 8))(v269, v392);
      goto LABEL_62;
    case 0x2Fu:
      LOBYTE(v445) = 45;
      sub_1D306549C();
      v151 = v393;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v394 + 8))(v151, v395);
      goto LABEL_62;
    case 0x30u:
      LOBYTE(v445) = 47;
      sub_1D30653F4();
      v174 = v397;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v399 + 8))(v174, v400);
      goto LABEL_62;
    case 0x31u:
      LOBYTE(v445) = 49;
      sub_1D306534C();
      v181 = v402;
      v148 = v454;
      v149 = v432;
      sub_1D30E96DC();
      (*(v404 + 8))(v181, v405);
LABEL_62:
      (*(v435 + 8))(v149, v148);
      break;
    default:
      v140 = *(v135 + 7);
      v451 = *(v135 + 6);
      v452 = v140;
      v453 = *(v135 + 16);
      v141 = *(v135 + 3);
      v447 = *(v135 + 2);
      v448 = v141;
      v142 = *(v135 + 5);
      v449 = *(v135 + 4);
      v450 = v142;
      v143 = *(v135 + 1);
      v445 = *v135;
      v446 = v143;
      LOBYTE(v436) = 0;
      sub_1D30665F4();
      v144 = v454;
      v145 = v432;
      sub_1D30E96DC();
      v442 = v451;
      v443 = v452;
      v444 = v453;
      v438 = v447;
      v439 = v448;
      v441 = v450;
      v440 = v449;
      v437 = v446;
      v436 = v445;
      sub_1D3066648();
      v146 = v270;
      sub_1D30E974C();
      (*(v406 + 8))(v131, v146);
      (*(v435 + 8))(v145, v144);
      sub_1D2FE2EC4(&v445);
      break;
  }
}

uint64_t Helper.Reply.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v545 = a2;
  v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AA98, &qword_1D30F59D0);
  v490 = *(v491 - 8);
  v3 = *(v490 + 64);
  MEMORY[0x1EEE9AC00](v491);
  v539 = &v365 - v4;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAA0, &qword_1D30F59D8);
  v488 = *(v489 - 8);
  v5 = *(v488 + 64);
  MEMORY[0x1EEE9AC00](v489);
  v538 = &v365 - v6;
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAA8, &qword_1D30F59E0);
  v486 = *(v487 - 8);
  v7 = *(v486 + 64);
  MEMORY[0x1EEE9AC00](v487);
  v537 = &v365 - v8;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAB0, &qword_1D30F59E8);
  v484 = *(v485 - 8);
  v9 = *(v484 + 64);
  MEMORY[0x1EEE9AC00](v485);
  v536 = &v365 - v10;
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAB8, &qword_1D30F59F0);
  v482 = *(v483 - 8);
  v11 = *(v482 + 64);
  MEMORY[0x1EEE9AC00](v483);
  v535 = &v365 - v12;
  v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAC0, &qword_1D30F59F8);
  v480 = *(v481 - 8);
  v13 = *(v480 + 64);
  MEMORY[0x1EEE9AC00](v481);
  v534 = &v365 - v14;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAC8, &qword_1D30F5A00);
  v478 = *(v479 - 8);
  v15 = *(v478 + 64);
  MEMORY[0x1EEE9AC00](v479);
  v533 = &v365 - v16;
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAD0, &qword_1D30F5A08);
  v476 = *(v477 - 8);
  v17 = *(v476 + 64);
  MEMORY[0x1EEE9AC00](v477);
  v532 = &v365 - v18;
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAD8, &qword_1D30F5A10);
  v474 = *(v475 - 8);
  v19 = *(v474 + 64);
  MEMORY[0x1EEE9AC00](v475);
  v531 = &v365 - v20;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAE0, &qword_1D30F5A18);
  v470 = *(v471 - 8);
  v21 = *(v470 + 64);
  MEMORY[0x1EEE9AC00](v471);
  v529 = &v365 - v22;
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAE8, &qword_1D30F5A20);
  v472 = *(v473 - 8);
  v23 = *(v472 + 64);
  MEMORY[0x1EEE9AC00](v473);
  v530 = &v365 - v24;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAF0, &qword_1D30F5A28);
  v468 = *(v469 - 8);
  v25 = *(v468 + 64);
  MEMORY[0x1EEE9AC00](v469);
  v528 = &v365 - v26;
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AAF8, &qword_1D30F5A30);
  v464 = *(v465 - 8);
  v27 = *(v464 + 64);
  MEMORY[0x1EEE9AC00](v465);
  v526 = &v365 - v28;
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB00, &qword_1D30F5A38);
  v466 = *(v467 - 8);
  v29 = *(v466 + 64);
  MEMORY[0x1EEE9AC00](v467);
  v527 = &v365 - v30;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB08, &qword_1D30F5A40);
  v462 = *(v463 - 8);
  v31 = *(v462 + 64);
  MEMORY[0x1EEE9AC00](v463);
  v525 = &v365 - v32;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB10, &qword_1D30F5A48);
  v460 = *(v461 - 8);
  v33 = *(v460 + 64);
  MEMORY[0x1EEE9AC00](v461);
  v524 = &v365 - v34;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB18, &qword_1D30F5A50);
  v458 = *(v459 - 8);
  v35 = *(v458 + 64);
  MEMORY[0x1EEE9AC00](v459);
  v523 = &v365 - v36;
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB20, &qword_1D30F5A58);
  v454 = *(v455 - 8);
  v37 = *(v454 + 64);
  MEMORY[0x1EEE9AC00](v455);
  v521 = &v365 - v38;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB28, &qword_1D30F5A60);
  v456 = *(v457 - 8);
  v39 = *(v456 + 64);
  MEMORY[0x1EEE9AC00](v457);
  v522 = &v365 - v40;
  v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB30, &qword_1D30F5A68);
  v452 = *(v453 - 8);
  v41 = *(v452 + 64);
  MEMORY[0x1EEE9AC00](v453);
  v520 = &v365 - v42;
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB38, &qword_1D30F5A70);
  v448 = *(v449 - 8);
  v43 = *(v448 + 64);
  MEMORY[0x1EEE9AC00](v449);
  v518 = &v365 - v44;
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB40, &qword_1D30F5A78);
  v450 = *(v451 - 8);
  v45 = *(v450 + 64);
  MEMORY[0x1EEE9AC00](v451);
  v519 = &v365 - v46;
  v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB48, &qword_1D30F5A80);
  v446 = *(v447 - 8);
  v47 = *(v446 + 64);
  MEMORY[0x1EEE9AC00](v447);
  v517 = &v365 - v48;
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB50, &qword_1D30F5A88);
  v444 = *(v445 - 8);
  v49 = *(v444 + 64);
  MEMORY[0x1EEE9AC00](v445);
  v516 = &v365 - v50;
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB58, &qword_1D30F5A90);
  v440 = *(v442 - 8);
  v51 = *(v440 + 64);
  MEMORY[0x1EEE9AC00](v442);
  v514 = &v365 - v52;
  v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB60, &qword_1D30F5A98);
  v441 = *(v443 - 8);
  v53 = *(v441 + 64);
  MEMORY[0x1EEE9AC00](v443);
  v515 = &v365 - v54;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB68, &qword_1D30F5AA0);
  v438 = *(v439 - 8);
  v55 = *(v438 + 64);
  MEMORY[0x1EEE9AC00](v439);
  v513 = &v365 - v56;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB70, &qword_1D30F5AA8);
  v434 = *(v436 - 8);
  v57 = *(v434 + 64);
  MEMORY[0x1EEE9AC00](v436);
  v511 = &v365 - v58;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB78, &qword_1D30F5AB0);
  v435 = *(v437 - 8);
  v59 = *(v435 + 64);
  MEMORY[0x1EEE9AC00](v437);
  v512 = &v365 - v60;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB80, &qword_1D30F5AB8);
  v432 = *(v433 - 8);
  v61 = *(v432 + 64);
  MEMORY[0x1EEE9AC00](v433);
  v510 = &v365 - v62;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB88, &qword_1D30F5AC0);
  v430 = *(v431 - 8);
  v63 = *(v430 + 64);
  MEMORY[0x1EEE9AC00](v431);
  v509 = &v365 - v64;
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB90, &qword_1D30F5AC8);
  v428 = *(v429 - 8);
  v65 = *(v428 + 64);
  MEMORY[0x1EEE9AC00](v429);
  v508 = &v365 - v66;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AB98, &qword_1D30F5AD0);
  v426 = *(v427 - 8);
  v67 = *(v426 + 64);
  MEMORY[0x1EEE9AC00](v427);
  v507 = &v365 - v68;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABA0, &qword_1D30F5AD8);
  v424 = *(v425 - 8);
  v69 = *(v424 + 64);
  MEMORY[0x1EEE9AC00](v425);
  v506 = &v365 - v70;
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABA8, &qword_1D30F5AE0);
  v422 = *(v423 - 8);
  v71 = *(v422 + 64);
  MEMORY[0x1EEE9AC00](v423);
  v505 = &v365 - v72;
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABB0, &qword_1D30F5AE8);
  v420 = *(v421 - 8);
  v73 = *(v420 + 64);
  MEMORY[0x1EEE9AC00](v421);
  v504 = &v365 - v74;
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABB8, &qword_1D30F5AF0);
  v416 = *(v417 - 8);
  v75 = *(v416 + 64);
  MEMORY[0x1EEE9AC00](v417);
  v502 = &v365 - v76;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABC0, &qword_1D30F5AF8);
  v418 = *(v419 - 8);
  v77 = *(v418 + 64);
  MEMORY[0x1EEE9AC00](v419);
  v503 = &v365 - v78;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABC8, &qword_1D30F5B00);
  v412 = *(v413 - 8);
  v79 = *(v412 + 64);
  MEMORY[0x1EEE9AC00](v413);
  v500 = &v365 - v80;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABD0, &qword_1D30F5B08);
  v414 = *(v415 - 8);
  v81 = *(v414 + 64);
  MEMORY[0x1EEE9AC00](v415);
  v501 = &v365 - v82;
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABD8, &qword_1D30F5B10);
  v410 = *(v411 - 8);
  v83 = *(v410 + 64);
  MEMORY[0x1EEE9AC00](v411);
  v499 = &v365 - v84;
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABE0, &qword_1D30F5B18);
  v408 = *(v409 - 8);
  v85 = *(v408 + 64);
  MEMORY[0x1EEE9AC00](v409);
  v498 = &v365 - v86;
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABE8, &qword_1D30F5B20);
  v404 = *(v405 - 8);
  v87 = *(v404 + 64);
  MEMORY[0x1EEE9AC00](v405);
  v497 = &v365 - v88;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABF0, &qword_1D30F5B28);
  v406 = *(v407 - 8);
  v89 = *(v406 + 64);
  MEMORY[0x1EEE9AC00](v407);
  v544 = &v365 - v90;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ABF8, &qword_1D30F5B30);
  v403 = *(v402 - 8);
  v91 = *(v403 + 64);
  MEMORY[0x1EEE9AC00](v402);
  v543 = &v365 - v92;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AC00, &qword_1D30F5B38);
  v400 = *(v401 - 8);
  v93 = *(v400 + 64);
  MEMORY[0x1EEE9AC00](v401);
  v496 = &v365 - v94;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AC08, &qword_1D30F5B40);
  v397 = *(v398 - 8);
  v95 = *(v397 + 64);
  MEMORY[0x1EEE9AC00](v398);
  v494 = &v365 - v96;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AC10, &qword_1D30F5B48);
  v395 = *(v396 - 8);
  v97 = *(v395 + 64);
  MEMORY[0x1EEE9AC00](v396);
  v493 = &v365 - v98;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AC18, &qword_1D30F5B50);
  v384 = *(v399 - 8);
  v99 = *(v384 + 64);
  MEMORY[0x1EEE9AC00](v399);
  v495 = &v365 - v100;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AC20, &qword_1D30F5B58);
  v393 = *(v394 - 8);
  v101 = *(v393 + 64);
  MEMORY[0x1EEE9AC00](v394);
  v492 = &v365 - v102;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AC28, &qword_1D30F5B60);
  v540 = *(v542 - 8);
  v103 = *(v540 + 64);
  MEMORY[0x1EEE9AC00](v542);
  v548 = &v365 - v104;
  v541 = type metadata accessor for Helper.Reply(0);
  v105 = *(*(v541 - 8) + 64);
  v106 = MEMORY[0x1EEE9AC00](v541);
  v382 = &v365 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x1EEE9AC00](v106);
  v381 = &v365 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v383 = (&v365 - v111);
  v112 = MEMORY[0x1EEE9AC00](v110);
  v392 = &v365 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v391 = &v365 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v390 = &v365 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v389 = &v365 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v380 = (&v365 - v121);
  v122 = MEMORY[0x1EEE9AC00](v120);
  v379 = (&v365 - v123);
  v124 = MEMORY[0x1EEE9AC00](v122);
  v388 = &v365 - v125;
  v126 = MEMORY[0x1EEE9AC00](v124);
  v378 = (&v365 - v127);
  v128 = MEMORY[0x1EEE9AC00](v126);
  v377 = (&v365 - v129);
  v130 = MEMORY[0x1EEE9AC00](v128);
  v376 = (&v365 - v131);
  v132 = MEMORY[0x1EEE9AC00](v130);
  v375 = (&v365 - v133);
  v134 = MEMORY[0x1EEE9AC00](v132);
  v374 = &v365 - v135;
  v136 = MEMORY[0x1EEE9AC00](v134);
  v372 = &v365 - v137;
  v138 = MEMORY[0x1EEE9AC00](v136);
  v387 = &v365 - v139;
  v140 = MEMORY[0x1EEE9AC00](v138);
  v373 = (&v365 - v141);
  v142 = MEMORY[0x1EEE9AC00](v140);
  v371 = (&v365 - v143);
  v144 = MEMORY[0x1EEE9AC00](v142);
  v386 = &v365 - v145;
  v146 = MEMORY[0x1EEE9AC00](v144);
  v385 = &v365 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v150 = &v365 - v149;
  v151 = MEMORY[0x1EEE9AC00](v148);
  v153 = &v365 - v152;
  v154 = MEMORY[0x1EEE9AC00](v151);
  v156 = &v365 - v155;
  v157 = MEMORY[0x1EEE9AC00](v154);
  v159 = &v365 - v158;
  v160 = MEMORY[0x1EEE9AC00](v157);
  v162 = &v365 - v161;
  MEMORY[0x1EEE9AC00](v160);
  v164 = &v365 - v163;
  v165 = a1[3];
  v166 = a1[4];
  v546 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v165);
  sub_1D30652F8();
  v167 = v547;
  sub_1D30E990C();
  if (v167)
  {
LABEL_8:
    v185 = v546;
    return __swift_destroy_boxed_opaque_existential_1(v185);
  }

  v366 = v156;
  v367 = v153;
  v368 = v162;
  v369 = v150;
  v365 = v159;
  v168 = v543;
  v169 = v544;
  v547 = 0;
  v170 = v541;
  v370 = v164;
  v171 = v545;
  v172 = v542;
  v173 = v548;
  v174 = sub_1D30E96AC();
  v175 = (2 * *(v174 + 16)) | 1;
  v559 = v174;
  v560 = v174 + 32;
  v561 = 0;
  v562 = v175;
  v176 = sub_1D302D66C();
  if (v561 != v562 >> 1)
  {
LABEL_6:
    v181 = sub_1D30E94EC();
    swift_allocError();
    v183 = v182;
    v184 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30) + 48);
    *v183 = v170;
    sub_1D30E960C();
    sub_1D30E94DC();
    (*(*(v181 - 8) + 104))(v183, *MEMORY[0x1E69E6AF8], v181);
    swift_willThrow();
LABEL_7:
    (*(v540 + 8))(v173, v172);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v176)
  {
    case 0:
      LOBYTE(v549) = 0;
      sub_1D30665F4();
      v177 = v492;
      v178 = v547;
      sub_1D30E95FC();
      if (v178)
      {
        goto LABEL_7;
      }

      sub_1D3066930();
      v179 = v394;
      sub_1D30E967C();
      v180 = (v540 + 8);
      (*(v393 + 8))(v177, v179);
      (*v180)(v173, v172);
      swift_unknownObjectRelease();
      v354 = v556;
      v355 = v368;
      *(v368 + 6) = v555;
      *(v355 + 112) = v354;
      *(v355 + 128) = v557;
      v356 = v552;
      *(v355 + 32) = v551;
      *(v355 + 48) = v356;
      v357 = v554;
      *(v355 + 64) = v553;
      *(v355 + 80) = v357;
      v358 = v550;
      *v355 = v549;
      *(v355 + 16) = v358;
      goto LABEL_115;
    case 1:
      LOBYTE(v549) = 1;
      sub_1D30665A0();
      v273 = v495;
      v274 = v547;
      sub_1D30E95FC();
      if (v274)
      {
        goto LABEL_59;
      }

      v343 = v171;
      LOBYTE(v563) = 0;
      sub_1D2FF96E8();
      v344 = v399;
      sub_1D30E967C();
      v345 = v540;
      v547 = *(&v549 + 1);
      v544 = v549;
      type metadata accessor for ManifestDataSource(0);
      v558 = 1;
      sub_1D3045A34(&qword_1EC749320, type metadata accessor for ManifestDataSource);
      sub_1D30E967C();
      (*(v384 + 8))(v273, v344);
      (*(v345 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v362 = v563;
      v363 = v365;
      v364 = v547;
      *v365 = v544;
      *(v363 + 8) = v364;
      *(v363 + 16) = v362;
      swift_storeEnumTagMultiPayload();
      v189 = v370;
      sub_1D3056830(v363, v370, type metadata accessor for Helper.Reply);
      v319 = v546;
      v171 = v343;
      goto LABEL_109;
    case 2:
      LOBYTE(v549) = 2;
      sub_1D306654C();
      v258 = v493;
      v259 = v547;
      sub_1D30E95FC();
      if (v259)
      {
        goto LABEL_7;
      }

      sub_1D2FF96E8();
      v260 = v396;
      sub_1D30E967C();
      v261 = v540;
      (*(v395 + 8))(v258, v260);
      (*(v261 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v355 = v366;
      *v366 = v549;
      goto LABEL_115;
    case 3:
      LOBYTE(v549) = 3;
      sub_1D30664F8();
      v267 = v494;
      v268 = v547;
      sub_1D30E95FC();
      if (v268)
      {
        goto LABEL_7;
      }

      sub_1D2FF96E8();
      v269 = v398;
      sub_1D30E967C();
      v270 = v540;
      (*(v397 + 8))(v267, v269);
      (*(v270 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v355 = v367;
      *v367 = v549;
      goto LABEL_115;
    case 4:
      LOBYTE(v549) = 4;
      sub_1D30664A4();
      v236 = v496;
      v237 = v547;
      sub_1D30E95FC();
      if (v237)
      {
        goto LABEL_7;
      }

      sub_1D2FF96E8();
      v238 = v401;
      sub_1D30E962C();
      v239 = v540;
      (*(v400 + 8))(v236, v238);
      (*(v239 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v355 = v369;
      *v369 = v549;
      goto LABEL_115;
    case 5:
      LOBYTE(v549) = 5;
      sub_1D3066450();
      v285 = v168;
      v286 = v547;
      sub_1D30E95FC();
      if (v286)
      {
        goto LABEL_59;
      }

      type metadata accessor for Helper.URLRequestResult(0);
      sub_1D3045A34(&qword_1EC74AC80, type metadata accessor for Helper.URLRequestResult);
      v196 = v385;
      v287 = v402;
      sub_1D30E967C();
      (*(v403 + 8))(v285, v287);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      goto LABEL_114;
    case 6:
      LOBYTE(v549) = 6;
      sub_1D30663FC();
      v295 = v169;
      v296 = v547;
      sub_1D30E95FC();
      if (v296)
      {
        goto LABEL_59;
      }

      type metadata accessor for Helper.PathToManifestLookupResult(0);
      sub_1D3045A34(&qword_1EC74AC78, type metadata accessor for Helper.PathToManifestLookupResult);
      v196 = v386;
      v297 = v407;
      sub_1D30E962C();
      v298 = v540;
      (*(v406 + 8))(v295, v297);
      (*(v298 + 8))(v173, v172);
      swift_unknownObjectRelease();
      goto LABEL_114;
    case 7:
      LOBYTE(v549) = 7;
      sub_1D30663A8();
      v271 = v497;
      v272 = v547;
      sub_1D30E95FC();
      if (v272)
      {
        goto LABEL_7;
      }

      (*(v404 + 8))(v271, v405);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 8:
      LOBYTE(v549) = 8;
      sub_1D3066354();
      v305 = v498;
      v306 = v547;
      sub_1D30E95FC();
      if (v306)
      {
        goto LABEL_7;
      }

      (*(v408 + 8))(v305, v409);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 9:
      v203 = v171;
      LOBYTE(v549) = 9;
      sub_1D3066300();
      v246 = v499;
      v247 = v547;
      sub_1D30E95FC();
      if (v247)
      {
        goto LABEL_59;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A460, &qword_1D30F5660);
      sub_1D30569B8();
      v248 = v411;
      sub_1D30E967C();
      v249 = v540;
      (*(v410 + 8))(v246, v248);
      (*(v249 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v208 = v371;
      *v371 = v549;
      goto LABEL_92;
    case 10:
      v203 = v171;
      LOBYTE(v549) = 10;
      sub_1D30662AC();
      v301 = v501;
      v302 = v547;
      sub_1D30E95FC();
      if (v302)
      {
        goto LABEL_59;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A460, &qword_1D30F5660);
      sub_1D30569B8();
      v303 = v415;
      sub_1D30E967C();
      v304 = v540;
      (*(v414 + 8))(v301, v303);
      (*(v304 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v208 = v373;
      *v373 = v549;
      goto LABEL_92;
    case 11:
      LOBYTE(v549) = 11;
      sub_1D3066258();
      v232 = v500;
      v233 = v547;
      sub_1D30E95FC();
      if (v233)
      {
        goto LABEL_7;
      }

      (*(v412 + 8))(v232, v413);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 12:
      LOBYTE(v549) = 12;
      sub_1D3066204();
      v242 = v503;
      v243 = v547;
      sub_1D30E95FC();
      if (v243)
      {
        goto LABEL_59;
      }

      type metadata accessor for AssetPackRecord.StaticRepresentation(0);
      sub_1D3045A34(&qword_1EC74A6E8, type metadata accessor for AssetPackRecord.StaticRepresentation);
      v196 = v387;
      v244 = v419;
      sub_1D30E967C();
      v245 = v540;
      (*(v418 + 8))(v242, v244);
      (*(v245 + 8))(v173, v172);
      swift_unknownObjectRelease();
      goto LABEL_114;
    case 13:
      LOBYTE(v549) = 13;
      sub_1D30661B0();
      v293 = v502;
      v294 = v547;
      sub_1D30E95FC();
      if (v294)
      {
        goto LABEL_7;
      }

      (*(v416 + 8))(v293, v417);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 14:
      LOBYTE(v549) = 14;
      sub_1D306615C();
      v217 = v504;
      v218 = v547;
      sub_1D30E95FC();
      if (v218)
      {
        goto LABEL_7;
      }

      v219 = v421;
      v220 = sub_1D30E964C();
      v221 = v540;
      v348 = v220;
      (*(v420 + 8))(v217, v219);
      (*(v221 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v349 = v348 & 1;
      v355 = v372;
      *v372 = v349;
      goto LABEL_115;
    case 15:
      LOBYTE(v549) = 15;
      sub_1D3066108();
      v262 = v505;
      v263 = v547;
      sub_1D30E95FC();
      if (v263)
      {
        goto LABEL_7;
      }

      v264 = v423;
      v265 = sub_1D30E964C();
      v266 = v540;
      v352 = v265;
      (*(v422 + 8))(v262, v264);
      (*(v266 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v353 = v352 & 1;
      v355 = v374;
      *v374 = v353;
      goto LABEL_115;
    case 16:
      LOBYTE(v549) = 16;
      sub_1D30660B4();
      v213 = v506;
      v214 = v547;
      sub_1D30E95FC();
      if (v214)
      {
        goto LABEL_7;
      }

      (*(v424 + 8))(v213, v425);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 17:
      LOBYTE(v549) = 17;
      sub_1D3066060();
      v279 = v507;
      v280 = v547;
      sub_1D30E95FC();
      if (v280)
      {
        goto LABEL_7;
      }

      (*(v426 + 8))(v279, v427);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 18:
      LOBYTE(v549) = 18;
      sub_1D306600C();
      v299 = v508;
      v300 = v547;
      sub_1D30E95FC();
      if (v300)
      {
        goto LABEL_7;
      }

      (*(v428 + 8))(v299, v429);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 19:
      LOBYTE(v549) = 19;
      sub_1D3065FB8();
      v320 = v509;
      v321 = v547;
      sub_1D30E95FC();
      if (v321)
      {
        goto LABEL_7;
      }

      (*(v430 + 8))(v320, v431);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 20:
      LOBYTE(v549) = 20;
      sub_1D3065F64();
      v283 = v510;
      v284 = v547;
      sub_1D30E95FC();
      if (v284)
      {
        goto LABEL_7;
      }

      (*(v432 + 8))(v283, v433);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 21:
      LOBYTE(v549) = 21;
      sub_1D3065EBC();
      v288 = v512;
      v289 = v547;
      sub_1D30E95FC();
      if (v289)
      {
        goto LABEL_7;
      }

      sub_1D30668DC();
      v290 = v437;
      sub_1D30E967C();
      v291 = v540;
      (*(v435 + 8))(v288, v290);
      (*(v291 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v292 = v550;
      v355 = v375;
      *v375 = v549;
      *(v355 + 16) = v292;
      goto LABEL_115;
    case 22:
      LOBYTE(v549) = 22;
      sub_1D3065E68();
      v313 = v511;
      v314 = v547;
      sub_1D30E95FC();
      if (v314)
      {
        goto LABEL_7;
      }

      (*(v434 + 8))(v313, v436);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 23:
      LOBYTE(v549) = 23;
      sub_1D3065E14();
      v324 = v513;
      v325 = v547;
      sub_1D30E95FC();
      if (v325)
      {
        goto LABEL_7;
      }

      sub_1D2FF8748();
      v326 = v439;
      sub_1D30E962C();
      v327 = v540;
      (*(v438 + 8))(v324, v326);
      (*(v327 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v359 = v550;
      v355 = v376;
      *v376 = v549;
      *(v355 + 16) = v359;
      *(v355 + 32) = v551;
      goto LABEL_115;
    case 24:
      LOBYTE(v549) = 24;
      sub_1D3065DC0();
      v252 = v515;
      v253 = v547;
      sub_1D30E95FC();
      if (v253)
      {
        goto LABEL_7;
      }

      sub_1D2FF8748();
      v254 = v443;
      sub_1D30E967C();
      v255 = v540;
      (*(v441 + 8))(v252, v254);
      (*(v255 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v256 = *(&v549 + 1);
      v355 = v377;
      *v377 = v549;
      *(v355 + 8) = v256;
      v257 = v551;
      *(v355 + 16) = v550;
      *(v355 + 32) = v257;
      goto LABEL_115;
    case 25:
      LOBYTE(v549) = 25;
      sub_1D3065D6C();
      v250 = v514;
      v251 = v547;
      sub_1D30E95FC();
      if (v251)
      {
        goto LABEL_7;
      }

      (*(v440 + 8))(v250, v442);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 26:
      LOBYTE(v549) = 26;
      sub_1D3065D18();
      v336 = v516;
      v337 = v547;
      sub_1D30E95FC();
      if (v337)
      {
        goto LABEL_7;
      }

      (*(v444 + 8))(v336, v445);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 27:
      v203 = v171;
      LOBYTE(v549) = 27;
      sub_1D3065C10();
      v204 = v517;
      v205 = v547;
      sub_1D30E95FC();
      if (v205)
      {
        goto LABEL_59;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A998, &qword_1D30F59C8);
      sub_1D3066828();
      v206 = v447;
      sub_1D30E967C();
      v207 = v540;
      (*(v446 + 8))(v204, v206);
      (*(v207 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v208 = v378;
      *v378 = v549;
      goto LABEL_92;
    case 28:
      LOBYTE(v549) = 28;
      sub_1D3065BBC();
      v328 = v519;
      v329 = v547;
      sub_1D30E95FC();
      if (v329)
      {
        goto LABEL_59;
      }

      type metadata accessor for LicenseRecord.StaticRepresentation(0);
      sub_1D3045A34(&qword_1EC74AC60, type metadata accessor for LicenseRecord.StaticRepresentation);
      v196 = v388;
      v330 = v451;
      sub_1D30E967C();
      v331 = v540;
      (*(v450 + 8))(v328, v330);
      (*(v331 + 8))(v173, v172);
      swift_unknownObjectRelease();
      goto LABEL_114;
    case 29:
      LOBYTE(v549) = 29;
      sub_1D3065B68();
      v332 = v518;
      v333 = v547;
      sub_1D30E95FC();
      if (v333)
      {
        goto LABEL_7;
      }

      (*(v448 + 8))(v332, v449);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 30:
      LOBYTE(v549) = 30;
      sub_1D3065B14();
      v307 = v520;
      v308 = v547;
      sub_1D30E95FC();
      if (v308)
      {
        goto LABEL_7;
      }

      (*(v452 + 8))(v307, v453);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 31:
      v203 = v171;
      LOBYTE(v549) = 31;
      sub_1D3065A3C();
      v275 = v522;
      v276 = v547;
      sub_1D30E95FC();
      if (v276)
      {
        goto LABEL_59;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A960, &qword_1D30F59C0);
      sub_1D30667A4();
      v277 = v457;
      sub_1D30E967C();
      v278 = v540;
      (*(v456 + 8))(v275, v277);
      (*(v278 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v208 = v379;
      *v379 = v549;
      goto LABEL_92;
    case 32:
      LOBYTE(v549) = 32;
      sub_1D30659E8();
      v309 = v521;
      v310 = v547;
      sub_1D30E95FC();
      if (v310)
      {
        goto LABEL_7;
      }

      (*(v454 + 8))(v309, v455);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 33:
      LOBYTE(v549) = 33;
      sub_1D3065940();
      v222 = v523;
      v223 = v547;
      sub_1D30E95FC();
      if (v223)
      {
        goto LABEL_7;
      }

      sub_1D3066750();
      v224 = v459;
      sub_1D30E967C();
      v225 = v540;
      (*(v458 + 8))(v222, v224);
      (*(v225 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v226 = *(&v549 + 1);
      v355 = v380;
      *v380 = v549;
      *(v355 + 8) = v226;
      goto LABEL_115;
    case 34:
      LOBYTE(v549) = 34;
      sub_1D30658EC();
      v209 = v524;
      v210 = v547;
      sub_1D30E95FC();
      if (v210)
      {
        goto LABEL_59;
      }

      type metadata accessor for Helper.PathInAssetPackLookupResult(0);
      sub_1D3045A34(&qword_1EC74AC48, type metadata accessor for Helper.PathInAssetPackLookupResult);
      v196 = v389;
      v211 = v461;
      sub_1D30E962C();
      v212 = v540;
      (*(v460 + 8))(v209, v211);
      (*(v212 + 8))(v173, v172);
      swift_unknownObjectRelease();
      goto LABEL_114;
    case 35:
      LOBYTE(v549) = 35;
      sub_1D3065898();
      v194 = v525;
      v195 = v547;
      sub_1D30E95FC();
      if (v195)
      {
        goto LABEL_59;
      }

      type metadata accessor for Helper.PathForAppLookupResult(0);
      sub_1D3045A34(&qword_1EC74AC40, type metadata accessor for Helper.PathForAppLookupResult);
      v196 = v390;
      v197 = v463;
      sub_1D30E962C();
      v198 = v540;
      (*(v462 + 8))(v194, v197);
      (*(v198 + 8))(v173, v172);
      swift_unknownObjectRelease();
      goto LABEL_114;
    case 36:
      LOBYTE(v549) = 36;
      sub_1D3065844();
      v199 = v527;
      v200 = v547;
      sub_1D30E95FC();
      if (v200)
      {
        goto LABEL_59;
      }

      type metadata accessor for Helper.PathToStagingDirectoryLookupResult(0);
      sub_1D3045A34(&qword_1EC74AC38, type metadata accessor for Helper.PathToStagingDirectoryLookupResult);
      v196 = v391;
      v201 = v467;
      sub_1D30E967C();
      v202 = v540;
      (*(v466 + 8))(v199, v201);
      (*(v202 + 8))(v173, v172);
      swift_unknownObjectRelease();
      goto LABEL_114;
    case 37:
      LOBYTE(v549) = 37;
      sub_1D30657F0();
      v190 = v526;
      v191 = v547;
      sub_1D30E95FC();
      if (v191)
      {
        goto LABEL_7;
      }

      (*(v464 + 8))(v190, v465);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 38:
      LOBYTE(v549) = 38;
      sub_1D306579C();
      v334 = v528;
      v335 = v547;
      sub_1D30E95FC();
      if (v335)
      {
        goto LABEL_59;
      }

      sub_1D30E8D9C();
      sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
      v196 = v392;
      v346 = v469;
      sub_1D30E967C();
      v347 = v540;
      (*(v468 + 8))(v334, v346);
      (*(v347 + 8))(v173, v172);
      swift_unknownObjectRelease();
LABEL_114:
      swift_storeEnumTagMultiPayload();
      v189 = v370;
      sub_1D3056830(v196, v370, type metadata accessor for Helper.Reply);
      v319 = v546;
      v171 = v545;
      goto LABEL_109;
    case 39:
      v203 = v171;
      LOBYTE(v549) = 39;
      sub_1D3065694();
      v315 = v530;
      v316 = v547;
      sub_1D30E95FC();
      if (v316)
      {
LABEL_59:
        (*(v540 + 8))(v173, v172);
        swift_unknownObjectRelease();
        v185 = v546;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A8F0, &qword_1D30F59B8);
        sub_1D306669C();
        v317 = v473;
        sub_1D30E967C();
        v318 = v540;
        (*(v472 + 8))(v315, v317);
        (*(v318 + 8))(v173, v172);
        swift_unknownObjectRelease();
        v208 = v383;
        *v383 = v549;
LABEL_92:
        swift_storeEnumTagMultiPayload();
        v189 = v370;
        sub_1D3056830(v208, v370, type metadata accessor for Helper.Reply);
        v319 = v546;
        v171 = v203;
LABEL_109:
        sub_1D3056830(v189, v171, type metadata accessor for Helper.Reply);
        v185 = v319;
      }

      break;
    case 40:
      LOBYTE(v549) = 40;
      sub_1D3065640();
      v240 = v529;
      v241 = v547;
      sub_1D30E95FC();
      if (v241)
      {
        goto LABEL_7;
      }

      (*(v470 + 8))(v240, v471);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 41:
      LOBYTE(v549) = 41;
      sub_1D30655EC();
      v281 = v531;
      v282 = v547;
      sub_1D30E95FC();
      if (v282)
      {
        goto LABEL_7;
      }

      (*(v474 + 8))(v281, v475);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 42:
      LOBYTE(v549) = 42;
      sub_1D3065598();
      v322 = v532;
      v323 = v547;
      sub_1D30E95FC();
      if (v323)
      {
        goto LABEL_7;
      }

      (*(v476 + 8))(v322, v477);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 43:
      LOBYTE(v549) = 43;
      sub_1D3065544();
      v187 = v533;
      v188 = v547;
      sub_1D30E95FC();
      if (v188)
      {
        goto LABEL_7;
      }

      (*(v478 + 8))(v187, v479);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 44:
      LOBYTE(v549) = 44;
      sub_1D30654F0();
      v215 = v534;
      v216 = v547;
      sub_1D30E95FC();
      if (v216)
      {
        goto LABEL_7;
      }

      (*(v480 + 8))(v215, v481);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 45:
      LOBYTE(v549) = 45;
      sub_1D306549C();
      v311 = v535;
      v312 = v547;
      sub_1D30E95FC();
      if (v312)
      {
        goto LABEL_7;
      }

      (*(v482 + 8))(v311, v483);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 46:
      LOBYTE(v549) = 46;
      sub_1D3065448();
      v338 = v536;
      v339 = v547;
      sub_1D30E95FC();
      if (v339)
      {
        goto LABEL_7;
      }

      v340 = v485;
      v341 = sub_1D30E964C();
      v342 = v540;
      v360 = v341;
      (*(v484 + 8))(v338, v340);
      (*(v342 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v361 = v360 & 1;
      v355 = v381;
      *v381 = v361;
      goto LABEL_115;
    case 47:
      LOBYTE(v549) = 47;
      sub_1D30653F4();
      v192 = v537;
      v193 = v547;
      sub_1D30E95FC();
      if (v193)
      {
        goto LABEL_7;
      }

      (*(v486 + 8))(v192, v487);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
      goto LABEL_107;
    case 48:
      LOBYTE(v549) = 48;
      sub_1D30653A0();
      v227 = v538;
      v228 = v547;
      sub_1D30E95FC();
      if (v228)
      {
        goto LABEL_7;
      }

      v229 = v489;
      v230 = sub_1D30E964C();
      v231 = v540;
      v350 = v230;
      (*(v488 + 8))(v227, v229);
      (*(v231 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v351 = v350 & 1;
      v355 = v382;
      *v382 = v351;
LABEL_115:
      swift_storeEnumTagMultiPayload();
      v189 = v370;
      sub_1D3056830(v355, v370, type metadata accessor for Helper.Reply);
      goto LABEL_108;
    case 49:
      LOBYTE(v549) = 49;
      sub_1D306534C();
      v234 = v539;
      v235 = v547;
      sub_1D30E95FC();
      if (v235)
      {
        goto LABEL_7;
      }

      (*(v490 + 8))(v234, v491);
      (*(v540 + 8))(v173, v172);
      swift_unknownObjectRelease();
      v189 = v370;
LABEL_107:
      swift_storeEnumTagMultiPayload();
LABEL_108:
      v319 = v546;
      goto LABEL_109;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v185);
}

unint64_t Helper.URLRequestResult.description.getter()
{
  sub_1D30E948C();

  sub_1D30E852C();
  sub_1D3045A34(&qword_1EC7493E8, MEMORY[0x1E6967EC8]);
  v0 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t Helper.URLRequestResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Helper.URLRequestResult(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30E98FC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_1D2FF96E8();
    sub_1D30E97DC();
    v11 = v17[1];
    v10 = v17[2];
    sub_1D2FF1494(0, &qword_1EC74AC90, 0x1E696ACD0);
    v12 = sub_1D2FF1494(0, &qword_1EC74AC98, 0x1E696AF68);
    v13 = sub_1D30E92CC();
    if (v13)
    {
      v15 = v13;
      sub_1D30E850C();
      sub_1D2FF1804(v11, v10);

      __swift_destroy_boxed_opaque_existential_1(v18);
      sub_1D3056830(v8, a2, type metadata accessor for Helper.URLRequestResult);
    }

    else
    {
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      *v16 = v12;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D2FF1804(v11, v10);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Helper.URLRequestResult.encode(to:)(void *a1)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30E991C();
  v2 = objc_opt_self();
  v3 = sub_1D30E84FC();
  v12[0] = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v12];

  v5 = v12[0];
  if (v4)
  {
    v6 = sub_1D30E893C();
    v8 = v7;

    v12[0] = v6;
    v12[1] = v8;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_1D2FF92C4();
    sub_1D30E97EC();
    sub_1D2FF1804(v6, v8);
  }

  else
  {
    v9 = v5;
    sub_1D30E87DC();

    swift_willThrow();
  }

  result = __swift_destroy_boxed_opaque_existential_1(v13);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D3063178()
{
  sub_1D30E948C();

  sub_1D30E852C();
  sub_1D3045A34(&qword_1EC7493E8, MEMORY[0x1E6967EC8]);
  v0 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

unint64_t Helper.PathToManifestLookupResult.description.getter()
{
  sub_1D30E948C();

  sub_1D30E8D9C();
  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
  v0 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0xD000000000000028;
}

uint64_t sub_1D3063338(uint64_t a1)
{
  v2 = sub_1D3066984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3063374(uint64_t a1)
{
  v2 = sub_1D3066984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Helper.PathToManifestLookupResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ACA0, &qword_1D30F5B68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3066984();
  sub_1D30E992C();
  v15[15] = 0;
  sub_1D30E8D9C();
  sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
  sub_1D30E974C();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for Helper.PathToManifestLookupResult(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_1D30E96EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Helper.PathToManifestLookupResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1D30E8D9C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ACB0, &qword_1D30F5B70);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Helper.PathToManifestLookupResult(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3066984();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
  v18 = v30;
  sub_1D30E967C();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_1D30E961C();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_1D3058338(v23, v22, type metadata accessor for Helper.PathToManifestLookupResult);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D3065284(v23, type metadata accessor for Helper.PathToManifestLookupResult);
}

unint64_t sub_1D30638F4()
{
  sub_1D30E948C();

  sub_1D30E8D9C();
  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
  v0 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0xD000000000000028;
}

unint64_t Helper.PathInAssetPackLookupResult.description.getter()
{
  sub_1D30E948C();

  sub_1D30E8D9C();
  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
  v0 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](15904, 0xE200000000000000);
  return 0xD00000000000002ALL;
}

uint64_t sub_1D3063AB4(uint64_t a1)
{
  v2 = sub_1D30669D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3063AF0(uint64_t a1)
{
  v2 = sub_1D30669D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Helper.PathInAssetPackLookupResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ACB8, &qword_1D30F5B78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30669D8();
  sub_1D30E992C();
  v15[15] = 0;
  sub_1D30E8D9C();
  sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
  sub_1D30E974C();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for Helper.PathInAssetPackLookupResult(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_1D30E96EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Helper.PathInAssetPackLookupResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1D30E8D9C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ACC8, &qword_1D30F5B80);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Helper.PathInAssetPackLookupResult(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30669D8();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
  v18 = v30;
  sub_1D30E967C();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_1D30E961C();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_1D3058338(v23, v22, type metadata accessor for Helper.PathInAssetPackLookupResult);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D3065284(v23, type metadata accessor for Helper.PathInAssetPackLookupResult);
}

unint64_t sub_1D3064070()
{
  sub_1D30E948C();

  sub_1D30E8D9C();
  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
  v0 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](15904, 0xE200000000000000);
  return 0xD00000000000002ALL;
}

uint64_t sub_1D3064154@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D30E8D9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Helper.PathForAppLookupResult.assetPackID.getter()
{
  v1 = (v0 + *(type metadata accessor for Helper.PathForAppLookupResult(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Helper.PathForAppLookupResult.description.getter()
{
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD000000000000024, 0x80000001D30ED420);
  sub_1D30E8D9C();
  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
  v1 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v1);

  MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EBC00);
  v2 = type metadata accessor for Helper.PathForAppLookupResult(0);
  MEMORY[0x1D38B2610](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D3064320()
{
  v1 = 0x6361507465737361;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_1D3064380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30DC22C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D30643A8(uint64_t a1)
{
  v2 = sub_1D3066A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30643E4(uint64_t a1)
{
  v2 = sub_1D3066A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Helper.PathForAppLookupResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ACD0, &qword_1D30F5B88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3066A2C();
  sub_1D30E992C();
  v19[15] = 0;
  sub_1D30E8D9C();
  sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
  sub_1D30E974C();
  if (!v2)
  {
    v11 = type metadata accessor for Helper.PathForAppLookupResult(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v19[14] = 1;
    sub_1D30E970C();
    v15 = (v3 + *(v11 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    sub_1D30E96EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Helper.PathForAppLookupResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1D30E8D9C();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ACE0, &qword_1D30F5B90);
  v32 = *(v35 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Helper.PathForAppLookupResult(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3066A2C();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v32;
  v15 = v33;
  v29 = v10;
  v30 = v13;
  v38 = 0;
  sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
  v18 = v34;
  v17 = v35;
  sub_1D30E967C();
  (*(v15 + 32))(v30, v18, v4);
  v37 = 1;
  v19 = sub_1D30E963C();
  v20 = &v30[*(v29 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v36 = 2;
  v22 = sub_1D30E961C();
  v24 = v23;
  (*(v16 + 8))(v9, v17);
  v25 = v30;
  v26 = &v30[*(v29 + 24)];
  *v26 = v22;
  v26[1] = v24;
  sub_1D3058338(v25, v31, type metadata accessor for Helper.PathForAppLookupResult);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D3065284(v25, type metadata accessor for Helper.PathForAppLookupResult);
}

uint64_t Helper.PathToStagingDirectoryLookupResult.description.getter()
{
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD000000000000031, 0x80000001D30ED3E0);
  sub_1D30E8D9C();
  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
  v0 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D3064B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D30EE5F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D3064BE4(uint64_t a1)
{
  v2 = sub_1D3066A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3064C20(uint64_t a1)
{
  v2 = sub_1D3066A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Helper.PathToStagingDirectoryLookupResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ACE8, &qword_1D30F5B98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3066A80();
  sub_1D30E992C();
  v15[15] = 0;
  sub_1D30E8D9C();
  sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8]);
  sub_1D30E974C();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for Helper.PathToStagingDirectoryLookupResult(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_1D30E96EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Helper.PathToStagingDirectoryLookupResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1D30E8D9C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74ACF8, &qword_1D30F5BA0);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Helper.PathToStagingDirectoryLookupResult(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3066A80();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8]);
  v18 = v30;
  sub_1D30E967C();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_1D30E961C();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_1D3058338(v23, v22, type metadata accessor for Helper.PathToStagingDirectoryLookupResult);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D3065284(v23, type metadata accessor for Helper.PathToStagingDirectoryLookupResult);
}

uint64_t sub_1D30651A0()
{
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD000000000000031, 0x80000001D30ED3E0);
  sub_1D30E8D9C();
  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
  v0 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D3065284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D30652E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D2FF1804(a1, a2);
  }

  return a1;
}

unint64_t sub_1D30652F8()
{
  result = qword_1EE314F50;
  if (!qword_1EE314F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F50);
  }

  return result;
}

unint64_t sub_1D306534C()
{
  result = qword_1EE314DF8;
  if (!qword_1EE314DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DF8);
  }

  return result;
}

unint64_t sub_1D30653A0()
{
  result = qword_1EC74A8A0;
  if (!qword_1EC74A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A8A0);
  }

  return result;
}

unint64_t sub_1D30653F4()
{
  result = qword_1EC74A8A8;
  if (!qword_1EC74A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A8A8);
  }

  return result;
}

unint64_t sub_1D3065448()
{
  result = qword_1EC74A8B0;
  if (!qword_1EC74A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A8B0);
  }

  return result;
}

unint64_t sub_1D306549C()
{
  result = qword_1EC74A8B8;
  if (!qword_1EC74A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A8B8);
  }

  return result;
}

unint64_t sub_1D30654F0()
{
  result = qword_1EC74A8C0;
  if (!qword_1EC74A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A8C0);
  }

  return result;
}

unint64_t sub_1D3065544()
{
  result = qword_1EC74A8C8;
  if (!qword_1EC74A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A8C8);
  }

  return result;
}

unint64_t sub_1D3065598()
{
  result = qword_1EC74A8D0;
  if (!qword_1EC74A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A8D0);
  }

  return result;
}

unint64_t sub_1D30655EC()
{
  result = qword_1EC74A8D8;
  if (!qword_1EC74A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A8D8);
  }

  return result;
}

unint64_t sub_1D3065640()
{
  result = qword_1EC74A8E0;
  if (!qword_1EC74A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A8E0);
  }

  return result;
}

unint64_t sub_1D3065694()
{
  result = qword_1EC74A8E8;
  if (!qword_1EC74A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A8E8);
  }

  return result;
}

unint64_t sub_1D30656E8()
{
  result = qword_1EC74A8F8;
  if (!qword_1EC74A8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A8F0, &qword_1D30F59B8);
    sub_1D3045A34(&qword_1EC749A68, MEMORY[0x1E69E8380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A8F8);
  }

  return result;
}

unint64_t sub_1D306579C()
{
  result = qword_1EC74A900;
  if (!qword_1EC74A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A900);
  }

  return result;
}

unint64_t sub_1D30657F0()
{
  result = qword_1EC74A908;
  if (!qword_1EC74A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A908);
  }

  return result;
}

unint64_t sub_1D3065844()
{
  result = qword_1EC74A910;
  if (!qword_1EC74A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A910);
  }

  return result;
}

unint64_t sub_1D3065898()
{
  result = qword_1EC74A920;
  if (!qword_1EC74A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A920);
  }

  return result;
}

unint64_t sub_1D30658EC()
{
  result = qword_1EC74A930;
  if (!qword_1EC74A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A930);
  }

  return result;
}

unint64_t sub_1D3065940()
{
  result = qword_1EC74A940;
  if (!qword_1EC74A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A940);
  }

  return result;
}

unint64_t sub_1D3065994()
{
  result = qword_1EC74A948;
  if (!qword_1EC74A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A948);
  }

  return result;
}

unint64_t sub_1D30659E8()
{
  result = qword_1EC74A950;
  if (!qword_1EC74A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A950);
  }

  return result;
}

unint64_t sub_1D3065A3C()
{
  result = qword_1EC74A958;
  if (!qword_1EC74A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A958);
  }

  return result;
}

unint64_t sub_1D3065A90()
{
  result = qword_1EC74A968;
  if (!qword_1EC74A968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A960, &qword_1D30F59C0);
    sub_1D3065994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A968);
  }

  return result;
}

unint64_t sub_1D3065B14()
{
  result = qword_1EC74A970;
  if (!qword_1EC74A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A970);
  }

  return result;
}

unint64_t sub_1D3065B68()
{
  result = qword_1EC74A978;
  if (!qword_1EC74A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A978);
  }

  return result;
}

unint64_t sub_1D3065BBC()
{
  result = qword_1EC74A980;
  if (!qword_1EC74A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A980);
  }

  return result;
}

unint64_t sub_1D3065C10()
{
  result = qword_1EC74A990;
  if (!qword_1EC74A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A990);
  }

  return result;
}

unint64_t sub_1D3065C64()
{
  result = qword_1EC74A9A0;
  if (!qword_1EC74A9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A998, &qword_1D30F59C8);
    sub_1D3045A34(&qword_1EC74A988, type metadata accessor for LicenseRecord.StaticRepresentation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9A0);
  }

  return result;
}

unint64_t sub_1D3065D18()
{
  result = qword_1EC74A9A8;
  if (!qword_1EC74A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9A8);
  }

  return result;
}

unint64_t sub_1D3065D6C()
{
  result = qword_1EC74A9B0;
  if (!qword_1EC74A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9B0);
  }

  return result;
}

unint64_t sub_1D3065DC0()
{
  result = qword_1EC74A9B8;
  if (!qword_1EC74A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9B8);
  }

  return result;
}

unint64_t sub_1D3065E14()
{
  result = qword_1EC74A9C0;
  if (!qword_1EC74A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9C0);
  }

  return result;
}

unint64_t sub_1D3065E68()
{
  result = qword_1EC74A9C8;
  if (!qword_1EC74A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9C8);
  }

  return result;
}

unint64_t sub_1D3065EBC()
{
  result = qword_1EC74A9D0;
  if (!qword_1EC74A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9D0);
  }

  return result;
}

unint64_t sub_1D3065F10()
{
  result = qword_1EC74A9D8;
  if (!qword_1EC74A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9D8);
  }

  return result;
}

unint64_t sub_1D3065F64()
{
  result = qword_1EC74A9E0;
  if (!qword_1EC74A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9E0);
  }

  return result;
}

unint64_t sub_1D3065FB8()
{
  result = qword_1EE314DC0;
  if (!qword_1EE314DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DC0);
  }

  return result;
}

unint64_t sub_1D306600C()
{
  result = qword_1EC74A9E8;
  if (!qword_1EC74A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9E8);
  }

  return result;
}

unint64_t sub_1D3066060()
{
  result = qword_1EC74A9F0;
  if (!qword_1EC74A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9F0);
  }

  return result;
}

unint64_t sub_1D30660B4()
{
  result = qword_1EC74A9F8;
  if (!qword_1EC74A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A9F8);
  }

  return result;
}

unint64_t sub_1D3066108()
{
  result = qword_1EC74AA00;
  if (!qword_1EC74AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA00);
  }

  return result;
}

unint64_t sub_1D306615C()
{
  result = qword_1EC74AA08;
  if (!qword_1EC74AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA08);
  }

  return result;
}

unint64_t sub_1D30661B0()
{
  result = qword_1EC74AA10;
  if (!qword_1EC74AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA10);
  }

  return result;
}

unint64_t sub_1D3066204()
{
  result = qword_1EC74AA18;
  if (!qword_1EC74AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA18);
  }

  return result;
}

unint64_t sub_1D3066258()
{
  result = qword_1EC74AA20;
  if (!qword_1EC74AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA20);
  }

  return result;
}

unint64_t sub_1D30662AC()
{
  result = qword_1EC74AA28;
  if (!qword_1EC74AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA28);
  }

  return result;
}

unint64_t sub_1D3066300()
{
  result = qword_1EC74AA30;
  if (!qword_1EC74AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA30);
  }

  return result;
}

unint64_t sub_1D3066354()
{
  result = qword_1EC74AA38;
  if (!qword_1EC74AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA38);
  }

  return result;
}

unint64_t sub_1D30663A8()
{
  result = qword_1EC74AA40;
  if (!qword_1EC74AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA40);
  }

  return result;
}

unint64_t sub_1D30663FC()
{
  result = qword_1EC74AA48;
  if (!qword_1EC74AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA48);
  }

  return result;
}

unint64_t sub_1D3066450()
{
  result = qword_1EC74AA58;
  if (!qword_1EC74AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA58);
  }

  return result;
}

unint64_t sub_1D30664A4()
{
  result = qword_1EC74AA68;
  if (!qword_1EC74AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA68);
  }

  return result;
}

unint64_t sub_1D30664F8()
{
  result = qword_1EC74AA70;
  if (!qword_1EC74AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA70);
  }

  return result;
}

unint64_t sub_1D306654C()
{
  result = qword_1EC74AA78;
  if (!qword_1EC74AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA78);
  }

  return result;
}

unint64_t sub_1D30665A0()
{
  result = qword_1EC74AA80;
  if (!qword_1EC74AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA80);
  }

  return result;
}

unint64_t sub_1D30665F4()
{
  result = qword_1EC74AA88;
  if (!qword_1EC74AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA88);
  }

  return result;
}

unint64_t sub_1D3066648()
{
  result = qword_1EC74AA90;
  if (!qword_1EC74AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AA90);
  }

  return result;
}

unint64_t sub_1D306669C()
{
  result = qword_1EC74AC30;
  if (!qword_1EC74AC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A8F0, &qword_1D30F59B8);
    sub_1D3045A34(&qword_1EC749A80, MEMORY[0x1E69E8380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AC30);
  }

  return result;
}

unint64_t sub_1D3066750()
{
  result = qword_1EC74AC50;
  if (!qword_1EC74AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AC50);
  }

  return result;
}

unint64_t sub_1D30667A4()
{
  result = qword_1EC74AC58;
  if (!qword_1EC74AC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A960, &qword_1D30F59C0);
    sub_1D3066750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AC58);
  }

  return result;
}

unint64_t sub_1D3066828()
{
  result = qword_1EC74AC68;
  if (!qword_1EC74AC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A998, &qword_1D30F59C8);
    sub_1D3045A34(&qword_1EC74AC60, type metadata accessor for LicenseRecord.StaticRepresentation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AC68);
  }

  return result;
}

unint64_t sub_1D30668DC()
{
  result = qword_1EC74AC70;
  if (!qword_1EC74AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AC70);
  }

  return result;
}

unint64_t sub_1D3066930()
{
  result = qword_1EC74AC88;
  if (!qword_1EC74AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AC88);
  }

  return result;
}

unint64_t sub_1D3066984()
{
  result = qword_1EC74ACA8;
  if (!qword_1EC74ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ACA8);
  }

  return result;
}

unint64_t sub_1D30669D8()
{
  result = qword_1EC74ACC0;
  if (!qword_1EC74ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ACC0);
  }

  return result;
}

unint64_t sub_1D3066A2C()
{
  result = qword_1EC74ACD8;
  if (!qword_1EC74ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ACD8);
  }

  return result;
}

unint64_t sub_1D3066A80()
{
  result = qword_1EC74ACF0;
  if (!qword_1EC74ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ACF0);
  }

  return result;
}

unint64_t sub_1D3066AD4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1D30E948C();
    v5 = "r service because ";
    v6 = 0x1000000000000042;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_1D30E948C();
    v5 = "App Store manifest data: ";
    v6 = 0x100000000000003CLL;
LABEL_5:
    MEMORY[0x1D38B2610](v6, v5 | 0x8000000000000000);
    MEMORY[0x1D38B2610](a1, a2);
    MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
    return 0;
  }

  if (a1 ^ 1 | a2)
  {
    v8 = 0x1000000000000026;
  }

  else
  {
    v8 = 0x1000000000000018;
  }

  if (a1 | a2)
  {
    return v8;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t Helper.PermissionError.description.getter()
{
  type metadata accessor for Helper.PermissionError(0);
  sub_1D3045A34(&qword_1EC74AD00, type metadata accessor for Helper.PermissionError);

  return sub_1D30E984C();
}

uint64_t Helper.PermissionError.errorDescription.getter()
{
  v1 = type metadata accessor for Helper.PermissionError(0);
  v2 = *(v0 + *(v1 + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000033, 0x80000001D30ED9B0);
      v14 = Helper.Message.description.getter();
      MEMORY[0x1D38B2610](v14);

      result = MEMORY[0x1D38B2610](0x1000000000000022, 0x80000001D30ED9F0);
      if (*(v2 + 16))
      {
        v15 = *(v2 + 32);
        v16 = *(v2 + 40);
        v17 = *(v2 + 48);
LABEL_40:
        sub_1D30D9404(v15, v16, v17);
        v45 = sub_1D3066AD4(v15, v16, v17);
        v47 = v46;
        sub_1D30D93EC(v15, v16, v17);
        MEMORY[0x1D38B2610](v45, v47);

        v19 = 46;
        v20 = 0xE100000000000000;
        goto LABEL_41;
      }
    }

    else
    {
      if (v3 == 2)
      {
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0x1000000000000033, 0x80000001D30ED9B0);
        v4 = Helper.Message.description.getter();
        MEMORY[0x1D38B2610](v4);

        result = MEMORY[0x1D38B2610](0x1000000000000022, 0x80000001D30ED9F0);
        if (*(v2 + 16))
        {
          v6 = *(v2 + 32);
          v7 = *(v2 + 40);
          v8 = *(v2 + 48);
          sub_1D30D9404(v6, v7, v8);
          v9 = sub_1D3066AD4(v6, v7, v8);
          v11 = v10;
          sub_1D30D93EC(v6, v7, v8);
          MEMORY[0x1D38B2610](v9, v11);

          if (*(v2 + 16))
          {
            if (*(v2 + 48) == 2 && *(v2 + 32) < 3uLL)
            {
              v12 = 0;
              v13 = 0xE000000000000000;
            }

            else
            {
              v13 = 0xE100000000000000;
              v12 = 44;
            }

            MEMORY[0x1D38B2610](v12, v13);

            result = MEMORY[0x1D38B2610](0x20646E6120, 0xE500000000000000);
            if (*(v2 + 16) >= 2uLL)
            {
              v15 = *(v2 + 56);
              v16 = *(v2 + 64);
              v17 = *(v2 + 72);
              goto LABEL_40;
            }

LABEL_49:
            __break(1u);
            return result;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v21 = (v2 + 48);
      v22 = v3 + 1;
      while (--v22)
      {
        if (*v21 == 2)
        {
          v23 = *(v21 - 2);
          v24 = *(v21 - 1);
          v21 += 24;
          if (__PAIR128__(v24, v23) < 3)
          {
            continue;
          }
        }

        v25 = *(v0 + *(v1 + 20));

        result = swift_isUniquelyReferenced_nonNull_native();
        v26 = 59;
        if (result)
        {
          goto LABEL_17;
        }

LABEL_44:
        result = sub_1D30D93D8(v2);
        v2 = result;
        v27 = *(result + 16);
        if (!v27)
        {
          goto LABEL_45;
        }

LABEL_18:
        v28 = v27 - 1;
        v29 = v2 + 24 * (v27 - 1);
        v50 = *(v29 + 40);
        v51 = *(v29 + 32);
        v49 = *(v29 + 48);
        *(v2 + 16) = v28;
        if (!v28)
        {
LABEL_36:

          v41 = sub_1D3066AD4(v51, v50, v49);
          v43 = v42;
          sub_1D30D93EC(v51, v50, v49);
          MEMORY[0x1D38B2610](v41, v43);

          MEMORY[0x1D38B2610](543452769, 0xE400000000000000);

          sub_1D30E948C();
          MEMORY[0x1D38B2610](0x1000000000000033, 0x80000001D30ED9B0);
          v44 = Helper.Message.description.getter();
          MEMORY[0x1D38B2610](v44);

          MEMORY[0x1D38B2610](0x1000000000000022, 0x80000001D30ED9F0);
          MEMORY[0x1D38B2610](0, 0xE000000000000000);

          MEMORY[0x1D38B2610](46, 0xE100000000000000);
          return 0;
        }

        v30 = (v2 + 48);
        while (2)
        {
          v37 = *(v30 - 2);
          v36 = *(v30 - 1);
          if (*v30)
          {
            if (*v30 == 1)
            {

              sub_1D30E948C();
              MEMORY[0x1D38B2610](0x100000000000003CLL, 0x80000001D30ED970);
              MEMORY[0x1D38B2610](v37, v36);
              MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
              v31 = v37;
              v32 = v36;
              v33 = 1;
LABEL_21:
              sub_1D30D93EC(v31, v32, v33);
              v34 = 0;
              v35 = 0xE000000000000000;
            }

            else
            {
              v38 = v37 | v36;
              v39 = 0x1000000000000018;
              if (v37 ^ 1 | v36)
              {
                v39 = 0x1000000000000026;
              }

              v40 = 0x80000001D30EDA70;
              if (!(v37 ^ 1 | v36))
              {
                v40 = 0x80000001D30EDAA0;
              }

              if (v38)
              {
                v34 = v39;
              }

              else
              {
                v34 = 0xD000000000000017;
              }

              if (v38)
              {
                v35 = v40;
              }

              else
              {
                v35 = 0x80000001D30EDAC0;
              }
            }

            v30 += 24;
            MEMORY[0x1D38B2610](v34, v35);

            MEMORY[0x1D38B2610](v26, 0xE100000000000000);

            MEMORY[0x1D38B2610](32, 0xE100000000000000);
            MEMORY[0x1D38B2610](0, 0xE000000000000000);

            if (!--v28)
            {
              goto LABEL_36;
            }

            continue;
          }

          break;
        }

        sub_1D30E948C();
        MEMORY[0x1D38B2610](0x1000000000000042, 0x80000001D30EDA20);
        MEMORY[0x1D38B2610](v37, v36);
        MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
        v31 = v37;
        v32 = v36;
        v33 = 0;
        goto LABEL_21;
      }

      v48 = *(v0 + *(v1 + 20));

      result = swift_isUniquelyReferenced_nonNull_native();
      v26 = 44;
      if ((result & 1) == 0)
      {
        goto LABEL_44;
      }

LABEL_17:
      v27 = *(v2 + 16);
      if (v27)
      {
        goto LABEL_18;
      }

LABEL_45:
      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  sub_1D30E948C();
  MEMORY[0x1D38B2610](0x1000000000000033, 0x80000001D30ED9B0);
  v18 = Helper.Message.description.getter();
  MEMORY[0x1D38B2610](v18);

  v19 = 0x100000000000001ALL;
  v20 = 0x80000001D30EDAE0;
LABEL_41:
  MEMORY[0x1D38B2610](v19, v20);
  return 0;
}

uint64_t sub_1D30673A4()
{
  sub_1D3045A34(&qword_1EC74AD00, type metadata accessor for Helper.PermissionError);

  return sub_1D30E984C();
}

unint64_t sub_1D3067414(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v4 + 1;
  v6 = __OFADD__(v4, 1);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = result;
  v10 = v3[3];
  if (v10 < v5)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    if (2 * v10 <= v5)
    {
      v11 = (v4 + 1);
    }

    else
    {
      v11 = (2 * v10);
    }

    result = sub_1D30409E0(v11);
    v4 = v3[2];
    v5 = v4 + 1;
    v6 = __OFADD__(v4, 1);
  }

  v12 = *v3 + 16 * v4;
  *v12 = v9;
  *(v12 + 8) = 0;
  if (v6)
  {
    goto LABEL_19;
  }

  v3[2] = v5;
  if (!a3)
  {
    return result;
  }

  v13 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    goto LABEL_20;
  }

  v14 = v3[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v3[5];
  result = sub_1D3033B9C(v13, a2, a3, isUniquelyReferenced_nonNull_native);
  v3[5] = v16;
  return result;
}

void sub_1D3067504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[5];
  v5 = sub_1D3032698(a1, a2);
  if ((v6 & 1) == 0)
  {
    return;
  }

  v7 = v5;
  v8 = v3[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v3[5];
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D3034554();
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1D302974C(v7, v10);
  v3[5] = v10;
  v13 = v3[2];
  v14 = v3[4];
  if (v13 < v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v12 < v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v12 >= v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = *v3 + 16 * v12;
  if ((*(v15 + 8) & 1) == 0)
  {
    v16 = *v15;
    sub_1D30E70C4();
  }

  *v15 = 0;
  *(v15 + 8) = 1;
}

os_unfair_lock_s *sub_1D3067620()
{
  v2 = v0;
  v3 = *&v0->_os_unfair_lock_opaque;
  v4 = sub_1D30E8BCC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  LOBYTE(v0[8]._os_unfair_lock_opaque) = 0;
  v6 = sub_1D3034DA8(MEMORY[0x1E69E7CC0]);
  v0[10]._os_unfair_lock_opaque = 0;
  *&v0[12]._os_unfair_lock_opaque = 0u;
  v7 = &v0[12];
  *&v0[16]._os_unfair_lock_opaque = 0u;
  *&v0[20]._os_unfair_lock_opaque = 0;
  *&v0[22]._os_unfair_lock_opaque = v6;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v8 = sub_1D30E8B3C();
  __swift_project_value_buffer(v8, qword_1EE313F18);
  v9 = sub_1D30E928C();
  v10 = sub_1D30E8B1C();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D2FD9000, v10, v9, "Init", v11, 2u);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  sub_1D30E8C2C();
  sub_1D30E8BBC();
  v12 = sub_1D30E8B9C();
  if (v1)
  {
    sub_1D30D941C(v7);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[4]._os_unfair_lock_opaque = 0;
    *&v2[6]._os_unfair_lock_opaque = v12;
    os_unfair_lock_lock(v2 + 4);
    v13 = *&v2[6]._os_unfair_lock_opaque;

    sub_1D30E8BDC();

    v14 = *&v2[6]._os_unfair_lock_opaque;
    sub_1D30E8C0C();
    os_unfair_lock_unlock(v2 + 4);
  }

  return v2;
}

void sub_1D3067880(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D30E8C3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v9 = sub_1D30E8B3C();
  __swift_project_value_buffer(v9, qword_1EE313F18);
  v10 = sub_1D30E929C();
  v11 = *(v5 + 16);
  v11(v8, a1, v4);
  v12 = sub_1D30E8B1C();
  if (os_log_type_enabled(v12, v10))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v2;
    v15 = v14;
    *v13 = 138543362;
    sub_1D3045A34(&qword_1EE3130A0, MEMORY[0x1E69E84C0]);
    swift_allocError();
    v11(v16, v8, v4);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v8, v4);
    *(v13 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1D2FD9000, v12, v10, "A session was canceled: %{public}@", v13, 0xCu);
    sub_1D2FF14DC(v15, &qword_1EC7493A0, &qword_1D30EF480);
    v18 = v15;
    v2 = v20;
    MEMORY[0x1D38B3760](v18, -1, -1);
    MEMORY[0x1D38B3760](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  atomic_store(1u, (v2 + 32));
}

uint64_t Helper.Proxy.deinit()
{
  v1 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313F18);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Deinit", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  os_unfair_lock_lock((v1 + 16));
  v6 = *(v1 + 24);
  sub_1D30E8BFC();
  os_unfair_lock_unlock((v1 + 16));
  v7 = *(v1 + 24);

  sub_1D30D941C(v1 + 48);
  return v1;
}

uint64_t Helper.Proxy.__deallocating_deinit()
{
  Helper.Proxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

__n128 Helper.Proxy.appInfo(aboutBundleWithID:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v4 = v3;
  v34 = type metadata accessor for Helper.Message(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for Helper.Reply(0);
  v10 = *(*(v33 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v16 = sub_1D30E8B3C();
  __swift_project_value_buffer(v16, qword_1EE313F18);
  v17 = sub_1D30E928C();

  v18 = sub_1D30E8B1C();

  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v32 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = v4;
    v22 = v21;
    v37 = v21;
    *v20 = 136446210;
    v23 = v36;
    *(v20 + 4) = sub_1D2FFEA04(v36, a2, &v37);
    _os_log_impl(&dword_1D2FD9000, v18, v17, "App info about bundle with ID: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1D38B3760](v22, -1, -1);
    v24 = v20;
    a3 = v32;
    MEMORY[0x1D38B3760](v24, -1, -1);
  }

  else
  {

    v23 = v36;
  }

  *v9 = v23;
  v9[1] = a2;
  swift_storeEnumTagMultiPayload();

  v25 = v35;
  sub_1D3068030(v9, v15);
  sub_1D3065284(v9, type metadata accessor for Helper.Message);
  if (!v25)
  {
    sub_1D3058338(v15, v13, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D3065284(v13, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      sub_1D3058338(v15, v27, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D3065284(v15, type metadata accessor for Helper.Reply);
    }

    else
    {
      sub_1D3065284(v15, type metadata accessor for Helper.Reply);
      v28 = *(v13 + 7);
      *(a3 + 96) = *(v13 + 6);
      *(a3 + 112) = v28;
      *(a3 + 128) = *(v13 + 16);
      v29 = *(v13 + 3);
      *(a3 + 32) = *(v13 + 2);
      *(a3 + 48) = v29;
      v30 = *(v13 + 5);
      *(a3 + 64) = *(v13 + 4);
      *(a3 + 80) = v30;
      result = *(v13 + 1);
      *a3 = *v13;
      *(a3 + 16) = result;
    }
  }

  return result;
}

void sub_1D3068030(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1D30E8BCC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B090, &qword_1D30FD1C0);
  v11 = *(*(v53 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v53);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v46 - v15;
  v51 = type metadata accessor for Helper.Message(0);
  v16 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v19 = sub_1D30E8B3C();
  __swift_project_value_buffer(v19, qword_1EE313F18);
  v20 = sub_1D30E928C();
  v52 = a1;
  sub_1D3058338(a1, v18, type metadata accessor for Helper.Message);
  v21 = sub_1D30E8B1C();
  v22 = os_log_type_enabled(v21, v20);
  v49 = v14;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v47 = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v48 = v3;
    v26 = v25;
    v54[0] = v25;
    *v24 = 136446210;
    v27 = Helper.Message.description.getter();
    v29 = v28;
    sub_1D3065284(v18, type metadata accessor for Helper.Message);
    v30 = sub_1D2FFEA04(v27, v29, v54);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1D2FD9000, v21, v20, "Send: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v31 = v26;
    v4 = v48;
    MEMORY[0x1D38B3760](v31, -1, -1);
    v32 = v24;
    a2 = v47;
    MEMORY[0x1D38B3760](v32, -1, -1);
  }

  else
  {

    sub_1D3065284(v18, type metadata accessor for Helper.Message);
  }

  os_unfair_lock_lock((v5 + 16));
  v33 = atomic_load((v5 + 32));
  v34 = v55;
  if (v33)
  {
    v35 = sub_1D30E8B1C();
    v36 = sub_1D30E92BC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D2FD9000, v35, v36, "The session was previously canceled; reestablishing it…", v37, 2u);
      MEMORY[0x1D38B3760](v37, -1, -1);
    }

    sub_1D30E8C2C();

    sub_1D30E8BAC();
    v38 = sub_1D30E8B9C();
    if (v4)
    {
      goto LABEL_13;
    }

    v39 = v38;
    v40 = *(v5 + 24);

    *(v5 + 24) = v39;
    atomic_store(0, (v5 + 32));
  }

  else
  {
    v41 = *(v5 + 24);
  }

  sub_1D3045A34(qword_1EE313E50, type metadata accessor for Helper.Message);
  sub_1D2FF1768(&qword_1EE3130A8, &qword_1EC74B090, &qword_1D30FD1C0);
  sub_1D30E8C1C();
  if (v4)
  {
LABEL_13:
    os_unfair_lock_unlock((v5 + 16));
    return;
  }

  os_unfair_lock_unlock((v5 + 16));
  v42 = v49;
  sub_1D302B0DC(v34, v49, &qword_1EC74B090, &qword_1D30FD1C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v42[1];
    v54[0] = *v42;
    v43 = v54[0];
    v54[1] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B098, &qword_1D30FD1C8);
    sub_1D2FF1768(&qword_1EC74B0A0, &qword_1EC74B098, &qword_1D30FD1C8);
    swift_willThrowTypedImpl();
    swift_allocError();
    *v45 = v43;
    v45[1] = v44;
    sub_1D2FF14DC(v34, &qword_1EC74B090, &qword_1D30FD1C0);
  }

  else
  {
    sub_1D2FF14DC(v34, &qword_1EC74B090, &qword_1D30FD1C0);
    sub_1D3056830(v42, a2, type metadata accessor for Helper.Reply);
  }
}

void Helper.Proxy.manifestDataSource(forAppWithBundleID:)(uint64_t a1, unint64_t a2)
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v5 = sub_1D30E8B3C();
  __swift_project_value_buffer(v5, qword_1EE313F18);
  v6 = sub_1D30E928C();

  v7 = sub_1D30E8B1C();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v12[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1D2FFEA04(a1, a2, v12);
    _os_log_impl(&dword_1D2FD9000, v7, v6, "Manifest data source for app with bundle ID: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  Helper.Proxy.appInfo(aboutBundleWithID:)(a1, a2, v12);
  if (!v2)
  {
    v10[6] = v12[6];
    v10[7] = v12[7];
    v11 = v13;
    v10[2] = v12[2];
    v10[3] = v12[3];
    v10[4] = v12[4];
    v10[5] = v12[5];
    v10[0] = v12[0];
    v10[1] = v12[1];
    sub_1D2FE2EC4(v10);
  }
}

uint64_t Helper.Proxy.manifestData(forAppWithBundleID:teamID:bypassLocalCache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 112) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for Helper.Message(0);
  *(v6 + 56) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  v9 = type metadata accessor for Helper.Reply(0);
  *(v6 + 72) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3068884, 0, 0);
}

uint64_t sub_1D3068884()
{
  v33 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 24);
    v3 = sub_1D30E8B3C();
    __swift_project_value_buffer(v3, qword_1EE313F18);
    v4 = sub_1D30E928C();

    v5 = sub_1D30E8B1C();

    if (os_log_type_enabled(v5, v4))
    {
      v6 = *(v0 + 112);
      v8 = *(v0 + 24);
      v7 = *(v0 + 32);
      v9 = *(v0 + 16);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 136446722;
      *(v10 + 4) = sub_1D2FFEA04(v9, v8, &v32);
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_1D2FFEA04(v7, v1, &v32);
      *(v10 + 22) = 1024;
      *(v10 + 24) = v6;
      _os_log_impl(&dword_1D2FD9000, v5, v4, "Manifest data for app with bundle ID: %{public}s team ID: %{public}s bypass local cache: %{BOOL}d", v10, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v11, -1, -1);
      v12 = v10;
LABEL_10:
      MEMORY[0x1D38B3760](v12, -1, -1);
    }
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 24);
    v14 = sub_1D30E8B3C();
    __swift_project_value_buffer(v14, qword_1EE313F18);
    v15 = sub_1D30E928C();

    v5 = sub_1D30E8B1C();

    if (os_log_type_enabled(v5, v15))
    {
      v16 = *(v0 + 112);
      v18 = *(v0 + 16);
      v17 = *(v0 + 24);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_1D2FFEA04(v18, v17, &v32);
      *(v19 + 12) = 1024;
      *(v19 + 14) = v16;
      _os_log_impl(&dword_1D2FD9000, v5, v15, "Manifest data for app with bundle ID: %{public}s bypass local cache: %{BOOL}d", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D38B3760](v20, -1, -1);
      v12 = v19;
      goto LABEL_10;
    }
  }

  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v23 = *(v0 + 112);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  v26 = *(v0 + 24);
  *v21 = *(v0 + 16);
  *(v21 + 8) = v26;
  *(v21 + 16) = v24;
  *(v21 + 24) = v25;
  *(v21 + 32) = v23;
  swift_storeEnumTagMultiPayload();

  v27 = swift_task_alloc();
  *(v0 + 96) = v27;
  *v27 = v0;
  v27[1] = sub_1D3068BFC;
  v28 = *(v0 + 88);
  v29 = *(v0 + 64);
  v30 = *(v0 + 48);

  return sub_1D3068FD4(v28, v29);
}

uint64_t sub_1D3068BFC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 104) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D3068F54;
  }

  else
  {
    v4 = sub_1D3068D40;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3068D40()
{
  v1 = v0[9];
  sub_1D3058338(v0[11], v0[10], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[10];
  v4 = v0[11];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[8];
    sub_1D3065284(v0[11], type metadata accessor for Helper.Reply);
    v6 = *v3;
    v7 = v3[1];
    v8 = v3[2];

    v9 = v0[1];

    return v9(v6, v7, v8);
  }

  else
  {
    sub_1D3065284(v0[10], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v11, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[8];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1D3068F54()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D3068FD4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B090, &qword_1D30FD1C0);
  v3[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = *(*(type metadata accessor for Helper.Message(0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30690D8, 0, 0);
}

uint64_t sub_1D30690D8()
{
  v22 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE313F18);
  v4 = sub_1D30E928C();
  sub_1D3058338(v2, v1, type metadata accessor for Helper.Message);
  v5 = sub_1D30E8B1C();
  v6 = os_log_type_enabled(v5, v4);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    v10 = Helper.Message.description.getter();
    v12 = v11;
    sub_1D3065284(v7, type metadata accessor for Helper.Message);
    v13 = sub_1D2FFEA04(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Send: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  else
  {

    sub_1D3065284(v7, type metadata accessor for Helper.Message);
  }

  v14 = *(v0 + 56);
  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  v15[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v15[2].i64[0] = v14;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  *(v0 + 104) = v17;
  *v17 = v0;
  v17[1] = sub_1D3069364;
  v18 = *(v0 + 80);
  v19 = *(v0 + 64);

  return MEMORY[0x1EEE6DE38](v18, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_1D30E6EF0, v15, v19);
}

uint64_t sub_1D3069364()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1D3069654;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1D3069480;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3069480()
{
  v1 = v0[8];
  sub_1D302B0DC(v0[10], v0[9], &qword_1EC74B090, &qword_1D30FD1C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[9];
    v3 = v0[10];
    v4 = *v2;
    v5 = v2[1];
    v0[2] = *v2;
    v0[3] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B098, &qword_1D30FD1C8);
    sub_1D2FF1768(&qword_1EC74B0A0, &qword_1EC74B098, &qword_1D30FD1C8);
    swift_willThrowTypedImpl();
    swift_allocError();
    *v6 = v4;
    v6[1] = v5;
    sub_1D2FF14DC(v3, &qword_1EC74B090, &qword_1D30FD1C0);
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
  }

  else
  {
    v11 = v0[11];
    v12 = v0[9];
    v13 = v0[4];
    sub_1D2FF14DC(v0[10], &qword_1EC74B090, &qword_1D30FD1C0);
    sub_1D3056830(v12, v13, type metadata accessor for Helper.Reply);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D3069654()
{
  v1 = v0[12];

  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.manifestData(forAppStoreAppWithBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Helper.Message(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30697B0, 0, 0);
}

uint64_t sub_1D30697B0()
{
  v18 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313F18);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1D2FFEA04(v6, v5, &v17);
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Manifest data for App Store app with bundle ID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  *v9 = v0[2];
  v9[1] = v11;
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1D3069998;
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[4];

  return sub_1D3068FD4(v13, v14);
}

uint64_t sub_1D3069998()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D3069CDC;
  }

  else
  {
    v4 = sub_1D3069ADC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3069ADC()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[8];
  v4 = v0[9];
  if (EnumCaseMultiPayload == 2)
  {
    v5 = v0[6];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    v6 = *v3;
    v7 = v3[1];

    v8 = v0[1];

    return v8(v6, v7);
  }

  else
  {
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v10, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[6];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1D3069CDC()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t Helper.Proxy.manifestData(forTestFlightAppWithBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Helper.Message(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3069E30, 0, 0);
}

uint64_t sub_1D3069E30()
{
  v18 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313F18);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1D2FFEA04(v6, v5, &v17);
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Manifest data for TestFlight app with bundle ID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  *v9 = v0[2];
  v9[1] = v11;
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1D306A018;
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[4];

  return sub_1D3068FD4(v13, v14);
}

uint64_t sub_1D306A018()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7030;
  }

  else
  {
    v4 = sub_1D306A15C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D306A15C()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[8];
  v4 = v0[9];
  if (EnumCaseMultiPayload == 3)
  {
    v5 = v0[6];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    v6 = *v3;
    v7 = v3[1];

    v8 = v0[1];

    return v8(v6, v7);
  }

  else
  {
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v10, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[6];

    v14 = v0[1];

    return v14();
  }
}

uint64_t Helper.Proxy.manifestData(fromLocalCacheForAppWithBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Helper.Message(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D306A430, 0, 0);
}

uint64_t sub_1D306A430()
{
  v18 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313F18);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1D2FFEA04(v6, v5, &v17);
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Manifest data from local cache for app with bundle ID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  *v9 = v0[2];
  v9[1] = v11;
  v9[2] = 0;
  v9[3] = 0;
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1D306A61C;
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[4];

  return sub_1D3068FD4(v13, v14);
}

uint64_t sub_1D306A61C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7030;
  }

  else
  {
    v4 = sub_1D306A760;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D306A760()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[8];
  v4 = v0[9];
  if (EnumCaseMultiPayload == 4)
  {
    v5 = v0[6];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    v6 = *v3;
    v7 = v3[1];

    v8 = v0[1];

    return v8(v6, v7);
  }

  else
  {
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v10, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[6];

    v14 = v0[1];

    return v14();
  }
}

uint64_t Helper.Proxy.manifestData(fromLocalCacheForAppWithBundleID:teamID:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v38 = a3;
  v37 = type metadata accessor for Helper.Message(0);
  v9 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Helper.Reply(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v36 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  if (a4)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v18 = sub_1D30E8B3C();
    __swift_project_value_buffer(v18, qword_1EE313F18);
    v19 = sub_1D30E928C();

    v20 = sub_1D30E8B1C();

    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v35 = v4;
      v22 = v21;
      v23 = swift_slowAlloc();
      v34 = v12;
      v24 = v23;
      v39 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_1D2FFEA04(a1, a2, &v39);
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_1D2FFEA04(v38, a4, &v39);
      _os_log_impl(&dword_1D2FD9000, v20, v19, "Manifest data from local cache for app with bundle ID: %{public}s team ID: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
LABEL_10:
      MEMORY[0x1D38B3760](v24, -1, -1);
      v29 = v22;
      v5 = v35;
      MEMORY[0x1D38B3760](v29, -1, -1);
    }
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v25 = sub_1D30E8B3C();
    __swift_project_value_buffer(v25, qword_1EE313F18);
    v26 = sub_1D30E928C();

    v20 = sub_1D30E8B1C();

    if (os_log_type_enabled(v20, v26))
    {
      v27 = swift_slowAlloc();
      v35 = v4;
      v22 = v27;
      v28 = swift_slowAlloc();
      v34 = v12;
      v24 = v28;
      v39 = v28;
      *v22 = 136446210;
      *(v22 + 4) = sub_1D2FFEA04(a1, a2, &v39);
      _os_log_impl(&dword_1D2FD9000, v20, v26, "Manifest data from local cache for app with bundle ID: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      goto LABEL_10;
    }
  }

  *v11 = a1;
  v11[1] = a2;
  v11[2] = v38;
  v11[3] = a4;
  swift_storeEnumTagMultiPayload();

  sub_1D3068030(v11, v17);
  result = sub_1D3065284(v11, type metadata accessor for Helper.Message);
  if (!v5)
  {
    v31 = v36;
    sub_1D3058338(v17, v36, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1D3065284(v17, type metadata accessor for Helper.Reply);
      result = *v31;
      v32 = v31[1];
    }

    else
    {
      sub_1D3065284(v31, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      sub_1D3058338(v17, v33, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_1D3065284(v17, type metadata accessor for Helper.Reply);
    }
  }

  return result;
}

uint64_t Helper.Proxy.manifestRequest(forAppStoreAppWithBundleID:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a1;
  v7 = type metadata accessor for Helper.URLRequestResult(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Helper.Message(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for Helper.Reply(0);
  v15 = *(*(v37 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v37);
  v38 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v39 = v19;
  v20 = sub_1D30E8B3C();
  __swift_project_value_buffer(v20, qword_1EE313F18);
  v21 = sub_1D30E928C();

  v22 = sub_1D30E8B1C();

  if (os_log_type_enabled(v22, v21))
  {
    v23 = swift_slowAlloc();
    v35 = a3;
    v36 = v10;
    v24 = v23;
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136446210;
    v26 = v40;
    *(v24 + 4) = sub_1D2FFEA04(v40, a2, &v41);
    _os_log_impl(&dword_1D2FD9000, v22, v21, "Manifest request for App Store app with bundle ID: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v27 = v25;
    v4 = v3;
    MEMORY[0x1D38B3760](v27, -1, -1);
    v28 = v24;
    a3 = v35;
    v10 = v36;
    MEMORY[0x1D38B3760](v28, -1, -1);
  }

  else
  {

    v26 = v40;
  }

  *v14 = v26;
  v14[1] = a2;
  swift_storeEnumTagMultiPayload();

  v29 = v39;
  sub_1D3068030(v14, v39);
  result = sub_1D3065284(v14, type metadata accessor for Helper.Message);
  if (!v4)
  {
    v31 = v38;
    sub_1D3058338(v29, v38, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1D3065284(v29, type metadata accessor for Helper.Reply);
      sub_1D3056830(v31, v10, type metadata accessor for Helper.URLRequestResult);
      v32 = sub_1D30E852C();
      return (*(*(v32 - 8) + 32))(a3, v10, v32);
    }

    else
    {
      sub_1D3065284(v31, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      sub_1D3058338(v29, v33, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_1D3065284(v29, type metadata accessor for Helper.Reply);
    }
  }

  return result;
}

uint64_t Helper.Proxy.path(toManifestInLocalCacheForAppWithBundleID:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a1;
  v4 = v3;
  v68 = type metadata accessor for Helper.PathToManifestLookupResult(0);
  v64 = *(v68 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A860, &qword_1D30F5978);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v63 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v61 - v16;
  v70 = type metadata accessor for Helper.Message(0);
  v17 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for Helper.Reply(0);
  v20 = *(*(v66 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v66);
  v67 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v61 - v23;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v25 = sub_1D30E8B3C();
  __swift_project_value_buffer(v25, qword_1EE313F18);
  v26 = sub_1D30E928C();

  v27 = sub_1D30E8B1C();

  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    v61 = a3;
    v29 = v28;
    v30 = swift_slowAlloc();
    v69 = v4;
    v31 = v13;
    v32 = v30;
    v73 = v30;
    *v29 = 136446210;
    v33 = v71;
    *(v29 + 4) = sub_1D2FFEA04(v71, a2, &v73);
    _os_log_impl(&dword_1D2FD9000, v27, v26, "Path to manifest in local cache for app with bundle ID: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v34 = v32;
    v13 = v31;
    v4 = v69;
    MEMORY[0x1D38B3760](v34, -1, -1);
    v35 = v29;
    a3 = v61;
    MEMORY[0x1D38B3760](v35, -1, -1);
  }

  else
  {

    v33 = v71;
  }

  *v19 = v33;
  v19[1] = a2;
  swift_storeEnumTagMultiPayload();

  v36 = v72;
  sub_1D3068030(v19, v24);
  result = sub_1D3065284(v19, type metadata accessor for Helper.Message);
  if (!v36)
  {
    v69 = v4;
    v38 = v67;
    sub_1D3058338(v24, v67, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      sub_1D3065284(v38, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      sub_1D3058338(v24, v42, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_1D3065284(v24, type metadata accessor for Helper.Reply);
    }

    v72 = v24;
    v39 = v65;
    sub_1D30E6F78(v38, v65, &qword_1EC74A860, &qword_1D30F5978);
    v40 = v63;
    sub_1D302B0DC(v39, v63, &qword_1EC74A860, &qword_1D30F5978);
    v41 = *(v64 + 48);
    if (v41(v40, 1, v68) == 1)
    {
      sub_1D3065284(v72, type metadata accessor for Helper.Reply);
      sub_1D2FF14DC(v40, &qword_1EC74A860, &qword_1D30F5978);
      goto LABEL_22;
    }

    v43 = v62;
    sub_1D3056830(v40, v62, type metadata accessor for Helper.PathToManifestLookupResult);
    v44 = (v43 + *(v68 + 20));
    v45 = v44[1];
    if (!v45)
    {
LABEL_21:
      sub_1D3065284(v62, type metadata accessor for Helper.PathToManifestLookupResult);
      sub_1D3065284(v72, type metadata accessor for Helper.Reply);
LABEL_22:
      sub_1D30E6F78(v65, v13, &qword_1EC74A860, &qword_1D30F5978);
      if (v41(v13, 1, v68) == 1)
      {
        sub_1D2FF14DC(v13, &qword_1EC74A860, &qword_1D30F5978);
        v58 = sub_1D30E8D9C();
        return (*(*(v58 - 8) + 56))(a3, 1, 1, v58);
      }

      else
      {
        v59 = sub_1D30E8D9C();
        v60 = *(v59 - 8);
        (*(v60 + 16))(a3, v13, v59);
        sub_1D3065284(v13, type metadata accessor for Helper.PathToManifestLookupResult);
        return (*(v60 + 56))(a3, 0, 1, v59);
      }
    }

    v46 = *v44;
    v47 = v44[1];

    v48 = v69;
    os_unfair_lock_lock(v69 + 10);
    result = sub_1D30E7844(v46, v45);
    v49 = *&v48[16]._os_unfair_lock_opaque;
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
    }

    else
    {
      v51 = *&v48[18]._os_unfair_lock_opaque;
      if (v51 < v50)
      {
        if (v51 + 0x4000000000000000 < 0)
        {
LABEL_28:
          __break(1u);
          return result;
        }

        v52 = result;
        if (2 * v51 <= v50)
        {
          v53 = (v49 + 1);
        }

        else
        {
          v53 = (2 * v51);
        }

        v48 = v69;
        sub_1D30409E0(v53);
        v49 = *&v48[16]._os_unfair_lock_opaque;
        result = v52;
      }

      v54 = *&v48[12]._os_unfair_lock_opaque + 16 * v49;
      *v54 = result;
      *(v54 + 8) = 0;
      v55 = *&v48[16]._os_unfair_lock_opaque;
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (!v56)
      {
        *&v48[16]._os_unfair_lock_opaque = v57;
        os_unfair_lock_unlock(v48 + 10);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  return result;
}

uint64_t Helper.Proxy.installManifest(from:forAppWithBundleID:teamID:)(uint64_t a1, NSObject *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v60 = a3;
  v59 = type metadata accessor for Helper.Message(0);
  v11 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = type metadata accessor for Helper.Reply(0);
  v14 = *(*(v57 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v57);
  v58 = &v51[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51[-v17];
  if (a6)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v19 = sub_1D30E8B3C();
    __swift_project_value_buffer(v19, qword_1EE313F18);
    v20 = sub_1D30E928C();
    sub_1D2FF17B0(a1, a2);

    v21 = sub_1D30E8B1C();
    sub_1D2FF1804(a1, a2);

    LODWORD(v55) = v20;
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v56 = v18;
      v23 = v22;
      v54 = swift_slowAlloc();
      v62 = v54;
      *v23 = 136446722;
      v24 = sub_1D30E88EC();
      v26 = sub_1D2FFEA04(v24, v25, &v62);
      v53 = a2;
      v27 = a6;
      v28 = a4;
      v29 = a5;
      v30 = v26;

      *(v23 + 4) = v30;
      a5 = v29;
      a4 = v28;
      a6 = v27;
      *(v23 + 12) = 2082;
      v31 = v60;
      *(v23 + 14) = sub_1D2FFEA04(v60, a4, &v62);
      *(v23 + 22) = 2082;
      *(v23 + 24) = sub_1D2FFEA04(a5, a6, &v62);
      _os_log_impl(&dword_1D2FD9000, v21, v55, "Install manifest from: %{public}s for app with bundle ID: %{public}s team ID: %{public}s", v23, 0x20u);
      v32 = v54;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v32, -1, -1);
      v33 = v23;
      v18 = v56;
      MEMORY[0x1D38B3760](v33, -1, -1);

      v34 = v53;
      goto LABEL_13;
    }

    v34 = a2;
  }

  else
  {
    v55 = a5;
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v35 = sub_1D30E8B3C();
    __swift_project_value_buffer(v35, qword_1EE313F18);
    v36 = sub_1D30E928C();
    sub_1D2FF17B0(a1, a2);

    v34 = a2;
    v37 = sub_1D30E8B1C();
    sub_1D2FF1804(a1, a2);

    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      v56 = v18;
      v39 = v38;
      v54 = swift_slowAlloc();
      v62 = v54;
      *v39 = 136446466;
      v40 = sub_1D30E88EC();
      v53 = v37;
      v42 = sub_1D2FFEA04(v40, v41, &v62);
      v52 = v36;
      v43 = v42;

      *(v39 + 4) = v43;
      v34 = a2;
      *(v39 + 12) = 2082;
      v31 = v60;
      *(v39 + 14) = sub_1D2FFEA04(v60, a4, &v62);
      v44 = v53;
      _os_log_impl(&dword_1D2FD9000, v53, v52, "Install manifest from: %{public}s for app with bundle ID: %{public}s", v39, 0x16u);
      v45 = v54;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v45, -1, -1);
      v46 = v39;
      v18 = v56;
      MEMORY[0x1D38B3760](v46, -1, -1);

      a5 = v55;
      goto LABEL_13;
    }

    a5 = v55;
  }

  v31 = v60;
LABEL_13:
  *v13 = a1;
  v13[1] = v34;
  v13[2] = v31;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  swift_storeEnumTagMultiPayload();
  sub_1D2FF17B0(a1, v34);

  v47 = v61;
  sub_1D3068030(v13, v18);
  result = sub_1D3065284(v13, type metadata accessor for Helper.Message);
  if (!v47)
  {
    sub_1D3058338(v18, v58, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1D3065284(v18, type metadata accessor for Helper.Reply);
      v49 = v58;
    }

    else
    {
      sub_1D3065284(v58, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      sub_1D3058338(v18, v50, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v49 = v18;
    }

    return sub_1D3065284(v49, type metadata accessor for Helper.Reply);
  }

  return result;
}

uint64_t Helper.Proxy.installManifest(from:forAppWithBundleID:teamID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for Helper.Message(0);
  v7[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v10 = type metadata accessor for Helper.Reply(0);
  v7[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D306C18C, 0, 0);
}

uint64_t sub_1D306C18C()
{
  v46 = v0;
  v1 = v0[7];
  if (v1)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v2 = v0[5];
    v4 = v0[2];
    v3 = v0[3];
    v5 = sub_1D30E8B3C();
    __swift_project_value_buffer(v5, qword_1EE313F18);
    v6 = sub_1D30E928C();
    sub_1D2FF17B0(v4, v3);

    v7 = sub_1D30E8B1C();
    sub_1D2FF1804(v4, v3);

    if (os_log_type_enabled(v7, v6))
    {
      v8 = v0[5];
      v43 = v0[6];
      v10 = v0[3];
      v9 = v0[4];
      v11 = v0[2];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v45 = v13;
      *v12 = 136446722;
      v14 = sub_1D30E88EC();
      v16 = sub_1D2FFEA04(v14, v15, &v45);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_1D2FFEA04(v9, v8, &v45);
      *(v12 + 22) = 2082;
      *(v12 + 24) = sub_1D2FFEA04(v43, v1, &v45);
      _os_log_impl(&dword_1D2FD9000, v7, v6, "Install manifest from: %{public}s for app with bundle ID: %{public}s team ID: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v13, -1, -1);
      v17 = v12;
LABEL_10:
      MEMORY[0x1D38B3760](v17, -1, -1);
    }
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v18 = v0[5];
    v20 = v0[2];
    v19 = v0[3];
    v21 = sub_1D30E8B3C();
    __swift_project_value_buffer(v21, qword_1EE313F18);
    v22 = sub_1D30E928C();
    sub_1D2FF17B0(v20, v19);

    v7 = sub_1D30E8B1C();
    sub_1D2FF1804(v20, v19);

    if (os_log_type_enabled(v7, v22))
    {
      v24 = v0[4];
      v23 = v0[5];
      v26 = v0[2];
      v25 = v0[3];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45 = v28;
      *v27 = 136446466;
      v29 = sub_1D30E88EC();
      v31 = sub_1D2FFEA04(v29, v30, &v45);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_1D2FFEA04(v24, v23, &v45);
      _os_log_impl(&dword_1D2FD9000, v7, v22, "Install manifest from: %{public}s for app with bundle ID: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v28, -1, -1);
      v17 = v27;
      goto LABEL_10;
    }
  }

  v33 = v0[9];
  v32 = v0[10];
  v34 = v0[6];
  v35 = v0[7];
  v36 = v0[5];
  v37 = v0[2];
  v44 = *(v0 + 3);
  *v32 = v37;
  *(v32 + 8) = v44;
  *(v32 + 24) = v36;
  *(v32 + 32) = v34;
  *(v32 + 40) = v35;
  swift_storeEnumTagMultiPayload();
  sub_1D2FF17B0(v37, v44);

  v38 = swift_task_alloc();
  v0[14] = v38;
  *v38 = v0;
  v38[1] = sub_1D306C5B0;
  v39 = v0[13];
  v40 = v0[10];
  v41 = v0[8];

  return sub_1D3068FD4(v39, v40);
}

uint64_t sub_1D306C5B0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 120) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D306C8CC;
  }

  else
  {
    v4 = sub_1D306C6F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D306C6F4()
{
  v1 = v0[11];
  sub_1D3058338(v0[13], v0[12], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[12];
  v4 = v0[13];
  if (EnumCaseMultiPayload == 26)
  {
    v5 = v0[10];
    sub_1D3065284(v0[13], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[12], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[10];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D306C8CC()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t Helper.Proxy.uninstallManifest(forAppWithBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Helper.Message(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D306CA20, 0, 0);
}

uint64_t sub_1D306CA20()
{
  v18 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313F18);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1D2FFEA04(v6, v5, &v17);
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Uninstall manifest for app with bundle ID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  *v9 = v0[2];
  v9[1] = v11;
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1D306CC08;
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[4];

  return sub_1D3068FD4(v13, v14);
}

uint64_t sub_1D306CC08()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D3069CDC;
  }

  else
  {
    v4 = sub_1D306CD4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D306CD4C()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[8];
  v4 = v0[9];
  if (EnumCaseMultiPayload == 27)
  {
    v5 = v0[6];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.allAssetPackRecords(includingUnavailable:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  v3 = type metadata accessor for Helper.Message(0);
  *(v2 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v5 = type metadata accessor for Helper.Reply(0);
  *(v2 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D306CFF8, 0, 0);
}

uint64_t sub_1D306CFF8()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "All asset pack records including unavailable: %{BOOL}d", v5, 8u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 80);

  *v6 = v8;
  swift_storeEnumTagMultiPayload();
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_1D306D178;
  v10 = *(v0 + 56);
  v11 = *(v0 + 32);
  v12 = *(v0 + 16);

  return sub_1D3068FD4(v10, v11);
}

uint64_t sub_1D306D178()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 72) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D306D4B8;
  }

  else
  {
    v4 = sub_1D306D2BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D306D2BC()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 7)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    v6 = *v3;

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[4];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D306D4B8()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t Helper.Proxy.allAssetPackRecords(forAppWithBundleID:teamID:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v40 = a3;
  v39 = type metadata accessor for Helper.Message(0);
  v9 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Helper.Reply(0);
  v12 = *(*(v38 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v38);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  if (a4)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v18 = sub_1D30E8B3C();
    __swift_project_value_buffer(v18, qword_1EE313F18);
    v19 = sub_1D30E928C();

    v20 = sub_1D30E8B1C();

    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v37 = v15;
      v22 = v21;
      v23 = swift_slowAlloc();
      v36 = v4;
      v24 = v23;
      v41 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_1D2FFEA04(a1, a2, &v41);
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_1D2FFEA04(v40, a4, &v41);
      _os_log_impl(&dword_1D2FD9000, v20, v19, "All asset pack records for app with bundle ID: %{public}s team ID: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      v25 = v24;
      v5 = v36;
      MEMORY[0x1D38B3760](v25, -1, -1);
      v26 = v22;
      v15 = v37;
LABEL_10:
      MEMORY[0x1D38B3760](v26, -1, -1);
    }
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v27 = sub_1D30E8B3C();
    __swift_project_value_buffer(v27, qword_1EE313F18);
    v28 = sub_1D30E928C();

    v20 = sub_1D30E8B1C();

    if (os_log_type_enabled(v20, v28))
    {
      v29 = swift_slowAlloc();
      v36 = v4;
      v30 = v29;
      v31 = swift_slowAlloc();
      v37 = v15;
      v32 = v31;
      v41 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1D2FFEA04(a1, a2, &v41);
      _os_log_impl(&dword_1D2FD9000, v20, v28, "All asset pack records for app with bundle ID: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      v33 = v32;
      v15 = v37;
      MEMORY[0x1D38B3760](v33, -1, -1);
      v26 = v30;
      v5 = v36;
      goto LABEL_10;
    }
  }

  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 2) = v40;
  *(v11 + 3) = a4;
  v11[32] = 1;
  swift_storeEnumTagMultiPayload();

  sub_1D3068030(v11, v17);
  result = sub_1D3065284(v11, type metadata accessor for Helper.Message);
  if (!v5)
  {
    sub_1D3058338(v17, v15, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1D3065284(v17, type metadata accessor for Helper.Reply);
      return *v15;
    }

    else
    {
      sub_1D3065284(v15, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      sub_1D3058338(v17, v35, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_1D3065284(v17, type metadata accessor for Helper.Reply);
    }
  }

  return result;
}

uint64_t Helper.Proxy.allAssetPackRecords(forAppWithBundleID:teamID:includingUnavailable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 112) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for Helper.Message(0);
  *(v6 + 56) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  v9 = type metadata accessor for Helper.Reply(0);
  *(v6 + 72) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D306DB10, 0, 0);
}

uint64_t sub_1D306DB10()
{
  v33 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 24);
    v3 = sub_1D30E8B3C();
    __swift_project_value_buffer(v3, qword_1EE313F18);
    v4 = sub_1D30E928C();

    v5 = sub_1D30E8B1C();

    if (os_log_type_enabled(v5, v4))
    {
      v6 = *(v0 + 112);
      v8 = *(v0 + 24);
      v7 = *(v0 + 32);
      v9 = *(v0 + 16);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 136446722;
      *(v10 + 4) = sub_1D2FFEA04(v9, v8, &v32);
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_1D2FFEA04(v7, v1, &v32);
      *(v10 + 22) = 1024;
      *(v10 + 24) = v6;
      _os_log_impl(&dword_1D2FD9000, v5, v4, "All asset pack records for app with bundle ID: %{public}s team ID: %{public}s including unavailable: %{BOOL}d", v10, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v11, -1, -1);
      v12 = v10;
LABEL_10:
      MEMORY[0x1D38B3760](v12, -1, -1);
    }
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 24);
    v14 = sub_1D30E8B3C();
    __swift_project_value_buffer(v14, qword_1EE313F18);
    v15 = sub_1D30E928C();

    v5 = sub_1D30E8B1C();

    if (os_log_type_enabled(v5, v15))
    {
      v16 = *(v0 + 112);
      v18 = *(v0 + 16);
      v17 = *(v0 + 24);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_1D2FFEA04(v18, v17, &v32);
      *(v19 + 12) = 1024;
      *(v19 + 14) = v16;
      _os_log_impl(&dword_1D2FD9000, v5, v15, "All asset pack records for app with bundle ID: %{public}s including unavailable: %{BOOL}d", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D38B3760](v20, -1, -1);
      v12 = v19;
      goto LABEL_10;
    }
  }

  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v23 = *(v0 + 112);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  v26 = *(v0 + 24);
  *v21 = *(v0 + 16);
  *(v21 + 8) = v26;
  *(v21 + 16) = v24;
  *(v21 + 24) = v25;
  *(v21 + 32) = v23;
  swift_storeEnumTagMultiPayload();

  v27 = swift_task_alloc();
  *(v0 + 96) = v27;
  *v27 = v0;
  v27[1] = sub_1D306DE88;
  v28 = *(v0 + 88);
  v29 = *(v0 + 64);
  v30 = *(v0 + 48);

  return sub_1D3068FD4(v28, v29);
}

uint64_t sub_1D306DE88()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 104) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D3068F54;
  }

  else
  {
    v4 = sub_1D306DFCC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D306DFCC()
{
  v1 = v0[9];
  sub_1D3058338(v0[11], v0[10], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[10];
  v4 = v0[11];
  if (EnumCaseMultiPayload == 8)
  {
    v5 = v0[8];
    sub_1D3065284(v0[11], type metadata accessor for Helper.Reply);
    v6 = *v3;

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    sub_1D3065284(v0[10], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t Helper.Proxy.addAssetPackRecord(withGlobalID:host:version:rootDirectoryComponent:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v75 = type metadata accessor for Helper.Message(0);
  v7 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Helper.Reply(0);
  v10 = *(*(v67 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v67);
  v69 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v63 - v13;
  v14 = sub_1D30E8D5C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AssetPackHost();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v80 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = a1[1];
  v23 = a1[3];
  v77 = a1[2];
  v78 = v21;
  v24 = a1[5];
  v76 = a1[4];
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v74 = a3;
  v25 = sub_1D30E8B3C();
  __swift_project_value_buffer(v25, qword_1EE313F18);
  v26 = sub_1D30E928C();
  v72 = a2;
  sub_1D3058338(a2, v80, type metadata accessor for AssetPackHost);
  v70 = *(v15 + 16);
  v71 = v15 + 16;
  v70(v81, v82, v14);

  v27 = sub_1D30E8B1C();

  v68 = v26;
  v28 = os_log_type_enabled(v27, v26);
  v29 = v23;
  v30 = v15;
  if (v28)
  {
    v31 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v89 = v66;
    *v31 = 136446978;
    v83 = v78;
    v84 = v22;
    v85 = v77;
    v86 = v23;
    v87 = v76;
    v88 = v24;

    v65 = v27;
    v32 = AssetPackRecord.GlobalID.description.getter();
    v34 = v33;
    v64 = v24;
    v63 = v22;
    v35 = v30;

    v36 = sub_1D2FFEA04(v32, v34, &v89);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2082;
    v37 = v80;
    v38 = AssetPackHost.description.getter();
    v40 = v39;
    sub_1D3065284(v37, type metadata accessor for AssetPackHost);
    v23 = v29;
    v41 = sub_1D2FFEA04(v38, v40, &v89);

    *(v31 + 14) = v41;
    *(v31 + 22) = 2048;
    v42 = v74;
    *(v31 + 24) = v74;
    *(v31 + 32) = 2082;
    sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
    v43 = v81;
    v44 = sub_1D30E977C();
    v46 = v45;
    v47 = v43;
    v22 = v63;
    (*(v35 + 8))(v47, v14);
    v24 = v64;
    v48 = sub_1D2FFEA04(v44, v46, &v89);

    *(v31 + 34) = v48;
    v49 = v65;
    _os_log_impl(&dword_1D2FD9000, v65, v68, "Add asset pack record with global ID: %{public}s host: %{public}s version: %lu root directory component: %{public}s", v31, 0x2Au);
    v50 = v66;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v50, -1, -1);
    v51 = v31;
    v52 = v78;
    MEMORY[0x1D38B3760](v51, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v81, v14);
    sub_1D3065284(v80, type metadata accessor for AssetPackHost);
    v42 = v74;
    v52 = v78;
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
  v54 = v53[12];
  v55 = v53[16];
  v56 = v53[20];
  *v9 = v52;
  *(v9 + 1) = v22;
  v57 = v76;
  *(v9 + 2) = v77;
  *(v9 + 3) = v23;
  *(v9 + 4) = v57;
  *(v9 + 5) = v24;
  sub_1D3058338(v72, &v9[v54], type metadata accessor for AssetPackHost);
  *&v9[v55] = v42;
  v70(&v9[v56], v82, v14);
  swift_storeEnumTagMultiPayload();

  v58 = v73;
  sub_1D3068030(v9, v79);
  result = sub_1D3065284(v9, type metadata accessor for Helper.Message);
  if (!v58)
  {
    sub_1D3058338(v79, v69, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_1D3065284(v79, type metadata accessor for Helper.Reply);
      v60 = v69;
    }

    else
    {
      sub_1D3065284(v69, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      v61 = v79;
      sub_1D3058338(v79, v62, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v60 = v61;
    }

    return sub_1D3065284(v60, type metadata accessor for Helper.Reply);
  }

  return result;
}

{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v7 = type metadata accessor for Helper.Message(0);
  *(v5 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v9 = type metadata accessor for Helper.Reply(0);
  *(v5 + 64) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  v11 = sub_1D30E8D5C();
  *(v5 + 88) = v11;
  v12 = *(v11 - 8);
  *(v5 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v14 = *(*(type metadata accessor for AssetPackHost() - 8) + 64) + 15;
  v15 = swift_task_alloc();
  v16 = *a1;
  v17 = a1[1];
  *(v5 + 112) = v15;
  *(v5 + 120) = v16;
  *(v5 + 128) = v17;
  *(v5 + 136) = *(a1 + 1);
  v18 = a1[5];
  *(v5 + 152) = a1[4];
  *(v5 + 160) = v18;

  return MEMORY[0x1EEE6DFA0](sub_1D306EAB4, 0, 0);
}

uint64_t sub_1D306EAB4()
{
  v67 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v58 = *(v0 + 160);
  v62 = *(v0 + 144);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = sub_1D30E8B3C();
  __swift_project_value_buffer(v8, qword_1EE313F18);
  v9 = sub_1D30E928C();
  sub_1D3058338(v7, v2, type metadata accessor for AssetPackHost);
  v61 = *(v4 + 16);
  v61(v3, v6, v5);

  v10 = sub_1D30E8B1C();

  v59 = v9;
  if (os_log_type_enabled(v10, v9))
  {
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v50 = *(v0 + 136);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = *(v0 + 112);
    v54 = *(v0 + 104);
    v16 = *(v0 + 96);
    v51 = *(v0 + 24);
    v52 = *(v0 + 88);
    v17 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v63[0] = v56;
    v63[1] = v14;
    *v17 = 136446978;
    v63[2] = v13;
    v64 = v50;
    v65 = v12;
    v66 = v11;

    v18 = AssetPackRecord.GlobalID.description.getter();
    v20 = v19;

    v21 = sub_1D2FFEA04(v18, v20, v63);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = AssetPackHost.description.getter();
    v24 = v23;
    sub_1D3065284(v15, type metadata accessor for AssetPackHost);
    v25 = sub_1D2FFEA04(v22, v24, v63);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v51;
    *(v17 + 32) = 2082;
    sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
    v26 = sub_1D30E977C();
    v28 = v27;
    (*(v16 + 8))(v54, v52);
    v29 = sub_1D2FFEA04(v26, v28, v63);

    *(v17 + 34) = v29;
    _os_log_impl(&dword_1D2FD9000, v10, v59, "Add asset pack record with global ID: %{public}s host: %{public}s version: %lu root directory component: %{public}s", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v56, -1, -1);
    MEMORY[0x1D38B3760](v17, -1, -1);
  }

  else
  {
    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    v32 = *(v0 + 88);
    v33 = *(v0 + 96);

    (*(v33 + 8))(v31, v32);
    sub_1D3065284(v30, type metadata accessor for AssetPackHost);
  }

  v35 = *(v0 + 152);
  v34 = *(v0 + 160);
  v53 = *(v0 + 136);
  v37 = *(v0 + 120);
  v36 = *(v0 + 128);
  v38 = *(v0 + 56);
  v57 = *(v0 + 88);
  v60 = *(v0 + 48);
  v39 = *(v0 + 24);
  v55 = *(v0 + 32);
  v40 = *(v0 + 16);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
  v42 = v41[12];
  v43 = v41[16];
  v44 = v41[20];
  *v38 = v37;
  *(v38 + 8) = v36;
  *(v38 + 16) = v53;
  *(v38 + 32) = v35;
  *(v38 + 40) = v34;
  sub_1D3058338(v40, v38 + v42, type metadata accessor for AssetPackHost);
  *(v38 + v43) = v39;
  v61(v38 + v44, v55, v57);
  swift_storeEnumTagMultiPayload();

  v45 = swift_task_alloc();
  *(v0 + 168) = v45;
  *v45 = v0;
  v45[1] = sub_1D306EFA8;
  v46 = *(v0 + 80);
  v47 = *(v0 + 56);
  v48 = *(v0 + 40);

  return sub_1D3068FD4(v46, v47);
}

uint64_t sub_1D306EFA8()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 176) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D306F2F4;
  }

  else
  {
    v4 = sub_1D306F0EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D306F0EC()
{
  v1 = v0[8];
  sub_1D3058338(v0[10], v0[9], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 28)
  {
    v2 = v0[13];
    v3 = v0[14];
    v4 = v0[9];
    v5 = v0[7];
    sub_1D3065284(v0[10], type metadata accessor for Helper.Reply);
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
  }

  else
  {
    v7 = v0[10];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v7, v8, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v7, type metadata accessor for Helper.Reply);
    v10 = v0[13];
    v9 = v0[14];
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[7];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D306F2F4()
{
  v1 = v0[22];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t Helper.Proxy.removeAssetPackRecord(withGlobalID:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Helper.Message(0);
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for Helper.Reply(0);
  *(v3 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a2;
  v11 = a2[1];
  *(v3 + 64) = v9;
  *(v3 + 72) = v10;
  *(v3 + 80) = v11;
  *(v3 + 88) = *(a2 + 1);
  v12 = a2[5];
  *(v3 + 104) = a2[4];
  *(v3 + 112) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D306F47C, 0, 0);
}

uint64_t sub_1D306F47C()
{
  v33 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE313F18);
  v5 = sub_1D30E928C();

  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v5))
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v28 = *(v0 + 88);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    v29[1] = v10;
    *v11 = 136446210;
    v29[2] = v9;
    v30 = v28;
    v31 = v8;
    v32 = v7;

    v13 = AssetPackRecord.GlobalID.description.getter();
    v15 = v14;

    v16 = sub_1D2FFEA04(v13, v15, v29);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Remove asset pack record with global ID: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D38B3760](v12, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  v17 = *(v0 + 104);
  v18 = *(v0 + 112);
  v19 = *(v0 + 80);
  v21 = *(v0 + 32);
  v20 = *(v0 + 40);
  v22 = *(v0 + 88);
  *v20 = *(v0 + 72);
  *(v20 + 8) = v19;
  *(v20 + 16) = v22;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  swift_storeEnumTagMultiPayload();

  v23 = swift_task_alloc();
  *(v0 + 120) = v23;
  *v23 = v0;
  v23[1] = sub_1D306F724;
  v24 = *(v0 + 64);
  v25 = *(v0 + 40);
  v26 = *(v0 + 24);

  return sub_1D3068FD4(v24, v25);
}

uint64_t sub_1D306F724()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 128) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D306FA54;
  }

  else
  {
    v4 = sub_1D306F868;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D306F868()
{
  v1 = v0[6];
  sub_1D3058338(v0[8], v0[7], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = v0[2];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    sub_1D3056830(v2, v4, type metadata accessor for AssetPackRecord.StaticRepresentation);
  }

  else
  {
    v6 = v0[8];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v6, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v6, type metadata accessor for Helper.Reply);
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[5];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D306FA54()
{
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t Helper.Proxy.eraseAssetPackRecords()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Helper.Message(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for Helper.Reply(0);
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D306FBA4, 0, 0);
}

uint64_t sub_1D306FBA4()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Erase asset pack records", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1D306FD0C;
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[2];

  return sub_1D3068FD4(v8, v9);
}

uint64_t sub_1D306FD0C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 72) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7044;
  }

  else
  {
    v4 = sub_1D306FE50;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D306FE50()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 29)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[4];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.unavailableAssetPackIsDownloaded(withGlobalID:)(uint64_t *a1)
{
  *(v2 + 16) = v1;
  v4 = type metadata accessor for Helper.Message(0);
  *(v2 + 24) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  *(v2 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a1;
  v10 = a1[1];
  *(v2 + 56) = v8;
  *(v2 + 64) = v9;
  *(v2 + 72) = v10;
  *(v2 + 80) = *(a1 + 1);
  v11 = a1[5];
  *(v2 + 96) = a1[4];
  *(v2 + 104) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D3070114, 0, 0);
}

uint64_t sub_1D3070114()
{
  v33 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE313F18);
  v5 = sub_1D30E928C();

  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v5))
  {
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v28 = *(v0 + 80);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    v29[1] = v10;
    *v11 = 136446210;
    v29[2] = v9;
    v30 = v28;
    v31 = v8;
    v32 = v7;

    v13 = AssetPackRecord.GlobalID.description.getter();
    v15 = v14;

    v16 = sub_1D2FFEA04(v13, v15, v29);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Unavailable asset pack is downloaded with global ID: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D38B3760](v12, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  v19 = *(v0 + 72);
  v21 = *(v0 + 24);
  v20 = *(v0 + 32);
  v22 = *(v0 + 80);
  *v20 = *(v0 + 64);
  *(v20 + 8) = v19;
  *(v20 + 16) = v22;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  swift_storeEnumTagMultiPayload();

  v23 = swift_task_alloc();
  *(v0 + 112) = v23;
  *v23 = v0;
  v23[1] = sub_1D30703BC;
  v24 = *(v0 + 56);
  v25 = *(v0 + 32);
  v26 = *(v0 + 16);

  return sub_1D3068FD4(v24, v25);
}

uint64_t sub_1D30703BC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 120) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7034;
  }

  else
  {
    v4 = sub_1D3070500;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3070500()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 10)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    v6 = *v3;

    v7 = v0[1];
    v8 = v6;
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[4];

    v7 = v0[1];
    v8 = 0;
  }

  return v7(v8);
}

uint64_t Helper.Proxy.assetPackIsAvailable(withGlobalID:)(uint64_t *a1)
{
  *(v2 + 16) = v1;
  v4 = type metadata accessor for Helper.Message(0);
  *(v2 + 24) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  *(v2 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a1;
  v10 = a1[1];
  *(v2 + 56) = v8;
  *(v2 + 64) = v9;
  *(v2 + 72) = v10;
  *(v2 + 80) = *(a1 + 1);
  v11 = a1[5];
  *(v2 + 96) = a1[4];
  *(v2 + 104) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D30707C0, 0, 0);
}

uint64_t sub_1D30707C0()
{
  v33 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE313F18);
  v5 = sub_1D30E928C();

  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v5))
  {
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v28 = *(v0 + 80);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    v29[1] = v10;
    *v11 = 136446210;
    v29[2] = v9;
    v30 = v28;
    v31 = v8;
    v32 = v7;

    v13 = AssetPackRecord.GlobalID.description.getter();
    v15 = v14;

    v16 = sub_1D2FFEA04(v13, v15, v29);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Asset pack is available with global ID: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D38B3760](v12, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  v19 = *(v0 + 72);
  v21 = *(v0 + 24);
  v20 = *(v0 + 32);
  v22 = *(v0 + 80);
  *v20 = *(v0 + 64);
  *(v20 + 8) = v19;
  *(v20 + 16) = v22;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  swift_storeEnumTagMultiPayload();

  v23 = swift_task_alloc();
  *(v0 + 112) = v23;
  *v23 = v0;
  v23[1] = sub_1D3070A68;
  v24 = *(v0 + 56);
  v25 = *(v0 + 32);
  v26 = *(v0 + 16);

  return sub_1D3068FD4(v24, v25);
}

uint64_t sub_1D3070A68()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 120) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D3070D80;
  }

  else
  {
    v4 = sub_1D3070BAC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3070BAC()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 11)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    v6 = *v3;

    v7 = v0[1];
    v8 = v6;
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[4];

    v7 = v0[1];
    v8 = 0;
  }

  return v7(v8);
}

uint64_t sub_1D3070D80()
{
  v1 = v0[15];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5(0);
}

uint64_t Helper.Proxy.setIsAvailable(_:ofAssetPackWithGlobalID:)(char a1, uint64_t *a2)
{
  *(v3 + 16) = v2;
  *(v3 + 128) = a1;
  v5 = type metadata accessor for Helper.Message(0);
  *(v3 + 24) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v7 = type metadata accessor for Helper.Reply(0);
  *(v3 + 40) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a2;
  v11 = a2[1];
  *(v3 + 56) = v9;
  *(v3 + 64) = v10;
  *(v3 + 72) = v11;
  *(v3 + 80) = *(a2 + 1);
  v12 = a2[5];
  *(v3 + 96) = a2[4];
  *(v3 + 104) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D3070EF4, 0, 0);
}

uint64_t sub_1D3070EF4()
{
  v36 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE313F18);
  v5 = sub_1D30E928C();

  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v5))
  {
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v30 = *(v0 + 80);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v31 = v5;
    v11 = *(v0 + 128);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32[0] = v13;
    v32[1] = v10;
    *v12 = 67109378;
    *(v12 + 4) = v11;
    *(v12 + 8) = 2082;
    v32[2] = v9;
    v33 = v30;
    v34 = v8;
    v35 = v7;

    v14 = AssetPackRecord.GlobalID.description.getter();
    v16 = v15;

    v17 = sub_1D2FFEA04(v14, v16, v32);

    *(v12 + 10) = v17;
    _os_log_impl(&dword_1D2FD9000, v6, v31, "Set is available: %{BOOL}d of asset pack with global ID: %{public}s", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38B3760](v13, -1, -1);
    MEMORY[0x1D38B3760](v12, -1, -1);
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 104);
  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  v23 = *(v0 + 24);
  v22 = *(v0 + 32);
  v24 = *(v0 + 80);
  *v22 = *(v0 + 128);
  *(v22 + 8) = v20;
  *(v22 + 16) = v21;
  *(v22 + 24) = v24;
  *(v22 + 40) = v18;
  *(v22 + 48) = v19;
  swift_storeEnumTagMultiPayload();

  v25 = swift_task_alloc();
  *(v0 + 112) = v25;
  *v25 = v0;
  v25[1] = sub_1D30711BC;
  v26 = *(v0 + 56);
  v27 = *(v0 + 32);
  v28 = *(v0 + 16);

  return sub_1D3068FD4(v26, v27);
}

uint64_t sub_1D30711BC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 120) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30714D8;
  }

  else
  {
    v4 = sub_1D3071300;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3071300()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 30)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[4];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D30714D8()
{
  v1 = v0[15];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t Helper.Proxy.reportFinishedDownload(ofAssetPackWithGlobalID:version:)(uint64_t *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Helper.Message(0);
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for Helper.Reply(0);
  *(v3 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a1;
  v11 = a1[1];
  *(v3 + 64) = v9;
  *(v3 + 72) = v10;
  *(v3 + 80) = v11;
  *(v3 + 88) = *(a1 + 1);
  v12 = a1[5];
  *(v3 + 104) = a1[4];
  *(v3 + 112) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D3071644, 0, 0);
}

uint64_t sub_1D3071644()
{
  v35 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE313F18);
  v5 = sub_1D30E928C();

  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v5))
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v29 = *(v0 + 88);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v30 = *(v0 + 16);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31[0] = v12;
    v31[1] = v10;
    *v11 = 136446466;
    v31[2] = v9;
    v32 = v29;
    v33 = v8;
    v34 = v7;

    v13 = AssetPackRecord.GlobalID.description.getter();
    v15 = v14;

    v16 = sub_1D2FFEA04(v13, v15, v31);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v30;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Report finished download of asset pack with global ID: %{public}s version: %lu", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D38B3760](v12, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  v17 = *(v0 + 104);
  v18 = *(v0 + 112);
  v19 = *(v0 + 80);
  v21 = *(v0 + 32);
  v20 = *(v0 + 40);
  v22 = *(v0 + 16);
  v23 = *(v0 + 88);
  *v20 = *(v0 + 72);
  *(v20 + 8) = v19;
  *(v20 + 16) = v23;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  *(v20 + 48) = v22;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  swift_storeEnumTagMultiPayload();

  v24 = swift_task_alloc();
  *(v0 + 120) = v24;
  *v24 = v0;
  v24[1] = sub_1D3071910;
  v25 = *(v0 + 64);
  v26 = *(v0 + 40);
  v27 = *(v0 + 24);

  return sub_1D3068FD4(v25, v26);
}

uint64_t sub_1D3071910()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 128) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7038;
  }

  else
  {
    v4 = sub_1D3071A54;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3071A54()
{
  v1 = v0[6];
  sub_1D3058338(v0[8], v0[7], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[7];
  v4 = v0[8];
  if (EnumCaseMultiPayload == 31)
  {
    v5 = v0[5];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[5];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.reportFinishedDownload<A>(ofAssetPackWithGlobalID:version:withError:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 40) = a2;
  v9 = type metadata accessor for Helper.Message(0);
  *(v6 + 80) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v11 = type metadata accessor for Helper.Reply(0);
  *(v6 + 96) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  v13 = *(a4 - 8);
  *(v6 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v15 = swift_task_alloc();
  v16 = *a1;
  v17 = a1[1];
  *(v6 + 144) = v15;
  *(v6 + 152) = v16;
  *(v6 + 160) = v17;
  *(v6 + 168) = *(a1 + 1);
  v18 = a1[5];
  *(v6 + 184) = a1[4];
  *(v6 + 192) = v18;

  return MEMORY[0x1EEE6DFA0](sub_1D3071D94, 0, 0);
}

uint64_t sub_1D3071D94()
{
  v65 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = sub_1D30E8B3C();
  __swift_project_value_buffer(v8, qword_1EE313F18);
  v9 = sub_1D30E928C();
  v60 = *(v5 + 16);
  v60(v4, v7, v6);

  v10 = sub_1D30E8B1C();

  v58 = v9;
  if (os_log_type_enabled(v10, v9))
  {
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v50 = *(v0 + 168);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 136);
    v53 = *(v0 + 144);
    v54 = *(v0 + 64);
    v51 = *(v0 + 40);
    v52 = *(v0 + 56);
    v16 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    v61[1] = v14;
    *v16 = 136446722;
    v61[2] = v13;
    v62 = v50;
    v63 = v12;
    v64 = v11;

    v17 = AssetPackRecord.GlobalID.description.getter();
    v19 = v18;

    v20 = sub_1D2FFEA04(v17, v19, v61);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v51;
    *(v16 + 22) = 2114;
    v60(v15, v53, v52);
    v21 = sub_1D30E97AC();
    v22 = *(v0 + 136);
    v23 = *(v0 + 120);
    if (v21)
    {
      (*(v23 + 8))(*(v0 + 136), *(v0 + 56));
    }

    else
    {
      v28 = *(v0 + 56);
      v27 = *(v0 + 64);
      swift_allocError();
      (*(v23 + 32))(v29, v22, v28);
    }

    v30 = *(v0 + 144);
    v31 = *(v0 + 120);
    v32 = *(v0 + 56);
    v33 = _swift_stdlib_bridgeErrorToNSError();
    (*(v31 + 8))(v30, v32);
    *(v16 + 24) = v33;
    *v55 = v33;
    _os_log_impl(&dword_1D2FD9000, v10, v58, "Report finished download of asset pack with global ID: %{public}s version: %lu with error: %{public}@", v16, 0x20u);
    sub_1D2FF14DC(v55, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v55, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x1D38B3760](v56, -1, -1);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  else
  {
    v24 = *(v0 + 144);
    v25 = *(v0 + 120);
    v26 = *(v0 + 56);

    (*(v25 + 8))(v24, v26);
  }

  v34 = *(v0 + 184);
  v35 = *(v0 + 192);
  v57 = *(v0 + 168);
  v37 = *(v0 + 152);
  v36 = *(v0 + 160);
  v38 = *(v0 + 128);
  v39 = *(v0 + 88);
  v59 = *(v0 + 80);
  v41 = *(v0 + 56);
  v40 = *(v0 + 64);
  v42 = *(v0 + 40);
  v60(v38, *(v0 + 48), v41);

  sub_1D303C404(v38, v41, v40, (v0 + 16));
  v43 = *(v0 + 32);
  v44 = *(v0 + 16);
  *v39 = v37;
  *(v39 + 8) = v36;
  *(v39 + 16) = v57;
  *(v39 + 32) = v34;
  *(v39 + 40) = v35;
  *(v39 + 48) = v42;
  *(v39 + 56) = v44;
  *(v39 + 72) = v43;
  swift_storeEnumTagMultiPayload();
  v45 = swift_task_alloc();
  *(v0 + 200) = v45;
  *v45 = v0;
  v45[1] = sub_1D307223C;
  v46 = *(v0 + 112);
  v47 = *(v0 + 88);
  v48 = *(v0 + 72);

  return sub_1D3068FD4(v46, v47);
}