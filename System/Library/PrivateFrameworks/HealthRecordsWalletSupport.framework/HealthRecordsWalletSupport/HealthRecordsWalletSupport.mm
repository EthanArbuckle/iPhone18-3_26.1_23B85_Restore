uint64_t sub_251E5B6B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251E5B6F8()
{
  v1 = sub_251E71928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_251E5B7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251E71928();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251E5B880(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_251E71928();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251E5B924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251E71928();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251E5B9E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251E71928();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_251E5BAA0()
{
  if (MEMORY[0x277D85020])
  {
    sub_251E6ABC8();
  }
}

uint64_t sub_251E5BADC()
{
  sub_251E6AE3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251E5BB64()
{
  v1 = sub_251E71928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t SignedClinicalDataWalletPassIdentifier.passTypeIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SignedClinicalDataWalletPassIdentifier.serialNumber.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SignedClinicalDataWalletPassIdentifier.init(signedClinicalDataRecordSyncIdentifier:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD00000000000003CLL;
  a2[1] = 0x8000000251E736C0;
  v4 = sub_251E71A78();
  MEMORY[0x253090C90](v4);

  v5 = sub_251E71A98();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  a2[2] = 762472566;
  a2[3] = 0xE400000000000000;
  return result;
}

void SignedClinicalDataWalletPassIdentifier.init(signedClinicalDataRecord:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_251E71A98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = [a1 originIdentifier];
  v16 = [v15 signedClinicalDataRecordIdentifier];

  if (v16)
  {
    sub_251E71A88();

    (*(v5 + 32))(v14, v12, v4);
    (*(v5 + 16))(v9, v14, v4);
    v17 = sub_251E71A78();
    v22 = 762472566;
    v23 = 0xE400000000000000;
    MEMORY[0x253090C90](v17);

    v18 = v22;
    v19 = v23;
    v20 = *(v5 + 8);
    v20(v9, v4);
    v20(v14, v4);
    *a2 = 0xD00000000000003CLL;
    a2[1] = 0x8000000251E736C0;
    a2[2] = v18;
    a2[3] = v19;
  }

  else
  {
    sub_251E5C054();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();
  }
}

unint64_t sub_251E5C054()
{
  result = qword_27F4BD660;
  if (!qword_27F4BD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD660);
  }

  return result;
}

uint64_t sub_251E5C0A8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_251E5C0D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SignedClinicalDataWalletPassComponents.passIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t SignedClinicalDataWalletPassComponents.groupingIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SignedClinicalDataWalletPassComponents.appLaunchURL.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void SignedClinicalDataWalletPassComponents.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [a1 mainRecord];
  if (!v5)
  {
    sub_251E5C054();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
LABEL_25:

    return;
  }

  v6 = v5;
  v7 = [a1 medicalRecords];
  if (!v7)
  {
LABEL_13:
    sub_251E5C054();
    swift_allocError();
    v16 = 4;
    goto LABEL_24;
  }

  v8 = v7;
  sub_251E5C984(0, &qword_27F4BD668, 0x277CCD5F8);
  v9 = sub_251E71C08();

  if (v9 >> 62)
  {
    if (sub_251E71DA8())
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_5:
  v10 = [a1 QRRepresentation];
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = v10;
  v12 = [v10 alreadyScannedSegments];

  if (!v12)
  {
    goto LABEL_23;
  }

  sub_251E5C984(0, &qword_27F4BD670, 0x277D12490);
  v13 = sub_251E71C08();

  if (v13 >> 62)
  {
    if (sub_251E71DA8() >= 2)
    {
      goto LABEL_9;
    }

    v14 = sub_251E71DA8();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 > 1)
    {
LABEL_9:

      sub_251E5C054();
      swift_allocError();
      v16 = 6;
LABEL_24:
      *v15 = v16;
      swift_willThrow();

      goto LABEL_25;
    }
  }

  if (!v14)
  {

LABEL_23:

    sub_251E5C054();
    swift_allocError();
    v16 = 5;
    goto LABEL_24;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x253090E10](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v18 = *(v13 + 32);
  }

  v19 = v18;

  if ([v19 numberOfExpectedSiblings] >= 2)
  {

    sub_251E5C054();
    swift_allocError();
    *v20 = 6;
    swift_willThrow();

    goto LABEL_25;
  }

  v21 = v6;
  SignedClinicalDataWalletPassIdentifier.init(signedClinicalDataRecord:)(v21, &v63);
  if (v2)
  {
  }

  else
  {
    v61 = v64;
    v62 = v63;
    v59 = v66;
    v60 = v65;
    v22 = HKSignedClinicalDataRecord.appLaunchURL.getter();
    v57 = v23;
    v58 = v22;
    v67 = v21;
    v24 = [v67 credentialTypes];
    v25 = sub_251E71C08();

    v26 = *MEMORY[0x277CCCE98];
    v63 = sub_251E71B88();
    v64 = v27;
    MEMORY[0x28223BE20](v63);
    v55 = &v63;
    v28 = sub_251E5C9CC(sub_251E5CAD0, v54, v25);

    v29 = v67;
    v30 = [v67 credentialTypes];
    if (v28)
    {
      v31 = sub_251E71C08();

      v32 = *MEMORY[0x277CCCEA0];
      v63 = sub_251E71B88();
      v64 = v33;
      MEMORY[0x28223BE20](v63);
      v55 = &v63;
      v34 = sub_251E5C9CC(sub_251E5CCB8, v54, v31);

      if (v34)
      {

        v35 = v67;
        v36 = 0x8000000251E73770;
        v37 = 0xD000000000000032;
      }

      else
      {
        v35 = v67;
        v48 = [v67 credentialTypes];

        v49 = sub_251E71C08();
        v50 = *MEMORY[0x277CCCEA8];
        v51 = sub_251E71B88();
        v56[1] = v56;
        v63 = v51;
        v64 = v52;
        MEMORY[0x28223BE20](v51);
        v55 = &v63;
        v53 = sub_251E5C9CC(sub_251E5CCB8, v54, v49);

        v36 = 0x8000000251E737B0;
        v37 = 0xD000000000000029;
        if ((v53 & 1) == 0)
        {
          v37 = 0;
          v36 = 0;
        }
      }

      v43 = v61;
      v42 = v62;
      v45 = v59;
      v44 = v60;
      v47 = v57;
      v46 = v58;
    }

    else
    {

      v38 = sub_251E71C08();
      v39 = *MEMORY[0x277CCCEA0];
      v63 = sub_251E71B88();
      v64 = v40;
      MEMORY[0x28223BE20](v63);
      v55 = &v63;
      v41 = sub_251E5C9CC(sub_251E5CCB8, v54, v38);

      v36 = 0x8000000251E73740;
      if (v41)
      {
        v37 = 0xD00000000000002ALL;
      }

      else
      {
        v37 = 0;
      }

      if ((v41 & 1) == 0)
      {
        v36 = 0;
      }

      v43 = v61;
      v42 = v62;
      v45 = v59;
      v44 = v60;
      v47 = v57;
      v46 = v58;
      v35 = v67;
    }

    *a2 = v42;
    a2[1] = v43;
    a2[2] = v44;
    a2[3] = v45;
    a2[4] = v37;
    a2[5] = v36;
    a2[6] = v46;
    a2[7] = v47;
    a2[8] = v35;
    a2[9] = v9;
    a2[10] = v19;
  }
}

uint64_t sub_251E5C984(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251E5C9CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_251E5CA78(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_251E71EB8() & 1;
  }
}

uint64_t sub_251E5CAEC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_251E71EB8() & 1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_251E5CB50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251E5CB98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_251E5CC0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251E5CC54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251E5CCD4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_251E71CE8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_251E6516C(v3, *(a1 + 36), 0, a1);

  return v5;
}

id sub_251E5CD50()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v3 setFormatOptions_];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_251E5CDD0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_251E5CE28();
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_251E5CE28()
{
  sub_251E650F4(0, &qword_27F4BD698, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  sub_251E71AB8();
  v5 = sub_251E71AD8();
  v6 = *(v5 - 8);
  v7 = 0;
  if ((*(v6 + 48))(v3, 1, v5) != 1)
  {
    v7 = sub_251E71AC8();
    (*(v6 + 8))(v3, v5);
  }

  [v4 setTimeZone_];

  return v4;
}

uint64_t SignedClinicalDataWalletPassManager.__allocating_init()()
{
  v0 = swift_allocObject();
  SignedClinicalDataWalletPassManager.init()();
  return v0;
}

void *SignedClinicalDataWalletPassManager.init()()
{
  type metadata accessor for WalletPassManager();
  v0[2] = 0;
  v0[3] = 0;
  v1 = swift_allocObject();
  v2 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  v0[4] = v1;
  v3 = v2;
  return v0;
}

void sub_251E5D050(void *a1)
{
  if ([objc_opt_self() isWalletVisible])
  {
    v4 = [a1 mainRecord];
    if (!v4)
    {
      sub_251E5C054();
      swift_allocError();
      *v11 = 1;
      swift_willThrow();
      return;
    }

    v5 = v4;
    if (HKSignedClinicalDataRecord.permanentlyIneligibleToBeAddedToWallet.getter())
    {
      sub_251E5C054();
      swift_allocError();
      v7 = 2;
    }

    else
    {
      if (HKSignedClinicalDataRecord.eligibleToBeAddedToWallet.getter())
      {
        SignedClinicalDataWalletPassComponents.init(from:)(a1, v14);
        if (!v2)
        {
          v12[2] = v14[2];
          v12[3] = v14[3];
          v12[4] = v14[4];
          v13 = v15;
          v12[0] = v14[0];
          v12[1] = v14[1];
          sub_251E62540(v12);
        }

        goto LABEL_15;
      }

      sub_251E5C054();
      swift_allocError();
      v7 = 1;
    }

    *v6 = v7;
    swift_willThrow();
LABEL_15:

    return;
  }

  v8 = *(v1 + 32);
  os_unfair_lock_lock((v8 + 24));
  v9 = [*(v8 + 32) canAddPassOfType_];
  os_unfair_lock_unlock((v8 + 24));
  sub_251E624EC();
  swift_allocError();
  if (v9)
  {
    *v10 = 0;
  }

  else
  {
    *v10 = 1;
  }

  swift_willThrow();
}

uint64_t sub_251E5D21C(void *a1)
{
  SignedClinicalDataWalletPassIdentifier.init(signedClinicalDataRecord:)(a1, &v5);
  v2 = *(v1 + 32);
  v3 = sub_251E62594();

  return v3;
}

uint64_t sub_251E5D2A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  SignedClinicalDataWalletPassIdentifier.init(signedClinicalDataRecord:)(a1, v9);
  v4 = *(v2 + 32);
  v5 = sub_251E62594();
  if (v6)
  {
    strcpy(v9, "wallet://card/");
    HIBYTE(v9[1]) = -18;
    MEMORY[0x253090C90](v5);

    sub_251E71918();
  }

  else
  {
    v7 = sub_251E71928();
    (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }
}

uint64_t sub_251E5D438(void *a1, void (*a2)(void), void (*a3)(void))
{
  v56 = a2;
  v57 = a3;
  v4 = type metadata accessor for PassComponents(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251E62680();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v44 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = a1;
  SignedClinicalDataWalletPassComponents.init(from:)(v22, v66);
  v53 = v21;
  v54 = v19;
  v50 = v16;
  v51 = v7;
  v52 = v13;
  v62 = v66[2];
  v63 = v66[3];
  v64 = v66[4];
  v65 = v67;
  v60 = v66[0];
  v61 = v66[1];
  v23 = v55;
  sub_251E5E8EC(v66, v59);
  memcpy(v58, v59, sizeof(v58));
  v24 = v9;
  v25 = v53;
  *&v25[*(v9 + 64)] = sub_251E5DB44(v53, &v53[*(v9 + 48)], v22);
  v26 = v60;
  v27 = v61;
  v28 = v51;
  v51[3] = &type metadata for SignedClinicalDataWalletPassIdentifier;
  v28[4] = &protocol witness table for SignedClinicalDataWalletPassIdentifier;
  v29 = swift_allocObject();
  *v28 = v29;
  *(v29 + 16) = v26;
  *(v29 + 32) = v27;
  v30 = v54;
  sub_251E62778(v25, v54);
  v49 = *(v24 + 48);
  v31 = *(v30 + *(v24 + 64));

  v32 = v50;
  sub_251E62778(v25, v50);
  v48 = *(v24 + 48);
  v33 = *(v32 + *(v24 + 64));

  v34 = v52;
  sub_251E62778(v25, v52);
  v35 = *(v24 + 48);
  v46 = *(v34 + *(v24 + 64));
  v47 = v35;
  memcpy(v28 + 5, v58, 0x118uLL);
  v45 = v4[6];
  v36 = sub_251E71928();
  v37 = *(v36 - 8);
  v38 = *(v37 + 32);
  v38(v28 + v45, v54, v36);
  v38(v28 + v4[7], (v32 + v48), v36);
  *(v28 + v4[8]) = v46;
  v39 = v28;
  v40 = *(v37 + 8);
  v41 = v52;
  v40(&v52[v47], v36);
  v40(v41, v36);
  v40(v32, v36);
  v40(&v54[v49], v36);
  v42 = *(v23 + 32);
  sub_251E67FF4(v39, v56, v57);
  sub_251E62540(&v60);
  sub_251E627DC(v39, type metadata accessor for PassComponents);
  return sub_251E627DC(v25, sub_251E62680);
}

void sub_251E5D86C(void *a1)
{
  SignedClinicalDataWalletPassComponents.init(from:)(a1, v14);
  if (!v2)
  {
    v8 = v14[0];
    v9 = v14[1];
    v10 = v14[2];
    v11 = v14[3];
    v12 = v14[4];
    v13 = v15;
    v3 = *(v1 + 32);
    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 32);
    v5 = sub_251E71B78();
    v6 = sub_251E71B78();
    v7 = [v4 passWithPassTypeIdentifier:v5 serialNumber:{v6, v8, v9, v10, v11, v12, v13}];

    if (v7)
    {
      [*(v3 + 32) removePass_];
    }

    os_unfair_lock_unlock((v3 + 24));
    sub_251E62540(&v8);
  }
}

uint64_t sub_251E5D980(uint64_t a1)
{
  v3 = sub_251E71A98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = sub_251E71A78();
  v15[0] = 762472566;
  v15[1] = 0xE400000000000000;
  MEMORY[0x253090C90](v8);

  (*(v4 + 8))(v7, v3);
  v9 = *(v1 + 32);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 32);
  v11 = sub_251E71B78();
  v12 = sub_251E71B78();
  v13 = [v10 passWithPassTypeIdentifier:v11 serialNumber:v12];

  if (v13)
  {
    [*(v9 + 32) removePass_];
  }

  os_unfair_lock_unlock((v9 + 24));
}

void *sub_251E5DB44(char *a1, char *a2, void *a3)
{
  v130 = a3;
  v122 = a2;
  v125 = a1;
  v128 = *v3;
  v126 = type metadata accessor for PassComponents.BundleResource(0);
  v124 = *(v126 - 8);
  v4 = *(v124 + 64);
  v5 = MEMORY[0x28223BE20](v126);
  v117 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v119 = &v107 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v123 = &v107 - v10;
  MEMORY[0x28223BE20](v9);
  v121 = &v107 - v11;
  v127 = sub_251E71928();
  v129 = *(v127 - 8);
  v12 = *(v129 + 64);
  v13 = MEMORY[0x28223BE20](v127);
  v118 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v107 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v107 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v107 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v107 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v107 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v107 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v107 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v107 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v107 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v107 - v41;
  v43 = v130;
  v44 = v136;
  SignedClinicalDataWalletPassComponents.init(from:)(v43, v134);
  if (v44)
  {
    return v34;
  }

  v130 = v40;
  v112 = v37;
  v110 = v31;
  v115 = v34;
  v111 = v25;
  v116 = v28;
  v113 = v19;
  v108 = v22;
  v136 = v42;
  v114 = 0;
  v131[2] = v134[2];
  v131[3] = v134[3];
  v132 = v134[4];
  v133 = v135;
  v131[0] = v134[0];
  v131[1] = v134[1];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = [objc_opt_self() bundleForClass_];
  v34 = sub_251E71B78();
  v47 = sub_251E71B78();
  v48 = [v46 URLForResource:v34 withExtension:v47];

  if (!v48)
  {
LABEL_9:
    sub_251E5C054();
    swift_allocError();
    *v71 = 7;
    swift_willThrow();

    sub_251E62540(v131);
    return v34;
  }

  v49 = v130;
  sub_251E71908();

  v50 = v129;
  v51 = v129 + 32;
  v52 = *(v129 + 32);
  v53 = v136;
  v54 = v127;
  v52(v136, v49, v127);
  v34 = sub_251E71B78();
  v55 = sub_251E71B78();
  v56 = [v46 0x2796E4903];

  if (!v56)
  {
    (*(v50 + 8))(v53, v54);
    goto LABEL_9;
  }

  v57 = v112;
  sub_251E71908();

  v52(v122, v57, v54);
  v58 = v46;
  v59 = sub_251E71B78();
  v60 = sub_251E71B78();
  v130 = v58;
  v61 = [v58 URLForResource:v59 withExtension:v60];

  v128 = v52;
  v109 = v51;
  if (v61)
  {
    v62 = v110;
    sub_251E71908();

    v63 = v115;
    v52(v115, v62, v54);
    v64 = v121;
    (*(v50 + 16))(v121, v63, v54);
    v65 = (v64 + *(v126 + 20));
    *v65 = 0x2E7832406F676F6CLL;
    v65[1] = 0xEB00000000676E70;
    v34 = sub_251E62B7C(0, 1, 1, MEMORY[0x277D84F90]);
    v67 = v34[2];
    v66 = v34[3];
    v68 = v54;
    if (v67 >= v66 >> 1)
    {
      v34 = sub_251E62B7C(v66 > 1, v67 + 1, 1, v34);
    }

    v69 = v124;
    (*(v50 + 8))(v115, v68);
    v34[2] = v67 + 1;
    sub_251E65A4C(v64, v34 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v67);
    v70 = v126;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
    v68 = v54;
    v69 = v124;
    v70 = v126;
  }

  v73 = sub_251E71B78();
  v74 = sub_251E71B78();
  v75 = [v130 URLForResource:v73 withExtension:v74];

  v76 = v123;
  if (v75)
  {
    v77 = v111;
    sub_251E71908();

    v78 = v116;
    v128(v116, v77, v68);
    (*(v129 + 16))(v76, v78, v68);
    v79 = (v76 + *(v70 + 20));
    *v79 = 0x2E7833406F676F6CLL;
    v79[1] = 0xEB00000000676E70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_251E62B7C(0, v34[2] + 1, 1, v34);
    }

    v80 = v136;
    v82 = v34[2];
    v81 = v34[3];
    v83 = v113;
    if (v82 >= v81 >> 1)
    {
      v34 = sub_251E62B7C(v81 > 1, v82 + 1, 1, v34);
    }

    (*(v129 + 8))(v116, v68);
    v34[2] = v82 + 1;
    sub_251E65A4C(v76, v34 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v82);
  }

  else
  {
    v80 = v136;
    v83 = v113;
  }

  v84 = [v132 sourceType];
  v85 = v125;
  if (v84 == 1 && ([objc_opt_self() hk_isUSLocale] & 1) != 0)
  {
    v86 = sub_251E71B78();
    v87 = sub_251E71B78();
    v88 = [v130 URLForResource:v86 withExtension:v87];

    if (v88)
    {
      sub_251E71908();

      v89 = v108;
      v90 = v127;
      v128(v108, v83, v127);
      v91 = v119;
      (*(v129 + 16))(v119, v89, v90);
      v92 = v126;
      v93 = (v91 + *(v126 + 20));
      *v93 = 0x6567616D49746C61;
      v93[1] = 0xEF676E702E783240;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_251E62B7C(0, v34[2] + 1, 1, v34);
      }

      v95 = v34[2];
      v94 = v34[3];
      if (v95 >= v94 >> 1)
      {
        v34 = sub_251E62B7C(v94 > 1, v95 + 1, 1, v34);
      }

      (*(v129 + 8))();
      v34[2] = v95 + 1;
      sub_251E65A4C(v119, v34 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v95);
    }

    else
    {
      v92 = v126;
    }

    v96 = v118;
    v97 = sub_251E71B78();
    v98 = sub_251E71B78();
    v99 = v130;
    v100 = [v130 URLForResource:v97 withExtension:v98];

    if (v100)
    {
      sub_251E71908();

      v101 = v120;
      v102 = v96;
      v68 = v127;
      v128(v120, v102, v127);
      v103 = v117;
      (*(v129 + 16))(v117, v101, v68);
      v104 = (v103 + *(v92 + 20));
      *v104 = 0x6567616D49746C61;
      v104[1] = 0xEF676E702E783340;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_251E62B7C(0, v34[2] + 1, 1, v34);
      }

      v106 = v34[2];
      v105 = v34[3];
      if (v106 >= v105 >> 1)
      {
        v34 = sub_251E62B7C(v105 > 1, v106 + 1, 1, v34);
      }

      sub_251E62540(v131);
      (*(v129 + 8))(v120, v68);
      v34[2] = v106 + 1;
      sub_251E65A4C(v103, v34 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v106);
      v85 = v125;
    }

    else
    {

      sub_251E62540(v131);
      v85 = v125;
      v68 = v127;
    }

    v80 = v136;
  }

  else
  {

    sub_251E62540(v131);
  }

  v128(v85, v80, v68);
  return v34;
}

uint64_t sub_251E5E8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = sub_251E71A68();
  v75 = *(v76 - 8);
  v5 = *(v75 + 64);
  v6 = MEMORY[0x28223BE20](v76);
  v73 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &v73 - v8;
  v9 = *(a1 + 8);
  v84 = *a1;
  v88 = v9;
  v10 = *(a1 + 24);
  v83 = *(a1 + 16);
  v108 = v10;
  v11 = *(a1 + 40);
  v86 = *(a1 + 32);
  v87 = v11;
  v12 = *(a1 + 56);
  v85 = *(a1 + 48);
  v89 = v12;
  v13 = *(a1 + 64);
  v78 = *(a1 + 80);
  v81 = v13;
  v14 = v13;
  v15 = [v13 credentialTypes];
  v16 = sub_251E71C08();

  v17 = *MEMORY[0x277CCCEA0];
  v92 = sub_251E71B88();
  v93 = v18;
  v91 = &v92;
  v19 = sub_251E5C9CC(sub_251E64EF8, v90, v16);

  if (v19)
  {
    *&v79 = v2;
    v20 = v14;
    type metadata accessor for SignedClinicalDataWalletPassManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    v20 = v14;
    v23 = [v14 credentialTypes];
    v24 = sub_251E71C08();

    v25 = *MEMORY[0x277CCCEA8];
    v92 = sub_251E71B88();
    v93 = v26;
    MEMORY[0x28223BE20](v92);
    v72 = &v92;
    sub_251E5C9CC(sub_251E65AB0, (&v73 - 4), v24);
    *&v79 = v2;

    type metadata accessor for SignedClinicalDataWalletPassManager();
    v27 = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
  }

  v72 = 0xE000000000000000;
  v77 = sub_251E718B8();
  v80 = v28;

  v29 = v20;
  v30 = [v20 sourceType];
  if (v30 == 2)
  {
    v31 = 0x434344205545;
  }

  else
  {
    v31 = 0;
  }

  if (v30 == 2)
  {
    v32 = 0xE600000000000000;
  }

  else
  {
    v32 = 0;
  }

  v33 = v78;
  v34 = [v78 fullQRCodeValue];
  v35 = sub_251E71B88();
  v37 = v36;

  *&v104 = v31;
  *(&v104 + 1) = v32;
  *&v105 = 0xD000000000000011;
  *(&v105 + 1) = 0x8000000251E73840;
  *&v106 = v35;
  *(&v106 + 1) = v37;
  *&v107 = 0x393538382D6F7369;
  *(&v107 + 1) = 0xEA0000000000312DLL;
  v92 = v84;
  v93 = v88;
  v94 = v83;
  v95 = v108;
  v96 = v86;
  v97 = v87;
  v98 = v85;
  v99 = v89;
  v100 = v81;
  v101 = v33;
  v38 = v79;
  sub_251E5F120(&v92, v102);
  if (v38)
  {

    return sub_251E64F3C(&v104);
  }

  else
  {
    v79 = v102[1];
    v81 = v102[0];
    v78 = v103;
    v40 = [v29 expirationDate];
    v41 = v29;
    if (v40)
    {
      v42 = v73;
      v43 = v40;
      sub_251E71A48();

      v44 = v75;
      v45 = v74;
      v46 = v42;
      v47 = v76;
      (*(v75 + 32))(v74, v46, v76);
      v48 = sub_251E5CD50();
      v49 = sub_251E71A18();
      v50 = [v48 stringFromDate_];

      v82 = sub_251E71B88();
      v52 = v51;

      (*(v44 + 8))(v45, v47);
    }

    else
    {
      v82 = 0;
      v52 = 0;
    }

    v53 = [v41 recordTypeDisplayName];
    v54 = sub_251E71B88();
    v56 = v55;

    v57 = [v41 recordIssuerDisplayName];
    v58 = sub_251E71B88();
    v60 = v59;

    sub_251E659FC(0, &qword_27F4BD690, &type metadata for WalletPassBarcode, MEMORY[0x277D84560]);
    v61 = swift_allocObject();
    v62 = v104;
    v63 = v105;
    v61[1] = xmmword_251E725D0;
    v61[2] = v62;
    v64 = v106;
    v65 = v107;
    v61[3] = v63;
    v61[4] = v64;
    v61[5] = v65;
    *a2 = v54;
    *(a2 + 8) = v56;
    *(a2 + 16) = 1;
    *(a2 + 24) = v58;
    v66 = v84;
    *(a2 + 32) = v60;
    *(a2 + 40) = v66;
    v67 = v83;
    *(a2 + 48) = v88;
    *(a2 + 56) = v67;
    *(a2 + 64) = v108;
    *(a2 + 72) = 0xD000000000000010;
    v68 = v85;
    *(a2 + 80) = 0x8000000251E73700;
    *(a2 + 88) = v68;
    *(a2 + 96) = v89;
    *(a2 + 104) = &unk_28641AA40;
    *(a2 + 112) = xmmword_251E725E0;
    *(a2 + 128) = 0xD000000000000010;
    *(a2 + 136) = 0x8000000251E73720;
    v69 = v87;
    *(a2 + 144) = v86;
    *(a2 + 152) = v69;
    *(a2 + 160) = xmmword_251E725F0;
    v70 = v80;
    *(a2 + 176) = v77;
    *(a2 + 184) = v70;
    v71 = v79;
    *(a2 + 192) = v81;
    *(a2 + 208) = v71;
    *(a2 + 224) = v78;
    *(a2 + 232) = v61;
    *(a2 + 240) = v82;
    *(a2 + 248) = v52;
    *(a2 + 256) = 513;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
  }
}

uint64_t sub_251E5F120@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v289 = a2;
  v321 = *MEMORY[0x277D85DE8];
  v297 = sub_251E71A68();
  v293 = *(v297 - 8);
  v4 = *(v293 + 64);
  v5 = MEMORY[0x28223BE20](v297);
  v284[0] = v284 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v292 = v284 - v7;
  v8 = *(a1 + 64);
  v306 = *(a1 + 72);
  v303 = v8;
  v9 = [v8 credentialTypes];
  v10 = sub_251E71C08();

  v11 = *MEMORY[0x277CCCE98];
  *&v314 = sub_251E71B88();
  *(&v314 + 1) = v12;
  v313 = &v314;
  v13 = sub_251E5C9CC(sub_251E65AB0, v312, v10);

  if (v13)
  {
    type metadata accessor for SignedClinicalDataWalletPassManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_251E718B8();
    v18 = v17;

    sub_251E659FC(0, &qword_27F4BD6A0, &type metadata for WalletPassField, MEMORY[0x277D84560]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_251E725D0;
    *(v19 + 32) = 1701869940;
    *(v19 + 40) = 0xE400000000000000;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = v16;
    *(v19 + 72) = v18;
    *(v19 + 80) = 0u;
    *(v19 + 96) = 0u;
    *(v19 + 112) = 0u;
    *(v19 + 128) = 0;
    *(v19 + 136) = 33686789;
    *(v19 + 144) = 0;
    v288 = v19;
    *(v19 + 152) = 1;
  }

  else
  {
    v288 = 0;
  }

  sub_251E659FC(0, &qword_27F4BD6A0, &type metadata for WalletPassField, MEMORY[0x277D84560]);
  v21 = v20;
  v22 = swift_allocObject();
  v296 = xmmword_251E725D0;
  *(v22 + 16) = xmmword_251E725D0;
  type metadata accessor for SignedClinicalDataWalletPassManager();
  v23 = swift_getObjCClassFromMetadata();
  v299 = objc_opt_self();
  v302 = v23;
  v24 = [v299 bundleForClass_];
  v290 = "meFormatter";
  v294 = 0xD000000000000020;
  v300 = 0x8000000251E73810;
  v25 = sub_251E718B8();
  v27 = v26;

  v28 = v303;
  v29 = [v303 subject];
  v30 = [v29 fullName];

  v31 = sub_251E71B88();
  v33 = v32;

  strcpy((v22 + 32), "subject-name");
  *(v22 + 45) = 0;
  *(v22 + 46) = -5120;
  *(v22 + 48) = v25;
  *(v22 + 56) = v27;
  *(v22 + 64) = v31;
  *(v22 + 72) = v33;
  *(v22 + 80) = 0u;
  *(v22 + 96) = 0u;

  *(v22 + 112) = 0;

  *(v22 + 120) = 0;
  *(v22 + 128) = 0;

  *&v34 = 33686789;
  v301 = v34;
  *(v22 + 136) = 33686789;
  *(v22 + 144) = 0;
  v35 = 1;
  v287 = v22;
  *(v22 + 152) = 1;
  v36 = sub_251E65258(v28);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v295 = v21;
  v43 = swift_allocObject();
  *(v43 + 1) = v296;
  v43[4] = 0x6D616E2D6D657469;
  v43[5] = 0xE900000000000065;
  v43[6] = v36;
  v43[7] = v38;
  v43[8] = v40;
  v43[9] = v42;
  *(v43 + 5) = 0u;
  *(v43 + 6) = 0u;

  v43[14] = 0;

  v43[15] = 0;
  v43[16] = 0;

  *(v43 + 34) = v301;
  v43[18] = 0;
  *(v43 + 152) = 1;

  *&v314 = sub_251E64CB8(v44);
  sub_251E62E1C(&v314);
  if (v2)
  {
LABEL_155:

    __break(1u);
    return result;
  }

  v306 = 0;
  v45 = v314;
  *&v314 = MEMORY[0x277D84F90];
  v46 = (v45 >> 62) & 1;
  if (v45 < 0)
  {
    LODWORD(v46) = 1;
  }

  v291 = v46;
  v305 = v45;
  if (v46 == 1)
  {
    goto LABEL_139;
  }

  for (i = *(v45 + 16); ; i = sub_251E71DA8())
  {
    v286 = v43;
    v48 = MEMORY[0x277D84F90];
    if (i)
    {
      v49 = 0;
      v43 = v305;
      v35 = v305 & 0xC000000000000001;
      v21 = 0x277CCD000uLL;
      v40 = 0x2796E4000uLL;
      v298 = v305 & 0xC000000000000001;
      while (1)
      {
        if (v35)
        {
          v50 = MEMORY[0x253090E10](v49, v43);
        }

        else
        {
          if (v49 >= v43[2])
          {
            goto LABEL_134;
          }

          v50 = v43[v49 + 4];
        }

        v38 = v50;
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        v52 = *(v21 + 2936);
        objc_opt_self();
        v53 = swift_dynamicCastObjCClass();
        if (!v53 || ([v53 *(v40 + 3824)] & 1) != 0)
        {
        }

        else
        {
          sub_251E71D68();
          v54 = i;
          v55 = v21;
          v56 = v40;
          v57 = *(v314 + 16);
          sub_251E71D88();
          v40 = v56;
          v21 = v55;
          i = v54;
          v35 = v298;
          sub_251E71D98();
          sub_251E71D78();
          v43 = v305;
        }

        ++v49;
        if (v51 == i)
        {
          v48 = v314;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_22:
    v58 = v48 < 0 || (v48 & 0x4000000000000000) != 0;
    if (v58)
    {
      v43 = sub_251E71DA8();
      if (sub_251E71DA8() < 0)
      {
        __break(1u);
        goto LABEL_155;
      }

      if (v43 >= 4)
      {
        v283 = 4;
      }

      else
      {
        v283 = v43;
      }

      if (v43 >= 0)
      {
        v60 = v283;
      }

      else
      {
        v60 = 4;
      }

      if (sub_251E71DA8() < v60)
      {
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }
    }

    else
    {
      v59 = *(v48 + 16);
      if (v59 >= 4)
      {
        v60 = 4;
      }

      else
      {
        v60 = *(v48 + 16);
      }

      if (v59 < v60)
      {
        goto LABEL_148;
      }
    }

    if ((v48 & 0xC000000000000001) != 0 && v60)
    {
      sub_251E5C984(0, &qword_27F4BD668, 0x277CCD5F8);

      sub_251E71D38();
      if (v60 != 1)
      {
        sub_251E71D38();
        if (v60 != 2)
        {
          sub_251E71D38();
          if (v60 != 3)
          {
            sub_251E71D38();
            if (v60 != 4)
            {
              sub_251E71D38();
              sub_251E71D38();
              sub_251E71D38();
            }
          }
        }
      }
    }

    else
    {
    }

    if (v58)
    {
      v61 = sub_251E71DB8();
      v40 = v62;
      v35 = v63;
      v65 = v64;

      v60 = v65 >> 1;
      v48 = v61;
    }

    else
    {
      v35 = 0;
      v40 = v48 + 32;
    }

    v43 = v300;
    v21 = v60 - v35;
    if (__OFSUB__(v60, v35))
    {
      goto LABEL_149;
    }

    if (!v21)
    {
      break;
    }

    v311 = MEMORY[0x277D84F90];
    v43 = &v311;
    sub_251E62F8C(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      goto LABEL_152;
    }

    v298 = v48;
    v67 = v311;
    v68 = v40 - 8;
    v38 = 1;
    while (v38 - 1 < v21 && v60 > v35)
    {
      v310 = *(v68 + 8 * v60);
      v70 = v67;
      v43 = v310;
      v2 = v306;
      sub_251E612FC(&v310, &v314);
      v306 = v2;

      v67 = v70;
      v311 = v70;
      v71 = *(v70 + 2);
      v72 = *(v67 + 3);
      v40 = v71 + 1;
      if (v71 >= v72 >> 1)
      {
        v43 = &v311;
        sub_251E62F8C((v72 > 1), v71 + 1, 1);
        v67 = v311;
      }

      *(v67 + 2) = v40;
      v73 = &v67[128 * v71];
      v74 = v314;
      v75 = v315;
      v76 = v317;
      *(v73 + 4) = v316;
      *(v73 + 5) = v76;
      *(v73 + 2) = v74;
      *(v73 + 3) = v75;
      v77 = v318;
      v78 = v319;
      v79 = v320[0];
      *(v73 + 137) = *(v320 + 9);
      *(v73 + 7) = v78;
      *(v73 + 8) = v79;
      *(v73 + 6) = v77;
      if (v21 == v38)
      {
        v81 = v67;
        swift_unknownObjectRelease();
        goto LABEL_57;
      }

      --v60;
      if (__OFADD__(v38++, 1))
      {
        goto LABEL_136;
      }
    }

LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    ;
  }

  swift_unknownObjectRelease();
  v81 = MEMORY[0x277D84F90];
LABEL_57:
  v21 = v299;
  v82 = [v299 bundleForClass_];
  v284[1] = 0xD000000000000022;
  v284[2] = "FIELD_LABEL_NAME";
  v43 = sub_251E718B8();
  v60 = v83;

  v84 = [v303 recordIssuerDisplayName];
  v38 = sub_251E71B88();
  v35 = v85;

  LOBYTE(v314) = 0;
  v40 = v81;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v86 = v81;
    goto LABEL_59;
  }

LABEL_150:
  v86 = sub_251E62960(0, *(v40 + 16) + 1, 1, v40);
LABEL_59:
  v88 = *(v86 + 2);
  v87 = *(v86 + 3);
  if (v88 >= v87 >> 1)
  {
    v86 = sub_251E62960((v87 > 1), v88 + 1, 1, v86);
  }

  *(v86 + 2) = v88 + 1;
  v285 = v86;
  v89 = &v86[128 * v88];
  *(v89 + 4) = 0x726575737369;
  *(v89 + 5) = 0xE600000000000000;
  *(v89 + 6) = v43;
  *(v89 + 7) = v60;
  *(v89 + 8) = v38;
  *(v89 + 9) = v35;
  *(v89 + 5) = 0u;
  *(v89 + 6) = 0u;
  *(v89 + 7) = 0u;
  *(v89 + 16) = 0;
  *(v89 + 34) = v301;
  *(v89 + 18) = 1;
  v89[152] = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = v296;
  v90 = v21;
  v91 = v302;
  v92 = [v90 bundleForClass_];
  v298 = sub_251E718B8();
  v94 = v93;

  v95 = v303;
  v96 = [v303 subject];
  v97 = [v96 fullName];

  v98 = sub_251E71B88();
  v100 = v99;

  *(v38 + 112) = 0;
  *(v38 + 120) = 0;
  *(v38 + 128) = 0;
  *(v38 + 136) = v301;
  *(v38 + 144) = 0;
  *(v38 + 152) = 1;
  *(v38 + 32) = 0xD000000000000011;
  *(v38 + 40) = 0x8000000251E739E0;
  *(v38 + 48) = v298;
  *(v38 + 56) = v94;
  *(v38 + 64) = v98;
  *(v38 + 72) = v100;
  *(v38 + 80) = 0u;
  *(v38 + 96) = 0u;

  v101 = *(v38 + 112);
  *(v38 + 112) = 0;

  v102 = *(v38 + 128);
  *(v38 + 120) = 0;
  *(v38 + 128) = 0;

  *(v38 + 136) = v301;
  *(v38 + 144) = 0;
  *(v38 + 152) = 1;
  v311 = v38;
  v103 = [v95 subject];
  v60 = [v103 birthDate];

  if (v60)
  {
    v104 = [v299 bundleForClass_];
    v298 = sub_251E718B8();
    *&v296 = v105;

    v106 = sub_251E5CD50();
    v107 = [v60 dateForUTC];
    v108 = v292;
    sub_251E71A48();

    v109 = sub_251E71A18();
    (*(v293 + 8))(v108, v297);
    v110 = [v106 stringFromDate_];

    v43 = sub_251E71B88();
    v40 = v111;

    LOBYTE(v48) = 1;
    v21 = *(v38 + 16);
    v66 = *(v38 + 24);
    v35 = v21 + 1;
    if (v21 < v66 >> 1)
    {
LABEL_63:

      *(v38 + 16) = v35;
      v112 = v38 + (v21 << 7);
      *(v112 + 32) = 6451044;
      *(v112 + 40) = 0xE300000000000000;
      v113 = v296;
      *(v112 + 48) = v298;
      *(v112 + 56) = v113;
      *(v112 + 64) = v43;
      *(v112 + 72) = v40;
      *(v112 + 80) = 0u;
      *(v112 + 96) = 0u;
      *(v112 + 112) = 0u;
      *(v112 + 128) = 0;
      *(v112 + 136) = 33621250;
      *(v112 + 144) = 0;
      *(v112 + 152) = v48;
      v311 = v38;
      goto LABEL_64;
    }

LABEL_152:
    v38 = sub_251E62960((v66 > 1), v35, 1, v38);
    goto LABEL_63;
  }

LABEL_64:
  v114 = [v303 subject];
  v115 = [v114 gender];

  if (v115)
  {
    v298 = sub_251E71B88();
    v117 = v116;

    v118 = [v299 bundleForClass_];
    v119 = sub_251E718B8();
    v121 = v120;

    v123 = *(v38 + 16);
    v122 = *(v38 + 24);
    if (v123 >= v122 >> 1)
    {
      v38 = sub_251E62960((v122 > 1), v123 + 1, 1, v38);
    }

    *(v38 + 16) = v123 + 1;
    v124 = v38 + (v123 << 7);
    *(v124 + 32) = 0x7265646E6567;
    *(v124 + 40) = 0xE600000000000000;
    *(v124 + 48) = v119;
    *(v124 + 56) = v121;
    *(v124 + 64) = v298;
    *(v124 + 72) = v117;
    *(v124 + 80) = 0u;
    *(v124 + 96) = 0u;
    *(v124 + 112) = 0u;
    *(v124 + 128) = 0;
    *(v124 + 136) = v301;
    *(v124 + 144) = 0;
    *(v124 + 152) = 1;
    v311 = v38;
  }

  v310 = 0;
  v125 = [v303 subject];
  v126 = [v125 identifiers];

  v127 = v304;
  if (v126)
  {
    sub_251E659FC(0, &qword_27F4BD6A8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v128 = sub_251E71C08();

    v2 = v306;
    sub_251E61CB8(v128, &v310, &v311);
    v306 = v2;
  }

  v129 = [v303 subject];
  v130 = [v129 emailAddresses];

  if (v130)
  {
    v131 = MEMORY[0x277D837D0];
    v132 = sub_251E71C08();

    v133 = [v299 bundleForClass_];
    v298 = sub_251E718B8();
    v135 = v134;

    *&v314 = v132;
    sub_251E659FC(0, &qword_27F4BD6A8, v131, MEMORY[0x277D83940]);
    sub_251E656B0();
    v136 = sub_251E71B68();
    v138 = v137;

    LOBYTE(v314) = 1;
    v139 = v311;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v139 = sub_251E62960(0, *(v139 + 2) + 1, 1, v139);
    }

    v141 = *(v139 + 2);
    v140 = *(v139 + 3);
    if (v141 >= v140 >> 1)
    {
      v139 = sub_251E62960((v140 > 1), v141 + 1, 1, v139);
    }

    *(v139 + 2) = v141 + 1;
    v142 = &v139[128 * v141];
    *(v142 + 4) = 0x736C69616D65;
    *(v142 + 5) = 0xE600000000000000;
    *(v142 + 6) = v298;
    *(v142 + 7) = v135;
    *(v142 + 8) = v136;
    *(v142 + 9) = v138;
    *(v142 + 5) = 0u;
    *(v142 + 6) = 0u;
    *(v142 + 7) = 0u;
    *(v142 + 16) = 0;
    *(v142 + 34) = v301;
    *(v142 + 18) = 0;
    v142[152] = 1;
    v311 = v139;
    v127 = v304;
  }

  v143 = [v303 subject];
  v144 = [v143 phoneNumbers];

  if (v144)
  {
    v145 = MEMORY[0x277D837D0];
    v146 = sub_251E71C08();

    v147 = [v299 bundleForClass_];
    v298 = sub_251E718B8();
    v149 = v148;

    *&v314 = v146;
    sub_251E659FC(0, &qword_27F4BD6A8, v145, MEMORY[0x277D83940]);
    sub_251E656B0();
    v150 = sub_251E71B68();
    v152 = v151;

    LOBYTE(v314) = 1;
    v153 = v311;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v153 = sub_251E62960(0, *(v153 + 2) + 1, 1, v153);
    }

    v155 = *(v153 + 2);
    v154 = *(v153 + 3);
    if (v155 >= v154 >> 1)
    {
      v153 = sub_251E62960((v154 > 1), v155 + 1, 1, v153);
    }

    *(v153 + 2) = v155 + 1;
    v156 = &v153[128 * v155];
    *(v156 + 4) = 0x73656E6F6870;
    *(v156 + 5) = 0xE600000000000000;
    *(v156 + 6) = v298;
    *(v156 + 7) = v149;
    *(v156 + 8) = v150;
    *(v156 + 9) = v152;
    *(v156 + 5) = 0u;
    *(v156 + 6) = 0u;
    *(v156 + 7) = 0u;
    *(v156 + 16) = 0;
    *(v156 + 34) = v301;
    *(v156 + 18) = 0;
    v156[152] = 1;
    v311 = v153;
    v127 = v304;
  }

  v157 = [v303 subject];
  v158 = [v157 addresses];

  if (v158)
  {
    v159 = MEMORY[0x277D837D0];
    v160 = sub_251E71C08();

    v161 = [v299 bundleForClass_];
    v298 = sub_251E718B8();
    v163 = v162;

    *&v314 = v160;
    sub_251E659FC(0, &qword_27F4BD6A8, v159, MEMORY[0x277D83940]);
    sub_251E656B0();
    v164 = sub_251E71B68();
    v166 = v165;

    LOBYTE(v314) = 1;
    v167 = v311;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v167 = sub_251E62960(0, *(v167 + 2) + 1, 1, v167);
    }

    v169 = *(v167 + 2);
    v168 = *(v167 + 3);
    if (v169 >= v168 >> 1)
    {
      v167 = sub_251E62960((v168 > 1), v169 + 1, 1, v167);
    }

    *(v167 + 2) = v169 + 1;
    v170 = &v167[128 * v169];
    *(v170 + 4) = 0x6573736572646461;
    *(v170 + 5) = 0xE900000000000073;
    *(v170 + 6) = v298;
    *(v170 + 7) = v163;
    *(v170 + 8) = v164;
    *(v170 + 9) = v166;
    *(v170 + 5) = 0u;
    *(v170 + 6) = 0u;
    *(v170 + 7) = 0u;
    *(v170 + 16) = 0;
    *(v170 + 34) = v301;
    *(v170 + 18) = 0;
    v170[152] = 1;
    v311 = v167;
    v127 = v304;
  }

  v171 = [v303 subject];
  v172 = [v171 maritalStatus];

  if (v172)
  {
    v298 = sub_251E71B88();
    v174 = v173;

    v175 = [v299 bundleForClass_];
    v176 = sub_251E718B8();
    v178 = v177;

    v179 = v311;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v179 = sub_251E62960(0, *(v179 + 2) + 1, 1, v179);
    }

    v181 = *(v179 + 2);
    v180 = *(v179 + 3);
    if (v181 >= v180 >> 1)
    {
      v179 = sub_251E62960((v180 > 1), v181 + 1, 1, v179);
    }

    *(v179 + 2) = v181 + 1;
    v182 = &v179[128 * v181];
    strcpy(v182 + 32, "marital-status");
    v182[47] = -18;
    *(v182 + 6) = v176;
    *(v182 + 7) = v178;
    *(v182 + 8) = v298;
    *(v182 + 9) = v174;
    *(v182 + 5) = 0u;
    *(v182 + 6) = 0u;
    *(v182 + 7) = 0u;
    *(v182 + 16) = 0;
    *(v182 + 34) = v301;
    *(v182 + 18) = 0;
    v182[152] = 1;
    v311 = v179;
    v127 = v304;
  }

  v183 = [v303 subject];
  v184 = [v183 race];

  if (v184)
  {
    v298 = sub_251E71B88();
    v186 = v185;

    v187 = [v299 bundleForClass_];
    v188 = sub_251E718B8();
    v190 = v189;

    v191 = v311;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = sub_251E62960(0, *(v191 + 2) + 1, 1, v191);
    }

    v193 = *(v191 + 2);
    v192 = *(v191 + 3);
    if (v193 >= v192 >> 1)
    {
      v191 = sub_251E62960((v192 > 1), v193 + 1, 1, v191);
    }

    *(v191 + 2) = v193 + 1;
    v194 = &v191[128 * v193];
    *(v194 + 4) = 1701011826;
    *(v194 + 5) = 0xE400000000000000;
    *(v194 + 6) = v188;
    *(v194 + 7) = v190;
    *(v194 + 8) = v298;
    *(v194 + 9) = v186;
    *(v194 + 5) = 0u;
    *(v194 + 6) = 0u;
    *(v194 + 7) = 0u;
    *(v194 + 16) = 0;
    *(v194 + 34) = v301;
    *(v194 + 18) = 0;
    v194[152] = 1;
    v311 = v191;
    v127 = v304;
  }

  v195 = [v303 subject];
  v196 = [v195 ethnicity];

  if (v196)
  {
    v298 = sub_251E71B88();
    v198 = v197;

    v199 = [v299 bundleForClass_];
    v200 = sub_251E718B8();
    v202 = v201;

    v203 = v311;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v203 = sub_251E62960(0, *(v203 + 2) + 1, 1, v203);
    }

    v205 = *(v203 + 2);
    v204 = *(v203 + 3);
    if (v205 >= v204 >> 1)
    {
      v203 = sub_251E62960((v204 > 1), v205 + 1, 1, v203);
    }

    *(v203 + 2) = v205 + 1;
    v206 = &v203[128 * v205];
    *(v206 + 4) = 0x746963696E687465;
    *(v206 + 5) = 0xE900000000000079;
    *(v206 + 6) = v200;
    *(v206 + 7) = v202;
    *(v206 + 8) = v298;
    *(v206 + 9) = v198;
    *(v206 + 5) = 0u;
    *(v206 + 6) = 0u;
    *(v206 + 7) = 0u;
    *(v206 + 16) = 0;
    *(v206 + 34) = v301;
    *(v206 + 18) = 0;
    v206[152] = 1;
    v311 = v203;
    v127 = v304;
  }

  v207 = [v303 subject];
  v208 = [v207 birthSex];

  if (v208)
  {
    v298 = sub_251E71B88();
    v210 = v209;

    v211 = [v299 bundleForClass_];
    v212 = sub_251E718B8();
    v214 = v213;

    v215 = v311;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = sub_251E62960(0, *(v215 + 2) + 1, 1, v215);
    }

    v217 = *(v215 + 2);
    v216 = *(v215 + 3);
    if (v217 >= v216 >> 1)
    {
      v215 = sub_251E62960((v216 > 1), v217 + 1, 1, v215);
    }

    *(v215 + 2) = v217 + 1;
    v218 = &v215[128 * v217];
    *(v218 + 4) = 0x65732D6874726962;
    *(v218 + 5) = 0xE900000000000078;
    *(v218 + 6) = v212;
    *(v218 + 7) = v214;
    *(v218 + 8) = v298;
    *(v218 + 9) = v210;
    *(v218 + 5) = 0u;
    *(v218 + 6) = 0u;
    *(v218 + 7) = 0u;
    *(v218 + 16) = 0;
    *(v218 + 34) = v301;
    *(v218 + 18) = 0;
    v218[152] = 1;
    v311 = v215;
    v127 = v304;
  }

  if (v291)
  {
    v40 = sub_251E71DA8();
  }

  else
  {
    v40 = *(v305 + 16);
  }

  v219 = 0x2796E4000uLL;
  v220 = v302;
  v221 = v299;
  if (v40)
  {
    v309 = MEMORY[0x277D84F90];
    v43 = &v309;
    sub_251E62F8C(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
      __break(1u);
    }

    v222 = 0;
    v38 = v309;
    v223 = v305;
    v35 = v305 & 0xC000000000000001;
    v21 = v40 - 1;
    while (1)
    {
      if (v35)
      {
        v224 = MEMORY[0x253090E10](v222);
      }

      else
      {
        if (v222 >= *(v223 + 16))
        {
          goto LABEL_138;
        }

        v224 = *(v223 + 8 * v222 + 32);
      }

      v43 = v224;
      v308 = v224;
      v2 = v306;
      sub_251E61D50(&v308, v127, &v314);
      v306 = v2;

      v309 = v38;
      v226 = *(v38 + 16);
      v225 = *(v38 + 24);
      v40 = v226 + 1;
      if (v226 >= v225 >> 1)
      {
        v43 = &v309;
        sub_251E62F8C((v225 > 1), v226 + 1, 1);
        v38 = v309;
      }

      *(v38 + 16) = v40;
      v227 = (v38 + (v226 << 7));
      v228 = v314;
      v229 = v315;
      v230 = v317;
      v227[4] = v316;
      v227[5] = v230;
      v227[2] = v228;
      v227[3] = v229;
      v231 = v318;
      v232 = v319;
      v233 = v320[0];
      *(v227 + 137) = *(v320 + 9);
      v227[7] = v232;
      v227[8] = v233;
      v227[6] = v231;
      if (v21 == v222)
      {
        break;
      }

      ++v222;
      v223 = v305;
      if (__OFADD__(v222, 1))
      {
        goto LABEL_137;
      }
    }

    v219 = 0x2796E4000;
    v220 = v302;
    v221 = v299;
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
  }

  v234 = swift_allocObject();
  *(v234 + 16) = xmmword_251E72600;
  v235 = [v221 *(v219 + 3720)];
  v305 = sub_251E718B8();
  v237 = v236;

  v238 = [v303 recordIssuerDisplayName];
  v239 = sub_251E71B88();
  v240 = v219;
  v241 = v221;
  v243 = v242;

  *(v234 + 32) = 0x622D726575737369;
  *(v234 + 40) = 0xEB000000006B6361;
  *(v234 + 48) = v305;
  *(v234 + 56) = v237;
  *(v234 + 64) = v239;
  *(v234 + 72) = v243;
  *(v234 + 80) = 0u;
  *(v234 + 96) = 0u;
  *(v234 + 128) = 0;
  *(v234 + 112) = MEMORY[0x277D84F90];
  *(v234 + 120) = 0;
  *(v234 + 136) = v301;
  *(v234 + 144) = 0;
  v298 = 0x8000000251E73A00;
  *(v234 + 152) = 1;
  v244 = [v241 (v240 + 1083)];
  v305 = 0xD000000000000017;
  v245 = sub_251E718B8();
  v247 = v246;

  v248 = v303;
  v249 = HKSignedClinicalDataRecord.detailSignatureStatusPlainString.getter();
  v250 = v298;
  *(v234 + 160) = 0xD000000000000010;
  *(v234 + 168) = v250;
  *(v234 + 176) = v245;
  *(v234 + 184) = v247;
  *(v234 + 192) = v249;
  *(v234 + 200) = v251;
  *(v234 + 208) = 0u;
  *(v234 + 224) = 0u;
  *(v234 + 240) = 0u;
  *(v234 + 256) = 0;
  *(v234 + 264) = v301;
  *(v234 + 272) = 0;
  *(v234 + 280) = 1;
  v252 = [v299 bundleForClass_];
  v253 = sub_251E718B8();
  v255 = v254;

  v256 = sub_251E5CD50();
  v257 = [v248 issuedDate];
  v258 = v292;
  sub_251E71A48();

  v259 = sub_251E71A18();
  v305 = *(v293 + 8);
  (v305)(v258, v297);
  v260 = [v256 stringFromDate_];

  v261 = sub_251E71B88();
  v263 = v262;

  *(v234 + 288) = 0x642D646575737369;
  *(v234 + 296) = 0xEB00000000657461;
  *(v234 + 304) = v253;
  *(v234 + 312) = v255;
  *(v234 + 320) = v261;
  *(v234 + 328) = v263;
  *(v234 + 336) = 0u;
  *(v234 + 352) = 0u;
  *(v234 + 368) = 0u;
  *(v234 + 384) = 0;
  v301 = 0x2020502uLL;
  *(v234 + 392) = 33686786;
  *(v234 + 400) = 0;
  *(v234 + 408) = 1;
  v264 = [v303 expirationDate];
  if (v264)
  {
    v265 = v284[0];
    v266 = v264;
    sub_251E71A48();

    v267 = [v299 bundleForClass_];
    v268 = sub_251E718B8();
    v303 = v269;

    v270 = *(v304 + 16);
    v271 = sub_251E71A18();
    v272 = [v270 stringFromDate_];

    v273 = sub_251E71B88();
    v275 = v274;

    v234 = sub_251E62960(1, 4, 1, v234);
    (v305)(v265, v297);
    *(v234 + 16) = 4;
    *(v234 + 416) = 0x6974617269707865;
    *(v234 + 424) = 0xEF657461642D6E6FLL;
    v276 = v303;
    *(v234 + 432) = v268;
    *(v234 + 440) = v276;
    *(v234 + 448) = v273;
    *(v234 + 456) = v275;
    *(v234 + 464) = 0u;
    *(v234 + 480) = 0u;
    *(v234 + 496) = 0u;
    *(v234 + 512) = 0;
    *(v234 + 520) = v301;
    *(v234 + 528) = 0;
    *(v234 + 536) = 1;
  }

  v307 = v311;

  sub_251E62E98(v38);
  sub_251E62E98(v234);
  v277 = v307;
  v278 = v289;
  v279 = v287;
  *v289 = v288;
  v278[1] = v279;
  v280 = v285;
  v278[2] = v286;
  v278[3] = v280;
  v278[4] = v277;

  v282 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_251E612FC@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_251E71A98();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251E650F4(0, &qword_27F4BD6B8, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v69 - v12;
  v13 = sub_251E71A68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = sub_251E5CD50();
  v20 = [v18 sortDate];
  v21 = [v20 date];

  sub_251E71A48();
  v22 = sub_251E71A18();
  (*(v14 + 8))(v17, v13);
  v23 = [v19 stringFromDate_];

  v24 = sub_251E71B88();
  v74 = v25;

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
    goto LABEL_7;
  }

  v27 = v26;
  v28 = v18;
  v29 = [v27 doseNumber];
  if (!v29)
  {

LABEL_7:
    type metadata accessor for SignedClinicalDataWalletPassManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v52 = [objc_opt_self() bundleForClass_];
    v45 = sub_251E718B8();
    v47 = v53;

    goto LABEL_8;
  }

  v70 = v28;
  v71 = v24;
  v30 = v29;
  v31 = sub_251E71B88();
  v33 = v32;

  v34 = [v27 doseQuantity];
  if (v34)
  {
    v35 = v34;
    v36 = sub_251E71B88();
    v38 = v37;

    v72 = "FIELD_LABEL_DOSE_X";
    v39 = sub_251E71AA8();
    (*(*(v39 - 8) + 56))(v73, 1, 1, v39);
    sub_251E650F4(0, &qword_27F4BD6C8, sub_251E65774, MEMORY[0x277D84560]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_251E72610;
    v41 = MEMORY[0x277D837D0];
    *(v40 + 56) = MEMORY[0x277D837D0];
    v42 = sub_251E657D8();
    *(v40 + 32) = v31;
    *(v40 + 40) = v33;
    *(v40 + 96) = v41;
    *(v40 + 104) = v42;
    *(v40 + 64) = v42;
    *(v40 + 72) = v36;
    *(v40 + 80) = v38;
    type metadata accessor for SignedClinicalDataWalletPassManager();
    v43 = swift_getObjCClassFromMetadata();
    v44 = [objc_opt_self() bundleForClass_];
    v45 = sub_251E718B8();
    v47 = v46;

    if (*(v40 + 16))
    {
      v48 = v73;
      v45 = sub_251E71B98();
      v50 = v49;

      v47 = v50;
      v24 = v71;
      sub_251E6582C(v48);
    }

    else
    {

      v24 = v71;
      sub_251E6582C(v73);
    }
  }

  else
  {
    v61 = sub_251E71AA8();
    v62 = v72;
    (*(*(v61 - 8) + 56))(v72, 1, 1, v61);
    sub_251E650F4(0, &qword_27F4BD6C8, sub_251E65774, MEMORY[0x277D84560]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_251E725D0;
    *(v63 + 56) = MEMORY[0x277D837D0];
    *(v63 + 64) = sub_251E657D8();
    *(v63 + 32) = v31;
    *(v63 + 40) = v33;
    type metadata accessor for SignedClinicalDataWalletPassManager();
    v64 = swift_getObjCClassFromMetadata();
    v65 = [objc_opt_self() bundleForClass_];
    v45 = sub_251E718B8();
    v47 = v66;

    if (*(v63 + 16))
    {
      v45 = sub_251E71B98();
      v68 = v67;

      v47 = v68;
    }

    else
    {
    }

    sub_251E6582C(v62);
    v24 = v71;
  }

LABEL_8:
  v77 = 762869089;
  v78 = 0xE400000000000000;
  v54 = [v18 UUID];
  sub_251E71A88();

  sub_251E6572C(&qword_27F4BD6C0, MEMORY[0x277CC95F0]);
  v55 = v76;
  v56 = sub_251E71E98();
  MEMORY[0x253090C90](v56);

  (*(v75 + 8))(v7, v55);
  v57 = v77;
  v58 = v78;
  LOBYTE(v77) = 0;
  *a2 = v57;
  *(a2 + 8) = v58;
  *(a2 + 16) = v45;
  *(a2 + 24) = v47;
  v59 = v74;
  *(a2 + 32) = v24;
  *(a2 + 40) = v59;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  *&result = 33621249;
  *(a2 + 104) = 33621249;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

double sub_251E61B08(void *a1, void *a2, char **a3)
{
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v9 = *a1;
    ++*a2;
    v10 = sub_251E71E98();
    MEMORY[0x253090C90](v10);

    v8 = 0x696669746E656469;
    v19 = 0xEB000000002D7265;
    v11 = v9[2];
    if (v11)
    {
      v4 = v9[5];
      v18 = v9[4];
      v12 = &v9[2 * v11 + 4];
      v3 = *(v12 - 16);
      v6 = *(v12 - 8);
    }

    else
    {
      v3 = 0;
      v18 = 0;
      v4 = 0;
      v6 = 0xE000000000000000;
    }

    v7 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }
  }

  v7 = sub_251E62960(0, *(v7 + 2) + 1, 1, v7);
  *v5 = v7;
LABEL_6:
  v15 = *(v7 + 2);
  v14 = *(v7 + 3);
  if (v15 >= v14 >> 1)
  {
    v7 = sub_251E62960((v14 > 1), v15 + 1, 1, v7);
    *v5 = v7;
  }

  *(v7 + 2) = v15 + 1;
  v16 = &v7[128 * v15];
  *(v16 + 4) = v8;
  *(v16 + 5) = v19;
  *(v16 + 6) = v18;
  *(v16 + 7) = v4;
  *(v16 + 8) = v3;
  *(v16 + 9) = v6;
  *(v16 + 5) = 0u;
  *(v16 + 6) = 0u;
  *(v16 + 7) = 0u;
  *(v16 + 16) = 0;
  *&result = 33686789;
  *(v16 + 34) = 33686789;
  *(v16 + 18) = 0;
  v16[152] = 1;
  return result;
}

uint64_t sub_251E61CB8(uint64_t result, void *a2, char **a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; ++i)
    {
      v8 = *i;

      sub_251E61B08(&v8, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_251E61D50(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  sub_251E650F4(0, &qword_27F4BD6B8, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v62 - v7;
  v8 = sub_251E71A98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_251E71A68();
  v13 = *(v65 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v65);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = v18;
  v62 = v8;
  v20 = v17;
  if (![v19 notGiven])
  {

    v8 = v62;
LABEL_6:
    v66 = 0x2D64726F636572;
    v67 = 0xE700000000000000;
    v45 = [v17 UUID];
    sub_251E71A88();

    sub_251E6572C(&qword_27F4BD6C0, MEMORY[0x277CC95F0]);
    v46 = sub_251E71E98();
    MEMORY[0x253090C90](v46);

    (*(v9 + 8))(v12, v8);
    v47 = v66;
    v63 = v67;
    v48 = sub_251E65ACC();
    v50 = v49;
    v51 = sub_251E5CD50();
    v52 = [v17 sortDate];
    v53 = [v52 date];

    sub_251E71A48();
    v54 = sub_251E71A18();
    (*(v13 + 8))(v16, v65);
    v55 = [v51 stringFromDate_];

    v56 = sub_251E71B88();
    v58 = v57;

    v59 = v63;
    *a3 = v47;
    *(a3 + 8) = v59;
    *(a3 + 16) = v48;
    *(a3 + 24) = v50;
    *(a3 + 32) = v56;
    *(a3 + 40) = v58;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0;
    *(a3 + 104) = 1282;
    v60 = 1;
    goto LABEL_9;
  }

  v21 = sub_251E5CDD0();
  v22 = [v20 sortDate];
  v23 = [v22 date];

  sub_251E71A48();
  v24 = sub_251E71A18();
  (*(v13 + 8))(v16, v65);
  v25 = [v21 stringFromDate_];

  v26 = sub_251E71B88();
  v28 = v27;

  v66 = 0x2D64726F636572;
  v67 = 0xE700000000000000;
  v29 = [v20 UUID];
  sub_251E71A88();

  sub_251E6572C(&qword_27F4BD6C0, MEMORY[0x277CC95F0]);
  v30 = v62;
  v31 = sub_251E71E98();
  MEMORY[0x253090C90](v31);

  (*(v9 + 8))(v12, v30);
  v64 = v66;
  v65 = v20;
  v62 = v67;
  v32 = sub_251E65ACC();
  v34 = v33;
  v35 = sub_251E71AA8();
  v36 = v63;
  (*(*(v35 - 8) + 56))(v63, 1, 1, v35);
  sub_251E650F4(0, &qword_27F4BD6C8, sub_251E65774, MEMORY[0x277D84560]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_251E725D0;
  *(v37 + 56) = MEMORY[0x277D837D0];
  *(v37 + 64) = sub_251E657D8();
  *(v37 + 32) = v26;
  *(v37 + 40) = v28;
  type metadata accessor for SignedClinicalDataWalletPassManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [objc_opt_self() bundleForClass_];
  v40 = sub_251E718B8();
  v42 = v41;

  if (*(v37 + 16))
  {
    v40 = sub_251E71B98();
    v44 = v43;

    v42 = v44;
  }

  else
  {
  }

  sub_251E6582C(v36);
  v61 = v62;
  *a3 = v64;
  *(a3 + 8) = v61;
  *(a3 + 16) = v32;
  *(a3 + 24) = v34;
  *(a3 + 32) = v40;
  *(a3 + 40) = v42;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 1285;
  v60 = 2;
LABEL_9:
  *(a3 + 106) = v60;
  *(a3 + 107) = 2;
  *(a3 + 112) = 0;
  *(a3 + 120) = 1;
}

uint64_t SignedClinicalDataWalletPassManager.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t SignedClinicalDataWalletPassManager.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_251E624EC()
{
  result = qword_27F4BD678;
  if (!qword_27F4BD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD678);
  }

  return result;
}

uint64_t sub_251E62594()
{
  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 32);
  v2 = sub_251E71B78();
  v3 = sub_251E71B78();
  v4 = [v1 passWithPassTypeIdentifier:v2 serialNumber:v3];

  os_unfair_lock_unlock((v0 + 24));
  if (v4)
  {
    v5 = [v4 uniqueID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_251E71B88();

      return v7;
    }
  }

  return 0;
}

void sub_251E62680()
{
  if (!qword_27F4BD680)
  {
    sub_251E71928();
    sub_251E650F4(255, &qword_27F4BD688, type metadata accessor for PassComponents.BundleResource, MEMORY[0x277D83940]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4BD680);
    }
  }
}

uint64_t sub_251E62778(uint64_t a1, uint64_t a2)
{
  sub_251E62680();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251E627DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_251E6283C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_251E659FC(0, &qword_27F4BD718, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_251E62960(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_251E659FC(0, &qword_27F4BD6A0, &type metadata for WalletPassField, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_251E62A84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_251E65924();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_251E62B7C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_251E650F4(0, &qword_27F4BD720, type metadata accessor for PassComponents.BundleResource, MEMORY[0x277D84560]);
  v10 = *(type metadata accessor for PassComponents.BundleResource(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PassComponents.BundleResource(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_251E62D78(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_251E659FC(0, &qword_27F4BD6F0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_251E62E1C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_251E65158(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_251E630D0(v6);
  return sub_251E71D78();
}

uint64_t sub_251E62E98(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_251E62960(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_251E62F8C(char *a1, int64_t a2, char a3)
{
  result = sub_251E62FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_251E62FAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_251E659FC(0, &qword_27F4BD6A0, &type metadata for WalletPassField, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_251E630D0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_251E71E88();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_251E5C984(0, &qword_27F4BD668, 0x277CCD5F8);
        v6 = sub_251E71C18();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_251E6344C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_251E631E4(0, v2, 1, a1);
  }
}

void sub_251E631E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_251E71A68();
  v8 = *(*(v38 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v38);
  v37 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v39 = *a4;
    v35 = (v11 + 8);
    v13 = v39 + 8 * a3 - 8;
    v14 = a1 - a3;
LABEL_5:
    v33 = v13;
    v34 = a3;
    v15 = *(v39 + 8 * a3);
    v32 = v14;
    while (1)
    {
      v16 = *v13;
      v17 = v15;
      v18 = v16;
      v19 = [v17 sortDate];
      v20 = [v19 date];

      v21 = v36;
      sub_251E71A48();

      v22 = [v18 sortDate];
      v23 = [v22 date];

      v24 = v37;
      sub_251E71A48();

      LOBYTE(v22) = sub_251E71A28();
      v25 = *v35;
      v26 = v24;
      v27 = v38;
      (*v35)(v26, v38);
      v25(v21, v27);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v13 = v33 + 8;
        v14 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v28 = *v13;
      v15 = *(v13 + 8);
      *v13 = v15;
      *(v13 + 8) = v28;
      v13 -= 8;
      if (__CFADD__(v14++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_251E6344C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v136 = sub_251E71A68();
  v9 = *(*(v136 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v136);
  v135 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v134 = &v121 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_87:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_126;
    }

    a4 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v116 = a4;
    }

    else
    {
LABEL_120:
      v116 = sub_251E642F8(a4);
    }

    v137 = v116;
    a4 = *(v116 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v117 = *&v116[16 * a4];
        v118 = v116;
        v119 = *&v116[16 * a4 + 24];
        sub_251E63D70((*a3 + 8 * v117), (*a3 + 8 * *&v116[16 * a4 + 16]), (*a3 + 8 * v119), v5);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v119 < v117)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_251E642F8(v118);
        }

        if (a4 - 2 >= *(v118 + 2))
        {
          goto LABEL_114;
        }

        v120 = &v118[16 * a4];
        *v120 = v117;
        *(v120 + 1) = v119;
        v137 = v118;
        sub_251E6426C(a4 - 1);
        v116 = v137;
        a4 = *(v137 + 2);
        if (a4 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v15 = 0;
  v133 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  v125 = a4;
  v122 = a3;
  while (1)
  {
    v17 = v15++;
    v127 = v17;
    if (v15 < v14)
    {
      v131 = v14;
      v123 = v16;
      v124 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v20 = v17;
      v129 = 8 * v17;
      v21 = (v18 + 8 * v17);
      v22 = *v21;
      v5 = (v21 + 2);
      v23 = v19;
      v24 = v22;
      v25 = [v23 sortDate];
      v26 = [v25 date];

      v27 = v134;
      sub_251E71A48();

      v28 = [v24 sortDate];
      v29 = [v28 date];

      v30 = v135;
      sub_251E71A48();

      LODWORD(v132) = sub_251E71A28();
      v31 = *v133;
      v32 = v30;
      v33 = v136;
      (*v133)(v32, v136);
      v130 = v31;
      v31(v27, v33);

      v34 = v20 + 2;
      while (1)
      {
        v15 = v131;
        if (v131 == v34)
        {
          break;
        }

        v35 = *(v5 - 8);
        v36 = *v5;
        v37 = v35;
        v38 = [v36 sortDate];
        v39 = [v38 date];

        v40 = v134;
        sub_251E71A48();

        v41 = [v37 sortDate];
        v42 = [v41 date];

        v43 = v135;
        sub_251E71A48();

        LODWORD(v41) = sub_251E71A28() & 1;
        v44 = v136;
        v45 = v130;
        v130(v43, v136);
        v45(v40, v44);

        ++v34;
        v5 += 8;
        if ((v132 & 1) != v41)
        {
          v15 = v34 - 1;
          break;
        }
      }

      v16 = v123;
      v6 = v124;
      a3 = v122;
      a4 = v125;
      v17 = v127;
      v46 = v129;
      if (v132)
      {
        if (v15 < v127)
        {
          goto LABEL_117;
        }

        if (v127 < v15)
        {
          v47 = 8 * v15 - 8;
          v48 = v15;
          v49 = v127;
          do
          {
            if (v49 != --v48)
            {
              v51 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v50 = *(v51 + v46);
              *(v51 + v46) = *(v51 + v47);
              *(v51 + v47) = v50;
            }

            ++v49;
            v47 -= 8;
            v46 += 8;
          }

          while (v49 < v48);
        }
      }
    }

    v52 = a3[1];
    if (v15 < v52)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_116;
      }

      if (v15 - v17 < a4)
      {
        v53 = v17 + a4;
        if (__OFADD__(v17, a4))
        {
          goto LABEL_118;
        }

        if (v53 >= v52)
        {
          v53 = a3[1];
        }

        if (v53 < v17)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v15 != v53)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v15 < v17)
    {
      goto LABEL_115;
    }

    v70 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v70;
    }

    else
    {
      v16 = sub_251E62A84(0, *(v70 + 2) + 1, 1, v70);
    }

    v72 = *(v16 + 2);
    v71 = *(v16 + 3);
    v5 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v16 = sub_251E62A84((v71 > 1), v72 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v73 = &v16[16 * v72];
    *(v73 + 4) = v127;
    *(v73 + 5) = v15;
    a4 = *v126;
    if (!*v126)
    {
      goto LABEL_125;
    }

    if (v72)
    {
      while (1)
      {
        v74 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v75 = *(v16 + 4);
          v76 = *(v16 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_55:
          if (v78)
          {
            goto LABEL_104;
          }

          v91 = &v16[16 * v5];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_107;
          }

          v97 = &v16[16 * v74 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_111;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v74 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v101 = &v16[16 * v5];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_69:
        if (v96)
        {
          goto LABEL_106;
        }

        v104 = &v16[16 * v74];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_109;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_76:
        v112 = v74 - 1;
        if (v74 - 1 >= v5)
        {
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v113 = v16;
        v114 = *&v16[16 * v112 + 32];
        v5 = *&v16[16 * v74 + 40];
        sub_251E63D70((*a3 + 8 * v114), (*a3 + 8 * *&v16[16 * v74 + 32]), (*a3 + 8 * v5), a4);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v5 < v114)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_251E642F8(v113);
        }

        if (v112 >= *(v113 + 2))
        {
          goto LABEL_101;
        }

        v115 = &v113[16 * v112];
        *(v115 + 4) = v114;
        *(v115 + 5) = v5;
        v137 = v113;
        sub_251E6426C(v74);
        v16 = v137;
        v5 = *(v137 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v16[16 * v5 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_102;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_103;
      }

      v86 = &v16[16 * v5];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_105;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_108;
      }

      if (v90 >= v82)
      {
        v108 = &v16[16 * v74 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_112;
        }

        if (v77 < v111)
        {
          v74 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v125;
    if (v15 >= v14)
    {
      goto LABEL_87;
    }
  }

  v123 = v16;
  v124 = v6;
  v132 = *a3;
  v54 = v132 + 8 * v15 - 8;
  v55 = v17 - v15;
  v128 = v53;
LABEL_28:
  v130 = v54;
  v131 = v15;
  v56 = *(v132 + 8 * v15);
  v129 = v55;
  while (1)
  {
    v57 = *v54;
    v5 = v56;
    v58 = v57;
    v59 = [v5 sortDate];
    v60 = [v59 date];

    v61 = v134;
    sub_251E71A48();

    v62 = [v58 sortDate];
    v63 = [v62 date];

    v64 = v135;
    sub_251E71A48();

    a4 = sub_251E71A28();
    v65 = *v133;
    v66 = v64;
    v67 = v136;
    (*v133)(v66, v136);
    v65(v61, v67);

    if ((a4 & 1) == 0)
    {
LABEL_27:
      v15 = v131 + 1;
      v54 = v130 + 8;
      v55 = v129 - 1;
      if (v131 + 1 != v128)
      {
        goto LABEL_28;
      }

      v15 = v128;
      v16 = v123;
      v6 = v124;
      a3 = v122;
      v17 = v127;
      goto LABEL_35;
    }

    if (!v132)
    {
      break;
    }

    v68 = *v54;
    v56 = *(v54 + 8);
    *v54 = v56;
    *(v54 + 8) = v68;
    v54 -= 8;
    if (__CFADD__(v55++, 1))
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t sub_251E63D70(id *a1, id *a2, char *a3, void **a4)
{
  v58 = sub_251E71A68();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v57 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v51 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v60 = &a4[v16];
    if (a3 - a2 < 8)
    {
      v31 = a2;
    }

    else
    {
      v31 = a2;
      if (a2 > a1)
      {
        v53 = (v8 + 8);
        v59 = a4;
        v51 = a1;
LABEL_28:
        v52 = v31;
        v32 = v31 - 1;
        a3 -= 8;
        v33 = v60;
        v54 = v31 - 1;
        do
        {
          v34 = (a3 + 8);
          v35 = *--v33;
          v36 = *v32;
          v37 = v35;
          v55 = v37;
          v38 = v36;
          v39 = [v37 sortDate];
          v40 = [v39 date];

          v41 = v56;
          sub_251E71A48();

          v42 = [v38 sortDate];
          v43 = [v42 date];

          v44 = v57;
          sub_251E71A48();

          LOBYTE(v42) = sub_251E71A28();
          v45 = *v53;
          v46 = v44;
          v47 = v58;
          (*v53)(v46, v58);
          v45(v41, v47);

          if (v42)
          {
            v48 = v51;
            v49 = v54;
            if (v34 != v52)
            {
              *a3 = *v54;
            }

            a4 = v59;
            if (v60 <= v59 || (v31 = v49, v49 <= v48))
            {
              v31 = v49;
              goto LABEL_39;
            }

            goto LABEL_28;
          }

          if (v34 != v60)
          {
            *a3 = *v33;
          }

          a3 -= 8;
          v60 = v33;
          v32 = v54;
        }

        while (v33 > v59);
        v60 = v33;
        v31 = v52;
        a4 = v59;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v60 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = (v8 + 8);
      v55 = a3;
      while (1)
      {
        v59 = a4;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 sortDate];
        v21 = [v20 date];

        v22 = v56;
        sub_251E71A48();

        v23 = [v19 sortDate];
        v24 = [v23 date];

        v25 = v57;
        sub_251E71A48();

        LOBYTE(v23) = sub_251E71A28();
        v26 = *v54;
        v27 = v25;
        v28 = v58;
        (*v54)(v27, v58);
        v26(v22, v28);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v29 = a2;
        v30 = a1 == a2++;
        a4 = v59;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++a1;
        if (a4 >= v60 || a2 >= v55)
        {
          goto LABEL_20;
        }
      }

      v29 = v59;
      a4 = v59 + 1;
      if (a1 == v59)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a1 = *v29;
      goto LABEL_18;
    }

LABEL_20:
    v31 = a1;
  }

LABEL_39:
  if (v31 != a4 || v31 >= (a4 + ((v60 - a4 + (v60 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v31, a4, 8 * (v60 - a4));
  }

  return 1;
}

uint64_t sub_251E6426C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_251E642F8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_251E6430C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_251E71F38();
  sub_251E71BB8();
  v9 = sub_251E71F58();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_251E71EB8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_251E646DC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_251E6445C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_251E659A8(0, &qword_27F4BD710, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_251E71D08();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_251E71F38();
      sub_251E71BB8();
      result = sub_251E71F58();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_251E646DC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_251E6445C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_251E6485C();
      goto LABEL_16;
    }

    sub_251E649D8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_251E71F38();
  sub_251E71BB8();
  result = sub_251E71F58();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_251E71EB8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_251E71ED8();
  __break(1u);
  return result;
}

void *sub_251E6485C()
{
  v1 = v0;
  sub_251E659A8(0, &qword_27F4BD710, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_251E71CF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_251E649D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_251E659A8(0, &qword_27F4BD710, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_251E71D08();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_251E71F38();

      sub_251E71BB8();
      result = sub_251E71F58();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void (*sub_251E64C30(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253090E10](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_251E64CB0;
  }

  __break(1u);
  return result;
}

uint64_t sub_251E64CB8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_251E71DA8();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_251E62D78(v3, 0);
  sub_251E64D4C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_251E64D4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251E71DA8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_251E71DA8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_251E658BC();
          sub_251E6572C(&qword_27F4BD6E8, sub_251E658BC);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_251E64C30(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_251E5C984(0, &qword_27F4BD668, 0x277CCD5F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_251E650F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251E6516C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_251E651C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253090D30](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_251E6430C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_251E65258(void *a1)
{
  v2 = [a1 credentialTypes];
  v3 = sub_251E71C08();

  v4 = *MEMORY[0x277CCCEA0];
  v34[0] = sub_251E71B88();
  v34[1] = v5;
  v33 = v34;
  sub_251E5C9CC(sub_251E65AB0, v32, v3);

  type metadata accessor for SignedClinicalDataWalletPassManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_251E718B8();

  v29 = a1;
  v8 = [a1 items];
  sub_251E5C984(0, &qword_27F4BD708, 0x277CCD990);
  v9 = sub_251E71C08();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v7;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_22:
    v31 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v10 = sub_251E71DA8();
  v30 = v7;
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_3:
  v7 = 0;
  v31 = MEMORY[0x277D84F90];
  do
  {
    v11 = v7;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x253090E10](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v14 = [v12 primaryConcept];
      v15 = [v14 localizedPreferredName];

      if (v15)
      {
        break;
      }

      ++v11;
      if (v7 == v10)
      {
        goto LABEL_23;
      }
    }

    v16 = sub_251E71B88();
    v18 = v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_251E6283C(0, *(v31 + 2) + 1, 1, v31);
    }

    v20 = *(v31 + 2);
    v19 = *(v31 + 3);
    if (v20 >= v19 >> 1)
    {
      v31 = sub_251E6283C((v19 > 1), v20 + 1, 1, v31);
    }

    *(v31 + 2) = v20 + 1;
    v21 = &v31[16 * v20];
    *(v21 + 4) = v16;
    *(v21 + 5) = v18;
  }

  while (v7 != v10);
LABEL_23:

  v22 = sub_251E651C0(v31);

  sub_251E5CCD4(v22);
  if (!v23)
  {

    v26 = [v29 recordItemsDisplayName];
    sub_251E71B88();
LABEL_28:
    v25 = v30;

    return v25;
  }

  v24 = *(v22 + 16);

  if (v24 != 1)
  {

    v26 = [objc_opt_self() bundleForClass_];
    sub_251E718B8();
    goto LABEL_28;
  }

  return v30;
}

unint64_t sub_251E656B0()
{
  result = qword_27F4BD6B0;
  if (!qword_27F4BD6B0)
  {
    sub_251E659FC(255, &qword_27F4BD6A8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD6B0);
  }

  return result;
}

uint64_t sub_251E6572C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251E65774()
{
  result = qword_27F4BD6D0;
  if (!qword_27F4BD6D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4BD6D0);
  }

  return result;
}

unint64_t sub_251E657D8()
{
  result = qword_27F4BD6D8;
  if (!qword_27F4BD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD6D8);
  }

  return result;
}

uint64_t sub_251E6582C(uint64_t a1)
{
  sub_251E650F4(0, &qword_27F4BD6B8, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251E658BC()
{
  if (!qword_27F4BD6E0)
  {
    sub_251E5C984(255, &qword_27F4BD668, 0x277CCD5F8);
    v0 = sub_251E71C28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4BD6E0);
    }
  }
}

void sub_251E65924()
{
  if (!qword_27F4BD6F8)
  {
    sub_251E659A8(255, &qword_27F4BD700, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v0 = sub_251E71EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4BD6F8);
    }
  }
}

void sub_251E659A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251E659FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251E65A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassComponents.BundleResource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251E65ACC()
{
  v1 = [v0 primaryConcept];
  v2 = [v1 localizedPreferredName];

  if (v2)
  {
    v3 = sub_251E71B88();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  result = sub_251E65BDC();
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    result = sub_251E65DCC();
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {

      v12 = [v0 fallbackDisplayString];
      v13 = sub_251E71B88();

      return v13;
    }
  }

  return result;
}

uint64_t sub_251E65BDC()
{
  v1 = [v0 medicalRecordCodings];
  sub_251E5C984(0, &qword_27F4BD728, 0x277CCD5C0);
  v2 = sub_251E71C08();

  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_251E71DA8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:

    return 0;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253090E10](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = [v5 codingSystem];
    v9 = [objc_opt_self() textSystem];
    v10 = v9;
    if (v8)
    {
      break;
    }

LABEL_5:
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_19;
    }
  }

  sub_251E5C984(0, &qword_27F4BD730, 0x277CCD5D0);
  v11 = sub_251E71CA8();

  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = [v6 displayString];

  if (v12)
  {
    v13 = sub_251E71B88();

    return v13;
  }

  return 0;
}

uint64_t sub_251E65DCC()
{
  v1 = [v0 medicalRecordCodings];
  sub_251E5C984(0, &qword_27F4BD728, 0x277CCD5C0);
  v2 = sub_251E71C08();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return 0;
  }

LABEL_19:
  v3 = sub_251E71DA8();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253090E10](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v5 displayString];
    if (v8)
    {
      v9 = v8;
      v10 = sub_251E71B88();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        break;
      }
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_20;
    }
  }

  v14 = [v6 displayString];

  if (v14)
  {
    v15 = sub_251E71B88();

    return v15;
  }

  return 0;
}

unint64_t HKSignedClinicalDataRecord.appLaunchURL.getter()
{
  v1 = v0;
  v2 = sub_251E71A98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = [v1 items];
  sub_251E663DC();
  v11 = sub_251E71C08();

  if (v11 >> 62)
  {
    if (sub_251E71DA8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x253090E10](0, v11);
      goto LABEL_6;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);
LABEL_6:
      v13 = v12;

      v14 = [v13 medicalRecordSampleID];

      sub_251E71A88();
      (*(v3 + 32))(v9, v7, v2);
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_251E71D28();

      v35 = 0xD000000000000022;
      v36 = 0x8000000251E73E10;
      v15 = sub_251E71A78();
      MEMORY[0x253090C90](v15);

      v16 = v35;
      (*(v3 + 8))(v9, v2);
      return v16;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_27F4BD650 != -1)
  {
LABEL_15:
    swift_once();
  }

  v17 = sub_251E71B18();
  __swift_project_value_buffer(v17, qword_27F4BF310);
  v18 = v1;
  v19 = sub_251E71AF8();
  v20 = sub_251E71C78();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315138;
    v23 = HKSensitiveLogItem();
    sub_251E71CC8();
    swift_unknownObjectRelease();
    v24 = v37;
    v25 = __swift_project_boxed_opaque_existential_0(&v35, v37);
    v26 = *(*(v24 - 8) + 64);
    MEMORY[0x28223BE20](v25);
    (*(v28 + 16))(&v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = sub_251E71BA8();
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_0(&v35);
    v32 = sub_251E66D74(v29, v31, &v38);

    *(v21 + 4) = v32;
    _os_log_impl(&dword_251E5A000, v19, v20, "unable to construct deep link to %s, no valid record", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x253091490](v22, -1, -1);
    MEMORY[0x253091490](v21, -1, -1);
  }

  return 0xD000000000000022;
}

unint64_t sub_251E663DC()
{
  result = qword_27F4BD708;
  if (!qword_27F4BD708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4BD708);
  }

  return result;
}

uint64_t sub_251E66488(uint64_t *a1, uint64_t (*a2)(void *))
{
  v5 = [v2 credentialTypes];
  v6 = sub_251E71C08();

  v7 = *a1;
  v11[0] = sub_251E71B88();
  v11[1] = v8;
  v10[2] = v11;
  LOBYTE(a2) = sub_251E5C9CC(a2, v10, v6);

  return a2 & 1;
}

BOOL HKSignedClinicalDataRecord.permanentlyIneligibleToBeAddedToWallet.getter()
{
  v1 = sub_251E71A68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  if ((HKSignedClinicalDataRecord.hasAddToWalletEligibleCredentialTypes.getter() & 1) == 0)
  {
    return 1;
  }

  v12 = [v0 expirationDate];
  if (!v12)
  {
    return [v0 signatureStatus] == 3;
  }

  v13 = v12;
  sub_251E71A48();

  (*(v2 + 32))(v11, v9, v1);
  sub_251E71A58();
  v14 = sub_251E71A38();
  v15 = *(v2 + 8);
  v15(v6, v1);
  v15(v11, v1);
  return (v14 & 1) != 0 || [v0 signatureStatus] == 3;
}

BOOL HKSignedClinicalDataRecord.eligibleToBeAddedToWallet.getter()
{
  v1 = sub_251E71A68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  if ((HKSignedClinicalDataRecord.hasAddToWalletEligibleCredentialTypes.getter() & 1) == 0)
  {
    return 0;
  }

  v9 = [v0 expirationDate];
  if (v9)
  {
    v10 = v9;
    sub_251E71A48();

    sub_251E71A58();
    LOBYTE(v10) = sub_251E71A38();
    v11 = *(v2 + 8);
    v11(v6, v1);
    v11(v8, v1);
    if (v10)
    {
      return 0;
    }
  }

  return [v0 signatureStatus] != 3 && objc_msgSend(v0, sel_signatureStatus) == 2;
}

uint64_t HKSignedClinicalDataRecord.detailSignatureStatusPlainString.getter()
{
  v1 = v0;
  v2 = sub_251E71A68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = [v1 expirationDate];
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = v13;
  sub_251E71A48();

  (*(v3 + 32))(v12, v10, v2);
  sub_251E71A58();
  v15 = sub_251E71A38();
  v16 = *(v3 + 8);
  v16(v7, v2);
  if ((v15 & 1) == 0)
  {
    v16(v12, v2);
LABEL_5:
    [v1 signatureStatus];
    type metadata accessor for SignedClinicalDataWalletPassManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    v19 = sub_251E718B8();

    return v19;
  }

  type metadata accessor for SignedClinicalDataWalletPassManager();
  v17 = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = sub_251E718B8();

  v16(v12, v2);
  return v19;
}

uint64_t HKSignedClinicalDataRecord.hasAddToWalletEligibleCredentialTypes.getter()
{
  v1 = [v0 credentialTypes];
  v2 = sub_251E71C08();

  v3 = *MEMORY[0x277CCCE98];
  v15 = sub_251E71B88();
  v16 = v4;
  v14 = &v15;
  v5 = sub_251E5C9CC(sub_251E65AB0, v13, v2);

  if (v5)
  {
    v6 = [v0 credentialTypes];
    v7 = sub_251E71C08();

    v8 = *MEMORY[0x277CCCEA0];
    v15 = sub_251E71B88();
    v16 = v9;
    MEMORY[0x28223BE20](v15);
    v12[2] = &v15;
    v10 = sub_251E5C9CC(sub_251E65AB0, v12, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_251E66D74(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251E66E40(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_251E67394(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251E66E40(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_251E66F4C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_251E71D58();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_251E66F4C(uint64_t a1, unint64_t a2)
{
  v4 = sub_251E66F98(a1, a2);
  sub_251E670C8(&unk_28641AA70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251E66F98(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_251E671B4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_251E71D58();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_251E71BD8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251E671B4(v10, 0);
        result = sub_251E71D18();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_251E670C8(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_251E6721C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_251E671B4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_251E673F0();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251E6721C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_251E673F0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_251E67394(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_251E673F0()
{
  if (!qword_27F4BD738)
  {
    v0 = sub_251E71EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4BD738);
    }
  }
}

uint64_t WalletPass.asData()()
{
  v1 = sub_251E71838();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  memcpy(v12, v0, sizeof(v12));
  v4 = sub_251E71878();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_251E71868();
  sub_251E676B0(0, &qword_27F4BD740, MEMORY[0x277D84560]);
  v7 = *(v2 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_251E72610;
  sub_251E71818();
  sub_251E71828();
  sub_251E67658();
  sub_251E676B0(0, &qword_27F4BD750, MEMORY[0x277D83940]);
  sub_251E67710();
  sub_251E71CD8();
  sub_251E71848();
  memcpy(v11, v12, sizeof(v11));
  sub_251E67784();
  v9 = sub_251E71858();

  return v9;
}

unint64_t sub_251E67658()
{
  result = qword_27F4BD748;
  if (!qword_27F4BD748)
  {
    sub_251E71838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD748);
  }

  return result;
}

void sub_251E676B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_251E71838();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251E67710()
{
  result = qword_27F4BD758;
  if (!qword_27F4BD758)
  {
    sub_251E676B0(255, &qword_27F4BD750, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD758);
  }

  return result;
}

unint64_t sub_251E67784()
{
  result = qword_27F4BD760;
  if (!qword_27F4BD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD760);
  }

  return result;
}

uint64_t WalletPassManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  v2 = v1;
  return v0;
}

uint64_t PassComponents.init(identifier:walletPass:icon2xURL:icon3xURL:resources:)@<X0>(__int128 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_251E67BA8(a1, a6);
  memcpy((a6 + 40), a2, 0x118uLL);
  v11 = type metadata accessor for PassComponents(0);
  v12 = v11[6];
  v13 = sub_251E71928();
  v14 = *(*(v13 - 8) + 32);
  v14(a6 + v12, a3, v13);
  result = (v14)(a6 + v11[7], a4, v13);
  *(a6 + v11[8]) = a5;
  return result;
}

uint64_t PassComponents.BundleResource.init(url:path:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_251E71928();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for PassComponents.BundleResource(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t PassComponents.walletPass.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 40), 0x118uLL);
  memcpy(a1, (v1 + 40), 0x118uLL);
  return sub_251E67C9C(__dst, v4);
}

uint64_t PassComponents.icon2xURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PassComponents(0) + 24);
  v4 = sub_251E71928();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PassComponents.icon3xURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PassComponents(0) + 28);
  v4 = sub_251E71928();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PassComponents.resources.getter()
{
  v1 = *(v0 + *(type metadata accessor for PassComponents(0) + 32));
}

uint64_t WalletPassManager.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  v2 = v1;
  return v0;
}

uint64_t sub_251E67BA8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_251E67C00(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251E67C38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_251E67CF8()
{
  os_unfair_lock_lock((v0 + 24));
  v1 = [*(v0 + 32) canAddPassOfType_];
  os_unfair_lock_unlock((v0 + 24));
  return v1;
}

uint64_t sub_251E67D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((v3 + 24));
  sub_251E67DA8((v3 + 32), a2, a3, &v7);
  os_unfair_lock_unlock((v3 + 24));
  return v7;
}

void sub_251E67DA8(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  (*(a3 + 8))(a2, a3);
  v8 = sub_251E71B78();

  (*(a3 + 16))(a2, a3);
  v9 = sub_251E71B78();

  v10 = [v7 passWithPassTypeIdentifier:v8 serialNumber:v9];

  *a4 = v10;
}

void *sub_251E67E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251E67D40(a1, a2, a3);
  if (result)
  {
    v4 = result;
    v5 = [result uniqueID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_251E71B88();

      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_251E67F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_251E67E88(a1, a2, a3);
  if (v6)
  {
    MEMORY[0x253090C90](v5);

    sub_251E71918();
  }

  else
  {
    v8 = sub_251E71928();
    v9 = *(*(v8 - 8) + 56);

    return v9(a4, 1, 1, v8);
  }
}

void sub_251E67FF4(void *a1, void (*a2)(void), void (*a3)(void))
{
  v43 = a2;
  v44 = a3;
  v5 = sub_251E71B28();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_251E71B58();
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251E71B38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251E71928();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - v20;
  if ([objc_opt_self() isWalletVisible])
  {
    sub_251E68FD0(a1, v21);
    sub_251E5C984(0, &qword_27F4BD768, 0x277D85C78);
    (*(v11 + 104))(v14, *MEMORY[0x277D851C8], v10);
    v35 = v3;
    v36 = sub_251E71C98();
    (*(v11 + 8))(v14, v10);
    (*(v16 + 16))(v19, v21, v15);
    v26 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v35;
    (*(v16 + 32))(v27 + v26, v19, v15);
    v28 = (v27 + ((v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    v29 = v44;
    *v28 = v43;
    v28[1] = v29;
    aBlock[4] = sub_251E698A8;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251E689E4;
    aBlock[3] = &block_descriptor;
    v30 = _Block_copy(aBlock);

    v31 = v37;
    sub_251E71B48();
    v45 = MEMORY[0x277D84F90];
    sub_251E69954();
    sub_251E6A5D8(0, &qword_27F4BD778, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_251E699AC();
    v32 = v39;
    v33 = v42;
    sub_251E71CD8();
    v34 = v36;
    MEMORY[0x253090D50](0, v31, v32, v30);
    _Block_release(v30);

    (*(v41 + 8))(v32, v33);
    (*(v38 + 8))(v31, v40);
    (*(v16 + 8))(v21, v15);
  }

  else
  {
    os_unfair_lock_lock((v3 + 24));
    v22 = [*(v3 + 32) canAddPassOfType_];
    os_unfair_lock_unlock((v3 + 24));
    sub_251E624EC();
    v23 = swift_allocError();
    if (v22)
    {
      *v24 = 0;
    }

    else
    {
      *v24 = 1;
    }

    v25 = v23;
    v43();
  }
}

void sub_251E685A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v23 = a1;
  v6 = sub_251E71928();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  os_unfair_lock_lock((a1 + 24));
  v22 = *(a1 + 32);
  sub_251E6A5D8(0, &qword_27F4BD7E0, MEMORY[0x277CC9260], MEMORY[0x277D84560]);
  v10 = *(v7 + 72);
  v11 = *(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_251E725D0;
  v13 = *(v7 + 16);
  v13(v12 + ((v11 + 32) & ~v11), a2, v6);
  v14 = sub_251E71BF8();

  v13(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v15 = (v11 + 16) & ~v11;
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v21;
  *v17 = v20;
  v17[1] = v18;
  aBlock[4] = sub_251E6AF84;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251E68990;
  aBlock[3] = &block_descriptor_38;
  v19 = _Block_copy(aBlock);

  [v22 addUnsignedPassesAtURLs:v14 withCompletionHandler:v19];
  _Block_release(v19);

  os_unfair_lock_unlock(v23 + 6);
}

void sub_251E68844(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v6 = sub_251E718E8();
  v14[0] = 0;
  v7 = [v5 removeItemAtURL:v6 error:v14];

  if (!v7)
  {
    v11 = v14[0];
    v12 = sub_251E718C8();

    swift_willThrow();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    (a3)(0);

    goto LABEL_6;
  }

  v8 = v14[0];
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_251E624EC();
  v9 = swift_allocError();
  *v10 = 2;
  a3();

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_251E68990(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_251E689E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_251E68A28(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_251E68A48, 0, 0);
}

uint64_t sub_251E68A48()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_251E68B3C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_251E68B3C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_251E68C70;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_251E68C58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251E68C70()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_251E68CD4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_251E6AE3C();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_251E67FF4(a3, sub_251E6AF14, v10);
}

uint64_t sub_251E68E18(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_251E6AE3C();
    return sub_251E71C38();
  }

  else
  {
    sub_251E6AE3C();
    return sub_251E71C48();
  }
}

void sub_251E68E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((v3 + 24));
  sub_251E68EDC((v3 + 32), a1, a2, a3);

  os_unfair_lock_unlock((v3 + 24));
}

void sub_251E68EDC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  (*(a4 + 8))(a3, a4);
  v7 = sub_251E71B78();

  (*(a4 + 16))(a3, a4);
  v8 = sub_251E71B78();

  v9 = [v6 passWithPassTypeIdentifier:v7 serialNumber:v8];

  if (v9)
  {
    [v6 removePass_];
  }
}

uint64_t sub_251E68FD0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v99[35] = *MEMORY[0x277D85DE8];
  v6 = sub_251E71928();
  v94 = *(v6 - 8);
  v7 = *(v94 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v92 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v93 = &v80 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v80 - v12;
  v14 = NSTemporaryDirectory();
  sub_251E71B88();

  sub_251E718D8();

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v15);
  v99[0] = (*(v16 + 8))(v15, v16);
  v99[1] = v17;
  MEMORY[0x253090C90](45, 0xE100000000000000);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v18);
  v20 = *(v19 + 16);
  v21 = v19;
  v22 = a2;
  v23 = v20(v18, v21);
  MEMORY[0x253090C90](v23);

  MEMORY[0x253090C90](0x737361706B702ELL, 0xE700000000000000);
  sub_251E718F8();

  v24 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v25 = sub_251E718E8();
  v99[0] = 0;
  LODWORD(v18) = [v24 removeItemAtURL:v25 error:v99];

  if (v18)
  {
    v26 = v99[0];
  }

  else
  {
    v27 = v99[0];
    v28 = sub_251E718C8();

    swift_willThrow();
    v3 = 0;
  }

  v29 = objc_allocWithZone(MEMORY[0x277CCDD18]);
  v30 = sub_251E718E8();
  v31 = [v29 initWithURL:v30 archiveType:0];
  v32 = v22;
  v33 = v31;

  memcpy(v99, a1 + 5, 0x118uLL);
  memcpy(v98, a1 + 5, sizeof(v98));
  sub_251E67C9C(v99, v97);
  v34 = WalletPass.asData()();
  if (v3)
  {

    memcpy(v97, v98, sizeof(v97));
    sub_251E62724(v97);
    v36 = *(v94 + 8);
    v36(v32, v6);
    result = (v36)(v13, v6);
  }

  else
  {
    v88 = v32;
    v89 = v24;
    v91 = v13;
    v38 = v34;
    v39 = v35;
    memcpy(v97, v98, sizeof(v97));
    sub_251E62724(v97);
    v40 = sub_251E71938();
    sub_251E6B024(v38, v39);
    v41 = v93;
    sub_251E718D8();
    v42 = sub_251E718E8();
    v90 = 0;
    v43 = *(v94 + 8);
    v44 = v41;
    v45 = v94 + 8;
    v43(v44, v6);
    [v33 addDataToArchive:v40 pathInArchive:v42];

    v46 = v90;
    sub_251E69A3C(0xD000000000000012, 0x8000000251E74020);
    if (v46)
    {

      v43(v88, v6);
      result = (v43)(v91, v6);
    }

    else
    {
      v86 = v43;
      v87 = v45;
      v47 = type metadata accessor for PassComponents(0);
      sub_251E69B6C(a1 + v47[6], 0x2E7832406E6F6369, 0xEB00000000676E70);
      v48 = v91;
      sub_251E69B6C(a1 + v47[7], 0x2E7833406E6F6369, 0xEB00000000676E70);
      v90 = 0;
      v85 = v33;
      v50 = *(a1 + v47[8]);
      v82 = *(v50 + 16);
      v83 = v6;
      if (v82)
      {
        v51 = 0;
        v80 = v50;
        v81 = (v94 + 16);
        v52 = v92;
        while (1)
        {
          if (v51 >= *(v50 + 16))
          {
            __break(1u);
          }

          v53 = (type metadata accessor for PassComponents.BundleResource(0) - 8);
          v54 = v50 + ((*(*v53 + 80) + 32) & ~*(*v53 + 80));
          v55 = *(*v53 + 72);
          v84 = v51;
          v56 = v54 + v55 * v51;
          v57 = v83;
          (*v81)(v52, v56, v83);
          v58 = (v56 + v53[7]);
          v59 = v58[1];
          v94 = *v58;

          v60 = sub_251E718E8();
          v61 = v93;
          sub_251E718D8();
          v62 = sub_251E718E8();
          v63 = v86;
          v86(v61, v57);
          [v85 addFileToArchive:v60 pathInArchive:v62];

          v95 = 0x6020676E69646461;
          v96 = 0xE800000000000000;
          MEMORY[0x253090C90](v94, v59);

          MEMORY[0x253090C90](96, 0xE100000000000000);
          v64 = v95;
          v65 = v96;
          if (![v85 archiveIsValid])
          {
            break;
          }

          v66 = v57;
          v51 = v84 + 1;
          v63(v52, v66);

          v48 = v91;
          v50 = v80;
          if (v82 == v51)
          {
            goto LABEL_15;
          }
        }

        v95 = 0x20726F727265;
        v96 = 0xE600000000000000;
        MEMORY[0x253090C90](v64, v65);
        MEMORY[0x253090C90](8250, 0xE200000000000000);
        v68 = v85;
        v69 = [v85 error];
        if (v69)
        {
          v70 = v69;
          swift_getErrorValue();
          v71 = sub_251E71EE8();
          v73 = v72;
        }

        else
        {
          v73 = 0xE500000000000000;
          v71 = 0x7D6C696E7BLL;
        }

        v74 = v83;
        v75 = v92;
        v76 = v86;
        MEMORY[0x253090C90](v71, v73);

        v77 = v95;
        v78 = v96;
        sub_251E6A3A4();
        swift_allocError();
        *v79 = v77;
        v79[1] = v78;
        swift_willThrow();

        v76(v75, v74);
        v76(v88, v74);
        result = (v76)(v91, v74);
      }

      else
      {
LABEL_15:
        v67 = v85;
        [v85 closeArchive];

        result = (v86)(v48, v83);
      }
    }
  }

  v49 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_251E698A8()
{
  v1 = *(sub_251E71928() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_251E685A8(v3, v0 + v2, v5, v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251E69954()
{
  result = qword_27F4BD770;
  if (!qword_27F4BD770)
  {
    sub_251E71B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD770);
  }

  return result;
}

unint64_t sub_251E699AC()
{
  result = qword_27F4BD780;
  if (!qword_27F4BD780)
  {
    sub_251E6A5D8(255, &qword_27F4BD778, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD780);
  }

  return result;
}

id sub_251E69A3C(uint64_t a1, uint64_t a2)
{
  result = [v2 archiveIsValid];
  if (!result)
  {
    MEMORY[0x253090C90](a1, a2);
    MEMORY[0x253090C90](8250, 0xE200000000000000);
    v6 = [v2 error];
    if (v6)
    {
      v7 = v6;
      swift_getErrorValue();
      v8 = sub_251E71EE8();
      v10 = v9;
    }

    else
    {
      v10 = 0xE500000000000000;
      v8 = 0x7D6C696E7BLL;
    }

    MEMORY[0x253090C90](v8, v10);

    sub_251E6A3A4();
    swift_allocError();
    *v11 = 0x20726F727265;
    v11[1] = 0xE600000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_251E69B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_251E71928();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251E718E8();
  sub_251E718D8();
  v13 = sub_251E718E8();
  (*(v8 + 8))(v11, v7);
  [v4 addFileToArchive:v12 pathInArchive:v13];

  v15 = 0x6020676E69646461;
  v16 = 0xE800000000000000;
  MEMORY[0x253090C90](a2, a3);
  MEMORY[0x253090C90](96, 0xE100000000000000);
  sub_251E69A3C(v15, v16);
}

uint64_t WalletPassManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_251E69D84()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 32) canAddPassOfType_];
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_251E69E60(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_251E69E84, 0, 0);
}

uint64_t sub_251E69E84()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_251E69F78;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_251E69F78()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_251E6B088;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_251E6B07C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t WalletPassManager.AddErrors.errorDescription.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002FLL;
  }

  *v0;
  return result;
}

uint64_t WalletPassManager.AddErrors.hashValue.getter()
{
  v1 = *v0;
  sub_251E71F38();
  MEMORY[0x253091010](v1);
  return sub_251E71F58();
}

uint64_t sub_251E6A198()
{
  v1 = *v0;
  sub_251E71F38();
  MEMORY[0x253091010](v1);
  return sub_251E71F58();
}

uint64_t sub_251E6A1E0()
{
  v1 = *v0;
  sub_251E71F38();
  MEMORY[0x253091010](v1);
  return sub_251E71F58();
}

unint64_t sub_251E6A224()
{
  v1 = 0xD000000000000012;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002FLL;
  }

  *v0;
  return result;
}

unint64_t _HKArchiveCreator.PassArchiveError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_251E71D28();

  MEMORY[0x253090C90](v1, v2);
  return 0xD000000000000012;
}

uint64_t static _HKArchiveCreator.PassArchiveError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_251E71EB8();
  }
}

unint64_t sub_251E6A348()
{
  result = qword_27F4BD788;
  if (!qword_27F4BD788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD788);
  }

  return result;
}

unint64_t sub_251E6A3A4()
{
  result = qword_27F4BD790;
  if (!qword_27F4BD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD790);
  }

  return result;
}

unint64_t sub_251E6A3F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_251E71D28();

  MEMORY[0x253090C90](v1, v2);
  return 0xD000000000000012;
}

uint64_t sub_251E6A474(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_251E71EB8();
  }
}

void sub_251E6A4F4()
{
  sub_251E6AEB8(319, &qword_27F4BD7A8);
  if (v0 <= 0x3F)
  {
    sub_251E71928();
    if (v1 <= 0x3F)
    {
      sub_251E6A5D8(319, &qword_27F4BD688, type metadata accessor for PassComponents.BundleResource, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251E6A5D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251E6A664()
{
  result = sub_251E71928();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of WalletPassManaging.addPass(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_251E6B080;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WalletPassManager.addPass(_:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_251E6AAB0;

  return v8(a1);
}

uint64_t sub_251E6AAB0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_251E6ABC8()
{
  if (!qword_27F4BD7C0)
  {
    sub_251E5C984(255, &qword_27F4BD7C8, 0x277D37FC0);
    v0 = sub_251E71AE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4BD7C0);
    }
  }
}

uint64_t getEnumTagSinglePayload for WalletPassManager.AddErrors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WalletPassManager.AddErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_251E6ADA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251E6ADE8(uint64_t result, int a2, int a3)
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

void sub_251E6AE3C()
{
  if (!qword_27F4BD7D0)
  {
    sub_251E6AEB8(255, &qword_27F4BD7D8);
    v0 = sub_251E71C58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4BD7D0);
    }
  }
}

uint64_t sub_251E6AEB8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251E6AF14(void *a1)
{
  sub_251E6AE3C();
  v3 = *(*(v2 - 8) + 80);

  return sub_251E68E18(a1);
}

void sub_251E6AF84(uint64_t a1)
{
  v3 = *(sub_251E71928() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_251E68844(a1, v1 + v4, v6);
}

uint64_t sub_251E6B024(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t SignedClinicalDataWalletPassError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000002CLL;
  if (v1 != 6)
  {
    v2 = 0xD000000000000014;
  }

  v3 = 0xD000000000000017;
  if (v1 != 4)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000037;
  if (v1 != 2)
  {
    v4 = 0xD000000000000019;
  }

  v5 = 0xD000000000000035;
  if (!*v0)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t SignedClinicalDataWalletPassError.hashValue.getter()
{
  v1 = *v0;
  sub_251E71F38();
  MEMORY[0x253091010](v1);
  return sub_251E71F58();
}

unint64_t sub_251E6B1FC()
{
  result = qword_27F4BD7E8;
  if (!qword_27F4BD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD7E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignedClinicalDataWalletPassError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SignedClinicalDataWalletPassError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_251E6B3A8()
{
  v0 = sub_251E71B18();
  __swift_allocate_value_buffer(v0, qword_27F4BF310);
  __swift_project_value_buffer(v0, qword_27F4BF310);
  return sub_251E71B08();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_251E6B490(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF656E6F4E656C79;
  v3 = 0x7453657461444B50;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x7453657461444B50;
    }

    if (v4)
    {
      v5 = 0x8000000251E73660;
    }

    else
    {
      v5 = 0xEF656E6F4E656C79;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x8000000251E73680;
    v6 = 0xD000000000000011;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0xEF676E6F4C656C79;
    }

    else
    {
      v5 = 0xEF6C6C7546656C79;
    }

    v6 = 0x7453657461444B50;
  }

  v7 = 0x8000000251E73680;
  v8 = 0xD000000000000011;
  v9 = 0xEF676E6F4C656C79;
  if (a2 != 3)
  {
    v9 = 0xEF6C6C7546656C79;
  }

  if (a2 != 2)
  {
    v8 = 0x7453657461444B50;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x8000000251E73660;
  }

  if (a2 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v6 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_251E71EB8();
  }

  return v12 & 1;
}

void __swiftcall WalletPassBarcode.init(altText:message:)(HealthRecordsWalletSupport::WalletPassBarcode *__return_ptr retstr, Swift::String_optional altText, Swift::String message)
{
  retstr->format._countAndFlagsBits = 0xD000000000000011;
  retstr->format._object = 0x8000000251E73840;
  retstr->messageEncoding._countAndFlagsBits = 0x393538382D6F7369;
  retstr->messageEncoding._object = 0xEA0000000000312DLL;
  retstr->altText = altText;
  retstr->message = message;
}

__n128 WalletPass.init(description:organizationName:passTypeIdentifier:serialNumber:teamIdentifier:appLaunchURL:systemAppBundleIdentifiers:backgroundColor:foregroundColor:groupingIdentifier:labelColor:logoText:healthPass:barcodes:expirationDate:sharingProhibited:voided:locations:relevantDates:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, __n128 a19, uint64_t a20, __int16 a21, uint64_t a22, uint64_t a23)
{
  result = a19;
  v24 = *(a18 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 1;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 120) = a13;
  *(a9 + 136) = a14;
  *(a9 + 152) = a15;
  *(a9 + 168) = a16;
  *(a9 + 184) = a17;
  v25 = *(a18 + 16);
  *(a9 + 192) = *a18;
  *(a9 + 208) = v25;
  *(a9 + 224) = v24;
  *(a9 + 232) = a19;
  *(a9 + 248) = a20;
  *(a9 + 256) = a21;
  *(a9 + 264) = a22;
  *(a9 + 272) = a23;
  return result;
}

__n128 WalletPassField.init(key:label:value:textAlignment:attributedValue:dataDetectorTypes:numberStyle:dateStyle:timeStyle:ignoresTimeZone:isRelative:row:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, char *a13, char *a14, __int16 a15, uint64_t a16, char a17)
{
  result = a11;
  v18 = *a13;
  v19 = *a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = v18;
  *(a9 + 105) = v19;
  *(a9 + 106) = a15;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17 & 1;
  return result;
}

uint64_t WalletPassContent.init(headerFields:primaryFields:secondaryFields:auxiliaryFields:backFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t WalletPass.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WalletPass.organizationName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t WalletPass.passTypeIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t WalletPass.serialNumber.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t WalletPass.teamIdentifier.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t WalletPass.appLaunchURL.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t WalletPass.backgroundColor.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t WalletPass.foregroundColor.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t WalletPass.groupingIdentifier.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t WalletPass.labelColor.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t WalletPass.logoText.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t WalletPass.healthPass.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[25];
  v3 = v1[26];
  v4 = v1[27];
  v5 = v1[28];
  *a1 = v1[24];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t WalletPass.expirationDate.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t sub_251E6BA28(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
      result = 0x655674616D726F66;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x754E6C6169726573;
      break;
    case 5:
      result = 0x6E6564496D616574;
      break;
    case 6:
      result = 0x636E75614C707061;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      v3 = 1801675106;
      goto LABEL_21;
    case 9:
      v3 = 1701998438;
LABEL_21:
      result = v3 | 0x756F726700000000;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6C6F436C6562616CLL;
      break;
    case 12:
      result = 0x747865546F676F6CLL;
      break;
    case 13:
      result = 0x615068746C616568;
      break;
    case 14:
      result = 0x7365646F63726162;
      break;
    case 15:
      result = 0x6974617269707865;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x646564696F76;
      break;
    case 18:
      result = 0x6E6F697461636F6CLL;
      break;
    case 19:
      result = 0x746E6176656C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_251E6BCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251E70708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251E6BCE0(uint64_t a1)
{
  v2 = sub_251E6C52C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251E6BD1C(uint64_t a1)
{
  v2 = sub_251E6C52C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WalletPass.encode(to:)(void *a1)
{
  sub_251E6F534(0, &qword_27F4BD808, sub_251E6C52C);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v67 = v1[3];
  v68 = v9;
  v10 = v1[4];
  v65 = v1[5];
  v66 = v10;
  v11 = v1[6];
  v12 = v1[7];
  v63 = v1[8];
  v64 = v11;
  v13 = v1[9];
  v61 = v1[10];
  v62 = v12;
  v14 = v1[11];
  v59 = v1[12];
  v60 = v13;
  v15 = v1[14];
  v57 = v1[13];
  v58 = v14;
  v55 = v15;
  v16 = v1[16];
  v56 = v1[15];
  v53 = v16;
  v17 = v1[18];
  v54 = v1[17];
  v51 = v17;
  v18 = v1[20];
  v52 = v1[19];
  v49 = v18;
  v19 = v1[22];
  v50 = v1[21];
  v47 = v19;
  v20 = v1[24];
  v48 = v1[23];
  v42 = v20;
  v21 = v1[26];
  v43 = v1[25];
  v44 = v21;
  v22 = v1[28];
  v45 = v1[27];
  v46 = v22;
  v23 = v1[30];
  v41 = v1[29];
  v39 = v23;
  v40 = v1[31];
  v75 = *(v1 + 256);
  v37 = *(v1 + 257);
  v24 = v1[34];
  v38 = v1[33];
  v25 = a1[3];
  v26 = a1[4];
  v27 = a1;
  v29 = &v36 - v28;
  __swift_project_boxed_opaque_existential_0(v27, v25);
  sub_251E6C52C();
  sub_251E71F68();
  LOBYTE(v70) = 0;
  v30 = v69;
  sub_251E71E28();
  if (v30)
  {
    goto LABEL_2;
  }

  v36 = v24;
  LOBYTE(v70) = 1;
  sub_251E71E48();
  LOBYTE(v70) = 2;
  sub_251E71E28();
  LOBYTE(v70) = 3;
  sub_251E71E28();
  LOBYTE(v70) = 4;
  sub_251E71E28();
  LOBYTE(v70) = 5;
  sub_251E71E28();
  LOBYTE(v70) = 6;
  sub_251E71DD8();
  v69 = 0;
  v70 = v57;
  v76 = 7;
  sub_251E6CCA0(0, &qword_27F4BD6A8);
  sub_251E6C580();
  v30 = v69;
  sub_251E71E18();
  if (v30)
  {
LABEL_2:
    v69 = v30;
  }

  else
  {
    LOBYTE(v70) = 8;
    sub_251E71DD8();
    LOBYTE(v70) = 9;
    sub_251E71DD8();
    v69 = 0;
    LOBYTE(v70) = 10;
    sub_251E71DD8();
    v69 = 0;
    LOBYTE(v70) = 11;
    sub_251E71DD8();
    v69 = 0;
    LOBYTE(v70) = 12;
    sub_251E71DD8();
    v69 = 0;
    v70 = v42;
    v71 = v43;
    v72 = v44;
    v73 = v45;
    v74 = v46;
    v76 = 13;
    sub_251E6C600();

    v31 = v69;
    sub_251E71E58();
    v69 = v31;
    if (v31)
    {
    }

    else
    {

      v70 = v41;
      v76 = 14;
      sub_251E6CCA0(0, &qword_27F4BD828);
      sub_251E6C6A8(&qword_27F4BD830, &qword_27F4BD828, &type metadata for WalletPassBarcode, sub_251E6C654);
      v32 = v69;
      sub_251E71E18();
      v69 = v32;
      if (!v32)
      {
        LOBYTE(v70) = 15;
        sub_251E71DD8();
        v69 = 0;
        LOBYTE(v70) = 16;
        sub_251E71DE8();
        v69 = 0;
        LOBYTE(v70) = 17;
        sub_251E71DE8();
        v69 = 0;
        v70 = v38;
        v76 = 18;
        sub_251E6CCA0(0, &qword_27F4BD840);
        sub_251E6C6A8(&qword_27F4BD848, &qword_27F4BD840, &type metadata for WalletPassLocation, sub_251E6C720);
        v33 = v69;
        sub_251E71E18();
        v69 = v33;
        if (!v33)
        {
          v70 = v36;
          v76 = 19;
          sub_251E6CCA0(0, &qword_27F4BD858);
          sub_251E6C6A8(&qword_27F4BD860, &qword_27F4BD858, &type metadata for WalletPassDates, sub_251E6C774);
          v34 = v69;
          sub_251E71E18();
          v69 = v34;
        }
      }
    }
  }

  return (*(v5 + 8))(v29, v4);
}

unint64_t sub_251E6C52C()
{
  result = qword_27F4BD810;
  if (!qword_27F4BD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD810);
  }

  return result;
}

unint64_t sub_251E6C580()
{
  result = qword_27F4BD818;
  if (!qword_27F4BD818)
  {
    sub_251E6CCA0(255, &qword_27F4BD6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD818);
  }

  return result;
}

unint64_t sub_251E6C600()
{
  result = qword_27F4BD820;
  if (!qword_27F4BD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD820);
  }

  return result;
}

unint64_t sub_251E6C654()
{
  result = qword_27F4BD838;
  if (!qword_27F4BD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD838);
  }

  return result;
}

uint64_t sub_251E6C6A8(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_251E6CCA0(255, a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251E6C720()
{
  result = qword_27F4BD850;
  if (!qword_27F4BD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD850);
  }

  return result;
}

unint64_t sub_251E6C774()
{
  result = qword_27F4BD868;
  if (!qword_27F4BD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD868);
  }

  return result;
}

uint64_t sub_251E6C808()
{
  v1 = *v0;
  v2 = 0x6946726564616568;
  v3 = 0x7261646E6F636573;
  v4 = 0x7261696C69787561;
  if (v1 != 3)
  {
    v4 = 0x6C6569466B636162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x467972616D697270;
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

uint64_t sub_251E6C8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251E70D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251E6C908(uint64_t a1)
{
  v2 = sub_251E6CC4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251E6C944(uint64_t a1)
{
  v2 = sub_251E6CC4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WalletPassContent.encode(to:)(void *a1)
{
  sub_251E6F534(0, &qword_27F4BD870, sub_251E6CC4C);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v16 = v1[4];
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_251E6CC4C();

  sub_251E71F68();
  v22 = v10;
  v21 = 0;
  sub_251E6CCA0(0, &qword_27F4BD880);
  sub_251E6C6A8(&qword_27F4BD888, &qword_27F4BD880, &type metadata for WalletPassField, sub_251E6CCEC);
  v13 = v20;
  sub_251E71E18();
  if (v13)
  {
  }

  else
  {
    v14 = v18;

    v22 = v19;
    v21 = 1;
    sub_251E71E18();
    v22 = v14;
    v21 = 2;
    sub_251E71E18();
    v22 = v17;
    v21 = 3;
    sub_251E71E18();
    v22 = v16;
    v21 = 4;
    sub_251E71E18();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_251E6CC4C()
{
  result = qword_27F4BD878;
  if (!qword_27F4BD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD878);
  }

  return result;
}

void sub_251E6CCA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_251E71C28();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_251E6CCEC()
{
  result = qword_27F4BD890;
  if (!qword_27F4BD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD890);
  }

  return result;
}

HealthRecordsWalletSupport::WalletPassField::DateTimeStyle_optional __swiftcall WalletPassField.DateTimeStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_251E71DC8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WalletPassField.DateTimeStyle.rawValue.getter()
{
  v1 = 0x7453657461444B50;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7453657461444B50;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_251E6CE68()
{
  v1 = *v0;
  sub_251E71F38();
  sub_251E71BB8();

  return sub_251E71F58();
}

uint64_t sub_251E6CF58()
{
  *v0;
  *v0;
  *v0;
  sub_251E71BB8();
}

uint64_t sub_251E6D034()
{
  v1 = *v0;
  sub_251E71F38();
  sub_251E71BB8();

  return sub_251E71F58();
}

void sub_251E6D12C(unint64_t *a1@<X8>)
{
  v2 = 0x7453657461444B50;
  v3 = *v1;
  v4 = 0xEF656E6F4E656C79;
  v5 = 0x8000000251E73680;
  v6 = 0xD000000000000011;
  v7 = 0xEF676E6F4C656C79;
  if (v3 != 3)
  {
    v7 = 0xEF6C6C7546656C79;
  }

  if (v3 != 2)
  {
    v6 = 0x7453657461444B50;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000010;
    v4 = 0x8000000251E73660;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v2 = v6;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

uint64_t WalletPassField.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WalletPassField.label.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WalletPassField.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WalletPassField.value.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t WalletPassField.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t WalletPassField.textAlignment.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t WalletPassField.textAlignment.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t WalletPassField.attributedValue.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t WalletPassField.attributedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t WalletPassField.dataDetectorTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t WalletPassField.numberStyle.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t WalletPassField.numberStyle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t WalletPassField.row.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t WalletPassField.row.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t sub_251E6D660(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x547365726F6E6769;
    v7 = 0x6974616C65527369;
    if (a1 != 10)
    {
      v7 = 7827314;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x74537265626D756ELL;
    v9 = 0x6C79745365746164;
    if (a1 != 7)
    {
      v9 = 0x6C797453656D6974;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 7955819;
    v2 = 0x67696C4174786574;
    v3 = 0x7475626972747461;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C6562616CLL;
    if (a1 != 1)
    {
      v4 = 0x65756C6176;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_251E6D808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251E70F50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251E6D83C(uint64_t a1)
{
  v2 = sub_251E6DC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251E6D878(uint64_t a1)
{
  v2 = sub_251E6DC80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WalletPassField.encode(to:)(void *a1)
{
  sub_251E6F534(0, &qword_27F4BD898, sub_251E6DC80);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v34 = v1[3];
  v35 = v11;
  v12 = v1[4];
  v32 = v1[5];
  v33 = v12;
  v13 = v1[6];
  v30 = v1[7];
  v31 = v13;
  v14 = v1[8];
  v28 = v1[9];
  v29 = v14;
  v15 = v1[10];
  v25 = v1[11];
  v26 = v1[12];
  v27 = v15;
  LODWORD(v15) = *(v1 + 104);
  v23 = *(v1 + 105);
  v24 = v15;
  LODWORD(v15) = *(v1 + 106);
  v21 = *(v1 + 107);
  v22 = v15;
  v19[1] = v1[14];
  v20 = *(v1 + 120);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_251E6DC80();
  sub_251E71F68();
  LOBYTE(v38) = 0;
  v17 = v36;
  sub_251E71E28();
  if (!v17)
  {
    LOBYTE(v38) = 1;
    sub_251E71DD8();
    LOBYTE(v38) = 2;
    sub_251E71E28();
    LOBYTE(v38) = 3;
    sub_251E71DD8();
    LOBYTE(v38) = 4;
    sub_251E71DD8();
    v38 = v27;
    v37 = 5;
    sub_251E6CCA0(0, &qword_27F4BD6A8);
    sub_251E6C580();
    sub_251E71E18();
    LOBYTE(v38) = 6;
    sub_251E71DD8();
    LOBYTE(v38) = v24;
    v37 = 7;
    sub_251E6DCD4();
    sub_251E71E18();
    LOBYTE(v38) = v23;
    v37 = 8;
    sub_251E71E18();
    LOBYTE(v38) = 9;
    sub_251E71DE8();
    LOBYTE(v38) = 10;
    sub_251E71DE8();
    LOBYTE(v38) = 11;
    sub_251E71E08();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_251E6DC80()
{
  result = qword_27F4BD8A0;
  if (!qword_27F4BD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8A0);
  }

  return result;
}

unint64_t sub_251E6DCD4()
{
  result = qword_27F4BD8A8;
  if (!qword_27F4BD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8A8);
  }

  return result;
}

uint64_t WalletPassBarcode.altText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WalletPassBarcode.format.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WalletPassBarcode.message.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t WalletPassBarcode.messageEncoding.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_251E6DE00()
{
  v1 = 0x74786554746C61;
  v2 = 0x6567617373656DLL;
  if (*v0 != 2)
  {
    v2 = 0x456567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x74616D726F66;
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

uint64_t sub_251E6DE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251E71348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251E6DEAC(uint64_t a1)
{
  v2 = sub_251E6E10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251E6DEE8(uint64_t a1)
{
  v2 = sub_251E6E10C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WalletPassBarcode.encode(to:)(void *a1)
{
  sub_251E6F534(0, &qword_27F4BD8B0, sub_251E6E10C);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v17[5] = v1[3];
  v17[6] = v11;
  v12 = v1[4];
  v17[3] = v1[5];
  v17[4] = v12;
  v13 = v1[6];
  v17[1] = v1[7];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_251E6E10C();
  sub_251E71F68();
  v21 = 0;
  v15 = v17[7];
  sub_251E71DD8();
  if (!v15)
  {
    v20 = 1;
    sub_251E71E28();
    v19 = 2;
    sub_251E71E28();
    v18 = 3;
    sub_251E71E28();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_251E6E10C()
{
  result = qword_27F4BD8B8;
  if (!qword_27F4BD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8B8);
  }

  return result;
}

uint64_t WalletPassLocation.altitude.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t WalletPassLocation.relevantText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_251E6E1DC()
{
  v1 = 0x656475746974616CLL;
  v2 = 0x64757469676E6F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x746E6176656C6572;
  }

  if (!*v0)
  {
    v1 = 0x6564757469746C61;
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

uint64_t sub_251E6E258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251E714B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251E6E280(uint64_t a1)
{
  v2 = sub_251E6E4D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251E6E2BC(uint64_t a1)
{
  v2 = sub_251E6E4D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WalletPassLocation.encode(to:)(void *a1)
{
  sub_251E6F534(0, &qword_27F4BD8C0, sub_251E6E4D8);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v12 = v1[2];
  v11 = v1[3];
  v13 = v1[4];
  v17[1] = v1[5];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_251E6E4D8();
  sub_251E71F68();
  v21 = 0;
  v15 = v17[3];
  sub_251E71DF8();
  if (!v15)
  {
    v20 = 1;
    sub_251E71E38();
    v19 = 2;
    sub_251E71E38();
    v18 = 3;
    sub_251E71DD8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_251E6E4D8()
{
  result = qword_27F4BD8C8;
  if (!qword_27F4BD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8C8);
  }

  return result;
}

uint64_t sub_251E6E544()
{
  v0 = sub_251E71A08();
  __swift_allocate_value_buffer(v0, qword_27F4BD7F0);
  v1 = __swift_project_value_buffer(v0, qword_27F4BD7F0);
  return sub_251E6E590(v1);
}

uint64_t sub_251E6E590@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  sub_251E71794(0, &qword_27F4BD698, MEMORY[0x277CC9A70]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v78 = &v62 - v3;
  v79 = sub_251E71AD8();
  v77 = *(v79 - 8);
  v4 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251E71998();
  v83 = *(v6 - 8);
  v84 = v6;
  v7 = *(v83 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v74 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = &v62 - v10;
  v11 = sub_251E71968();
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - v15;
  v76 = sub_251E71948();
  v17 = *(v76 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v76);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_251E71958();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_251E71A08();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v62 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v66 = &v62 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v68 = &v62 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v69 = &v62 - v40;
  MEMORY[0x28223BE20](v39);
  v71 = &v62 - v41;
  v42 = *MEMORY[0x277CC9460];
  v43 = *(v22 + 104);
  v67 = v25;
  v43(v25, v42, v21);
  v44 = v78;
  v45 = *MEMORY[0x277CC9458];
  v46 = *(v17 + 104);
  v70 = v20;
  v46(v20, v45, v76);
  v47 = *MEMORY[0x277CC9468];
  v48 = *(v81 + 104);
  v76 = v16;
  v64 = v47;
  v63 = v48;
  v48(v16);
  v49 = *MEMORY[0x277CC9480];
  v65 = *(v83 + 104);
  v65(v80, v49, v84);
  sub_251E71AB8();
  v50 = v77;
  v51 = v79;
  result = (*(v77 + 48))(v44, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v50 + 32))(v72, v44, v51);
    sub_251E71978();
    sub_251E719C8();
    v53 = *(v27 + 8);
    v53(v31, v26);
    v54 = v66;
    sub_251E719D8();
    v53(v34, v26);
    v55 = v68;
    sub_251E719A8();
    v53(v54, v26);
    v56 = v73;
    v57 = v82;
    v63(v73, v64, v82);
    v58 = v69;
    sub_251E71988();
    (*(v81 + 8))(v56, v57);
    v53(v55, v26);
    v59 = v71;
    sub_251E719B8();
    v53(v58, v26);
    v60 = v74;
    v61 = v84;
    v65(v74, *MEMORY[0x277CC9478], v84);
    sub_251E719F8();
    (*(v83 + 8))(v60, v61);
    return (v53)(v59, v26);
  }

  return result;
}