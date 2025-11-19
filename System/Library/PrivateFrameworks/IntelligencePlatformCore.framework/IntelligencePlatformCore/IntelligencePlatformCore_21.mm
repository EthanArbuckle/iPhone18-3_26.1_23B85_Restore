id sub_1C45BEF24()
{
  v1 = v0[3];
  v2 = v0[5];
  v19 = v0[4];
  v20 = v0[2];
  v3 = v0[7];
  v4 = v0[9];
  v17 = v0[8];
  v18 = v0[6];
  v5 = v0[12];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C4F019C8();
  v7 = v0[10];
  v6 = v0[11];
  v9 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_relatedMessageUniqueIdentifier);
  v8 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_relatedMessageUniqueIdentifier + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45BCC2C(v7);
  v11 = v10;
  v13 = v0[13];
  v12 = v0[14];
  v14 = objc_allocWithZone(MEMORY[0x1E698EB48]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C45BFF58(v20, v1, v19, v2, v18, v3, v17, v4, v16, v9, v8, v11, v13, v12);
}

id sub_1C45BF034()
{
  v1 = v0;
  if (*(v0 + 56) || *(v0 + 40))
  {
    sub_1C45BF208();
    if (v2 == 2)
    {
      v3 = 0;
LABEL_18:
      v11 = 4;
      goto LABEL_19;
    }

    if (v2)
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v4 = sub_1C4F00978();
      sub_1C43FCEE8(v4, qword_1EDDFECB8);
      v5 = sub_1C4F00968();
      v6 = sub_1C4F01CC8();
      if (!sub_1C43FEB2C(v6))
      {
        v3 = 1;
        goto LABEL_17;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C43F8000, v5, v6, "Autonaming Analytics: Current inference is a true positive", v7, 2u);
      v3 = 1;
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v8 = sub_1C4F00978();
      sub_1C43FCEE8(v8, qword_1EDDFECB8);
      v5 = sub_1C4F00968();
      v9 = sub_1C4F01CC8();
      v3 = 2;
      if (!sub_1C43FEB2C(v9))
      {
        goto LABEL_17;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v5, v9, "Autonaming Analytics: Current inference is a false positive", v10, 2u);
    }

    sub_1C43FBE2C();
LABEL_17:

    goto LABEL_18;
  }

  v3 = 0;
  v11 = 3;
LABEL_19:
  v13 = *(v1 + 104);
  v12 = *(v1 + 112);
  v14 = objc_allocWithZone(MEMORY[0x1E698EB40]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C45BFEB0(v13, v12, v11, v3, 0, 0, 0);
}

void sub_1C45BF208()
{
  v1 = v0;
  v107 = *MEMORY[0x1E69E9840];
  v2 = sub_1C4EF98F8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[3];
  if (!v6)
  {
    goto LABEL_34;
  }

  v7 = v0[2];
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v8 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v9 = sub_1C44B90E0(v5);
  v105 = 0;
  if (![v9 openAndWaitWithUpgrade:0 error:&v105])
  {
    v18 = v105;
    v19 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C43FCEE8(v20, qword_1EDDFECB8);
    v21 = v19;
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CD8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1C43F8000, v22, v23, "Photo Library could not open successfully due to %@, returning nil for unknown ground truth", v24, 0xCu);
      sub_1C4423A0C(v25, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FFD4C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    goto LABEL_34;
  }

  v10 = v105;
  v11 = [v9 librarySpecificFetchOptions];
  v12 = objc_opt_self();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0D130;
  *(v13 + 32) = v7;
  *(v13 + 40) = v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4F01658();

  v15 = [v12 fetchPersonsWithLocalIdentifiers:v14 options:v11];

  v16 = [v15 fetchedObjects];
  if (v16)
  {
    sub_1C4461BB8(0, &qword_1EC0C2A80, 0x1E6978980);
    v17 = sub_1C4F01678();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1C4428DA0() != 1)
  {

    goto LABEL_34;
  }

  if (!sub_1C4428DA0())
  {

    goto LABEL_34;
  }

  sub_1C4431590(0, (v17 & 0xC000000000000001) == 0);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1C6940F90](0, v17);
  }

  else
  {
    v28 = *(v17 + 32);
  }

  v29 = v28;

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v30 = sub_1C4F00978();
  sub_1C43FCEE8(v30, qword_1EDDFECB8);
  v31 = v29;

  v102 = v17;
  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CC8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = sub_1C43FFD34();
    v105 = sub_1C440D048();
    *v34 = 136315650;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441D828(v7, v6, &v105);
    sub_1C4410930();
    *(v34 + 4) = v7;
    *(v34 + 12) = 2080;
    v35 = sub_1C47851D4(v31);
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v35 = 7104878;
      v37 = 0xE300000000000000;
    }

    sub_1C441D828(v35, v37, &v105);
    sub_1C4410930();
    *(v34 + 14) = v7;
    *(v34 + 22) = 2080;
    v38 = sub_1C45C0104(v31);
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v38 = 7104878;
      v40 = 0xE300000000000000;
    }

    sub_1C441D828(v38, v40, &v105);
    sub_1C4410930();
    *(v34 + 24) = v7;
    _os_log_impl(&dword_1C43F8000, v32, v33, "Autonaming Analytics: Found an existing PHPerson matching the inference %s : person name %s and contact %s ", v34, 0x20u);
    swift_arrayDestroy();
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  sub_1C47851D4(v31);
  v41 = &unk_1C4F0C000;
  if (!v42)
  {
    goto LABEL_36;
  }

  sub_1C4431EFC();
  if (!v43 || (v44 = v1[5]) == 0)
  {

LABEL_36:
    v65 = 2;
    v64 = 1;
    goto LABEL_37;
  }

  v45 = v1[4];
  sub_1C43FCE84();
  v105 = sub_1C4F00FF8();
  v106 = v46;
  v100 = v45;
  v101 = v44;
  v103 = sub_1C4F00FF8();
  v104 = v47;
  v48 = sub_1C4415EA8();
  v49 = sub_1C4402BD8();

  if ((v49 & 1) == 0)
  {
    v105 = sub_1C4F00FF8();
    v106 = v50;
    sub_1C43FCE84();
    v103 = sub_1C4F00FF8();
    v104 = v51;
    v52 = sub_1C4402BD8();

    if ((v52 & 1) == 0)
    {
      v80 = v101;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v81 = sub_1C4F00968();
      v82 = sub_1C4F01CC8();

      if (os_log_type_enabled(v81, v82))
      {
        sub_1C440F274();
        v99 = v81;
        v105 = sub_1C440A5D4();
        sub_1C440F268(4.8151e-34);
        v83 = sub_1C43FCE84();
        v86 = v80;
        v87 = sub_1C441D828(v83, v84, v85);

        *(v81 + 4) = v87;
        sub_1C4406668();
        v89 = sub_1C441D828(v100, v86, v88);

        *(v81 + 14) = v89;
        v90 = v82;
        v91 = v99;
        sub_1C44117D8(&dword_1C43F8000, v92, v90, "Autonaming Analytics: Found a name mismatch between existing PHPerson %s and inference %s: false positive");
        swift_arrayDestroy();
        sub_1C43FBE2C();
        v41 = &unk_1C4F0C000;
        sub_1C43FBE2C();

        v64 = 0;
        v65 = 0;
        goto LABEL_37;
      }

      v64 = 0;
      v65 = 0;
LABEL_56:
      v41 = &unk_1C4F0C000;
      goto LABEL_37;
    }
  }

  v53 = v101;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v54 = sub_1C4F00968();
  v55 = sub_1C4F01CC8();

  if (!os_log_type_enabled(v54, v55))
  {

    v64 = 0;
    v65 = 1;
    goto LABEL_56;
  }

  sub_1C440F274();
  v99 = sub_1C440A5D4();
  v105 = v99;
  sub_1C440F268(4.8151e-34);
  v56 = sub_1C43FCE84();
  v59 = v53;
  v60 = sub_1C441D828(v56, v57, v58);

  *(v48 + 4) = v60;
  sub_1C4406668();
  v62 = sub_1C441D828(v100, v59, v61);

  *(v48 + 14) = v62;
  sub_1C44117D8(&dword_1C43F8000, v63, v55, "Autonaming Analytics: Found a name match between existing PHPerson %s and inference %s: true positive");
  swift_arrayDestroy();
  sub_1C43FBE2C();
  v41 = &unk_1C4F0C000;
  sub_1C43FBE2C();

  v64 = 0;
  v65 = 1;
LABEL_37:
  v67 = sub_1C45C0104(v31);
  if (v68)
  {
    v69 = v67;
    sub_1C4431EFC();
    if (v70)
    {
      v71 = v1[7];
      if (v71)
      {
        LODWORD(v100) = v64;
        LODWORD(v101) = v65;
        v72 = v1[6];
        v73 = v69 == v72 && v7 == v71;
        if (v73 || (sub_1C4F02938() & 1) != 0)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v74 = sub_1C4F00968();
          v75 = sub_1C4F01CC8();
          if (sub_1C43FEB2C(v75))
          {
            sub_1C440F274();
            v102 = v72;
            v99 = sub_1C440A5D4();
            v105 = v99;
            sub_1C440F268(COERCE_FLOAT(v41[457]));
            v77 = sub_1C441D828(v69, v7, v76);

            *(v41 + 4) = v77;
            sub_1C4406668();
            sub_1C441D828(v102, v71, v78);
            sub_1C4410930();
            *(v41 + 14) = v7;
            sub_1C44117D8(&dword_1C43F8000, v79, v75, "Autonaming Analytics: Found a contact match between existing PHPerson %s and inference %s: true positive");
            sub_1C4408624();
            sub_1C43FBE2C();
            sub_1C43FFD4C();
LABEL_58:

            goto LABEL_34;
          }
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v74 = sub_1C4F00968();
          v93 = sub_1C4F01CC8();
          if (sub_1C43FEB2C(v93))
          {
            sub_1C440F274();
            v102 = v72;
            v99 = sub_1C440A5D4();
            v105 = v99;
            sub_1C440F268(COERCE_FLOAT(v41[457]));
            v95 = sub_1C441D828(v69, v7, v94);

            *(v41 + 4) = v95;
            sub_1C4406668();
            v97 = sub_1C441D828(v102, v71, v96);

            *(v41 + 14) = v97;
            sub_1C44117D8(&dword_1C43F8000, v98, v93, "Autonaming Analytics: Found a contact mismatch between existing PHPerson %s and inference %s: false positive");
            sub_1C4408624();
            sub_1C43FBE2C();
            sub_1C43FFD4C();
            goto LABEL_58;
          }
        }

        goto LABEL_58;
      }
    }
  }

LABEL_34:
  v66 = *MEMORY[0x1E69E9840];
  sub_1C43FE9F0();
}

void *sub_1C45BFCB4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[14];

  return v0;
}

uint64_t sub_1C45BFD0C()
{
  sub_1C45BFCB4();

  return swift_deallocClassInstance();
}

__n128 sub_1C45BFD64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C45BFD78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_1C45BFDB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GraphEdge(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C45BFE20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1C45BFE60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1C45BFEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  if (a2)
  {
    v14 = sub_1C4F01108();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v8 initWithModelVersion:v14 inferenceOutputType:a3 inferenceAccuracy:a4 aggregatedInferenceContributingCount:a5 aggregatedInferenceConfidence:a6 aggregatedInferenceAccuracy:a7];

  return v15;
}

id sub_1C45BFF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    v18 = sub_1C4F01108();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = sub_1C4F01108();

  if (a6)
  {
LABEL_4:
    v20 = sub_1C4F01108();

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  if (a8)
  {
    v21 = sub_1C4F01108();
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    v22 = sub_1C4F01108();
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_1C4F01658();

  if (a14)
  {
    v24 = sub_1C4F01108();
  }

  else
  {
    v24 = 0;
  }

  v25 = [v14 initWithPhotosPersonIdentifier:v18 inferredName:v19 inferredContactIdentifier:v20 inferredRelationshipToDeviceOwner:v21 confidence:a9 imageMessageIdentifier:v22 contextMessageIdentifiers:v23 modelVersion:v24];

  return v25;
}

uint64_t sub_1C45C0104(void *a1)
{
  v1 = [a1 personUri];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C45C0218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45C0288(_BOOL8 a1)
{
  if (v1[7])
  {
    v7 = v1[6];
    v9 = v1[7];
    MEMORY[0x1EEE9AC00](a1);
    sub_1C441F3E8();
    a1 = sub_1C44CE068(sub_1C4579E44, v2, &unk_1F43D2400);
    v3 = !a1;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  if (v4)
  {
    v8 = *v1;
    v10 = v1[1];
    MEMORY[0x1EEE9AC00](a1);
    sub_1C441F3E8();
    LODWORD(v4) = !sub_1C44CE068(sub_1C44CE790, v5, &unk_1F43D2400);
  }

  return (v3 | v4) & 1;
}

uint64_t sub_1C45C0370()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C45C03BC(char a1)
{
  result = 1162690894;
  switch(a1)
  {
    case 1:
      result = 0x4E4F4954414C4552;
      break;
    case 2:
      result = 0x54444554414C4552;
      break;
    case 3:
      result = 0x5049434954524150;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C45C046C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C45C0370();
  *a2 = result;
  return result;
}

uint64_t sub_1C45C049C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C45C03BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C45C04D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C45C0370();
  *a1 = result;
  return result;
}

uint64_t sub_1C45C0504(uint64_t a1)
{
  v2 = sub_1C45C0B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45C0540(uint64_t a1)
{
  v2 = sub_1C45C0B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45C057C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B98A0, &qword_1C4F0FF40);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v27 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C45C0B58();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v36[0]) = 0;
  sub_1C442C3F4();
  v14 = sub_1C4F02678();
  v31 = v15;
  LOBYTE(v36[0]) = 1;
  sub_1C442C3F4();
  v28 = sub_1C4F02678();
  v30 = v16;
  LOBYTE(v36[0]) = 2;
  sub_1C442C3F4();
  v27 = sub_1C4F02678();
  v29 = v17;
  v37 = 3;
  v18 = sub_1C4F02678();
  v20 = v19;
  (*(v8 + 8))(v12, v5);
  v21 = v31;
  *&v32 = v14;
  *(&v32 + 1) = v31;
  v23 = v28;
  v22 = v29;
  *&v33 = v28;
  *(&v33 + 1) = v30;
  *&v34 = v27;
  *(&v34 + 1) = v29;
  *&v35 = v18;
  *(&v35 + 1) = v20;
  sub_1C45C0168(&v32, v36);
  sub_1C440962C(a1);
  v36[0] = v14;
  v36[1] = v21;
  v36[2] = v23;
  v36[3] = v30;
  v36[4] = v27;
  v36[5] = v22;
  v36[6] = v18;
  v36[7] = v20;
  result = sub_1C45C01C4(v36);
  v25 = v33;
  *a2 = v32;
  a2[1] = v25;
  v26 = v35;
  a2[2] = v34;
  a2[3] = v26;
  return result;
}

uint64_t sub_1C45C082C(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1[2] == a2[2] && v8 == v9;
    if (!v10 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = a1[5];
  v12 = a2[5];
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  v13 = a1[4] == a2[4] && v11 == v12;
  if (!v13 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v14 = a1[7];
  v15 = a2[7];
  result = (v14 | v15) == 0;
  if (v14 && v15)
  {
    if (a1[6] == a2[6] && v14 == v15)
    {
      return 1;
    }

    else
    {

      return sub_1C4F02938();
    }
  }

  return result;
}

uint64_t sub_1C45C0950(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0B98B0, &qword_1C4F0FF48);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C45C0B58();
  sub_1C4F02BF8();
  v17 = *v3;
  v16 = 0;
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  sub_1C45C0BAC();
  sub_1C4419098();
  if (!v2)
  {
    v17 = v3[1];
    v16 = 1;
    sub_1C4419098();
    v17 = v3[2];
    v16 = 2;
    sub_1C4419098();
    v17 = v3[3];
    v16 = 3;
    sub_1C4419098();
  }

  return (*(v8 + 8))(v12, v5);
}

double sub_1C45C0AE8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C45C057C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_1C45C0B58()
{
  result = qword_1EC0B98A8;
  if (!qword_1EC0B98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98A8);
  }

  return result;
}

unint64_t sub_1C45C0BAC()
{
  result = qword_1EC0B98B8;
  if (!qword_1EC0B98B8)
  {
    sub_1C4572308(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutonamingMessagesInferenceOutput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45C0D08()
{
  result = qword_1EC0B98C0;
  if (!qword_1EC0B98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98C0);
  }

  return result;
}

unint64_t sub_1C45C0D60()
{
  result = qword_1EC0B98C8;
  if (!qword_1EC0B98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98C8);
  }

  return result;
}

unint64_t sub_1C45C0DB8()
{
  result = qword_1EC0B98D0;
  if (!qword_1EC0B98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98D0);
  }

  return result;
}

void sub_1C45C0E0C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v60 - v10;
  v12 = type metadata accessor for ExtractedAttributes(0);
  v13 = v12[13];
  v61 = sub_1C4EF9CD8();
  v62 = v13;
  sub_1C440BAA8(a4 + v13, 1, 1, v61);
  v14 = sub_1C44117F4();
  v15 = [v14 attributeDictionary];

  v16 = sub_1C4F00ED8();
  v66 = a2;
  v67 = a3;
  sub_1C4F02198();
  sub_1C465C11C(v65, v16);

  sub_1C457E804(v65);
  if (v68)
  {
    v17 = sub_1C440A5F0();
    v18 = v63;
    v19 = v64;
    if (!v17)
    {
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    sub_1C4420C3C(&v66, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v18 = 0;
    v19 = 0;
  }

  *a4 = v18;
  a4[1] = v19;
  v20 = sub_1C44117F4();
  a4[2] = sub_1C45C28F0(v20, &selRef_uniqueIdentifier);
  a4[3] = v21;
  v22 = sub_1C44117F4();
  a4[4] = sub_1C45CD590(v22);
  a4[5] = v23;
  v24 = sub_1C44117F4();
  a4[6] = sub_1C45C2968(v24, &selRef_contentTypeTree);
  v25 = sub_1C44117F4();
  a4[7] = sub_1C45C2968(v25, &selRef_recipientNames);
  v26 = sub_1C44117F4();
  v27 = [v26 attributeDictionary];

  v28 = sub_1C4F00ED8();
  v29 = *MEMORY[0x1E69649E8];
  v66 = sub_1C4F01138();
  v67 = v30;
  sub_1C4F02198();
  sub_1C465C11C(v65, v28);

  sub_1C457E804(v65);
  if (v68)
  {
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    v31 = sub_1C440A5F0();
    v32 = v63;
    if (!v31)
    {
      v32 = 0;
    }
  }

  else
  {
    sub_1C4420C3C(&v66, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v32 = 0;
  }

  a4[8] = v32;
  v33 = sub_1C44117F4();
  a4[9] = sub_1C45C2968(v33, &selRef_authorNames);
  v34 = sub_1C44117F4();
  v35 = [v34 attributeDictionary];

  v36 = sub_1C4F00ED8();
  v37 = *MEMORY[0x1E6963CF8];
  v66 = sub_1C4F01138();
  v67 = v38;
  sub_1C4F02198();
  sub_1C465C11C(v65, v36);

  sub_1C457E804(v65);
  if (v68)
  {
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    v39 = sub_1C440A5F0();
    v40 = v63;
    if (!v39)
    {
      v40 = 0;
    }
  }

  else
  {
    sub_1C4420C3C(&v66, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v40 = 0;
  }

  a4[10] = v40;
  v41 = sub_1C44117F4();
  a4[11] = sub_1C45C28F0(v41, &selRef_contentSnippet);
  a4[12] = v42;
  v43 = sub_1C44117F4();
  v44 = [v43 contentCreationDate];

  if (v44)
  {
    sub_1C4EF9C78();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  sub_1C440BAA8(v11, v45, 1, v61);
  sub_1C45AD734(v11, a4 + v62);
  v46 = sub_1C44117F4();
  v47 = sub_1C45C28F0(v46, &selRef_relatedUniqueIdentifier);
  v48 = (a4 + v12[14]);
  *v48 = v47;
  v48[1] = v49;
  v50 = sub_1C44117F4();
  v51 = [v50 eligibleForPhotosProcessing];

  if (v51)
  {
    v52 = [v51 BOOLValue];
  }

  else
  {
    v52 = 2;
  }

  *(a4 + v12[15]) = v52;
  v53 = sub_1C44117F4();
  *(a4 + v12[16]) = sub_1C45C2968(v53, &selRef_attachmentNames);
  v54 = sub_1C44117F4();
  v55 = [v54 messageType];

  if (v55)
  {
    v56 = sub_1C4F01138();
    v58 = v57;
  }

  else
  {

    v56 = 0;
    v58 = 0;
  }

  v59 = (a4 + v12[17]);
  *v59 = v56;
  v59[1] = v58;
}

uint64_t sub_1C45C13B4(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 120) = 0u;
  *(v3 + 104) = 0u;
  v7 = a1[3];
  if (!v7)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v17 = sub_1C4F00978();
    v18 = sub_1C43FEB44(v17, qword_1EDDFECB8);
    v19 = sub_1C4F01CC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = sub_1C43FCED0();
      sub_1C4402BFC(v20);
      sub_1C441F400(&dword_1C43F8000, v21, v19, "MessageData: cannot initialize base class: provided ExtractedAttributes object contains no uniqueIdentifier");
      sub_1C43FFD4C();
    }

    v22 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v22);
    (*(v23 + 8))(a3);
    sub_1C45C287C(a1);
    goto LABEL_14;
  }

  v8 = a1[1];
  *(v4 + 16) = a1[2];
  *(v4 + 24) = v7;
  if (!v8)
  {
    v24 = qword_1EDDFECB0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v24 != -1)
    {
      sub_1C43FFB88();
    }

    v25 = sub_1C4F00978();
    v26 = sub_1C43FEB44(v25, qword_1EDDFECB8);
    v27 = sub_1C4F01CC8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = sub_1C43FCED0();
      sub_1C4402BFC(v28);
      sub_1C441F400(&dword_1C43F8000, v29, v27, "MessageData: cannot instantiate base class: provided ExtractedAttributes object contains no conversationIdentifier");
      sub_1C43FFD4C();
    }

    v30 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v30);
    (*(v31 + 8))(a3);
    sub_1C45C287C(a1);
    v32 = *(v4 + 24);

LABEL_14:
    v33 = *(v4 + 112);

    v34 = *(v4 + 128);

    type metadata accessor for MessageData(0);
    sub_1C44057E8();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v4 + 32) = *a1;
  *(v4 + 40) = v8;
  v9 = a1[8];
  *(v4 + 48) = a1[7];
  *(v4 + 56) = v9;
  v10 = a1[10];
  *(v4 + 64) = a1[9];
  *(v4 + 72) = v10;
  *(v4 + 80) = a2;
  v11 = (a1 + *(type metadata accessor for ExtractedAttributes(0) + 68));
  v12 = *v11;
  v13 = v11[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45C287C(a1);
  *(v4 + 88) = v12;
  *(v4 + 96) = v13;
  v14 = OBJC_IVAR____TtC24IntelligencePlatformCore11MessageData_contentCreationDate;
  v15 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v15);
  (*(v16 + 32))(v4 + v14, a3);
  return v4;
}

uint64_t sub_1C45C16A0(void *a1)
{
  v3 = [a1 givenName];
  v4 = sub_1C4F01138();
  v6 = v5;

  v7 = v1[14];
  v1[13] = v4;
  v1[14] = v6;

  v8 = [a1 familyName];
  v9 = sub_1C4F01138();
  v11 = v10;

  v12 = v1[16];
  v1[15] = v9;
  v1[16] = v11;
}

char *sub_1C45C1748()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 6);

  v4 = *(v0 + 7);

  v5 = *(v0 + 8);

  v6 = *(v0 + 9);

  v7 = *(v0 + 12);

  v8 = *(v0 + 14);

  v9 = *(v0 + 16);

  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore11MessageData_contentCreationDate;
  v11 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v11);
  (*(v12 + 8))(&v0[v10]);
  return v0;
}

uint64_t sub_1C45C1828()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C45C18EC(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for ExtractedAttributes(0);
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v53 - v13;
  v15 = sub_1C4EF9CD8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4408644();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - v23;
  if (!*(a1 + 48))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v38 = sub_1C4F00978();
    v39 = sub_1C43FEB44(v38, qword_1EDDFECB8);
    v40 = sub_1C4F01CC8();
    if (!sub_1C43FD0E8(v40))
    {
      goto LABEL_18;
    }

    v43 = sub_1C43FCED0();
    *v43 = 0;
    v44 = "TextMessageData cannot be initialized: provided ExtractedAttributes object does not contain a contentTypeTree";
    goto LABEL_17;
  }

  v55 = a1;
  strcpy(v56, "public.message");
  v56[15] = -18;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4416D48();
  if (!sub_1C44CE068(sub_1C44CE790, v25, v26))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v45 = sub_1C4F00978();
    v39 = sub_1C43FEB44(v45, qword_1EDDFECB8);
    v46 = sub_1C4F01CC8();
    v47 = sub_1C43FD0E8(v46);
    a1 = v55;
    if (!v47)
    {
      goto LABEL_18;
    }

    v43 = sub_1C43FCED0();
    *v43 = 0;
    v44 = "TextMessageData cannot be initialized: provided ExtractedAttributes object is not a text message and cannot be initialized as a TextMessageData";
LABEL_17:
    sub_1C4410910(&dword_1C43F8000, v41, v42, v44);
    MEMORY[0x1C6942830](v43, -1, -1);
LABEL_18:

    sub_1C45C287C(a1);
LABEL_19:
    type metadata accessor for TextMessageData(0);
    sub_1C44057E8();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v27 = v55;
  v28 = *(v55 + 96);
  v29 = v55;
  v30 = (v3 + OBJC_IVAR____TtC24IntelligencePlatformCore15TextMessageData_contentSnippet);
  *v30 = *(v55 + 88);
  v30[1] = v28;
  v54 = v30;
  sub_1C4467FE0(v27 + *(v5 + 52), v14);
  if (sub_1C44157D4(v14, 1, v15) == 1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v14, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v31 = sub_1C4F00978();
    v32 = sub_1C43FEB44(v31, qword_1EDDFECB8);
    v33 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v33))
    {
      v34 = sub_1C43FCED0();
      *v34 = 0;
      sub_1C4410910(&dword_1C43F8000, v35, v36, "TextMessageData cannot be initialized: provided ExtractedAttributes object does not contain a contentCreationDate");
      MEMORY[0x1C6942830](v34, -1, -1);
    }

    sub_1C45C287C(v29);
    v37 = v54[1];

    goto LABEL_19;
  }

  (*(v18 + 32))(v24, v14, v15);
  sub_1C45C29C8(v29, v10);
  (*(v18 + 16))(v2, v24, v15);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v51 = sub_1C45C13B4(v10, 0, v2);
  (*(v18 + 8))(v24, v15);

  sub_1C45C287C(v29);
  if (v51)
  {
  }

  return v51;
}

BOOL sub_1C45C1D80()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15TextMessageData_contentSnippet + 8);
  if (!v1)
  {
    return 1;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15TextMessageData_contentSnippet) & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

uint64_t sub_1C45C1DD0()
{
  sub_1C45C1748();
  sub_1C440DE48(OBJC_IVAR____TtC24IntelligencePlatformCore15TextMessageData_contentSnippet);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C45C1EA0()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000002CLL, 0x80000001C4F8B790);
  MEMORY[0x1C6940010](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C6940010](0xD00000000000001CLL, 0x80000001C4F8B7C0);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_relatedMessageUniqueIdentifier);
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_relatedMessageUniqueIdentifier + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  v1 = sub_1C4F01198();
  MEMORY[0x1C6940010](v1);

  MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4F8B7E0);
  sub_1C4EF9CD8();
  sub_1C45C2A2C();
  v2 = sub_1C4F02858();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C45C1FF4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v71 = a2;
  v6 = type metadata accessor for ExtractedAttributes(0);
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v67 - v14;
  v16 = sub_1C4EF9CD8();
  v17 = sub_1C43FCDF8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4408644();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v67 - v23;
  v25 = v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult;
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  v26 = v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult;
  *(v26 + 32) = 0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  if (!*(a1 + 48))
  {
    v34 = a1;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v35 = sub_1C4F00978();
    v36 = sub_1C43FEB44(v35, qword_1EDDFECB8);
    v37 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v37))
    {
      v38 = sub_1C43FCED0();
      sub_1C4402BFC(v38);
      sub_1C441F400(&dword_1C43F8000, v39, v11, "ImageMessageData cannot be initialized: provided ExtractedAttributes object does not contain a contentTypeTree");
      sub_1C43FFD4C();
    }

    sub_1C45C287C(v71);
    v40 = v34;
    goto LABEL_15;
  }

  v68 = v22;
  v69 = v11;
  v70 = a1;
  strcpy(v72, "public.image");
  HIBYTE(v72[6]) = 0;
  v72[7] = -5120;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4416D48();
  if (!sub_1C44CE068(sub_1C4579E44, v27, v28))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v41 = sub_1C4F00978();
    v42 = sub_1C43FEB44(v41, qword_1EDDFECB8);
    v43 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v43))
    {
      v44 = sub_1C43FCED0();
      sub_1C4402BFC(v44);
      sub_1C441F400(&dword_1C43F8000, v45, OS_LOG_TYPE_DEFAULT, "ImageMessageData cannot be initialized: provided ExtractedAttributes object is not an image message");
      sub_1C43FFD4C();
    }

    sub_1C45C287C(v71);
    v40 = v70;
LABEL_15:
    sub_1C45C287C(v40);
LABEL_16:
    v46 = *(v25 + 8);

    v47 = *(v26 + 16);
    v48 = *(v26 + 24);
    v49 = *(v26 + 32);
    sub_1C45BBFB4(*v26, *(v26 + 8));
    type metadata accessor for ImageMessageData(0);
    sub_1C44057E8();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v29 = v70;
  v30 = (v70 + v6[14]);
  v31 = v30[1];
  if (v31)
  {
    v32 = *v30;
    v33 = v31;
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  v55 = v71;
  v56 = (v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_relatedMessageUniqueIdentifier);
  *v56 = v32;
  v56[1] = v33;
  v67 = v56;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_imageEligibleForPhotosProcessing) = *(v29 + v6[15]) & 1;
  sub_1C4467FE0(v55 + v6[13], v15);
  if (sub_1C44157D4(v15, 1, v16) == 1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v57 = sub_1C4F00978();
    v58 = sub_1C43FEB44(v57, qword_1EDDFECB8);
    v59 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v59))
    {
      v60 = sub_1C43FCED0();
      sub_1C4402BFC(v60);
      sub_1C441F400(&dword_1C43F8000, v61, v31, "ImageMessageData cannot be initialized: provided ExtractedAttributes object contains an image, but does not contain a content creation date");
      sub_1C43FFD4C();
    }

    sub_1C45C287C(v71);
    sub_1C45C287C(v70);
    v62 = v67[1];

    goto LABEL_16;
  }

  v63 = v68;
  (*(v68 + 32))(v24, v15, v16);
  v64 = *(v29 + v6[16]);
  v65 = MEMORY[0x1E69E7CC0];
  if (v64)
  {
    v65 = v64;
  }

  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_attachmentNames) = v65;
  v66 = v69;
  sub_1C45C29C8(v29, v69);
  (*(v63 + 16))(v3, v24, v16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v53 = sub_1C45C13B4(v66, 1, v3);
  sub_1C45C287C(v71);
  (*(v63 + 8))(v24, v16);

  sub_1C45C287C(v29);
  if (v53)
  {
  }

  return v53;
}

uint64_t sub_1C45C254C()
{
  sub_1C440DE48(OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_relatedMessageUniqueIdentifier);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_attachmentNames);

  sub_1C440DE48(OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult);
  v2 = sub_1C440F28C(OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult);

  return sub_1C45BBFB4(v2, v3);
}

uint64_t sub_1C45C25A4()
{
  sub_1C45C1748();
  sub_1C440DE48(OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_relatedMessageUniqueIdentifier);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_attachmentNames);

  sub_1C440DE48(OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult);
  v2 = sub_1C440F28C(OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult);
  sub_1C45BBFB4(v2, v3);
  return v0;
}

uint64_t sub_1C45C2610(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for MessageContentType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45C27E4()
{
  result = qword_1EC0B98D8;
  if (!qword_1EC0B98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98D8);
  }

  return result;
}

uint64_t sub_1C45C287C(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C45C28F0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C4F01138();

  return v4;
}

uint64_t sub_1C45C2968(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C4F01678();

  return v4;
}

uint64_t sub_1C45C29C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C45C2A2C()
{
  result = qword_1EDDFCD50;
  if (!qword_1EDDFCD50)
  {
    sub_1C4EF9CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCD50);
  }

  return result;
}

uint64_t sub_1C45C2AAC()
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C45C2BC8();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1C45C2C2C();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCC6C(319, &qword_1EDDFEA48);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1C45C2BC8()
{
  if (!qword_1EDDFEA50)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFEA50);
    }
  }
}

void sub_1C45C2C2C()
{
  if (!qword_1EDDFF9E0)
  {
    sub_1C4EF9CD8();
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFF9E0);
    }
  }
}

uint64_t sub_1C45C2C84()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
  }

  else
  {
    v1 = sub_1C45C32CC();
    v3 = *(v0 + 32);
    *(v0 + 24) = v1;
    *(v0 + 32) = v4;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void sub_1C45C2CF0(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v6 = sub_1C4F01188();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C45C31DC(123, 0xE100000000000000, 125, 0xE100000000000000, a1, a2);
  if (!v16)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();

    if (!os_log_type_enabled(v22, v28))
    {
      goto LABEL_14;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v43[0] = v30;
    *v29 = 136642819;
    v31 = sub_1C43FE99C();
    *(v29 + 4) = sub_1C441D828(v31, v32, v33);
    _os_log_impl(&dword_1C43F8000, v22, v28, "Unable to convert output from Autonaming from Messages LLM: %{sensitive}s to AutonamingMessagesInferenceOutput, as pre-processing the string to remove all character before and after { } failed", v29, 0xCu);
    sub_1C440962C(v30);
    sub_1C43FBE2C();
    goto LABEL_11;
  }

  v17 = v15;
  v18 = v16;
  sub_1C4F01178();
  sub_1C4F01148();
  v20 = v19;
  (*(v9 + 8))(v14, v6);
  if (v20 >> 60 == 15)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v21 = sub_1C4F00978();
    sub_1C442B738(v21, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CD8();

    if (!os_log_type_enabled(v22, v23))
    {

      goto LABEL_14;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v43[0] = v25;
    *v24 = 136315138;
    v26 = sub_1C441D828(v17, v18, v43);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_1C43F8000, v22, v23, "Unable to convert output from Autonaming from Messages LLM: %s to AutonamingMessagesInferenceOutput: Unable to convert output from a string to data", v24, 0xCu);
    sub_1C440962C(v25);
    sub_1C43FBE2C();
LABEL_11:
    sub_1C43FBE2C();
LABEL_14:

    v39 = xmmword_1C4F0D7C0;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    goto LABEL_15;
  }

  v34 = sub_1C4EF9348();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1C4EF9338();
  sub_1C45C6018();
  sub_1C4EF9328();

  v37 = sub_1C43FE99C();
  sub_1C441DFEC(v37, v38);
  v39 = v43[0];
  v40 = v43[1];
  v41 = v43[2];
  v42 = v43[3];
LABEL_15:
  *a3 = v39;
  a3[1] = v40;
  a3[2] = v41;
  a3[3] = v42;
}

unint64_t sub_1C45C31DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = sub_1C44CFDB0(a1, a2, a5, a6);
  v12 = v11;
  v18[0] = a3;
  v18[1] = a4;
  v17[2] = v18;
  result = sub_1C45C606C(sub_1C44CE790, v17, a5, a6);
  if (v12 & 1) != 0 || (v14)
  {
    return 0;
  }

  if (result >> 14 >= v10 >> 14)
  {
    sub_1C4F012B8();
    v16 = sub_1C4F01448();
    v15 = MEMORY[0x1C693FEF0](v16);

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45C32CC()
{
  v0 = sub_1C4EFC0F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0B98E8, &qword_1C4F103A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  sub_1C4EFC0C8();
  v10 = v23[4];
  sub_1C4409678(v23, v23[3]);
  v11 = *(v10 + 8);
  sub_1C4EFC108();
  sub_1C4EFC0D8();
  (*(v6 + 8))(v9, v5);
  v12 = sub_1C4EFC0E8();
  v14 = v13;
  (*(v1 + 8))(v4, v0);
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1C4F00978();
  sub_1C442B738(v15, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CC8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1C441D828(v12, v14, &v22);
    _os_log_impl(&dword_1C43F8000, v16, v17, "assetVersionNumber is: %s", v18, 0xCu);
    sub_1C440962C(v19);
    MEMORY[0x1C6942830](v19, -1, -1);
    MEMORY[0x1C6942830](v18, -1, -1);
  }

  sub_1C440962C(v23);
  return v12;
}

void *sub_1C45C36EC()
{
  v1 = v0;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 100;
  v2 = sub_1C4F00F28();
  v3 = type metadata accessor for AutonamingMessagesModelHandler._ClientInfo();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v1[5] = sub_1C45C5680(0xD000000000000021, 0x80000001C4F85570, 0, 1, v2);
  return v1;
}

uint64_t sub_1C45C3790()
{
  v0 = sub_1C4EFC668();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4EFC698();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C4EFC648();
  v19 = sub_1C43FCDF8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v38 - v27;
  sub_1C4EFC658();
  sub_1C4EFC688();
  (*(v3 + 8))(v8, v0);
  sub_1C4EFC678();
  (*(v12 + 8))(v17, v9);
  (*(v21 + 104))(v26, *MEMORY[0x1E69A11A0], v18);
  v29 = sub_1C4EFC638();
  v30 = *(v21 + 8);
  v30(v26, v18);
  if (v29)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v31 = sub_1C4F00978();
    sub_1C442B738(v31, qword_1EDDFECB8);
    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CC8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "GenerativeModels for memoryCreation.AutonamingMessages is available.";
LABEL_10:
      _os_log_impl(&dword_1C43F8000, v32, v33, v35, v34, 2u);
      sub_1C43FBE2C();
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v36 = sub_1C4F00978();
    sub_1C442B738(v36, qword_1EDDFECB8);
    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CC8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "GenerativeModels for memoryCreation.AutonamingMessages is unavailable.";
      goto LABEL_10;
    }
  }

  v30(v28, v18);
  return v29 & 1;
}

uint64_t sub_1C45C3AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a3;
  v4[36] = a4;
  v4[33] = a1;
  v4[34] = a2;
  v5 = *(*(sub_1C456902C(&qword_1EC0B9900, &qword_1C4F103C0) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0B9908, &qword_1C4F103C8);
  v4[38] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v8 = sub_1C4EFCC48();
  v4[40] = v8;
  v9 = *(v8 - 8);
  v4[41] = v9;
  v10 = *(v9 + 64) + 15;
  v4[42] = swift_task_alloc();
  v11 = sub_1C4EFCC58();
  v4[43] = v11;
  v12 = *(v11 - 8);
  v4[44] = v12;
  v13 = *(v12 + 64) + 15;
  v4[45] = swift_task_alloc();
  v14 = *(*(sub_1C456902C(&qword_1EC0B9910, &qword_1C4F103D0) - 8) + 64) + 15;
  v4[46] = swift_task_alloc();
  v15 = sub_1C4F00888();
  v4[47] = v15;
  v16 = *(v15 - 8);
  v4[48] = v16;
  v17 = *(v16 + 64) + 15;
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v18 = sub_1C4EFC768();
  v4[51] = v18;
  v19 = *(v18 - 8);
  v4[52] = v19;
  v20 = *(v19 + 64) + 15;
  v4[53] = swift_task_alloc();
  v21 = *(*(sub_1C4EF9E48() - 8) + 64) + 15;
  v4[54] = swift_task_alloc();
  v22 = *(*(sub_1C4EFC728() - 8) + 64) + 15;
  v4[55] = swift_task_alloc();
  v23 = *(*(sub_1C4EFC6B8() - 8) + 64) + 15;
  v4[56] = swift_task_alloc();
  v24 = sub_1C4EFC6D8();
  v4[57] = v24;
  v25 = *(v24 - 8);
  v4[58] = v25;
  v26 = *(v25 + 64) + 15;
  v4[59] = swift_task_alloc();
  v27 = *(*(sub_1C456902C(&qword_1EC0B9918, &qword_1C4F103D8) - 8) + 64) + 15;
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v28 = sub_1C456902C(&qword_1EC0B9920, &qword_1C4F103E0);
  v4[62] = v28;
  v29 = *(v28 - 8);
  v4[63] = v29;
  v30 = *(v29 + 64) + 15;
  v4[64] = swift_task_alloc();
  v31 = sub_1C4F00DE8();
  v4[65] = v31;
  v32 = *(v31 - 8);
  v4[66] = v32;
  v33 = *(v32 + 64) + 15;
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C45C3FA0, 0, 0);
}

uint64_t sub_1C45C3FA0()
{
  v38 = *(v0 + 568);
  v34 = *(v0 + 560);
  v1 = *(v0 + 536);
  v24 = *(v0 + 544);
  v25 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v23 = *(v0 + 496);
  v6 = *(v0 + 480);
  v30 = *(v0 + 464);
  v31 = *(v0 + 552);
  v32 = *(v0 + 456);
  v28 = *(v0 + 448);
  v29 = *(v0 + 472);
  v26 = *(v0 + 432);
  v27 = *(v0 + 440);
  v35 = *(v0 + 416);
  v36 = *(v0 + 408);
  v37 = *(v0 + 424);
  v40 = *(v0 + 400);
  v39 = *(v0 + 368);
  v7 = *(v0 + 280);
  v33 = *(v0 + 288);
  v8 = *(v0 + 272);
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_1C4F00DF8();

  v10 = sub_1C4EFC5A8();
  *(v0 + 576) = v10;
  sub_1C440BAA8(v5, 1, 1, v10);
  sub_1C45C618C(v5, v6);
  sub_1C442C404(v6);
  sub_1C4EFC5D8();
  sub_1C4EFC5B8();
  sub_1C4EFC5C8();
  sub_1C4423A0C(v5, &qword_1EC0B9918, &qword_1C4F103D8);
  *(v0 + 696) = *MEMORY[0x1E69A1370];
  v11 = *(v3 + 104);
  *(v0 + 584) = v11;
  *(v0 + 592) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v4);
  *(v0 + 600) = sub_1C45C61FC(&qword_1EC0B9928, MEMORY[0x1E69C61B8]);
  sub_1C4431F14();
  sub_1C4F00E68();
  v12 = *(v3 + 8);
  *(v0 + 608) = v12;
  *(v0 + 616) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v4, v23);
  v13 = *(v25 + 8);
  *(v0 + 624) = v13;
  *(v0 + 632) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v1, v2);
  sub_1C4EF9D48();
  *(v0 + 640) = sub_1C456902C(&qword_1EC0B9930, &qword_1C4F103E8);
  v14 = *(sub_1C4EFC718() - 8);
  *(v0 + 648) = *(v14 + 72);
  *(v0 + 700) = *(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0CE60;
  sub_1C4EFC6F8();
  sub_1C4EFC708();
  sub_1C4EFC6E8();
  sub_1C4EFC6A8();
  sub_1C4EFC6C8();
  sub_1C4431F14();
  sub_1C4F00E58();
  v15 = *(v30 + 8);
  *(v0 + 656) = v15;
  *(v0 + 664) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v29, v32);
  v13(v24, v2);
  sub_1C4F00F28();
  sub_1C4431F14();
  sub_1C4F00E48();

  v13(v31, v2);
  v16 = *(v33 + 40);
  *(v0 + 672) = v16;
  v17 = OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v35 + 16))(v37, v16 + v17, v36);
  sub_1C4431F14();
  sub_1C4F00E78();
  (*(v35 + 8))(v37, v36);
  v13(v34, v2);
  v18 = sub_1C4F00878();
  sub_1C440BAA8(v39, 1, 1, v18);
  sub_1C4F00868();
  v19 = *(MEMORY[0x1E69A1358] + 4);
  v20 = swift_task_alloc();
  *(v0 + 680) = v20;
  *v20 = v0;
  v20[1] = sub_1C45C4524;
  v21 = *(v0 + 296);

  return MEMORY[0x1EEE0B308](v21, 0xD00000000000001CLL, 0x80000001C4F8B950);
}

uint64_t sub_1C45C4524()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 680);
  v7 = *v1;
  sub_1C43FBE64();
  *v8 = v7;
  *(v9 + 688) = v0;

  if (v0)
  {
    v10 = sub_1C45C4DCC;
  }

  else
  {
    v10 = sub_1C45C4630;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1C45C4630()
{
  v1 = *(v0 + 296);
  v2 = sub_1C456902C(&qword_1EC0B9938, &qword_1C4F103F0);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    sub_1C4423A0C(v1, &qword_1EC0B9900, &qword_1C4F103C0);
  }

  else
  {
    v46 = *(v0 + 664);
    v44 = *(v0 + 656);
    v36 = *(v0 + 640);
    v73 = *(v0 + 624);
    v75 = *(v0 + 632);
    v61 = *(v0 + 608);
    v63 = *(v0 + 616);
    v55 = *(v0 + 584);
    v57 = *(v0 + 592);
    v53 = *(v0 + 696);
    v42 = *(v0 + 576);
    v65 = *(v0 + 560);
    v67 = *(v0 + 568);
    v69 = *(v0 + 520);
    v71 = *(v0 + 528);
    v48 = *(v0 + 512);
    v50 = *(v0 + 496);
    v40 = *(v0 + 488);
    v41 = *(v0 + 480);
    v38 = *(v0 + 472);
    v39 = *(v0 + 456);
    v37 = *(v0 + 448);
    v35 = *(v0 + 440);
    v34 = *(v0 + 432);
    v29 = *(v0 + 392);
    v30 = *(v0 + 400);
    v26 = *(v2 + 48);
    v3 = *(v0 + 384);
    v28 = *(v0 + 376);
    v79 = *(v0 + 360);
    v59 = *(v0 + 352);
    v4 = *(v0 + 344);
    v27 = *(v0 + 336);
    v5 = *(v0 + 328);
    v77 = *(v0 + 320);
    v6 = *(v0 + 304);
    v7 = *(v0 + 312);
    v31 = *(v0 + 272);
    v32 = *(v0 + 280);
    v33 = ((*(v0 + 700) + 32) & ~*(v0 + 700)) + 2 * *(v0 + 648);
    v8 = *(v6 + 48);
    v9 = *(v59 + 32);
    v9(v7, v1, v4);
    v10 = v1;
    v11 = *(v5 + 32);
    v11(v7 + v8, v10 + v26, v77);
    v12 = *(v6 + 48);
    v9(v79, v7, v4);
    v11(v27, v7 + v12, v77);
    sub_1C4EFCC38();
    (*(v3 + 8))(v30, v28);
    (*(v3 + 32))(v30, v29, v28);
    sub_1C456902C(&qword_1EC0B9940, &qword_1C4F103F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0x74706D6F7270;
    *(inited + 40) = 0xE600000000000000;
    v14 = MEMORY[0x1E69C6560];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 80) = v14;
    *(inited + 48) = v31;
    *(inited + 56) = v32;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0B9948, &unk_1C4F10400);
    sub_1C4F00F28();
    sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1C4F0CE60;
    *(v15 + 32) = 0xD0000000000000D5;
    *(v15 + 40) = 0x80000001C4F8B970;
    sub_1C4EF9D48();
    *(swift_allocObject() + 16) = xmmword_1C4F0CE60;
    sub_1C4EFC6F8();
    sub_1C4EFC708();
    sub_1C4EFC6E8();
    sub_1C4EFC6A8();
    sub_1C4EFC6C8();
    *(v15 + 72) = v39;
    sub_1C4422F90((v15 + 48));
    sub_1C4EFC738();
    v44(v38, v39);
    *(v15 + 80) = 0xD000000000000060;
    *(v15 + 88) = 0x80000001C4F8BA50;
    sub_1C440BAA8(v40, 1, 1, v42);
    sub_1C45C618C(v40, v41);
    sub_1C442C404(v41);
    sub_1C4EFC5D8();
    sub_1C4EFC5B8();
    sub_1C4EFC5C8();
    sub_1C4423A0C(v40, &qword_1EC0B9918, &qword_1C4F103D8);
    v55(v48, v53, v50);
    *(v15 + 120) = sub_1C4EFC5F8();
    sub_1C4422F90((v15 + 96));
    sub_1C4EFC748();
    v61(v48, v50);
    sub_1C4F00F28();
    sub_1C4EFCC28();

    (*(v5 + 8))(v27, v77);
    (*(v59 + 8))(v79, v4);
    v73(v67, v69);
    (*(v71 + 32))(v67, v65, v69);
  }

  v16 = *(v0 + 672);
  v47 = *(v0 + 632);
  v45 = *(v0 + 624);
  v17 = *(v0 + 600);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v49 = *(v0 + 552);
  v51 = *(v0 + 544);
  v20 = *(v0 + 520);
  v52 = *(v0 + 536);
  v54 = *(v0 + 512);
  v56 = *(v0 + 488);
  v58 = *(v0 + 480);
  v60 = *(v0 + 472);
  v62 = *(v0 + 448);
  v64 = *(v0 + 440);
  v66 = *(v0 + 432);
  v21 = *(v0 + 400);
  v68 = *(v0 + 424);
  v70 = *(v0 + 392);
  v22 = *(v0 + 384);
  v43 = *(v0 + 376);
  v72 = *(v0 + 368);
  v74 = *(v0 + 360);
  v76 = *(v0 + 336);
  v78 = *(v0 + 312);
  v80 = *(v0 + 296);
  v23 = *(v0 + 264);
  sub_1C4F00E38();
  *(v0 + 256) = *(v16 + OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo__model);
  sub_1C4EFC578();
  sub_1C4F00E88();
  v45(v19, v20);
  (*(v22 + 8))(v21, v43);
  v45(v18, v20);

  sub_1C43FBDA0();

  return v24();
}

uint64_t sub_1C45C4DCC()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[65];
  v12 = v0[64];
  v13 = v0[61];
  v14 = v0[60];
  v15 = v0[59];
  v16 = v0[56];
  v17 = v0[55];
  v18 = v0[54];
  v19 = v0[53];
  v20 = v0[49];
  v21 = v0[46];
  v22 = v0[45];
  v23 = v0[42];
  v24 = v0[39];
  v25 = v0[37];
  (*(v0[48] + 8))(v0[50], v0[47]);
  v2(v3, v8);

  sub_1C43FBDA0();
  v10 = v0[86];

  return v9();
}

uint64_t sub_1C45C4F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4F00E28();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = MEMORY[0x1E69E6158];
  v16[4] = MEMORY[0x1E69C6560];
  v16[0] = a1;
  v16[1] = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = MEMORY[0x1E69C6388];
  sub_1C4F00E18();
  sub_1C440962C(v16);
  sub_1C456902C(&qword_1EC0B9950, &qword_1C4F10410);
  v11 = *(v5 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0D130;
  (*(v6 + 16))(v13 + v12, v9, v4);
  MEMORY[0x1C693FAF0](v13, v4, v10);

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C45C513C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C456902C(&qword_1EC0B98F0, &qword_1C4F103B0);
  v3[2] = v6;
  v7 = *(v6 - 8);
  v3[3] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[4] = v9;
  v10 = swift_task_alloc();
  v3[5] = v10;
  *v10 = v3;
  v10[1] = sub_1C45C5258;

  return sub_1C45C3AF8(v9, a1, a2, v2);
}

uint64_t sub_1C45C5258()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_1C43FBE64();
  *v7 = v6;
  v2[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C45C55C0, 0, 0);
  }

  else
  {
    v8 = *(MEMORY[0x1E69A0830] + 4);
    v9 = swift_task_alloc();
    v2[7] = v9;
    v10 = sub_1C45C61FC(&qword_1EC0B98F8, MEMORY[0x1E69DA470]);
    *v9 = v6;
    v9[1] = sub_1C45C540C;
    v11 = v2[4];
    v12 = v2[2];

    return MEMORY[0x1EEE0A360](v12, v10);
  }
}

uint64_t sub_1C45C540C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_1C43FBE64();
  *v8 = v7;
  v9 = v6[7];
  v10 = *v3;
  *v8 = *v3;
  *(v7 + 64) = v2;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C45C5620, 0, 0);
  }

  else
  {

    v11 = v10[1];

    return v11(a1, a2);
  }
}

uint64_t sub_1C45C55C0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C45C5620()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  sub_1C43FBDA0();

  return v3();
}

unsigned __int8 *sub_1C45C5680(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v52[3] = a4;
  v53 = a3;
  v10 = sub_1C4EFC598();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1C4EFC628();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1C456902C(&qword_1EC0B9958, &qword_1C4F10418);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = sub_1C4EFC768();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F00F28();
  sub_1C4EFC758();
  (*(v17 + 32))(v6 + OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo_trackingConfig, v20, v16);
  v21 = sub_1C44735D4(0xD000000000000015, 0x80000001C4F8BAC0, a5);
  v23 = v22;

  if (!v23)
  {
    goto LABEL_65;
  }

  v25 = HIBYTE(v23) & 0xF;
  v26 = v21 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v27 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
LABEL_64:

LABEL_65:
    sub_1C4EFC578();
    sub_1C4EFC0B8();
    sub_1C4EFC588();
    sub_1C4EFC618();
    *(v6 + OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo__model) = sub_1C4EFC568();
    return v6;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    sub_1C4AA1330(v21, v23, 10);
    goto LABEL_64;
  }

  if ((v23 & 0x2000000000000000) == 0)
  {
    if ((v21 & 0x1000000000000000) != 0)
    {
      result = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1C4F022F8();
    }

    v28 = *result;
    if (v28 == 43)
    {
      if (v26 >= 1)
      {
        v25 = v26 - 1;
        if (v26 != 1)
        {
          v37 = 0;
          if (result)
          {
            v38 = result + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                goto LABEL_62;
              }

              v40 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                goto LABEL_62;
              }

              v37 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_62;
              }

              ++v38;
              if (!--v25)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_54;
        }

        goto LABEL_62;
      }

      goto LABEL_70;
    }

    if (v28 != 45)
    {
      if (v26)
      {
        v45 = 0;
        if (result)
        {
          while (1)
          {
            v46 = *result - 48;
            if (v46 > 9)
            {
              goto LABEL_62;
            }

            v47 = 10 * v45;
            if ((v45 * 10) >> 64 != (10 * v45) >> 63)
            {
              goto LABEL_62;
            }

            v45 = v47 + v46;
            if (__OFADD__(v47, v46))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v26)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_54;
      }

LABEL_62:
      LOBYTE(v25) = 1;
      goto LABEL_63;
    }

    if (v26 >= 1)
    {
      v25 = v26 - 1;
      if (v26 != 1)
      {
        v29 = 0;
        if (result)
        {
          v30 = result + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_62;
            }

            v32 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_62;
            }

            v29 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              goto LABEL_62;
            }

            ++v30;
            if (!--v25)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v25) = 0;
LABEL_63:
        v55 = v25;
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v54[0] = v21;
  v54[1] = v23 & 0xFFFFFFFFFFFFFFLL;
  if (v21 != 43)
  {
    if (v21 != 45)
    {
      if (v25)
      {
        v48 = 0;
        v49 = v54;
        while (1)
        {
          v50 = *v49 - 48;
          if (v50 > 9)
          {
            break;
          }

          v51 = 10 * v48;
          if ((v48 * 10) >> 64 != (10 * v48) >> 63)
          {
            break;
          }

          v48 = v51 + v50;
          if (__OFADD__(v51, v50))
          {
            break;
          }

          ++v49;
          if (!--v25)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v25)
    {
      if (--v25)
      {
        v33 = 0;
        v34 = v54 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            break;
          }

          v33 = v36 - v35;
          if (__OFSUB__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v25)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_69;
  }

  if (v25)
  {
    if (--v25)
    {
      v41 = 0;
      v42 = v54 + 1;
      while (1)
      {
        v43 = *v42 - 48;
        if (v43 > 9)
        {
          break;
        }

        v44 = 10 * v41;
        if ((v41 * 10) >> 64 != (10 * v41) >> 63)
        {
          break;
        }

        v41 = v44 + v43;
        if (__OFADD__(v44, v43))
        {
          break;
        }

        ++v42;
        if (!--v25)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_1C45C5C14()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo_trackingConfig;
  v3 = sub_1C4EFC768();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo__model);

  return v0;
}

uint64_t sub_1C45C5C8C()
{
  v0 = *sub_1C45C5C14();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C45C5CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_1C4EFC768();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1C45C5D6C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC24IntelligencePlatformCore30AutonamingMessagesModelHandlerP33_5C69D6992B7848D3362C30A8BA7041BC11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_1C4EFC768();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t (*sub_1C45C5E00())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C45C5E78()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1C45C5EA0()
{
  sub_1C45C5E78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AutonamingMessagesModelHandler._ClientInfo()
{
  result = qword_1EDDDF4B0;
  if (!qword_1EDDDF4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C45C5F4C()
{
  result = sub_1C4EFC768();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C45C6018()
{
  result = qword_1EC0B98E0;
  if (!qword_1EC0B98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B98E0);
  }

  return result;
}

unint64_t sub_1C45C606C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_1C4F012C8();
    v13[0] = sub_1C4F01428();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_1C45C618C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9918, &qword_1C4F103D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45C61FC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C45C6244()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_opt_self() service];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1C45C62B8(void *a1)
{
  v2 = v1;
  *(v2 + 24) = xmmword_1C4F10420;
  type metadata accessor for AutonamingMessagesSpotlightQuerier();
  swift_allocObject();
  *(v2 + 16) = sub_1C45C84B0(a1);
  return v2;
}

uint64_t sub_1C45C6314()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 136);
  *(v1 + 136) = 0;
}

unint64_t sub_1C45C6324(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v23[2] = a2;
  v4 = sub_1C4C62B0C(sub_1C45C837C, v23, a1);
  if (v5)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v8))
    {
      *sub_1C43FCED0() = 0;
      sub_1C440A62C(&dword_1C43F8000, v9, v10, "Unable to clip context messages as centerMessage index wasn't found. Returning contextMessages unclipped");
      sub_1C43FBE2C();
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return v3;
  }

  v11 = v4;
  if (__OFSUB__(0, v4))
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((9 - v4) >= 0xA)
  {
    v12 = v4 - 10;
    if (__OFSUB__(v4, 10))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1C4428DA0();
  if (__OFSUB__(v13, v11))
  {
    goto LABEL_27;
  }

  v2 = v13;
  if ((v13 - v11) >= 9)
  {
    v2 = v11 + 9;
    if (__OFADD__(v11, 9))
    {
      goto LABEL_39;
    }
  }

  if (v2 < v12)
  {
    goto LABEL_28;
  }

  sub_1C4C5ACB0(v12, v3);
  sub_1C4C5ACB0(v2, v3);
  if ((v3 & 0xC000000000000001) == 0 || v12 == v2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    if (v12 >= v2)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v11 = type metadata accessor for TextMessageData(0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = v12;
    do
    {
      v15 = v14 + 1;
      sub_1C4F02288();
      v14 = v15;
    }

    while (v2 != v15);
  }

  if (v3 >> 62)
  {
LABEL_29:

    v11 = sub_1C4F02528();
    v3 = v17;
    v12 = v18;
    v2 = v19;
    if ((v19 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v11 = v3 & 0xFFFFFFFFFFFFFF8;
  v3 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v2 = (2 * v2) | 1;
  if ((v2 & 1) == 0)
  {
LABEL_25:
    sub_1C4618664(v11, v3, v12, v2);
    v3 = v16;
    swift_unknownObjectRelease();
    return v3;
  }

LABEL_30:
  sub_1C4F02998();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v2 >> 1, v12))
  {
    goto LABEL_41;
  }

  if (v21 != (v2 >> 1) - v12)
  {
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v3 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v3)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

BOOL sub_1C45C65EC(uint64_t *a1)
{
  v1 = *a1;
  sub_1C4EF9CD8();
  sub_1C4575ED0();
  return (sub_1C4F01068() & 1) == 0;
}

void sub_1C45C6664(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = &unk_1C4F0C000;
  if (!a3)
  {
    sub_1C441F41C();
    if (!v20)
    {
      sub_1C43FFB88();
    }

    v43 = sub_1C4F00978();
    sub_1C4406678(v43, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v44 = sub_1C4F00968();
    v45 = sub_1C4F01CD8();

    if (!sub_1C442FAFC())
    {
      goto LABEL_37;
    }

    sub_1C43FD084();
    v7 = sub_1C4402BBC();
    v81 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C441D828(a1, a2, &v81);
    v47 = "MAD person identification request on image with identifier %s failed";
LABEL_24:
    sub_1C440A610(&dword_1C43F8000, v46, v45, v47);
    sub_1C440962C(v7);
    sub_1C43FFD18();
LABEL_36:
    sub_1C43FBE2C();
LABEL_37:

    goto LABEL_38;
  }

  v6 = a3;
  if (sub_1C4428DA0() != 1)
  {
    sub_1C441F41C();
    if (!v20)
    {
      sub_1C43FFB88();
    }

    v48 = sub_1C4F00978();
    sub_1C4406678(v48, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v44 = sub_1C4F00968();
    v49 = sub_1C4F01CC8();

    if (sub_1C442FAFC())
    {
      v7 = swift_slowAlloc();
      v12 = sub_1C43FFD34();
      v81 = v12;
      *v7 = 136315394;
      *(v7 + 4) = sub_1C441D828(a1, a2, &v81);
      *(v7 + 6) = 2048;
      *(v7 + 14) = sub_1C4428DA0();

      v50 = "Performed MAD personIdentificationRequest request on image with image identifier %s and received result of length (%ld). No person identifier in image, returning nil.";
      v51 = v49;
LABEL_29:
      _os_log_impl(&dword_1C43F8000, v44, v51, v50, v7, 0x16u);
      sub_1C440962C(v12);
      sub_1C43FBE2C();
      goto LABEL_36;
    }

LABEL_31:

LABEL_38:
    v56 = 0;
    v57 = 0;
    sub_1C43FEB6C();
    v58 = 0;
    goto LABEL_39;
  }

  if (!sub_1C4428DA0())
  {
    sub_1C441F41C();
    if (!v20)
    {
      sub_1C43FFB88();
    }

    v52 = sub_1C4F00978();
    sub_1C442B738(v52, qword_1EDDFECB8);
    v44 = sub_1C4F00968();
    v53 = sub_1C4F01CC8();
    if (!sub_1C43FD0E8(v53))
    {
      goto LABEL_37;
    }

    *sub_1C43FCED0() = 0;
    sub_1C440A62C(&dword_1C43F8000, v54, v55, "AutonamingMessages only supports inference on images with 1 person identified them. Returning nil.");
    goto LABEL_36;
  }

  v14 = sub_1C44330F0();
  sub_1C4431590(v14, v15);
  if (v5)
  {
    v16 = MEMORY[0x1C6940F90](0, v6);
  }

  else
  {
    v16 = *(v6 + 32);
  }

  v7 = v16;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    sub_1C441F41C();
    if (!v20)
    {
      sub_1C43FFB88();
    }

    v59 = sub_1C4F00978();
    sub_1C442B738(v59, qword_1EDDFECB8);
    v60 = sub_1C4F00968();
    v61 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v61))
    {
      *sub_1C43FCED0() = 0;
      sub_1C440A62C(&dword_1C43F8000, v62, v63, "Unable to cast identification result to MADPersonIdentificationResult. Returning nil.");
      sub_1C43FBE2C();
    }

    goto LABEL_38;
  }

  v6 = v17;
  v7 = v7;
  v8 = &off_1E81F1000;
  v18 = [v6 resultItems];
  sub_1C4461BB8(0, &unk_1EC0B9960, 0x1E69AE380);
  v12 = sub_1C4F01678();

  v19 = sub_1C4428DA0();

  v80 = a1;
  if (v19 != 1)
  {

    sub_1C43FEB6C();
    if (a4)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

  sub_1C441F41C();
  if (!v20)
  {
    sub_1C43FFB88();
  }

  v21 = sub_1C4F00978();
  sub_1C4406678(v21, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CB8();

  log = v7;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = a1;
    v25 = sub_1C43FD084();
    v26 = sub_1C43FFD34();
    v81 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1C441D828(v24, a2, &v81);
    _os_log_impl(&dword_1C43F8000, v22, v23, "Found 1 person observation in the image with identifier %s", v25, 0xCu);
    sub_1C440962C(v26);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v27 = [v6 resultItems];
  v28 = sub_1C4F01678();

  v29 = sub_1C44330F0();
  sub_1C4431590(v29, v30);
  if (v27)
  {
    v31 = MEMORY[0x1C6940F90](0, v28);
  }

  else
  {
    v31 = *(v28 + 32);
  }

  v32 = v31;

  v33 = [v32 personIdentifier];
  v6 = sub_1C4F01138();
  v7 = v34;

  v8 = [v32 mdID];
  v12 = sub_1C4F01138();
  a1 = v35;

  [v32 confidence];
  v37 = v36;

  LODWORD(v8) = v37;
  if (!a4)
  {
LABEL_46:
    sub_1C442C430();
    sub_1C441F41C();
    if (!v20)
    {
      sub_1C43FFB88();
    }

    v64 = sub_1C4F00978();
    sub_1C4406678(v64, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v44 = sub_1C4F00968();
    v45 = sub_1C4F01CC8();

    v12 = &unk_1C4F0C000;
    if (!sub_1C442FAFC())
    {
      goto LABEL_37;
    }

    sub_1C43FD084();
    v7 = sub_1C4402BBC();
    v81 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C441D828(v80, a2, &v81);
    v47 = "MAD captioning request on image with identifier %s failed";
    goto LABEL_24;
  }

LABEL_15:
  if (sub_1C4428DA0() != 1)
  {
    sub_1C442C430();
    sub_1C441F41C();
    if (!v20)
    {
      sub_1C43FFB88();
    }

    v65 = sub_1C4F00978();
    sub_1C4406678(v65, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v44 = sub_1C4F00968();
    v6 = sub_1C4F01CC8();

    if (os_log_type_enabled(v44, v6))
    {
      v7 = swift_slowAlloc();
      v12 = sub_1C43FFD34();
      v81 = v12;
      *v7 = 136315394;
      *(v7 + 4) = sub_1C441D828(v80, a2, &v81);
      *(v7 + 6) = 2048;
      *(v7 + 14) = sub_1C4428DA0();

      v50 = "Performed MAD request on image with identifer %s and returned an unsupported number of captions: %ld";
      v51 = v6;
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  sub_1C441F41C();
  if (!v20)
  {
    sub_1C43FFB88();
  }

  v38 = sub_1C4F00978();
  sub_1C4406678(v38, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v39 = sub_1C4F00968();
  v40 = sub_1C4F01CB8();

  if (os_log_type_enabled(v39, v40))
  {
    loga = v39;
    v77 = v40;
    v41 = sub_1C43FD084();
    v42 = sub_1C43FFD34();
    v81 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_1C441D828(v80, a2, &v81);
    _os_log_impl(&dword_1C43F8000, loga, v77, "Performed MAD request on image with identifier %s and identified 1 caption", v41, 0xCu);
    sub_1C440962C(v42);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  sub_1C4431590(0, (a4 & 0xC000000000000001) == 0);
  if ((a4 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x1C6940F90](0, a4);
  }

  else
  {
    v66 = *(a4 + 32);
  }

  v67 = v66;
  objc_opt_self();
  v68 = swift_dynamicCastObjCClass();
  if (!v68)
  {
    sub_1C442C430();
    v74 = sub_1C4F00968();
    v75 = sub_1C4F01CC8();
    if (sub_1C43FEB2C(v75))
    {
      v76 = sub_1C43FCED0();
      *v76 = 0;
      _os_log_impl(&dword_1C43F8000, v74, v75, "Unable to cast identification result to MADCaptionResult. Returning nil.", v76, 2u);
      sub_1C43FBE2C();
    }

    goto LABEL_38;
  }

  v69 = v68;
  v70 = v67;
  v71 = sub_1C45C8318(v69);
  if (v72)
  {
    v56 = v71;
  }

  else
  {
    v56 = 0;
  }

  if (v72)
  {
    v57 = v72;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  [v69 score];
  v58 = v73;

LABEL_39:
  *a5 = v56;
  *(a5 + 8) = v57;
  *(a5 + 16) = v58;
  *(a5 + 24) = v6;
  *(a5 + 32) = v7;
  *(a5 + 40) = v12;
  *(a5 + 48) = a1;
  *(a5 + 56) = v8;
}

id sub_1C45C6F8C()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E69AE370]) init];
  v1 = [objc_allocWithZone(MEMORY[0x1E69AE308]) initWithModelType:3 safetyType:0];
  v2 = sub_1C45C6244();
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F10430;
  *(v3 + 32) = v1;
  *(v3 + 40) = v0;
  sub_1C4461BB8(0, &qword_1EDDDBB48, 0x1E69AE3B8);
  v4 = v1;
  v5 = v0;
  v6 = sub_1C4F01658();

  v7 = sub_1C4F01108();
  v16[0] = 0;
  v8 = [v2 performRequests:v6 onAssetWithSyndicationIdentifier:v7 error:v16];

  v9 = v16[0];
  if (v8)
  {
    v10 = v16[0];
    v9 = sub_1C45C82A8(v5);
    v11 = [v4 results];
    if (v11)
    {
      v12 = v11;
      sub_1C4461BB8(0, &unk_1EDDDB840, 0x1E69AE3C0);
      sub_1C4F01678();
    }
  }

  else
  {
    v13 = v16[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1C45C71BC(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C45C6F8C();
  sub_1C45C6664(v3, v2, v4, v5, &v43);
  v6 = v44;
  v37 = v45;
  v7 = v47;
  v41 = v46;
  v8 = v48;
  v38 = v43;
  v40 = v49;
  v9 = v50;

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CC8();

  v36 = v9;
  if (os_log_type_enabled(v11, v12))
  {
    v35 = v12;
    v13 = sub_1C43FFD34();
    v42 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = sub_1C441D828(v3, v2, &v42);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2080;
    if (v6)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v15 = sub_1C45BE078(v38, v6);
      v17 = v16;
    }

    else
    {
      v15 = 0xD00000000000001CLL;
      v17 = 0x80000001C4F8BBD0;
    }

    v18 = sub_1C441D828(v15, v17, &v42);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2080;
    if (v7)
    {
      v43 = v41;
      v44 = v7;
      v45 = v8;
      v46 = v40;
      LODWORD(v47) = v9;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = sub_1C45BDF0C();
      v21 = v20;
    }

    else
    {
      v21 = 0x80000001C4F8BB90;
      v19 = 0xD00000000000003CLL;
    }

    v22 = sub_1C441D828(v19, v21, &v42);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_1C43F8000, v11, v35, "Performed MAD call on image with UUID: %s, with the following captioning: \n %s\nwith the following person identification result: %s", v13, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  v23 = v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult;
  v24 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult + 8);
  *v23 = v38;
  *(v23 + 8) = v6;
  *(v23 + 16) = v37;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v25 = v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult;
  v26 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 8);
  v39 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult);
  v27 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 16);
  v28 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 24);
  v29 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 32);
  *v25 = v41;
  *(v25 + 8) = v7;
  *(v25 + 16) = v8;
  *(v25 + 24) = v40;
  *(v25 + 32) = v36;
  v30 = sub_1C4410948();
  sub_1C45BBF70(v30, v31);
  sub_1C45BBFB4(v39, v26);
  v32 = sub_1C4410948();
  sub_1C45BBFB4(v32, v33);

  return 1;
}

uint64_t sub_1C45C7658(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1C4EF9CD8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C45C7710()
{
  v1 = sub_1C45C28D8([*(v0 + 24) attributeSet]);
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    *(v0 + 80) = *(*(v0 + 32) + 16);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_1C45C78B0;
    v6 = *(v0 + 24);

    return sub_1C45C8550(v6, v3, v4);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CD8();
    if (sub_1C43FEB2C(v10))
    {
      v11 = sub_1C43FCED0();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Autonaming Message processing: Unable to perform inference on the message as the identifier is nil", v11, 2u);
      sub_1C43FBE2C();
    }

    v12 = *(v0 + 56);

    v13 = sub_1C44258E8();

    return v14(v13);
  }
}

uint64_t sub_1C45C78B0(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = a1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C45C79A8()
{
  v38 = v0;
  v2 = v0[12];
  if (v2)
  {
    v0[2] = v2;
    if (*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_imageEligibleForPhotosProcessing))
    {
      v3 = v0[9];
      v5 = v0[6];
      v4 = v0[7];
      v6 = v0[5];

      v7 = OBJC_IVAR____TtC24IntelligencePlatformCore11MessageData_contentCreationDate;
      v0[13] = OBJC_IVAR____TtC24IntelligencePlatformCore11MessageData_contentCreationDate;
      v8 = *(v5 + 16);
      v0[14] = v8;
      v0[15] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v8(v4, v2 + v7, v6);
      v9 = *(v2 + 32);
      v0[16] = *(v2 + 40);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v10 = swift_task_alloc();
      v0[17] = v10;
      *v10 = v0;
      v10[1] = sub_1C45C7D10;
      v11 = v0[10];
      v12 = v0[7];

      return sub_1C45CA710();
    }

    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v24 = v0[9];
    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CC8();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[9];
    if (v28)
    {
      v30 = v0[8];
      v31 = sub_1C43FD084();
      v32 = sub_1C43FFD34();
      v37 = v32;
      *v31 = 136315138;
      v33 = sub_1C441D828(v30, v29, &v37);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1C43F8000, v26, v27, "Autonaming Message processing: Unable to perform inference on the message with unique identifier: %s, as the image message is not eligible for MAD processing", v31, 0xCu);
      sub_1C440962C(v32);
      sub_1C43FBE2C();
      sub_1C43FFD18();

      goto LABEL_17;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v14 = v0[9];
  v15 = sub_1C4F00978();
  sub_1C4406678(v15, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CC8();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[9];
  if (!v18)
  {

    goto LABEL_16;
  }

  v20 = v0[8];
  sub_1C43FD084();
  v21 = sub_1C4402BBC();
  v37 = v21;
  *v1 = 136315138;
  v22 = sub_1C441D828(v20, v19, &v37);

  *(v1 + 4) = v22;
  sub_1C440A610(&dword_1C43F8000, v23, v17, "Autonaming Message processing: Unable to perform inference on the message with unique identifier: %s, as an object for the image message with this unique identifier was not able to be created");
  sub_1C440962C(v21);
  sub_1C43FFD18();
  sub_1C43FFD4C();

LABEL_17:
  v34 = v0[7];

  v35 = sub_1C44258E8();

  return v36(v35);
}

uint64_t sub_1C45C7D10(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v13 = *v1;
  v2[18] = a1;

  v8 = *(v6 + 8);
  v2[19] = v8;
  v2[20] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  v9 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C45C7E98()
{
  v45 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v1 = sub_1C4F00978();
  v2 = sub_1C442B738(v1, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CC8();
  if (sub_1C43FEB2C(v4))
  {
    v5 = *(v0 + 144);
    v6 = sub_1C43FD084();
    *v6 = 134217984;
    *(v6 + 4) = sub_1C4428DA0();
    sub_1C440A610(&dword_1C43F8000, v7, v4, "Autonaming Message processing: Found context messages count: %ld");
    sub_1C43FFD4C();
  }

  v8 = *(v0 + 144);

  if (sub_1C4428DA0() <= 20)
  {
    v20 = *(v0 + 144);
  }

  else
  {
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = *(v0 + 144);
    v12 = *(v0 + 120);
    v13 = *(v0 + 56);
    v14 = *(v0 + 40);
    (*(v0 + 112))(v13, *(v0 + 96) + *(v0 + 104), v14);
    v15 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45C6324(v15, v13);

    v10(v13, v14);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CC8();
    if (sub_1C43FEB2C(v17))
    {
      v18 = sub_1C43FD084();
      *v18 = 134217984;
      *(v18 + 4) = sub_1C4428DA0();

      sub_1C440A610(&dword_1C43F8000, v19, v17, "Autonaming Message processing: Clipped down to %ld messages around the original image message");
      sub_1C43FFD4C();
    }

    else
    {
    }
  }

  v21 = *(v0 + 96);
  v22 = *(v0 + 32);
  LOBYTE(v22) = sub_1C45C71BC((v0 + 16));

  v23 = *(v0 + 96);
  if (v22)
  {
    v24 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C45BC9EC(v24, v23);
    v27 = v26;
    if (sub_1C45BCDE8(v25, v26))
    {
      v28 = *(v0 + 96);

      goto LABEL_21;
    }

    v29 = sub_1C4F00968();
    v38 = sub_1C4F01CC8();
    if (sub_1C43FD0E8(v38))
    {
      v39 = sub_1C43FCED0();
      *v39 = 0;
      _os_log_impl(&dword_1C43F8000, v29, v2, "Autonaming Message processing: Prompt not eligible for inference for autonaming from messages", v39, 2u);
      sub_1C43FFD18();
    }

    v40 = *(v0 + 96);

    goto LABEL_19;
  }

  v29 = sub_1C4F00968();
  v30 = sub_1C4F01CD8();

  v31 = sub_1C442FAFC();
  v32 = *(v0 + 96);
  if (!v31)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_1C43FD084();
  v33 = sub_1C4402BBC();
  v44 = v33;
  *v23 = 136315138;
  v34 = *(v32 + 16);
  v35 = *(v32 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v36 = sub_1C441D828(v34, v35, &v44);

  *(v23 + 4) = v36;
  sub_1C440A610(&dword_1C43F8000, v37, v30, "Autonaming Message processing: performCaptioningAndIdentification on image with identifier: %s failed");
  sub_1C440962C(v33);
  sub_1C43FFD18();
  sub_1C43FFD4C();

LABEL_20:
  v25 = 0;
  v27 = 0;
LABEL_21:
  v41 = *(v0 + 56);

  v42 = *(v0 + 8);

  return v42(v25, v27);
}

uint64_t sub_1C45C8228()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1C45C8250()
{
  sub_1C45C8228();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45C82A8(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4461BB8(0, &unk_1EDDDB840, 0x1E69AE3C0);
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C45C8318(void *a1)
{
  v1 = [a1 caption];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C45C839C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a5)
{
  v10 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    v10 = a2(v10);
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
  v13[1] = v11;
  result = sub_1C45CC0C0(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

id sub_1C45C8444()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 144);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v4 = *(v0 + 144);
    *(v0 + 144) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_1C45C84B0(void *__src)
{
  v1[17] = 0;
  v1[18] = 0;
  memcpy(v1 + 2, __src, 0x70uLL);
  v2 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  v1[16] = v2;
  v3 = v1[15];
  v4 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F01658();

  [v4 setFetchAttributes_];

  return v1;
}

uint64_t sub_1C45C8550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C45C857C()
{
  v43 = v0;
  v3 = sub_1C45C28E4([*(v0 + 32) attributeSet]);
  if (!v3)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v22 = *(v0 + 48);
    v23 = sub_1C4F00978();
    sub_1C43FCEE8(v23, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C440D060();

    if (!sub_1C44020E0())
    {
      goto LABEL_29;
    }

LABEL_28:
    v35 = *(v0 + 40);
    v34 = *(v0 + 48);
    sub_1C43FD084();
    sub_1C4402BBC();
    sub_1C44057F8();
    *(v1 + 4) = sub_1C441EA40(4.8149e-34, v36);
    sub_1C442B944();
    _os_log_impl(v37, v38, v39, v40, v1, 0xCu);
    sub_1C440962C(v2);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
LABEL_29:

    sub_1C43FBCF0();

    return v41(0);
  }

  v4 = v3;
  sub_1C43FEB94();
  *(v0 + 16) = v5 & 0xFFFFFFFFFFFFLL | 0x6D2E000000000000;
  sub_1C43FBF14();
  *(v0 + 24) = v6;
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 16;
  v8 = sub_1C44CE068(sub_1C4579E44, v7, v4);

  if (!v8)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v24 = *(v0 + 48);
    v25 = sub_1C4F00978();
    sub_1C43FCEE8(v25, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C440D060();

    if (!sub_1C44020E0())
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v9 = [*(v0 + 32) attributeSet];
  v10 = [v9 disableSearchInSpotlight];

  if (v10)
  {
    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v11 = sub_1C4F01EC8();
    v12 = sub_1C4F01EE8();

    if (v12)
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v13 = *(v0 + 48);
      v14 = sub_1C4F00978();
      sub_1C43FCEE8(v14, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v15 = sub_1C4F00968();
      sub_1C4F01CC8();
      sub_1C441EA60();
      if (os_log_type_enabled(v15, v11))
      {
        v17 = *(v0 + 40);
        v16 = *(v0 + 48);
        v18 = sub_1C43FD084();
        v19 = sub_1C43FFD34();
        v42 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1C441D828(v17, v16, &v42);
        sub_1C442DD34(&dword_1C43F8000, v20, v21, "Autonaming Message processing: The message with unique identifier %s is disabled for search in spotlight, cannot continue with processing");
        sub_1C440962C(v19);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      goto LABEL_29;
    }
  }

  v26 = sub_1C45C295C([*(v0 + 32) attributeSet]);
  if (!v26)
  {
    goto LABEL_25;
  }

  if (!v26[2])
  {

LABEL_25:
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v32 = *(v0 + 48);
    v33 = sub_1C4F00978();
    sub_1C43FCEE8(v33, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C440D060();

    if (!sub_1C44020E0())
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v27 = v26[4];
  *(v0 + 64) = v26[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v28 = swift_task_alloc();
  *(v0 + 72) = v28;
  *v28 = v0;
  v28[1] = sub_1C45C8A6C;
  v29 = *(v0 + 56);
  v30 = *(v0 + 32);

  return sub_1C45C8B70();
}

uint64_t sub_1C45C8A6C()
{
  sub_1C43FBCD4();
  v2 = v1;
  sub_1C43FBDE4();
  v4 = *(v3 + 72);
  v5 = *(v3 + 64);
  v6 = *v0;
  sub_1C43FBDAC();
  *v7 = v6;

  sub_1C43FBCF0();

  return v8(v2);
}

uint64_t sub_1C45C8B70()
{
  sub_1C43FCF70();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = type metadata accessor for ExtractedAttributes(0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[12] = v8;
  *v8 = v1;
  v8[1] = sub_1C45C8C64;

  return sub_1C45C9DB8();
}

uint64_t sub_1C45C8C64()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C45C8D4C()
{
  v3 = *(v0 + 104);
  if (!v3)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v24 = *(v0 + 40);
    v25 = sub_1C4F00978();
    sub_1C43FCEE8(v25, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v3 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C440D060();

    if (sub_1C44020E0())
    {
      v27 = *(v0 + 32);
      v26 = *(v0 + 40);
      sub_1C43FD084();
      sub_1C4402BBC();
      sub_1C44057F8();
      *(v1 + 4) = sub_1C441EA40(4.8149e-34, v28);
      sub_1C442B944();
      _os_log_impl(v29, v30, v31, v32, v1, 0xCu);
      sub_1C440962C(v2);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    goto LABEL_10;
  }

  v4 = sub_1C45C28E4([*(v0 + 104) attributeSet]);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  sub_1C43FEB94();
  *(v0 + 16) = v6 & 0xFFFFFFFFFFFFLL | 0x692E000000000000;
  *(v0 + 24) = 0xEC0000006567616DLL;
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 16;
  v8 = sub_1C44CE068(sub_1C44CE790, v7, v5);

  if (!v8)
  {
LABEL_10:

    v21 = 0;
    goto LABEL_11;
  }

  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  v15 = *(v13 + 16);
  v16 = *(v13 + 24);
  swift_bridgeObjectRetain_n();
  v17 = v3;
  sub_1C45C0E0C(v17, v15, v16, v9);
  sub_1C45C0E0C(v14, v15, v16, v10);
  sub_1C45C29C8(v9, v11);
  sub_1C45C29C8(v10, v12);
  v18 = type metadata accessor for ImageMessageData(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1C45C1FF4(v11, v12);
  sub_1C45C287C(v10);
  sub_1C45C287C(v9);
  if (v21)
  {
    v22 = *(v0 + 56);

    sub_1C45C9A08(v23);
  }

  else
  {
  }

LABEL_11:
  v34 = *(v0 + 80);
  v33 = *(v0 + 88);
  v36 = *(v0 + 64);
  v35 = *(v0 + 72);

  sub_1C43FBCF0();

  return v37(v21);
}

uint64_t sub_1C45C9000()
{
  sub_1C43FBCD4();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1C4EF9CD8();
  v1[8] = v4;
  sub_1C43FCF7C(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = sub_1C43FBE7C();
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  v1[11] = sub_1C43FBE7C();
  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C45C90D4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_1C4F02248();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4F8BD60);
  sub_1C4EF9AD8();
  sub_1C4F01A28();
  MEMORY[0x1C6940010](8236, 0xE200000000000000);
  sub_1C4EF9AD8();
  sub_1C4F01A28();
  MEMORY[0x1C6940010](41, 0xE100000000000000);
  v4 = v0[2];
  v5 = v0[3];
  v15 = v2[6];
  v16 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4F8BD90);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v4, v5);

  v6 = v2[16];
  v7 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v8 = v6;
  v9 = sub_1C43FD104();
  v0[12] = v9;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *(v10 + 16) = v2;
  *(v10 + 24) = v9;
  v11 = *(MEMORY[0x1E69E88D0] + 4);
  v12 = swift_task_alloc();
  v0[14] = v12;
  sub_1C456902C(&qword_1EC0B9970, &qword_1C4F10520);
  sub_1C440F2A0();
  *v12 = v13;
  v12[1] = sub_1C45C9310;
  sub_1C440DE60();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1C45C9310()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

id sub_1C45C9410()
{
  v21 = v0;
  v1 = v0[9];
  v2 = v0[4];
  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1C4428DA0();
  v4 = result;
  v5 = 0;
  v6 = (v1 + 32);
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1C6940F90](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      result = *(v2 + 8 * v5 + 32);
    }

    v7 = result;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v8 = [result attributeSet];
    v9 = [v8 contentCreationDate];

    v10 = v0[11];
    if (v9)
    {
      v11 = v0[10];
      v12 = v0[8];
      sub_1C4EF9C78();

      (*v6)(v10, v11, v12);
      sub_1C440BAA8(v10, 0, 1, v12);
      sub_1C44686E4(v10);
      sub_1C4F02318();
      v13 = *(v20 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      result = sub_1C4F02328();
    }

    else
    {
      v14 = v0[8];

      sub_1C440BAA8(v10, 1, 1, v14);
      result = sub_1C44686E4(v10);
    }

    ++v5;
  }

  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[10];

  sub_1C45C839C(&v20, sub_1C4836300, sub_1C49B74A8, sub_1C45CC600, sub_1C45CC1C0);

  v18 = v20;

  sub_1C43FBCF0();

  return v19(v18);
}

uint64_t sub_1C45C968C(id *a1, void **a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v19;
  v21 = *a2;
  v22 = [*a1 attributeSet];
  v23 = [v22 contentCreationDate];

  if (v23)
  {
    sub_1C4EF9C78();

    v24 = v11[4];
    v24(v9, v18, v10);
    sub_1C440BAA8(v9, 0, 1, v10);
    v24(v20, v9, v10);
  }

  else
  {
    sub_1C440BAA8(v9, 1, 1, v10);
    sub_1C4EF9CC8();
    if (sub_1C44157D4(v9, 1, v10) != 1)
    {
      sub_1C44686E4(v9);
    }
  }

  v25 = [v21 attributeSet];
  v26 = [v25 contentCreationDate];

  if (v26)
  {
    sub_1C4EF9C78();

    v27 = v11[4];
    v28 = v34;
    v27(v34, v18, v10);
    sub_1C440BAA8(v28, 0, 1, v10);
    v27(v15, v28, v10);
  }

  else
  {
    v29 = v34;
    sub_1C440BAA8(v34, 1, 1, v10);
    sub_1C4EF9CC8();
    if (sub_1C44157D4(v29, 1, v10) != 1)
    {
      sub_1C44686E4(v29);
    }
  }

  v30 = sub_1C4EF9C18();
  v31 = v11[1];
  v31(v15, v10);
  v31(v20, v10);
  return v30 & 1;
}

void sub_1C45C9A08(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 72);
  if (v1 && v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C4F10430;
    v5 = *MEMORY[0x1E695C240];
    v6 = *MEMORY[0x1E695C230];
    *(v4 + 32) = *MEMORY[0x1E695C240];
    *(v4 + 40) = v6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v7 = v5;
    v8 = v6;
    v9 = sub_1C45C8444();
    v10 = objc_opt_self();
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C4F0D130;
    *(v11 + 32) = v3;
    *(v11 + 40) = v2;
    v12 = sub_1C4F01658();

    v13 = [v10 predicateForContactsWithIdentifiers_];

    sub_1C456902C(&unk_1EC0BABE0, &unk_1C4F16F20);
    v14 = sub_1C4F01658();

    v30[0] = 0;
    v15 = [v9 unifiedContactsMatchingPredicate:v13 keysToFetch:v14 error:v30];

    v16 = v30[0];
    if (v15)
    {
      sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
      v17 = sub_1C4F01678();
      v18 = v16;

      if (sub_1C4428DA0())
      {
        sub_1C4431590(0, (v17 & 0xC000000000000001) == 0);
        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1C6940F90](0, v17);
        }

        else
        {
          v19 = *(v17 + 32);
        }

        v20 = v19;

        sub_1C45C16A0(v20);
      }

      else
      {

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v26 = sub_1C4F00978();
        sub_1C43FCEE8(v26, qword_1EDDFECB8);
        v20 = sub_1C4F00968();
        v27 = sub_1C4F01CD8();
        if (os_log_type_enabled(v20, v27))
        {
          v28 = sub_1C43FCED0();
          *v28 = 0;
          _os_log_impl(&dword_1C43F8000, v20, v27, "new contacts is empty", v28, 2u);
          sub_1C43FBE2C();
        }
      }
    }

    else
    {
      v21 = v30[0];
      v22 = sub_1C4EF97A8();

      swift_willThrow();
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v23 = sub_1C4F00978();
      sub_1C43FCEE8(v23, qword_1EDDFECB8);
      v20 = sub_1C4F00968();
      v24 = sub_1C4F01CD8();
      if (os_log_type_enabled(v20, v24))
      {
        v25 = sub_1C43FCED0();
        *v25 = 0;
        _os_log_impl(&dword_1C43F8000, v20, v24, "error when trying to call into contactStore", v25, 2u);
        sub_1C43FBE2C();
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C45C9DB8()
{
  sub_1C43FBCD4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1C45C9E44;

  return sub_1C45CA32C();
}

uint64_t sub_1C45C9E44()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C45C9F2C()
{
  v37 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v36 = MEMORY[0x1E69E7CC0];
  v3 = sub_1C4428DA0();
  v4 = 0;
  v35 = v0;
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C6940F90](v4, v0[5]);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v5 = *(v1 + 32 + 8 * v4);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      sub_1C44064A8();
      swift_once();
LABEL_22:
      v14 = v0[3];
      v15 = sub_1C4F00978();
      sub_1C43FCEE8(v15, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v16 = sub_1C4F00968();
      sub_1C4F01CC8();
      sub_1C441EA60();
      if (os_log_type_enabled(v16, v4))
      {
        v17 = v0[3];
        v18 = v35[2];
        v19 = sub_1C43FD084();
        v20 = sub_1C43FFD34();
        v36 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1C441D828(v18, v17, &v36);
        sub_1C442DD34(&dword_1C43F8000, v21, v22, "Autonaming Message processing: Found one valid message for the image only %s");
        sub_1C440962C(v20);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      sub_1C4431590(0, (v3 & 0xC000000000000001) == 0);
      if ((v3 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1C6940F90](0, v3);
      }

      else
      {
        v23 = *(v3 + 32);
      }

      v24 = v23;

      goto LABEL_33;
    }

    v7 = sub_1C45C28D8([v5 attributeSet]);
    if (!v8)
    {

      goto LABEL_18;
    }

    if (v7 == v0[2] && v8 == v2)
    {

LABEL_16:
      sub_1C4F02318();
      v12 = v36[2];
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      goto LABEL_17;
    }

    v10 = v0[3];
    v11 = sub_1C4F02938();

    if (v11)
    {
      goto LABEL_16;
    }

LABEL_17:
    v0 = v35;
LABEL_18:
    ++v4;
  }

  v13 = v0[5];

  v3 = v36;
  if (sub_1C4428DA0() == 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_22;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v25 = v0[3];
  v26 = sub_1C4F00978();
  sub_1C43FCEE8(v26, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v27 = sub_1C4F00968();
  sub_1C4F01CD8();
  sub_1C441EA60();
  if (os_log_type_enabled(v27, v4))
  {
    v28 = v35[3];
    v29 = v35[2];
    v30 = swift_slowAlloc();
    v31 = sub_1C43FFD34();
    v36 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_1C441D828(v29, v28, &v36);
    *(v30 + 12) = 2048;
    v32 = sub_1C4428DA0();

    *(v30 + 14) = v32;

    _os_log_impl(&dword_1C43F8000, v27, v4, "Autonaming Message processing: Spotlight returned searchable items with the following count for the message unique identifier %s: %ld. Expecting count to be 1, returning nil", v30, 0x16u);
    sub_1C440962C(v31);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  v24 = 0;
LABEL_33:
  sub_1C43FBCF0();

  return v33(v24);
}

uint64_t sub_1C45CA32C()
{
  *(v1 + 24) = v0;
  v2 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C45CA354()
{
  v1 = v0[3];
  if (v1[17])
  {
    sub_1C43FBCF0();
    v13 = v2;
    v3 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return v13(v3);
  }

  else
  {
    v14 = v1[6];
    v15 = v1[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0xD00000000000001FLL, 0x80000001C4F8BD40);
    v5 = v1[16];
    v6 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v7 = v5;
    v8 = sub_1C43FD104();
    v0[4] = v8;
    v9 = swift_task_alloc();
    v0[5] = v9;
    *(v9 + 16) = v1;
    *(v9 + 24) = v8;
    v10 = *(MEMORY[0x1E69E88D0] + 4);
    v11 = swift_task_alloc();
    v0[6] = v11;
    sub_1C456902C(&qword_1EC0B9970, &qword_1C4F10520);
    sub_1C440F2A0();
    *v11 = v12;
    v11[1] = sub_1C45CA4F8;
    sub_1C440DE60();

    return MEMORY[0x1EEE6DDE0]();
  }
}

uint64_t sub_1C45CA4F8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C45CA5F8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 24);

  v2 = *(v1 + 136);
  *(v1 + 136) = *(v0 + 16);

  if (*(v1 + 136))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C43FCEE8(v3, qword_1EDDFECB8);
    v4 = sub_1C4F00968();
    v5 = sub_1C4F01CD8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_1C43FCED0();
      *v6 = 0;
      sub_1C442B944();
      _os_log_impl(v7, v8, v9, v10, v6, 2u);
      sub_1C43FBE2C();
    }
  }

  sub_1C43FBCF0();

  return v11();
}

uint64_t sub_1C45CA710()
{
  sub_1C43FCF70();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = sub_1C4EF9CD8();
  v1[21] = v5;
  sub_1C43FCF7C(v5);
  v1[22] = v6;
  v8 = *(v7 + 64);
  v1[23] = sub_1C43FBE7C();
  v9 = type metadata accessor for ExtractedAttributes(0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v12 = swift_task_alloc();
  v1[26] = v12;
  *v12 = v1;
  v12[1] = sub_1C45CA830;

  return sub_1C45CB1B4();
}

uint64_t sub_1C45CA830()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 208);
  *v2 = *v0;
  *(v1 + 216) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C45CA918()
{
  v89 = v0;
  v1 = v0[27];
  v81 = MEMORY[0x1E69E7CC0];
  v88[0] = MEMORY[0x1E69E7CC0];
  v2 = sub_1C4428DA0();
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v82 = v2;
  v85 = v1 + 32;
  v6 = &off_1E81F1000;
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x1C6940F90](v3, v0[27]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_61;
      }

      v7 = *(v85 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v9 = sub_1C45C28F0([v7 v6[93]], &selRef_contentType);
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = v6;
    v0[8] = v9;
    v0[9] = v10;
    sub_1C43FEB94();
    v0[10] = v12 & 0xFFFFFFFFFFFFLL | 0x6D2E000000000000;
    sub_1C43FBF14();
    v0[11] = v13;
    sub_1C4415EA8();
    v14 = sub_1C4F02048();

    if ((v14 & 1) == 0)
    {
LABEL_15:

      goto LABEL_20;
    }

    v15 = v5;
    v16 = v4;
    v17 = v6;
    sub_1C45C28F0([v8 v6 + 116], &selRef_messageType);
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = sub_1C45C28F0([v8 v6 + 116], &selRef_messageType);
    if (!v20)
    {
      goto LABEL_17;
    }

    v0[12] = v19;
    v0[13] = v20;
    v0[14] = 6779757;
    v0[15] = 0xE300000000000000;
    v21 = sub_1C4F02048();

    v17 = v6;
    if (v21)
    {
LABEL_12:
      v22 = [v8 v17 + 116];
      v23 = [v22 disableSearchInSpotlight];

      v6 = v17;
      v4 = v16;
      v5 = v15;
      v2 = v82;
      if (v23)
      {

        v24 = [v8 v6 + 116];
        v25 = [v24 disableSearchInSpotlight];

        sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
        v26 = sub_1C4F01EC8();
        v27 = v26;
        if (v25)
        {
          v28 = sub_1C4F01EE8();

          v6 = v11;
          if (v28)
          {
            goto LABEL_15;
          }
        }

        else
        {

          v6 = v11;
        }
      }

      sub_1C4F02318();
      v29 = *(v88[0] + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
LABEL_17:

      v4 = v16;
      v5 = v15;
      v2 = v82;
    }

LABEL_20:
    ++v3;
  }

  v30 = v0[27];

  v31 = v88[0];
  v0[16] = MEMORY[0x1E69E7CC0];
  v32 = sub_1C4428DA0();
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = v0[20];
    v36 = *(v35 + 24);
    v86 = *(v35 + 16);
    v37 = v31 & 0xC000000000000001;
    v81 = MEMORY[0x1E69E7CC0];
    v83 = v32;
    do
    {
      sub_1C4431590(v34, v37 == 0);
      v38 = v37 ? MEMORY[0x1C6940F90](v34, v31) : *(v31 + 8 * v34 + 32);
      v39 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_62;
      }

      v41 = v0[24];
      v40 = v0[25];
      v42 = v38;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45C0E0C(v42, v86, v36, v40);
      sub_1C45C29C8(v40, v41);
      v43 = type metadata accessor for TextMessageData(0);
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      v46 = sub_1C45C18EC(v41);
      if (v46)
      {
        v47 = v46;
        if (!sub_1C45C1D80() && (*(v47 + 32) == v0[18] ? (v52 = *(v47 + 40) == v0[19]) : (v52 = 0), v52 || (sub_1C4F02938() & 1) != 0))
        {

          MEMORY[0x1C6940330](v53);
          if (*((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C4F016D8();
          }

          sub_1C4F01748();
          v81 = v0[16];

          v33 = v83;
        }

        else
        {
        }
      }

      else
      {
        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v48 = sub_1C4F00978();
        sub_1C43FCEE8(v48, qword_1EDDFECB8);
        v49 = sub_1C4F00968();
        v50 = sub_1C4F01CD8();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = sub_1C43FCED0();
          *v51 = 0;
          _os_log_impl(&dword_1C43F8000, v49, v50, "Autonaming Context Messages: Failed converting a searchableItem into a TextMessageData", v51, 2u);
          v33 = v83;
          sub_1C43FBE2C();
        }

        else
        {
        }
      }

      sub_1C45C287C(v0[25]);
      ++v34;
    }

    while (v39 != v33);
  }

  result = sub_1C4428DA0();
  if (result)
  {
    v55 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; i != v55; ++i)
    {
      if ((v81 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x1C6940F90](i, v81);
      }

      else
      {
        v57 = *(v81 + 8 * i + 32);
      }

      v58 = v0[20];
      sub_1C45C9A08(v57);
    }
  }

  sub_1C45C839C(v0 + 16, sub_1C4836300, sub_1C49B74BC, sub_1C45BD404, sub_1C45BD318);
  if (qword_1EDDFECB0 != -1)
  {
LABEL_63:
    sub_1C44064A8();
    swift_once();
  }

  v60 = v0[22];
  v59 = v0[23];
  v61 = v0[21];
  v62 = v0[19];
  v63 = v0[17];
  v64 = sub_1C4F00978();
  sub_1C442B738(v64, qword_1EDDFECB8);
  (*(v60 + 16))(v59, v63, v61);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v65 = sub_1C4F00968();
  sub_1C4F01CC8();
  sub_1C441EA60();
  v66 = os_log_type_enabled(v65, v63);
  v68 = v0[22];
  v67 = v0[23];
  v69 = v0[21];
  if (v66)
  {
    v84 = v0[18];
    v87 = v0[19];
    v70 = sub_1C43FFD34();
    v88[0] = swift_slowAlloc();
    *v70 = 134218498;
    swift_beginAccess();
    v71 = v0[16];
    *(v70 + 4) = sub_1C4428DA0();
    *(v70 + 12) = 2080;
    sub_1C45C2A2C();
    v72 = sub_1C4F02858();
    v74 = v73;
    (*(v68 + 8))(v67, v69);
    v75 = sub_1C441D828(v72, v74, v88);

    *(v70 + 14) = v75;
    *(v70 + 22) = 2080;
    *(v70 + 24) = sub_1C441D828(v84, v87, v88);
    _os_log_impl(&dword_1C43F8000, v65, v63, "Autonaming Context Messages: Found %ld messages in searchContextMessages around time %s for conversation %s which contain text content", v70, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    (*(v68 + 8))(v67, v69);
  }

  v76 = v0[24];
  v77 = v0[25];
  v78 = v0[23];
  swift_beginAccess();
  v79 = v0[16];

  sub_1C43FBCF0();

  return v80(v79);
}

uint64_t sub_1C45CB1B4()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1C4EF9BD8();
  v1[5] = v3;
  sub_1C43FCF7C(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = sub_1C43FBE7C();
  v7 = sub_1C4EF9CD8();
  v1[8] = v7;
  sub_1C43FCF7C(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_1C43FBE7C();
  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C45CB2A4()
{
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDDFECB8);

  v3 = sub_1C4F00968();
  sub_1C4F01CC8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v4 = v0[4];
    v5 = sub_1C43FD084();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 80);
    sub_1C442B944();
    _os_log_impl(v6, v7, v8, v9, v5, 0xCu);
    sub_1C43FBE2C();
  }

  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  v34 = v12;
  v35 = v14;
  v15 = v0[4];
  v36 = v15;
  v37 = v0[9];

  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000004FLL, 0x80000001C4F8BCD0);
  v16 = *(v15 + 80);
  sub_1C4EF9BE8();
  sub_1C4D3FCA0(v11);
  v17 = sub_1C4EF9B48();
  v19 = v18;
  v20 = *(v13 + 8);
  v20(v11, v14);
  v21 = *(v37 + 8);
  v21(v10, v12);
  MEMORY[0x1C6940010](v17, v19);

  MEMORY[0x1C6940010](0x2E656D6974242C29, 0xEC000000286F7369);
  sub_1C4EF9BE8();
  sub_1C4D3FCA0(v11);
  v22 = sub_1C4EF9B48();
  v24 = v23;
  v20(v11, v35);
  v21(v10, v34);
  MEMORY[0x1C6940010](v22, v24);

  MEMORY[0x1C6940010](10537, 0xE200000000000000);
  v25 = *(v36 + 128);
  v26 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v27 = v25;
  v28 = sub_1C43FD104();
  v0[11] = v28;
  v29 = swift_task_alloc();
  v0[12] = v29;
  *(v29 + 16) = v36;
  *(v29 + 24) = v28;
  v30 = *(MEMORY[0x1E69E88D0] + 4);
  v31 = swift_task_alloc();
  v0[13] = v31;
  sub_1C456902C(&qword_1EC0B9970, &qword_1C4F10520);
  sub_1C440F2A0();
  *v31 = v32;
  v31[1] = sub_1C45CB610;
  sub_1C440DE60();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1C45CB610()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C45CB710()
{
  sub_1C43FCF70();
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 16);

  sub_1C43FBCF0();

  return v4(v3);
}

uint64_t sub_1C45CB78C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C456902C(&qword_1EC0B9978, &unk_1C4F10528);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  sub_1C45CB92C(a3, a5, v14);
}

uint64_t sub_1C45CB8CC()
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B9978, &unk_1C4F10528);
  return sub_1C4F01818();
}

uint64_t sub_1C45CB92C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v15 = sub_1C45CC074;
  v16 = v6;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1C45CBB54;
  v14 = &unk_1F43E1FC8;
  v7 = _Block_copy(&v11);

  [a1 setFoundItemsHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v6;
  v15 = sub_1C45CC07C;
  v16 = v8;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1C45CBEB0;
  v14 = &unk_1F43E2018;
  v9 = _Block_copy(&v11);

  [a1 setCompletionHandler_];
  _Block_release(v9);
  [a1 start];
}

uint64_t sub_1C45CBAF4()
{
  swift_beginAccess();
  v0 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3680(v0);
  return swift_endAccess();
}

uint64_t sub_1C45CBB54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1C4461BB8(0, &unk_1EDDDB930, 0x1E6964E80);
  v3 = sub_1C4F01678();

  v2(v3);
}

void sub_1C45CBBD8(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = a1;
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CD8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1C4F02A38();
      v15 = sub_1C441D828(v13, v14, &v24);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Received error %s in query completion handler in AutonamingMessagesUpdateHandler", v11, 0xCu);
      sub_1C440962C(v12);
      MEMORY[0x1C6942830](v12, -1, -1);
      MEMORY[0x1C6942830](v11, -1, -1);
    }

    a2(0);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDDFECB8);

    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      swift_beginAccess();
      v21 = *(a4 + 16);
      *(v20 + 4) = sub_1C4428DA0();

      _os_log_impl(&dword_1C43F8000, v18, v19, "Finished fetching %ld messages indexed by Spotlight in AutonamingMessagesUpdateHandler", v20, 0xCu);
      MEMORY[0x1C6942830](v20, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v22 = *(a4 + 16);
    v23 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    a2(v23);
  }
}

void sub_1C45CBEB0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1C45CBF1C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  v5 = *(v0 + 96);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);

  v8 = *(v0 + 136);

  return v0;
}

uint64_t sub_1C45CBFB8()
{
  sub_1C45CBF1C();

  return swift_deallocClassInstance();
}

id sub_1C45CC010(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C4F01108();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

uint64_t sub_1C45CC0C0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a4)
{
  v9 = *(a1 + 8);
  result = sub_1C4F02828();
  if (result < v9)
  {
    v11 = result;
    a4 = a2(v9 / 2);
    v13[0] = v12;
    v13[1] = v9 / 2;
    result = a3(v13, v14, a1, v11);
    if (v4)
    {
      if (v9 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v9 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9)
  {
    return (a4)(0, v9, 1, a1);
  }

  return result;
}

void sub_1C45CC1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v47 - v12;
  v13 = sub_1C4EF9CD8();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v58 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v47 - v20;
  v48 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v57 = (v19 + 32);
    v52 = (v19 + 8);
    v54 = v21;
    v22 = v21 + 8 * a3 - 8;
    v23 = a1 - a3;
    while (2)
    {
      v50 = v22;
      v51 = a3;
      v24 = *(v54 + 8 * a3);
      v49 = v23;
      do
      {
        v25 = *v22;
        v26 = v24;
        v27 = v25;
        v28 = [v26 attributeSet];
        v29 = [v28 contentCreationDate];

        if (v29)
        {
          v30 = v58;
          sub_1C4EF9C78();

          v31 = *v57;
          v32 = v55;
          (*v57)(v55, v30, v13);
          sub_1C440BAA8(v32, 0, 1, v13);
          (v31)(v59, v32, v13);
        }

        else
        {
          v33 = v55;
          sub_1C440BAA8(v55, 1, 1, v13);
          sub_1C4EF9CC8();
          if (sub_1C44157D4(v33, 1, v13) != 1)
          {
            sub_1C44686E4(v55);
          }
        }

        v34 = [v27 attributeSet];
        v35 = [v34 contentCreationDate];

        if (v35)
        {
          v36 = v58;
          sub_1C4EF9C78();

          v37 = v56;
          v38 = *v57;
          (*v57)(v56, v36, v13);
          sub_1C440BAA8(v37, 0, 1, v13);
          v39 = v53;
          v38();
        }

        else
        {
          v40 = v56;
          sub_1C440BAA8(v56, 1, 1, v13);
          v39 = v53;
          sub_1C4EF9CC8();
          if (sub_1C44157D4(v40, 1, v13) != 1)
          {
            sub_1C44686E4(v56);
          }
        }

        v41 = v59;
        v42 = sub_1C4EF9C18();
        v43 = v39;
        v44 = *v52;
        (*v52)(v43, v13);
        v44(v41, v13);

        if ((v42 & 1) == 0)
        {
          break;
        }

        if (!v54)
        {
          __break(1u);
          return;
        }

        v45 = *v22;
        v24 = *(v22 + 8);
        *v22 = v24;
        *(v22 + 8) = v45;
        v22 -= 8;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v51 + 1;
      v22 = v50 + 8;
      v23 = v49 - 1;
      if (v51 + 1 != v48)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C45CC600(void ***a1, uint64_t a2, char *a3, unint64_t a4)
{
  v151 = a1;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v166 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v165 = &v147 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v157 = &v147 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v147 - v14;
  v15 = sub_1C4EF9CD8();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v170 = (&v147 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v168 = &v147 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v160 = &v147 - v26;
  v27 = *(a3 + 1);
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v170 = *v151;
    if (!v170)
    {
      goto LABEL_154;
    }

    a4 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v137 = v29;
LABEL_114:
      a4 = (v137 + 16);
      v138 = *(v137 + 2);
      while (v138 >= 2)
      {
        v139 = *a3;
        if (!*a3)
        {
          goto LABEL_151;
        }

        v140 = a3;
        v141 = v137;
        a3 = &v137[16 * v138];
        v142 = *a3;
        v143 = a4 + 16 * v138;
        v144 = *(v143 + 8);
        v145 = v161;
        sub_1C45CD29C((v139 + 8 * *a3), (v139 + 8 * *v143), (v139 + 8 * v144), v170);
        v161 = v145;
        if (v145)
        {
          break;
        }

        if (v144 < v142)
        {
          goto LABEL_139;
        }

        if (v138 - 2 >= *a4)
        {
          goto LABEL_140;
        }

        *a3 = v142;
        *(a3 + 1) = v144;
        v146 = *a4 - v138;
        if (*a4 < v138)
        {
          goto LABEL_141;
        }

        v138 = *a4 - 1;
        sub_1C461950C((v143 + 16), v146, v143);
        *a4 = v138;
        v137 = v141;
        a3 = v140;
      }

LABEL_122:

      return;
    }

LABEL_148:
    v137 = sub_1C46194F4(a4);
    goto LABEL_114;
  }

  v154 = v25;
  v162 = v24;
  v148 = a4;
  v28 = 0;
  v167 = (v23 + 32);
  v164 = (v23 + 8);
  v29 = MEMORY[0x1E69E7CC0];
  v158 = a3;
  while (1)
  {
    v30 = v28++;
    if (v28 < v27)
    {
      v150 = v29;
      v31 = *a3;
      v172 = *(*a3 + 8 * v28);
      v171 = *(v31 + 8 * v30);
      v32 = v171;
      v33 = v172;
      a4 = v32;
      v34 = v161;
      LODWORD(v159) = sub_1C45C968C(&v172, &v171);
      v161 = v34;
      if (v34)
      {

        return;
      }

      v153 = 8 * v30;
      v35 = (v31 + 8 * v30 + 16);
      v149 = v30;
      v36 = v30 + 2;
      v155 = v27;
      while (1)
      {
        v37 = v36;
        if (v28 + 1 >= v27)
        {
          break;
        }

        v163 = v36;
        v38 = *(v35 - 1);
        v39 = *v35;
        v40 = v38;
        v169 = v39;
        v41 = [v39 attributeSet];
        v42 = [v41 contentCreationDate];

        if (v42)
        {
          v43 = v168;
          sub_1C4EF9C78();

          v44 = *v167;
          v45 = v156;
          (*v167)(v156, v43, v15);
          sub_1C440BAA8(v45, 0, 1, v15);
          v44(v160, v45, v15);
        }

        else
        {
          v46 = v156;
          sub_1C440BAA8(v156, 1, 1, v15);
          sub_1C4EF9CC8();
          if (sub_1C44157D4(v46, 1, v15) != 1)
          {
            sub_1C44686E4(v156);
          }
        }

        v47 = [v40 attributeSet];
        v48 = [v47 contentCreationDate];

        v49 = v28;
        if (v48)
        {
          v50 = v168;
          sub_1C4EF9C78();

          v51 = *v167;
          v52 = v157;
          (*v167)(v157, v50, v15);
          sub_1C440BAA8(v52, 0, 1, v15);
          v53 = v154;
          v51(v154, v52, v15);
        }

        else
        {
          v54 = v157;
          sub_1C440BAA8(v157, 1, 1, v15);
          v53 = v154;
          sub_1C4EF9CC8();
          if (sub_1C44157D4(v54, 1, v15) != 1)
          {
            sub_1C44686E4(v157);
          }
        }

        v55 = v160;
        a4 = sub_1C4EF9C18();
        v56 = *v164;
        (*v164)(v53, v15);
        v56(v55, v15);

        ++v35;
        v28 = v49 + 1;
        v37 = v163;
        v36 = v163 + 1;
        a3 = v158;
        v27 = v155;
        if ((v159 ^ a4))
        {
          goto LABEL_18;
        }
      }

      v28 = v27;
LABEL_18:
      if (v159)
      {
        if (v28 < v149)
        {
          goto LABEL_147;
        }

        v29 = v150;
        if (v149 >= v28)
        {
          v30 = v149;
        }

        else
        {
          if (v27 >= v37)
          {
            v57 = v37;
          }

          else
          {
            v57 = v27;
          }

          v58 = 8 * v57 - 8;
          v59 = v28;
          v60 = v149;
          v30 = v149;
          v61 = v153;
          do
          {
            if (v60 != --v59)
            {
              v62 = *a3;
              if (!*a3)
              {
                goto LABEL_152;
              }

              v63 = *(v62 + v61);
              *(v62 + v61) = *(v62 + v58);
              *(v62 + v58) = v63;
            }

            ++v60;
            v58 -= 8;
            v61 += 8;
          }

          while (v60 < v59);
        }
      }

      else
      {
        v29 = v150;
        v30 = v149;
      }
    }

    v64 = *(a3 + 1);
    if (v28 < v64)
    {
      if (__OFSUB__(v28, v30))
      {
        goto LABEL_144;
      }

      if (v28 - v30 < v148)
      {
        break;
      }
    }

LABEL_58:
    if (v28 < v30)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v134 = *(v29 + 2);
      sub_1C458A358();
      v29 = v135;
    }

    a4 = *(v29 + 2);
    v91 = a4 + 1;
    if (a4 >= *(v29 + 3) >> 1)
    {
      sub_1C458A358();
      v29 = v136;
    }

    *(v29 + 2) = v91;
    v92 = v29 + 32;
    v93 = &v29[16 * a4 + 32];
    *v93 = v30;
    *(v93 + 1) = v28;
    v169 = *v151;
    if (!v169)
    {
      goto LABEL_153;
    }

    if (a4)
    {
      v159 = v28;
      while (1)
      {
        v94 = v91 - 1;
        v95 = &v92[2 * v91 - 2];
        v96 = &v29[16 * v91];
        if (v91 >= 4)
        {
          break;
        }

        if (v91 == 3)
        {
          v97 = *(v29 + 4);
          v98 = *(v29 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_79:
          if (v100)
          {
            goto LABEL_130;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_133;
          }

          v116 = v95[1];
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_138;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v91 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v91 < 2)
        {
          goto LABEL_132;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_94:
        if (v115)
        {
          goto LABEL_135;
        }

        v121 = *v95;
        v120 = v95[1];
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_137;
        }

        if (v122 < v114)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v94 - 1 >= v91)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v126 = *a3;
        if (!*a3)
        {
          goto LABEL_150;
        }

        a3 = &v92[2 * v94 - 2];
        v127 = *a3;
        v128 = v94;
        a4 = &v92[2 * v94];
        v129 = *(a4 + 8);
        v130 = v161;
        sub_1C45CD29C((v126 + 8 * *a3), (v126 + 8 * *a4), (v126 + 8 * v129), v169);
        v161 = v130;
        if (v130)
        {
          goto LABEL_122;
        }

        if (v129 < v127)
        {
          goto LABEL_125;
        }

        v131 = v92;
        v132 = *(v29 + 2);
        if (v128 > v132)
        {
          goto LABEL_126;
        }

        *a3 = v127;
        *(a3 + 1) = v129;
        if (v128 >= v132)
        {
          goto LABEL_127;
        }

        v91 = v132 - 1;
        sub_1C461950C((a4 + 16), v132 - 1 - v128, a4);
        *(v29 + 2) = v132 - 1;
        v133 = v132 > 2;
        a3 = v158;
        v28 = v159;
        v92 = v131;
        if (!v133)
        {
          goto LABEL_108;
        }
      }

      v101 = &v92[2 * v91];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_128;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_129;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_131;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_134;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = v95[1];
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_142;
        }

        if (v99 < v125)
        {
          v94 = v91 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v27 = *(a3 + 1);
    if (v28 >= v27)
    {
      goto LABEL_111;
    }
  }

  v65 = v30 + v148;
  if (__OFADD__(v30, v148))
  {
    goto LABEL_145;
  }

  if (v65 >= v64)
  {
    v65 = *(a3 + 1);
  }

  if (v65 < v30)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v28 == v65)
  {
    goto LABEL_58;
  }

  v150 = v29;
  v163 = *a3;
  v66 = v163 + 8 * v28 - 8;
  v149 = v30;
  v67 = v30 - v28;
  v152 = v65;
LABEL_41:
  v159 = v28;
  v68 = *(v163 + 8 * v28);
  v153 = v67;
  v155 = v66;
  v69 = v66;
  while (1)
  {
    v70 = *v69;
    v71 = v68;
    v72 = v70;
    v169 = v71;
    v73 = [v71 attributeSet];
    v74 = [v73 contentCreationDate];

    if (v74)
    {
      v75 = v168;
      sub_1C4EF9C78();

      v76 = *v167;
      v77 = v165;
      (*v167)(v165, v75, v15);
      sub_1C440BAA8(v77, 0, 1, v15);
      v76(v170, v77, v15);
    }

    else
    {
      v78 = v165;
      sub_1C440BAA8(v165, 1, 1, v15);
      sub_1C4EF9CC8();
      if (sub_1C44157D4(v78, 1, v15) != 1)
      {
        sub_1C44686E4(v165);
      }
    }

    v79 = [v72 attributeSet];
    v80 = [v79 contentCreationDate];

    if (v80)
    {
      v81 = v168;
      sub_1C4EF9C78();

      v82 = v166;
      v83 = *v167;
      (*v167)(v166, v81, v15);
      sub_1C440BAA8(v82, 0, 1, v15);
      v84 = v162;
      v83(v162, v82, v15);
      v85 = v15;
    }

    else
    {
      v86 = v166;
      sub_1C440BAA8(v166, 1, 1, v15);
      v84 = v162;
      sub_1C4EF9CC8();
      v85 = v15;
      if (sub_1C44157D4(v86, 1, v15) != 1)
      {
        sub_1C44686E4(v166);
      }
    }

    v87 = v170;
    a4 = sub_1C4EF9C18();
    v88 = *v164;
    (*v164)(v84, v85);
    v88(v87, v85);

    if ((a4 & 1) == 0)
    {
      v15 = v85;
LABEL_56:
      v28 = v159 + 1;
      v66 = v155 + 8;
      v67 = v153 - 1;
      if (v159 + 1 == v152)
      {
        v28 = v152;
        a3 = v158;
        v29 = v150;
        v30 = v149;
        goto LABEL_58;
      }

      goto LABEL_41;
    }

    if (!v163)
    {
      break;
    }

    v89 = *v69;
    v68 = *(v69 + 8);
    *v69 = v68;
    *(v69 + 8) = v89;
    v69 -= 8;
    v90 = __CFADD__(v67++, 1);
    v15 = v85;
    if (v90)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

uint64_t sub_1C45CD29C(void **a1, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  v7 = a2 - a1;
  v8 = a3 - a2;
  if (v7 >= v8)
  {
    sub_1C4474DF4(a2, a3 - a2, a4);
    v25 = a2;
    v11 = &v4[v8];
    v26 = -v4;
    __src = v4;
LABEL_15:
    v27 = v25 - 1;
    v28 = v5 - 1;
    v29 = v11 + v26;
    v49 = v25;
    while (v11 > v4 && v25 > v6)
    {
      v50 = v29;
      v31 = v28;
      v32 = v11;
      v33 = v11 - 1;
      v53 = *(v11 - 1);
      v34 = v27;
      v52 = *v27;
      v35 = v52;
      v36 = v53;
      v37 = v35;
      v38 = sub_1C45C968C(&v53, &v52);
      if (v51)
      {

        v25 = v49;
        v46 = v50 / 8;
        v44 = __src;
        if (v49 < __src || v49 >= &__src[v50 / 8])
        {
          memmove(v49, __src, 8 * v46);
          return 1;
        }

        if (v49 != __src)
        {
          v43 = 8 * v46;
          goto LABEL_41;
        }

        return 1;
      }

      v39 = v38;

      if (v39)
      {
        v5 = v31;
        v4 = __src;
        v25 = v34;
        v11 = v32;
        if (v31 + 1 != v49)
        {
          *v31 = *v34;
          v25 = v34;
        }

        goto LABEL_15;
      }

      v25 = v49;
      v27 = v34;
      if (v32 != v31 + 1)
      {
        *v31 = *v33;
      }

      v28 = v31 - 1;
      v29 = v50 - 8;
      v11 = v33;
      v4 = __src;
    }

LABEL_29:
    v40 = v11 - v4;
    if (v25 < v4 || v25 >= &v4[v40])
    {
      goto LABEL_40;
    }

LABEL_39:
    if (v25 == v4)
    {
      return 1;
    }

    goto LABEL_40;
  }

  sub_1C4474DF4(a1, a2 - a1, a4);
  v10 = a2;
  v11 = &v4[v7];
  while (1)
  {
    if (v4 >= v11 || v10 >= v5)
    {
      v25 = v6;
      goto LABEL_29;
    }

    v13 = v11;
    v14 = v5;
    v15 = v6;
    v16 = v10;
    v53 = *v10;
    v52 = *v4;
    v17 = v52;
    v18 = v53;
    v19 = v17;
    v20 = sub_1C45C968C(&v53, &v52);
    if (v51)
    {
      break;
    }

    v21 = v20;
    v51 = 0;

    if (v21)
    {
      v22 = v16;
      v10 = v16 + 1;
      v23 = v15 == v16;
    }

    else
    {
      v22 = v4;
      v23 = v15 == v4++;
      v10 = v16;
    }

    v11 = v13;
    if (!v23)
    {
      *v15 = *v22;
    }

    v6 = v15 + 1;
    v5 = v14;
  }

  v40 = v13 - v4;
  v25 = v15;
  if (v15 >= v4 && v15 < &v4[v40])
  {
    goto LABEL_39;
  }

LABEL_40:
  v43 = 8 * v40;
  v44 = v4;
LABEL_41:
  memmove(v25, v44, v43);
  return 1;
}

uint64_t sub_1C45CD5D4()
{
  v0 = sub_1C456902C(&qword_1EC0B9978, &unk_1C4F10528);
  sub_1C43FBD18(v0);
  v2 = *(v1 + 80);
  return sub_1C45CB8CC();
}

uint64_t sub_1C45CD678()
{
  v1 = sub_1C456902C(&qword_1EC0B9978, &unk_1C4F10528);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t AutonamingMessagesUpdateHandler.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AutonamingMessagesUpdateHandler.init(config:)(a1);
  return v2;
}

uint64_t AutonamingMessagesUpdateHandler.init(config:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Configuration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C45BC174(v12);
  memcpy((v2 + 16), v12, 0x70uLL);
  *(v2 + 136) = 257;
  sub_1C44098F0(a1, v7);
  memcpy(__dst, (v2 + 16), sizeof(__dst));
  type metadata accessor for AutonamingMessagesBookmarkHandler();
  v8 = swift_allocObject();
  sub_1C45BC048(__dst, v11);
  sub_1C45B6BA0(v7, __dst);
  v9 = sub_1C43FBD30();
  sub_1C4467948(v9);
  *(v2 + 128) = v8;
  return v2;
}

double sub_1C45CD860()
{
  v67 = *MEMORY[0x1E69E9840];
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v5 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v6 = sub_1C44B90E0(v4);
  *&v66[0] = 0;
  v7 = [v6 openAndWaitWithUpgrade:0 error:v66];
  v8 = *&v66[0];
  if (!v7)
  {
    v17 = *&v66[0];
    v18 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDDFECB8);
    v20 = sub_1C43FBD30();
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      sub_1C4404B90();
      _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
      sub_1C4423A0C(v24, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      sub_1C43FEA20();
    }

    else
    {
    }

    goto LABEL_34;
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v6 photoLibraryURL];
  sub_1C4EF98C8();

  v12 = sub_1C4EF9868();
  (*(v1 + 8))(v4, v0);
  v13 = [v9 faceAnalysisTaskID];
  *&v66[0] = 0;
  v14 = [v9 queryProgressDetail:v66 forPhotoLibraryURL:v12 andTaskID:v13];

  v15 = *&v66[0];
  if (!*&v66[0])
  {
LABEL_29:
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v52 = sub_1C4F00978();
    sub_1C442B738(v52, qword_1EDDFECB8);
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CD8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = sub_1C43FCED0();
      *v55 = 0;
      _os_log_impl(&dword_1C43F8000, v53, v54, "MediaAnalysis Photos progress failed, set to 100%% by default", v55, 2u);
      sub_1C43FBE2C();
    }

LABEL_34:
    v42 = 1.0;
    goto LABEL_35;
  }

  if (v14)
  {
    v16 = *&v66[0];
    goto LABEL_29;
  }

  v32 = *MEMORY[0x1E6978B38];
  *&v64 = sub_1C4F01138();
  *(&v64 + 1) = v33;
  v34 = v15;
  v35 = [v34 __swift_objectForKeyedSubscript_];
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66[0] = v64;
  v66[1] = v65;
  v36 = *MEMORY[0x1E6978B40];
  *&v62 = sub_1C4F01138();
  *(&v62 + 1) = v37;
  v38 = [v34 __swift_objectForKeyedSubscript_];
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  sub_1C443E52C(&v64, &v62);
  if (!*(&v63 + 1))
  {
    goto LABEL_27;
  }

  if ((sub_1C440D06C() & 1) == 0)
  {
    goto LABEL_19;
  }

  v39 = v61;
  if (v61 == 0.0)
  {
    goto LABEL_19;
  }

  sub_1C443E52C(v66, &v62);
  if (!*(&v63 + 1))
  {
LABEL_27:

    sub_1C442FB14(&v64);
    sub_1C442FB14(v66);
    v40 = &v62;
    goto LABEL_28;
  }

  if ((sub_1C440D06C() & 1) == 0)
  {
LABEL_19:

    sub_1C442FB14(&v64);
    v40 = v66;
LABEL_28:
    sub_1C442FB14(v40);
    goto LABEL_29;
  }

  v41 = v61;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    v60 = v58;
    swift_once();
    v41 = v60;
  }

  v42 = v41 / v39;
  v43 = sub_1C4F00978();
  sub_1C442B738(v43, qword_1EDDFECB8);
  v44 = sub_1C4F00968();
  v45 = sub_1C4F01CC8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = v42 * 100.0;
    sub_1C4404B90();
    _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
    sub_1C43FEA20();
  }

  sub_1C4423A0C(&v64, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  sub_1C4423A0C(v66, &qword_1EC0BCD10, &qword_1C4F0C8C0);

LABEL_35:
  v56 = *MEMORY[0x1E69E9840];
  return v42;
}

uint64_t sub_1C45CDEF0()
{
  *(v1 + 16) = v0;
  v2 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C45CDF18()
{
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v3 = sub_1C4F00978();
  *(v1 + 24) = sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CC8();
  if (sub_1C4402B64(v5))
  {
    v6 = sub_1C43FCED0();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, v4, v0, "AutonamingMessagesUpdateHandler processAutonamingMessagesBiome called", v6, 2u);
    sub_1C43FBE2C();
  }

  v7 = *(v1 + 16);

  *(v7 + 136) = 257;
  v8 = sub_1C45CD860();
  *(v1 + 32) = v8;
  if (*(v7 + 136) == 1)
  {
    if ((sub_1C4F01948() & 1) == 0)
    {
      v20 = *(v1 + 16);
      v21 = *(v1 + 24);

      v22 = sub_1C4F00968();
      v23 = sub_1C4F01CC8();
      if (sub_1C4402B64(v23))
      {
        v24 = swift_slowAlloc();
        sub_1C4410960(v24, 1.5047e-36);
        *(v24 + 8) = 1024;
        *(v24 + 10) = (sub_1C4F01948() & 1) == 0;
        sub_1C4404B90();
        _os_log_impl(v25, v26, v27, v28, v29, 0xEu);
        sub_1C43FEA20();
      }

      else
      {
        v33 = *(v1 + 16);
      }

      sub_1C4416D60();
      v34 = swift_task_alloc();
      *(v1 + 40) = v34;
      *v34 = v1;
      sub_1C442C454(v34);
      sub_1C4431F20();

      return sub_1C45B7994();
    }

    v8 = *(v1 + 32);
  }

  v9 = sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  if (static NSUserDefaults.autonamingMessagesPhotosProcessingProgress.getter() > v8)
  {
    v10 = *(v1 + 24);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CC8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v1 + 32);
      v14 = swift_slowAlloc();
      *(v14 + 14) = sub_1C43FFD68(v14, 3.8521e-34) * v2;
      sub_1C4433104(&dword_1C43F8000, v15, v16, "AutonamingMessages processing will not commence, photos processing at %f%% has not reached satisfactory percentage of %f%%");
      sub_1C43FBE2C();
    }

    v17 = *(v1 + 16);

    *(v17 + 137) = 0;
LABEL_13:
    sub_1C43FBDA0();
    sub_1C4431F20();

    __asm { BRAA            X1, X16 }
  }

  if (sub_1C4F01948())
  {
    goto LABEL_13;
  }

  sub_1C4416D60();
  *(v1 + 48) = v9;
  v30 = swift_task_alloc();
  *(v1 + 56) = v30;
  *v30 = v1;
  sub_1C441F428(v30);
  sub_1C4431F20();

  return sub_1C45B9D9C();
}

uint64_t sub_1C45CE214()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v0;
  *(v2 + 88) = v6;

  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C45CE300()
{
  *(*(v0 + 16) + 136) = *(v0 + 88);
  if (*(v0 + 88) == 1 && (sub_1C4F01948() & 1) == 0)
  {
    v14 = *(v0 + 16);
    v15 = *(v0 + 24);

    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CC8();
    if (sub_1C4402B64(v17))
    {
      v18 = swift_slowAlloc();
      sub_1C4410960(v18, 1.5047e-36);
      *(v18 + 8) = 1024;
      *(v18 + 10) = (sub_1C4F01948() & 1) == 0;
      sub_1C4404B90();
      _os_log_impl(v19, v20, v21, v22, v23, 0xEu);
      sub_1C43FEA20();
    }

    else
    {
      v27 = *(v0 + 16);
    }

    sub_1C4416D60();
    v28 = swift_task_alloc();
    *(v0 + 40) = v28;
    *v28 = v0;
    sub_1C442C454();
    sub_1C4431F20();

    return sub_1C45B7994();
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
    if (static NSUserDefaults.autonamingMessagesPhotosProcessingProgress.getter() > v2)
    {
      v4 = *(v0 + 24);
      v5 = sub_1C4F00968();
      v6 = sub_1C4F01CC8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 32);
        v8 = swift_slowAlloc();
        *(v8 + 14) = sub_1C43FFD68(v8, 3.8521e-34) * v1;
        sub_1C4433104(&dword_1C43F8000, v9, v10, "AutonamingMessages processing will not commence, photos processing at %f%% has not reached satisfactory percentage of %f%%");
        sub_1C43FBE2C();
      }

      v11 = *(v0 + 16);

      *(v11 + 137) = 0;
LABEL_8:
      sub_1C43FBDA0();
      sub_1C4431F20();

      __asm { BRAA            X1, X16 }
    }

    if (sub_1C4F01948())
    {
      goto LABEL_8;
    }

    sub_1C4416D60();
    *(v0 + 48) = v3;
    v24 = swift_task_alloc();
    *(v0 + 56) = v24;
    *v24 = v0;
    sub_1C441F428(v24);
    sub_1C4431F20();

    return sub_1C45B9D9C();
  }
}

uint64_t sub_1C45CE560()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v0;
  *(v2 + 64) = v6;

  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C45CE64C()
{
  sub_1C43FBCD4();
  if (!v0[8])
  {
LABEL_5:
    sub_1C43FBDA0();

    return v4();
  }

  v1 = *(v0[2] + 137);
  v0[9] = 0;
  if (v1 != 1 || (v2 = sub_1C4F01948(), v3 = v0[8], (v2 & 1) != 0))
  {

    goto LABEL_5;
  }

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  sub_1C4406694(v6);

  return sub_1C45BAE28();
}

uint64_t sub_1C45CE718()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 80);
  *v3 = *v0;
  *(v2 + 89) = v6;

  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C45CE804()
{
  v1 = *(v0 + 72);
  *(*(v0 + 16) + 137) = *(v0 + 89);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    return;
  }

  v2 = *(v0 + 89);
  *(v0 + 72) = v1 + 1;
  if (v2 == 1)
  {
    v3 = sub_1C4F01948();
    v4 = *(v0 + 64);
    if ((v3 & 1) == 0)
    {
      v5 = swift_task_alloc();
      *(v0 + 80) = v5;
      *v5 = v0;
      sub_1C4406694();

      sub_1C45BAE28();
      return;
    }
  }

  else
  {
    v6 = *(v0 + 64);
  }

  sub_1C43FBDA0();

  v7();
}

void sub_1C45CE8F4()
{
  v1 = *(v0 + 128);
  if (sub_1C45B70B8())
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v3 = sub_1C4F01CC8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = sub_1C43FCED0();
      *v4 = 0;
      v5 = "Reset request for autonaming boomark handler completed";
LABEL_10:
      _os_log_impl(&dword_1C43F8000, oslog, v3, v5, v4, 2u);
      sub_1C43FBE2C();
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v3 = sub_1C4F01CD8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = sub_1C43FCED0();
      *v4 = 0;
      v5 = "Reset request for autonaming boomark handler unexpectedly failed";
      goto LABEL_10;
    }
  }
}

void *AutonamingMessagesUpdateHandler.deinit()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v5 = v0[12];
  v7 = v0[14];
  v6 = v0[15];

  v8 = v0[16];

  return v0;
}

uint64_t AutonamingMessagesUpdateHandler.__deallocating_deinit()
{
  AutonamingMessagesUpdateHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t BasicProperty.init(mapLocation:value:enumLookupValue:mapPredicates:constructRelationship:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_1C45CEB88()
{
  if (qword_1EC0B70E0 != -1)
  {
    swift_once();
  }

  qword_1EC0B9988 = qword_1EC0C3788;
  *&qword_1EC0B9990 = *&qword_1EC0C3790;
  qword_1EC0B99A0 = qword_1EC0C37A0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C45CEC08()
{
  if (qword_1EC0B6898 != -1)
  {
    sub_1C441F44C();
  }

  return &qword_1EC0B9988;
}

uint64_t static BasicProperty.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B6898 != -1)
  {
    sub_1C441F44C();
  }

  swift_beginAccess();
  v2 = qword_1EC0B99A0;
  *a1 = qword_1EC0B9988;
  *(a1 + 8) = *&qword_1EC0B9990;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static BasicProperty.type.setter(uint64_t a1)
{
  v1 = *a1;
  v4 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (qword_1EC0B6898 != -1)
  {
    sub_1C441F44C();
  }

  swift_beginAccess();
  qword_1EC0B9988 = v1;
  *&qword_1EC0B9990 = v4;
  qword_1EC0B99A0 = v2;
}

uint64_t (*static BasicProperty.type.modify())()
{
  if (qword_1EC0B6898 != -1)
  {
    sub_1C441F44C();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C45CEDD4@<X0>(uint64_t a1@<X8>)
{
  sub_1C45CEC08();
  swift_beginAccess();
  v2 = qword_1EC0B99A0;
  *a1 = qword_1EC0B9988;
  *(a1 + 8) = *&qword_1EC0B9990;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C45CEE3C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v4 = *(a1 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45CEC08();
  swift_beginAccess();
  qword_1EC0B9988 = v1;
  *&qword_1EC0B9990 = v4;
  qword_1EC0B99A0 = v2;
}

uint64_t BasicProperty.mapLocation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t BasicProperty.mapLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BasicProperty.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t BasicProperty.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t BasicProperty.enumLookupValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t BasicProperty.enumLookupValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t BasicProperty.mapPredicates.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void static BasicProperty.currentUser.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "isCurrentUser");
  *(a1 + 14) = -4864;
  sub_1C4410980(a1);
}

void static BasicProperty.inferredDeviceUser.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000014;
  a1[1] = 0x80000001C4F8BE80;
  sub_1C4410980(a1);
}

void sub_1C45CF110()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = type metadata accessor for MapPredicate(0);
  v5 = sub_1C43FCDF8(v4);
  v54 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v48 - v10);
  v12 = sub_1C456902C(&qword_1EC0B8A60, &unk_1C4F0DE80);
  sub_1C43FCDF8(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v48 - v18;
  v20 = sub_1C4B590DC(v3, *v0, v0[1], v0[4], v0[5]);
  if (!v1)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      v48[1] = 0;
      v49 = v0;
      v22 = v12[12];
      v52 = v12[16];
      v53 = v22;
      v51 = &v19[v12[20]];
      v23 = *(v14 + 80);
      v24 = MEMORY[0x1E69E7CC0];
      v48[0] = v20;
      v25 = v20 + ((v23 + 32) & ~v23);
      v50 = *(v14 + 72);
      do
      {
        v55 = v21;
        sub_1C45D1C78();
        v26 = *v51;
        v27 = *(v51 + 1);
        v28 = v19;
        v29 = v4[5];
        v30 = sub_1C4EFEEF8();
        sub_1C43FCE50(v30);
        v32 = v11 + v29;
        v19 = v28;
        (*(v31 + 32))(v32, v28);
        v33 = v4[6];
        sub_1C45D1CCC();
        v34 = v4[7];
        sub_1C45D1CCC();
        *v11 = v26;
        v11[1] = v27;
        sub_1C440D08C();
        sub_1C45D1B80();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = *(v24 + 16);
          v39 = sub_1C43FCEC0();
          sub_1C458AE3C(v39, v40, v41, v24);
          v24 = v42;
        }

        v36 = *(v24 + 16);
        v35 = *(v24 + 24);
        if (v36 >= v35 >> 1)
        {
          v43 = sub_1C43FFD98(v35);
          sub_1C458AE3C(v43, v44, v45, v24);
          v24 = v46;
        }

        sub_1C45D1BD4(v11);
        *(v24 + 16) = v36 + 1;
        v37 = v24 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v36;
        sub_1C44DD6F4();
        v25 += v50;
        v21 = v55 - 1;
      }

      while (v55 != 1);

      v0 = v49;
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
    }

    v47 = v0[6];

    v0[6] = v24;
  }

  sub_1C43FBC80();
}

void BasicProperty.constructRows(entityIdentifier:source:sourceId:map:relationshipId:pipelineType:)()
{
  sub_1C43FE96C();
  v3 = v2;
  v29 = v4;
  v27 = v5;
  v28 = v6;
  v26 = v7;
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = sub_1C4EFF0C8();
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *v3;
  if (*(v0 + 48) || (sub_1C45CF110(), !v1))
  {
    sub_1C45D1C78();
    if (sub_1C44157D4(v13, 1, v14) == 1)
    {
      sub_1C4423A0C(v13, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C45CF650();
      swift_allocError();
      *v24 = 4;
      swift_willThrow();
    }

    else
    {
      (*(v17 + 32))(v22, v13, v14);
      sub_1C45CF6A4(v22, v26, v27, v28, *(v0 + 48), *(v0 + 56), v29, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v23);
      (*(v17 + 8))(v22, v14);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C45CF650()
{
  result = qword_1EC0B99A8;
  if (!qword_1EC0B99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B99A8);
  }

  return result;
}

uint64_t sub_1C45CF6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, unsigned __int8 a12)
{
  v362 = a8;
  v378 = a3;
  v379 = a4;
  v377 = a2;
  v383 = a1;
  v376 = sub_1C4EFF0C8();
  v14 = sub_1C43FCDF8(v376);
  v393 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = type metadata accessor for EntityTriple(0);
  v384 = sub_1C43FCDF8(v21);
  v385 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v384);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  v353 = &v339 - v31;
  v32 = sub_1C4EFF8A8();
  v33 = sub_1C43FCDF8(v32);
  v372 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v386 = v38 - v37;
  v39 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v39);
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  v365 = &v339 - v43;
  v389 = sub_1C4EFEEF8();
  v44 = sub_1C43FCDF8(v389);
  v367 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v371 = v49 - v48;
  v50 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v50);
  v52 = *(v51 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v339 - v54;
  v56 = sub_1C4EFD548();
  v57 = sub_1C43FCDF8(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v63);
  v382 = &v339 - v64;
  v392 = type metadata accessor for MapPredicate(0);
  v65 = sub_1C43FCDF8(v392);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBCC4();
  v390 = (v71 - v70);
  v72 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v73 = sub_1C43FBD18(v72);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v339 - v77;
  if (!a5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v345 = v20;
  v79 = *(a5 + 16);
  if (!v79)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v387 = v56;
  LODWORD(v359) = a6;
  v391 = v79;
  v375 = a12;
  sub_1C45D1C78();
  v81 = (a5 + ((*(v67 + 80) + 32) & ~*(v67 + 80)));
  v363 = v59 + 32;
  v380 = *(v67 + 72);
  v356 = (v367 + 4);
  v347 = v372 + 32;
  v350 = v59 + 16;
  v366 = (v372 + 16);
  v381 = (v393 + 2);
  v373 = (v367 + 2);
  v82 = HIBYTE(a9) & 0xF;
  v360 = a9;
  if ((a9 & 0x2000000000000000) == 0)
  {
    v82 = v362 & 0xFFFFFFFFFFFFLL;
  }

  v368 = v82;
  v83 = HIBYTE(a11) & 0xF;
  v344 = a10;
  v84 = v32;
  if ((a11 & 0x2000000000000000) == 0)
  {
    v83 = a10 & 0xFFFFFFFFFFFFLL;
  }

  v358 = a11;
  v355 = v372 + 8;
  v354 = (v367 + 1);
  v367 = (v59 + 8);
  v343 = v393 + 1;
  v346 = v83;
  if (a11)
  {
    v85 = v83 == 0;
  }

  else
  {
    v85 = 1;
  }

  v86 = MEMORY[0x1E69E7CC0];
  v87 = v85;
  v342 = v87;
  *&v80 = 136380931;
  v339 = v80;
  v372 = MEMORY[0x1E69E7CC0];
  v370 = v84;
  v88 = v392;
  v89 = v390;
  v388 = v78;
  v357 = v55;
  while (1)
  {
    v393 = v86;
    sub_1C440D08C();
    sub_1C45D1B80();
    v90 = v88[6];
    v86 = &unk_1C4F319B0;
    sub_1C45D1C78();
    v91 = v387;
    if (sub_1C44157D4(v55, 1, v387) != 1)
    {
      break;
    }

    v92 = v55;
    v93 = v55;
    v94 = &qword_1EC0B8568;
LABEL_18:
    sub_1C4423A0C(v93, v94, v86);
    v101 = v89;
    v102 = v89[1];
    if (!v102)
    {
      goto LABEL_27;
    }

    v103 = *v101;
    v104 = HIBYTE(v102) & 0xF;
    if ((v102 & 0x2000000000000000) == 0)
    {
      v104 = *v101 & 0xFFFFFFFFFFFFLL;
    }

    if (v104)
    {
      sub_1C4434DF8();
      v105 = sub_1C4404090();
      v106(v105);
      v107 = v392[5];
      v108 = v384;
      v109 = *(v384 + 20);
      sub_1C442DD54();
      v112(v86 + v110, v101 + v111, v389);
      v113 = v108[6];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF888();
      v114 = v86 + v108[7];
      sub_1C4EFEC38();
      v115 = v108[9];
      sub_1C44190C4();
      sub_1C45D1B80();
      v116 = (v86 + v108[8]);
      *v116 = v103;
      v116[1] = v102;
      v117 = (v86 + v108[10]);
      v118 = v379;
      *v117 = v378;
      v117[1] = v118;
      *(v86 + v108[11]) = 0;
      *(v86 + v108[12]) = v375;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v55 = v92;
      if ((sub_1C443FA60() & 1) == 0)
      {
        v283 = v86[2];
        v284 = sub_1C43FCEC0();
        sub_1C44C9240(v284, v285, v286, v86);
        v86 = v287;
      }

      sub_1C43FEBA4();
      if (v120)
      {
        v288 = sub_1C43FFD98(v119);
        sub_1C44C9240(v288, v289, v290, v86);
        v86 = v291;
      }

      v121 = v390;
      sub_1C45D1BD4(v390);
      v86[2] = v102;
      v89 = v121;
      sub_1C441180C();
      sub_1C44066C0(v86 + v122);
      v123 = &v398;
    }

    else
    {
LABEL_27:
      v55 = v92;
      if (v368)
      {
        sub_1C4434DF8();
        v124 = v369;
        v125(v369, v383, v376);
        sub_1C442FB2C();
        sub_1C442DD54();
        v128(v124 + v126, v390 + v127, v389);
        v129 = v124 + v91[6];
        sub_1C4EFF888();
        v130 = v124 + v91[7];
        sub_1C4EFEC38();
        v131 = v91[9];
        sub_1C44190C4();
        sub_1C45D1B80();
        v132 = (v124 + v91[8]);
        v133 = v360;
        *v132 = v362;
        v132[1] = v133;
        v134 = (v124 + v91[10]);
        v135 = v379;
        *v134 = v378;
        v134[1] = v135;
        *(v124 + v91[11]) = 0;
        *(v124 + v91[12]) = v375;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((sub_1C443FA60() & 1) == 0)
        {
          v292 = v86[2];
          v293 = sub_1C43FCEC0();
          sub_1C44C9240(v293, v294, v295, v86);
          v86 = v296;
        }

        sub_1C43FEBA4();
        if (v120)
        {
          v297 = sub_1C43FFD98(v136);
          sub_1C44C9240(v297, v298, v299, v86);
          v86 = v300;
        }

        v137 = v390;
        sub_1C45D1BD4(v390);
        v86[2] = v133;
        v89 = v137;
        sub_1C441180C();
        sub_1C44066C0(v86 + v138);
        v123 = &v397;
      }

      else
      {
        v89 = v390;
        v86 = v393;
        if (!v358)
        {
          sub_1C45D1BD4(v390);
          goto LABEL_34;
        }

        v88 = v392;
        v140 = v388;
        if (!v346)
        {
          sub_1C45D1BD4(v390);
          goto LABEL_35;
        }

        sub_1C4434DF8();
        v146 = sub_1C44258FC();
        v147(v146);
        v148 = v88[5];
        v149 = v384;
        v150 = *(v384 + 20);
        sub_1C442DD54();
        v153(v89 + v151, v89 + v152, v389);
        v154 = v149[6];
        v155 = v358;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFF888();
        v156 = v89 + v149[7];
        sub_1C4EFEC38();
        v157 = v149[9];
        sub_1C44190C4();
        sub_1C45D1B80();
        v158 = (v89 + v149[8]);
        *v158 = v344;
        v158[1] = v155;
        sub_1C43FD124();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v321 = v86[2];
          v322 = sub_1C43FCEC0();
          sub_1C44C9240(v322, v323, v324, v86);
          v86 = v325;
        }

        sub_1C43FEBA4();
        if (v120)
        {
          v326 = sub_1C43FFD98(v159);
          sub_1C44C9240(v326, v327, v328, v86);
          v86 = v329;
        }

        v160 = v390;
        sub_1C45D1BD4(v390);
        v86[2] = v89;
        v89 = v160;
        sub_1C441180C();
        sub_1C44066C0(v86 + v161);
        v123 = &v380;
      }
    }

    v139 = *(v123 - 32);
    sub_1C44DD6F4();
LABEL_34:
    v88 = v392;
    v140 = v388;
LABEL_35:
    v81 += v380;
    if (!--v391)
    {
      sub_1C4423A0C(v140, &qword_1EC0B9A10, &qword_1C4F107C0);
      sub_1C4409A34();

      return v86;
    }
  }

  sub_1C4402C08(v395);
  v95 = v382;
  v96(v382, v55, v91);
  v97 = v89 + v88[7];
  v98 = v365;
  v86 = &unk_1C4F107B0;
  sub_1C45D1C78();
  v99 = v389;
  if (sub_1C44157D4(v98, 1, v389) == 1)
  {
    v92 = v55;
    sub_1C4402C08(&v396);
    v100(v95, v91);
    v93 = v98;
    v94 = &qword_1EC0B9A08;
    goto LABEL_18;
  }

  sub_1C4402C08(&v388);
  v141(v371, v98, v99);
  v140 = v388;
  v142 = v361;
  sub_1C45D1C78();
  v143 = v370;
  if (sub_1C44157D4(v142, 1, v370) == 1)
  {
    sub_1C4402C08(&v381);
    v144(v349, v382, v91);
    v145 = v361;
    sub_1C4EFF838();
    sub_1C4423A0C(v140, &qword_1EC0B9A10, &qword_1C4F107C0);
    if (sub_1C44157D4(v145, 1, v143) != 1)
    {
      sub_1C4423A0C(v145, &qword_1EC0B9A10, &qword_1C4F107C0);
    }
  }

  else
  {
    sub_1C4423A0C(v140, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4402C08(&v377);
    v162(v386, v142, v143);
  }

  v364 = *v366;
  v364(v140, v386, v143);
  sub_1C440BAA8(v140, 0, 1, v143);
  v163 = v89[1];
  if (!v163)
  {
    goto LABEL_57;
  }

  v164 = *v89;
  v165 = HIBYTE(v163) & 0xF;
  if ((v163 & 0x2000000000000000) == 0)
  {
    v165 = *v89 & 0xFFFFFFFFFFFFLL;
  }

  if (!v165)
  {
LABEL_57:
    if (v368)
    {
      sub_1C4434DF8();
      v186 = sub_1C44258FC();
      v187(v186);
      sub_1C442FB2C();
      v86 = v373;
      v188 = *v373;
      (*v373)(v89 + v189, v390 + v190, v389);
      sub_1C4404B9C();
      v192 = *(v191 - 256);
      sub_1C440DE70();
      v193();
      v194 = sub_1C441EA78();
      v188(v194);
      v195 = v91[9];
      sub_1C44190C4();
      sub_1C45D1B80();
      v196 = (v89 + v91[8]);
      v197 = v360;
      *v196 = v362;
      v196[1] = v197;
      sub_1C43FD124();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((sub_1C443FA60() & 1) == 0)
      {
        v311 = v86[2];
        v312 = sub_1C43FCEC0();
        sub_1C44C9240(v312, v313, v314, v86);
        v86 = v315;
      }

      v183 = v372;
      v185 = v387;
      sub_1C43FEBA4();
      v182 = v370;
      if (!v120)
      {
        v184 = v86;
        v199 = &v384;
LABEL_70:
        v213 = *(v199 - 32);
        goto LABEL_71;
      }

      v316 = sub_1C43FFD98(v198);
      sub_1C44C9240(v316, v317, v318, v86);
      v319 = &v384;
    }

    else
    {
      if (v342)
      {
        v89 = v390;
        result = sub_1C4409A34();
        v185 = v387;
        v182 = v370;
        v86 = v393;
        goto LABEL_72;
      }

      sub_1C4434DF8();
      v201 = sub_1C44258FC();
      v202(v201);
      sub_1C442FB2C();
      v86 = v373;
      v203 = *v373;
      (*v373)(v89 + v204, v390 + v205, v389);
      sub_1C4404B9C();
      v182 = *(v206 - 256);
      sub_1C440DE70();
      v207();
      v208 = sub_1C441EA78();
      v203(v208);
      v209 = v91[9];
      sub_1C44190C4();
      sub_1C45D1B80();
      v210 = (v89 + v91[8]);
      v211 = v358;
      *v210 = v344;
      v210[1] = v211;
      sub_1C43FD124();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((sub_1C443FA60() & 1) == 0)
      {
        v330 = v86[2];
        v331 = sub_1C43FCEC0();
        sub_1C44C9240(v331, v332, v333, v86);
        v86 = v334;
      }

      v183 = v372;
      v185 = v387;
      sub_1C43FEBA4();
      if (!v120)
      {
        v184 = v86;
        v199 = v374;
        goto LABEL_70;
      }

      v335 = sub_1C43FFD98(v212);
      sub_1C44C9240(v335, v336, v337, v86);
      v319 = v374;
    }

    v338 = *(v319 - 32);
    v86 = v184;
    goto LABEL_71;
  }

  v348 = v81;
  sub_1C4434DF8();
  v166 = sub_1C4404090();
  v167(v166);
  v168 = v384;
  v169 = v389;
  v170 = v371;
  v171 = *v373;
  (*v373)(&qword_1C4F107C0 + *(v384 + 20), v89 + v392[5], v389);
  v172 = &qword_1C4F107C0 + v168[6];
  sub_1C440DE70();
  v173();
  v171(&qword_1C4F107C0 + v168[7], v170, v169);
  v174 = v168[9];
  sub_1C44190C4();
  sub_1C45D1B80();
  v175 = (&qword_1C4F107C0 + v168[8]);
  *v175 = v164;
  v175[1] = v163;
  v176 = (&qword_1C4F107C0 + v168[10]);
  v177 = v379;
  *v176 = v378;
  v176[1] = v177;
  *(&qword_1C4F107C0 + v168[11]) = 0;
  *(&qword_1C4F107C0 + v168[12]) = v375;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v178 = sub_1C4409A34();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v86 = v393;
    v179 = v178;
  }

  else
  {
    v301 = *(v178 + 16);
    v302 = sub_1C43FCEC0();
    sub_1C44C9240(v302, v303, v304, v305);
    v179 = v306;
    v86 = v393;
  }

  v181 = *(v179 + 16);
  v180 = *(v179 + 24);
  v89 = (v181 + 1);
  v182 = v370;
  v55 = v357;
  v81 = v348;
  if (v181 >= v180 >> 1)
  {
    v307 = sub_1C43FFD98(v180);
    sub_1C44C9240(v307, v308, v309, v310);
    v183 = v184;
  }

  else
  {
    v183 = v179;
    v184 = v179;
  }

  v185 = v387;
LABEL_71:
  v184[2] = v89;
  sub_1C441180C();
  sub_1C44066C0(v214 + v215);
  sub_1C44DD6F4();
  v89 = v390;
  result = v183;
  v140 = v388;
LABEL_72:
  v216 = v86[2];
  v372 = result;
  if (!v216)
  {
    sub_1C4402C08(&v387);
    v228(v386, v182);
    v229 = sub_1C4416D6C();
    v230(v229);
    sub_1C4402C08(&v396);
    v231(v382, v185);
    sub_1C45D1BD4(v89);
    v88 = v392;
    goto LABEL_35;
  }

  v217 = *(result + 16);
  v218 = v216 + v217;
  if (!__OFADD__(v216, v217))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v218 > (v86[3] >> 1))
    {
      if (v216 <= v218)
      {
        v220 = v216 + v217;
      }

      else
      {
        v220 = v216;
      }

      sub_1C44C9240(isUniquelyReferenced_nonNull_native, v220, 1, v86);
      v86 = v221;
    }

    v222 = v352;
    result = sub_1C4409A34();
    if (*(result + 16))
    {
      v223 = v86[2];
      if (((v86[3] >> 1) - v223) < v217)
      {
        goto LABEL_106;
      }

      v224 = v86 + ((*(v385 + 80) + 32) & ~*(v385 + 80)) + *(v385 + 72) * v223;
      swift_arrayInitWithCopy();

      if (v217)
      {
        v225 = v86[2];
        v226 = __OFADD__(v225, v217);
        v227 = v225 + v217;
        if (v226)
        {
          goto LABEL_107;
        }

        v86[2] = v227;
      }
    }

    else
    {

      if (v217)
      {
        goto LABEL_105;
      }
    }

    if ((v359 & 1) == 0)
    {
      sub_1C4402C08(&v387);
      v255(v386, v182);
      v256 = sub_1C4416D6C();
      v257(v256);
      sub_1C4402C08(&v396);
      v258(v382, v185);
      v89 = v390;
      sub_1C45D1BD4(v390);
      LODWORD(v359) = 0;
      v88 = v392;
      v55 = v357;
      goto LABEL_35;
    }

    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v393 = v86;
    v232 = sub_1C4F00978();
    sub_1C442B738(v232, qword_1EDE2DE10);
    v233 = v345;
    v234 = v376;
    v359 = *v381;
    v359(v345, v383, v376);
    sub_1C4402C08(&v381);
    v235(v222, v382, v185);
    v236 = v234;
    v237 = sub_1C4F00968();
    v238 = sub_1C4F01CF8();
    if (os_log_type_enabled(v237, v238))
    {
      v239 = swift_slowAlloc();
      v341 = swift_slowAlloc();
      v394 = v341;
      *v239 = v339;
      sub_1C45D1C30(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
      v340 = v237;
      v240 = sub_1C4F02858();
      v241 = v238;
      v242 = v222;
      v244 = v243;
      sub_1C4402C08(&v371);
      v245(v233, v236);
      v246 = sub_1C441D828(v240, v244, &v394);

      *(v239 + 4) = v246;
      *(v239 + 12) = 2080;
      v247 = sub_1C4EFD2F8();
      v249 = v248;
      v348 = *v367;
      (v348)(v242, v185);
      v250 = sub_1C441D828(v247, v249, &v394);

      *(v239 + 14) = v250;
      v251 = v340;
      _os_log_impl(&dword_1C43F8000, v340, v241, "StandardEntityMapper: constructBasicPropertyRows relationship: %{private}s relPred isA %s", v239, 0x16u);
      v252 = v341;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v252, -1, -1);
      v182 = v370;
      MEMORY[0x1C6942830](v239, -1, -1);
    }

    else
    {

      v348 = *v367;
      (v348)(v222, v185);
      sub_1C4402C08(&v371);
      v259(v233, v236);
    }

    v253 = v236;
    v254 = v390;
    v55 = v357;
    v260 = v351;
    v359(v351, v383, v253);
    v261 = v392[5];
    v262 = v384;
    v263 = *(v384 + 20);
    sub_1C442DD54();
    v266(v260 + v264, v254 + v265, v389);
    v267 = v262[6];
    sub_1C440DE70();
    v268();
    v269 = v260 + v262[7];
    sub_1C4EFEBB8();
    v270 = sub_1C4EFD2F8();
    v272 = v271;
    v273 = v262[9];
    sub_1C44190C4();
    sub_1C45D1B80();
    v274 = (v260 + v262[8]);
    *v274 = v270;
    v274[1] = v272;
    v275 = (v260 + v262[10]);
    v276 = v379;
    *v275 = v378;
    v275[1] = v276;
    *(v260 + v262[11]) = 0;
    *(v260 + v262[12]) = v375;
    v86 = v393;
    v277 = v393[2];
    v278 = v393[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v277 >= v278 >> 1)
    {
      sub_1C44C9240(v278 > 1, v277 + 1, 1, v86);
      v86 = v320;
    }

    sub_1C4402C08(&v387);
    v279(v386, v182);
    v280 = sub_1C4416D6C();
    v281(v280);
    (v348)(v382, v185);
    v89 = v390;
    sub_1C45D1BD4(v390);
    v86[2] = v277 + 1;
    sub_1C441180C();
    sub_1C44066C0(v86 + v282);
    sub_1C44DD6F4();
    LODWORD(v359) = 0;
    goto LABEL_34;
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
  return result;
}

uint64_t sub_1C45D0DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636F4C70616DLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B6F6F4C6D756E65 && a2 == 0xEF65756C61567075;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696465725070616DLL && a2 == 0xED00007365746163;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000015 && 0x80000001C4F8BEA0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C45D0F9C(char a1)
{
  result = 0x7461636F4C70616DLL;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 0x6B6F6F4C6D756E65;
      break;
    case 3:
      result = 0x696465725070616DLL;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C45D1060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45D0DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C45D1088(uint64_t a1)
{
  v2 = sub_1C45D1348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45D10C4(uint64_t a1)
{
  v2 = sub_1C45D1348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BasicProperty.encode(to:)()
{
  sub_1C43FE96C();
  v25 = v1;
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0B99B0, &qword_1C4F105A8);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v23 = v0[3];
  v24 = v14;
  v15 = v0[4];
  v21 = v0[5];
  v22 = v15;
  v20 = v0[6];
  v19[1] = *(v0 + 56);
  v16 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C45D1348();
  sub_1C4F02BF8();
  v17 = v25;
  sub_1C4F02798();
  if (!v17)
  {
    v18 = v20;
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C43FBF44();
    sub_1C4F02738();
    v26 = v18;
    sub_1C456902C(&qword_1EC0B99C0, &qword_1C4F105B0);
    sub_1C45D1704(&qword_1EC0B99C8, &qword_1EC0B99D0);
    sub_1C43FBF44();
    sub_1C4F02778();
    sub_1C43FBF44();
    sub_1C4F027A8();
  }

  (*(v6 + 8))(v11, v4);
  sub_1C43FBC80();
}

unint64_t sub_1C45D1348()
{
  result = qword_1EC0B99B8;
  if (!qword_1EC0B99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B99B8);
  }

  return result;
}

void BasicProperty.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0B99D8, &qword_1C4F105B8);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C45D1348();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    sub_1C4405804();
    v10 = sub_1C4F02678();
    v22 = v11;
    sub_1C4405804();
    *&v21 = sub_1C4F02678();
    *(&v21 + 1) = v12;
    LOBYTE(v25[0]) = 2;
    sub_1C4405804();
    v19 = sub_1C4F02618();
    v20 = v13;
    sub_1C456902C(&qword_1EC0B99C0, &qword_1C4F105B0);
    LOBYTE(v23[0]) = 3;
    sub_1C45D1704(&qword_1EC0B99E0, &qword_1EC0B99E8);
    sub_1C4F02658();
    v18 = v10;
    v14 = v25[0];
    v15 = sub_1C4F02688();
    v16 = sub_1C43FD158();
    v17(v16);
    *&v23[0] = v18;
    *(&v23[0] + 1) = v22;
    v23[1] = v21;
    *v24 = v19;
    *&v24[8] = v20;
    *&v24[16] = v14;
    v24[24] = v15 & 1;
    *v4 = v23[0];
    v4[1] = v21;
    v4[2] = *v24;
    *(v4 + 41) = *&v24[9];
    sub_1C45D17A0(v23, v25);
    sub_1C440962C(v2);
    v25[0] = v18;
    v25[1] = v22;
    v26 = v21;
    v27 = v19;
    v28 = v20;
    v29 = v14;
    v30 = v15 & 1;
    sub_1C44E3634(v25);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C45D1704(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B99C0, &qword_1C4F105B0);
    sub_1C45D1C30(a2, type metadata accessor for MapPredicate);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C45D17F8(uint64_t a1)
{
  *(a1 + 8) = sub_1C458AA50();
  result = sub_1C458A984();
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1C45D1858(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C45D1874(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1C45D18B4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for BasicProperty.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BasicProperty.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45D1A7C()
{
  result = qword_1EC0B99F0;
  if (!qword_1EC0B99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B99F0);
  }

  return result;
}

unint64_t sub_1C45D1AD4()
{
  result = qword_1EC0B99F8;
  if (!qword_1EC0B99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B99F8);
  }

  return result;
}

unint64_t sub_1C45D1B2C()
{
  result = qword_1EC0B9A00;
  if (!qword_1EC0B9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9A00);
  }

  return result;
}

uint64_t sub_1C45D1B80()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FCE50(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C45D1BD4(uint64_t a1)
{
  v2 = type metadata accessor for MapPredicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C45D1C30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C45D1C78()
{
  sub_1C4404078();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FCE50(v3);
  v5 = *(v4 + 16);
  v6 = sub_1C43FBC98();
  v7(v6);
  return v0;
}

uint64_t sub_1C45D1CCC()
{
  sub_1C4404078();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FCE50(v3);
  v5 = *(v4 + 32);
  v6 = sub_1C43FBC98();
  v7(v6);
  return v0;
}