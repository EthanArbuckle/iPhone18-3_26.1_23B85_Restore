Swift::String __swiftcall ResourceStatusOutput.description(useCaseIdentifier:withAssetSet:)(ModelCatalog::UseCaseIdentifier_optional useCaseIdentifier, Swift::Bool withAssetSet)
{
  sub_18E2200D4();
  v49 = v3;
  v5 = *v4;
  v7 = *v2;
  v6 = v2[1];
  v47 = v2[8];
  v48 = v2[9];
  v8 = v2[12];
  v9 = v2[13];
  v11 = v2[14];
  v10 = v2[15];
  v12 = v2[18];
  v44 = v2[19];
  v45 = v2[20];
  sub_18E1D4A4C();
  sub_18E44EC0C();
  sub_18E32F094();
  MEMORY[0x193ACC300](45, 0xE100000000000000);

  v13 = v51;
  if (v9)
  {

    sub_18E1E2898();
    v14 = sub_18E44EB5C();
    if (__OFSUB__(22, v14))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_18E1D4A4C();
    sub_18E44EC0C();
    sub_18E32F094();
    v16 = sub_18E1E2898();
    MEMORY[0x193ACC300](v16);

    v17 = v50;
    v13 = v51;
  }

  else
  {
    v17 = v50;
  }

  sub_18E1D4A4C();
  sub_18E44EC0C();
  sub_18E32F094();
  MEMORY[0x193ACC300](45, 0xE100000000000000);

  v18 = v51;
  if (v10)
  {

    sub_18E2019D0();
    v14 = sub_18E44EB5C();
    if (__OFSUB__(12, v14))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_18E1D4A4C();
    sub_18E44EC0C();
    sub_18E32F094();
    v19 = sub_18E2019D0();
    MEMORY[0x193ACC300](v19);

    v20 = v50;
    v18 = v51;
  }

  else
  {
    v20 = v50;
  }

  v46 = v20;
  if (v5 != 126)
  {
    v40 = v17;
    v41 = v13;
    v42 = v7;
    v43 = v6;
    v22 = (v12 + 33);
    v23 = -*(v12 + 16);
    v24 = -1;
    while (1)
    {
      if (v23 + v24 == -1)
      {
        goto LABEL_22;
      }

      if (++v24 >= *(v12 + 16))
      {
        break;
      }

      v25 = *v22;
      v26 = sub_18E1C6DAC(*(v22 - 1));
      v28 = v27;
      if (v26 == sub_18E1C6DAC(v5) && v28 == v29)
      {

        if ((v25 & 1) == 0)
        {
LABEL_22:
          v21 = 0x2020202020202020;
          goto LABEL_23;
        }

LABEL_20:
        v21 = 0x6C616E6F6974706FLL;
LABEL_23:
        v7 = v42;
        v6 = v43;
        v17 = v40;
        v13 = v41;
        goto LABEL_24;
      }

      v22 += 3;
      sub_18E2019D0();
      v31 = sub_18E44F3CC();

      if (v31)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v21 = 0x2020202020202020;
LABEL_24:
  if ((v49 & 1) == 0)
  {
    sub_18E44EFFC();

    sub_18E1CF5C8();
    MEMORY[0x193ACC300](8224, 0xE200000000000000);
    sub_18E1CF5C8();
    MEMORY[0x193ACC300](v21, 0xE800000000000000);

    sub_18E1CF5C8();
    v36 = sub_18E234314();
    MEMORY[0x193ACC300](v36);

    sub_18E1CF5C8();
    v37 = sub_18E1C6004();
    MEMORY[0x193ACC300](v37);

    sub_18E1CF5C8();
    v38 = sub_18E1D5F00();
    MEMORY[0x193ACC300](v38);
    goto LABEL_28;
  }

  sub_18E1D5F00();
  v14 = sub_18E44EB5C();
  if (__OFSUB__(90, v14))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_18E1D4A4C();
  v32 = sub_18E44EC0C();
  v34 = v33;

  MEMORY[0x193ACC300](v32, v34);

  sub_18E44EFFC();

  sub_18E1CF5C8();
  MEMORY[0x193ACC300](8224, 0xE200000000000000);
  sub_18E1CF5C8();
  MEMORY[0x193ACC300](v21, 0xE800000000000000);

  sub_18E1CF5C8();
  MEMORY[0x193ACC300](v17, v13);

  sub_18E1CF5C8();
  MEMORY[0x193ACC300](v46, v18);

  sub_18E1CF5C8();
  MEMORY[0x193ACC300](v7, v6);

  sub_18E1CF5C8();
  v35 = sub_18E1D8004();
  MEMORY[0x193ACC300](v35);

LABEL_28:
  sub_18E1E29DC();
LABEL_33:
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

void sub_18E324784(unsigned __int8 *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, unint64_t *a5@<X8>)
{
  v38 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = *a1;
  v18 = *a2;
  if ((*(*(a4 + 8) + 64))(a3))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 1;
    v23 = 0xE800000000000000;
    v24 = 0x64616F6C65646973;
    v25 = 0xA600000000000000;
    v26 = 4021525730;
LABEL_3:
    v27 = v26 & 0xFFFF0000FFFFFFFFLL | 0x8FB800000000;
    goto LABEL_15;
  }

  if (v18)
  {
    v41[0] = v18;
    v28 = v39;
    (*(a4 + 40))(v41, a3, a4);
    if (v28)
    {
      goto LABEL_6;
    }

LABEL_11:
    v39 = v28;
    (*(v10 + 32))(v16, v14, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 48))(v41, AssociatedTypeWitness, AssociatedConformanceWitness);
    v24 = v41[0];
    v23 = v41[1];
    (*(AssociatedConformanceWitness + 88))(&v42, AssociatedTypeWitness, AssociatedConformanceWitness);
    v20 = v43;
    if (v43)
    {
      v19 = v42;
    }

    else
    {
      v19 = 0;
    }

    v21 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v10 + 8))(v16, AssociatedTypeWitness);
    v22 = 0;
    v25 = 0xA300000000000000;
    v27 = 8756450;
LABEL_15:
    v31 = v38;
    *v38 = v27;
    v31[1] = v25;
    v31[2] = v24;
    v31[3] = v23;
    v31[4] = v19;
    v31[5] = v20;
    v31[6] = v21;
    *(v31 + 56) = v22;
    return;
  }

  v28 = v39;
  (*(a4 + 32))(a3, a4);
  if (!v28)
  {
    goto LABEL_11;
  }

LABEL_6:
  v45 = v28;
  v29 = v28;
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  if (swift_dynamicCast())
  {
    if (v44 == 1)
    {
      sub_18E32ED9C();

      v39 = 0;
      switch(v17)
      {
        case 1:
LABEL_26:

          v24 = 0;
          v23 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 1;
          v25 = 0xA400000000000000;
          v27 = 2224332784;
          goto LABEL_15;
        case 2:
LABEL_22:
          v27 = 0x8FB8EFB88FE2;

          v24 = 0;
          v23 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          goto LABEL_23;
        case 3:
LABEL_24:

          v24 = 0;
          v23 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 1;
          v25 = 0xA400000000000000;
          v27 = 3197280240;
          goto LABEL_15;
        case 4:
LABEL_21:

          v24 = 0;
          v23 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 1;
          v25 = 0xA600000000000000;
          v26 = 4020935394;
          goto LABEL_3;
        case 5:
LABEL_27:

          v24 = 0;
          v23 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 1;
          v25 = 0xA600000000000000;
          v26 = 4019493858;
          goto LABEL_3;
        case 6:
          goto LABEL_30;
        case 7:
LABEL_25:

          v24 = 0;
          v23 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 1;
          v25 = 0xA400000000000000;
          v27 = 2879037424;
          goto LABEL_15;
        case 8:
LABEL_28:

          v24 = 0;
          v23 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 1;
          v25 = 0xA300000000000000;
          v27 = 9215458;
          goto LABEL_15;
        case 9:
          (*(a4 + 64))(v41, a3, a4);
          v32 = [objc_opt_self() sharedManager];
          if (sub_18E44EB5C())
          {
            v33 = sub_18E44EA8C();
            v34 = sub_18E44EA8C();
            v35 = [v32 downloadStatusForSubscriber:v33 subscriptionName:v34];

            sub_18E299C2C(v35, &v40);
            v36 = v40;

            switch(v36)
            {
              case 1:
                goto LABEL_9;
              case 2:
                goto LABEL_26;
              case 3:
                goto LABEL_22;
              case 4:
                goto LABEL_27;
              case 5:
                goto LABEL_24;
              case 6:
                goto LABEL_25;
              case 7:
                goto LABEL_28;
              default:
                goto LABEL_21;
            }
          }

LABEL_30:
          v24 = 0;
          v23 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 1;
          v25 = 0xA400000000000000;
          v27 = 3046416368;
          break;
        default:
LABEL_9:

          v24 = 0;
          v23 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v27 = 0x8FB8EFB98FE2;
LABEL_23:
          v22 = 1;
          v25 = 0xA600000000000000;
          break;
      }

      goto LABEL_15;
    }

    sub_18E32ED9C();
  }
}

uint64_t sub_18E324DB4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = 0x8FB8EFAA9AE2;
  v98 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v95 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v81 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v94 = &v81 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v81 - v21;
  v22 = sub_18E44EEFC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = *(*(TupleTypeMetadata2 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = *(v22 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v38 = *a2;
  if (v38 && a3)
  {
    v85 = v18;
    v86 = v33;
    v89 = v32;
    v90 = v36;
    v84 = v37;
    v92 = v35;
    v93 = v31;
    v87 = v12;
    v101 = v38;
    v39 = &v81 - v34;
    v40 = *(a7 + 40);

    v96 = a3;

    v91 = v39;
    v40(&v101, v98, a7);
    v42 = v90;
    v43 = v91;
    sub_18E201DC8(v91, 0, 1, AssociatedTypeWitness);
    (*(a7 + 48))(v96, v98, a7);
    v44 = v26;
    v45 = v92;
    sub_18E201DC8(v42, 0, 1, AssociatedTypeWitness);
    v46 = *(v93 + 48);
    v88 = v44;
    v47 = *(v44 + 16);
    v47(v45, v43, v22);
    v47(v45 + v46, v42, v22);
    v48 = sub_18E1CAF28(v45, 1, AssociatedTypeWitness);
    if (v48 == 1)
    {
      v49 = sub_18E1CAF28(v45 + v46, 1, AssociatedTypeWitness);

      if (v49 != 1)
      {
        v10 = 0x1000000000000014;
        v52 = *(v88 + 8);
        v52(v42, v22);
        v52(v43, v22);
        v52(v45 + v46, v22);
        v52(v45, v22);
        return v10;
      }

      goto LABEL_7;
    }

    v47(v89, v45, v22);
    if (sub_18E1CAF28(v45 + v46, 1, AssociatedTypeWitness) == 1)
    {

      v51 = *(v88 + 8);
      v51(v42, v22);
      v51(v43, v22);
      (*(v87 + 8))(v89, AssociatedTypeWitness);
      v51(v45 + v46, v22);
      v51(v45, v22);
      return 0x100000000000001DLL;
    }

    v83 = v46;
    v53 = v86;
    v47(v86, v45 + v46, v22);
    v54 = *(v87 + 16);
    v54(v97, v89, AssociatedTypeWitness);
    v55 = v94;
    v54(v94, v53, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v57 = *(AssociatedConformanceWitness + 48);
    v57(&v101, AssociatedTypeWitness, AssociatedConformanceWitness);
    v59 = v101;
    v58 = v102;
    v98 = AssociatedConformanceWitness;
    v82 = v57;
    v57(&v99, AssociatedTypeWitness, AssociatedConformanceWitness);
    if (v59 == v99 && v58 == v100)
    {
    }

    else
    {
      v61 = sub_18E44F3CC();

      if ((v61 & 1) == 0)
      {

        v62 = *(v87 + 8);
        v62(v55, AssociatedTypeWitness);
        v62(v97, AssociatedTypeWitness);
        v63 = *(v88 + 8);
        v63(v90, v22);
        v63(v91, v22);
        v62(v86, AssociatedTypeWitness);
        v62(v89, AssociatedTypeWitness);
        v64 = v92;
        v63(v92 + v83, v22);
        v63(v64, v22);
        return 0x100000000000001ALL;
      }
    }

    v65 = v87;
    v66 = *(v87 + 8);
    v67 = (v87 + 8);
    v66(v55, AssociatedTypeWitness);
    v68 = v97;
    v97 = v66;
    v94 = v67;
    v66(v68, AssociatedTypeWitness);
    v69 = *(v65 + 32);
    v69(v85, v89, AssociatedTypeWitness);
    v69(v95, v86, AssociatedTypeWitness);
    v70 = v98;
    v71 = v82;
    v82(&v101, AssociatedTypeWitness, v98);
    v72 = v101;
    v73 = v102;
    v71(&v99, AssociatedTypeWitness, v70);
    if (v72 == v99 && v73 == v100)
    {

      v42 = v90;
      v76 = v83;
    }

    else
    {
      v75 = sub_18E44F3CC();

      v42 = v90;
      v76 = v83;
      if ((v75 & 1) == 0)
      {

        v77 = v97;
        (v97)(v95, AssociatedTypeWitness);
        v77(v85, AssociatedTypeWitness);
        v43 = v91;
        v45 = v92;
LABEL_7:
        v50 = *(v88 + 8);
        v50(v42, v22);
        v50(v43, v22);
        (*(v84 + 8))(v45, v93);
        return 0;
      }
    }

    v78 = v97;
    (v97)(v95, AssociatedTypeWitness);
    v78(v85, AssociatedTypeWitness);
    v79 = *(v88 + 8);
    v79(v42, v22);
    v79(v91, v22);
    v80 = v92;
    v79(v92 + v76, v22);
    v79(v80, v22);
    return 2459213808;
  }

  return v10;
}

void CatalogResource.statusOutput(status:progress:assetLock:)(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v4 = *a4;
  CatalogResource.resourceStatus(status:progress:assetLock:coherentAssetLock:)();
}

void CatalogResource.resourceStatus(status:progress:assetLock:coherentAssetLock:)()
{
  sub_18E1C62A0();
  v82 = v2;
  v4 = v3;
  v65 = v5;
  v80 = v6;
  v79 = v7;
  v9 = v8;
  v10 = *(v3 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1C64E0();
  v101 = v13;
  sub_18E1C6668();
  v15 = *MEMORY[0x1EEE9AC00](v14);
  v77 = *v16;
  v81 = v10[2];
  v81(&v63 - v17, v0, v18);
  sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
  if (swift_dynamicCast())
  {
    v78 = v10;
    v64 = v0;
    sub_18E1C551C(&v87, &v98);
    v19 = v99;
    v20 = v100;
    sub_18E1E15F4(&v98, v99);
    v83 = v15;
    v84[0] = v77;
    sub_18E324784(&v83, v84, v19, v20, &v90);
    if (v1)
    {
      sub_18E1C9934(&v98);
      v21 = sub_18E1EA56C();
      v22(v21, v4);
      goto LABEL_9;
    }

    v69 = v90;
    v70 = v91;
    v73 = v92;
    v74 = v94;
    v71 = v93;
    v72 = v95;
    v75 = v96;
    v76 = 0;
    v68 = v97;
    v24 = v100;
    sub_18E1E15F4(&v98, v99);
    v25 = *(v24 + 64);
    v26 = sub_18E1E25B0();
    v27(v26);
    v66 = v95;
    v67 = v94;

    v28 = v99;
    v29 = v100;
    v30 = sub_18E1E15F4(&v98, v99);
    v90 = v77;
    v23 = v82;
    v77 = sub_18E324DB4(v30, &v90, v65, v4, v28, v82, v29);
    v65 = v31;
    sub_18E1C9934(&v98);
    v0 = v64;
    v10 = v78;
  }

  else
  {
    v75 = 0;
    v76 = v1;
    v66 = 0;
    v67 = 0;
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v77 = 0;
    v65 = 0;
    v68 = 1;
    v69 = 2728370160;
    v70 = 0xA400000000000000;
    v23 = v82;
  }

  v34 = v10[1];
  v32 = v10 + 1;
  v33 = v34;
  v35 = sub_18E1DD5A0();
  v34(v35);
  v81(v101, v0, v4);
  sub_18E2706EC(&qword_1EABE34E8, &qword_18E4B1000);
  v36 = swift_dynamicCast();
  v37 = 0;
  v38 = 0;
  v81 = 0;
  v82 = 0;
  if (v36)
  {
    sub_18E1C551C(&v98, v84);
    v78 = v32;
    v39 = v85;
    v40 = v86;
    sub_18E1E15F4(v84, v85);
    (*(v40 + 24))(&v87, v39, v40);
    v81 = v89;
    v82 = v88;

    sub_18E1FE044(&v87);
    v41 = v33;
    v42 = v85;
    v43 = v86;
    sub_18E1E15F4(v84, v85);
    v44 = *(v43 + 24);
    v45 = v43;
    v33 = v41;
    v44(&v90, v42, v45);
    v37 = v90;
    v38 = v91;

    sub_18E1FE044(&v90);
    sub_18E1C9934(v84);
  }

  v33(v101, v4);
  v102 = v23[13](v4, v23);
  v47 = v46;
  v48 = v38;
  v49 = v23[14](v4, v23);
  v50 = v4;
  v51 = v37;
  v53 = v52;
  v54 = v23[11](v50, v23);
  *v9 = v102;
  *(v9 + 8) = v47;
  *(v9 + 16) = v49;
  *(v9 + 24) = v53;
  *(v9 + 32) = v51;
  *(v9 + 40) = v48;
  v55 = v81;
  *(v9 + 48) = v82;
  *(v9 + 56) = v55;
  v56 = v70;
  *(v9 + 64) = v69;
  *(v9 + 72) = v56;
  v57 = v65;
  *(v9 + 80) = v77;
  *(v9 + 88) = v57;
  v58 = v71;
  *(v9 + 96) = v73;
  *(v9 + 104) = v58;
  v59 = v72;
  *(v9 + 112) = v74;
  *(v9 + 120) = v59;
  *(v9 + 128) = v75;
  *(v9 + 136) = v68;
  v61 = v66;
  v60 = v67;
  *(v9 + 144) = v54;
  *(v9 + 152) = v60;
  v62 = v79;
  *(v9 + 160) = v61;
  *(v9 + 168) = v62;
  *(v9 + 176) = v80 & 1;
  *(v9 + 177) = 0;
  *(v9 + 184) = MEMORY[0x1E69E7CC0];
LABEL_9:
  sub_18E221740();
  sub_18E1C6650();
}

uint64_t sub_18E325CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x178uLL);
  return sub_18E310E24();
}

uint64_t sub_18E325D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x178uLL);
  return sub_18E31E050();
}

uint64_t sub_18E325D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x168uLL);
  return sub_18E310EE0();
}

uint64_t sub_18E325DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E3262B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E326324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E326394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E326404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E326474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E3265B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D4910(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x110uLL);
  return sub_18E311324();
}

uint64_t sub_18E326894(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      result = sub_18E44ECCC();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

unint64_t sub_18E3268E4()
{
  result = qword_1EABE3008;
  if (!qword_1EABE3008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3008);
  }

  return result;
}

unint64_t sub_18E326938()
{
  result = qword_1EABE3010;
  if (!qword_1EABE3010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3010);
  }

  return result;
}

unint64_t sub_18E32698C()
{
  result = qword_1EABE3018;
  if (!qword_1EABE3018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3018);
  }

  return result;
}

unint64_t sub_18E3269E0()
{
  result = qword_1EABE3050;
  if (!qword_1EABE3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3050);
  }

  return result;
}

unint64_t sub_18E326A34()
{
  result = qword_1EABE3058;
  if (!qword_1EABE3058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3058);
  }

  return result;
}

unint64_t sub_18E326A88()
{
  result = qword_1EABE3098;
  if (!qword_1EABE3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3098);
  }

  return result;
}

unint64_t sub_18E326ADC()
{
  result = qword_1EABE30A0;
  if (!qword_1EABE30A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE30A0);
  }

  return result;
}

unint64_t sub_18E326B30()
{
  result = qword_1EABE30A8;
  if (!qword_1EABE30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE30A8);
  }

  return result;
}

unint64_t sub_18E326B84()
{
  result = qword_1EABE30B0;
  if (!qword_1EABE30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE30B0);
  }

  return result;
}

unint64_t sub_18E326BD8()
{
  result = qword_1EABE30B8;
  if (!qword_1EABE30B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE30B8);
  }

  return result;
}

unint64_t sub_18E326C2C()
{
  result = qword_1EABE30F8;
  if (!qword_1EABE30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE30F8);
  }

  return result;
}

unint64_t sub_18E326C80()
{
  result = qword_1EABE3100;
  if (!qword_1EABE3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3100);
  }

  return result;
}

unint64_t sub_18E326CD4()
{
  result = qword_1EABE3138;
  if (!qword_1EABE3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3138);
  }

  return result;
}

unint64_t sub_18E326D28()
{
  result = qword_1EABE3140;
  if (!qword_1EABE3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3140);
  }

  return result;
}

unint64_t sub_18E326D7C()
{
  result = qword_1EABE3148;
  if (!qword_1EABE3148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3148);
  }

  return result;
}

unint64_t sub_18E326DD0()
{
  result = qword_1EABE3150;
  if (!qword_1EABE3150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3150);
  }

  return result;
}

unint64_t sub_18E326E24()
{
  result = qword_1EABE3198;
  if (!qword_1EABE3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3198);
  }

  return result;
}

unint64_t sub_18E326E78()
{
  result = qword_1EABE31A0;
  if (!qword_1EABE31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE31A0);
  }

  return result;
}

unint64_t sub_18E326ECC()
{
  result = qword_1EABE31A8;
  if (!qword_1EABE31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE31A8);
  }

  return result;
}

unint64_t sub_18E326F20()
{
  result = qword_1EABE31B0;
  if (!qword_1EABE31B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE31B0);
  }

  return result;
}

unint64_t sub_18E326F74()
{
  result = qword_1EABE31E8;
  if (!qword_1EABE31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE31E8);
  }

  return result;
}

unint64_t sub_18E326FC8()
{
  result = qword_1EABE31F0;
  if (!qword_1EABE31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE31F0);
  }

  return result;
}

uint64_t sub_18E32703C(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for CatalogErrors.QueryError(0);
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

unint64_t sub_18E3270A0()
{
  result = qword_1EABE3248;
  if (!qword_1EABE3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3248);
  }

  return result;
}

unint64_t sub_18E3270F4()
{
  result = qword_1EABE3250;
  if (!qword_1EABE3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3250);
  }

  return result;
}

unint64_t sub_18E327148()
{
  result = qword_1EABE3258;
  if (!qword_1EABE3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3258);
  }

  return result;
}

unint64_t sub_18E32719C()
{
  result = qword_1EABE3260;
  if (!qword_1EABE3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3260);
  }

  return result;
}

unint64_t sub_18E3271F0()
{
  result = qword_1EABE3268;
  if (!qword_1EABE3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3268);
  }

  return result;
}

unint64_t sub_18E327244()
{
  result = qword_1EABE3278;
  if (!qword_1EABE3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3278);
  }

  return result;
}

unint64_t sub_18E327298(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18E3272DC(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for CatalogErrors.QueryError(0);
  (*(*(Error - 8) + 32))(a2, a1, Error);
  return a2;
}

unint64_t sub_18E327340()
{
  result = qword_1EABE32D8;
  if (!qword_1EABE32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE32D8);
  }

  return result;
}

unint64_t sub_18E327394()
{
  result = qword_1EABE32E0;
  if (!qword_1EABE32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE32E0);
  }

  return result;
}

unint64_t sub_18E3273E8()
{
  result = qword_1EABE3308;
  if (!qword_1EABE3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3308);
  }

  return result;
}

unint64_t sub_18E32743C()
{
  result = qword_1EABE3310;
  if (!qword_1EABE3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3310);
  }

  return result;
}

unint64_t sub_18E327490()
{
  result = qword_1EABE00B8;
  if (!qword_1EABE00B8)
  {
    sub_18E2707F8(&qword_1EABE3350, &qword_18E4B0ED8);
    sub_18E327514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00B8);
  }

  return result;
}

unint64_t sub_18E327514()
{
  result = qword_1EABE0550;
  if (!qword_1EABE0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0550);
  }

  return result;
}

unint64_t sub_18E327568()
{
  result = qword_1EABE00B0;
  if (!qword_1EABE00B0)
  {
    sub_18E2707F8(&unk_1EABE3358, &qword_18E4B0EE0);
    sub_18E3275EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00B0);
  }

  return result;
}

unint64_t sub_18E3275EC()
{
  result = qword_1EABE02A8;
  if (!qword_1EABE02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE02A8);
  }

  return result;
}

unint64_t sub_18E327640()
{
  result = qword_1EABE00A0;
  if (!qword_1EABE00A0)
  {
    sub_18E2707F8(&qword_1EABE3368, &qword_18E4B0EE8);
    sub_18E3276C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00A0);
  }

  return result;
}

unint64_t sub_18E3276C4()
{
  result = qword_1EABE0138;
  if (!qword_1EABE0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0138);
  }

  return result;
}

unint64_t sub_18E327718()
{
  result = qword_1EABE0098;
  if (!qword_1EABE0098)
  {
    sub_18E2707F8(&qword_1EABE3370, &qword_18E4B0EF0);
    sub_18E32779C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0098);
  }

  return result;
}

unint64_t sub_18E32779C()
{
  result = qword_1EABE00F0;
  if (!qword_1EABE00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00F0);
  }

  return result;
}

unint64_t sub_18E3277F0()
{
  result = qword_1EABE0090;
  if (!qword_1EABE0090)
  {
    sub_18E2707F8(&qword_1EABE3378, &qword_18E4B0EF8);
    sub_18E327874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0090);
  }

  return result;
}

unint64_t sub_18E327874()
{
  result = qword_1EABE00D8;
  if (!qword_1EABE00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00D8);
  }

  return result;
}

unint64_t sub_18E3278C8()
{
  result = qword_1ED6A83C0;
  if (!qword_1ED6A83C0)
  {
    sub_18E2707F8(&qword_1EABE3350, &qword_18E4B0ED8);
    sub_18E265618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A83C0);
  }

  return result;
}

unint64_t sub_18E32794C()
{
  result = qword_1ED6A83B0;
  if (!qword_1ED6A83B0)
  {
    sub_18E2707F8(&unk_1EABE3358, &qword_18E4B0EE0);
    sub_18E2656AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A83B0);
  }

  return result;
}

unint64_t sub_18E3279D0()
{
  result = qword_1ED6A83A8;
  if (!qword_1ED6A83A8)
  {
    sub_18E2707F8(&qword_1EABE3368, &qword_18E4B0EE8);
    sub_18E265A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A83A8);
  }

  return result;
}

unint64_t sub_18E327A54()
{
  result = qword_1ED6A8398;
  if (!qword_1ED6A8398)
  {
    sub_18E2707F8(&qword_1EABE3370, &qword_18E4B0EF0);
    sub_18E265A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8398);
  }

  return result;
}

unint64_t sub_18E327AD8()
{
  result = qword_1ED6A8388;
  if (!qword_1ED6A8388)
  {
    sub_18E2707F8(&qword_1EABE3378, &qword_18E4B0EF8);
    sub_18E265F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8388);
  }

  return result;
}

unint64_t sub_18E327B5C()
{
  result = qword_1EABE3390;
  if (!qword_1EABE3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3390);
  }

  return result;
}

unint64_t sub_18E327BE8()
{
  result = qword_1EABE33D8;
  if (!qword_1EABE33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE33D8);
  }

  return result;
}

uint64_t sub_18E327C3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E221758(a1, a2);
  v5 = sub_18E2706EC(v3, v4);
  sub_18E1C82B8(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_18E327CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E327D48()
{
  result = qword_1ED6A7BA0;
  if (!qword_1ED6A7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7BA0);
  }

  return result;
}

unint64_t sub_18E327D9C()
{
  result = qword_1EABE0558;
  if (!qword_1EABE0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0558);
  }

  return result;
}

unint64_t sub_18E327DF0()
{
  result = qword_1ED6A7A18;
  if (!qword_1ED6A7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7A18);
  }

  return result;
}

unint64_t sub_18E327E44()
{
  result = qword_1ED6A7CC8[0];
  if (!qword_1ED6A7CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6A7CC8);
  }

  return result;
}

unint64_t sub_18E327E98()
{
  result = qword_1ED6A7D80;
  if (!qword_1ED6A7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7D80);
  }

  return result;
}

uint64_t sub_18E327EEC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_18E44EF5C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t _s12ModelCatalog0B0O31modelManagerDefaultMemoryBudgets6UInt64VvgZ_0()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceMemorySize = MobileGestalt_get_deviceMemorySize();

    v3 = 4000000;
    if (deviceMemorySize < 0x300000000)
    {
      v3 = 2000000;
    }

    if (deviceMemorySize >= 0x600000000)
    {
      return 6000000;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_18E327F9C()
{
  result = qword_1EABE34D8;
  if (!qword_1EABE34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE34D8);
  }

  return result;
}

unint64_t sub_18E328060()
{
  result = qword_1EABDFC18;
  if (!qword_1EABDFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFC18);
  }

  return result;
}

unint64_t sub_18E3280B8()
{
  result = qword_1EABE3500;
  if (!qword_1EABE3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3500);
  }

  return result;
}

unint64_t sub_18E328110()
{
  result = qword_1EABE3508;
  if (!qword_1EABE3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3508);
  }

  return result;
}

unint64_t sub_18E32816C()
{
  result = qword_1EABE3518;
  if (!qword_1EABE3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3518);
  }

  return result;
}

unint64_t sub_18E3281C4()
{
  result = qword_1EABE3520;
  if (!qword_1EABE3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3520);
  }

  return result;
}

unint64_t sub_18E328264()
{
  result = qword_1EABE3528;
  if (!qword_1EABE3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3528);
  }

  return result;
}

unint64_t sub_18E3282BC()
{
  result = qword_1EABE3530;
  if (!qword_1EABE3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3530);
  }

  return result;
}

unint64_t sub_18E328314()
{
  result = qword_1EABE3538;
  if (!qword_1EABE3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3538);
  }

  return result;
}

unint64_t sub_18E32836C()
{
  result = qword_1EABE3540;
  if (!qword_1EABE3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3540);
  }

  return result;
}

unint64_t sub_18E3283C4()
{
  result = qword_1EABE3548;
  if (!qword_1EABE3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3548);
  }

  return result;
}

unint64_t sub_18E32841C()
{
  result = qword_1EABE3550;
  if (!qword_1EABE3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3550);
  }

  return result;
}

unint64_t sub_18E328474()
{
  result = qword_1EABDFB08;
  if (!qword_1EABDFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB08);
  }

  return result;
}

unint64_t sub_18E3284CC()
{
  result = qword_1EABE3560;
  if (!qword_1EABE3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3560);
  }

  return result;
}

unint64_t sub_18E328524()
{
  result = qword_1EABE3568;
  if (!qword_1EABE3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3568);
  }

  return result;
}

unint64_t sub_18E32857C()
{
  result = qword_1EABE3570;
  if (!qword_1EABE3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3570);
  }

  return result;
}

unint64_t sub_18E3285D4()
{
  result = qword_1EABE3578;
  if (!qword_1EABE3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3578);
  }

  return result;
}

unint64_t sub_18E32862C()
{
  result = qword_1EABE3580;
  if (!qword_1EABE3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3580);
  }

  return result;
}

unint64_t sub_18E328724()
{
  result = qword_1EABE3588;
  if (!qword_1EABE3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3588);
  }

  return result;
}

unint64_t sub_18E328778()
{
  result = qword_1EABE3590;
  if (!qword_1EABE3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3590);
  }

  return result;
}

unint64_t sub_18E3287D0()
{
  result = qword_1EABE3598;
  if (!qword_1EABE3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3598);
  }

  return result;
}

unint64_t sub_18E328824(uint64_t a1)
{
  result = sub_18E32884C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E32884C()
{
  result = qword_1EABE35A0;
  if (!qword_1EABE35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE35A0);
  }

  return result;
}

unint64_t sub_18E3288CC()
{
  result = qword_1EABE35A8;
  if (!qword_1EABE35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE35A8);
  }

  return result;
}

unint64_t sub_18E328920()
{
  result = qword_1EABE35B0;
  if (!qword_1EABE35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE35B0);
  }

  return result;
}

unint64_t sub_18E328978()
{
  result = qword_1EABE35B8;
  if (!qword_1EABE35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE35B8);
  }

  return result;
}

unint64_t sub_18E3289D0()
{
  result = qword_1EABDFB70;
  if (!qword_1EABDFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB70);
  }

  return result;
}

unint64_t sub_18E328A50(uint64_t a1)
{
  result = sub_18E328A78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E328A78()
{
  result = qword_1EABDFB30;
  if (!qword_1EABDFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB30);
  }

  return result;
}

unint64_t sub_18E328AF8()
{
  result = qword_1EABE35C8;
  if (!qword_1EABE35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE35C8);
  }

  return result;
}

unint64_t sub_18E328B4C()
{
  result = qword_1EABE35D0;
  if (!qword_1EABE35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE35D0);
  }

  return result;
}

unint64_t sub_18E328BA0(uint64_t a1)
{
  result = sub_18E328BC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E328BC8()
{
  result = qword_1EABDFB38;
  if (!qword_1EABDFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB38);
  }

  return result;
}

unint64_t sub_18E328C1C(uint64_t a1)
{
  result = sub_18E328C44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E328C44()
{
  result = qword_1EABDFB40;
  if (!qword_1EABDFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB40);
  }

  return result;
}

unint64_t sub_18E328CC4()
{
  result = qword_1EABDFB68;
  if (!qword_1EABDFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB68);
  }

  return result;
}

unint64_t sub_18E328D18()
{
  result = qword_1EABDFB50;
  if (!qword_1EABDFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB50);
  }

  return result;
}

unint64_t sub_18E328D70()
{
  result = qword_1EABDFB58;
  if (!qword_1EABDFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB58);
  }

  return result;
}

unint64_t sub_18E328E54()
{
  result = qword_1EABE35D8;
  if (!qword_1EABE35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE35D8);
  }

  return result;
}

unint64_t sub_18E328EF0()
{
  result = qword_1EABE35F0;
  if (!qword_1EABE35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE35F0);
  }

  return result;
}

unint64_t sub_18E328F48()
{
  result = qword_1EABE35F8;
  if (!qword_1EABE35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE35F8);
  }

  return result;
}

unint64_t sub_18E328FE4()
{
  result = qword_1EABE3610;
  if (!qword_1EABE3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3610);
  }

  return result;
}

unint64_t sub_18E32903C()
{
  result = qword_1EABE3618;
  if (!qword_1EABE3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3618);
  }

  return result;
}

unint64_t sub_18E329094()
{
  result = qword_1EABDF790;
  if (!qword_1EABDF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF790);
  }

  return result;
}

uint64_t sub_18E329104(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E329144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_18E3291E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return sub_18E1CFA04(*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 > 2)
  {
    return sub_18E1CFA04(v3 ^ 0xFF);
  }

  else
  {
    return sub_18E1CFA04(-1);
  }
}

uint64_t sub_18E329220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return sub_18E224184(result, -a2);
    }
  }

  return result;
}

void sub_18E329288()
{
  sub_18E32934C(319, &unk_1EABE0058, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_18E32934C(319, &qword_1EABE0070, MEMORY[0x1E69681B8]);
    if (v1 <= 0x3F)
    {
      sub_18E3293B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_18E32934C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_18E3293B0()
{
  if (!qword_1EABDF748)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EABDF748);
    }
  }
}

uint64_t sub_18E32942C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_18E32946C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceProvider.InferenceProviderOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferenceProvider.InferenceProviderOptions(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E329618(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 193))
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

uint64_t sub_18E329658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E329704(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_18E329744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E3297A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0 && *(a1 + 32))
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

  return sub_18E1CFA04(v2);
}

uint64_t sub_18E3297DC(uint64_t result, int a2, int a3)
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

      return sub_18E1D8480(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_18E1D8480(result, a2);
    }
  }

  return result;
}

uint64_t sub_18E329824()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18E329860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return sub_18E1CFA04(v2);
}

uint64_t sub_18E32989C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return sub_18E224184(result, 1);
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

      return sub_18E1D8480(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_18E1D8480(result, a2);
    }
  }

  return result;
}

uint64_t sub_18E329A38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_18E329A78(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E329B90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0 && *(a1 + 58))
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

  return sub_18E1CFA04(v2);
}

uint64_t sub_18E329BCC(uint64_t result, int a2, int a3)
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
      *(result + 58) = 1;
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

      return sub_18E1D8480(result, a2);
    }

    *(result + 58) = 0;
    if (a2)
    {
      return sub_18E1D8480(result, a2);
    }
  }

  return result;
}

void sub_18E329C2C()
{
  sub_18E329D38();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_18E329D38()
{
  if (!qword_1EABE05E8)
  {
    sub_18E44E54C();
    v0 = sub_18E44EEFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EABE05E8);
    }
  }
}

uint64_t sub_18E329E00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0 && *(a1 + 248))
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

  return sub_18E1CFA04(v2);
}

uint64_t sub_18E329E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 248) = 1;
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

      return sub_18E1D8480(result, a2);
    }

    *(result + 248) = 0;
    if (a2)
    {
      return sub_18E1D8480(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Platform.PlatformType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Platform.PlatformType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for UseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_18E32A64C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return sub_18E1CFA04(*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 > 3)
  {
    return sub_18E1CFA04(v3 ^ 0xFF);
  }

  else
  {
    return sub_18E1CFA04(-1);
  }
}

uint64_t sub_18E32A688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return sub_18E224184(result, -a2);
    }
  }

  return result;
}

uint64_t sub_18E32A6E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_18E32A720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E32A7F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 14);
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

      return sub_18E1CFA04((*a1 | (v4 << 8)) - 14);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 14);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_18E1CFA04(v8);
}

_BYTE *sub_18E32A874(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result = sub_18E1CFA0C(result, v6);
        break;
      case 2:
        result = sub_18E1E831C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_18E1D5DAC(result, v6);
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
          result = sub_18E1CF770(result, a2 + 13);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12ModelCatalog13CatalogErrorsOwst_0_0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18E32ABD0()
{
  result = qword_1EABE3620;
  if (!qword_1EABE3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3620);
  }

  return result;
}

unint64_t sub_18E32AC28()
{
  result = qword_1EABE3628;
  if (!qword_1EABE3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3628);
  }

  return result;
}

unint64_t sub_18E32AC80()
{
  result = qword_1EABE3630;
  if (!qword_1EABE3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3630);
  }

  return result;
}

unint64_t sub_18E32ACD8()
{
  result = qword_1EABE3638;
  if (!qword_1EABE3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3638);
  }

  return result;
}

unint64_t sub_18E32AD30()
{
  result = qword_1EABE3640;
  if (!qword_1EABE3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3640);
  }

  return result;
}

unint64_t sub_18E32AD88()
{
  result = qword_1EABE3648;
  if (!qword_1EABE3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3648);
  }

  return result;
}

unint64_t sub_18E32ADE0()
{
  result = qword_1EABE3650;
  if (!qword_1EABE3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3650);
  }

  return result;
}

unint64_t sub_18E32AE38()
{
  result = qword_1EABE3658;
  if (!qword_1EABE3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3658);
  }

  return result;
}

unint64_t sub_18E32AE90()
{
  result = qword_1EABE3660;
  if (!qword_1EABE3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3660);
  }

  return result;
}

unint64_t sub_18E32AEE8()
{
  result = qword_1EABE3668;
  if (!qword_1EABE3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3668);
  }

  return result;
}

unint64_t sub_18E32AF40()
{
  result = qword_1EABE3670;
  if (!qword_1EABE3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3670);
  }

  return result;
}

unint64_t sub_18E32AF98()
{
  result = qword_1EABE3678;
  if (!qword_1EABE3678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3678);
  }

  return result;
}

unint64_t sub_18E32AFF0()
{
  result = qword_1EABE3680;
  if (!qword_1EABE3680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3680);
  }

  return result;
}

unint64_t sub_18E32B048()
{
  result = qword_1EABE3688;
  if (!qword_1EABE3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3688);
  }

  return result;
}

unint64_t sub_18E32B0A0()
{
  result = qword_1EABE3690;
  if (!qword_1EABE3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3690);
  }

  return result;
}

unint64_t sub_18E32B0F8()
{
  result = qword_1EABE3698;
  if (!qword_1EABE3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3698);
  }

  return result;
}

unint64_t sub_18E32B150()
{
  result = qword_1EABE36A0;
  if (!qword_1EABE36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36A0);
  }

  return result;
}

unint64_t sub_18E32B1A8()
{
  result = qword_1EABE36A8;
  if (!qword_1EABE36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36A8);
  }

  return result;
}

unint64_t sub_18E32B200()
{
  result = qword_1EABE36B0;
  if (!qword_1EABE36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36B0);
  }

  return result;
}

unint64_t sub_18E32B258()
{
  result = qword_1EABE36B8;
  if (!qword_1EABE36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36B8);
  }

  return result;
}

unint64_t sub_18E32B2B0()
{
  result = qword_1EABE36C0;
  if (!qword_1EABE36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36C0);
  }

  return result;
}

unint64_t sub_18E32B308()
{
  result = qword_1EABE36C8;
  if (!qword_1EABE36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36C8);
  }

  return result;
}

unint64_t sub_18E32B360()
{
  result = qword_1EABE36D0;
  if (!qword_1EABE36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36D0);
  }

  return result;
}

unint64_t sub_18E32B3B8()
{
  result = qword_1EABE36D8;
  if (!qword_1EABE36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36D8);
  }

  return result;
}

unint64_t sub_18E32B410()
{
  result = qword_1EABE36E0;
  if (!qword_1EABE36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36E0);
  }

  return result;
}

unint64_t sub_18E32B468()
{
  result = qword_1EABE36E8;
  if (!qword_1EABE36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36E8);
  }

  return result;
}

unint64_t sub_18E32B4C0()
{
  result = qword_1EABE36F0;
  if (!qword_1EABE36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36F0);
  }

  return result;
}

unint64_t sub_18E32B518()
{
  result = qword_1EABE36F8;
  if (!qword_1EABE36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE36F8);
  }

  return result;
}

unint64_t sub_18E32B570()
{
  result = qword_1EABE3700;
  if (!qword_1EABE3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3700);
  }

  return result;
}

unint64_t sub_18E32B5C8()
{
  result = qword_1EABE3708;
  if (!qword_1EABE3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3708);
  }

  return result;
}

unint64_t sub_18E32B620()
{
  result = qword_1EABE3710;
  if (!qword_1EABE3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3710);
  }

  return result;
}

unint64_t sub_18E32B678()
{
  result = qword_1EABE3718;
  if (!qword_1EABE3718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3718);
  }

  return result;
}

unint64_t sub_18E32B6D0()
{
  result = qword_1EABE3720;
  if (!qword_1EABE3720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3720);
  }

  return result;
}

unint64_t sub_18E32B728()
{
  result = qword_1EABE3728;
  if (!qword_1EABE3728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3728);
  }

  return result;
}

unint64_t sub_18E32B780()
{
  result = qword_1EABE3730;
  if (!qword_1EABE3730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3730);
  }

  return result;
}

unint64_t sub_18E32B7D8()
{
  result = qword_1EABE3738;
  if (!qword_1EABE3738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3738);
  }

  return result;
}

unint64_t sub_18E32B830()
{
  result = qword_1EABE3740;
  if (!qword_1EABE3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3740);
  }

  return result;
}

unint64_t sub_18E32B888()
{
  result = qword_1EABE3748;
  if (!qword_1EABE3748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3748);
  }

  return result;
}

unint64_t sub_18E32B8FC()
{
  result = qword_1EABE3750;
  if (!qword_1EABE3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3750);
  }

  return result;
}

unint64_t sub_18E32B954()
{
  result = qword_1EABE3758;
  if (!qword_1EABE3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3758);
  }

  return result;
}

unint64_t sub_18E32B9AC()
{
  result = qword_1EABE3760;
  if (!qword_1EABE3760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3760);
  }

  return result;
}

unint64_t sub_18E32BA04()
{
  result = qword_1EABE3768;
  if (!qword_1EABE3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3768);
  }

  return result;
}

unint64_t sub_18E32BA5C()
{
  result = qword_1EABE3770;
  if (!qword_1EABE3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3770);
  }

  return result;
}

unint64_t sub_18E32BAB4()
{
  result = qword_1EABE3778;
  if (!qword_1EABE3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3778);
  }

  return result;
}

unint64_t sub_18E32BB0C()
{
  result = qword_1EABE3780;
  if (!qword_1EABE3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3780);
  }

  return result;
}

unint64_t sub_18E32BB64()
{
  result = qword_1EABE3788;
  if (!qword_1EABE3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3788);
  }

  return result;
}

unint64_t sub_18E32BBBC()
{
  result = qword_1ED6A8400;
  if (!qword_1ED6A8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8400);
  }

  return result;
}

unint64_t sub_18E32BC14()
{
  result = qword_1ED6A7F08;
  if (!qword_1ED6A7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7F08);
  }

  return result;
}

unint64_t sub_18E32BC6C()
{
  result = qword_1ED6A7B90;
  if (!qword_1ED6A7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7B90);
  }

  return result;
}

unint64_t sub_18E32BCC4()
{
  result = qword_1ED6A7B98;
  if (!qword_1ED6A7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7B98);
  }

  return result;
}

unint64_t sub_18E32BD54()
{
  result = qword_1EABE3790;
  if (!qword_1EABE3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3790);
  }

  return result;
}

unint64_t sub_18E32BDAC()
{
  result = qword_1EABE3798;
  if (!qword_1EABE3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3798);
  }

  return result;
}

unint64_t sub_18E32BE04()
{
  result = qword_1EABE37A0;
  if (!qword_1EABE37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37A0);
  }

  return result;
}

unint64_t sub_18E32BE5C()
{
  result = qword_1EABE37A8;
  if (!qword_1EABE37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37A8);
  }

  return result;
}

unint64_t sub_18E32BEB4()
{
  result = qword_1EABE37B0;
  if (!qword_1EABE37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37B0);
  }

  return result;
}

unint64_t sub_18E32BF0C()
{
  result = qword_1EABE37B8;
  if (!qword_1EABE37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37B8);
  }

  return result;
}

unint64_t sub_18E32BF64()
{
  result = qword_1EABE37C0;
  if (!qword_1EABE37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37C0);
  }

  return result;
}

unint64_t sub_18E32BFBC()
{
  result = qword_1EABE37C8;
  if (!qword_1EABE37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37C8);
  }

  return result;
}

unint64_t sub_18E32C014()
{
  result = qword_1EABE37D0;
  if (!qword_1EABE37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37D0);
  }

  return result;
}

unint64_t sub_18E32C06C()
{
  result = qword_1EABE37D8;
  if (!qword_1EABE37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37D8);
  }

  return result;
}

unint64_t sub_18E32C0C4()
{
  result = qword_1EABE37E0;
  if (!qword_1EABE37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37E0);
  }

  return result;
}

unint64_t sub_18E32C11C()
{
  result = qword_1EABE37E8;
  if (!qword_1EABE37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37E8);
  }

  return result;
}

unint64_t sub_18E32C174()
{
  result = qword_1EABE37F0;
  if (!qword_1EABE37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37F0);
  }

  return result;
}

unint64_t sub_18E32C1CC()
{
  result = qword_1EABE37F8;
  if (!qword_1EABE37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE37F8);
  }

  return result;
}

unint64_t sub_18E32C224()
{
  result = qword_1EABE3800;
  if (!qword_1EABE3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3800);
  }

  return result;
}

unint64_t sub_18E32C27C()
{
  result = qword_1EABE3808;
  if (!qword_1EABE3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3808);
  }

  return result;
}

unint64_t sub_18E32C2D4()
{
  result = qword_1EABE3810;
  if (!qword_1EABE3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3810);
  }

  return result;
}

unint64_t sub_18E32C32C()
{
  result = qword_1EABE3818;
  if (!qword_1EABE3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3818);
  }

  return result;
}

unint64_t sub_18E32C384()
{
  result = qword_1EABE3820;
  if (!qword_1EABE3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3820);
  }

  return result;
}

unint64_t sub_18E32C3DC()
{
  result = qword_1EABE3828;
  if (!qword_1EABE3828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3828);
  }

  return result;
}

unint64_t sub_18E32C434()
{
  result = qword_1EABE3830;
  if (!qword_1EABE3830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3830);
  }

  return result;
}

unint64_t sub_18E32C48C()
{
  result = qword_1EABE3838;
  if (!qword_1EABE3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3838);
  }

  return result;
}

unint64_t sub_18E32C4E4()
{
  result = qword_1EABE3840;
  if (!qword_1EABE3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3840);
  }

  return result;
}

unint64_t sub_18E32C53C()
{
  result = qword_1EABE3848;
  if (!qword_1EABE3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3848);
  }

  return result;
}

unint64_t sub_18E32C594()
{
  result = qword_1EABE3850;
  if (!qword_1EABE3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3850);
  }

  return result;
}

unint64_t sub_18E32C5EC()
{
  result = qword_1EABE3858;
  if (!qword_1EABE3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3858);
  }

  return result;
}

unint64_t sub_18E32C644()
{
  result = qword_1EABE3860;
  if (!qword_1EABE3860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3860);
  }

  return result;
}

unint64_t sub_18E32C69C()
{
  result = qword_1EABE3868;
  if (!qword_1EABE3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3868);
  }

  return result;
}

unint64_t sub_18E32C6F4()
{
  result = qword_1EABE3870;
  if (!qword_1EABE3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3870);
  }

  return result;
}

unint64_t sub_18E32C74C()
{
  result = qword_1EABE3878;
  if (!qword_1EABE3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3878);
  }

  return result;
}

unint64_t sub_18E32C7A4()
{
  result = qword_1EABE3880;
  if (!qword_1EABE3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3880);
  }

  return result;
}

unint64_t sub_18E32C7FC()
{
  result = qword_1EABE3888;
  if (!qword_1EABE3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3888);
  }

  return result;
}

unint64_t sub_18E32C854()
{
  result = qword_1EABE3890;
  if (!qword_1EABE3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3890);
  }

  return result;
}

unint64_t sub_18E32C8AC()
{
  result = qword_1EABE3898;
  if (!qword_1EABE3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3898);
  }

  return result;
}

unint64_t sub_18E32C904()
{
  result = qword_1EABE38A0;
  if (!qword_1EABE38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38A0);
  }

  return result;
}

unint64_t sub_18E32C95C()
{
  result = qword_1EABE38A8;
  if (!qword_1EABE38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38A8);
  }

  return result;
}

unint64_t sub_18E32C9B4()
{
  result = qword_1EABE38B0;
  if (!qword_1EABE38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38B0);
  }

  return result;
}

unint64_t sub_18E32CA0C()
{
  result = qword_1EABE38B8;
  if (!qword_1EABE38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38B8);
  }

  return result;
}

unint64_t sub_18E32CA64()
{
  result = qword_1EABE38C0;
  if (!qword_1EABE38C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38C0);
  }

  return result;
}

unint64_t sub_18E32CABC()
{
  result = qword_1EABE38C8;
  if (!qword_1EABE38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38C8);
  }

  return result;
}

unint64_t sub_18E32CB14()
{
  result = qword_1EABE38D0;
  if (!qword_1EABE38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38D0);
  }

  return result;
}

unint64_t sub_18E32CB6C()
{
  result = qword_1EABE38D8;
  if (!qword_1EABE38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38D8);
  }

  return result;
}

unint64_t sub_18E32CBC4()
{
  result = qword_1EABE38E0;
  if (!qword_1EABE38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38E0);
  }

  return result;
}

unint64_t sub_18E32CC1C()
{
  result = qword_1EABE38E8;
  if (!qword_1EABE38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38E8);
  }

  return result;
}

unint64_t sub_18E32CC74()
{
  result = qword_1EABE38F0;
  if (!qword_1EABE38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38F0);
  }

  return result;
}

unint64_t sub_18E32CCCC()
{
  result = qword_1EABE38F8;
  if (!qword_1EABE38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE38F8);
  }

  return result;
}

unint64_t sub_18E32CD24()
{
  result = qword_1EABE3900;
  if (!qword_1EABE3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3900);
  }

  return result;
}

unint64_t sub_18E32CD7C()
{
  result = qword_1EABE3908;
  if (!qword_1EABE3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3908);
  }

  return result;
}

unint64_t sub_18E32CDD4()
{
  result = qword_1EABE3910;
  if (!qword_1EABE3910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3910);
  }

  return result;
}

unint64_t sub_18E32CE2C()
{
  result = qword_1EABE3918;
  if (!qword_1EABE3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3918);
  }

  return result;
}

unint64_t sub_18E32CE84()
{
  result = qword_1EABE3920;
  if (!qword_1EABE3920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3920);
  }

  return result;
}

unint64_t sub_18E32CEDC()
{
  result = qword_1EABE3928;
  if (!qword_1EABE3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3928);
  }

  return result;
}

unint64_t sub_18E32CF34()
{
  result = qword_1EABE3930;
  if (!qword_1EABE3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3930);
  }

  return result;
}

unint64_t sub_18E32CF8C()
{
  result = qword_1EABE3938;
  if (!qword_1EABE3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3938);
  }

  return result;
}

unint64_t sub_18E32CFE4()
{
  result = qword_1EABE3940;
  if (!qword_1EABE3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3940);
  }

  return result;
}

unint64_t sub_18E32D03C()
{
  result = qword_1EABE3948;
  if (!qword_1EABE3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3948);
  }

  return result;
}

unint64_t sub_18E32D094()
{
  result = qword_1EABE3950;
  if (!qword_1EABE3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3950);
  }

  return result;
}

unint64_t sub_18E32D0EC()
{
  result = qword_1EABE3958;
  if (!qword_1EABE3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3958);
  }

  return result;
}

unint64_t sub_18E32D144()
{
  result = qword_1EABE3960;
  if (!qword_1EABE3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3960);
  }

  return result;
}

unint64_t sub_18E32D19C()
{
  result = qword_1EABE3968;
  if (!qword_1EABE3968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3968);
  }

  return result;
}

unint64_t sub_18E32D1F4()
{
  result = qword_1EABE3970;
  if (!qword_1EABE3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3970);
  }

  return result;
}

unint64_t sub_18E32D24C()
{
  result = qword_1EABE3978;
  if (!qword_1EABE3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3978);
  }

  return result;
}

unint64_t sub_18E32D2A4()
{
  result = qword_1EABE3980;
  if (!qword_1EABE3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3980);
  }

  return result;
}

unint64_t sub_18E32D2FC()
{
  result = qword_1EABE3988;
  if (!qword_1EABE3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3988);
  }

  return result;
}

unint64_t sub_18E32D354()
{
  result = qword_1EABE3990;
  if (!qword_1EABE3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3990);
  }

  return result;
}

unint64_t sub_18E32D3AC()
{
  result = qword_1EABE3998;
  if (!qword_1EABE3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3998);
  }

  return result;
}

unint64_t sub_18E32D404()
{
  result = qword_1EABE39A0;
  if (!qword_1EABE39A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE39A0);
  }

  return result;
}

unint64_t sub_18E32D45C()
{
  result = qword_1EABE39A8;
  if (!qword_1EABE39A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE39A8);
  }

  return result;
}

unint64_t sub_18E32D4B0()
{
  result = qword_1EABE39B0;
  if (!qword_1EABE39B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE39B0);
  }

  return result;
}

unint64_t sub_18E32D560()
{
  result = qword_1EABDFCB8;
  if (!qword_1EABDFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFCB8);
  }

  return result;
}

unint64_t sub_18E32D610()
{
  result = qword_1EABE39C0;
  if (!qword_1EABE39C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE39C0);
  }

  return result;
}

unint64_t sub_18E32D6C0()
{
  result = qword_1EABE39C8;
  if (!qword_1EABE39C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE39C8);
  }

  return result;
}

unint64_t sub_18E32D770()
{
  result = qword_1EABE39D0;
  if (!qword_1EABE39D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE39D0);
  }

  return result;
}

unint64_t sub_18E32D820()
{
  result = qword_1EABE39D8;
  if (!qword_1EABE39D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE39D8);
  }

  return result;
}

unint64_t sub_18E32D8D0()
{
  result = qword_1EABE39E0;
  if (!qword_1EABE39E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE39E0);
  }

  return result;
}

unint64_t sub_18E32D980()
{
  result = qword_1EABE39E8;
  if (!qword_1EABE39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE39E8);
  }

  return result;
}

unint64_t sub_18E32DA30()
{
  result = qword_1EABE39F0;
  if (!qword_1EABE39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE39F0);
  }

  return result;
}

unint64_t sub_18E32DAE0()
{
  result = qword_1EABE39F8;
  if (!qword_1EABE39F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE39F8);
  }

  return result;
}

unint64_t sub_18E32DB90()
{
  result = qword_1EABE3A00;
  if (!qword_1EABE3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A00);
  }

  return result;
}

unint64_t sub_18E32DC40()
{
  result = qword_1EABE3A08;
  if (!qword_1EABE3A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A08);
  }

  return result;
}

unint64_t sub_18E32DCF0()
{
  result = qword_1EABE3A10;
  if (!qword_1EABE3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A10);
  }

  return result;
}

unint64_t sub_18E32DDA0()
{
  result = qword_1EABE3A18;
  if (!qword_1EABE3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A18);
  }

  return result;
}

unint64_t sub_18E32DE50()
{
  result = qword_1EABE3A20;
  if (!qword_1EABE3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A20);
  }

  return result;
}

unint64_t sub_18E32DF00()
{
  result = qword_1EABE3A28;
  if (!qword_1EABE3A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A28);
  }

  return result;
}

unint64_t sub_18E32DFB0()
{
  result = qword_1EABE3A30;
  if (!qword_1EABE3A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A30);
  }

  return result;
}

unint64_t sub_18E32E060()
{
  result = qword_1EABE3A38;
  if (!qword_1EABE3A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A38);
  }

  return result;
}

unint64_t sub_18E32E110()
{
  result = qword_1EABE3A40;
  if (!qword_1EABE3A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A40);
  }

  return result;
}

unint64_t sub_18E32E1C0()
{
  result = qword_1EABE3A48;
  if (!qword_1EABE3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A48);
  }

  return result;
}

unint64_t sub_18E32E270()
{
  result = qword_1EABE3A50;
  if (!qword_1EABE3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A50);
  }

  return result;
}

unint64_t sub_18E32E320()
{
  result = qword_1EABE3A58;
  if (!qword_1EABE3A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A58);
  }

  return result;
}

unint64_t sub_18E32E3D0()
{
  result = qword_1EABE3A60;
  if (!qword_1EABE3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A60);
  }

  return result;
}

unint64_t sub_18E32E480()
{
  result = qword_1EABE3A68;
  if (!qword_1EABE3A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A68);
  }

  return result;
}

unint64_t sub_18E32E530()
{
  result = qword_1EABE3A70;
  if (!qword_1EABE3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A70);
  }

  return result;
}

unint64_t sub_18E32E5E0()
{
  result = qword_1EABE3A78;
  if (!qword_1EABE3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A78);
  }

  return result;
}

unint64_t sub_18E32E690()
{
  result = qword_1EABE3A80;
  if (!qword_1EABE3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A80);
  }

  return result;
}

unint64_t sub_18E32E740()
{
  result = qword_1EABE3A88;
  if (!qword_1EABE3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A88);
  }

  return result;
}

uint64_t sub_18E32E794()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[11];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[17];

  v10 = v0[18];

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

unint64_t sub_18E32E870()
{
  result = qword_1EABE3A90;
  if (!qword_1EABE3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A90);
  }

  return result;
}

unint64_t sub_18E32E920()
{
  result = qword_1EABE3A98;
  if (!qword_1EABE3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3A98);
  }

  return result;
}

unint64_t sub_18E32E9D0()
{
  result = qword_1EABE3AA0;
  if (!qword_1EABE3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3AA0);
  }

  return result;
}

unint64_t sub_18E32EA80()
{
  result = qword_1EABE3AA8;
  if (!qword_1EABE3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3AA8);
  }

  return result;
}

unint64_t sub_18E32EB30()
{
  result = qword_1EABE3AB0;
  if (!qword_1EABE3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3AB0);
  }

  return result;
}

uint64_t sub_18E32EB84()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[9];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[16];

  v10 = v0[19];

  v11 = v0[22];

  v12 = v0[23];

  v13 = v0[25];

  v14 = v0[26];

  v15 = v0[27];

  v16 = v0[28];

  v17 = v0[30];

  v18 = v0[31];

  return MEMORY[0x1EEE6BDD0](v0, 256, 7);
}

unint64_t sub_18E32ECA0()
{
  result = qword_1ED6A7BB0;
  if (!qword_1ED6A7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7BB0);
  }

  return result;
}

unint64_t sub_18E32ECF4()
{
  result = qword_1EABE3AB8;
  if (!qword_1EABE3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3AB8);
  }

  return result;
}

unint64_t sub_18E32ED48()
{
  result = qword_1EABE3AC0;
  if (!qword_1EABE3AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3AC0);
  }

  return result;
}

void *sub_18E32EF8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{

  return memcpy(v10, &__src, 0xF8uLL);
}

uint64_t sub_18E32EFA8()
{

  return sub_18E44F2FC();
}

unint64_t sub_18E32EFD4()
{

  return sub_18E24B33C();
}

uint64_t sub_18E32F014()
{
  v2 = *(v0 - 120);

  return sub_18E44F22C();
}

uint64_t sub_18E32F034()
{

  return sub_18E44F22C();
}

uint64_t sub_18E32F054()
{
  v2 = *(v0 - 136);

  return sub_18E44F22C();
}

uint64_t sub_18E32F074()
{

  return sub_18E44F22C();
}

uint64_t sub_18E32F094()
{
}

uint64_t sub_18E32F0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE3AE8, &qword_18E4B7468);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  sub_18E2706EC(&qword_1EABE3AF0, &unk_18E4B7470);
  sub_18E44E74C();
  v10[0] = a1;
  v10[1] = a2;
  sub_18E32F5B0();
  sub_18E32F604();
  LOBYTE(a2) = sub_18E44E9FC();
  (*(v5 + 8))(v8, v4);
  return a2 & 1;
}

id sub_18E32F228(uint64_t a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() currentProcess];
  v5 = [v4 isManaged];

  if (v5)
  {
    sub_18E1D121C(0, &qword_1ED6A7DA8, 0x1E69C7560);
    v6 = sub_18E25F75C();
    v7 = objc_opt_self();

    v8 = [v7 currentProcess];
    sub_18E2706EC(&qword_1EABE3AE0, &qword_18E4B7460);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18E4B7440;
    *(v9 + 32) = v6;
    objc_allocWithZone(MEMORY[0x1E69C7548]);
    v10 = v6;
    v11 = sub_18E25F898(a1, a2, v8);
    v25[0] = 0;
    if ([v11 acquireWithError_])
    {
      v12 = v25[0];
    }

    else
    {
      v15 = v25[0];
      v16 = sub_18E44E44C();

      swift_willThrow();
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v17 = sub_18E44E83C();
      sub_18E1C95EC(v17, qword_1ED6A9870);
      v18 = v16;
      v19 = sub_18E44E80C();
      v20 = sub_18E44EE0C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = v16;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_18E1C1000, v19, v20, "Could not acquire RBSAssertion with error: %@", v21, 0xCu);
        sub_18E32F548(v22);
        MEMORY[0x193ACD400](v22, -1, -1);
        MEMORY[0x193ACD400](v21, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_18E32F548(uint64_t a1)
{
  v2 = sub_18E2706EC(&unk_1EABE9120, &qword_18E4E3A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18E32F5B0()
{
  result = qword_1EABE3AF8;
  if (!qword_1EABE3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3AF8);
  }

  return result;
}

unint64_t sub_18E32F604()
{
  result = qword_1EABE3B00;
  if (!qword_1EABE3B00)
  {
    sub_18E2707F8(&qword_1EABE3AE8, &qword_18E4B7468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3B00);
  }

  return result;
}

uint64_t Capabilities.TextGeneration.init(supported:maxInputLength:supportsFormats:supportsLocales:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

__n128 Capabilities.ImageGeneration.init(supported:maxTextInputLength:maxInputFileSize:supportsAspectRatios:supportsSizes:supportsFormats:supportsMultipleInput:supportsMultipleOutput:supportsStyles:supportsThemes:supportsHair:supportsFacialHair:supportsHeadWear:supportsAccessories:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 49) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  return result;
}

void *Capabilities.init(textGeneration:imageGeneration:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = *(a1 + 16);
  return memcpy((a3 + 32), a2, 0x68uLL);
}

uint64_t sub_18E32F6CC()
{
  v2 = *v0;
  sub_18E44F48C();
  Capabilities.FacialHair.hash(into:)();
  return sub_18E44F4CC();
}

uint64_t _s12ModelCatalog12CapabilitiesV10FacialHairO9hashValueSivg_0()
{
  v1 = *v0;
  sub_18E44F48C();
  MEMORY[0x193ACCC20](v1);
  return sub_18E44F4CC();
}

uint64_t Capabilities.textGeneration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

unint64_t sub_18E32F870()
{
  result = qword_1EABE3B08;
  if (!qword_1EABE3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3B08);
  }

  return result;
}

unint64_t sub_18E32F8C8()
{
  result = qword_1EABE3B10;
  if (!qword_1EABE3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3B10);
  }

  return result;
}

unint64_t sub_18E32F920()
{
  result = qword_1EABE3B18;
  if (!qword_1EABE3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3B18);
  }

  return result;
}

unint64_t sub_18E32F978()
{
  result = qword_1EABE3B20;
  if (!qword_1EABE3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3B20);
  }

  return result;
}

unint64_t sub_18E32F9D0()
{
  result = qword_1EABE3B28;
  if (!qword_1EABE3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3B28);
  }

  return result;
}

unint64_t sub_18E32FA28()
{
  result = qword_1EABE3B30;
  if (!qword_1EABE3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3B30);
  }

  return result;
}

unint64_t sub_18E32FA80()
{
  result = qword_1EABE3B38;
  if (!qword_1EABE3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3B38);
  }

  return result;
}

unint64_t sub_18E32FAD8()
{
  result = qword_1EABE3B40;
  if (!qword_1EABE3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3B40);
  }

  return result;
}

uint64_t sub_18E32FB2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_18E32FB6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Capabilities.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Capabilities.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Capabilities.Theme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD2)
  {
    if (a2 + 46 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 46) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 47;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2F;
  v5 = v6 - 47;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Capabilities.Theme(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 46 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 46) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD1)
  {
    v6 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
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
          *result = a2 + 46;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18E32FE74(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_18E32FF40(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Capabilities.ImageSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18E3300D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_18E330118(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t ExternalModelProvider.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ExternalModelProvider.restrictions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t static ExternalModelProvider.Restrictions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_18E290008(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (sub_18E290008(v2, v4))
  {
    return v3 ^ v5 ^ 1u;
  }

  return 0;
}

void sub_18E3302E8()
{
  qword_1ED6A7AD8 = 0xD000000000000018;
  unk_1ED6A7AE0 = 0x800000018E458D80;
  byte_1ED6A7AE8 = 49;
  qword_1ED6A7AF0 = &unk_1F013A648;
  unk_1ED6A7AF8 = &unk_1F013A708;
  byte_1ED6A7B00 = 1;
}

uint64_t static ExternalModelProvider.chatGPT.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED6A7AD0 != -1)
  {
    swift_once();
  }

  v2 = unk_1ED6A7AE0;
  v3 = byte_1ED6A7AE8;
  v4 = qword_1ED6A7AF0;
  v5 = unk_1ED6A7AF8;
  v6 = byte_1ED6A7B00;
  *a1 = qword_1ED6A7AD8;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t sub_18E3303D4()
{
  result = sub_18E3303F4();
  qword_1EABE3B48 = result;
  return result;
}

uint64_t sub_18E3303F4()
{
  if (qword_1ED6A7AD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED6A7AD8;
  v0 = unk_1ED6A7AE0;
  v2 = byte_1ED6A7AE8;
  v3 = qword_1ED6A7AF0;
  v4 = unk_1ED6A7AF8;
  v5 = byte_1ED6A7B00;

  sub_18E3F0050();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_18E3F0050();
    v7 = v11;
  }

  *(v7 + 16) = v8 + 1;
  v9 = v7 + 48 * v8;
  *(v9 + 32) = v1;
  *(v9 + 40) = v0;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  return v7;
}

uint64_t static ExternalModelProvider.allProviders.getter()
{
  if (qword_1EABE0D18 != -1)
  {
    swift_once();
  }
}

BOOL static ExternalModelProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v10 && (sub_18E44F3CC() & 1) == 0)
  {
    return 0;
  }

  v11 = sub_18E1C6DAC(v2);
  v13 = v12;
  if (v11 == sub_18E1C6DAC(v6) && v13 == v14)
  {
  }

  else
  {
    v16 = sub_18E44F3CC();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  return (sub_18E290008(v4, v8) & 1) != 0 && (sub_18E290008(v3, v7) & 1) != 0 && v5 == v9;
}

__n128 sub_18E330670(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18E330684(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_18E3306C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E330720(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18E330760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_18E3307B0()
{
  sub_18E44EB8C();
  swift_getObjectType();
  OS_xpc_object.asAny.getter(&v2);
  v0 = v3;
  if (v3)
  {
    sub_18E270D70(&v2, v4);
    sub_18E1C97D8(v4, &v2);
    sub_18E2736F0(&v2);
    sub_18E1C9934(v4);
  }

  else
  {

    sub_18E275468(&v2, &qword_1EABE3B70, &qword_18E4AAB80);
  }

  return v0 != 0;
}

void OS_xpc_object.asAny.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18E2706EC(&unk_1EABE3B50, &qword_18E4B7BD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - v6;
  v8 = MEMORY[0x193ACD5F0](v2);
  if (sub_18E44E87C() == v8)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v13 = sub_18E330FF0();
LABEL_15:
    *(a1 + 24) = v13;
    *a1 = v10;
    return;
  }

  if (sub_18E44E8AC() == v8)
  {
    value = xpc_int64_get_value(v2);
    v15 = MEMORY[0x1E69E7360];
LABEL_18:
    *(a1 + 24) = v15;
    *a1 = value;
    return;
  }

  if (sub_18E44E8DC() == v8)
  {
    value = xpc_uint64_get_value(v2);
    v15 = MEMORY[0x1E69E76D8];
    goto LABEL_18;
  }

  if (sub_18E44E84C() == v8)
  {
    v16 = xpc_BOOL_get_value(v2);
    *(a1 + 24) = MEMORY[0x1E69E6370];
    *a1 = v16;
    return;
  }

  if (sub_18E44E8BC() == v8)
  {
    v17 = xpc_double_get_value(v2);
    *(a1 + 24) = MEMORY[0x1E69E63B0];
    *a1 = v17;
    return;
  }

  if (sub_18E44E8CC() == v8)
  {
    if (xpc_string_get_string_ptr(v2))
    {
      v18 = sub_18E44EB8C();
      v20 = MEMORY[0x1E69E6158];
LABEL_23:
      *(a1 + 24) = v20;
      *a1 = v18;
      *(a1 + 8) = v19;
      return;
    }
  }

  else if (sub_18E44E88C() == v8)
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
    v22 = [v21 UUIDString];
    sub_18E44EAAC();

    sub_18E44E66C();

    v23 = sub_18E44E6AC();
    if (sub_18E1CAF28(v7, 1, v23) != 1)
    {
      *(a1 + 24) = v23;
      v24 = sub_18E1E1774(a1);
      (*(*(v23 - 8) + 32))(v24, v7, v23);

      return;
    }

    sub_18E275468(v7, &unk_1EABE3B50, &qword_18E4B7BD0);
  }

  else
  {
    if (sub_18E44E86C() == v8)
    {
      xpc_date_get_value_absolute();
      *(a1 + 24) = sub_18E44E65C();
      sub_18E1E1774(a1);
      sub_18E44E64C();
      return;
    }

    if (sub_18E44E85C() != v8)
    {
      if (sub_18E44E89C() == v8)
      {
        v28 = sub_18E330C54(v2);
        if (v28)
        {
          v10 = v28;
          v11 = &qword_1EABE3B60;
          v12 = &unk_18E4E1A40;
          goto LABEL_32;
        }
      }

      else if (sub_18E44E8EC() == v8)
      {
        v9 = sub_18E330E74(v2);
        if (v9)
        {
          v10 = v9;
          v11 = &unk_1EABE9010;
          v12 = &qword_18E4B0160;
LABEL_32:
          v13 = sub_18E2706EC(v11, v12);
          goto LABEL_15;
        }
      }

      goto LABEL_33;
    }

    bytes_ptr = xpc_data_get_bytes_ptr(v2);
    if (bytes_ptr)
    {
      v26 = bytes_ptr;
      length = xpc_data_get_length(v2);
      v18 = MEMORY[0x193ACBDB0](v26, length);
      v20 = MEMORY[0x1E6969080];
      goto LABEL_23;
    }
  }

LABEL_33:
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

uint64_t sub_18E330BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

size_t sub_18E330C54(void *a1)
{
  v2 = MEMORY[0x193ACD5F0]();
  if (v2 != sub_18E44E89C())
  {
    return 0;
  }

  result = xpc_array_get_count(a1);
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = xpc_array_get_value(a1, v6);
      ObjectType = swift_getObjectType();
      OS_xpc_object.asAny.getter(&v20, ObjectType);
      swift_unknownObjectRelease();
      if (v21)
      {
        sub_18E270D70(&v20, v22);
        sub_18E1C97D8(v22, &v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = *(v3 + 16);
          sub_18E3F0280();
          v3 = v15;
        }

        v9 = *(v3 + 16);
        if (v9 >= *(v3 + 24) >> 1)
        {
          sub_18E3F0280();
          v3 = v16;
        }

        sub_18E1C9934(v22);
        *(v3 + 16) = v9 + 1;
        v10 = v3 + 32 * v9;
        v11 = &v20;
      }

      else
      {
        sub_18E275468(&v20, &qword_1EABE3B70, &qword_18E4AAB80);
        v12 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v23 = sub_18E330FF0();
        v22[0] = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v3 + 16);
          sub_18E3F0280();
          v3 = v18;
        }

        v13 = *(v3 + 16);
        if (v13 >= *(v3 + 24) >> 1)
        {
          sub_18E3F0280();
          v3 = v19;
        }

        *(v3 + 16) = v13 + 1;
        v10 = v3 + 32 * v13;
        v11 = v22;
      }

      sub_18E270D70(v11, (v10 + 32));
      ++v6;
    }

    while (v5 != v6);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E330E74(void *a1)
{
  v2 = MEMORY[0x193ACD5F0]();
  if (v2 != sub_18E44E8EC())
  {
    return 0;
  }

  v10 = MEMORY[0x1E69E7CC8];
  v4 = swift_allocObject();
  *(v4 + 16) = &v10;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_18E331034;
  *(v5 + 24) = v4;
  aBlock[4] = sub_18E33103C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E330BFC;
  aBlock[3] = &unk_1F0154EA0;
  v6 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_18E330FF0()
{
  result = qword_1EABE3B68;
  if (!qword_1EABE3B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EABE3B68);
  }

  return result;
}

uint64_t sub_18E33103C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t Catalog.AppleDeviceTracking.Detector.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  v3 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v3);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v4 = sub_18E1CF1F8();
  *(v4 + 16) = xmmword_18E49D9B0;
  *(v4 + 32) = 5;
  result = sub_18E1E3E04(v4);
  a1[14] = result;
  return result;
}

uint64_t Catalog.AppleDeviceTracking.IPhoneTracker.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  v3 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v3);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v4 = sub_18E1CF1F8();
  *(v4 + 16) = xmmword_18E49D9B0;
  *(v4 + 32) = 5;
  result = sub_18E1E3E04(v4);
  a1[14] = result;
  return result;
}

uint64_t sub_18E3311F4()
{
  sub_18E1D5DF0();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E33124C()
{
  sub_18E1E33FC();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t Catalog.AppleDeviceTracking.MacbookTracker.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  v3 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1E89F8(v3);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v4 = sub_18E1CF1F8();
  *(v4 + 16) = xmmword_18E49D9B0;
  *(v4 + 32) = 5;
  result = sub_18E1E3E04(v4);
  a1[14] = result;
  return result;
}

uint64_t Catalog.AppleDeviceTracking.MagicKeyboardTracker.init()@<X0>(void *a1@<X8>)
{
  sub_18E2287B8("com.apple.vision.adt.magic_keyboard_tracker");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  v2 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1E89F8(v2);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v3 = sub_18E1CF1F8();
  *(v3 + 16) = xmmword_18E49D9B0;
  *(v3 + 32) = 5;
  result = sub_18E1E3E04(v3);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.Animation.init()@<X0>(void *a1@<X8>)
{
  sub_18E1FF2E8("com.apple.fm.visual.image_diffusion_v1.animation");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.Emoji.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3128("com.apple.fm.visual.image_diffusion_v1.emoji");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.Illustration.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5FC("com.apple.fm.visual.image_diffusion_v1.illustration");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.MessagesBackgrounds.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E122C("com.apple.fm.visual.image_diffusion_v1.messages_backgrounds");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1C56A0(v14, xmmword_18E49D9C0);
  result = sub_18E212038(v15);
  *(result + 88) = v17 | 0x340000u;
  *(result + 96) = 0xE300000000000000;
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.PersonalizedAnimation.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CF4B4("com.apple.fm.visual.image_diffusion_v1.personalized_animation");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.PersonalizedEmoji.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA2E4("com.apple.fm.visual.image_diffusion_v1.personalized_emoji");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.PersonalizedIllustration.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CC500("com.apple.fm.visual.image_diffusion_v1.personalized_illustration");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.PersonalizedSketch.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CF6C8("com.apple.fm.visual.image_diffusion_v1.personalized_sketch");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.PersonalizedScribble.init()@<X0>(void *a1@<X8>)
{
  sub_18E2204EC("com.apple.fm.visual.image_diffusion_v1.personalized_style_scribble");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.Refiner.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.visual.image_diffusion_v1.refiner");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.Sketch.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.fm.visual.image_diffusion_v1.sketch");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.SkinToneEmoji.init()@<X0>(void *a1@<X8>)
{
  sub_18E1D6378("com.apple.fm.visual.image_diffusion_v1.skintone_emoji");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Adapter.Scribble.init()@<X0>(void *a1@<X8>)
{
  sub_18E1D6378("com.apple.fm.visual.image_diffusion_v1.style_scribble");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E1CD944(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.Diffusion.Model.VisualGenerationBase.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E2287B8("com.apple.fm.visual.image_diffusion_v1.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A85D0 != -1)
  {
    sub_18E1D4C98();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  *(a1 + 32) = v13;
  *(a1 + 40) = 1250000;
  *(a1 + 48) = 0x10000;
  *(a1 + 52) = 0;
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.DisabledUseCaseList.All.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1D6298(MEMORY[0x1E69E7CC0]);
  *(a1 + 80) = v3;
  *(a1 + 88) = &unk_1F011E180;
  *(a1 + 96) = 256;
  *(a1 + 104) = &unk_1F011E1A8;
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v4 = sub_18E1E8670();
  return sub_18E1C6C38(v4, xmmword_18E4B0120);
}

void Catalog.EmbeddingDenyList.All.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v5 = sub_18E36A8EC(v4);
  v6 = sub_18E1CF5E4(v5);
  sub_18E1D8010(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  v2[3] = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = sub_18E1D0038();
  sub_18E1CF330(v24, v25);

  sub_18E36A354();
  v2[4] = v26;
  v2[5] = 0;
  sub_18E1E31C4();
  v2[7] = &unk_1F011E1D0;
  v2[8] = v0;
  sub_18E1CC428(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1E8670();
  sub_18E1C6C38(v27, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.EmbeddingPreprocessor.MiscSafetyCustomizedEmbeddingPreprocessor.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1EABE0D00 != -1)
  {
    sub_18E1D443C();
  }

  sub_18E1D42C0();
  v5 = sub_18E36A8EC(v4);
  v6 = sub_18E1CF5E4(v5);
  sub_18E1D8010(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = sub_18E1D0038();
  sub_18E1CF330(v24, v25);

  sub_18E36A354();
  sub_18E21689C(v26, 10000);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF518();
  sub_18E1C8B30(v27, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.EmbeddingPreprocessor.PrepubescentSafetyCustomizedEmbeddingPreprocessor.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1EABE0D00 != -1)
  {
    sub_18E1D443C();
  }

  sub_18E1D42C0();
  v5 = sub_18E36A8EC(v4);
  v6 = sub_18E1CF5E4(v5);
  sub_18E1D8010(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = sub_18E1D0038();
  sub_18E1CF330(v24, v25);

  sub_18E36A354();
  sub_18E21689C(v26, 10000);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF518();
  sub_18E1C8B30(v27, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.EmbeddingPreprocessor.StructuralIntegrityCustomizedEmbeddingPreprocessor.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1EABE0D00 != -1)
  {
    sub_18E1D443C();
  }

  sub_18E1D42C0();
  v5 = sub_18E36A8EC(v4);
  v6 = sub_18E1CF5E4(v5);
  sub_18E1D8010(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = sub_18E1D0038();
  sub_18E1CF330(v24, v25);

  sub_18E36A354();
  sub_18E21689C(v26, 10000);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF518();
  sub_18E1C8B30(v27, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_3b.embedding_preprocessor");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1EABE0D00 != -1)
  {
    sub_18E1D443C();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E21689C(v25, 10000);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

uint64_t Catalog.HandwritingSynthesizer.HandwritingSynthesis.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E22197C("com.apple.fm.handwriting.synthesis");
  sub_18E3BF19C(MEMORY[0x1E69E7CD0]);
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 52) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = v2;
  *(a1 + 88) = &unk_1F011E200;
  sub_18E1E8468(v2);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v3 = sub_18E1CF518();
  v4 = sub_18E1E87E8(v3, xmmword_18E49D9C0);
  result = sub_18E1C5854(v4, v5 | 0x302E0000u);
  *(a1 + 112) = result;
  return result;
}

uint64_t Catalog.HandwritingSynthesizer.HandwritingSynthesisMultilingual.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1D7E90("com.apple.fm.handwriting.synthesis_multilingual");
  sub_18E3BF19C(MEMORY[0x1E69E7CD0]);
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 52) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = v2;
  *(a1 + 88) = &unk_1F011E228;
  sub_18E1E8468(v2);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v3 = sub_18E1CF518();
  v4 = sub_18E1E87E8(v3, xmmword_18E49D9C0);
  result = sub_18E1C5854(v4, v5 | 0x342E0000u);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.ImageCuratedPrompts.All.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E224564("com.apple.fm.visual.imageplayground.curatedprompts");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1C5888(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

uint64_t Catalog.ImageFilter.Conditioning.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.visual.understanding.conditioning");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF518();
  v3 = sub_18E1E87E8(v2, xmmword_18E49D9C0);
  result = sub_18E1C5854(v3, v4 | 0x322E0000u);
  *(a1 + 112) = result;
  return result;
}

uint64_t Catalog.ImageMagicCleanUp.GenerativeEditsMagicCleanUp.explicitRequestUsage.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_18E1C5BFC();
}

uint64_t Catalog.ImageMagicCleanUp.GenerativeEditsMagicCleanUp.executionContexts.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Catalog.ImageMagicCleanUp.GenerativeEditsMagicCleanUp.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E221A30(v2);
  sub_18E1E1AA4("mc.GenerativeEditsMagicCleanUp");
  v3 = MEMORY[0x1E69E7CD0];
  *(a1 + 32) = MEMORY[0x1E69E7CD0];
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  *(a1 + 56) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a1 + 61) = 0;
  *(a1 + 72) = v4;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = v4;
  *(a1 + 104) = &unk_1F011E250;
  *(a1 + 112) = 256;
  *(a1 + 120) = v4;
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v5 = sub_18E1CF518();
  v6 = sub_18E1C6434(v5, xmmword_18E49D9C0);
  result = sub_18E212038(v6);
  *(result + 88) = v8 | 0x300000u;
  *(result + 96) = 0xE300000000000000;
  *(a1 + 128) = result;
  return result;
}

uint64_t Catalog.ImageScaler.GenerativePlaygroundsUpscaler.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.visual.imagescaler.upscaler");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF518();
  v3 = sub_18E1C5888(v2, xmmword_18E49D9C0);
  result = sub_18E212038(v3);
  *(result + 88) = v5 | 0x320000u;
  *(result + 96) = 0xE300000000000000;
  *(a1 + 112) = result;
  return result;
}

uint64_t Catalog.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E3128("com.apple.photos.spatialphotosrelive.builtin");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8588 != -1)
  {
    sub_18E1DD28C();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  *(a1 + 32) = v13;
  *(a1 + 40) = 1260000;
  *(a1 + 48) = 65792;
  *(a1 + 52) = 0;
  *(a1 + 56) = &unk_1F011E278;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  sub_18E1CE92C(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF1F8();
  sub_18E1E32B8(v14, v15, v16, v17, v18, v19, v20, v21, v22);
  *(v23 + 32) = 5;
  result = sub_18E1E3E04(v23);
  *(a1 + 112) = result;
  return result;
}

uint64_t Catalog.ImageSpatialPhotosRelive.FOVEstimatorBuiltin.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1FF2E8("com.apple.photos.spatialphotosrelive.fov.builtin");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8588 != -1)
  {
    sub_18E1DD28C();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  *(a1 + 32) = v13;
  *(a1 + 40) = 47000;
  *(a1 + 48) = 65792;
  *(a1 + 52) = 0;
  *(a1 + 56) = &unk_1F011E2A8;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  sub_18E1CE92C(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF1F8();
  sub_18E1E32B8(v14, v15, v16, v17, v18, v19, v20, v21, v22);
  *(v23 + 32) = 5;
  result = sub_18E1E3E04(v23);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.ImageSpatialPhotosRelive.FOVEstimatorMain.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.photos.spatialphotosrelive.fov.main");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8588 != -1)
  {
    sub_18E1DD28C();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E1E2F48(v13, 47000);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF1F8();
  result = sub_18E1D0130(v14, v17);
  a1[14] = result;
  return result;
}

__n128 *Catalog.ImageSpatialPhotosRelive.SpatialPhotosReliveMain.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8588 != -1)
  {
    sub_18E1DD28C();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v4;
  a1[3] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v17);

  sub_18E36A354();
  sub_18E1E2F48(v14, 1260000);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  result = sub_18E1D0130(v15, v18);
  a1[14] = result;
  return result;
}

void Catalog.ImageTokenizer.AFMImageTokenizer300M.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.fm.language.instruct_300m.image_tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1D4D90(v25, 0xBF20u);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.ImageTokenizer.AFMImageTokenizer.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.fm.language.instruct_3b.image_tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1D4D90(v25, 0xBF20u);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

__n128 *Catalog.ImageTokenizer.AFMImageTokenizerServer.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E2BC8("com.apple.fm.language.instruct_server_v1.image_tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1C56A0(v14, xmmword_18E49DA90);
  a1[14] = result;
  return result;
}

void Catalog.LLM.Model.AFMTextInstruct300MBase.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D038C("com.apple.fm.language.instruct_300m.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  *(v2 + 32) = v25;
  *(v2 + 40) = 200000;
  *(v2 + 48) = 256;
  sub_18E1EA008();
  sub_18E1D6298(&unk_1F011E2D8);
  Catalog.Tokenizer.AFMTextInstruct300MTokenizer.init()();
  v26 = MEMORY[0x1E69E7CC0];
  *(v2 + 200) = MEMORY[0x1E69E7CC0];
  *(v2 + 208) = v26;
  *(v2 + 216) = 256;
  *(v2 + 224) = v26;
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1E8670();
  sub_18E1D5F68(v27, xmmword_18E4B0120);
  sub_18E232D14();
  v29 = sub_18E1C9574(v28);
  *(v29 + 64) = v30 | 0x400;
  *(v29 + 72) = v31;
  v32 = sub_18E1C6924(v29);
  *(v32 + 112) = v33;
  *(v32 + 120) = v34;
  *(v2 + 232) = v32;
  sub_18E224118();
}

void Catalog.LLM.Adapter.ADMBackgroundPrompt.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA2E4("com.apple.fm.language.instruct_300m.adm_background_prompt");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1E201C(&unk_1F011E338);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.ADMPeopleGrounding.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_300m.adm_people_grounding");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E2430DC();
  sub_18E223C68();
  sub_18E1E201C(&unk_1F011E368);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

uint64_t sub_18E3345CC()
{
  sub_18E1D5DF0();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E334624()
{
  sub_18E1E33FC();
  v0(v2);
  return sub_18E44F4CC();
}

void Catalog.LLM.Adapter.ADMPromptRewriting.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_300m.adm_prompt_rewriting");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E2430DC();
  sub_18E223C68();
  sub_18E1E201C(&unk_1F011E398);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.FactualConsistencyClassifier.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2204EC("com.apple.fm.language.instruct_300m.factual_consistency_classifier");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1E201C(&unk_1F011E3C8);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MessagesActionSmall.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.fm.language.instruct_300m.messages_action");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1E201C(&unk_1F011E3F8);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MessagesReplyWatch.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.fm.language.instruct_300m.messages_reply");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1E201C(&unk_1F011E428);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1CF930(v26, xmmword_18E4B0120);
  v29 = sub_18E1C5854(v27, v28 | 0x302E0000u);
  *(v2 + 352) = sub_18E232F14(v29);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MiscSafety.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D7E90("com.apple.fm.language.instruct_300m.misc_safety");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E2430DC();
  sub_18E223C68();
  sub_18E1E201C(&unk_1F011E458);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MiscSafetyCustomized.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF6C8("com.apple.fm.language.instruct_300m.misc_safety_customized");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1E201C(&unk_1F011E488);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MMGuardSafetyGuardrail.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.fm.language.instruct_300m.mm_guard");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1E201C(&unk_1F011E4B8);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MMSafety.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CAE98("com.apple.fm.language.instruct_300m.mm_safety");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1E3A3C(v25);
  sub_18E1EA008();
  sub_18E1D6298(&unk_1F011E4E8);
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1FED28(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 352) = sub_18E1C6788(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PQAVerification.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3068("com.apple.fm.language.instruct_300m.pqa_verification");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1E201C(&unk_1F011E548);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PrepubescentSafety.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.fm.language.instruct_300m.prepubescent_safety");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E2430DC();
  sub_18E223C68();
  sub_18E1E201C(&unk_1F011E578);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PrepubescentSafetyCustomized.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2204EC("com.apple.fm.language.instruct_300m.prepubescent_safety_customized");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1E201C(&unk_1F011E5A8);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.Safety.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3B30("com.apple.fm.language.instruct_300m.safety");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1E3A3C(v25);
  sub_18E1EA008();
  *(v2 + 56) = &unk_1F011E5D8;
  *(v2 + 64) = v0;
  *(v2 + 72) = v0;
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1FED28(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.StructuralIntegrity.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_300m.structural_integrity");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E2430DC();
  sub_18E223C68();
  sub_18E1E201C(&unk_1F011E638);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.StructuralIntegrityCustomized.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD5B0("com.apple.fm.language.instruct_300m.structural_integrity_customized");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1E201C(&unk_1F011E668);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.TextGuardSafetyGuardrail.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CEA18("com.apple.fm.language.instruct_300m.text_guard");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1E201C(&unk_1F011E698);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.VIContentClassifier.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  sub_18E1E22A0();
  v11 = v10;
  sub_18E1CA2E4("com.apple.fm.language.instruct_300m.vi_content_classifier");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v12 = sub_18E1D0404();
  sub_18E1E3EA0(v12, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v13 = sub_18E36A8EC(v12);
  v14 = sub_18E1CF5E4(v13);
  sub_18E1D8010(v14, v15, v16, v17, v18, v19, v20, v21, v22);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v11 + 24) = sub_18E36A8EC(v9);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v24, v25, v26, v27, v28, v29, v30, v31);
  v32 = sub_18E1D0038();
  sub_18E1CF330(v32, v33);

  sub_18E36A354();
  sub_18E1CA740(v34);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  sub_18E1E201C(&unk_1F011E6C8);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v35 = sub_18E1CF1F8();
  *(v11 + 352) = sub_18E1E2D84(v35, a9);
  sub_18E224118();
}

void Catalog.LLM.Model.AFMTextInstruct3BBase.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v5 = sub_18E36A8EC(v4);
  v6 = sub_18E1CF5E4(v5);
  sub_18E1D8010(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = sub_18E1D0038();
  sub_18E1CF330(v24, v25);

  sub_18E36A354();
  *(v2 + 32) = v26;
  *(v2 + 40) = 1390000;
  *(v2 + 48) = 65792;
  sub_18E1EA008();
  sub_18E1D6298(&unk_1F011E728);
  Catalog.Tokenizer.AFMTextInstructEnglish49k.init()();
  v27 = MEMORY[0x1E69E7CC0];
  *(v2 + 200) = MEMORY[0x1E69E7CC0];
  *(v2 + 208) = v27;
  *(v2 + 216) = 256;
  *(v2 + 224) = &unk_1F011E758;
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v28 = sub_18E1CF518();
  v29 = sub_18E1E87E8(v28, xmmword_18E49D9C0);
  *(v2 + 232) = sub_18E1C5854(v29, v30 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.AnswerSynthesis.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.fm.language.instruct_3b.answer_synthesis");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011E780);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void sub_18E336444()
{
  sub_18E1C575C();
  sub_18E212A78();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v35 = v2[4];
  v36 = v2[3];
  v6 = *(v2 + 7);
  v46[0] = *(v2 + 5);
  v46[1] = v6;
  v47 = *(v2 + 72);
  memcpy(__dst, (v1 + 80), sizeof(__dst));
  v30 = *(v1 + 200);
  v28 = *(v1 + 208);
  v26 = *(v1 + 216);
  v24 = *(v1 + 217);
  v22 = *(v1 + 224);
  v20 = *(v1 + 232);
  v8 = *v0;
  v7 = v0[1];
  v9 = v0[2];
  v10 = v0[3];
  v34 = v0[4];
  v49[0] = sub_18E1D5F0C();
  v49[1] = v11;
  v50 = *(v0 + 72);
  memcpy(v51, v0 + 10, 0x78uLL);
  v29 = v0[25];
  v27 = v0[26];
  v25 = *(v0 + 216);
  v23 = *(v0 + 217);
  v12 = v3 == v8 && v4 == v7;
  v21 = v0[28];
  v19 = v0[29];
  if (v12 || (sub_18E44F3CC()) && (sub_18E28BB7C(v5, v9) & 1) != 0 && (sub_18E28BB7C(v36, v10))
  {
    sub_18E28BDB0();
    if (v13)
    {
      v14 = *(v1 + 56);
      v41[0] = *(v1 + 40);
      v41[1] = v14;
      LOBYTE(v41[2]) = *(v1 + 72);
      v40[0] = sub_18E1D5F0C();
      v40[1] = v15;
      LOBYTE(v40[2]) = *(v0 + 72);
      v16 = static CostProfile.== infix(_:_:)(v41, v40);
      v42[0] = v40[0];
      v42[1] = v40[1];
      v43 = v40[2];
      sub_18E327BB0(v46, v39);
      sub_18E327BB0(v49, v39);
      sub_18E292124(v42);
      v44[0] = v41[0];
      v44[1] = v41[1];
      v45 = v41[2];
      sub_18E292124(v44);
      if (v16)
      {
        memcpy(v39, __dst, sizeof(v39));
        memcpy(__src, v51, sizeof(__src));
        v31(__dst, v37);
        v31(v51, v37);
        v17 = v32(v39, __src);
        memcpy(v40, __src, 0x78uLL);
        v33(v40);
        memcpy(v41, v39, 0x78uLL);
        v33(v41);
        if (v17 & 1) != 0 && (sub_18E290008(v30, v29))
        {
          sub_18E290AD4();
          if ((v18 & 1) != 0 && v26 == v25)
          {
            sub_18E240940();
            if (v12 && sub_18E290BF0(v22, v21))
            {
              sub_18E290C28();
            }
          }
        }
      }
    }
  }

  sub_18E1C5544();
}

void Catalog.LLM.Adapter.FullPayloadCorrection.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E122C("com.apple.fm.language.instruct_3b.asr_fullpayloadcorrection");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011E7B0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.AutoTagger.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CAE98("com.apple.fm.language.instruct_3b.auto_tagger");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011E7E0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  v27 = sub_18E1CF930(v26, xmmword_18E49DA90);
  *(v2 + 352) = sub_18E1C2A1C(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.AutonamingMessages.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.fm.language.instruct_3b.autonaming_messages");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011E810);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

uint64_t Catalog.LLM.Adapter.InstructBaseAdapter.executionContexts.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void Catalog.LLM.Adapter.InstructBaseAdapter.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CEA18("com.apple.fm.language.instruct_3b.base_adapter");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1E3A3C(v25);
  sub_18E1EA008();
  sub_18E1D6298(&unk_1F011E840);
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1FED28(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.BulletsTransform.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.fm.language.instruct_3b.bullets_transform");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011E8A0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.ConciseTone.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CEA18("com.apple.fm.language.instruct_3b.concise_tone");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011E8D0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.ContextAwareness.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.fm.language.instruct_3b.context_awareness");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011E900);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.ContextProgram.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.fm.language.instruct_3b.context_program");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011E930);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.DescribeYourEdit.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3068("com.apple.fm.language.instruct_3b.describe_your_edit");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011E960);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.FitnessSummary.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.fm.language.instruct_3b.fitness_summary");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011E990);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}