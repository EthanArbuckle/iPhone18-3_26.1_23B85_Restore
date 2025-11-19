uint64_t sub_24A757884(uint64_t a1)
{
  v33 = type metadata accessor for FMReverseGeocodingRequest();
  v31 = *(v33 - 8);
  v2 = *(v31 + 64);
  v3 = MEMORY[0x28223BE20](v33);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v31 - v6);
  v8 = *(a1 + 16);
  if (!v8)
  {
    v11 = MEMORY[0x277D84F98];
LABEL_19:
    if (*(v34 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache))
    {
      sub_24A75D810(v11);
    }
  }

  v32 = OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_preferredLocale;
  v9 = v8 - 1;
  v10 = (a1 + 72);
  v11 = MEMORY[0x277D84F98];
  while (1)
  {
    memcpy(v37, v10 - 40, sizeof(v37));
    memcpy(v38, v10, 0x120uLL);
    if (sub_24A6921A8(v38) == 1)
    {
      goto LABEL_12;
    }

    v12 = v37[3];
    v14 = v37[0];
    v13 = v37[1];
    v15 = v33;
    sub_24A67E964(v34 + v32, v7 + *(v33 + 24), &qword_27EF5E930, &unk_24A8343F0);
    *v7 = v14;
    v7[1] = v13;
    *(v7 + *(v15 + 32)) = 0;
    *(v7 + *(v15 + 28)) = 0;
    v7[2] = v12;
    sub_24A68FE04(v7, v5, type metadata accessor for FMReverseGeocodingRequest);
    sub_24A6CC988(v37, v36);
    sub_24A67E964(&v37[5], v36, &unk_27EF5E0D0, &qword_24A8319E0);

    v16 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v11;
    v19 = sub_24A77EE94(v5);
    v20 = v11[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v11[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v18)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_24A7867F8();
        if (v23)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_24A781C58(v22, isUniquelyReferenced_nonNull_native);
      v24 = sub_24A77EE94(v5);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_24;
      }

      v19 = v24;
      if (v23)
      {
LABEL_11:
        v11 = v35;
        v26 = (v35[7] + 288 * v19);
        memcpy(v36, v26, 0x120uLL);
        memmove(v26, &v37[5], 0x120uLL);
        sub_24A6CD854(v36);
        sub_24A6CC294(v37);
        sub_24A69004C(v5, type metadata accessor for FMReverseGeocodingRequest);
        sub_24A69004C(v7, type metadata accessor for FMReverseGeocodingRequest);
LABEL_12:
        if (!v9)
        {
          goto LABEL_19;
        }

        goto LABEL_13;
      }
    }

    v11 = v35;
    memcpy(v36, &v37[5], 0x120uLL);
    v35[(v19 >> 6) + 8] |= 1 << v19;
    sub_24A68FE04(v5, v11[6] + *(v31 + 72) * v19, type metadata accessor for FMReverseGeocodingRequest);
    memcpy((v11[7] + 288 * v19), v36, 0x120uLL);
    sub_24A6CC294(v37);
    sub_24A69004C(v5, type metadata accessor for FMReverseGeocodingRequest);
    sub_24A69004C(v7, type metadata accessor for FMReverseGeocodingRequest);
    v27 = v11[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_23;
    }

    v11[2] = v29;
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_13:
    --v9;
    v10 += 352;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_24A82DC44();
  __break(1u);
  return result;
}

size_t sub_24A757C70(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for FMIPItemGroup();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v30 - v9);
  v11 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v30 - v16);
  v18 = v1[36];
  v33 = 0;
  v34 = 0;
  v32 = v18;
  swift_bridgeObjectRetain_n();
  swift_beginAccess();
  while (1)
  {
    sub_24A7547C4(v15);
    sub_24A67E8FC(v15, v17, &qword_27EF5E118, &qword_24A837760);
    v19 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
    if ((*(*(v19 - 8) + 48))(v17, 1, v19) == 1)
    {
      goto LABEL_9;
    }

    v20 = *v17;
    sub_24A68D628(v17 + *(v19 + 48), v8, type metadata accessor for FMIPItemGroup);
    v21 = v2[35];

    FMIPItemGroup.init(itemGroup:items:)(v8, v21, v10);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = sub_24A766CC0(v18);
      v18 = result;
      if ((v20 & 0x8000000000000000) != 0)
      {
LABEL_8:
        __break(1u);
LABEL_9:

        v23 = v2[36];
        v2[36] = v18;

        v24 = sub_24A758EF8(v31);
        v25 = sub_24A7685B4(v24, v24);

        v26 = v2[24];

        v27 = sub_24A7690FC(v25, v26);

        v28 = sub_24A7580CC(v27);

        v29 = sub_24A7597A0(v28);

        return v29;
      }
    }

    if (v20 >= v18[2])
    {
      break;
    }

    sub_24A76F3A8(v10, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, type metadata accessor for FMIPItemGroup);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A757FAC(uint64_t a1, int a2)
{
  swift_beginAccess();
  v4 = *(a1 + 280);

  v5 = sub_24A76F848(a2, v4);

  if ((sub_24A75633C(v5, 0, 0) & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_24A69BFF8(a1);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v6 = *(a1 + 288);

  v7 = sub_24A7705F0(a2 & 1, v6);

  if ((sub_24A6ACD48(v7) & 1) == 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_24A7529CC(a1);

  return swift_unknownObjectRelease();
}

void *sub_24A7580CC(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v94 = v90 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = v90 - v7;
  v8 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = v90 - v10;
  v11 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v114 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = v90 - v15;
  v16 = sub_24A6BBA94(&qword_27EF5E0E8, &unk_24A837740);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v109 = (v90 - v18);
  v108 = type metadata accessor for FMReverseGeocodingRequest();
  v19 = *(v108 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v108);
  v97 = v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for FMIPDevice();
  v101 = *(v107 - 8);
  v22 = *(v101 + 64);
  v23 = MEMORY[0x28223BE20](v107);
  v91 = v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v95 = v90 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v90 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v90 - v30;
  v32 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v99 = (v90 - v35);
  v36 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = (v90 - v41);
  v43 = *(a1 + 16);
  v119 = (v33 + 48);
  v120 = (v33 + 56);
  v44 = v31;
  v117 = v29;
  v45 = v29 + 264;
  v46 = v98;
  v106 = v45;
  v116 = OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache;
  v90[6] = 0x800000024A843AE0;
  v90[7] = 0x800000024A843B00;
  v90[4] = 0x800000024A843A70;
  v90[5] = 0x800000024A843AB0;
  v90[2] = 0x800000024A843A30;
  v90[3] = 0x800000024A843A50;
  v90[1] = 0x800000024A8439F0;
  v104 = (v19 + 48);
  v105 = (v19 + 56);

  v48 = 0;
  v103 = 0;
  v100 = result;
  v96 = result;
  v115 = v40;
  v121 = v42;
  v111 = v32;
  v112 = v31;
  v110 = v43;
  v49 = v43 == 0;
  if (!v43)
  {
    goto LABEL_5;
  }

LABEL_2:
  if (v49)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  v50 = v48 + 1;
  if (__OFADD__(v48, 1))
  {
    goto LABEL_27;
  }

  v51 = v99;
  v52 = v100 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v48;
  v53 = *(v32 + 48);
  *v99 = v48;
  sub_24A68FE04(v52, v51 + v53, type metadata accessor for FMIPDevice);
  sub_24A67E8FC(v51, v40, &unk_27EF5E0C0, &unk_24A837180);
  v54 = 0;
  v122 = v50;
  v42 = v121;
  while (1)
  {
    (*v120)(v40, v54, 1, v32);
    sub_24A67E8FC(v40, v42, &qword_27EF5DF70, &unk_24A837730);
    if ((*v119)(v42, 1, v32) == 1)
    {
      return v96;
    }

    v55 = *v42;
    sub_24A68D628(v42 + *(v32 + 48), v44, type metadata accessor for FMIPDevice);
    v56 = *(v46 + v116);
    if (!v56)
    {
      goto LABEL_17;
    }

    v57 = v46;
    v102 = v55;
    v58 = v44;
    v59 = v117;
    sub_24A68FE04(v58, v117, type metadata accessor for FMIPDevice);
    v60 = v118;
    sub_24A67E964(v56 + qword_27EF78F28, v118, &qword_27EF5E930, &unk_24A8343F0);
    v129[0] = *(v59 + 256);
    *&v129[1] = *v106;
    v128[0] = *(v59 + 280);
    *&v128[1] = *(v59 + 288);
    v61 = (*(v59 + 216) >> 5) & 1;
    v62 = *(v107 + 128);
    v63 = v129[1];
    v64 = v128[1];
    v65 = v63;
    sub_24A7DC368(v129, v128, v61, v59 + v62, v130);

    v66 = *(&v130[0] + 1);
    if (*(&v130[0] + 1))
    {
      v67 = BYTE3(v130[0]);
      v68 = *(v59 + 8);
      *&v113 = *v59;
      sub_24A67E964(v60, v114, &qword_27EF5E930, &unk_24A8343F0);
      v69 = 1;
      switch(v67)
      {
        case 6:
          break;
        default:
          v69 = sub_24A82DC04();
          break;
      }

      sub_24A67F378(v118, &qword_27EF5E930, &unk_24A8343F0);
      sub_24A69004C(v117, type metadata accessor for FMIPDevice);
      v74 = v108;
      v73 = v109;
      *v109 = v113;
      v73[1] = v68;
      v71 = v73;
      *(v73 + v74[8]) = 0;
      v72 = v74;
      *(v73 + v74[7]) = v69 & 1;
      v73[2] = v66;
      sub_24A67E8FC(v114, v73 + v74[6], &qword_27EF5E930, &unk_24A8343F0);
      v70 = 0;
      v46 = v98;
    }

    else
    {
      sub_24A67F378(v60, &qword_27EF5E930, &unk_24A8343F0);
      sub_24A69004C(v59, type metadata accessor for FMIPDevice);
      v70 = 1;
      v72 = v108;
      v71 = v109;
      v46 = v57;
    }

    v40 = v115;
    (*v105)(v71, v70, 1, v72);
    if ((*v104)(v71, 1, v72) == 1)
    {
      sub_24A67F378(v71, &qword_27EF5E0E8, &unk_24A837740);
      sub_24A68808C(v130);
      memcpy(v131, v130, sizeof(v131));
    }

    else
    {
      v75 = v97;
      v76 = sub_24A68D628(v71, v97, type metadata accessor for FMReverseGeocodingRequest);
      v77 = *(v56 + qword_27EF5EFD0);
      MEMORY[0x28223BE20](v76);
      sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
      v78 = v103;
      sub_24A82D574();
      v103 = v78;
      v40 = v115;
      sub_24A69004C(v75, type metadata accessor for FMReverseGeocodingRequest);
    }

    v32 = v111;
    v44 = v112;
    v43 = v110;
    memcpy(v129, v131, sizeof(v129));
    memcpy(v130, v131, sizeof(v130));
    v79 = sub_24A6921A8(v130);
    v42 = v121;
    if (v79 != 1)
    {
      v80 = v91;
      sub_24A68FE04(v44, v91, type metadata accessor for FMIPDevice);
      v81 = *(v44 + 248);
      memcpy(v128, v129, sizeof(v128));
      v126 = *(v44 + 280);
      v113 = *(v44 + 288);
      v127 = v113;
      memset(v125, 0, sizeof(v125));
      v82 = type metadata accessor for FMIPItemGroup();
      memset(v124, 0, sizeof(v124));
      v83 = v92;
      (*(*(v82 - 8) + 56))(v92, 1, 1, v82);
      v123 = 7;
      v84 = type metadata accessor for FMIPDeviceConnectedState(0);
      v85 = v93;
      (*(*(v84 - 8) + 56))(v93, 1, 1, v84);
      v86 = type metadata accessor for FMIPDeviceLostModeMetadata();
      v87 = v94;
      (*(*(v86 - 8) + 56))(v94, 1, 1, v86);
      v88 = v113;

      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v80, v81, v128, &v126, v125, v124, 2, v83, v95, 2u, 2, &v123, v85, v87);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_24A766CD4(v96);
      }

      v89 = v102;
      v44 = v112;
      result = sub_24A69004C(v112, type metadata accessor for FMIPDevice);
      v43 = v110;
      v32 = v111;
      v42 = v121;
      if ((v89 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      if (v89 >= v96[2])
      {
        goto LABEL_29;
      }

      result = sub_24A76F3A8(v95, v96 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v89, type metadata accessor for FMIPDevice);
    }

    else
    {
LABEL_17:
      result = sub_24A69004C(v44, type metadata accessor for FMIPDevice);
    }

    v48 = v122;
    v49 = v122 >= v43;
    if (v122 != v43)
    {
      goto LABEL_2;
    }

LABEL_5:
    v54 = 1;
    v122 = v43;
  }
}

uint64_t sub_24A758EF8(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = v63 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = v63 - v7;
  v8 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = v63 - v10;
  v65 = type metadata accessor for FMIPItemGroup();
  v11 = *(v65 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v65);
  v64 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = v63 - v15;
  v16 = type metadata accessor for FMIPDevice();
  v79 = *(v16 - 8);
  v17 = *(v79 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v70 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v69 = v63 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v63 - v22;
  v24 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v77 = (v63 - v27);
  v28 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = (v63 - v33);
  v80 = *(a1 + 16);
  v35 = (v25 + 56);
  v36 = (v25 + 48);
  v72 = v11;
  v63[1] = v11 + 56;

  v38 = 0;
  v75 = result;
  v76 = 0;
  v78 = result;
  v39 = v80;
  while (1)
  {
    if (v38 == v39)
    {
      v41 = 1;
      v38 = v39;
      goto LABEL_9;
    }

    if (v38 >= v39)
    {
      break;
    }

    if (__OFADD__(v38, 1))
    {
      goto LABEL_21;
    }

    v42 = v77;
    v43 = v78 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v38;
    v44 = *(v24 + 48);
    *v77 = v38;
    sub_24A68FE04(v43, v42 + v44, type metadata accessor for FMIPDevice);
    v45 = v42;
    v39 = v80;
    sub_24A67E8FC(v45, v32, &unk_27EF5E0C0, &unk_24A837180);
    v41 = 0;
    ++v38;
LABEL_9:
    (*v35)(v32, v41, 1, v24);
    sub_24A67E8FC(v32, v34, &qword_27EF5DF70, &unk_24A837730);
    if ((*v36)(v34, 1, v24) == 1)
    {
      return v75;
    }

    v81 = *v34;
    sub_24A68D628(v34 + *(v24 + 48), v23, type metadata accessor for FMIPDevice);
    v40 = *(v23 + 4);
    if (v40 == 0x72656E776FLL && *(v23 + 5) == 0xE500000000000000 || (v40 = sub_24A82DC04(), (v40 & 1) != 0))
    {
      v74 = v63;
      v46 = *(v68 + 288);
      MEMORY[0x28223BE20](v40);
      v62 = v23;

      v47 = v46;
      v48 = v76;
      v49 = sub_24A754538(sub_24A76EE14, &v61, v47);
      v76 = v48;
      if (*(v49 + 16))
      {
        v50 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v74 = type metadata accessor for FMIPItemGroup;
        v51 = v64;
        sub_24A68FE04(v49 + v50, v64, type metadata accessor for FMIPItemGroup);

        v52 = v51;
        v53 = v71;
        sub_24A68D628(v52, v71, type metadata accessor for FMIPItemGroup);
        sub_24A68FE04(v23, v70, type metadata accessor for FMIPDevice);
        sub_24A68808C(v87);
        memcpy(v86, v87, sizeof(v86));
        memset(v85, 0, sizeof(v85));
        memset(v84, 0, sizeof(v84));
        memset(v83, 0, sizeof(v83));
        v54 = v53;
        v55 = v73;
        sub_24A68FE04(v54, v73, v74);
        (*(v72 + 56))(v55, 0, 1, v65);
        v82 = 7;
        v56 = type metadata accessor for FMIPDeviceConnectedState(0);
        v57 = v66;
        (*(*(v56 - 8) + 56))(v66, 1, 1, v56);
        v58 = type metadata accessor for FMIPDeviceLostModeMetadata();
        v59 = v67;
        (*(*(v58 - 8) + 56))(v67, 1, 1, v58);
        FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v70, 0, v86, v85, v84, v83, 2, v73, v69, 2u, 2, &v82, v57, v59);
        v60 = v75;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_24A766CD4(v60);
        }

        v39 = v80;
        result = sub_24A69004C(v71, type metadata accessor for FMIPItemGroup);
        if ((v81 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v81 >= *(v75 + 16))
        {
          goto LABEL_23;
        }

        sub_24A76F3A8(v69, v75 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v81, type metadata accessor for FMIPDevice);
      }

      else
      {

        v39 = v80;
      }
    }

    result = sub_24A69004C(v23, type metadata accessor for FMIPDevice);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24A759738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (!v2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 16) && v2 == *(a1 + 16))
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04() & 1;
  }
}

uint64_t sub_24A7597F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v175 = a3;
  v184 = a2;
  v4 = type metadata accessor for FMIPDevice();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v173 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v187 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v185 = &v171 - v12;
  v189 = sub_24A82CAA4();
  v13 = *(v189 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v189);
  v182 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v176 = &v171 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v174 = &v171 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v177 = &v171 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v179 = &v171 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v180 = (&v171 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v188 = &v171 - v28;
  MEMORY[0x28223BE20](v27);
  v181 = &v171 - v29;
  v30 = type metadata accessor for FMIPItem();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v34 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v171 - v37;
  sub_24A67E964(a1 + *(v5 + 136), &v171 - v37, &unk_27EF5E0B0, &qword_24A8338B0);
  v39 = type metadata accessor for FMIPItemGroup();
  v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
  v183 = v13;
  if (v40 == 1)
  {
    sub_24A67F378(v38, &unk_27EF5E0B0, &qword_24A8338B0);
    if (!*(a1 + 24))
    {
      return sub_24A68FE04(a1, v175, type metadata accessor for FMIPDevice);
    }

    v41 = *(a1 + 16);
    v42 = v187;
    sub_24A82CA44();
    v43 = v189;
    if ((*(v13 + 48))(v42, 1, v189) == 1)
    {
      sub_24A67F378(v42, &qword_27EF5D020, &qword_24A830E40);
      return sub_24A68FE04(a1, v175, type metadata accessor for FMIPDevice);
    }

    v172 = a1;
    v71 = *(v13 + 32);
    v72 = v180;
    v71(v180, v42, v43);
    sub_24A6BBA94(&qword_27EF5E110, &unk_24A835280);
    v73 = *(v13 + 72);
    v74 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_24A8327A0;
    v76 = (v75 + 16);
    v186 = v75;
    v71((v75 + v74), v72, v43);
    v77 = *v76;
    v180 = v76;
    v181 = v77;
    if (!v77)
    {
      v181 = 0;
      v80 = MEMORY[0x277D84F90];
      LODWORD(v185) = 1;
      v70 = v184;
      goto LABEL_43;
    }

    v70 = v184;
  }

  else
  {
    v172 = a1;
    v44 = *(v38 + 5);

    sub_24A69004C(v38, type metadata accessor for FMIPItemGroup);
    v45 = v44[2];
    if (v45)
    {
      v191[0] = MEMORY[0x277D84F90];
      sub_24A6FC900(0, v45, 0);
      v46 = v191[0];
      v47 = v44 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v48 = *(v31 + 72);
      v186 = v44;
      v187 = v48;
      do
      {
        sub_24A68FE04(v47, v34, type metadata accessor for FMIPItem);
        v50 = *(v34 + 44);
        v49 = *(v34 + 45);

        sub_24A69004C(v34, type metadata accessor for FMIPItem);
        v191[0] = v46;
        v52 = v46[2];
        v51 = v46[3];
        if (v52 >= v51 >> 1)
        {
          sub_24A6FC900((v51 > 1), v52 + 1, 1);
          v46 = v191[0];
        }

        v46[2] = v52 + 1;
        v53 = &v46[2 * v52];
        v53[4] = v50;
        v53[5] = v49;
        v47 += v187;
        --v45;
      }

      while (v45);

      v13 = v183;
    }

    else
    {

      v46 = MEMORY[0x277D84F90];
    }

    v55 = v46[2];
    v56 = v185;
    if (v55)
    {
      v57 = 0;
      v58 = v13;
      v59 = (v13 + 48);
      v187 = v58 + 32;
      v60 = v46 + 5;
      v186 = MEMORY[0x277D84F90];
      v180 = v55;
      v178 = v59;
      while (v57 < v46[2])
      {
        v61 = *(v60 - 1);
        v62 = *v60;

        sub_24A82CA44();

        v63 = v189;
        if ((*v59)(v56, 1, v189) == 1)
        {
          result = sub_24A67F378(v56, &qword_27EF5D020, &qword_24A830E40);
        }

        else
        {
          v64 = *v187;
          v65 = v181;
          (*v187)(v181, v56, v63);
          (v64)(v188, v65, v63);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v186 = sub_24A78029C(0, *(v186 + 16) + 1, 1, v186);
          }

          v67 = *(v186 + 16);
          v66 = *(v186 + 24);
          v59 = v178;
          if (v67 >= v66 >> 1)
          {
            v186 = sub_24A78029C(v66 > 1, v67 + 1, 1, v186);
          }

          v68 = v186;
          *(v186 + 16) = v67 + 1;
          result = (v64)(v68 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v67, v188, v189);
          v56 = v185;
          v55 = v180;
        }

        v57 = (v57 + 1);
        v60 += 2;
        if (v55 == v57)
        {
          goto LABEL_24;
        }
      }

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
      return result;
    }

    v186 = MEMORY[0x277D84F90];
LABEL_24:

    v69 = *(v186 + 16);
    v180 = (v186 + 16);
    v181 = v69;
    if (!v69)
    {

      a1 = v172;
      return sub_24A68FE04(a1, v175, type metadata accessor for FMIPDevice);
    }

    v13 = v183;
    v70 = v184;
    v43 = v189;
  }

  v187 = *(v13 + 16);
  v188 = (v13 + 16);
  v78 = v186 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v185 = *(v13 + 72);
  v79 = (v13 + 8);
  v80 = MEMORY[0x277D84F90];
  v81 = v181;
  v82 = v179;
  (v187)(v179, v78, v43);
  while (1)
  {
    v83 = v70[32];
    if (!*(v83 + 16))
    {
      goto LABEL_32;
    }

    v84 = v70[32];

    v85 = sub_24A77EDF8(v82);
    if ((v86 & 1) == 0)
    {

LABEL_32:
      (*v79)(v82, v43);
      goto LABEL_33;
    }

    v87 = *(*(v83 + 56) + v85);
    (*v79)(v82, v43);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_24A7806BC(0, *(v80 + 2) + 1, 1, v80);
    }

    v89 = *(v80 + 2);
    v88 = *(v80 + 3);
    if (v89 >= v88 >> 1)
    {
      v80 = sub_24A7806BC((v88 > 1), v89 + 1, 1, v80);
    }

    *(v80 + 2) = v89 + 1;
    v80[v89 + 32] = v87;
    v70 = v184;
    v43 = v189;
    v82 = v179;
LABEL_33:
    v78 += v185;
    if (!--v81)
    {
      break;
    }

    (v187)(v82, v78, v43);
  }

  LODWORD(v185) = 0;
  v13 = v183;
LABEL_43:
  v90 = v186;
  if (*(v80 + 2))
  {
    LODWORD(v178) = v80[32];
  }

  else
  {
    LODWORD(v178) = 0;
  }

  v91 = 0;
  v187 = v13 + 8;
  v188 = (v13 + 16);
  v92 = v174;
  do
  {
    v93 = v91;
    if (v181 == v91)
    {
      break;
    }

    if (v91 >= *v180)
    {
      goto LABEL_133;
    }

    v94 = v177;
    (*(v13 + 16))(v177, v90 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v91, v43);
    v95 = v70[33];
    if (!*(v95 + 16))
    {
      goto LABEL_54;
    }

    v96 = v70[33];

    v97 = sub_24A77EDF8(v94);
    if ((v98 & 1) == 0)
    {

LABEL_54:
      result = (*v187)(v94, v43);
      break;
    }

    v99 = v94;
    v100 = *(*(v95 + 56) + v97);
    (*v187)(v99, v43);

    v91 = v93 + 1;
  }

  while ((v100 & 1) != 0);
  v101 = 0;
  do
  {
    v102 = v101;
    if (v181 == v101)
    {
      break;
    }

    if (v101 >= *v180)
    {
      goto LABEL_134;
    }

    (*(v13 + 16))(v92, v186 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v101, v43);
    v103 = v70[34];
    if (!*(v103 + 16))
    {
      goto LABEL_63;
    }

    v104 = v70[34];

    v105 = sub_24A77EDF8(v92);
    if ((v106 & 1) == 0)
    {

LABEL_63:
      (*v187)(v92, v43);
      break;
    }

    v107 = *(*(v103 + 56) + v105);
    (*v187)(v92, v43);

    v101 = v102 + 1;
  }

  while ((v107 & 1) != 0);
  v177 = v102;
  v180 = v93;
  if ((v185 & 1) == 0)
  {
    v136 = (v186 + ((*(v13 + 80) + 32) & ~*(v13 + 80)));
    v137 = *(v13 + 72);
    v138 = *(v13 + 16);
    v108 = MEMORY[0x277D84F90];
    v139 = v181;
    v140 = v176;
    v185 = v138;
    v138(v176, v136, v189);
    while (1)
    {
      v141 = v184[31];
      if (!*(v141 + 16))
      {
        goto LABEL_92;
      }

      v142 = v184[31];

      v143 = sub_24A77EDF8(v140);
      if ((v144 & 1) == 0)
      {
        break;
      }

      v145 = *(*(v141 + 56) + 8 * v143);
      v146 = *v187;

      v146(v140, v189);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_24A780698(0, v108[2] + 1, 1, v108);
      }

      v148 = v108[2];
      v147 = v108[3];
      if (v148 >= v147 >> 1)
      {
        v108 = sub_24A780698((v147 > 1), v148 + 1, 1, v108);
      }

      v138 = v185;
      v108[2] = v148 + 1;
      v108[v148 + 4] = v145;
      v140 = v176;
LABEL_93:
      v136 += v137;
      if (!--v139)
      {
        goto LABEL_66;
      }

      v138(v140, v136, v189);
    }

LABEL_92:
    (*v187)(v140, v189);
    goto LABEL_93;
  }

  v108 = MEMORY[0x277D84F90];
LABEL_66:

  v109 = v108[2];
  v110 = MEMORY[0x277D84F90];
  if (v109)
  {
    v111 = 0;
    v186 = (v108 + 4);
    do
    {
      if (v111 >= v108[2])
      {
        goto LABEL_129;
      }

      v112 = *(v186 + 8 * v111);
      v113 = *(v112 + 16);
      v114 = *(v110 + 2);
      v115 = v114 + v113;
      if (__OFADD__(v114, v113))
      {
        goto LABEL_130;
      }

      v116 = *(v186 + 8 * v111);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v115 <= *(v110 + 3) >> 1)
      {
        if (!*(v112 + 16))
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v114 <= v115)
        {
          v117 = v114 + v113;
        }

        else
        {
          v117 = v114;
        }

        result = sub_24A78029C(result, v117, 1, v110);
        v110 = result;
        if (!*(v112 + 16))
        {
LABEL_68:

          if (v113)
          {
            goto LABEL_131;
          }

          goto LABEL_69;
        }
      }

      if ((*(v110 + 3) >> 1) - *(v110 + 2) < v113)
      {
        goto LABEL_132;
      }

      v118 = (*(v183 + 80) + 32) & ~*(v183 + 80);
      v119 = *(v183 + 72);
      swift_arrayInitWithCopy();

      if (v113)
      {
        v120 = *(v110 + 2);
        v121 = __OFADD__(v120, v113);
        v122 = v120 + v113;
        if (v121)
        {
          goto LABEL_135;
        }

        *(v110 + 2) = v122;
      }

LABEL_69:
      ++v111;
    }

    while (v109 != v111);
  }

  v179 = v110;

  v123 = *(v179 + 2);
  if (v123)
  {
    v191[0] = MEMORY[0x277D84F90];
    v124 = v179;
    sub_24A6FC900(0, v123, 0);
    v125 = v191[0];
    v126 = &v124[(*(v183 + 80) + 32) & ~*(v183 + 80)];
    v127 = *(v183 + 72);
    v185 = *(v183 + 16);
    v186 = v127;
    do
    {
      v128 = v182;
      v129 = v189;
      (v185)(v182, v126, v189);
      v130 = sub_24A82CA54();
      v132 = v131;
      (*v187)(v128, v129);
      v191[0] = v125;
      v134 = *(v125 + 16);
      v133 = *(v125 + 24);
      if (v134 >= v133 >> 1)
      {
        sub_24A6FC900((v133 > 1), v134 + 1, 1);
        v125 = v191[0];
      }

      *(v125 + 16) = v134 + 1;
      v135 = v125 + 16 * v134;
      *(v135 + 32) = v130;
      *(v135 + 40) = v132;
      v126 += v186;
      --v123;
    }

    while (v123);
  }

  else
  {

    v125 = MEMORY[0x277D84F90];
  }

  v149 = sub_24A714404(v125);

  v150 = v184[30];
  v151 = *(v150 + 16);

  v152 = v180;
  v189 = v151;
  if (v151)
  {
    v153 = 0;
    v188 = (v150 + 32);
    v154 = v149 + 56;
    v155 = MEMORY[0x277D84F90];
    v187 = v150;
    while (1)
    {
      while (1)
      {
        if (v153 >= *(v150 + 16))
        {
          goto LABEL_128;
        }

        result = memcpy(v191, &v188[352 * v153++], 0x160uLL);
        if (*(v149 + 16))
        {
          break;
        }

LABEL_106:
        if (v153 == v189)
        {
          goto LABEL_125;
        }
      }

      v156 = v191[0];
      v157 = v191[1];
      v158 = *(v149 + 40);
      sub_24A82DCC4();
      sub_24A6CC988(v191, &v190);

      sub_24A82D094();
      v159 = sub_24A82DD24();
      v160 = -1 << *(v149 + 32);
      v161 = v159 & ~v160;
      if (((*(v154 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) == 0)
      {
LABEL_105:
        sub_24A6CC294(v191);

        v152 = v180;
        v150 = v187;
        goto LABEL_106;
      }

      v162 = ~v160;
      while (1)
      {
        v163 = (*(v149 + 48) + 16 * v161);
        v164 = *v163 == v156 && v163[1] == v157;
        if (v164 || (sub_24A82DC04() & 1) != 0)
        {
          break;
        }

        v161 = (v161 + 1) & v162;
        if (((*(v154 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192 = v155;
      v152 = v180;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24A6FCA0C(0, *(v155 + 16) + 1, 1);
        v155 = v192;
      }

      v167 = *(v155 + 16);
      v166 = *(v155 + 24);
      if (v167 >= v166 >> 1)
      {
        sub_24A6FCA0C((v166 > 1), v167 + 1, 1);
        v155 = v192;
      }

      *(v155 + 16) = v167 + 1;
      result = memcpy((v155 + 352 * v167 + 32), v191, 0x160uLL);
      v150 = v187;
      if (v153 == v189)
      {
        goto LABEL_125;
      }
    }
  }

  v155 = MEMORY[0x277D84F90];
LABEL_125:
  v168 = v181 == v177;
  v169 = v181 == v152;

  v170 = v173;
  sub_24A68FE04(v172, v173, type metadata accessor for FMIPDevice);
  LOBYTE(v191[0]) = v178;
  return FMIPDevice.init(device:separationMonitoringState:separationSupported:canBeLeashedByHost:safeLocations:)(v170, v191, v169, v168, v155, v175);
}

uint64_t sub_24A75A9C0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v24 = a4;
  v25 = a5;
  v7 = v5;
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v26 = MEMORY[0x277D84F90];
    v23 = a3;
    a3(0, v14, 0);
    v15 = v26;
    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v17 = a1 + v16;
    v18 = *(v10 + 72);
    do
    {
      v24(v17, v7);
      v26 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        v23(v19 > 1, v20 + 1, 1);
        v15 = v26;
      }

      *(v15 + 16) = v20 + 1;
      sub_24A68D628(v13, v15 + v16 + v20 * v18, v25);
      v17 += v18;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_24A75AB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v6 = type metadata accessor for FMIPItem();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v57 - v12;
  v14 = sub_24A82CAA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v69 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v57 - v19;
  v21 = *(a1 + 352);
  v22 = *(a1 + 360);
  sub_24A82CA44();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24A67F378(v13, &qword_27EF5D020, &qword_24A830E40);
    return sub_24A68FE04(a1, v63, type metadata accessor for FMIPItem);
  }

  (*(v15 + 32))(v20, v13, v14);
  v23 = *(a2 + 248);
  if (!*(v23 + 16))
  {
LABEL_12:
    (*(v15 + 8))(v20, v14);
    return sub_24A68FE04(a1, v63, type metadata accessor for FMIPItem);
  }

  v61 = a2;

  v62 = v20;
  v24 = sub_24A77EDF8(v20);
  if ((v25 & 1) == 0)
  {

    v20 = v62;
    goto LABEL_12;
  }

  v68 = v14;
  v59 = v9;
  v60 = a1;
  v70 = v3;
  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = *(v26 + 16);
  v58 = v15;
  if (v27)
  {
    v73[0] = MEMORY[0x277D84F90];
    sub_24A6FC900(0, v27, 0);
    v28 = v73[0];
    v29 = v15 + 16;
    v30 = *(v15 + 16);
    v31 = *(v15 + 80);
    v57[1] = v26;
    v32 = v26 + ((v31 + 32) & ~v31);
    v65 = *(v29 + 56);
    v66 = v30;
    v67 = v29;
    v64 = (v29 - 8);
    do
    {
      v34 = v68;
      v33 = v69;
      (v66)(v69, v32, v68);
      v35 = sub_24A82CA54();
      v37 = v36;
      (*v64)(v33, v34);
      v73[0] = v28;
      v39 = *(v28 + 16);
      v38 = *(v28 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_24A6FC900((v38 > 1), v39 + 1, 1);
        v28 = v73[0];
      }

      *(v28 + 16) = v39 + 1;
      v40 = v28 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v32 += v65;
      --v27;
    }

    while (v27);
    v69 = v28;
  }

  else
  {

    v69 = MEMORY[0x277D84F90];
  }

  v42 = *(v61 + 240);
  v43 = *(v42 + 16);

  v44 = v62;
  if (v43)
  {
    v45 = 0;
    v46 = (v42 + 32);
    v67 = v43;
    v65 = v43 - 1;
    v47 = MEMORY[0x277D84F90];
    v66 = (v42 + 32);
    do
    {
      v48 = &v46[352 * v45];
      v49 = v45;
      while (1)
      {
        if (v49 >= *(v42 + 16))
        {
          __break(1u);
          return result;
        }

        v50 = memcpy(v73, v48, 0x160uLL);
        v45 = v49 + 1;
        v72[0] = v73[0];
        v72[1] = v73[1];
        MEMORY[0x28223BE20](v50);
        v57[-2] = v72;
        sub_24A6CC988(v73, &v71);

        v51 = v70;
        v52 = sub_24A7FD8A8(sub_24A770FC4, &v57[-4], v69);
        v70 = v51;

        if (v52)
        {
          break;
        }

        result = sub_24A6CC294(v73);
        v48 += 352;
        ++v49;
        if (v67 == v45)
        {
          v44 = v62;
          goto LABEL_29;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24A6FCA0C(0, *(v47 + 16) + 1, 1);
        v47 = v74;
      }

      v44 = v62;
      v55 = *(v47 + 16);
      v54 = *(v47 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_24A6FCA0C((v54 > 1), v55 + 1, 1);
        v47 = v74;
      }

      *(v47 + 16) = v55 + 1;
      result = memcpy((v47 + 352 * v55 + 32), v73, 0x160uLL);
      v46 = v66;
    }

    while (v65 != v49);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

LABEL_29:

  v56 = v59;
  sub_24A68FE04(v60, v59, type metadata accessor for FMIPItem);
  FMIPItem.init(item:safeLocations:)(v56, v47, v63);
  return (*(v58 + 8))(v44, v68);
}

void *sub_24A75B108(unint64_t a1)
{
  v2 = sub_24A82CA34();
  v242 = *(v2 - 8);
  v3 = *(v242 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v205 = &v180 - v11;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v12 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v212 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v228 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v180 - v18;
  v20 = sub_24A6BBA94(&qword_27EF5E0E8, &unk_24A837740);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v227 = (&v180 - v22);
  v23 = type metadata accessor for FMReverseGeocodingRequest();
  v230 = *(v23 - 8);
  v24 = *(v230 + 64);
  MEMORY[0x28223BE20](v23);
  v218 = &v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FMIPItem();
  v222 = *(v26 - 1);
  v27 = *(v222 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v229 = &v180 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v215 = (&v180 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v217 = &v180 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v211 = &v180 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v180 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v241 = (&v180 - v40);
  MEMORY[0x28223BE20](v39);
  v239 = &v180 - v41;
  v238 = sub_24A6BBA94(&unk_27EF5E0F0, &unk_24A837170);
  v234 = *(v238 - 8);
  v42 = *(v234 + 64);
  MEMORY[0x28223BE20](v238);
  v220 = (&v180 - v43);
  v44 = sub_24A6BBA94(&qword_27EF5DF68, &unk_24A837750);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v237 = &v180 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v236 = (&v180 - v48);
  v49 = qword_281515DC8;

  if (v49 == -1)
  {
    goto LABEL_2;
  }

LABEL_53:
  swift_once();
LABEL_2:
  v203 = v38;
  v226 = v23;
  v209 = v10;
  v206 = v5;
  v207 = v2;
  v50 = sub_24A82CDC4();
  v51 = sub_24A6797D0(v50, qword_281518F88);

  v232 = v51;
  v52 = sub_24A82CD94();
  v53 = sub_24A82D504();

  v54 = os_log_type_enabled(v52, v53);
  v240 = v19;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    v57 = sub_24A82D224();
    *(v55 + 4) = v57;
    *v56 = v57;
    _os_log_impl(&dword_24A675000, v52, v53, "FMIPDataManager: Appending address to items %@", v55, 0xCu);
    sub_24A67F378(v56, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v56, -1, -1);
    v58 = v55;
    v19 = v240;
    MEMORY[0x24C21E1D0](v58, -1, -1);
  }

  v216 = v26;

  v59 = 0;
  v60 = *(a1 + 16);
  v61 = v234;
  v231 = OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache;
  v234 += 48;
  v235 = (v61 + 56);
  v224 = (v230 + 56);
  v225 = 0;
  v223 = (v230 + 48);
  v23 = v239;
  v197 = (v217 + 392);
  v201 = v215 + 49;
  v202 = (v239 + 392);
  v200 = (v242 + 16);
  v199 = (v242 + 56);
  v198 = (v242 + 48);
  v210 = (v242 + 32);
  *&v62 = 136315138;
  v219 = v62;
  v38 = &unk_24A8343F0;
  *&v62 = 136315394;
  v196 = v62;
  v221 = a1;
  v214 = a1;
  v26 = v241;
  v5 = v237;
  v2 = v238;
  v230 = v60;
  v63 = v60 == 0;
  if (!v60)
  {
LABEL_5:
    v64 = 1;
    v242 = v60;
    goto LABEL_9;
  }

  while (1)
  {
    if (v63)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v65 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_52;
    }

    v66 = v220;
    v67 = v221 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v59;
    v68 = *(v2 + 48);
    *v220 = v59;
    sub_24A68FE04(v67, v66 + v68, type metadata accessor for FMIPItem);
    sub_24A67E8FC(v66, v5, &unk_27EF5E0F0, &unk_24A837170);
    v64 = 0;
    v242 = v65;
LABEL_9:
    (*v235)(v5, v64, 1, v2);
    v69 = v236;
    sub_24A67E8FC(v5, v236, &qword_27EF5DF68, &unk_24A837750);
    if ((*v234)(v69, 1, v2) == 1)
    {
      return v214;
    }

    v70 = *v69;
    sub_24A68D628(v69 + *(v2 + 48), v23, type metadata accessor for FMIPItem);
    v71 = *(v233 + v231);
    if (!v71)
    {
      goto LABEL_22;
    }

    sub_24A68FE04(v23, v26, type metadata accessor for FMIPItem);
    sub_24A67E964(v71 + qword_27EF78F28, v19, &qword_27EF5E930, &unk_24A8343F0);
    v72 = *(v26 + 49);
    if (v72)
    {
      v73 = *(v26 + 48) >> 24;
      v10 = *(v26 + 44);
      v74 = *(v26 + 45);
      sub_24A67E964(v19, v228, &qword_27EF5E930, &unk_24A8343F0);
      LOBYTE(v247[0]) = v73;
      if (FMIPLocationType.rawValue.getter() == 0x656D69746C616572 && v75 == 0xE800000000000000)
      {
        v76 = v70;
        v77 = 1;
      }

      else
      {
        v76 = v70;
        v77 = sub_24A82DC04();
      }

      v81 = v72;

      v38 = &unk_24A8343F0;
      sub_24A67F378(v240, &qword_27EF5E930, &unk_24A8343F0);
      sub_24A69004C(v241, type metadata accessor for FMIPItem);
      v80 = v227;
      v82 = v228;
      *v227 = v10;
      *(v80 + 8) = v74;
      v79 = v226;
      *(v80 + *(v226 + 32)) = 0;
      *(v80 + *(v79 + 28)) = v77 & 1;
      *(v80 + 16) = v81;
      sub_24A67E8FC(v82, v80 + *(v79 + 24), &qword_27EF5E930, &unk_24A8343F0);
      v78 = 0;
      v70 = v76;
    }

    else
    {
      sub_24A67F378(v19, &qword_27EF5E930, &unk_24A8343F0);
      sub_24A69004C(v26, type metadata accessor for FMIPItem);
      v78 = 1;
      v79 = v226;
      v80 = v227;
    }

    (*v224)(v80, v78, 1, v79);
    if ((*v223)(v80, 1, v79) == 1)
    {
      sub_24A67F378(v80, &qword_27EF5E0E8, &unk_24A837740);
      sub_24A68808C(v247);
      memcpy(v248, v247, 0x120uLL);
    }

    else
    {
      v83 = v218;
      v84 = sub_24A68D628(v80, v218, type metadata accessor for FMReverseGeocodingRequest);
      v10 = &v180;
      v85 = *(v71 + qword_27EF5EFD0);
      MEMORY[0x28223BE20](v84);
      *(&v180 - 2) = v71;
      *(&v180 - 1) = v83;
      sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
      v86 = v225;
      sub_24A82D574();
      v225 = v86;
      sub_24A69004C(v83, type metadata accessor for FMReverseGeocodingRequest);
    }

    v23 = v239;
    v26 = v241;
    memcpy(v246, v248, sizeof(v246));
    memcpy(v247, v248, sizeof(v247));
    if (sub_24A6921A8(v247) == 1)
    {
LABEL_22:
      a1 = v229;
      sub_24A68FE04(v23, v229, type metadata accessor for FMIPItem);
      v87 = sub_24A82CD94();
      v88 = sub_24A82D504();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v248[0] = v90;
        *v89 = v219;
        v92 = *(a1 + 352);
        v91 = *(a1 + 360);

        v10 = type metadata accessor for FMIPItem;
        sub_24A69004C(a1, type metadata accessor for FMIPItem);
        v93 = v92;
        v38 = &unk_24A8343F0;
        v26 = v241;
        a1 = sub_24A68761C(v93, v91, v248);

        *(v89 + 4) = a1;
        _os_log_impl(&dword_24A675000, v87, v88, "FMIPDataManager: Item %s has no address", v89, 0xCu);
        sub_24A6876E8(v90);
        v94 = v90;
        v23 = v239;
        MEMORY[0x24C21E1D0](v94, -1, -1);
        MEMORY[0x24C21E1D0](v89, -1, -1);
      }

      else
      {

        sub_24A69004C(a1, type metadata accessor for FMIPItem);
      }

      sub_24A69004C(v23, type metadata accessor for FMIPItem);
      v19 = v240;
      v5 = v237;
      v2 = v238;
      goto LABEL_26;
    }

    v95 = v70;
    v96 = v203;
    sub_24A68FE04(v23, v203, type metadata accessor for FMIPItem);
    memcpy(v245, v246, sizeof(v245));
    sub_24A76ECE4(v245, v244);
    v97 = sub_24A82CD94();
    v98 = sub_24A82D504();
    sub_24A67F378(v246, &unk_27EF5E0D0, &qword_24A8319E0);
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v243 = v100;
      *v99 = v196;
      v101 = *(v96 + 352);
      v102 = *(v96 + 360);

      sub_24A69004C(v96, type metadata accessor for FMIPItem);
      v103 = sub_24A68761C(v101, v102, &v243);

      *(v99 + 4) = v103;
      *(v99 + 12) = 2080;
      memcpy(v244, v247, sizeof(v244));
      v104 = FMIPAddress.debugDescription.getter();
      v106 = sub_24A68761C(v104, v105, &v243);

      *(v99 + 14) = v106;
      v23 = v239;
      _os_log_impl(&dword_24A675000, v97, v98, "FMIPDataManager: Item %s, Address %s", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v100, -1, -1);
      MEMORY[0x24C21E1D0](v99, -1, -1);
    }

    else
    {

      sub_24A69004C(v96, type metadata accessor for FMIPItem);
    }

    v107 = v217;
    sub_24A68FE04(v23, v217, type metadata accessor for FMIPItem);
    swift_storeEnumTagMultiPayload();
    memcpy(v244, v247, sizeof(v244));
    nullsub_1(v244);
    v108 = *v202;
    v109 = *(v23 + 312);
    v110 = *(v23 + 320);
    v111 = *(v107 + v216[19]);
    v112 = v107;
    v113 = *v202;
    v195 = v95;
    v208 = v110;
    if (v113)
    {
      v213 = v108;
      v114 = *(v23 + 384);
    }

    else
    {
      v114 = *(v107 + 384);
      v213 = *v197;
      v115 = v213;
      *&v110 = v208;
    }

    v116 = *(v112 + v216[25]);
    v117 = v110;
    if (v116 == 1)
    {
      v118 = v213;
      v119 = v110;
      v120 = v113;

      v114 = 0;
      v213 = 0u;
    }

    else
    {
      v121 = v113;
      v122 = v117;
    }

    v123 = v215;
    memcpy(v215 + 1, v244, 0x120uLL);
    v124 = v217;
    *(v123 + 296) = *(v217 + 296);
    v123[38] = *(v124 + 304);
    if (!v117)
    {
      v109 = *(v124 + 312);
      v208 = *(v124 + 320);
      v125 = v208;
    }

    v123[39] = v109;
    *(v123 + 20) = v208;
    v126 = *(v124 + 344);
    v123[42] = *(v124 + 336);
    v123[43] = v126;
    v193 = v126;
    v127 = *(v124 + 360);
    v123[44] = *(v124 + 352);
    v123[45] = v127;
    v194 = v127;
    v128 = *(v124 + 376);
    v123[46] = *(v124 + 368);
    v123[47] = v128;
    *&v208 = v128;
    v129 = v216;
    *(v123 + v216[21]) = *(v124 + v216[21]);
    *(v123 + v129[22]) = *(v124 + v129[22]);
    *(v123 + v129[25]) = v116;
    v130 = v213;
    if (!v213)
    {
      v114 = *(v124 + 384);
      v213 = *v197;
      v131 = v213;
      v130 = v213;
    }

    v123[48] = v114;
    *v201 = v130;
    sub_24A67E964(v124 + v129[13], v123 + v129[13], &unk_27EF5E100, &unk_24A839DB0);
    v132 = v129[14];
    v134 = *(v124 + v132);
    v133 = *(v124 + v132 + 8);
    v135 = (v123 + v132);
    *v135 = v134;
    v135[1] = v133;
    v188 = v133;
    v136 = v129[15];
    v138 = *(v124 + v136);
    v137 = *(v124 + v136 + 8);
    v139 = (v123 + v136);
    *v139 = v138;
    v139[1] = v137;
    v187 = v137;
    v140 = v129[16];
    v141 = *(v124 + v140);
    v142 = *(v124 + v140 + 8);
    v143 = *(v124 + v140 + 16);
    v144 = *(v124 + v140 + 24);
    LODWORD(v137) = *(v124 + v140 + 32);
    v145 = v123 + v140;
    *&v213 = v141;
    *v145 = v141;
    *(v145 + 1) = v142;
    v191 = v143;
    v192 = v142;
    *(v145 + 2) = v143;
    *(v145 + 3) = v144;
    v190 = v144;
    v189 = v137;
    v145[32] = v137;
    sub_24A68FE04(v124 + v129[24], v123 + v129[24], type metadata accessor for FMIPProductType);
    v146 = v129[17];
    v147 = (v124 + v146);
    v149 = *(v124 + v146 + 16);
    v148 = *(v124 + v146 + 24);
    v150 = *(v124 + v146 + 32);
    v151 = v123 + v146;
    *v151 = *v147;
    v183 = v149;
    *(v151 + 2) = v149;
    *(v151 + 3) = v148;
    *(v151 + 4) = v150;
    v152 = v129[18];
    v154 = *(v124 + v152);
    v153 = *(v124 + v152 + 8);
    v155 = (v123 + v152);
    *v155 = v154;
    v155[1] = v153;
    v185 = v153;
    v186 = v150;
    *(v123 + v129[19]) = v111;
    v156 = v129[20];
    v158 = *(v124 + v156);
    v157 = *(v124 + v156 + 8);
    v159 = (v123 + v156);
    *v159 = v158;
    v159[1] = v157;
    v182 = v157;
    v160 = v129[23];
    v184 = *(v124 + v160);
    *(v123 + v160) = v184;
    v161 = *v124;
    v162 = *v200;
    v163 = v205;
    v164 = v207;
    (*v200)(v205, *v124 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v207);
    (*v199)(v163, 0, 1, v164);
    v165 = type metadata accessor for FMIPItemUpdateContext(0);
    v166 = *(v165 + 48);
    v167 = *(v165 + 52);
    v168 = swift_allocObject();
    sub_24A68D628(v212, v168 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
    v10 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
    v181 = v168;
    v162((v168 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp), v161 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v164);
    v169 = v163;
    v170 = v209;
    sub_24A67E8FC(v169, v209, &qword_27EF5E0E0, &qword_24A836D90);
    v171 = *v198;
    if ((*v198)(v170, 1, v164) == 1)
    {
      v172 = v10 + v161;
      v173 = v206;
      v162(v206, v172, v164);
      v174 = v171(v170, 1, v164);

      sub_24A76ED78(v213, v192);

      v23 = v239;
      v38 = &unk_24A8343F0;
      a1 = v195;
      if (v174 != 1)
      {
        sub_24A67F378(v209, &qword_27EF5E0E0, &qword_24A836D90);
      }
    }

    else
    {
      v173 = v206;
      (*v210)(v206, v170, v164);

      sub_24A76ED78(v213, v192);

      v23 = v239;
      v38 = &unk_24A8343F0;
      a1 = v195;
    }

    v175 = v181;
    (*v210)((v181 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp), v173, v164);
    v176 = v215;
    v177 = v216;
    *v215 = v175;
    v178 = v217;
    *(v176 + v177[26]) = *(v217 + v177[26]);
    sub_24A68D628(v176, v211, type metadata accessor for FMIPItem);
    sub_24A69004C(v178, type metadata accessor for FMIPItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v214 = sub_24A766CE8(v214);
    }

    v19 = v240;
    v5 = v237;
    v2 = v238;
    result = sub_24A69004C(v23, type metadata accessor for FMIPItem);
    if ((a1 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (a1 >= v214[2])
    {
      goto LABEL_55;
    }

    sub_24A76F3A8(v211, v214 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * a1, type metadata accessor for FMIPItem);
LABEL_26:
    v60 = v230;
    v59 = v242;
    v63 = v242 >= v230;
    if (v242 == v230)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_24A75C5DC(uint64_t a1)
{
  v2 = v1;
  v28 = type metadata accessor for FMReverseGeocodingRequest();
  v4 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v40 = MEMORY[0x277D84F90];
    sub_24A6FCA0C(0, v6, 0);
    v8 = 0;
    v7 = v40;
    v9 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache);
    v10 = (a1 + 32);
    v11 = &qword_24A8319E0;
    v26 = v9;
    do
    {
      memcpy(v39, v10, sizeof(v39));
      memcpy(v36, v10, sizeof(v36));
      if (v9)
      {
        v30 = v8;
        v31 = v7;
        v12 = v39[3];
        v13 = v39[0];
        v14 = v39[1];
        v15 = v11;
        v16 = v27;
        v17 = v28;
        v18 = sub_24A67E964(v9 + qword_27EF78F28, &v27[*(v28 + 24)], &qword_27EF5E930, &unk_24A8343F0);
        v29 = &v25;
        *v16 = v13;
        v16[1] = v14;
        *(v16 + *(v17 + 32)) = 0;
        *(v16 + *(v17 + 28)) = 0;
        v16[2] = v12;
        v19 = *(v9 + qword_27EF5EFD0);
        MEMORY[0x28223BE20](v18);
        *(&v25 - 2) = v9;
        *(&v25 - 1) = v16;
        sub_24A6CC988(v39, v34);
        sub_24A6CC988(v39, v34);

        v20 = v12;
        v21 = v15;
        sub_24A6BBA94(&unk_27EF5E0D0, v15);
        v8 = v30;
        sub_24A82D574();
        sub_24A69004C(v16, type metadata accessor for FMReverseGeocodingRequest);
        memcpy(v32, v35, sizeof(v32));
        memcpy(v33, v35, sizeof(v33));
        if (sub_24A6921A8(v33) != 1)
        {
          sub_24A6CC294(v39);
          memcpy(v38, v32, sizeof(v38));
          v9 = v26;
          v7 = v31;
          v11 = v21;
          goto LABEL_9;
        }

        memcpy(v37, v32, sizeof(v37));
        v9 = v26;
        v7 = v31;
        v11 = v21;
      }

      else
      {
        sub_24A68808C(v38);
        sub_24A6CC988(v39, v34);
        sub_24A6CC988(v39, v34);
        memcpy(v37, v38, sizeof(v37));
      }

      sub_24A67E964(&v39[5], v34, &unk_27EF5E0D0, v11);
      sub_24A6CC294(v39);
      sub_24A67F378(v37, &unk_27EF5E0D0, v11);
      memcpy(v38, &v39[5], sizeof(v38));
LABEL_9:
      memcpy(v35, &v36[40], sizeof(v35));
      sub_24A67F378(v35, &unk_27EF5E0D0, v11);
      memcpy(&v36[40], v38, 0x120uLL);
      memcpy(v34, v36, sizeof(v34));
      v40 = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_24A6FCA0C((v22 > 1), v23 + 1, 1);
        v7 = v40;
      }

      *(v7 + 16) = v23 + 1;
      memcpy((v7 + 352 * v23 + 32), v34, 0x160uLL);
      v10 += 352;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_24A75C9A0(void *a1, const void *a2)
{
  v4 = a1[30];

  v6 = sub_24A75C5DC(v5);

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    __dst[0] = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x24C21CB90](v6, &type metadata for FMIPSafeLocation);
    v14 = sub_24A68761C(v12, v13, __dst);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPDataManager: Geocoding cache callback, appending address to safe locations %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  v15 = sub_24A756164(v6);

  if (v15)
  {
    v16 = a1[30];

    sub_24A756164(v17);
  }

  swift_beginAccess();
  v18 = a1[10];

  v20 = sub_24A7580CC(v19);

  v21 = sub_24A6A30A8(v20, 0);

  if ((v21 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    v22 = a1[10];

    sub_24A69C358(a1, v22);

    swift_unknownObjectRelease();
  }

  sub_24A76ECE4(a2, __dst);
  v23 = sub_24A82CD94();
  v24 = sub_24A82D504();
  sub_24A6CD854(a2);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315138;
    memcpy(__dst, a2, sizeof(__dst));
    v27 = FMIPAddress.debugDescription.getter();
    v29 = sub_24A68761C(v27, v28, &v36);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_24A675000, v23, v24, "FMIPDataManager: Appending address to items %s", v25, 0xCu);
    sub_24A6876E8(v26);
    MEMORY[0x24C21E1D0](v26, -1, -1);
    MEMORY[0x24C21E1D0](v25, -1, -1);
  }

  swift_beginAccess();
  v30 = a1[35];

  v32 = sub_24A75B108(v31);

  v33 = sub_24A75633C(v32, 1, 0);

  if (v33)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v35 = a1[35];

      sub_24A69BFF8(a1);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_24A75CD68(__int128 *a1, uint64_t a2)
{
  v93 = a2;
  v94 = a1;
  v3 = type metadata accessor for FMIPDevice();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v86 = v2;
  v8 = *(v2 + 80);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    v96 = MEMORY[0x277D84F90];
    do
    {
      sub_24A68FE04(v10, v7, type metadata accessor for FMIPDevice);
      v15 = *(v7 + 2);
      v14 = *(v7 + 3);

      sub_24A69004C(v7, type metadata accessor for FMIPDevice);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_24A780414(0, *(v96 + 2) + 1, 1, v96);
        }

        v17 = *(v96 + 2);
        v16 = *(v96 + 3);
        if (v17 >= v16 >> 1)
        {
          v96 = sub_24A780414((v16 > 1), v17 + 1, 1, v96);
        }

        v12 = v96;
        *(v96 + 2) = v17 + 1;
        v13 = &v12[16 * v17];
        *(v13 + 4) = v15;
        *(v13 + 5) = v14;
      }

      v10 += v11;
      --v9;
    }

    while (v9);
  }

  else
  {
    v96 = MEMORY[0x277D84F90];
  }

  v95 = sub_24A75D63C(v86);
  v18 = v94 + 4;
  v19 = 1 << *(v94 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v94[4];
  v22 = (v19 + 63) >> 6;

  v24 = 0;
  v87 = MEMORY[0x277D84F98];
  *&v25 = 136380675;
  v85 = v25;
  v88 = v22;
  v89 = v18;
  while (v21)
  {
    v26 = v24;
LABEL_22:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = v27 | (v26 << 6);
    v29 = (*(v94 + 6) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    v32 = (*(v94 + 7) + 24 * v28);
    v33 = *v32;
    v90 = *(v32 + 1);
    v91 = v33;
    v92 = *(v32 + 2);
    v34 = *(v32 + 3);
    v35 = v32[2];
    v36 = *(v32 + 1);
    v97 = v31;
    v98 = v30;
    MEMORY[0x28223BE20](v23);
    *(&v85 - 2) = v37;

    v38 = v36;
    v39 = sub_24A7FD8A8(sub_24A76ED40, (&v85 - 2), v96);
    if (v39)
    {
      goto LABEL_32;
    }

    v97 = v31;
    v98 = v30;
    MEMORY[0x28223BE20](v39);
    *(&v85 - 2) = &v97;
    if (sub_24A7FD8A8(sub_24A770FC4, (&v85 - 2), v95))
    {
      goto LABEL_32;
    }

    LOBYTE(v97) = v34;
    if (FMIPLocationType.rawValue.getter() == 0x6F4C646572696170 && v40 == 0xEE006E6F69746163)
    {

LABEL_32:
      v51 = v92;
      v52 = v38;
      v53 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v53;
      if (v90)
      {
        v55 = 256;
      }

      else
      {
        v55 = 0;
      }

      v56 = v55 | v91;
      if (v51)
      {
        v57 = 0x10000;
      }

      else
      {
        v57 = 0;
      }

      sub_24A784C04(v56 | v57 | (v34 << 24), v52, v31, v30, isUniquelyReferenced_nonNull_native, v35);

      v87 = v97;
      goto LABEL_16;
    }

    v41 = sub_24A82DC04();

    if (v41)
    {
      goto LABEL_32;
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v42 = sub_24A82CDC4();
    sub_24A6797D0(v42, qword_281518F88);
    v43 = v38;
    v44 = sub_24A82CD94();
    v45 = sub_24A82D504();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v100 = v47;
      *v46 = v85;
      LOBYTE(v97) = v91;
      BYTE1(v97) = v90;
      BYTE2(v97) = v92;
      BYTE3(v97) = v34;
      v98 = v43;
      v99 = v35;
      v48 = FMIPLocation.debugDescription.getter();
      v50 = sub_24A68761C(v48, v49, &v100);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_24A675000, v44, v45, "FMIPDataManager: Trimed location because it doesn't belong to anyone %{private}s", v46, 0xCu);
      sub_24A6876E8(v47);
      MEMORY[0x24C21E1D0](v47, -1, -1);
      MEMORY[0x24C21E1D0](v46, -1, -1);
    }

    else
    {
    }

LABEL_16:
    v24 = v26;
    v22 = v88;
    v18 = v89;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v26 >= v22)
    {
      break;
    }

    v21 = *(v18 + v26);
    ++v24;
    if (v21)
    {
      goto LABEL_22;
    }
  }

  v58 = v93 + 64;
  v59 = 1 << *(v93 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v93 + 64);
  v62 = (v59 + 63) >> 6;

  v64 = 0;
  v65 = MEMORY[0x277D84F98];
LABEL_42:
  v88 = v65;
  v66 = v64;
  if (!v61)
  {
    goto LABEL_44;
  }

  do
  {
    v64 = v66;
LABEL_47:
    v94 = &v85;
    v67 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v68 = v67 | (v64 << 6);
    v69 = (*(v93 + 48) + 16 * v68);
    v71 = *v69;
    v70 = v69[1];
    v72 = (*(v93 + 56) + 24 * v68);
    v73 = *v72;
    LODWORD(v89) = *(v72 + 1);
    v90 = *(v72 + 2);
    v91 = v73;
    v92 = *(v72 + 3);
    v74 = v72[2];
    v75 = *(v72 + 1);
    v97 = v71;
    v98 = v70;
    MEMORY[0x28223BE20](v63);
    *(&v85 - 2) = v76;

    v77 = v75;
    v78 = sub_24A7FD8A8(sub_24A770FC4, (&v85 - 2), v96);
    if (v78 & 1) != 0 || (v97 = v71, v98 = v70, MEMORY[0x28223BE20](v78), *(&v85 - 2) = &v97, (sub_24A7FD8A8(sub_24A770FC4, (&v85 - 2), v95)))
    {
      v79 = v77;
      v80 = v88;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v80;
      if (v89)
      {
        v82 = 256;
      }

      else
      {
        v82 = 0;
      }

      v83 = v82 | v91;
      if (v90)
      {
        v84 = 0x10000;
      }

      else
      {
        v84 = 0;
      }

      sub_24A784C04(v83 | v84 | (v92 << 24), v79, v71, v70, v81, v74);

      v65 = v97;
      goto LABEL_42;
    }

    v66 = v64;
  }

  while (v61);
LABEL_44:
  while (1)
  {
    v64 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v64 >= v62)
    {

      sub_24A7556C0(v87, v88);

      return;
    }

    v61 = *(v58 + 8 * v64);
    ++v66;
    if (v61)
    {
      goto LABEL_47;
    }
  }

LABEL_60:
  __break(1u);
}

uint64_t sub_24A75D5AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24A75D5F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_24A75D63C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(a1 + 280);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v10 = *(v3 + 72);

  v11 = MEMORY[0x277D84F90];
  do
  {
    sub_24A68FE04(v9, v6, type metadata accessor for FMIPItem);
    v13 = *(v6 + 44);
    v12 = *(v6 + 45);

    sub_24A69004C(v6, type metadata accessor for FMIPItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_24A780414(0, *(v11 + 2) + 1, 1, v11);
    }

    v15 = *(v11 + 2);
    v14 = *(v11 + 3);
    if (v15 >= v14 >> 1)
    {
      v11 = sub_24A780414((v14 > 1), v15 + 1, 1, v11);
    }

    *(v11 + 2) = v15 + 1;
    v16 = &v11[16 * v15];
    *(v16 + 4) = v13;
    *(v16 + 5) = v12;
    v9 += v10;
    --v8;
  }

  while (v8);

  return v11;
}

uint64_t sub_24A75D810(uint64_t a1)
{
  v84 = sub_24A82CDF4();
  v2 = *(v84 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_24A82CE54();
  v5 = *(v82 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMReverseGeocodingRequest();
  v89 = *(v8 - 8);
  v9 = *(v89 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v79 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v11;
  MEMORY[0x28223BE20](v10);
  v99 = &v65 - v12;
  v13 = sub_24A6BBA94(&qword_27EF5E130, &qword_24A837778);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  v88 = sub_24A82CA34();
  v20 = *(v88 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v88);
  v77 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v23;
  MEMORY[0x28223BE20](v22);
  v86 = &v65 - v24;
  sub_24A82CA24();
  v25 = *(a1 + 64);
  v66 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v65 = (v26 + 63) >> 6;
  v75 = &v102[2];
  v76 = qword_27EF5EFD0;
  v73 = (v5 + 8);
  v74 = (v2 + 8);
  v87 = v20;
  v71 = v20 + 32;
  v72 = v20 + 16;
  v70 = v101;
  v67 = a1;

  v30 = 0;
  v68 = v19;
  v69 = v17;
  v96 = 0;
  v97 = 0;
  if (v28)
  {
    while (1)
    {
      v31 = v30;
LABEL_12:
      v34 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v35 = v34 | (v31 << 6);
      v36 = v67;
      v37 = v99;
      sub_24A68FE04(*(v67 + 48) + *(v89 + 72) * v35, v99, type metadata accessor for FMReverseGeocodingRequest);
      memcpy(v103, (*(v36 + 56) + 288 * v35), 0x120uLL);
      v38 = sub_24A6BBA94(&unk_27EF5E138, &unk_24A837780);
      v39 = *(v38 + 48);
      sub_24A68D628(v37, v17, type metadata accessor for FMReverseGeocodingRequest);
      memcpy(&v17[v39], v103, 0x120uLL);
      (*(*(v38 - 8) + 56))(v17, 0, 1, v38);
      sub_24A76ECE4(v103, v102);
      v33 = v31;
LABEL_13:
      sub_24A67E8FC(v17, v19, &qword_27EF5E130, &qword_24A837778);
      v40 = sub_24A6BBA94(&unk_27EF5E138, &unk_24A837780);
      if ((*(*(v40 - 8) + 48))(v19, 1, v40) == 1)
      {
        break;
      }

      v90 = v33;
      v41 = *(v40 + 48);
      v42 = v99;
      v95 = type metadata accessor for FMReverseGeocodingRequest;
      sub_24A68D628(v19, v99, type metadata accessor for FMReverseGeocodingRequest);
      memcpy(v103, &v19[v41], 0x120uLL);
      v43 = v85;
      v98 = *(v85 + v76);
      v92 = type metadata accessor for FMReverseGeocodingRequest;
      v44 = v79;
      sub_24A68FE04(v42, v79, type metadata accessor for FMReverseGeocodingRequest);
      v45 = *(v89 + 80);
      v46 = (v45 + 24) & ~v45;
      v47 = v46;
      v93 = v45 | 7;
      v94 = v46;
      v48 = (v46 + v80) & 0xFFFFFFFFFFFFFFF8;
      v49 = v46 + v80;
      v91 = v46 + v80;
      v50 = swift_allocObject();
      *(v50 + 16) = v43;
      sub_24A68D628(v44, v50 + v47, type metadata accessor for FMReverseGeocodingRequest);
      *(v50 + v49) = 1;
      v51 = v50 + v48;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0;
      v102[4] = sub_24A76EE34;
      v102[5] = v50;
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 1107296256;
      v102[2] = sub_24A699BA0;
      v102[3] = &unk_285DC72A0;
      v52 = _Block_copy(v102);

      v53 = v81;
      sub_24A82CE24();
      v100[0] = MEMORY[0x277D84F90];
      sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v55 = v83;
      v54 = v84;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v53, v55, v52);
      _Block_release(v52);
      (*v74)(v55, v54);
      (*v73)(v53, v82);

      sub_24A68FE04(v99, v44, v92);
      memcpy(v102, v103, sizeof(v102));
      v56 = v87;
      v57 = v77;
      v58 = v88;
      (*(v87 + 16))(v77, v86, v88);
      v59 = (v91 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = (v59 + *(v56 + 80) + 288) & ~*(v56 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v43;
      sub_24A68D628(v44, v61 + v94, v95);
      memcpy((v61 + v59), v102, 0x120uLL);
      (*(v56 + 32))(v61 + v60, v57, v58);

      sub_24A76ECE4(v103, v100);
      sub_24A753E6C(v97);
      v62 = swift_allocObject();
      *(v62 + 16) = sub_24A76EE38;
      *(v62 + 24) = v61;
      v101[2] = sub_24A6806A0;
      v101[3] = v62;
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 1107296256;
      v101[0] = sub_24A6805E4;
      v101[1] = &unk_285DC7318;
      v63 = _Block_copy(v100);

      dispatch_sync(v98, v63);
      _Block_release(v63);
      sub_24A6CD854(v103);
      sub_24A69004C(v99, type metadata accessor for FMReverseGeocodingRequest);
      LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

      if (v58)
      {
        goto LABEL_20;
      }

      v30 = v90;
      v19 = v68;
      v17 = v69;
      v96 = v61;
      v97 = sub_24A76EE38;
      if (!v28)
      {
        goto LABEL_5;
      }
    }

    (*(v87 + 8))(v86, v88);

    return sub_24A753E6C(v97);
  }

  else
  {
LABEL_5:
    if (v65 <= v30 + 1)
    {
      v32 = v30 + 1;
    }

    else
    {
      v32 = v65;
    }

    v33 = v32 - 1;
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v65)
      {
        v64 = sub_24A6BBA94(&unk_27EF5E138, &unk_24A837780);
        (*(*(v64 - 8) + 56))(v17, 1, 1, v64);
        v28 = 0;
        goto LABEL_13;
      }

      v28 = *(v66 + 8 * v31);
      ++v30;
      if (v28)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_24A75E250(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v42 = a2;
  v45 = a1;
  v4 = sub_24A6BBA94(&qword_27EF5E148, qword_24A837790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v41 = type metadata accessor for FMReverseGeocodingRequest();
  v8 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  v43 = *(v11 - 1);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = sub_24A82CE84();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = v3;
  v20 = *(v3 + qword_27EF5EFD0);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  LOBYTE(v20) = sub_24A82CEA4();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v23 = v45;
    sub_24A68FE04(v45, v10, type metadata accessor for FMReverseGeocodingRequest);
    v24 = v11[11];
    v25 = sub_24A82CA34();
    (*(*(v25 - 8) + 16))(&v14[v24], v40, v25);
    v26 = v10[1];
    *v14 = *v10;
    *(v14 + 1) = v26;
    v27 = v10[2];
    v28 = v42;
    sub_24A76ECE4(v42, &v46);

    *(v14 + 2) = sub_24A6F47C0();
    *(v14 + 3) = v29;
    *(v14 + 4) = v27;
    v30 = *(v10 + *(v41 + 28));
    v31 = v27;
    sub_24A69004C(v10, type metadata accessor for FMReverseGeocodingRequest);
    v14[v11[13]] = v30;
    memcpy(&v14[v11[12]], v28, 0x120uLL);
    v32 = v23[2];
    v33 = sub_24A6F47C0();
    v35 = v34;
    sub_24A67E964(v14, v7, &unk_27EF5E150, &unk_24A83CCC0);
    v36 = *(v43 + 56);
    v36(v7, 0, 1, v11);
    swift_beginAccess();
    sub_24A7BE388(v7, v33, v35);
    swift_endAccess();
    v38 = *v45;
    v37 = v45[1];
    sub_24A67E964(v14, v7, &unk_27EF5E150, &unk_24A83CCC0);
    v36(v7, 0, 1, v11);
    swift_beginAccess();

    sub_24A7BE388(v7, v38, v37);
    swift_endAccess();
    return sub_24A67F378(v14, &unk_27EF5E150, &unk_24A83CCC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_24A75E6A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v175 = a2;
  v5 = sub_24A82CA34();
  v161 = *(v5 - 8);
  v162 = v5;
  v6 = *(v161 + 64);
  MEMORY[0x28223BE20](v5);
  v160 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5E148, qword_24A837790);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v169 = &v156 - v10;
  v170 = type metadata accessor for FMReverseGeocodingRequest();
  v11 = *(*(v170 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v170);
  v14 = (&v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v168 = (&v156 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v167 = &v156 - v18;
  MEMORY[0x28223BE20](v17);
  v166 = (&v156 - v19);
  v172 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  v174 = *(v172 - 1);
  v20 = *(v174 + 64);
  v21 = MEMORY[0x28223BE20](v172);
  v158 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v157 = (&v156 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v159 = (&v156 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v156 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v164 = &v156 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v165 = &v156 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v156 - v35;
  MEMORY[0x28223BE20](v34);
  v173 = &v156 - v37;
  v38 = sub_24A82CE84();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = (&v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(v3 + qword_27EF5EFD0);
  *v42 = v43;
  (*(v39 + 104))(v42, *MEMORY[0x277D85200], v38);
  v44 = v43;
  LOBYTE(v43) = sub_24A82CEA4();
  (*(v39 + 8))(v42, v38);
  if ((v43 & 1) == 0)
  {
    __break(1u);
LABEL_39:
    swift_once();
LABEL_19:
    v110 = sub_24A82CDC4();
    sub_24A6797D0(v110, qword_27EF78C00);
    sub_24A68FE04(a1, v14, type metadata accessor for FMReverseGeocodingRequest);

    v111 = sub_24A82CD94();
    v112 = sub_24A82D504();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *&v178[0] = v114;
      *v113 = 136315394;
      v115 = *v3;
      v116 = sub_24A82DDB4();
      v118 = sub_24A68761C(v116, v117, v178);

      *(v113 + 4) = v118;
      *(v113 + 12) = 2080;
      v119 = *v14;
      v120 = v14[1];

      sub_24A69004C(v14, type metadata accessor for FMReverseGeocodingRequest);
      v121 = sub_24A68761C(v119, v120, v178);

      *(v113 + 14) = v121;
      _os_log_impl(&dword_24A675000, v111, v112, "%s: No cached request for %s.", v113, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v114, -1, -1);
      MEMORY[0x24C21E1D0](v113, -1, -1);
    }

    else
    {

      sub_24A69004C(v14, type metadata accessor for FMReverseGeocodingRequest);
    }

    goto LABEL_35;
  }

  v45 = a1[2];
  v46 = sub_24A6F47C0();
  v48 = v47;
  v49 = qword_27EF5EFA8;
  swift_beginAccess();
  v50 = *(v3 + v49);
  if (*(v50 + 16))
  {
    v163 = v45;
    v171 = a1;

    v51 = sub_24A6A2D48(v46, v48);
    v53 = v52;

    if (v53)
    {
      sub_24A67E964(*(v50 + 56) + *(v174 + 72) * v51, v36, &unk_27EF5E150, &unk_24A83CCC0);

      v54 = v36;
      v55 = v173;
      sub_24A67E8FC(v54, v173, &unk_27EF5E150, &unk_24A83CCC0);
      if (qword_27EF5CB88 != -1)
      {
        swift_once();
      }

      v56 = sub_24A82CDC4();
      sub_24A6797D0(v56, qword_27EF78C00);
      v57 = v171;
      v58 = v166;
      sub_24A68FE04(v171, v166, type metadata accessor for FMReverseGeocodingRequest);
      v59 = v57;
      v60 = v167;
      sub_24A68FE04(v59, v167, type metadata accessor for FMReverseGeocodingRequest);
      v61 = v55;
      v62 = v165;
      sub_24A67E964(v61, v165, &unk_27EF5E150, &unk_24A83CCC0);

      v63 = sub_24A82CD94();
      v64 = sub_24A82D504();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&v178[0] = v164;
        *v65 = 136315906;
        v66 = *v3;
        v67 = sub_24A82DDB4();
        v69 = sub_24A68761C(v67, v68, v178);

        *(v65 + 4) = v69;
        *(v65 + 12) = 2080;
        v70 = *v58;
        v71 = v58[1];

        sub_24A69004C(v58, type metadata accessor for FMReverseGeocodingRequest);
        v72 = sub_24A68761C(v70, v71, v178);

        *(v65 + 14) = v72;
        *(v65 + 22) = 2080;
        v73 = *(v60 + 16);
        v74 = sub_24A6F47C0();
        v76 = v75;
        sub_24A69004C(v60, type metadata accessor for FMReverseGeocodingRequest);
        v77 = sub_24A68761C(v74, v76, v178);

        *(v65 + 24) = v77;
        *(v65 + 32) = 2080;
        v78 = v172;
        v79 = v62 + v172[12];
        v80 = FMIPAddress.debugDescription.getter();
        v82 = v81;
        sub_24A67F378(v62, &unk_27EF5E150, &unk_24A83CCC0);
        v83 = sub_24A68761C(v80, v82, v178);

        *(v65 + 34) = v83;
        _os_log_impl(&dword_24A675000, v63, v64, "%s: Using cached request %s based on geoHash %s -> %s.", v65, 0x2Au);
        v84 = v164;
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v84, -1, -1);
        MEMORY[0x24C21E1D0](v65, -1, -1);
      }

      else
      {

        sub_24A67F378(v62, &unk_27EF5E150, &unk_24A83CCC0);
        sub_24A69004C(v58, type metadata accessor for FMReverseGeocodingRequest);
        sub_24A69004C(v60, type metadata accessor for FMReverseGeocodingRequest);
        v78 = v172;
      }

      v122 = v171[1];
      v172 = *v171;
      v123 = v168;
      sub_24A68FE04(v171, v168, type metadata accessor for FMReverseGeocodingRequest);
      v124 = v78[12];
      v125 = v173;
      memcpy(v177, (v173 + v124), sizeof(v177));

      sub_24A76ECE4(v177, v178);
      v126 = [v163 timestamp];
      v127 = v169;
      v128 = &v169[v78[11]];
      sub_24A82C9F4();

      v129 = v123[1];
      *v127 = *v123;
      v127[1] = v129;
      v130 = v123[2];

      v127[2] = sub_24A6F47C0();
      v127[3] = v131;
      v127[4] = v130;
      v132 = *(v123 + *(v170 + 28));
      v133 = v130;
      sub_24A69004C(v123, type metadata accessor for FMReverseGeocodingRequest);
      *(v127 + v78[13]) = v132;
      memcpy(v127 + v78[12], v177, 0x120uLL);
      (*(v174 + 56))(v127, 0, 1, v78);
      swift_beginAccess();
      sub_24A7BE388(v127, v172, v122);
      swift_endAccess();
      memcpy(v178, (v125 + v124), sizeof(v178));
      sub_24A76ECE4(v178, &v176);
      sub_24A67F378(v125, &unk_27EF5E150, &unk_24A83CCC0);
      v134 = v175;
      memcpy(v175, v178, 0x120uLL);
      return nullsub_1(v134);
    }

    a1 = v171;
    v45 = v163;
  }

  else
  {
  }

  v85 = *a1;
  v86 = a1[1];
  v87 = qword_27EF5EFB0;
  swift_beginAccess();
  v88 = *(v3 + v87);
  if (!*(v88 + 16))
  {
LABEL_18:
    if (qword_27EF5CB88 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

  v89 = sub_24A6A2D48(v85, v86);
  if ((v90 & 1) == 0)
  {

    goto LABEL_18;
  }

  sub_24A67E964(*(v88 + 56) + *(v174 + 72) * v89, v29, &unk_27EF5E150, &unk_24A83CCC0);

  v91 = v164;
  sub_24A67E8FC(v29, v164, &unk_27EF5E150, &unk_24A83CCC0);
  v92 = v160;
  sub_24A82CA04();
  v93 = v172;
  v94 = v172[11];
  sub_24A82C974();
  v96 = v95;
  (*(v161 + 8))(v92, v162);
  if (v96 <= 30.0)
  {
    [*(v91 + 32) distanceFromLocation_];
    v137 = v136;
    if (*(a1 + *(v170 + 28)))
    {
      v138 = 50.0;
    }

    else
    {
      v138 = 250.0;
    }

    if (v136 < v138)
    {
      if (qword_27EF5CB88 != -1)
      {
        swift_once();
      }

      v139 = sub_24A82CDC4();
      sub_24A6797D0(v139, qword_27EF78C00);
      v140 = v157;
      sub_24A67E964(v91, v157, &unk_27EF5E150, &unk_24A83CCC0);
      v141 = v158;
      sub_24A67E964(v91, v158, &unk_27EF5E150, &unk_24A83CCC0);
      v142 = sub_24A82CD94();
      v143 = sub_24A82D504();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *&v178[0] = v145;
        *v144 = 136315906;
        v146 = *v140;
        v147 = v140[1];

        sub_24A67F378(v140, &unk_27EF5E150, &unk_24A83CCC0);
        v148 = sub_24A68761C(v146, v147, v178);

        *(v144 + 4) = v148;
        *(v144 + 12) = 2048;
        *(v144 + 14) = v137;
        *(v144 + 22) = 2048;
        *(v144 + 24) = v138;
        *(v144 + 32) = 2080;
        v149 = v141 + v172[12];
        v150 = FMIPAddress.debugDescription.getter();
        v152 = v151;
        v93 = v172;
        sub_24A67F378(v141, &unk_27EF5E150, &unk_24A83CCC0);
        v153 = sub_24A68761C(v150, v152, v178);
        v91 = v164;

        *(v144 + 34) = v153;
        _os_log_impl(&dword_24A675000, v142, v143, "FMReverseGeocodingCache: Using cached request for %s due to location distance throttling - distance: %f, limit: %f -> %s.", v144, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v145, -1, -1);
        MEMORY[0x24C21E1D0](v144, -1, -1);
      }

      else
      {

        sub_24A67F378(v141, &unk_27EF5E150, &unk_24A83CCC0);
        sub_24A67F378(v140, &unk_27EF5E150, &unk_24A83CCC0);
      }

      v154 = *(v93 + 48);
      memcpy(v178, (v91 + v154), sizeof(v178));
      v155 = (v91 + v154);
      v134 = v175;
      memcpy(v175, v155, 0x120uLL);
      sub_24A76ECE4(v178, v177);
      sub_24A67F378(v91, &unk_27EF5E150, &unk_24A83CCC0);
      return nullsub_1(v134);
    }
  }

  else
  {
    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v97 = sub_24A82CDC4();
    sub_24A6797D0(v97, qword_27EF78C00);
    v98 = v159;
    sub_24A67E964(v91, v159, &unk_27EF5E150, &unk_24A83CCC0);

    v99 = sub_24A82CD94();
    v100 = sub_24A82D504();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v178[0] = v102;
      *v101 = 136315394;
      v103 = *v3;
      v104 = sub_24A82DDB4();
      v106 = sub_24A68761C(v104, v105, v178);

      *(v101 + 4) = v106;
      *(v101 + 12) = 2080;
      v107 = *v98;
      v108 = v98[1];

      sub_24A67F378(v98, &unk_27EF5E150, &unk_24A83CCC0);
      v109 = sub_24A68761C(v107, v108, v178);
      v91 = v164;

      *(v101 + 14) = v109;
      _os_log_impl(&dword_24A675000, v99, v100, "%s: Cached request for %s is older than the 30s.", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v102, -1, -1);
      MEMORY[0x24C21E1D0](v101, -1, -1);
    }

    else
    {

      sub_24A67F378(v98, &unk_27EF5E150, &unk_24A83CCC0);
    }
  }

  sub_24A67F378(v91, &unk_27EF5E150, &unk_24A83CCC0);
LABEL_35:
  sub_24A68808C(v178);
  return memcpy(v175, v178, 0x120uLL);
}

uint64_t sub_24A75F7DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a4;
  v29 = a2;
  v8 = sub_24A82CDF4();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_24A82CE54();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for FMReverseGeocodingRequest();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *(v4 + qword_27EF5EFD0);
  sub_24A68FE04(a1, v19, type metadata accessor for FMReverseGeocodingRequest);
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = v20 + v18;
  v22 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  sub_24A68D628(v19, v23 + v20, type metadata accessor for FMReverseGeocodingRequest);
  *(v23 + v21) = v29;
  v24 = v23 + v22;
  v25 = v30;
  *(v24 + 8) = a3;
  *(v24 + 16) = v25;
  aBlock[4] = sub_24A770F84;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC7430;
  v26 = _Block_copy(aBlock);

  sub_24A6A7314(a3);
  sub_24A82CE24();
  v35 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v15, v11, v26);
  _Block_release(v26);
  (*(v34 + 8))(v11, v8);
  (*(v32 + 8))(v15, v33);
}

void sub_24A75FBAC(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v89 = a3;
  v90 = a4;
  v8 = type metadata accessor for FMReverseGeocodingRequest();
  v85 = *(v8 - 8);
  v9 = *(v85 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v86 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v88 = &v83 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v84 = &v83 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v83 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v83 - v18;
  v87 = a1[2];
  v20 = sub_24A6F47C0();
  v22 = v21;
  v23 = qword_27EF5EFB8;
  swift_beginAccess();
  v91 = v23;
  if (*(*(v5 + v23) + 16))
  {

    sub_24A6A2D48(v20, v22);
    v25 = v24;

    if (v25)
    {
      if (qword_27EF5CB88 != -1)
      {
        swift_once();
      }

      v26 = sub_24A82CDC4();
      sub_24A6797D0(v26, qword_27EF78C00);
      sub_24A68FE04(a1, v19, type metadata accessor for FMReverseGeocodingRequest);

      v27 = sub_24A82CD94();
      v28 = sub_24A82D504();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v96[0] = v30;
        *v29 = 136315394;
        v31 = *v5;
        v32 = sub_24A82DDB4();
        v34 = sub_24A68761C(v32, v33, v96);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2080;
        v35 = FMReverseGeocodingRequest.debugDescription.getter();
        v37 = v36;
        sub_24A69004C(v19, type metadata accessor for FMReverseGeocodingRequest);
        v38 = sub_24A68761C(v35, v37, v96);

        *(v29 + 14) = v38;
        _os_log_impl(&dword_24A675000, v27, v28, "%s: Loading declined, we are already processing similar location: %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v30, -1, -1);
        v39 = v29;
LABEL_21:
        MEMORY[0x24C21E1D0](v39, -1, -1);
LABEL_22:

        return;
      }

      sub_24A69004C(v19, type metadata accessor for FMReverseGeocodingRequest);
      return;
    }
  }

  else
  {
  }

  if (a2)
  {
LABEL_11:
    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v40 = sub_24A82CDC4();
    sub_24A6797D0(v40, qword_27EF78C00);
    sub_24A68FE04(a1, v17, type metadata accessor for FMReverseGeocodingRequest);

    v41 = sub_24A82CD94();
    v42 = sub_24A82D504();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v96[0] = v84;
      *v43 = 136315394;
      v44 = *v5;
      v45 = sub_24A82DDB4();
      v47 = sub_24A68761C(v45, v46, v96);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v48 = FMReverseGeocodingRequest.debugDescription.getter();
      v50 = v49;
      sub_24A69004C(v17, type metadata accessor for FMReverseGeocodingRequest);
      v51 = sub_24A68761C(v48, v50, v96);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_24A675000, v41, v42, "%s: Loading new address for %s", v43, 0x16u);
      v52 = v84;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v52, -1, -1);
      MEMORY[0x24C21E1D0](v43, -1, -1);
    }

    else
    {

      sub_24A69004C(v17, type metadata accessor for FMReverseGeocodingRequest);
    }

    v53 = v88;
    sub_24A68FE04(a1, v88, type metadata accessor for FMReverseGeocodingRequest);
    v54 = v86;
    sub_24A68FE04(a1, v86, type metadata accessor for FMReverseGeocodingRequest);
    v55 = (*(v85 + 80) + 24) & ~*(v85 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v5;
    sub_24A68D628(v54, v56 + v55, type metadata accessor for FMReverseGeocodingRequest);
    v57 = (v56 + ((v9 + v55 + 7) & 0xFFFFFFFFFFFFFFF8));
    v59 = v89;
    v58 = v90;
    *v57 = v89;
    v57[1] = v58;
    v60 = type metadata accessor for FMReverseGeocodingOperation();
    v61 = objc_allocWithZone(v60);
    v61[OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation__isFinished] = 0;
    sub_24A68FE04(v53, &v61[OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation_request], type metadata accessor for FMReverseGeocodingRequest);
    v62 = &v61[OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation_completion];
    *v62 = sub_24A76EF30;
    v62[1] = v56;

    sub_24A6A7314(v59);
    v93.receiver = v61;
    v93.super_class = v60;
    v63 = objc_msgSendSuper2(&v93, sel_init);
    sub_24A69004C(v53, type metadata accessor for FMReverseGeocodingRequest);
    [*(v5 + qword_27EF5EFC8) addOperation_];
    v64 = sub_24A6F47C0();
    v66 = v65;
    v67 = v91;
    swift_beginAccess();
    v27 = v63;
    v68 = *(v5 + v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94[0] = *(v5 + v67);
    *(v5 + v67) = 0x8000000000000000;
    sub_24A784F08(v27, v64, v66, isUniquelyReferenced_nonNull_native);

    *(v5 + v67) = v94[0];
    swift_endAccess();
    goto LABEL_22;
  }

  sub_24A75E6A0(a1, v95);
  memcpy(v96, v95, sizeof(v96));
  if (sub_24A6921A8(v96) == 1)
  {
    memcpy(v94, v95, sizeof(v94));
    sub_24A67F378(v94, &unk_27EF5E0D0, &qword_24A8319E0);
    goto LABEL_11;
  }

  memcpy(v94, v95, sizeof(v94));
  sub_24A67F378(v94, &unk_27EF5E0D0, &qword_24A8319E0);
  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v70 = sub_24A82CDC4();
  sub_24A6797D0(v70, qword_27EF78C00);
  v71 = v84;
  sub_24A68FE04(a1, v84, type metadata accessor for FMReverseGeocodingRequest);

  v27 = sub_24A82CD94();
  v72 = sub_24A82D504();

  if (os_log_type_enabled(v27, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v92 = v74;
    *v73 = 136315394;
    v75 = *v5;
    v76 = sub_24A82DDB4();
    v78 = sub_24A68761C(v76, v77, &v92);

    *(v73 + 4) = v78;
    *(v73 + 12) = 2080;
    v79 = FMReverseGeocodingRequest.debugDescription.getter();
    v81 = v80;
    sub_24A69004C(v71, type metadata accessor for FMReverseGeocodingRequest);
    v82 = sub_24A68761C(v79, v81, &v92);

    *(v73 + 14) = v82;
    _os_log_impl(&dword_24A675000, v27, v72, "%s: Loading declined, we have already processed similar location: %s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v74, -1, -1);
    v39 = v73;
    goto LABEL_21;
  }

  sub_24A69004C(v71, type metadata accessor for FMReverseGeocodingRequest);
}

uint64_t sub_24A760598(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a1;
  v35 = sub_24A82CDF4();
  v38 = *(v35 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE54();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMReverseGeocodingRequest();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a3 + qword_27EF5EFD0);
  sub_24A68FE04(a4, v19, type metadata accessor for FMReverseGeocodingRequest);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = (v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a2;
  sub_24A68D628(v19, v22 + v20, type metadata accessor for FMReverseGeocodingRequest);
  v23 = (v22 + v21);
  v25 = v32;
  v24 = v33;
  *v23 = v32;
  v23[1] = v24;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v31;
  aBlock[4] = sub_24A76EFE4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC7390;
  v26 = _Block_copy(aBlock);

  v27 = a2;
  sub_24A6A7314(v25);
  swift_unknownObjectRetain();
  sub_24A82CE24();
  v39 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v28 = v35;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v15, v11, v26);
  _Block_release(v26);
  (*(v38 + 8))(v11, v28);
  (*(v36 + 8))(v15, v37);
}

uint64_t sub_24A760988(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v145 = a4;
  v146 = a3;
  v143 = a2;
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CE54();
  v139 = *(v14 - 8);
  v15 = *(v139 + 64);
  MEMORY[0x28223BE20](v14);
  v138 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE04();
  v136 = *(v17 - 8);
  v137 = v17;
  v18 = *(v136 + 64);
  MEMORY[0x28223BE20](v17);
  v135 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A82CA34();
  v132 = *(v20 - 8);
  v133 = v20;
  v21 = *(v132 + 64);
  MEMORY[0x28223BE20](v20);
  v131 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FMReverseGeocodingRequest();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v126 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v134 = &v126 - v28;
  MEMORY[0x28223BE20](v27);
  v141 = &v126 - v29;
  v30 = qword_27EF5EFC0;
  v31 = *(a1 + qword_27EF5EFC0);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    v127 = v13;
    v142 = a5;
    *(a1 + qword_27EF5EFC0) = v33;
    if (qword_27EF5CB88 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v34 = sub_24A82CDC4();
  v35 = sub_24A6797D0(v34, qword_27EF78C00);
  swift_retain_n();
  v144 = v35;
  v36 = sub_24A82CD94();
  v37 = sub_24A82D504();
  v38 = os_log_type_enabled(v36, v37);
  v129 = v10;
  v130 = v9;
  v128 = v14;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v140 = a6;
    v41 = v40;
    v152[0] = v40;
    *v39 = 136315394;
    v42 = *a1;
    v43 = sub_24A82DDB4();
    v45 = sub_24A68761C(v43, v44, v152);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2048;
    v46 = *(a1 + v30);

    *(v39 + 14) = v46;

    _os_log_impl(&dword_24A675000, v36, v37, "%s: Total operations processed: %ld.", v39, 0x16u);
    sub_24A6876E8(v41);
    a6 = v140;
    MEMORY[0x24C21E1D0](v41, -1, -1);
    MEMORY[0x24C21E1D0](v39, -1, -1);
  }

  else
  {
  }

  v47 = *(a1 + v30);
  v48 = v143;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v47 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
  {
    sub_24A82C9C4();
    v64 = v63;

    v65 = sub_24A82CD94();
    v66 = sub_24A82D504();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v152[0] = v68;
      *v67 = 136315394;
      v69 = *a1;
      v70 = sub_24A82DDB4();
      v72 = sub_24A68761C(v70, v71, v152);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2048;
      *(v67 + 14) = v47 / fabs(v64);
      _os_log_impl(&dword_24A675000, v65, v66, "%s: Current throughput: %f requests per second.", v67, 0x16u);
      sub_24A6876E8(v68);
      v48 = v143;
      MEMORY[0x24C21E1D0](v68, -1, -1);
      MEMORY[0x24C21E1D0](v67, -1, -1);
    }

    if (v48)
    {
      goto LABEL_8;
    }
  }

  else if (v143)
  {
LABEL_8:
    v49 = v141;
    sub_24A68FE04(v146, v141, type metadata accessor for FMReverseGeocodingRequest);
    v50 = v48;
    v51 = sub_24A82CD94();
    v52 = sub_24A82D504();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v152[0] = v54;
      *v53 = 136315394;
      v55 = FMReverseGeocodingRequest.debugDescription.getter();
      v57 = v56;
      sub_24A69004C(v49, type metadata accessor for FMReverseGeocodingRequest);
      v58 = sub_24A68761C(v55, v57, v152);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      swift_getErrorValue();
      v59 = sub_24A82DC74();
      v61 = sub_24A68761C(v59, v60, v152);

      *(v53 + 14) = v61;
      _os_log_impl(&dword_24A675000, v51, v52, "FMReverseGeocodingCache: Geocoding error: %s for request: %s", v53, 0x16u);
      swift_arrayDestroy();
      v62 = v54;
LABEL_10:
      MEMORY[0x24C21E1D0](v62, -1, -1);
      MEMORY[0x24C21E1D0](v53, -1, -1);

      goto LABEL_19;
    }

    v97 = v49;
    goto LABEL_18;
  }

  if (!a6)
  {
    v103 = v126;
    sub_24A68FE04(v146, v126, type metadata accessor for FMReverseGeocodingRequest);

    v51 = sub_24A82CD94();
    v104 = sub_24A82D504();

    if (os_log_type_enabled(v51, v104))
    {
      v53 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v152[0] = v105;
      *v53 = 136315394;
      v106 = *a1;
      v107 = sub_24A82DDB4();
      v109 = sub_24A68761C(v107, v108, v152);

      *(v53 + 4) = v109;
      *(v53 + 12) = 2080;
      v110 = FMReverseGeocodingRequest.debugDescription.getter();
      v112 = v111;
      sub_24A69004C(v103, type metadata accessor for FMReverseGeocodingRequest);
      v113 = sub_24A68761C(v110, v112, v152);

      *(v53 + 14) = v113;
      _os_log_impl(&dword_24A675000, v51, v104, "%s: No map items received for request: %s", v53, 0x16u);
      swift_arrayDestroy();
      v62 = v105;
      goto LABEL_10;
    }

    v97 = v103;
LABEL_18:
    sub_24A69004C(v97, type metadata accessor for FMReverseGeocodingRequest);
LABEL_19:
    v98 = v146[2];
    v99 = sub_24A6F47C0();
    v101 = v100;
    swift_beginAccess();
    sub_24A7BE560(0, v99, v101);
    result = swift_endAccess();
    if (v145)
    {
      sub_24A68808C(v151);
      memcpy(v150, v151, sizeof(v150));
      v145(v150);
      memcpy(v152, v150, 0x120uLL);
      return sub_24A67F378(v152, &unk_27EF5E0D0, &qword_24A8319E0);
    }

    return result;
  }

  v73 = swift_unknownObjectRetain_n();
  v140 = a6;
  FMIPAddress.init(mapItem:)(v73, v149);
  v74 = v146;
  v75 = v146[2];
  v76 = sub_24A6F47C0();
  v78 = v77;
  swift_beginAccess();
  sub_24A7BE560(0, v76, v78);
  swift_endAccess();
  v79 = v131;
  sub_24A82CA24();
  memcpy(v152, v149, 0x120uLL);
  sub_24A75E250(v74, v152, v79);
  (*(v132 + 8))(v79, v133);
  v80 = v134;
  sub_24A68FE04(v74, v134, type metadata accessor for FMReverseGeocodingRequest);
  memcpy(v151, v149, sizeof(v151));

  sub_24A76ECE4(v151, v150);
  v81 = sub_24A82CD94();
  v82 = sub_24A82D504();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v148[0] = v84;
    *v83 = 136315650;
    v85 = *a1;
    v86 = sub_24A82DDB4();
    v88 = sub_24A68761C(v86, v87, v148);

    *(v83 + 4) = v88;
    *(v83 + 12) = 2080;
    v89 = FMReverseGeocodingRequest.debugDescription.getter();
    v91 = v90;
    sub_24A69004C(v80, type metadata accessor for FMReverseGeocodingRequest);
    v92 = sub_24A68761C(v89, v91, v148);

    *(v83 + 14) = v92;
    *(v83 + 22) = 2080;
    memcpy(v150, v151, sizeof(v150));
    v93 = FMIPAddress.debugDescription.getter();
    v95 = v94;
    sub_24A6CD854(v151);
    v96 = sub_24A68761C(v93, v95, v148);

    *(v83 + 24) = v96;
    _os_log_impl(&dword_24A675000, v81, v82, "%s: address received for request: %s - %s", v83, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v84, -1, -1);
    MEMORY[0x24C21E1D0](v83, -1, -1);
  }

  else
  {
    sub_24A6CD854(v151);

    sub_24A69004C(v80, type metadata accessor for FMReverseGeocodingRequest);
  }

  v115 = v127;
  v114 = v128;
  sub_24A67B054();
  v117 = v135;
  v116 = v136;
  v118 = v137;
  (*(v136 + 104))(v135, *MEMORY[0x277D851C8], v137);
  v119 = sub_24A82D5A4();
  (*(v116 + 8))(v117, v118);
  memcpy(v148, v149, sizeof(v148));
  v120 = swift_allocObject();
  v120[2] = a1;
  memcpy(v120 + 3, v149, 0x120uLL);
  v121 = v145;
  v122 = v142;
  v120[39] = v145;
  v120[40] = v122;
  v147[4] = sub_24A76F084;
  v147[5] = v120;
  v147[0] = MEMORY[0x277D85DD0];
  v147[1] = 1107296256;
  v147[2] = sub_24A699BA0;
  v147[3] = &unk_285DC73E0;
  v123 = _Block_copy(v147);

  sub_24A76ECE4(v148, v150);
  sub_24A6A7314(v121);
  v124 = v138;
  sub_24A82CE24();
  v150[0] = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v125 = v130;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v124, v115, v123);
  _Block_release(v123);
  swift_unknownObjectRelease();

  (*(v129 + 8))(v115, v125);
  (*(v139 + 8))(v124, v114);
  memcpy(v150, v149, sizeof(v150));
  sub_24A6CD854(v150);
}

uint64_t sub_24A76187C(void *a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A82CE54();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMDiskIO: save to disk", v15, 2u);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = *(v2 + 16);
  v17 = *a1;
  v30 = a1[1];
  v31 = v17;
  v18 = a1[2];
  v28 = a1[3];
  v29 = v18;
  v27 = a1[4];
  v19 = swift_allocObject();
  v20 = *(a1 + 1);
  *(v19 + 24) = *a1;
  *(v19 + 16) = v2;
  *(v19 + 40) = v20;
  *(v19 + 56) = a1[4];
  aBlock[4] = sub_24A76F348;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC7520;
  v21 = _Block_copy(aBlock);

  sub_24A67E964(&v31, &v25, &qword_27EF5DFF0, &qword_24A839E00);
  sub_24A67E964(&v30, &v25, &qword_27EF5E008, &unk_24A837700);
  sub_24A67E964(&v29, &v25, &qword_27EF5E030, &qword_24A837710);
  sub_24A67E964(&v28, &v25, &qword_27EF5E048, &qword_24A837718);
  sub_24A67E964(&v27, &v25, &qword_27EF5E048, &qword_24A837718);
  sub_24A82CE24();
  v25 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v7, v21);
  _Block_release(v21);
  (*(v24 + 8))(v7, v4);
  (*(v8 + 8))(v11, v23);
}

uint64_t sub_24A761CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v7 = v4;
  v9 = sub_24A82CDF4();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24A82CE54();
  v13 = *(v37 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v37);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v16;
    v21 = v7;
    v22 = v12;
    v23 = v9;
    v24 = v13;
    v25 = a1;
    v26 = a3;
    v27 = a4;
    v28 = v20;
    *v20 = 0;
    _os_log_impl(&dword_24A675000, v18, v19, "FMDiskIO: save to disk", v20, 2u);
    v29 = v28;
    a4 = v27;
    a3 = v26;
    a1 = v25;
    v13 = v24;
    v9 = v23;
    v12 = v22;
    v7 = v21;
    v16 = v35;
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  v30 = *(v7 + 16);
  v31 = swift_allocObject();
  *(v31 + 16) = v7;
  *(v31 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = a4;
  v32 = _Block_copy(aBlock);

  sub_24A82CE24();
  v39 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v16, v12, v32);
  _Block_release(v32);
  (*(v38 + 8))(v12, v9);
  (*(v13 + 8))(v16, v37);
}

uint64_t sub_24A7620CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24A82CE54();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMDiskIO: save to disk", v15, 2u);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = *(v2 + 16);
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 56) = *(a1 + 32);
  *(v17 + 72) = v18;
  *(v17 + 88) = *(a1 + 64);
  v19 = *(a1 + 16);
  *(v17 + 24) = *a1;
  *(v17 + 16) = v2;
  *(v17 + 104) = *(a1 + 80);
  *(v17 + 40) = v19;
  aBlock[4] = sub_24A76F4D0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC75C0;
  v20 = _Block_copy(aBlock);

  sub_24A6EF948(a1, v24);
  sub_24A82CE24();
  v24[0] = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v7, v20);
  _Block_release(v20);
  (*(v23 + 8))(v7, v4);
  (*(v8 + 8))(v11, v22);
}

void sub_24A762488(uint64_t a1, __int128 *a2)
{
  v120[1] = *MEMORY[0x277D85DE8];
  v106 = sub_24A82CCD4();
  v105 = *(v106 - 8);
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v107 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5E1D0, &qword_24A8377E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v103 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5E1D8, &qword_24A8377F0);
  v109 = *(v11 - 8);
  v12 = *(v109 + 64);
  MEMORY[0x28223BE20](v11);
  v108 = &v103 - v13;
  v14 = sub_24A82C8B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[1];
  v115 = *a2;
  v116 = v19;
  v117 = *(a2 + 4);
  v114 = 0;
  v111 = objc_opt_self();
  v20 = [v111 defaultManager];
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  v110 = a1;
  v112 = v21;
  v113 = v22;
  v23 = sub_24A82CF94();
  v24 = [v20 fileExistsAtPath:v23 isDirectory:&v114];

  if (v24)
  {
LABEL_4:
    v29 = sub_24A82C754();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_24A82C744();
    sub_24A76F354();
    v32 = sub_24A82C734();
    if (v2)
    {

      v34 = v2;
LABEL_27:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v87 = sub_24A82CDC4();
      sub_24A6797D0(v87, qword_281518F88);
      v88 = v34;
      v89 = sub_24A82CD94();
      v90 = sub_24A82D4E4();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v118 = v92;
        *v91 = 136315138;
        swift_getErrorValue();
        v93 = sub_24A82DC74();
        v95 = sub_24A68761C(v93, v94, &v118);

        *(v91 + 4) = v95;
        _os_log_impl(&dword_24A675000, v89, v90, "FMDiskIO: Could not save objects to disk %s", v91, 0xCu);
        sub_24A6876E8(v92);
        MEMORY[0x24C21E1D0](v92, -1, -1);
        MEMORY[0x24C21E1D0](v91, -1, -1);
      }

      else
      {
      }

      goto LABEL_35;
    }

    v35 = v32;
    v36 = v33;
    v37 = v110;
    sub_24A67E964(v110 + *(*v110 + 128), v10, &qword_27EF5E1D0, &qword_24A8377E8);
    if ((*(v109 + 48))(v10, 1, v11) == 1)
    {
      sub_24A67F378(v10, &qword_27EF5E1D0, &qword_24A8377E8);
      v108 = v35;
      v109 = v36;
      v38 = sub_24A82C8E4();
      v39 = *(v37 + 40);
      v40 = *(v37 + 48);
      v118 = v112;
      v119 = v113;

      v104 = v40;
      MEMORY[0x24C21C9E0](v39, v40);
      v41 = sub_24A82CF94();

      v42 = [v38 writeToFile:v41 atomically:1];

      if (v42)
      {
        v103 = v39;
LABEL_9:
        v43 = [v111 defaultManager];
        sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A8327A0;
        v45 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v46 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v47;
        *(inited + 40) = v46;
        v48 = v45;
        v49 = v46;
        sub_24A78AD70(inited);
        swift_setDeallocating();
        sub_24A67F378(inited + 32, &unk_27EF5E190, &unk_24A838C30);
        type metadata accessor for FileAttributeKey(0);
        sub_24A67F008(&qword_281512B90, type metadata accessor for FileAttributeKey);
        v50 = sub_24A82CED4();

        v118 = v112;
        v119 = v113;

        MEMORY[0x24C21C9E0](v103, v104);
        v51 = sub_24A82CF94();

        v118 = 0;
        v52 = [v43 setAttributes:v50 ofItemAtPath:v51 error:&v118];

        if ((v52 & 1) == 0)
        {
          v86 = v118;
          v34 = sub_24A82C7F4();

          swift_willThrow();
          sub_24A67E0F0(v108, v109);

          goto LABEL_27;
        }

        v53 = qword_281515DC8;
        v54 = v118;
        if (v53 != -1)
        {
          swift_once();
        }

        v55 = sub_24A82CDC4();
        sub_24A6797D0(v55, qword_281518F88);

        v56 = sub_24A82CD94();
        v57 = sub_24A82D504();

        v58 = os_log_type_enabled(v56, v57);
        v59 = v103;
        if (v58)
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v120[0] = v61;
          *v60 = 136315138;
          v118 = v112;
          v119 = v113;

          MEMORY[0x24C21C9E0](v59, v104);
          v62 = sub_24A68761C(v118, v119, v120);

          *(v60 + 4) = v62;
          _os_log_impl(&dword_24A675000, v56, v57, "FMDiskIO: Successfully wrote object to disk @ %s", v60, 0xCu);
          sub_24A6876E8(v61);
          MEMORY[0x24C21E1D0](v61, -1, -1);
          MEMORY[0x24C21E1D0](v60, -1, -1);
        }

        sub_24A67E0F0(v108, v109);

LABEL_34:

        goto LABEL_35;
      }

      v35 = v108;
    }

    else
    {
      v74 = v108;
      sub_24A67E8FC(v10, v108, &qword_27EF5E1D8, &qword_24A8377F0);
      v75 = v74 + *(v11 + 44);
      v76 = v107;
      sub_24A82CC94();
      sub_24A67F008(&qword_27EF5E1A0, MEMORY[0x277D08F20]);
      v83 = v106;
      v84 = sub_24A82C734();
      v109 = v36;
      v97 = v84;
      v98 = v85;
      v99 = sub_24A82C8E4();
      sub_24A67E0F0(v97, v98);
      v100 = *(v37 + 40);
      v101 = *(v37 + 48);
      v118 = v112;
      v119 = v113;

      v103 = v100;
      v104 = v101;
      MEMORY[0x24C21C9E0](v100, v101);
      v102 = sub_24A82CF94();

      LODWORD(v97) = [v99 writeToFile:v102 atomically:1];

      (*(v105 + 8))(v76, v83);
      sub_24A67F378(v108, &qword_27EF5E1D8, &qword_24A8377F0);
      if (v97)
      {
        v108 = v35;
        goto LABEL_9;
      }
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v77 = sub_24A82CDC4();
    sub_24A6797D0(v77, qword_281518F88);
    v78 = sub_24A82CD94();
    v79 = sub_24A82D504();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = v35;
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_24A675000, v78, v79, "FMDiskIO: Could not save objects to disk", v81, 2u);
      MEMORY[0x24C21E1D0](v81, -1, -1);
      v82 = v80;
    }

    else
    {
      v82 = v35;
    }

    sub_24A67E0F0(v82, v109);

    goto LABEL_34;
  }

  v25 = [v111 defaultManager];
  sub_24A82C824();
  v26 = sub_24A82C844();
  (*(v15 + 8))(v18, v14);
  v118 = 0;
  v27 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:&v118];

  if (v27)
  {
    v28 = v118;
    goto LABEL_4;
  }

  v63 = v118;
  v64 = sub_24A82C7F4();

  swift_willThrow();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v65 = sub_24A82CDC4();
  sub_24A6797D0(v65, qword_281518F88);
  v66 = v110;

  v67 = sub_24A82CD94();
  v68 = sub_24A82D504();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v120[0] = v70;
    *v69 = 136315138;
    v71 = *(v66 + 40);
    v72 = *(v66 + 48);
    v118 = v112;
    v119 = v113;

    MEMORY[0x24C21C9E0](v71, v72);
    v73 = sub_24A68761C(v118, v119, v120);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_24A675000, v67, v68, "FMDiskIO: Could not create directory for content: %s", v69, 0xCu);
    sub_24A6876E8(v70);
    MEMORY[0x24C21E1D0](v70, -1, -1);
    MEMORY[0x24C21E1D0](v69, -1, -1);
  }

LABEL_35:
  v96 = *MEMORY[0x277D85DE8];
}

void sub_24A763288(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, void (*a10)(void))
{
  v131[1] = *MEMORY[0x277D85DE8];
  v114 = sub_24A82CCD4();
  v113 = *(v114 - 8);
  v18 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v117 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a4;
  v122 = a5;
  v20 = sub_24A6BBA94(a4, a5);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v120 = &v113 - v22;
  v118 = a6;
  v115 = a7;
  v23 = sub_24A6BBA94(a6, a7);
  v119 = *(v23 - 8);
  v24 = *(v119 + 64);
  MEMORY[0x28223BE20](v23);
  v116 = &v113 - v25;
  v26 = sub_24A82C8B4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = a2;
  v127 = 0;
  v124 = objc_opt_self();
  v31 = [v124 defaultManager];
  v32 = a1[3];
  v33 = a1[4];
  v123 = a1;
  v125 = v32;
  v126 = v33;
  v34 = sub_24A82CF94();
  LOBYTE(a5) = [v31 fileExistsAtPath:v34 isDirectory:&v127];

  if (a5)
  {
LABEL_4:
    v39 = sub_24A82C754();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_24A82C744();
    sub_24A6BBA94(a8, a9);
    a10();
    v43 = sub_24A82C734();
    if (v10)
    {

      v45 = v10;
LABEL_21:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v94 = sub_24A82CDC4();
      sub_24A6797D0(v94, qword_281518F88);
      v95 = v45;
      v96 = sub_24A82CD94();
      v97 = sub_24A82D4E4();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v129 = v99;
        *v98 = 136315138;
        swift_getErrorValue();
        v100 = sub_24A82DC74();
        v102 = sub_24A68761C(v100, v101, &v129);

        *(v98 + 4) = v102;
        _os_log_impl(&dword_24A675000, v96, v97, "FMDiskIO: Could not save objects to disk %s", v98, 0xCu);
        sub_24A6876E8(v99);
        MEMORY[0x24C21E1D0](v99, -1, -1);
        MEMORY[0x24C21E1D0](v98, -1, -1);
      }

      else
      {
      }

      goto LABEL_33;
    }

    v46 = v43;
    v47 = v44;
    v48 = v123;
    v49 = v120;
    v50 = v121;
    v51 = v122;
    sub_24A67E964(v48 + *(*v48 + 128), v120, v121, v122);
    if ((*(v119 + 48))(v49, 1, v23) == 1)
    {
      sub_24A67F378(v49, v50, v51);
      v122 = v46;
      v52 = sub_24A82C8E4();
      v53 = v48[5];
      v54 = v48[6];
      v129 = v125;
      v130 = v126;

      v120 = v53;
      v55 = v54;
      MEMORY[0x24C21C9E0](v53, v54);
      v56 = sub_24A82CF94();

      v57 = [v52 writeToFile:v56 atomically:1];

      if (v57)
      {
LABEL_8:
        v119 = v47;
        v58 = [v124 defaultManager];
        sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A8327A0;
        v60 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v61 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v62;
        *(inited + 40) = v61;
        v63 = v60;
        v64 = v61;
        sub_24A78AD70(inited);
        swift_setDeallocating();
        sub_24A67F378(inited + 32, &unk_27EF5E190, &unk_24A838C30);
        type metadata accessor for FileAttributeKey(0);
        sub_24A67F008(&qword_281512B90, type metadata accessor for FileAttributeKey);
        v65 = sub_24A82CED4();

        v129 = v125;
        v130 = v126;

        MEMORY[0x24C21C9E0](v120, v55);
        v66 = sub_24A82CF94();

        v129 = 0;
        LOBYTE(inited) = [v58 setAttributes:v65 ofItemAtPath:v66 error:&v129];

        if ((inited & 1) == 0)
        {
          v93 = v129;
          v45 = sub_24A82C7F4();

          swift_willThrow();
          sub_24A67E0F0(v122, v119);

          goto LABEL_21;
        }

        v67 = qword_281515DC8;
        v68 = v129;
        if (v67 != -1)
        {
          swift_once();
        }

        v69 = sub_24A82CDC4();
        sub_24A6797D0(v69, qword_281518F88);

        v70 = sub_24A82CD94();
        v71 = sub_24A82D504();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v131[0] = v73;
          *v72 = 136315138;
          v129 = v125;
          v130 = v126;

          MEMORY[0x24C21C9E0](v120, v55);
          v74 = sub_24A68761C(v129, v130, v131);

          *(v72 + 4) = v74;
          _os_log_impl(&dword_24A675000, v70, v71, "FMDiskIO: Successfully wrote object to disk @ %s", v72, 0xCu);
          sub_24A6876E8(v73);
          MEMORY[0x24C21E1D0](v73, -1, -1);
          MEMORY[0x24C21E1D0](v72, -1, -1);
        }

        v75 = v122;
        v76 = v119;
LABEL_32:
        sub_24A67E0F0(v75, v76);

        goto LABEL_33;
      }
    }

    else
    {
      v121 = v42;
      v88 = v116;
      sub_24A67E8FC(v49, v116, v118, v115);
      v89 = v88 + *(v23 + 44);
      sub_24A82CC94();
      sub_24A67F008(&qword_27EF5E1A0, MEMORY[0x277D08F20]);
      v90 = v114;
      v91 = sub_24A82C734();
      v122 = v46;
      v103 = v91;
      v104 = v92;
      v105 = sub_24A82C8E4();
      sub_24A67E0F0(v103, v104);
      v107 = v48[5];
      v106 = v48[6];
      v129 = v125;
      v130 = v126;

      v120 = v107;
      v55 = v106;
      MEMORY[0x24C21C9E0](v107, v106);
      v108 = sub_24A82CF94();

      LODWORD(v106) = [v105 writeToFile:v108 atomically:1];

      (*(v113 + 8))(v117, v90);
      sub_24A67F378(v116, v118, v115);
      if (v106)
      {
        goto LABEL_8;
      }
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v109 = sub_24A82CDC4();
    sub_24A6797D0(v109, qword_281518F88);
    v70 = sub_24A82CD94();
    v110 = sub_24A82D504();
    if (os_log_type_enabled(v70, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_24A675000, v70, v110, "FMDiskIO: Could not save objects to disk", v111, 2u);
      MEMORY[0x24C21E1D0](v111, -1, -1);
    }

    v75 = v122;
    v76 = v47;
    goto LABEL_32;
  }

  v35 = [v124 defaultManager];
  sub_24A82C824();
  v36 = sub_24A82C844();
  (*(v27 + 8))(v30, v26);
  v129 = 0;
  v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v129];

  if (v37)
  {
    v38 = v129;
    goto LABEL_4;
  }

  v77 = v129;
  v78 = sub_24A82C7F4();

  swift_willThrow();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v79 = sub_24A82CDC4();
  sub_24A6797D0(v79, qword_281518F88);
  v80 = v123;

  v81 = sub_24A82CD94();
  v82 = sub_24A82D504();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v131[0] = v84;
    *v83 = 136315138;
    v85 = v80[5];
    v86 = v80[6];
    v129 = v125;
    v130 = v126;

    MEMORY[0x24C21C9E0](v85, v86);
    v87 = sub_24A68761C(v129, v130, v131);

    *(v83 + 4) = v87;
    _os_log_impl(&dword_24A675000, v81, v82, "FMDiskIO: Could not create directory for content: %s", v83, 0xCu);
    sub_24A6876E8(v84);
    MEMORY[0x24C21E1D0](v84, -1, -1);
    MEMORY[0x24C21E1D0](v83, -1, -1);
  }

LABEL_33:
  v112 = *MEMORY[0x277D85DE8];
}

void sub_24A764040(uint64_t a1, uint64_t a2)
{
  v113[1] = *MEMORY[0x277D85DE8];
  v101 = sub_24A82CCD4();
  v100 = *(v101 - 8);
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v102 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5E250, &qword_24A837840);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v97 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5E258, &qword_24A837848);
  v104 = *(v11 - 8);
  v12 = *(v104 + 64);
  MEMORY[0x28223BE20](v11);
  v103 = &v97 - v13;
  v14 = sub_24A82C8B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a2;
  v109 = 0;
  v106 = objc_opt_self();
  v19 = [v106 defaultManager];
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  v105 = a1;
  v107 = v20;
  v108 = v21;
  v22 = sub_24A82CF94();
  LOBYTE(a1) = [v19 fileExistsAtPath:v22 isDirectory:&v109];

  if (a1)
  {
LABEL_4:
    v27 = sub_24A82C754();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_24A82C744();
    sub_24A6BBA94(&qword_27EF5E260, &qword_24A837850);
    sub_24A76F57C(&qword_27EF5E268, sub_24A76F4DC);
    v30 = sub_24A82C734();
    if (v2)
    {

      v32 = v2;
LABEL_27:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v80 = sub_24A82CDC4();
      sub_24A6797D0(v80, qword_281518F88);
      v81 = v32;
      v82 = sub_24A82CD94();
      v83 = sub_24A82D4E4();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v111 = v85;
        *v84 = 136315138;
        swift_getErrorValue();
        v86 = sub_24A82DC74();
        v88 = sub_24A68761C(v86, v87, &v111);

        *(v84 + 4) = v88;
        _os_log_impl(&dword_24A675000, v82, v83, "FMDiskIO: Could not save objects to disk %s", v84, 0xCu);
        sub_24A6876E8(v85);
        MEMORY[0x24C21E1D0](v85, -1, -1);
        MEMORY[0x24C21E1D0](v84, -1, -1);
      }

      else
      {
      }

      goto LABEL_35;
    }

    v33 = v30;
    v34 = v31;
    v35 = v105;
    sub_24A67E964(v105 + *(*v105 + 128), v10, &qword_27EF5E250, &qword_24A837840);
    if ((*(v104 + 48))(v10, 1, v11) == 1)
    {
      sub_24A67F378(v10, &qword_27EF5E250, &qword_24A837840);
      v104 = v33;
      v36 = sub_24A82C8E4();
      v38 = *(v35 + 40);
      v37 = *(v35 + 48);
      v111 = v107;
      v112 = v108;

      v99 = v37;
      MEMORY[0x24C21C9E0](v38, v37);
      v39 = sub_24A82CF94();

      v40 = [v36 writeToFile:v39 atomically:1];

      if (v40)
      {
        v98 = v38;
LABEL_9:
        v103 = v34;
        v41 = [v106 defaultManager];
        sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A8327A0;
        v43 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v44 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v45;
        *(inited + 40) = v44;
        v46 = v43;
        v47 = v44;
        sub_24A78AD70(inited);
        swift_setDeallocating();
        sub_24A67F378(inited + 32, &unk_27EF5E190, &unk_24A838C30);
        type metadata accessor for FileAttributeKey(0);
        sub_24A67F008(&qword_281512B90, type metadata accessor for FileAttributeKey);
        v48 = sub_24A82CED4();

        v111 = v107;
        v112 = v108;

        MEMORY[0x24C21C9E0](v98, v99);
        v49 = sub_24A82CF94();

        v111 = 0;
        v50 = [v41 setAttributes:v48 ofItemAtPath:v49 error:&v111];

        if ((v50 & 1) == 0)
        {
          v79 = v111;
          v32 = sub_24A82C7F4();

          swift_willThrow();
          sub_24A67E0F0(v104, v103);

          goto LABEL_27;
        }

        v51 = qword_281515DC8;
        v52 = v111;
        if (v51 != -1)
        {
          swift_once();
        }

        v53 = sub_24A82CDC4();
        sub_24A6797D0(v53, qword_281518F88);

        v54 = sub_24A82CD94();
        v55 = sub_24A82D504();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v113[0] = v57;
          *v56 = 136315138;
          v111 = v107;
          v112 = v108;

          MEMORY[0x24C21C9E0](v98, v99);
          v58 = sub_24A68761C(v111, v112, v113);

          *(v56 + 4) = v58;
          _os_log_impl(&dword_24A675000, v54, v55, "FMDiskIO: Successfully wrote object to disk @ %s", v56, 0xCu);
          sub_24A6876E8(v57);
          MEMORY[0x24C21E1D0](v57, -1, -1);
          MEMORY[0x24C21E1D0](v56, -1, -1);
        }

        sub_24A67E0F0(v104, v103);

LABEL_34:

        goto LABEL_35;
      }

      v33 = v104;
    }

    else
    {
      v70 = v103;
      sub_24A67E8FC(v10, v103, &qword_27EF5E258, &qword_24A837848);
      v71 = v70 + *(v11 + 44);
      sub_24A82CC94();
      sub_24A67F008(&qword_27EF5E1A0, MEMORY[0x277D08F20]);
      v78 = v101;
      v90 = sub_24A82C734();
      v92 = v91;
      v93 = sub_24A82C8E4();
      sub_24A67E0F0(v90, v92);
      v94 = *(v35 + 40);
      v95 = *(v35 + 48);
      v111 = v107;
      v112 = v108;

      v98 = v94;
      v99 = v95;
      MEMORY[0x24C21C9E0](v94, v95);
      v96 = sub_24A82CF94();

      LODWORD(v90) = [v93 writeToFile:v96 atomically:1];

      (*(v100 + 8))(v102, v78);
      sub_24A67F378(v103, &qword_27EF5E258, &qword_24A837848);
      if (v90)
      {
        v104 = v33;
        goto LABEL_9;
      }
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v72 = sub_24A82CDC4();
    sub_24A6797D0(v72, qword_281518F88);
    v73 = sub_24A82CD94();
    v74 = sub_24A82D504();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = v33;
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_24A675000, v73, v74, "FMDiskIO: Could not save objects to disk", v76, 2u);
      MEMORY[0x24C21E1D0](v76, -1, -1);
      v77 = v75;
    }

    else
    {
      v77 = v33;
    }

    sub_24A67E0F0(v77, v34);

    goto LABEL_34;
  }

  v23 = [v106 defaultManager];
  sub_24A82C824();
  v24 = sub_24A82C844();
  (*(v15 + 8))(v18, v14);
  v111 = 0;
  v25 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v111];

  if (v25)
  {
    v26 = v111;
    goto LABEL_4;
  }

  v59 = v111;
  v60 = sub_24A82C7F4();

  swift_willThrow();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v61 = sub_24A82CDC4();
  sub_24A6797D0(v61, qword_281518F88);
  v62 = v105;

  v63 = sub_24A82CD94();
  v64 = sub_24A82D504();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v113[0] = v66;
    *v65 = 136315138;
    v67 = *(v62 + 40);
    v68 = *(v62 + 48);
    v111 = v107;
    v112 = v108;

    MEMORY[0x24C21C9E0](v67, v68);
    v69 = sub_24A68761C(v111, v112, v113);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_24A675000, v63, v64, "FMDiskIO: Could not create directory for content: %s", v65, 0xCu);
    sub_24A6876E8(v66);
    MEMORY[0x24C21E1D0](v66, -1, -1);
    MEMORY[0x24C21E1D0](v65, -1, -1);
  }

LABEL_35:
  v89 = *MEMORY[0x277D85DE8];
}

void sub_24A764E04(uint64_t a1, __int128 *a2)
{
  v122 = *MEMORY[0x277D85DE8];
  v104 = sub_24A82CCD4();
  v103 = *(v104 - 8);
  v5 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v105 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5E238, &qword_24A837830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v101 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5E240, &qword_24A837838);
  v107 = *(v11 - 8);
  v12 = *(v107 + 64);
  MEMORY[0x28223BE20](v11);
  v106 = &v101 - v13;
  v14 = sub_24A82C8B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[3];
  v118 = a2[2];
  v119 = v19;
  v120 = a2[4];
  v121 = *(a2 + 10);
  v20 = a2[1];
  v116 = *a2;
  v117 = v20;
  v112 = 0;
  v109 = objc_opt_self();
  v21 = [v109 defaultManager];
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  v108 = a1;
  v110 = v22;
  v111 = v23;
  v24 = sub_24A82CF94();
  LOBYTE(a1) = [v21 fileExistsAtPath:v24 isDirectory:&v112];

  if (a1)
  {
LABEL_4:
    v29 = sub_24A82C754();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_24A82C744();
    sub_24A76F4DC();
    v32 = sub_24A82C734();
    if (v2)
    {

      v34 = v2;
LABEL_26:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v85 = sub_24A82CDC4();
      sub_24A6797D0(v85, qword_281518F88);
      v86 = v34;
      v87 = sub_24A82CD94();
      v88 = sub_24A82D4E4();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v113 = v90;
        *v89 = 136315138;
        swift_getErrorValue();
        v91 = sub_24A82DC74();
        v93 = sub_24A68761C(v91, v92, &v113);

        *(v89 + 4) = v93;
        _os_log_impl(&dword_24A675000, v87, v88, "FMDiskIO: Could not save objects to disk %s", v89, 0xCu);
        sub_24A6876E8(v90);
        MEMORY[0x24C21E1D0](v90, -1, -1);
        MEMORY[0x24C21E1D0](v89, -1, -1);
      }

      else
      {
      }

      goto LABEL_34;
    }

    v35 = v32;
    v36 = v33;
    v37 = v108;
    sub_24A67E964(v108 + *(*v108 + 128), v10, &qword_27EF5E238, &qword_24A837830);
    if ((*(v107 + 48))(v10, 1, v11) == 1)
    {
      sub_24A67F378(v10, &qword_27EF5E238, &qword_24A837830);
      v38 = v35;
      v107 = v36;
      v39 = sub_24A82C8E4();
      v40 = *(v37 + 40);
      v41 = *(v37 + 48);
      v113 = v110;
      v114 = v111;

      v102 = v40;
      v101 = v41;
      MEMORY[0x24C21C9E0](v40, v41);
      v42 = sub_24A82CF94();

      v43 = [v39 writeToFile:v42 atomically:1];

      if (v43)
      {
LABEL_8:
        v44 = [v109 defaultManager];
        sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A8327A0;
        v46 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v47 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v48;
        *(inited + 40) = v47;
        v49 = v46;
        v50 = v47;
        sub_24A78AD70(inited);
        swift_setDeallocating();
        sub_24A67F378(inited + 32, &unk_27EF5E190, &unk_24A838C30);
        type metadata accessor for FileAttributeKey(0);
        sub_24A67F008(&qword_281512B90, type metadata accessor for FileAttributeKey);
        v51 = sub_24A82CED4();

        v113 = v110;
        v114 = v111;

        MEMORY[0x24C21C9E0](v102, v101);
        v52 = sub_24A82CF94();

        v113 = 0;
        LOBYTE(v47) = [v44 setAttributes:v51 ofItemAtPath:v52 error:&v113];

        if ((v47 & 1) == 0)
        {
          v84 = v113;
          v34 = sub_24A82C7F4();

          swift_willThrow();
          sub_24A67E0F0(v38, v107);

          goto LABEL_26;
        }

        v53 = qword_281515DC8;
        v54 = v113;
        if (v53 != -1)
        {
          swift_once();
        }

        v55 = sub_24A82CDC4();
        sub_24A6797D0(v55, qword_281518F88);

        v56 = sub_24A82CD94();
        v57 = sub_24A82D504();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v115 = v59;
          *v58 = 136315138;
          v113 = v110;
          v114 = v111;

          MEMORY[0x24C21C9E0](v102, v101);
          v60 = sub_24A68761C(v113, v114, &v115);

          *(v58 + 4) = v60;
          _os_log_impl(&dword_24A675000, v56, v57, "FMDiskIO: Successfully wrote object to disk @ %s", v58, 0xCu);
          sub_24A6876E8(v59);
          MEMORY[0x24C21E1D0](v59, -1, -1);
          MEMORY[0x24C21E1D0](v58, -1, -1);
        }

        sub_24A67E0F0(v38, v107);

LABEL_33:

        goto LABEL_34;
      }

      v35 = v38;
    }

    else
    {
      v72 = v106;
      sub_24A67E8FC(v10, v106, &qword_27EF5E240, &qword_24A837838);
      v73 = v72 + *(v11 + 44);
      v74 = v105;
      sub_24A82CC94();
      sub_24A67F008(&qword_27EF5E1A0, MEMORY[0x277D08F20]);
      v81 = v104;
      v82 = sub_24A82C734();
      v107 = v36;
      v95 = v82;
      v96 = v83;
      v97 = sub_24A82C8E4();
      sub_24A67E0F0(v95, v96);
      v98 = *(v37 + 40);
      v99 = *(v37 + 48);
      v113 = v110;
      v114 = v111;

      v102 = v98;
      v101 = v99;
      MEMORY[0x24C21C9E0](v98, v99);
      v100 = sub_24A82CF94();

      LODWORD(v95) = [v97 writeToFile:v100 atomically:1];

      (*(v103 + 8))(v74, v81);
      sub_24A67F378(v106, &qword_27EF5E240, &qword_24A837838);
      if (v95)
      {
        v38 = v35;
        goto LABEL_8;
      }
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v75 = sub_24A82CDC4();
    sub_24A6797D0(v75, qword_281518F88);
    v76 = sub_24A82CD94();
    v77 = sub_24A82D504();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = v35;
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_24A675000, v76, v77, "FMDiskIO: Could not save objects to disk", v79, 2u);
      MEMORY[0x24C21E1D0](v79, -1, -1);
      v80 = v78;
    }

    else
    {
      v80 = v35;
    }

    sub_24A67E0F0(v80, v107);

    goto LABEL_33;
  }

  v25 = [v109 defaultManager];
  sub_24A82C824();
  v26 = sub_24A82C844();
  (*(v15 + 8))(v18, v14);
  v113 = 0;
  v27 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:&v113];

  if (v27)
  {
    v28 = v113;
    goto LABEL_4;
  }

  v61 = v113;
  v62 = sub_24A82C7F4();

  swift_willThrow();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v63 = sub_24A82CDC4();
  sub_24A6797D0(v63, qword_281518F88);
  v64 = v108;

  v65 = sub_24A82CD94();
  v66 = sub_24A82D504();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v115 = v68;
    *v67 = 136315138;
    v69 = *(v64 + 40);
    v70 = *(v64 + 48);
    v113 = v110;
    v114 = v111;

    MEMORY[0x24C21C9E0](v69, v70);
    v71 = sub_24A68761C(v113, v114, &v115);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_24A675000, v65, v66, "FMDiskIO: Could not create directory for content: %s", v67, 0xCu);
    sub_24A6876E8(v68);
    MEMORY[0x24C21E1D0](v68, -1, -1);
    MEMORY[0x24C21E1D0](v67, -1, -1);
  }

LABEL_34:
  v94 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A765C04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24A76F5F4;
  *(v6 + 24) = v5;
  v11[4] = sub_24A680674;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A6805E4;
  v11[3] = &unk_285DC7868;
  v7 = _Block_copy(v11);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v14;
    v10 = v13;
    *a1 = v12;
    *(a1 + 16) = v10;
    *(a1 + 32) = v9;
  }

  return result;
}

uint64_t sub_24A765D84()
{
  v1 = v0;
  v8 = 0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24A76F6BC;
  *(v4 + 24) = v3;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC78E0;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void sub_24A765EE4(void *a1, uint64_t *a2)
{
  v82 = a2;
  v81 = sub_24A82CC54();
  v79 = *(v81 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v78 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_24A82CCD4();
  v80 = *(v87 - 8);
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v87);
  v7 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5E1D0, &qword_24A8377E8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = v74 - v10;
  v85 = sub_24A6BBA94(&qword_27EF5E1D8, &qword_24A8377F0);
  v83 = *(v85 - 8);
  v11 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v88 = v74 - v12;
  v89 = sub_24A82C8B4();
  v13 = *(v89 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v89);
  v16 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v86 = v7;
  v17 = sub_24A82CDC4();
  v90 = sub_24A6797D0(v17, qword_281518F88);
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24A675000, v18, v19, "FMDiskIO: read from disk", v20, 2u);
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  v21 = [objc_opt_self() defaultManager];
  v23 = a1[3];
  v22 = a1[4];
  v25 = a1[5];
  v24 = a1[6];
  *&v91 = v23;
  *(&v91 + 1) = v22;

  MEMORY[0x24C21C9E0](v25, v24);
  v26 = sub_24A82CF94();

  v27 = [v21 fileExistsAtPath_];

  if (v27)
  {
    v77 = a1;
    *&v91 = v23;
    *(&v91 + 1) = v22;

    MEMORY[0x24C21C9E0](v25, v24);
    sub_24A82C824();

    v28 = sub_24A82C8C4();
    v37 = v36;
    v38 = v24;
    v39 = v28;
    (*(v13 + 8))(v16, v89);

    sub_24A681458(v39, v37);
    v40 = sub_24A82CD94();
    v41 = sub_24A82D504();

    sub_24A67E0F0(v39, v37);
    LODWORD(v89) = v41;
    v42 = os_log_type_enabled(v40, v41);
    v74[3] = v38;
    v74[2] = v23;
    v74[1] = v22;
    v75 = v37;
    v76 = v39;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      v94 = v74[0];
      *v43 = 136315394;
      *&v91 = v23;
      *(&v91 + 1) = v22;

      v44 = v40;
      MEMORY[0x24C21C9E0](v25, v38);
      v45 = sub_24A68761C(v91, *(&v91 + 1), &v94);

      *(v43 + 4) = v45;
      *(v43 + 12) = 2080;
      v46 = sub_24A82C8D4();
      v48 = sub_24A68761C(v46, v47, &v94);

      *(v43 + 14) = v48;
      _os_log_impl(&dword_24A675000, v40, v89, "FMDiskIO: file: %s data: %s", v43, 0x16u);
      v49 = v74[0];
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v49, -1, -1);
      MEMORY[0x24C21E1D0](v43, -1, -1);
    }

    else
    {
    }

    v50 = v87;
    v51 = v85;
    v52 = sub_24A82C724();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    sub_24A82C714();
    v55 = v84;
    sub_24A67E964(v77 + *(*v77 + 128), v84, &qword_27EF5E1D0, &qword_24A8377E8);
    v56 = (*(v83 + 48))(v55, 1, v51);
    v57 = v86;
    if (v56 == 1)
    {
      sub_24A67F378(v55, &qword_27EF5E1D0, &qword_24A8377E8);
      sub_24A76F5FC();
      v58 = v76;
      v59 = v75;
      sub_24A82C704();
      sub_24A67E0F0(v58, v59);
    }

    else
    {
      sub_24A67E8FC(v55, v88, &qword_27EF5E1D8, &qword_24A8377F0);
      sub_24A67F008(&unk_27EF5E280, MEMORY[0x277D08F20]);
      sub_24A82C704();
      v68 = *(v51 + 44);
      v69 = v78;
      sub_24A82CC64();
      v70 = sub_24A82CCC4();
      v72 = v71;
      (*(v79 + 8))(v69, v81);
      sub_24A76F5FC();
      sub_24A82C704();
      v73 = (v80 + 8);

      sub_24A67E0F0(v70, v72);
      sub_24A67E0F0(v76, v75);
      (*v73)(v57, v50);
      sub_24A67F378(v88, &qword_27EF5E1D8, &qword_24A8377F0);
    }

    v60 = v93;
    v61 = v82;
    v62 = *v82;
    v63 = v82[1];
    v64 = v82[2];
    v65 = v82[3];
    v66 = v82[4];
    v67 = v92;
    *v82 = v91;
    *(v61 + 1) = v67;
    v61[4] = v60;
    sub_24A76F650(v62);
  }

  else
  {
    v29 = v22;
    v30 = v24;

    v90 = sub_24A82CD94();
    v31 = sub_24A82D4E4();

    if (os_log_type_enabled(v90, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v94 = v33;
      *v32 = 136315138;
      *&v91 = v23;
      *(&v91 + 1) = v29;

      MEMORY[0x24C21C9E0](v25, v30);
      v34 = sub_24A68761C(v91, *(&v91 + 1), &v94);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_24A675000, v90, v31, "FMDiskIO: Disk archive does not exist at: %s", v32, 0xCu);
      sub_24A6876E8(v33);
      MEMORY[0x24C21E1D0](v33, -1, -1);
      MEMORY[0x24C21E1D0](v32, -1, -1);
    }

    else
    {
      v35 = v90;
    }
  }
}

uint64_t sub_24A766C5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24A82D744();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_24A766CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_24A6BBA94(&qword_27EF5E200, &qword_24A83BA80) + 48);
  v5 = *(sub_24A6BBA94(&qword_27EF5E1F8, &unk_24A837800) + 48);
  v6 = sub_24A82CAA4();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_24A68FE04(a1 + v4, a2 + v5, type metadata accessor for FMIPDeviceConnectedState);
}

uint64_t sub_24A766DB4(uint64_t a1, const void *a2, void (*a3)(_BYTE *))
{
  memcpy(__dst, a2, sizeof(__dst));
  result = (*(*a1 + 352))(__dst);
  if (a3)
  {
    memcpy(v7, __dst, sizeof(v7));
    memcpy(__src, __dst, sizeof(__src));
    nullsub_1(__src);
    memcpy(v6, __src, sizeof(v6));
    sub_24A76ECE4(v7, v9);
    a3(v6);
    memcpy(v9, v6, sizeof(v9));
    return sub_24A67F378(v9, &unk_27EF5E0D0, &qword_24A8319E0);
  }

  return result;
}

void sub_24A766EA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  v4 = MEMORY[0x24C21D990]();
  sub_24A762488(a1, v5);
  objc_autoreleasePoolPop(v4);
}

void sub_24A766F0C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x24C21D990]();
  sub_24A763288(a1, v3, v5, &qword_27EF5E160, &qword_24A8377A8, &qword_27EF5E168, &unk_24A8377B0, &qword_27EF5E170, &qword_24A836D58, sub_24A76F288);
  objc_autoreleasePoolPop(v4);
}

void sub_24A766FA8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x24C21D990]();
  sub_24A763288(a1, v3, v5, &qword_27EF5E210, &qword_24A837818, &qword_27EF5E218, &qword_24A837820, &unk_27EF5E220, &unk_24A8343D0, sub_24A76F41C);
  objc_autoreleasePoolPop(v4);
}

void sub_24A767044(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x24C21D990]();
  sub_24A763288(a1, v3, v5, &qword_27EF5E1A8, &qword_24A8377D0, &unk_27EF5E1B0, &unk_24A8377D8, &qword_27EF5DC18, &qword_24A836D50, sub_24A714B30);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_24A7670E0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04() & 1;
  }
}

void sub_24A767138(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x24C21D990]();
  sub_24A764040(a1, v3);
  objc_autoreleasePoolPop(v4);
}

void sub_24A767190(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v5 = MEMORY[0x24C21D990]();
  sub_24A764E04(a1, v6);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_24A767204@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_24A6BBA94(&qword_27EF5E200, &qword_24A83BA80);
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v45 - v4;
  v5 = type metadata accessor for FMIPDeviceConnectedState(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CAA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A6BBA94(&qword_27EF5E208, &qword_24A837810);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v51 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v47 = &v45 - v20;
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[4];
  v50 = v24;
  if (v25)
  {
    v26 = v23;
LABEL_10:
    v46 = (v25 - 1) & v25;
    v30 = __clz(__rbit64(v25)) | (v26 << 6);
    (*(v11 + 16))(v14, *(v22 + 48) + *(v11 + 72) * v30, v10);
    sub_24A68FE04(*(v22 + 56) + *(v6 + 72) * v30, v9, type metadata accessor for FMIPDeviceConnectedState);
    v31 = v9;
    v32 = v49;
    v33 = *(v49 + 48);
    v34 = v47;
    (*(v11 + 32))();
    sub_24A68D628(v31, v34 + v33, type metadata accessor for FMIPDeviceConnectedState);
    v35 = v48;
    (*(v48 + 56))(v34, 0, 1, v32);
    v36 = v46;
    v29 = v26;
LABEL_11:
    *v1 = v22;
    v1[1] = v21;
    v37 = v51;
    v1[2] = v50;
    v1[3] = v29;
    v1[4] = v36;
    v38 = v1[5];
    v39 = v1[6];
    sub_24A67E8FC(v34, v37, &qword_27EF5E208, &qword_24A837810);
    v40 = 1;
    v41 = (*(v35 + 48))(v37, 1, v32);
    v42 = v52;
    if (v41 != 1)
    {
      v43 = v45;
      sub_24A67E8FC(v37, v45, &qword_27EF5E200, &qword_24A83BA80);
      v38(v43);
      sub_24A67F378(v43, &qword_27EF5E200, &qword_24A83BA80);
      v40 = 0;
    }

    v44 = sub_24A6BBA94(&qword_27EF5E1F8, &unk_24A837800);
    return (*(*(v44 - 8) + 56))(v42, v40, 1, v44);
  }

  else
  {
    v27 = (v24 + 64) >> 6;
    if (v27 <= v23 + 1)
    {
      v28 = v23 + 1;
    }

    else
    {
      v28 = (v24 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        v34 = v47;
        v35 = v48;
        v32 = v49;
        (*(v48 + 56))(v47, 1, 1, v49);
        v36 = 0;
        goto LABEL_11;
      }

      v25 = *(v21 + 8 * v26);
      ++v23;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_24A76768C(uint64_t a1, unsigned __int8 *a2)
{
  v162 = sub_24A82CA34();
  *&v191 = *(v162 - 8);
  v4 = *(v191 + 64);
  MEMORY[0x28223BE20](v162);
  v6 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v160 = &v148 - v12;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v13 = *(*(updated - 8) + 64);
  v14 = MEMORY[0x28223BE20](updated);
  v188 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v187 = &v148 - v16;
  v17 = type metadata accessor for FMIPItem();
  v18 = *(v17 - 8);
  v189 = v17;
  *&v190 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v186 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v148 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v148 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v185 = &v148 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v164 = &v148 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v148 - v32;
  v163 = *a2;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v34 = sub_24A82CDC4();
  v35 = sub_24A6797D0(v34, qword_281518F88);

  v158 = v35;
  v36 = sub_24A82CD94();
  v37 = sub_24A82D504();
  v38 = os_log_type_enabled(v36, v37);
  v166 = v6;
  v161 = v11;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v193[0] = v184;
    *v39 = 134218242;
    *(v39 + 4) = *(a1 + 16);

    *(v39 + 12) = 2080;
    v192[0] = v163;
    v40 = FMIPLocationType.rawValue.getter();
    v42 = sub_24A68761C(v40, v41, v193);

    *(v39 + 14) = v42;
    _os_log_impl(&dword_24A675000, v36, v37, "FMIPDataManager: updateItemLocations %ld type %s", v39, 0x16u);
    v43 = v184;
    sub_24A6876E8(v184);
    MEMORY[0x24C21E1D0](v43, -1, -1);
    MEMORY[0x24C21E1D0](v39, -1, -1);
  }

  else
  {
  }

  v45 = v164;
  v46 = *(a1 + 16);
  v47 = v189;
  if (!v46)
  {
    return MEMORY[0x277D84F90];
  }

  v157 = (*(v190 + 80) + 32) & ~*(v190 + 80);
  v48 = a1 + v157;
  v49 = *(v190 + 72);
  v149 = (v27 + 392);
  v155 = v24 + 392;
  v156 = v49;
  v153 = (v191 + 56);
  v154 = (v191 + 16);
  v151 = (v191 + 32);
  v152 = (v191 + 48);
  v50 = MEMORY[0x277D84F90];
  *&v44 = 136315650;
  v148 = v44;
  v165 = v33;
  v150 = v24;
  do
  {
    v183 = v48;
    v184 = v46;
    sub_24A68FE04(v48, v33, type metadata accessor for FMIPItem);
    v196 = 0;
    v197 = 0uLL;
    v194 = 0;
    v195 = 0uLL;
    v51 = *(v33 + 49);
    if (v51)
    {
      v192[0] = 16;
      FMIPLocation.init(location:type:)(v51, v192, v193);
      v52 = v193[1];
      v53 = v193[2];
      v54 = 256;
      if (!BYTE1(v193[0]))
      {
        v54 = 0;
      }

      v55 = v54 | LOBYTE(v193[0]);
      v56 = 0x10000;
      if (!BYTE2(v193[0]))
      {
        v56 = 0;
      }

      v57 = v55 | v56 | (BYTE3(v193[0]) << 24);
      swift_beginAccess();
      v58 = v197;
      v196 = v57;
      *&v197 = v52;
      *(&v197 + 1) = v53;
    }

    v59 = *(v33 + 40);
    if (v59)
    {
      v192[0] = 16;
      FMIPLocation.init(location:type:)(v59, v192, v193);
      v60 = v193[1];
      v61 = v193[2];
      v62 = 256;
      if (!BYTE1(v193[0]))
      {
        v62 = 0;
      }

      v63 = v62 | LOBYTE(v193[0]);
      v64 = 0x10000;
      if (!BYTE2(v193[0]))
      {
        v64 = 0;
      }

      v65 = v63 | v64 | (BYTE3(v193[0]) << 24);
      swift_beginAccess();
      v66 = v195;
      v194 = v65;
      *&v195 = v60;
      *(&v195 + 1) = v61;
    }

    sub_24A68FE04(v33, v45, type metadata accessor for FMIPItem);
    v67 = sub_24A82CD94();
    v68 = sub_24A82D504();
    v69 = os_log_type_enabled(v67, v68);
    v182 = v50;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v193[0] = v71;
      *v70 = v148;
      v72 = (v45 + v47[14]);
      v73 = v45;
      v74 = *v72;
      v75 = v72[1];

      v76 = v73;
      v33 = v165;
      sub_24A69004C(v76, type metadata accessor for FMIPItem);
      v77 = sub_24A68761C(v74, v75, v193);

      *(v70 + 4) = v77;
      v47 = v189;
      *(v70 + 12) = 1024;
      swift_beginAccess();
      *(v70 + 14) = v197 != 0;
      *(v70 + 18) = 1024;
      swift_beginAccess();
      *(v70 + 20) = v195 != 0;
      _os_log_impl(&dword_24A675000, v67, v68, "FMIPDataManager: updateItemLocations item %s location: %{BOOL}d, crowdsourcedLocation: %{BOOL}d", v70, 0x18u);
      sub_24A6876E8(v71);
      MEMORY[0x24C21E1D0](v71, -1, -1);
      MEMORY[0x24C21E1D0](v70, -1, -1);
    }

    else
    {

      sub_24A69004C(v45, type metadata accessor for FMIPItem);
    }

    sub_24A68FE04(v33, v27, type metadata accessor for FMIPItem);
    v78 = v187;
    *v187 = v163;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v79 = v196;
    v191 = v197;
    swift_beginAccess();
    v80 = v194;
    v81 = v195;
    v82 = *&v27[v47[19]];
    v83 = v191;
    v190 = v195;
    if (!v191)
    {
      v79 = *(v27 + 48);
      v191 = *v149;
      v84 = v191;
      v81 = v190;
    }

    v85 = v27[v47[25]];
    v86 = v81;
    if (v85 == 1)
    {
      v87 = v191;
      v88 = v81;
      v89 = v83;

      v79 = 0;
      v191 = 0u;
    }

    else
    {
      v90 = v83;
      v91 = v86;
    }

    memcpy(v193, v27 + 8, sizeof(v193));
    memcpy(v24 + 8, v27 + 8, 0x121uLL);
    *(v24 + 38) = *(v27 + 38);
    if (!v86)
    {
      v80 = *(v27 + 39);
      v190 = *(v27 + 20);
      v92 = v190;
    }

    *(v24 + 39) = v80;
    *(v24 + 20) = v190;
    v93 = *(v27 + 43);
    *(v24 + 42) = *(v27 + 42);
    *(v24 + 43) = v93;
    v180 = v93;
    v94 = *(v27 + 45);
    *(v24 + 44) = *(v27 + 44);
    *(v24 + 45) = v94;
    v181 = v94;
    v95 = *(v27 + 47);
    *(v24 + 46) = *(v27 + 46);
    *(v24 + 47) = v95;
    *&v190 = v95;
    v96 = v189;
    v24[v189[21]] = v27[v189[21]];
    v24[v96[22]] = v27[v96[22]];
    v24[v96[25]] = v85;
    v97 = v191;
    v174 = v191;
    if (!v191)
    {
      v79 = *(v27 + 48);
      v191 = *v149;
      v98 = v191;
      v97 = v191;
    }

    *(v24 + 48) = v79;
    *v155 = v97;
    sub_24A67E964(&v27[v96[13]], &v24[v96[13]], &unk_27EF5E100, &unk_24A839DB0);
    v99 = v96[14];
    v101 = *&v27[v99];
    v100 = *&v27[v99 + 8];
    v102 = &v24[v99];
    *v102 = v101;
    *(v102 + 1) = v100;
    v168 = v100;
    v103 = v96[15];
    v105 = *&v27[v103];
    v104 = *&v27[v103 + 8];
    v106 = &v24[v103];
    *v106 = v105;
    *(v106 + 1) = v104;
    v167 = v104;
    v107 = v96[16];
    v108 = *&v27[v107];
    v109 = *&v27[v107 + 8];
    v110 = *&v27[v107 + 16];
    v111 = *&v27[v107 + 24];
    LODWORD(v104) = v27[v107 + 32];
    v112 = &v24[v107];
    v178 = v109;
    v179 = v108;
    *v112 = v108;
    *(v112 + 1) = v109;
    v176 = v111;
    v177 = v110;
    *(v112 + 2) = v110;
    *(v112 + 3) = v111;
    v175 = v104;
    v112[32] = v104;
    sub_24A68FE04(&v27[v96[24]], &v24[v96[24]], type metadata accessor for FMIPProductType);
    v113 = v96[17];
    v114 = &v27[v113];
    v116 = *&v27[v113 + 16];
    v115 = *&v27[v113 + 24];
    v117 = *&v27[v113 + 32];
    v118 = &v24[v113];
    *v118 = *v114;
    v170 = v116;
    *(v118 + 2) = v116;
    *(v118 + 3) = v115;
    *(v118 + 4) = v117;
    v119 = v96[18];
    v121 = *&v27[v119];
    v120 = *&v27[v119 + 8];
    v122 = &v24[v119];
    *v122 = v121;
    *(v122 + 1) = v120;
    v172 = v120;
    v173 = v117;
    *&v24[v96[19]] = v82;
    v123 = v96[20];
    v125 = *&v27[v123];
    v124 = *&v27[v123 + 8];
    v126 = &v24[v123];
    *v126 = v125;
    *(v126 + 1) = v124;
    v169 = v124;
    v127 = v96[23];
    v171 = *&v27[v127];
    *&v24[v127] = v171;
    v128 = *v27;
    v129 = v188;
    sub_24A68FE04(v78, v188, type metadata accessor for FMIPItemUpdateType);
    v130 = *v154;
    v131 = v160;
    v132 = v162;
    (*v154)(v160, v128 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v162);
    (*v153)(v131, 0, 1, v132);
    v133 = type metadata accessor for FMIPItemUpdateContext(0);
    v134 = *(v133 + 48);
    v135 = *(v133 + 52);
    v136 = swift_allocObject();
    sub_24A68FE04(v129, v136 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
    v137 = v128 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
    *&v191 = v136;
    v130((v136 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp), v128 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v132);
    v138 = v161;
    sub_24A67E964(v131, v161, &qword_27EF5E0E0, &qword_24A836D90);
    v139 = *v152;
    if ((*v152)(v138, 1, v132) == 1)
    {
      v130(v166, v137, v132);
      sub_24A67E964(v193, v192, &unk_27EF5E0D0, &qword_24A8319E0);
      v174 = v174;

      sub_24A76ED78(v179, v178);

      sub_24A67F378(v131, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A69004C(v188, type metadata accessor for FMIPItemUpdateType);
      if (v139(v138, 1, v132) != 1)
      {
        sub_24A67F378(v138, &qword_27EF5E0E0, &qword_24A836D90);
      }

      v140 = v166;
      v47 = v189;
      v45 = v164;
      v141 = v151;
    }

    else
    {
      sub_24A67E964(v193, v192, &unk_27EF5E0D0, &qword_24A8319E0);
      v174 = v174;

      sub_24A76ED78(v179, v178);

      sub_24A67F378(v131, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A69004C(v188, type metadata accessor for FMIPItemUpdateType);
      v141 = v151;
      v140 = v166;
      (*v151)(v166, v138, v132);
      v47 = v189;
      v45 = v164;
    }

    v50 = v182;
    v24 = v150;
    v142 = v191;
    (*v141)(v191 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v140, v132);

    sub_24A69004C(v187, type metadata accessor for FMIPItemUpdateType);
    *v24 = v142;
    *&v24[v47[26]] = *&v27[v47[26]];
    v143 = v185;
    sub_24A68D628(v24, v185, type metadata accessor for FMIPItem);
    sub_24A69004C(v27, type metadata accessor for FMIPItem);
    sub_24A68FE04(v143, v186, type metadata accessor for FMIPItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_24A7802C4(0, v50[2] + 1, 1, v50);
    }

    v33 = v165;
    v145 = v50[2];
    v144 = v50[3];
    if (v145 >= v144 >> 1)
    {
      v50 = sub_24A7802C4(v144 > 1, v145 + 1, 1, v50);
    }

    sub_24A69004C(v185, type metadata accessor for FMIPItem);
    sub_24A69004C(v33, type metadata accessor for FMIPItem);
    v50[2] = v145 + 1;
    v146 = v156;
    sub_24A68D628(v186, v50 + v157 + v145 * v156, type metadata accessor for FMIPItem);

    v48 = v183 + v146;
    v46 = (v184 - 1);
  }

  while (v184 != 1);
  return v50;
}

uint64_t sub_24A7685B4(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = &v77 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v77 - v8;
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v77 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v95 = &v77 - v14;
  v94 = type metadata accessor for FMIPDevice();
  v15 = *(v94 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v94);
  v83 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v82 = &v77 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v88 = &v77 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v97 = &v77 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v93 = (&v77 - v26);
  MEMORY[0x28223BE20](v25);
  v28 = &v77 - v27;
  v29 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v100 = (&v77 - v32);
  v33 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = (&v77 - v38);
  v40 = *(a1 + 16);
  v103 = (v30 + 56);
  v41 = (v30 + 48);
  v42 = v40;
  v101 = v15;
  v92 = (v15 + 48);

  v44 = 0;
  v99 = 0;
  *&v45 = 136315138;
  v89 = v45;
  v98 = a1;
  v102 = v42;
  while (1)
  {
    if (v44 == v42)
    {
      v46 = 1;
      v44 = v42;
      goto LABEL_9;
    }

    if (v44 >= v42)
    {
      break;
    }

    if (__OFADD__(v44, 1))
    {
      goto LABEL_30;
    }

    v47 = v100;
    v48 = a1 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v44;
    v49 = *(v29 + 48);
    *v100 = v44;
    sub_24A68FE04(v48, v47 + v49, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v47, v37, &unk_27EF5E0C0, &unk_24A837180);
    v46 = 0;
    ++v44;
    v42 = v102;
LABEL_9:
    (*v103)(v37, v46, 1, v29);
    sub_24A67E8FC(v37, v39, &qword_27EF5DF70, &unk_24A837730);
    if ((*v41)(v39, 1, v29) == 1)
    {
      return v98;
    }

    v50 = *v39;
    sub_24A68D628(v39 + *(v29 + 48), v28, type metadata accessor for FMIPDevice);
    if ((v28[216] & 2) != 0)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v91 = a1;
      v51 = sub_24A82CDC4();
      v52 = sub_24A6797D0(v51, qword_281518F88);
      v53 = v93;
      sub_24A68FE04(v28, v93, type metadata accessor for FMIPDevice);
      v87 = v52;
      v54 = sub_24A82CD94();
      LODWORD(v86) = sub_24A82D504();
      if (os_log_type_enabled(v54, v86))
      {
        v90 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v79 = v54;
        v80 = v55;
        v110[0] = v55;
        *v90 = v89;
        v56 = v53[1];
        v78 = *v53;

        sub_24A69004C(v53, type metadata accessor for FMIPDevice);
        v57 = sub_24A68761C(v78, v56, v110);

        v58 = v90;
        *(v90 + 4) = v57;
        v59 = v79;
        _os_log_impl(&dword_24A675000, v79, v86, "FMIPDataManager: Trying to preserve historical locations for device %s", v58, 0xCu);
        v60 = v80;
        sub_24A6876E8(v80);
        MEMORY[0x24C21E1D0](v60, -1, -1);
        MEMORY[0x24C21E1D0](v90, -1, -1);
      }

      else
      {

        v61 = sub_24A69004C(v53, type metadata accessor for FMIPDevice);
      }

      v90 = &v77;
      MEMORY[0x28223BE20](v61);
      v62 = v95;
      v63 = v99;
      sub_24A79F0DC(sub_24A76EDBC, v96, v95);
      v99 = v63;
      if ((*v92)(v62, 1, v94) == 1)
      {
        sub_24A67F378(v62, &qword_27EF5DF08, &qword_24A837770);
        a1 = v91;
        v42 = v102;
      }

      else
      {
        sub_24A68D628(v62, v97, type metadata accessor for FMIPDevice);
        v64 = v88;
        sub_24A68FE04(v28, v88, type metadata accessor for FMIPDevice);
        v65 = sub_24A82CD94();
        LODWORD(v87) = sub_24A82D504();
        if (os_log_type_enabled(v65, v87))
        {
          v90 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v110[0] = v86;
          *v90 = v89;
          v79 = *v64;
          v80 = v65;
          v66 = v64;
          v67 = *(v64 + 8);

          sub_24A69004C(v66, type metadata accessor for FMIPDevice);
          v68 = sub_24A68761C(v79, v67, v110);

          v69 = v90;
          *(v90 + 4) = v68;
          v70 = v80;
          _os_log_impl(&dword_24A675000, v80, v87, "FMIPDataManager: Preserving historical locations for device %s", v69, 0xCu);
          v71 = v86;
          sub_24A6876E8(v86);
          MEMORY[0x24C21E1D0](v71, -1, -1);
          MEMORY[0x24C21E1D0](v90, -1, -1);
        }

        else
        {

          sub_24A69004C(v64, type metadata accessor for FMIPDevice);
        }

        a1 = v91;
        v42 = v102;
        if (*(v28 + 31) || !*(v97 + 248))
        {
          sub_24A69004C(v97, type metadata accessor for FMIPDevice);
        }

        else
        {
          v91 = *(v97 + 248);
          sub_24A68FE04(v28, v83, type metadata accessor for FMIPDevice);
          memcpy(v110, v28 + 304, 0x120uLL);
          memcpy(v109, v28 + 304, sizeof(v109));
          memset(v108, 0, sizeof(v108));
          memset(v107, 0, sizeof(v107));
          v72 = type metadata accessor for FMIPItemGroup();
          memset(v106, 0, sizeof(v106));
          (*(*(v72 - 8) + 56))(v84, 1, 1, v72);
          v105 = 7;
          v73 = type metadata accessor for FMIPDeviceConnectedState(0);
          (*(*(v73 - 8) + 56))(v85, 1, 1, v73);
          v74 = type metadata accessor for FMIPDeviceLostModeMetadata();
          v75 = v81;
          (*(*(v74 - 8) + 56))(v81, 1, 1, v74);

          sub_24A67E964(v110, &v104, &unk_27EF5E0D0, &qword_24A8319E0);
          FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v83, v91, v109, v108, v107, v106, 2, v84, v82, 2u, 2, &v105, v85, v75);
          v76 = v98;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_24A766CD4(v76);
          }

          result = sub_24A69004C(v97, type metadata accessor for FMIPDevice);
          v42 = v102;
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          if (v50 >= *(v98 + 16))
          {
            goto LABEL_32;
          }

          sub_24A76F3A8(v82, v98 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v50, type metadata accessor for FMIPDevice);
        }
      }
    }

    result = sub_24A69004C(v28, type metadata accessor for FMIPDevice);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24A7690FC(void *a1, uint64_t a2)
{
  v80 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v63 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v63 - v8;
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v63 - v11;
  v12 = type metadata accessor for FMIPDevice();
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v71 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v63 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = (&v63 - v18);
  v20 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v75 = (&v63 - v23);
  v24 = &qword_27EF5DF70;
  v25 = &unk_24A837730;
  v26 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = (&v63 - v31);
  v33 = a1[2];
  v81 = (v21 + 48);
  v82 = (v21 + 56);

  v35 = 0;
  v76 = a1;
  while (2)
  {
    v78 = a1;
    while (1)
    {
      if (v35 == v33)
      {
        v36 = 1;
        v35 = v33;
      }

      else
      {
        if (v35 >= v33)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_24;
        }

        v38 = v76 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v35;
        v39 = *(v20 + 48);
        v40 = v35;
        v41 = v32;
        v42 = v33;
        v43 = v20;
        v44 = v19;
        v45 = v30;
        v46 = v25;
        v47 = v24;
        v48 = v75;
        *v75 = v40;
        sub_24A68FE04(v38, v48 + v39, type metadata accessor for FMIPDevice);
        v49 = v48;
        v24 = v47;
        v25 = v46;
        v30 = v45;
        v19 = v44;
        v20 = v43;
        v33 = v42;
        v32 = v41;
        sub_24A67E8FC(v49, v30, &unk_27EF5E0C0, &unk_24A837180);
        v36 = 0;
        v35 = v37;
        a1 = v78;
      }

      (*v82)(v30, v36, 1, v20);
      sub_24A67E8FC(v30, v32, v24, v25);
      if ((*v81)(v32, 1, v20) == 1)
      {
        return a1;
      }

      v79 = *v32;
      sub_24A68D628(v32 + *(v20 + 48), v19, type metadata accessor for FMIPDevice);
      v50 = v19[3];
      if (v50)
      {
        if (*(v80 + 16))
        {
          v51 = sub_24A6A2D48(v19[2], v50);
          a1 = v78;
          if (v52)
          {
            break;
          }
        }
      }

      result = sub_24A69004C(v19, type metadata accessor for FMIPDevice);
    }

    v53 = (*(v80 + 56) + 24 * v51);
    v67 = *v53;
    v54 = v53[2];
    v63 = v53[1];
    v64 = v54;
    v66 = v53[3];
    v56 = *(v53 + 1);
    v55 = *(v53 + 2);
    v68 = v56;
    v65 = v55;
    sub_24A68FE04(v19, v71, type metadata accessor for FMIPDevice);
    v69 = v19[31];
    memcpy(v89, v19 + 38, 0x120uLL);
    memcpy(v88, v19 + 38, sizeof(v88));
    v57 = 256;
    if (!v63)
    {
      v57 = 0;
    }

    v58 = v57 | v67;
    v59 = 0x10000;
    if (!v64)
    {
      v59 = 0;
    }

    v87[0] = v58 | v59 | (v66 << 24);
    v87[1] = v68;
    v87[2] = v65;
    memset(v86, 0, sizeof(v86));
    v60 = type metadata accessor for FMIPItemGroup();
    memset(v85, 0, sizeof(v85));
    (*(*(v60 - 8) + 56))(v72, 1, 1, v60);
    v84 = 7;
    v61 = type metadata accessor for FMIPDeviceConnectedState(0);
    (*(*(v61 - 8) + 56))(v73, 1, 1, v61);
    v62 = type metadata accessor for FMIPDeviceLostModeMetadata();
    (*(*(v62 - 8) + 56))(v74, 1, 1, v62);

    v68 = v68;
    sub_24A67E964(v89, &v83, &unk_27EF5E0D0, &qword_24A8319E0);
    FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v71, v69, v88, v87, v86, v85, 2, v72, v70, 2u, 2, &v84, v73, v74);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_24A766CD4(a1);
    }

    result = sub_24A69004C(v19, type metadata accessor for FMIPDevice);
    if ((v79 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (v79 < a1[2])
    {
      result = sub_24A76F3A8(v70, a1 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v79, type metadata accessor for FMIPDevice);
      continue;
    }

    break;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24A769874(size_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v56 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v56 - v8;
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v56 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v56 - v14;
  v74 = sub_24A82CAA4();
  v72 = *(v74 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v67 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPDevice();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v64 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v63 = &v56 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - v24;
  v26 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v69 = (&v56 - v29);
  v30 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = (&v56 - v35);
  v37 = (v27 + 56);
  v75 = *(a1 + 16);
  v38 = (v27 + 48);
  v39 = v15;
  v73 = (v72 + 48);
  v58 = (v72 + 8);
  v59 = (v72 + 32);

  v41 = 0;
  v70 = a1;
  v68 = a1;
  v72 = v39;
  while (1)
  {
    if (v41 == v75)
    {
      v42 = 1;
      v41 = v75;
      goto LABEL_9;
    }

    if (v41 >= v75)
    {
      break;
    }

    if (__OFADD__(v41, 1))
    {
      goto LABEL_24;
    }

    v43 = v69;
    v44 = v70 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v41;
    v45 = *(v26 + 48);
    *v69 = v41;
    sub_24A68FE04(v44, v43 + v45, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v43, v34, &unk_27EF5E0C0, &unk_24A837180);
    v42 = 0;
    ++v41;
    v39 = v72;
LABEL_9:
    (*v37)(v34, v42, 1, v26);
    sub_24A67E8FC(v34, v36, &qword_27EF5DF70, &unk_24A837730);
    if ((*v38)(v36, 1, v26) == 1)
    {
      return v68;
    }

    v46 = *v36;
    sub_24A68D628(v36 + *(v26 + 48), v25, type metadata accessor for FMIPDevice);
    if (!*(v25 + 3))
    {
      goto LABEL_3;
    }

    v47 = *(v25 + 2);
    sub_24A82CA44();
    if ((*v73)(v39, 1, v74) == 1)
    {
      sub_24A69004C(v25, type metadata accessor for FMIPDevice);
      result = sub_24A67F378(v39, &qword_27EF5D020, &qword_24A830E40);
    }

    else
    {
      (*v59)(v67, v39, v74);
      if (*(v61 + 16) && (v48 = sub_24A77EDF8(v67), (v49 & 1) != 0))
      {
        v57 = *(*(v61 + 56) + v48);
      }

      else
      {
        v57 = 0;
      }

      sub_24A68FE04(v25, v64, type metadata accessor for FMIPDevice);
      v62 = *(v25 + 31);
      memcpy(v83, v25 + 304, 0x120uLL);
      memcpy(v82, v25 + 304, sizeof(v82));
      v80 = *(v25 + 35);
      v56 = *(v25 + 18);
      v81 = v56;
      memset(v79, 0, sizeof(v79));
      v50 = type metadata accessor for FMIPItemGroup();
      memset(v78, 0, sizeof(v78));
      (*(*(v50 - 8) + 56))(v65, 1, 1, v50);
      v77 = 7;
      v51 = type metadata accessor for FMIPDeviceConnectedState(0);
      (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
      v52 = type metadata accessor for FMIPDeviceLostModeMetadata();
      v53 = v60;
      (*(*(v52 - 8) + 56))(v60, 1, 1, v52);

      sub_24A67E964(v83, &v76, &unk_27EF5E0D0, &qword_24A8319E0);
      v54 = v56;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v64, v62, v82, &v80, v79, v78, v57, v65, v63, 2u, 2, &v77, v66, v53);
      v55 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_24A766CD4(v55);
      }

      v39 = v72;
      result = (*v58)(v67, v74);
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v46 >= *(v68 + 16))
      {
        goto LABEL_26;
      }

      sub_24A76F3A8(v63, v68 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v46, type metadata accessor for FMIPDevice);
LABEL_3:
      result = sub_24A69004C(v25, type metadata accessor for FMIPDevice);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24A76A0B0(size_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v56 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v56 - v8;
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v56 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v56 - v14;
  v74 = sub_24A82CAA4();
  v72 = *(v74 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v67 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPDevice();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v64 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v63 = &v56 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - v24;
  v26 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v69 = (&v56 - v29);
  v30 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = (&v56 - v35);
  v37 = (v27 + 56);
  v75 = *(a1 + 16);
  v38 = (v27 + 48);
  v39 = v15;
  v73 = (v72 + 48);
  v58 = (v72 + 8);
  v59 = (v72 + 32);

  v41 = 0;
  v70 = a1;
  v68 = a1;
  v72 = v39;
  while (1)
  {
    if (v41 == v75)
    {
      v42 = 1;
      v41 = v75;
      goto LABEL_9;
    }

    if (v41 >= v75)
    {
      break;
    }

    if (__OFADD__(v41, 1))
    {
      goto LABEL_24;
    }

    v43 = v69;
    v44 = v70 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v41;
    v45 = *(v26 + 48);
    *v69 = v41;
    sub_24A68FE04(v44, v43 + v45, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v43, v34, &unk_27EF5E0C0, &unk_24A837180);
    v42 = 0;
    ++v41;
    v39 = v72;
LABEL_9:
    (*v37)(v34, v42, 1, v26);
    sub_24A67E8FC(v34, v36, &qword_27EF5DF70, &unk_24A837730);
    if ((*v38)(v36, 1, v26) == 1)
    {
      return v68;
    }

    v46 = *v36;
    sub_24A68D628(v36 + *(v26 + 48), v25, type metadata accessor for FMIPDevice);
    if (!*(v25 + 3))
    {
      goto LABEL_3;
    }

    v47 = *(v25 + 2);
    sub_24A82CA44();
    if ((*v73)(v39, 1, v74) == 1)
    {
      sub_24A69004C(v25, type metadata accessor for FMIPDevice);
      result = sub_24A67F378(v39, &qword_27EF5D020, &qword_24A830E40);
    }

    else
    {
      (*v59)(v67, v39, v74);
      if (*(v61 + 16) && (v48 = sub_24A77EDF8(v67), (v49 & 1) != 0))
      {
        v57 = *(*(v61 + 56) + v48);
      }

      else
      {
        v57 = 0;
      }

      sub_24A68FE04(v25, v64, type metadata accessor for FMIPDevice);
      v62 = *(v25 + 31);
      memcpy(v83, v25 + 304, 0x120uLL);
      memcpy(v82, v25 + 304, sizeof(v82));
      v80 = *(v25 + 35);
      v56 = *(v25 + 18);
      v81 = v56;
      memset(v79, 0, sizeof(v79));
      v50 = type metadata accessor for FMIPItemGroup();
      memset(v78, 0, sizeof(v78));
      (*(*(v50 - 8) + 56))(v65, 1, 1, v50);
      v77 = 7;
      v51 = type metadata accessor for FMIPDeviceConnectedState(0);
      (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
      v52 = type metadata accessor for FMIPDeviceLostModeMetadata();
      v53 = v60;
      (*(*(v52 - 8) + 56))(v60, 1, 1, v52);

      sub_24A67E964(v83, &v76, &unk_27EF5E0D0, &qword_24A8319E0);
      v54 = v56;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v64, v62, v82, &v80, v79, v78, 2, v65, v63, 2u, v57, &v77, v66, v53);
      v55 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_24A766CD4(v55);
      }

      v39 = v72;
      result = (*v58)(v67, v74);
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v46 >= *(v68 + 16))
      {
        goto LABEL_26;
      }

      sub_24A76F3A8(v63, v68 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v46, type metadata accessor for FMIPDevice);
LABEL_3:
      result = sub_24A69004C(v25, type metadata accessor for FMIPDevice);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24A76A8F4(size_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v56 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v56 - v8;
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v56 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v56 - v14;
  v74 = sub_24A82CAA4();
  v72 = *(v74 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v67 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPDevice();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v64 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v63 = &v56 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - v24;
  v26 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v69 = (&v56 - v29);
  v30 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = (&v56 - v35);
  v37 = (v27 + 56);
  v75 = *(a1 + 16);
  v38 = (v27 + 48);
  v39 = v15;
  v73 = (v72 + 48);
  v58 = (v72 + 8);
  v59 = (v72 + 32);

  v41 = 0;
  v70 = a1;
  v68 = a1;
  v72 = v39;
  while (1)
  {
    if (v41 == v75)
    {
      v42 = 1;
      v41 = v75;
      goto LABEL_9;
    }

    if (v41 >= v75)
    {
      break;
    }

    if (__OFADD__(v41, 1))
    {
      goto LABEL_24;
    }

    v43 = v69;
    v44 = v70 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v41;
    v45 = *(v26 + 48);
    *v69 = v41;
    sub_24A68FE04(v44, v43 + v45, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v43, v34, &unk_27EF5E0C0, &unk_24A837180);
    v42 = 0;
    ++v41;
    v39 = v72;
LABEL_9:
    (*v37)(v34, v42, 1, v26);
    sub_24A67E8FC(v34, v36, &qword_27EF5DF70, &unk_24A837730);
    if ((*v38)(v36, 1, v26) == 1)
    {
      return v68;
    }

    v46 = *v36;
    sub_24A68D628(v36 + *(v26 + 48), v25, type metadata accessor for FMIPDevice);
    if (!*(v25 + 3))
    {
      goto LABEL_3;
    }

    v47 = *(v25 + 2);
    sub_24A82CA44();
    if ((*v73)(v39, 1, v74) == 1)
    {
      sub_24A69004C(v25, type metadata accessor for FMIPDevice);
      result = sub_24A67F378(v39, &qword_27EF5D020, &qword_24A830E40);
    }

    else
    {
      (*v59)(v67, v39, v74);
      if (*(v61 + 16) && (v48 = sub_24A77EDF8(v67), (v49 & 1) != 0))
      {
        v57 = *(*(v61 + 56) + v48);
      }

      else
      {
        v57 = 0;
      }

      sub_24A68FE04(v25, v64, type metadata accessor for FMIPDevice);
      v62 = *(v25 + 31);
      memcpy(v83, v25 + 304, 0x120uLL);
      memcpy(v82, v25 + 304, sizeof(v82));
      v80 = *(v25 + 35);
      v56 = *(v25 + 18);
      v81 = v56;
      memset(v79, 0, sizeof(v79));
      v50 = type metadata accessor for FMIPItemGroup();
      memset(v78, 0, sizeof(v78));
      (*(*(v50 - 8) + 56))(v65, 1, 1, v50);
      v77 = 7;
      v51 = type metadata accessor for FMIPDeviceConnectedState(0);
      (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
      v52 = type metadata accessor for FMIPDeviceLostModeMetadata();
      v53 = v60;
      (*(*(v52 - 8) + 56))(v60, 1, 1, v52);

      sub_24A67E964(v83, &v76, &unk_27EF5E0D0, &qword_24A8319E0);
      v54 = v56;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v64, v62, v82, &v80, v79, v78, 2, v65, v63, v57, 2, &v77, v66, v53);
      v55 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_24A766CD4(v55);
      }

      v39 = v72;
      result = (*v58)(v67, v74);
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v46 >= *(v68 + 16))
      {
        goto LABEL_26;
      }

      sub_24A76F3A8(v63, v68 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v46, type metadata accessor for FMIPDevice);
LABEL_3:
      result = sub_24A69004C(v25, type metadata accessor for FMIPDevice);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24A76B138(size_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v57 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v57 - v8;
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v57 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v57 - v14;
  v74 = sub_24A82CAA4();
  v72 = *(v74 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v67 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPDevice();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v64 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v63 = &v57 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - v24;
  v26 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v69 = (&v57 - v29);
  v30 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = (&v57 - v35);
  v37 = (v27 + 56);
  v75 = *(a1 + 16);
  v38 = (v27 + 48);
  v39 = v15;
  v73 = (v72 + 48);
  v58 = (v72 + 8);
  v59 = (v72 + 32);

  v41 = 0;
  v70 = a1;
  v68 = a1;
  v72 = v39;
  while (1)
  {
    if (v41 == v75)
    {
      v42 = 1;
      v41 = v75;
      goto LABEL_9;
    }

    if (v41 >= v75)
    {
      break;
    }

    if (__OFADD__(v41, 1))
    {
      goto LABEL_24;
    }

    v43 = v69;
    v44 = v70 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v41;
    v45 = *(v26 + 48);
    *v69 = v41;
    sub_24A68FE04(v44, v43 + v45, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v43, v34, &unk_27EF5E0C0, &unk_24A837180);
    v42 = 0;
    ++v41;
    v39 = v72;
LABEL_9:
    (*v37)(v34, v42, 1, v26);
    sub_24A67E8FC(v34, v36, &qword_27EF5DF70, &unk_24A837730);
    if ((*v38)(v36, 1, v26) == 1)
    {
      return v68;
    }

    v46 = *v36;
    sub_24A68D628(v36 + *(v26 + 48), v25, type metadata accessor for FMIPDevice);
    if (!*(v25 + 3))
    {
      goto LABEL_3;
    }

    v47 = *(v25 + 2);
    sub_24A82CA44();
    if ((*v73)(v39, 1, v74) == 1)
    {
      sub_24A69004C(v25, type metadata accessor for FMIPDevice);
      result = sub_24A67F378(v39, &qword_27EF5D020, &qword_24A830E40);
    }

    else
    {
      (*v59)(v67, v39, v74);
      if (*(v61 + 16) && (v48 = sub_24A77EDF8(v67), (v49 & 1) != 0))
      {
        v50 = *(*(v61 + 56) + v48);
      }

      else
      {
        v50 = 7;
      }

      sub_24A68FE04(v25, v64, type metadata accessor for FMIPDevice);
      v62 = *(v25 + 31);
      memcpy(v83, v25 + 304, 0x120uLL);
      memcpy(v82, v25 + 304, sizeof(v82));
      v80 = *(v25 + 35);
      v57 = *(v25 + 18);
      v81 = v57;
      memset(v79, 0, sizeof(v79));
      v51 = type metadata accessor for FMIPItemGroup();
      memset(v78, 0, sizeof(v78));
      (*(*(v51 - 8) + 56))(v65, 1, 1, v51);
      v77 = v50;
      v52 = type metadata accessor for FMIPDeviceConnectedState(0);
      (*(*(v52 - 8) + 56))(v66, 1, 1, v52);
      v53 = type metadata accessor for FMIPDeviceLostModeMetadata();
      v54 = v60;
      (*(*(v53 - 8) + 56))(v60, 1, 1, v53);

      sub_24A67E964(v83, &v76, &unk_27EF5E0D0, &qword_24A8319E0);
      v55 = v57;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v64, v62, v82, &v80, v79, v78, 2, v65, v63, 2u, 2, &v77, v66, v54);
      v56 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_24A766CD4(v56);
      }

      v39 = v72;
      result = (*v58)(v67, v74);
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v46 >= *(v68 + 16))
      {
        goto LABEL_26;
      }

      sub_24A76F3A8(v63, v68 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v46, type metadata accessor for FMIPDevice);
LABEL_3:
      result = sub_24A69004C(v25, type metadata accessor for FMIPDevice);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24A76B96C(size_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v61 - v5;
  v6 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v61 - v8;
  v9 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v61 - v13;
  v14 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v61 - v16;
  v81 = sub_24A82CAA4();
  v79 = *(v81 - 8);
  v18 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v74 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FMIPDevice();
  v78 = *(v20 - 8);
  v21 = *(v78 + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v70 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v69 = &v61 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - v26;
  v28 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v76 = (&v61 - v31);
  v32 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = (&v61 - v37);
  v39 = (v29 + 56);
  v82 = *(a1 + 16);
  v40 = (v29 + 48);
  v41 = v17;
  v80 = (v79 + 48);
  v64 = (v79 + 8);
  v65 = (v79 + 32);

  v43 = 0;
  v77 = a1;
  v75 = a1;
  v79 = v41;
  while (1)
  {
    if (v43 == v82)
    {
      v44 = 1;
      v43 = v82;
      goto LABEL_9;
    }

    if (v43 >= v82)
    {
      break;
    }

    if (__OFADD__(v43, 1))
    {
      goto LABEL_24;
    }

    v45 = v76;
    v46 = v77 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v43;
    v47 = *(v28 + 48);
    *v76 = v43;
    sub_24A68FE04(v46, v45 + v47, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v45, v36, &unk_27EF5E0C0, &unk_24A837180);
    v44 = 0;
    ++v43;
    v41 = v79;
LABEL_9:
    (*v39)(v36, v44, 1, v28);
    sub_24A67E8FC(v36, v38, &qword_27EF5DF70, &unk_24A837730);
    if ((*v40)(v38, 1, v28) == 1)
    {
      return v75;
    }

    v48 = *v38;
    sub_24A68D628(v38 + *(v28 + 48), v27, type metadata accessor for FMIPDevice);
    if (!*(v27 + 3))
    {
      goto LABEL_3;
    }

    v49 = *(v27 + 2);
    sub_24A82CA44();
    if ((*v80)(v41, 1, v81) == 1)
    {
      sub_24A69004C(v27, type metadata accessor for FMIPDevice);
      result = sub_24A67F378(v41, &qword_27EF5D020, &qword_24A830E40);
    }

    else
    {
      (*v65)(v74, v41, v81);
      if (*(v67 + 16) && (v50 = sub_24A77EDF8(v74), (v51 & 1) != 0))
      {
        v52 = v50;
        *&v63 = *(v67 + 56);
        v68 = type metadata accessor for FMIPDeviceConnectedState(0);
        v62 = *(v68 - 8);
        v53 = v63 + *(v62 + 72) * v52;
        v54 = v71;
        sub_24A68FE04(v53, v71, type metadata accessor for FMIPDeviceConnectedState);
        (*(v62 + 56))(v54, 0, 1, v68);
      }

      else
      {
        v55 = type metadata accessor for FMIPDeviceConnectedState(0);
        v54 = v71;
        (*(*(v55 - 8) + 56))(v71, 1, 1, v55);
      }

      sub_24A68FE04(v27, v70, type metadata accessor for FMIPDevice);
      v68 = *(v27 + 31);
      memcpy(v90, v27 + 304, 0x120uLL);
      memcpy(v89, v27 + 304, sizeof(v89));
      v87 = *(v27 + 35);
      v63 = *(v27 + 18);
      v88 = v63;
      memset(v86, 0, sizeof(v86));
      v56 = type metadata accessor for FMIPItemGroup();
      memset(v85, 0, sizeof(v85));
      (*(*(v56 - 8) + 56))(v73, 1, 1, v56);
      v84 = 7;
      sub_24A67E964(v54, v72, &qword_27EF5DE20, &qword_24A8371A0);
      v57 = type metadata accessor for FMIPDeviceLostModeMetadata();
      v58 = v66;
      (*(*(v57 - 8) + 56))(v66, 1, 1, v57);

      sub_24A67E964(v90, &v83, &unk_27EF5E0D0, &qword_24A8319E0);
      v59 = v63;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v70, v68, v89, &v87, v86, v85, 2, v73, v69, 2u, 2, &v84, v72, v58);
      v60 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_24A766CD4(v60);
      }

      v41 = v79;
      sub_24A67F378(v71, &qword_27EF5DE20, &qword_24A8371A0);
      result = (*v64)(v74, v81);
      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v48 >= *(v75 + 16))
      {
        goto LABEL_26;
      }

      sub_24A76F3A8(v69, v75 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v48, type metadata accessor for FMIPDevice);
LABEL_3:
      result = sub_24A69004C(v27, type metadata accessor for FMIPDevice);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24A76C298(size_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v72 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v82 = &v72 - v8;
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v72 - v11;
  v76 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v84 = *(v76 - 8);
  v12 = *(v84 + 64);
  v13 = MEMORY[0x28223BE20](v76);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v72 - v15;
  v16 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v72 - v18;
  v20 = sub_24A82CAA4();
  v93 = *(v20 - 8);
  v94 = v20;
  v21 = *(v93 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FMIPDevice();
  v90 = *(v24 - 8);
  v25 = *(v90 + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v79 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v78 = &v72 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v72 - v30;
  v32 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v88 = (&v72 - v35);
  v36 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = (&v72 - v41);
  v43 = (v33 + 56);
  v44 = (v33 + 48);
  v45 = v19;
  v46 = *(a1 + 16);
  v95 = v43;
  v96 = v46;
  v92 = (v93 + 48);
  v74 = v84 + 56;
  v85 = (v93 + 8);
  v86 = (v93 + 32);

  v48 = 0;
  v89 = a1;
  v83 = a1;
  v93 = v45;
  while (1)
  {
    if (v48 == v96)
    {
      v49 = 1;
      v48 = v96;
      goto LABEL_9;
    }

    if (v48 >= v96)
    {
      break;
    }

    if (__OFADD__(v48, 1))
    {
      goto LABEL_23;
    }

    v50 = v88;
    v51 = v89 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v48;
    v52 = *(v32 + 48);
    *v88 = v48;
    sub_24A68FE04(v51, v50 + v52, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v50, v40, &unk_27EF5E0C0, &unk_24A837180);
    v49 = 0;
    ++v48;
    v45 = v93;
LABEL_9:
    (*v95)(v40, v49, 1, v32);
    sub_24A67E8FC(v40, v42, &qword_27EF5DF70, &unk_24A837730);
    if ((*v44)(v42, 1, v32) == 1)
    {
      return v83;
    }

    v53 = *v42;
    sub_24A68D628(v42 + *(v32 + 48), v31, type metadata accessor for FMIPDevice);
    if (!*(v31 + 3))
    {
      goto LABEL_3;
    }

    v91 = v53;
    v54 = v23;
    v55 = *(v31 + 2);
    sub_24A82CA44();
    v56 = v94;
    if ((*v92)(v45, 1, v94) == 1)
    {
      sub_24A69004C(v31, type metadata accessor for FMIPDevice);
      result = sub_24A67F378(v45, &qword_27EF5D020, &qword_24A830E40);
      v23 = v54;
    }

    else
    {
      v57 = v56;
      v23 = v54;
      (*v86)(v54, v45, v57);
      if (*(v87 + 16) && (v58 = sub_24A77EDF8(v54), (v59 & 1) != 0))
      {
        v60 = *(v87 + 56) + *(v84 + 72) * v58;
        v73 = type metadata accessor for FMIPDeviceLostModeMetadata;
        v61 = v75;
        sub_24A68FE04(v60, v75, type metadata accessor for FMIPDeviceLostModeMetadata);
        v62 = v61;
        v63 = v80;
        sub_24A68D628(v62, v80, type metadata accessor for FMIPDeviceLostModeMetadata);
        sub_24A68FE04(v31, v79, type metadata accessor for FMIPDevice);
        v64 = *(v31 + 31);
        memcpy(v104, v31 + 304, 0x120uLL);
        memcpy(v103, v31 + 304, sizeof(v103));
        v101 = *(v31 + 35);
        v72 = *(v31 + 18);
        v102 = v72;
        memset(v100, 0, sizeof(v100));
        v65 = type metadata accessor for FMIPItemGroup();
        memset(v99, 0, sizeof(v99));
        (*(*(v65 - 8) + 56))(v81, 1, 1, v65);
        v98 = 7;
        v66 = type metadata accessor for FMIPDeviceConnectedState(0);
        (*(*(v66 - 8) + 56))(v82, 1, 1, v66);
        v67 = v63;
        v68 = v77;
        sub_24A68FE04(v67, v77, v73);
        (*(v84 + 56))(v68, 0, 1, v76);

        sub_24A67E964(v104, &v97, &unk_27EF5E0D0, &qword_24A8319E0);
        v69 = v72;
        FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v79, v64, v103, &v101, v100, v99, 2, v81, v78, 2u, 2, &v98, v82, v68);
        v70 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_24A766CD4(v70);
        }

        v45 = v93;
        v71 = v91;
        sub_24A69004C(v80, type metadata accessor for FMIPDeviceLostModeMetadata);
        result = (*v85)(v23, v94);
        if ((v71 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v71 >= *(v83 + 16))
        {
          goto LABEL_25;
        }

        sub_24A76F3A8(v78, v83 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v71, type metadata accessor for FMIPDevice);
LABEL_3:
        result = sub_24A69004C(v31, type metadata accessor for FMIPDevice);
      }

      else
      {
        (*v85)(v54, v94);
        result = sub_24A69004C(v31, type metadata accessor for FMIPDevice);
        v45 = v93;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

size_t sub_24A76CC38(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemGroup();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (v22 - v10);
  v12 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v22 - v17);
  v22[2] = 0;
  v22[3] = 0;
  v22[1] = a1;
  swift_bridgeObjectRetain_n();
  while (1)
  {
    sub_24A7547C4(v16);
    sub_24A67E8FC(v16, v18, &qword_27EF5E118, &qword_24A837760);
    v19 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
    if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
    {
      goto LABEL_9;
    }

    v20 = *v18;
    sub_24A68D628(v18 + *(v19 + 48), v9, type metadata accessor for FMIPItemGroup);

    FMIPItemGroup.init(itemGroup:items:)(v9, a2, v11);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = sub_24A766CC0(a1);
      a1 = result;
      if ((v20 & 0x8000000000000000) != 0)
      {
LABEL_8:
        __break(1u);
LABEL_9:

        return a1;
      }
    }

    if (v20 >= a1[2])
    {
      break;
    }

    sub_24A76F3A8(v11, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, type metadata accessor for FMIPItemGroup);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A76CED0(void *a1, uint64_t a2, uint64_t a3)
{
  v172 = sub_24A82CA34();
  v6 = *(v172 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v172);
  v163 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v169 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v160 = &v136 - v13;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v14 = *(*(updated - 8) + 64);
  v15 = MEMORY[0x28223BE20](updated);
  v168 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v167 = &v136 - v17;
  v173 = type metadata accessor for FMIPItem();
  v176 = *(v173 - 1);
  v18 = *(v176 + 64);
  v19 = MEMORY[0x28223BE20](v173);
  v166 = (&v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v165 = &v136 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v164 = &v136 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = (&v136 - v25);
  v27 = sub_24A6BBA94(&unk_27EF5E0F0, &unk_24A837170);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v174 = (&v136 - v30);
  v31 = sub_24A6BBA94(&qword_27EF5DF68, &unk_24A837750);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = (&v136 - v36);
  v179 = (v28 + 48);
  v180 = (v28 + 56);
  v181 = a1[2];
  v170 = (v6 + 16);
  v157 = (v6 + 48);
  v158 = (v6 + 56);
  v156 = (v6 + 32);
  v38 = a2;

  v40 = 0;
  v175 = a1;
  v182 = v38;
  while (2)
  {
    for (i = a1; ; a1 = i)
    {
      if (v40 == v181)
      {
        v41 = 1;
        v40 = v181;
      }

      else
      {
        if (v40 >= v181)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (__OFADD__(v40, 1))
        {
          goto LABEL_45;
        }

        v42 = v174;
        v43 = v175 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v40;
        v44 = *(v27 + 48);
        *v174 = v40;
        sub_24A68FE04(v43, v42 + v44, type metadata accessor for FMIPItem);
        sub_24A67E8FC(v42, v35, &unk_27EF5E0F0, &unk_24A837170);
        v41 = 0;
        ++v40;
        v38 = v182;
      }

      (*v180)(v35, v41, 1, v27);
      sub_24A67E8FC(v35, v37, &qword_27EF5DF68, &unk_24A837750);
      if ((*v179)(v37, 1, v27) == 1)
      {
        return a1;
      }

      v45 = a3;
      v177 = *v37;
      sub_24A68D628(v37 + *(v27 + 48), v26, type metadata accessor for FMIPItem);
      if (*(v38 + 16))
      {
        v46 = v26[44];
        v47 = v26[45];
        v48 = sub_24A6A2D48(v46, v47);
        v38 = v182;
        if (v49)
        {
          break;
        }
      }

      result = sub_24A69004C(v26, type metadata accessor for FMIPItem);
      a3 = v45;
    }

    v50 = (*(v182 + 56) + 24 * v48);
    v162 = *v50;
    LODWORD(v153) = v50[1];
    LODWORD(v152) = v50[2];
    v154 = v50[3];
    v51 = *(v50 + 1);
    v155 = *(v50 + 2);
    v171 = *(v45 + 16);
    v52 = v51;
    v151 = v52;
    if (v171)
    {
      v53 = v47;
      v54 = v52;
      v55 = sub_24A6A2D48(v46, v53);
      v56 = v162;
      v57 = v153;
      v58 = v152;
      v60 = v154;
      v59 = v155;
      v171 = v54;
      if (v61)
      {
        v62 = (*(v45 + 56) + 24 * v55);
        v56 = *v62;
        v57 = v62[1];
        v58 = v62[2];
        v60 = v62[3];
        v63 = *(v62 + 1);
        v59 = *(v62 + 2);
        v171 = v63;
      }
    }

    else
    {
      v56 = v162;
      v57 = v153;
      v58 = v152;
      v171 = v52;
      v60 = v154;
      v59 = v155;
    }

    v147 = v60;
    v148 = v59;
    LODWORD(v149) = v56;
    v64 = v165;
    sub_24A68FE04(v26, v165, type metadata accessor for FMIPItem);
    *v167 = 1;
    swift_storeEnumTagMultiPayload();
    memcpy(v186, v26 + 1, 0x120uLL);
    v161 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 256;
    if (!v57)
    {
      v67 = 0;
    }

    v145 = v67;
    if (v58)
    {
      v68 = 0x10000;
    }

    else
    {
      v68 = 0;
    }

    v69 = *(v64 + v173[19]);
    LODWORD(v146) = *(v64 + v173[25]);
    v150 = v69;
    if ((v146 & 1) == 0)
    {
      v70 = 0x10000;
      if (!v152)
      {
        v70 = 0;
      }

      v71 = 256;
      if (!v153)
      {
        v71 = 0;
      }

      v161 = (v71 | v162 | v70 | (v154 << 24));
      v72 = v68;
      v73 = v151;
      v74 = v151;
      v65 = v73;
      v68 = v72;
      v66 = v155;
    }

    v155 = v66;
    v162 = v65;
    memcpy(v185, v26 + 1, sizeof(v185));
    if (sub_24A6921A8(v185) == 1)
    {
      memcpy(v183, (v64 + 8), sizeof(v183));
      sub_24A67E964(v183, v184, &unk_27EF5E0D0, &qword_24A8319E0);
      v75 = v183;
    }

    else
    {
      v75 = v186;
    }

    memcpy(v184, v75, sizeof(v184));
    v76 = v145 | v149 | v68 | (v147 << 24);
    v77 = v166;
    memcpy(v166 + 1, v184, 0x120uLL);
    *(v77 + 296) = *(v64 + 296);
    v77[38] = *(v64 + 304);
    v77[39] = v76;
    v78 = v148;
    v77[40] = v171;
    v77[41] = v78;
    v79 = *(v64 + 344);
    v77[42] = *(v64 + 336);
    v77[43] = v79;
    v152 = v79;
    v80 = *(v64 + 360);
    v77[44] = *(v64 + 352);
    v77[45] = v80;
    v153 = v80;
    v81 = *(v64 + 376);
    v77[46] = *(v64 + 368);
    v77[47] = v81;
    v154 = v81;
    v82 = v173;
    *(v77 + v173[21]) = *(v64 + v173[21]);
    *(v77 + v82[22]) = *(v64 + v82[22]);
    *(v77 + v82[25]) = v146;
    v83 = v162;
    if (!v162)
    {
      v84 = *(v64 + 392);
      v161 = *(v64 + 384);
      v162 = v84;
      v155 = *(v64 + 400);
      v85 = v84;
      v83 = v162;
    }

    v77[48] = v161;
    v77[49] = v83;
    v77[50] = v155;
    sub_24A67E964(v64 + v82[13], v77 + v82[13], &unk_27EF5E100, &unk_24A839DB0);
    v86 = v82[14];
    v88 = *(v64 + v86);
    v87 = *(v64 + v86 + 8);
    v89 = (v77 + v86);
    *v89 = v88;
    v89[1] = v87;
    v139 = v87;
    v90 = v82[15];
    v92 = *(v64 + v90);
    v91 = *(v64 + v90 + 8);
    v93 = (v77 + v90);
    *v93 = v92;
    v93[1] = v91;
    v142 = v91;
    v94 = v82[16];
    v95 = *(v64 + v94);
    v96 = *(v64 + v94 + 8);
    v97 = *(v64 + v94 + 16);
    v98 = *(v64 + v94 + 24);
    LODWORD(v91) = *(v64 + v94 + 32);
    v99 = v77 + v94;
    v143 = v95;
    v144 = v96;
    *v99 = v95;
    *(v99 + 1) = v96;
    v145 = v97;
    v146 = v98;
    *(v99 + 2) = v97;
    *(v99 + 3) = v98;
    LODWORD(v148) = v91;
    v99[32] = v91;
    sub_24A68FE04(v64 + v82[24], v77 + v82[24], type metadata accessor for FMIPProductType);
    v100 = v82[17];
    v101 = (v64 + v100);
    v103 = *(v64 + v100 + 16);
    v102 = *(v64 + v100 + 24);
    v104 = *(v64 + v100 + 32);
    v105 = v77 + v100;
    *v105 = *v101;
    v141 = v103;
    *(v105 + 2) = v103;
    *(v105 + 3) = v102;
    v147 = v104;
    *(v105 + 4) = v104;
    v106 = v82[18];
    v108 = *(v64 + v106);
    v107 = *(v64 + v106 + 8);
    v109 = (v77 + v106);
    *v109 = v108;
    v109[1] = v107;
    v149 = v107;
    *(v77 + v82[19]) = v150;
    v110 = v82[20];
    v112 = *(v64 + v110);
    v111 = *(v64 + v110 + 8);
    v113 = (v77 + v110);
    *v113 = v112;
    v113[1] = v111;
    v150 = v111;
    v114 = v82[23];
    v155 = *(v64 + v114);
    *(v77 + v114) = v155;
    v162 = *v64;
    v115 = v162;
    v140 = type metadata accessor for FMIPItemUpdateType;
    sub_24A68D628(v167, v168, type metadata accessor for FMIPItemUpdateType);
    v161 = *v170;
    v116 = v115 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp;
    v117 = v160;
    v118 = v172;
    (v161)(v160, v116, v172);
    (*v158)(v117, 0, 1, v118);
    v119 = type metadata accessor for FMIPItemUpdateContext(0);
    v120 = *(v119 + 48);
    v121 = *(v119 + 52);
    v122 = swift_allocObject();
    sub_24A68D628(v168, v122 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, v140);
    v140 = v122;
    v138 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
    (v161)(v122 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v162 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v118);
    v123 = v117;
    v124 = v169;
    sub_24A67E8FC(v123, v169, &qword_27EF5E0E0, &qword_24A836D90);
    v137 = *v157;
    if (v137(v124, 1, v118) == 1)
    {
      v125 = v172;
      (v161)(v163, v162 + v138, v172);
      v126 = v169;
      LODWORD(v125) = v137(v169, 1, v125);
      v127 = v171;
      sub_24A67E964(v186, v183, &unk_27EF5E0D0, &qword_24A8319E0);

      sub_24A76ED78(v143, v144);

      if (v125 != 1)
      {
        sub_24A67F378(v126, &qword_27EF5E0E0, &qword_24A836D90);
      }

      a3 = v45;
      v38 = v182;
      v132 = v172;
      v131 = v163;
      v128 = v156;
    }

    else
    {
      v128 = v156;
      v129 = v163;
      (*v156)(v163, v169, v172);
      v130 = v171;
      sub_24A67E964(v186, v183, &unk_27EF5E0D0, &qword_24A8319E0);

      sub_24A76ED78(v143, v144);

      v131 = v129;
      a3 = v45;
      v38 = v182;
      v132 = v172;
    }

    v133 = v140;
    (*v128)(v140 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v131, v132);
    v135 = v165;
    v134 = v166;
    *v166 = v133;
    *(v134 + v173[26]) = *(v135 + v173[26]);
    sub_24A68D628(v134, v164, type metadata accessor for FMIPItem);
    sub_24A69004C(v135, type metadata accessor for FMIPItem);
    a1 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_24A766CE8(a1);
    }

    result = sub_24A69004C(v26, type metadata accessor for FMIPItem);
    if ((v177 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    if (v177 < a1[2])
    {
      result = sub_24A76F3A8(v164, a1 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v177, type metadata accessor for FMIPItem);
      continue;
    }

    break;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_24A76DCB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for FMIPDeviceConnectedState(0);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24A82CAA4();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v49);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A6BBA94(&qword_27EF5E1F0, &qword_24A8377F8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v45 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v50 = a1;
  v51 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v52 = v22;
  v53 = 0;
  v54 = v25 & v23;
  v55 = a2;
  v56 = a3;
  v26 = (v13 + 32);
  v46 = (v13 + 8);
  v47 = v13;

  v45[1] = a3;

  while (1)
  {
    sub_24A767204(v20);
    v27 = sub_24A6BBA94(&qword_27EF5E1F8, &unk_24A837800);
    if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
    {
      sub_24A6BAFBC();
    }

    v28 = *(v27 + 48);
    v29 = *v26;
    (*v26)(v16, v20, v49);
    sub_24A68D628(&v20[v28], v57, type metadata accessor for FMIPDeviceConnectedState);
    v30 = *a5;
    v32 = sub_24A77EDF8(v16);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (a4)
      {
        v40 = *a5;
        if ((v31 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_24A786F2C();
        v40 = *a5;
        if ((v36 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v46)(v16, v49);
      sub_24A76F3A8(v57, v40[7] + *(v48 + 72) * v32, type metadata accessor for FMIPDeviceConnectedState);
      a4 = 1;
    }

    else
    {
      sub_24A782AE0(v35, a4 & 1);
      v37 = *a5;
      v38 = sub_24A77EDF8(v16);
      if ((v36 & 1) != (v39 & 1))
      {
        goto LABEL_21;
      }

      v32 = v38;
      v40 = *a5;
      if (v36)
      {
        goto LABEL_5;
      }

LABEL_14:
      v40[(v32 >> 6) + 8] |= 1 << v32;
      v29((v40[6] + *(v47 + 72) * v32), v16, v49);
      sub_24A68D628(v57, v40[7] + *(v48 + 72) * v32, type metadata accessor for FMIPDeviceConnectedState);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_20;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_24A82DC44();
  __break(1u);
  return result;
}

uint64_t sub_24A76E0D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61636F4C65666173 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024A8472E0 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A847300 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024A847320 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024A847340 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t sub_24A76E290@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5DFE0, &unk_24A8376F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A76E6B4();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
  v20 = 0;
  sub_24A76E990(&qword_27EF5DFF8, sub_24A689824);
  sub_24A82DA84();
  v11 = v21;
  sub_24A6BBA94(&qword_27EF5E008, &unk_24A837700);
  v20 = 1;
  sub_24A76E708();
  sub_24A82DA84();
  v19 = v21;
  sub_24A6BBA94(&qword_27EF5E030, &qword_24A837710);
  v20 = 2;
  sub_24A76E7C4();
  sub_24A82DA84();
  v17 = v21;
  v18 = v11;
  sub_24A6BBA94(&qword_27EF5E048, &qword_24A837718);
  v20 = 3;
  v16[1] = sub_24A76E8D4();
  sub_24A82DA84();
  v16[0] = v21;
  v20 = 4;
  sub_24A82DA84();
  (*(v6 + 8))(v9, v5);
  v12 = v21;
  result = sub_24A6876E8(a1);
  v14 = v19;
  *a2 = v18;
  a2[1] = v14;
  v15 = v16[0];
  a2[2] = v17;
  a2[3] = v15;
  a2[4] = v12;
  return result;
}

unint64_t sub_24A76E6B4()
{
  result = qword_27EF5DFE8;
  if (!qword_27EF5DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DFE8);
  }

  return result;
}

unint64_t sub_24A76E708()
{
  result = qword_27EF5E010;
  if (!qword_27EF5E010)
  {
    sub_24A6CCDC0(&qword_27EF5E008, &unk_24A837700);
    sub_24A67F008(&qword_27EF5DBA0, MEMORY[0x277CC95F0]);
    sub_24A70B3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E010);
  }

  return result;
}

unint64_t sub_24A76E7C4()
{
  result = qword_27EF5E038;
  if (!qword_27EF5E038)
  {
    sub_24A6CCDC0(&qword_27EF5E030, &qword_24A837710);
    sub_24A67F008(&qword_27EF5DBA0, MEMORY[0x277CC95F0]);
    sub_24A76E880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E038);
  }

  return result;
}

unint64_t sub_24A76E880()
{
  result = qword_27EF5E040;
  if (!qword_27EF5E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E040);
  }

  return result;
}

unint64_t sub_24A76E8D4()
{
  result = qword_27EF5E050;
  if (!qword_27EF5E050)
  {
    sub_24A6CCDC0(&qword_27EF5E048, &qword_24A837718);
    sub_24A67F008(&qword_27EF5DBA0, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E050);
  }

  return result;
}

uint64_t sub_24A76E990(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5DFF0, &qword_24A839E00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A76EA08()
{
  result = qword_27EF5E068;
  if (!qword_27EF5E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E068);
  }

  return result;
}

unint64_t sub_24A76EA5C()
{
  result = qword_27EF5E070;
  if (!qword_27EF5E070)
  {
    sub_24A6CCDC0(&qword_27EF5E008, &unk_24A837700);
    sub_24A67F008(&qword_27EF5DBA8, MEMORY[0x277CC95F0]);
    sub_24A714C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E070);
  }

  return result;
}

unint64_t sub_24A76EB18()
{
  result = qword_27EF5E088;
  if (!qword_27EF5E088)
  {
    sub_24A6CCDC0(&qword_27EF5E030, &qword_24A837710);
    sub_24A67F008(&qword_27EF5DBA8, MEMORY[0x277CC95F0]);
    sub_24A76EBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E088);
  }

  return result;
}

unint64_t sub_24A76EBD4()
{
  result = qword_27EF5E090;
  if (!qword_27EF5E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E090);
  }

  return result;
}

unint64_t sub_24A76EC28()
{
  result = qword_27EF5E098;
  if (!qword_27EF5E098)
  {
    sub_24A6CCDC0(&qword_27EF5E048, &qword_24A837718);
    sub_24A67F008(&qword_27EF5DBA8, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E098);
  }

  return result;
}

uint64_t sub_24A76ED78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24A76EDBC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04() & 1;
  }
}

uint64_t sub_24A76EE38()
{
  v1 = *(type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_24A82CA34() - 8);
  v5 = (v3 + *(v4 + 80) + 288) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  memcpy(v8, (v0 + v3), sizeof(v8));
  return sub_24A75E250((v0 + v2), v8, v0 + v5);
}

uint64_t sub_24A76EF30(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for FMReverseGeocodingRequest() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_24A760598(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_24A76EFE4()
{
  v1 = *(type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);

  return sub_24A760988(v5, v6, v0 + v2, v8, v9, v10);
}

uint64_t sub_24A76F094()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = v1[8];
  v9 = sub_24A82CAE4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  if (*(v0 + v4 + 8))
  {
    v11 = *(v0 + v4 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

void sub_24A76F1E8()
{
  v1 = *(type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + v3);
  v5 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = (v0 + v2);
  v7 = *(v0 + 16);
  sub_24A75FBAC(v6, v4, *(v5 + 8), *(v5 + 16));
}

unint64_t sub_24A76F288()
{
  result = qword_27EF5E178;
  if (!qword_27EF5E178)
  {
    sub_24A6CCDC0(&qword_27EF5E170, &qword_24A836D58);
    sub_24A67F008(&qword_27EF5E180, type metadata accessor for FMIPItemGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E178);
  }

  return result;
}

unint64_t sub_24A76F354()
{
  result = qword_27EF5E1E0;
  if (!qword_27EF5E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E1E0);
  }

  return result;
}

uint64_t sub_24A76F3A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_24A76F41C()
{
  result = qword_281512BC8;
  if (!qword_281512BC8)
  {
    sub_24A6CCDC0(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A67F008(&qword_281514640, type metadata accessor for FMIPDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BC8);
  }

  return result;
}

unint64_t sub_24A76F4DC()
{
  result = qword_27EF5E248;
  if (!qword_27EF5E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E248);
  }

  return result;
}

uint64_t sub_24A76F530()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A76F57C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5E260, &qword_24A837850);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A76F5FC()
{
  result = qword_27EF5E298;
  if (!qword_27EF5E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E298);
  }

  return result;
}

uint64_t sub_24A76F650(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24A76F724()
{
  result = qword_27EF5E2A0;
  if (!qword_27EF5E2A0)
  {
    sub_24A6CCDC0(&qword_27EF5E170, &qword_24A836D58);
    sub_24A67F008(&qword_27EF5E2A8, type metadata accessor for FMIPItemGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E2A0);
  }

  return result;
}

uint64_t sub_24A76F7D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24A76F848(int a1, void *a2)
{
  v149 = a1;
  v148 = sub_24A82CA34();
  v3 = *(v148 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v148 - 8);
  v147 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v146 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v145 = &v132 - v10;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v11 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v174 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPItem();
  v156 = *(v13 - 8);
  v14 = *(v156 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v132 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v143 = &v132 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v132 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v132 - v26;
  v28 = sub_24A6BBA94(&unk_27EF5E0F0, &unk_24A837170);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v134 = (&v132 - v31);
  v32 = sub_24A6BBA94(&qword_27EF5DF68, &unk_24A837750);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v153 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v152 = &v132 - v36;
  v37 = a2;
  v38 = a2[2];
  v150 = (v29 + 48);
  v151 = (v29 + 56);
  v133 = 0x800000024A847410;
  v138 = (v3 + 56);
  v139 = (v3 + 16);
  v137 = (v3 + 48);
  v154 = (v3 + 32);
  v39 = v37;

  v41 = 0;
  *&v42 = 136315394;
  v132 = v42;
  v135 = result;
  v136 = v20;
  v176 = v13;
  v141 = v28;
  v142 = v25;
  v155 = v27;
  v140 = v38;
  while (1)
  {
    v175 = v39;
    if (v41 == v38)
    {
      v43 = 1;
      v173 = v38;
      v44 = v153;
    }

    else
    {
      if (v41 >= v38)
      {
        goto LABEL_49;
      }

      v45 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_50;
      }

      v46 = v134;
      v47 = v135 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v41;
      v48 = *(v28 + 48);
      *v134 = v41;
      sub_24A68FE04(v47, v46 + v48, type metadata accessor for FMIPItem);
      v49 = v46;
      v44 = v153;
      sub_24A67E8FC(v49, v153, &unk_27EF5E0F0, &unk_24A837170);
      v43 = 0;
      v173 = v45;
    }

    v50 = v152;
    (*v151)(v44, v43, 1, v28);
    sub_24A67E8FC(v44, v50, &qword_27EF5DF68, &unk_24A837750);
    if ((*v150)(v50, 1, v28) == 1)
    {
      return v175;
    }

    v172 = *v50;
    sub_24A68D628(v50 + *(v28 + 48), v27, type metadata accessor for FMIPItem);
    if (v149)
    {
      v51 = (v27[*(v13 + 76)] >> 6) & 1;
    }

    else
    {
      v51 = 0;
    }

    LODWORD(v171) = v51;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v52 = sub_24A82CDC4();
    sub_24A6797D0(v52, qword_281518F88);
    sub_24A68FE04(v27, v25, type metadata accessor for FMIPItem);
    v53 = sub_24A82CD94();
    v54 = sub_24A82D504();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v181[0] = v56;
      *v55 = v132;
      v57 = *(v25 + 44);
      v58 = *(v25 + 45);

      sub_24A69004C(v25, type metadata accessor for FMIPItem);
      v59 = sub_24A68761C(v57, v58, v181);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v60 = v171;
      if (v171)
      {
        v61 = 0xD000000000000012;
      }

      else
      {
        v61 = 0;
      }

      if (v171)
      {
        v62 = v133;
      }

      else
      {
        v62 = 0xE000000000000000;
      }

      v63 = sub_24A68761C(v61, v62, v181);

      *(v55 + 14) = v63;
      v13 = v176;
      _os_log_impl(&dword_24A675000, v53, v54, "FMIPDataManager: Resetting transient properties for %s %s", v55, 0x16u);
      swift_arrayDestroy();
      v64 = v56;
      v27 = v155;
      MEMORY[0x24C21E1D0](v64, -1, -1);
      MEMORY[0x24C21E1D0](v55, -1, -1);
    }

    else
    {

      sub_24A69004C(v25, type metadata accessor for FMIPItem);
      v60 = v171;
    }

    sub_24A68FE04(v27, v20, type metadata accessor for FMIPItem);
    swift_storeEnumTagMultiPayload();
    memcpy(v181, v27 + 8, 0x120uLL);
    v65 = *(v27 + 49);
    v66 = *(v27 + 39);
    v67 = *(v27 + 20);
    v68 = *&v20[*(v13 + 76)];
    if (!v60)
    {
      v68 &= ~0x40uLL;
    }

    v171 = v68;
    v177 = v67;
    if (v65)
    {
      v69 = *(v27 + 48);
      v70 = *(v27 + 50);
      v71 = v65;
    }

    else
    {
      v69 = *(v20 + 48);
      v71 = *(v20 + 49);
      v70 = *(v20 + 50);
      v72 = v71;
      *&v67 = v177;
    }

    v73 = v20[*(v13 + 100)];
    v74 = v67;
    sub_24A67E964(v181, v180, &unk_27EF5E0D0, &qword_24A8319E0);
    if (v73 == 1)
    {
      v75 = v65;
      v76 = v74;

      v69 = 0;
      v71 = 0;
      v70 = 0;
    }

    else
    {
      v77 = v74;
      v78 = v65;
    }

    memcpy(v180, v181, sizeof(v180));
    if (sub_24A6921A8(v180) == 1)
    {
      memcpy(v178, v20 + 8, sizeof(v178));
      sub_24A67E964(v178, v179, &unk_27EF5E0D0, &qword_24A8319E0);
      v79 = v178;
    }

    else
    {
      v79 = v181;
    }

    memcpy(v179, v79, sizeof(v179));
    memcpy(v17 + 8, v179, 0x120uLL);
    v17[296] = v20[296];
    *(v17 + 38) = *(v20 + 38);
    if (!v74)
    {
      v66 = *(v20 + 39);
      v177 = *(v20 + 20);
      v80 = v177;
    }

    *(v17 + 39) = v66;
    *(v17 + 20) = v177;
    v81 = *(v20 + 43);
    *(v17 + 42) = *(v20 + 42);
    *(v17 + 43) = v81;
    v169 = v81;
    v82 = *(v20 + 45);
    *(v17 + 44) = *(v20 + 44);
    *(v17 + 45) = v82;
    v170 = v82;
    v83 = *(v20 + 47);
    *(v17 + 46) = *(v20 + 46);
    *(v17 + 47) = v83;
    *&v177 = v83;
    v84 = v176;
    v17[v176[21]] = v20[v176[21]];
    v17[v84[22]] = v20[v84[22]];
    v17[v84[25]] = v73;
    if (!v71)
    {
      v69 = *(v20 + 48);
      v71 = *(v20 + 49);
      v70 = *(v20 + 50);
      v85 = v71;
    }

    *(v17 + 48) = v69;
    *(v17 + 49) = v71;
    *(v17 + 50) = v70;
    sub_24A67E964(&v20[v84[13]], &v17[v84[13]], &unk_27EF5E100, &unk_24A839DB0);
    v86 = v84[14];
    v88 = *&v20[v86];
    v87 = *&v20[v86 + 8];
    v89 = &v17[v86];
    *v89 = v88;
    *(v89 + 1) = v87;
    v163 = v87;
    v90 = v84[15];
    v92 = *&v20[v90];
    v91 = *&v20[v90 + 8];
    v93 = &v17[v90];
    *v93 = v92;
    *(v93 + 1) = v91;
    v162 = v91;
    v94 = v84[16];
    v95 = *&v20[v94];
    v96 = *&v20[v94 + 8];
    v97 = *&v20[v94 + 16];
    v98 = *&v20[v94 + 24];
    LODWORD(v91) = v20[v94 + 32];
    v99 = &v17[v94];
    v167 = v96;
    v168 = v95;
    *v99 = v95;
    *(v99 + 1) = v96;
    v165 = v98;
    v166 = v97;
    *(v99 + 2) = v97;
    *(v99 + 3) = v98;
    v164 = v91;
    v99[32] = v91;
    sub_24A68FE04(&v20[v84[24]], &v17[v84[24]], type metadata accessor for FMIPProductType);
    v100 = v84[17];
    v101 = &v20[v100];
    v103 = *&v20[v100 + 16];
    v102 = *&v20[v100 + 24];
    v104 = *&v20[v100 + 32];
    v105 = &v17[v100];
    *v105 = *v101;
    *(v105 + 2) = v103;
    *(v105 + 3) = v102;
    v161 = v104;
    *(v105 + 4) = v104;
    v106 = v84[18];
    v108 = *&v20[v106];
    v107 = *&v20[v106 + 8];
    v109 = &v17[v106];
    *v109 = v108;
    *(v109 + 1) = v107;
    v159 = v103;
    v160 = v107;
    *&v17[v84[19]] = v171;
    v110 = v84[20];
    v112 = *&v20[v110];
    v111 = *&v20[v110 + 8];
    v113 = &v17[v110];
    *v113 = v112;
    *(v113 + 1) = v111;
    v158 = v111;
    v114 = v84[23];
    v171 = *&v20[v114];
    *&v17[v114] = v171;
    v115 = *v20;
    v116 = *v139;
    v117 = v145;
    v118 = v148;
    (*v139)(v145, *v20 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v148);
    (*v138)(v117, 0, 1, v118);
    v119 = type metadata accessor for FMIPItemUpdateContext(0);
    v120 = *(v119 + 48);
    v121 = *(v119 + 52);
    v122 = swift_allocObject();
    sub_24A68D628(v174, v122 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
    v123 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
    v157 = v122;
    v116((v122 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp), v115 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v118);
    v124 = v146;
    sub_24A67E8FC(v117, v146, &qword_27EF5E0E0, &qword_24A836D90);
    v125 = *v137;
    if ((*v137)(v124, 1, v118) == 1)
    {
      v126 = v115 + v123;
      v127 = v147;
      v116(v147, v126, v118);
      v128 = v125(v124, 1, v118);

      sub_24A76ED78(v168, v167);

      v25 = v142;
      v38 = v140;
      if (v128 != 1)
      {
        sub_24A67F378(v124, &qword_27EF5E0E0, &qword_24A836D90);
      }
    }

    else
    {
      v127 = v147;
      (*v154)(v147, v124, v118);

      sub_24A76ED78(v168, v167);

      v25 = v142;
      v38 = v140;
    }

    v129 = v157;
    (*v154)((v157 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp), v127, v118);
    *v17 = v129;
    v13 = v176;
    v20 = v136;
    *&v17[v176[26]] = *&v136[v176[26]];
    v130 = v143;
    sub_24A68D628(v17, v143, type metadata accessor for FMIPItem);
    sub_24A69004C(v20, type metadata accessor for FMIPItem);
    v39 = v175;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v141;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_24A766CE8(v39);
    }

    v27 = v155;
    result = sub_24A69004C(v155, type metadata accessor for FMIPItem);
    if ((v172 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v172 >= v39[2])
    {
      goto LABEL_48;
    }

    result = sub_24A76F3A8(v130, v39 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v172, type metadata accessor for FMIPItem);
    v41 = v173;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_24A7705F0(int a1, void *a2)
{
  v79 = a1;
  v78 = type metadata accessor for FMIPItemGroup();
  v84 = *(v78 - 8);
  v3 = *(v84 + 64);
  v4 = MEMORY[0x28223BE20](v78);
  v6 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v67 - v8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  v18 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v70 = (&v67 - v21);
  v22 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v67 - v27);
  v29 = a2[2];
  v81 = (v19 + 56);
  v82 = v29;
  v80 = (v19 + 48);
  v68 = 0x800000024A847410;

  v31 = 0;
  *&v32 = 136315394;
  v67 = v32;
  v71 = a2;
  v33 = a2;
  v75 = v18;
  v76 = v15;
  v83 = v17;
  v73 = v26;
  v74 = v28;
  v77 = v12;
  v69 = v9;
  while (1)
  {
    if (v31 == v82)
    {
      v34 = 1;
      v86 = v82;
    }

    else
    {
      if (v31 >= v82)
      {
        goto LABEL_32;
      }

      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_33;
      }

      v36 = v71 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v31;
      v37 = *(v18 + 48);
      v38 = v15;
      v39 = v33;
      v40 = v70;
      *v70 = v31;
      sub_24A68FE04(v36, v40 + v37, type metadata accessor for FMIPItemGroup);
      v41 = v40;
      v33 = v39;
      v15 = v38;
      v9 = v69;
      sub_24A67E8FC(v41, v26, &unk_27EF5E120, &qword_24A837768);
      v34 = 0;
      v86 = v35;
    }

    (*v81)(v26, v34, 1, v18);
    sub_24A67E8FC(v26, v28, &qword_27EF5E118, &qword_24A837760);
    if ((*v80)(v28, 1, v18) == 1)
    {
      return v33;
    }

    v42 = *v28;
    sub_24A68D628(v28 + *(v18 + 48), v17, type metadata accessor for FMIPItemGroup);
    if (v79)
    {
      v43 = (v17[64] >> 6) & 1;
    }

    else
    {
      v43 = 0;
    }

    v85 = v33;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v44 = sub_24A82CDC4();
    sub_24A6797D0(v44, qword_281518F88);
    sub_24A68FE04(v17, v15, type metadata accessor for FMIPItemGroup);
    v45 = sub_24A82CD94();
    v46 = sub_24A82D504();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v87[0] = v48;
      *v47 = v67;
      v72 = v42;
      v49 = v43;
      v50 = *(v15 + 1);
      v51 = *(v15 + 2);

      sub_24A69004C(v15, type metadata accessor for FMIPItemGroup);
      v52 = sub_24A68761C(v50, v51, v87);
      v43 = v49;
      v42 = v72;

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      v53 = v43 ? 0xD000000000000012 : 0;
      v54 = v43 ? v68 : 0xE000000000000000;
      v55 = sub_24A68761C(v53, v54, v87);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_24A675000, v45, v46, "FMIPDataManager: Resetting transient properties for item group %s %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v48, -1, -1);
      v56 = v47;
      v17 = v83;
      MEMORY[0x24C21E1D0](v56, -1, -1);
    }

    else
    {

      sub_24A69004C(v15, type metadata accessor for FMIPItemGroup);
    }

    sub_24A68FE04(v17, v9, type metadata accessor for FMIPItemGroup);
    v57 = v9[8];
    v58 = v9[9];
    if (!v43)
    {
      v57 &= ~0x40uLL;
    }

    v60 = v9[2];
    v59 = v9[3];
    v61 = *v9;
    v6[1] = v9[1];
    v6[2] = v60;
    v62 = v78;
    *(v6 + *(v78 + 52)) = *(v9 + *(v78 + 52));
    v63 = v9[6];
    v6[7] = v9[7];
    v6[8] = v57;
    v64 = v9[4];
    v65 = v9[5];
    v6[3] = v59;
    v6[4] = v64;
    v6[5] = v65;
    v6[6] = v63;
    v6[9] = v58;
    *v6 = v61;
    sub_24A67E964(v9 + *(v62 + 48), v6 + *(v62 + 48), &unk_27EF5E100, &unk_24A839DB0);

    sub_24A69004C(v9, type metadata accessor for FMIPItemGroup);
    v66 = v77;
    sub_24A68D628(v6, v77, type metadata accessor for FMIPItemGroup);
    v33 = v85;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_24A766CC0(v33);
    }

    v18 = v75;
    v15 = v76;
    v28 = v74;
    v17 = v83;
    result = sub_24A69004C(v83, type metadata accessor for FMIPItemGroup);
    if ((v42 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v42 >= v33[2])
    {
      goto LABEL_31;
    }

    result = sub_24A76F3A8(v66, v33 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v42, type metadata accessor for FMIPItemGroup);
    v26 = v73;
    v31 = v86;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}