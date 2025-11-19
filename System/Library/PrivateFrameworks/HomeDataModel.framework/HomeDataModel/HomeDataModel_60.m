uint64_t sub_1D1C00E18(uint64_t a1)
{
  v2 = sub_1D1C075F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1C00E54()
{
  v1 = 0x656B617761;
  v2 = 0x6E776F6E6B6E75;
  if (*v0 != 2)
  {
    v2 = 0x6C646E6148746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x7065656C73;
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

uint64_t sub_1D1C00ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1C08B3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1C00EF4(uint64_t a1)
{
  v2 = sub_1D1C074A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C00F30(uint64_t a1)
{
  v2 = sub_1D1C074A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1C00F6C(uint64_t a1)
{
  v2 = sub_1D1C074F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C00FA8(uint64_t a1)
{
  v2 = sub_1D1C074F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1C00FE4(uint64_t a1)
{
  v2 = sub_1D1C075A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C01020(uint64_t a1)
{
  v2 = sub_1D1C075A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1C0105C(uint64_t a1)
{
  v2 = sub_1D1C0754C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C01098(uint64_t a1)
{
  v2 = sub_1D1C0754C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMediaProfile.SleepWakeState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7F0, &qword_1D1EA04D0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7F8, &qword_1D1EA04D8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C800, &qword_1D1EA04E0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C808, &qword_1D1EA04E8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C810, &qword_1D1EA04F0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C074A4();
  sub_1D1E6930C();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1D1C0754C();
      v24 = v33;
      sub_1D1E68DFC();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1D1C074F8();
      v24 = v36;
      sub_1D1E68DFC();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1D1C075A0();
    v24 = v30;
    sub_1D1E68DFC();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1D1C075F4();
  sub_1D1E68DFC();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t StaticMediaProfile.SleepWakeState.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticMediaProfile.SleepWakeState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C840, &qword_1D1EA04F8);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C848, &qword_1D1EA0500);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C850, &qword_1D1EA0508);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C858, &qword_1D1EA0510);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C860, &qword_1D1EA0518);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D1C074A4();
  v21 = v53;
  sub_1D1E692FC();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1D1E68DDC();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1D18085BC();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1D1E688EC();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v34 = &type metadata for StaticMediaProfile.SleepWakeState;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1D1C075A0();
        v39 = v42;
        sub_1D1E68C4C();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1D1C075F4();
        v31 = v42;
        sub_1D1E68C4C();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1D1C0754C();
      v38 = v42;
      sub_1D1E68C4C();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1D1C074F8();
      v40 = v42;
      sub_1D1E68C4C();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t static StaticMediaProfile.getISSymbolName(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C868, &qword_1D1EA26D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16[-v4];
  v6 = sub_1D1E66F6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1741C08(a1, v5, &qword_1EC64C868, &qword_1D1EA26D0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v11 = 0x6E6F697473657571;
    sub_1D1741A30(v5, &qword_1EC64C868, &qword_1D1EA26D0);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_1D1741B10(0, &qword_1EC64C870, 0x1E69A8A40);
    sub_1D1E66F4C();
    v12 = sub_1D1C01E68();
    if (v12)
    {
      v14 = v12;
      v15 = [v12 name];
      v11 = sub_1D1E6781C();
    }

    else
    {
      v11 = 0x6E6F697473657571;
    }

    (*(v7 + 8))(v10, v6);
  }

  return v11;
}

id sub_1D1C01E68()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D1E677EC();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_1D1E6656C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t StaticMediaProfile.copyReplacing(id:name:roomIds:roomName:dateAdded:iconSymbol:isDoubleHigh:isCurrentAccessory:isFavorite:shouldShowInDashboard:staticAccessoryId:isReachable:hasValidSettings:staticServicesDictionary:deviceId:playbackState:sleepWakeState:mediaId:audioDestinationId:specialMediaCategory:symptoms:softwareUpdate:homeNonResponsiveType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, unsigned __int8 *a19, unsigned __int8 *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned __int8 *a28)
{
  v158 = a8;
  v148 = a7;
  v159 = a6;
  v160 = a3;
  v156 = a2;
  v157 = a5;
  v169 = a4;
  v164 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v154 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v168 = &v140 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v149 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v167 = &v140 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v43 = &v140 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v166 = &v140 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v147 = &v140 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v140 - v49;
  v51 = sub_1D1E66A7C();
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v163 = &v140 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v140 - v56;
  v58 = *a20;
  v170 = *a19;
  v171 = v58;
  v59 = v55;
  v161 = *a25;
  v162 = *(a25 + 8);
  v155 = *a28;
  v61 = v60;
  sub_1D1741C08(v164, v50, &qword_1EC642590, qword_1D1E71260);
  v62 = *(v61 + 48);
  v63 = v62(v50, 1, v59);
  v153 = v57;
  if (v63 != 1)
  {
    (*(v61 + 32))(v57, v50, v59);
    v64 = v165;
    v65 = v160;
    if (v160)
    {
      goto LABEL_5;
    }

LABEL_8:
    v67 = (v64 + *(type metadata accessor for StaticMediaProfile() + 20));
    v68 = v67[1];
    v156 = *v67;
    v152 = v68;

    v66 = v169;
    if (v169)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v64 = v165;
  (*(v61 + 16))(v57, v165, v59);
  if (v62(v50, 1, v59) != 1)
  {
    sub_1D1741A30(v50, &qword_1EC642590, qword_1D1E71260);
  }

  v65 = v160;
  if (!v160)
  {
    goto LABEL_8;
  }

LABEL_5:
  v152 = v65;
  v66 = v169;
  if (v169)
  {
LABEL_6:
    v151 = v66;
    goto LABEL_10;
  }

LABEL_9:
  v151 = *(v64 + *(type metadata accessor for StaticMediaProfile() + 24));

LABEL_10:
  v164 = v61;
  v165 = v59;
  v69 = v159;
  if (!v159)
  {
    v70 = (v64 + *(type metadata accessor for StaticMediaProfile() + 28));
    v71 = v70[1];
    v157 = *v70;
  }

  v150 = v69;
  sub_1D1741C08(v148, v43, &qword_1EC642570, &qword_1D1E6C6A0);
  v72 = sub_1D1E669FC();
  v73 = *(v72 - 8);
  v74 = *(v73 + 48);
  if (v74(v43, 1, v72) == 1)
  {
    v75 = type metadata accessor for StaticMediaProfile();
    sub_1D1741C08(v64 + *(v75 + 32), v166, &qword_1EC642570, &qword_1D1E6C6A0);
    v76 = v74(v43, 1, v72);

    v77 = v149;
    if (v76 != 1)
    {
      sub_1D1741A30(v43, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v78 = v166;
    (*(v73 + 32))(v166, v43, v72);
    (*(v73 + 56))(v78, 0, 1, v72);

    v77 = v149;
  }

  v79 = a11;
  v80 = v165;
  if (a10)
  {
    v149 = a10;
  }

  else
  {
    v81 = (v64 + *(type metadata accessor for StaticMediaProfile() + 36));
    v82 = v81[1];
    v158 = *v81;
    v149 = v82;
  }

  v83 = a13;
  if (a11 == 2)
  {
    v79 = *(v64 + *(type metadata accessor for StaticMediaProfile() + 40));
  }

  v84 = a12;
  if (a13 == 2)
  {
    v85 = type metadata accessor for StaticMediaProfile();
    v84 = a12;
    v83 = *(v64 + *(v85 + 44));
  }

  if (v84 == 2)
  {
    LODWORD(v148) = *(v64 + *(type metadata accessor for StaticMediaProfile() + 52));
  }

  else
  {
    LODWORD(v148) = v84;
  }

  LODWORD(v169) = a15;
  v86 = v147;
  sub_1D1741C08(a14, v147, &qword_1EC642590, qword_1D1E71260);
  if (v62(v86, 1, v80) == 1)
  {
    v87 = type metadata accessor for StaticMediaProfile();
    (*(v164 + 16))(v163, v64 + *(v87 + 56), v80);
    v88 = v62(v86, 1, v80);
    v89 = v86;
    v90 = v88;

    if (v90 != 1)
    {
      sub_1D1741A30(v89, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v164 + 32))(v163, v86, v80);
  }

  v91 = a16;
  LODWORD(v159) = v79;
  if (v169 == 2)
  {
    LODWORD(v169) = *(v64 + *(type metadata accessor for StaticMediaProfile() + 60));
  }

  if (a16 == 2)
  {
    v91 = *(v64 + *(type metadata accessor for StaticMediaProfile() + 64));
  }

  LODWORD(v147) = v91;
  if (a17)
  {
    v146 = a17;
  }

  else
  {
    v146 = *(v64 + *(type metadata accessor for StaticMediaProfile() + 68));
  }

  sub_1D1741C08(a18, v77, &qword_1EC643C58, &unk_1D1E995D0);
  v92 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v93 = *(v92 - 8);
  v94 = *(v93 + 48);
  if (v94(v77, 1, v92) == 1)
  {
    v95 = type metadata accessor for StaticMediaProfile();
    sub_1D1741C08(v64 + *(v95 + 72), v167, &qword_1EC643C58, &unk_1D1E995D0);
    v96 = v94(v77, 1, v92);

    v97 = v154;
    if (v96 != 1)
    {
      sub_1D1741A30(v77, &qword_1EC643C58, &unk_1D1E995D0);
    }
  }

  else
  {
    v98 = v167;
    sub_1D1C0942C(v77, v167, type metadata accessor for StaticAccessory.DeviceIdentifier);
    (*(v93 + 56))(v98, 0, 1, v92);

    v97 = v154;
  }

  LODWORD(v154) = v83;
  if (v170 == 6)
  {
    v170 = *(v64 + *(type metadata accessor for StaticMediaProfile() + 76));
  }

  if (v171 == 4)
  {
    v171 = *(v64 + *(type metadata accessor for StaticMediaProfile() + 80));
  }

  v101 = a22;
  if (!a22)
  {
    v102 = (v64 + *(type metadata accessor for StaticMediaProfile() + 84));
    a21 = *v102;
    v101 = v102[1];
  }

  v145 = a21;
  v103 = a24;
  if (!a24)
  {
    v104 = (v64 + *(type metadata accessor for StaticMediaProfile() + 88));
    a23 = *v104;
    v105 = v104[1];
  }

  v142 = v103;
  v106 = v64;
  v107 = v161;
  LODWORD(v160) = v162;
  if (v162 == 255)
  {
    v108 = v64 + *(type metadata accessor for StaticMediaProfile() + 92);
    v107 = *v108;
    v109 = *v108;
    LODWORD(v160) = *(v108 + 8);
    sub_1D18EB144(v109, v160);
  }

  v141 = v107;
  v143 = v101;
  v144 = a23;
  v110 = a26;
  if (!a26)
  {
    v111 = *(v64 + *(type metadata accessor for StaticMediaProfile() + 96));
  }

  v140 = v110;
  sub_1D1741C08(a27, v97, &qword_1EC644760, &unk_1D1E9E530);
  v112 = type metadata accessor for StaticSoftwareUpdate(0);
  v113 = v97;
  v114 = *(v112 - 8);
  v115 = *(v114 + 48);
  if (v115(v97, 1, v112) == 1)
  {
    v116 = type metadata accessor for StaticMediaProfile();
    sub_1D1741C08(v64 + *(v116 + 100), v168, &qword_1EC644760, &unk_1D1E9E530);
    v117 = v115(v97, 1, v112);

    sub_1D18EB144(v161, v162);

    v118 = v141;
    if (v117 != 1)
    {
      sub_1D1741A30(v97, &qword_1EC644760, &unk_1D1E9E530);
    }
  }

  else
  {
    v119 = v168;
    sub_1D1C0942C(v113, v168, type metadata accessor for StaticSoftwareUpdate);
    (*(v114 + 56))(v119, 0, 1, v112);

    sub_1D18EB144(v161, v162);

    v118 = v141;
  }

  v120 = v155;
  v121 = v153;
  v122 = v154;
  if (v155 == 3)
  {
    v120 = *(v106 + *(type metadata accessor for StaticMediaProfile() + 104));
  }

  v123 = v165;
  v124 = *(v164 + 32);
  v124(a9, v121, v165);
  v125 = type metadata accessor for StaticMediaProfile();
  v126 = (a9 + v125[5]);
  v127 = v151;
  v128 = v152;
  *v126 = v156;
  v126[1] = v128;
  *(a9 + v125[6]) = v127;
  v129 = (a9 + v125[7]);
  v130 = v150;
  *v129 = v157;
  v129[1] = v130;
  sub_1D1741A90(v166, a9 + v125[8], &qword_1EC642570, &qword_1D1E6C6A0);
  v131 = (a9 + v125[9]);
  v132 = v149;
  *v131 = v158;
  v131[1] = v132;
  *(a9 + v125[10]) = v159 & 1;
  *(a9 + v125[11]) = v122 & 1;
  *(a9 + v125[12]) = 1;
  *(a9 + v125[13]) = v148 & 1;
  v124(a9 + v125[14], v163, v123);
  *(a9 + v125[15]) = v169 & 1;
  *(a9 + v125[16]) = v147 & 1;
  *(a9 + v125[17]) = v146;
  sub_1D1741A90(v167, a9 + v125[18], &qword_1EC643C58, &unk_1D1E995D0);
  v133 = v171;
  *(a9 + v125[19]) = v170;
  *(a9 + v125[20]) = v133;
  v134 = (a9 + v125[21]);
  v135 = v143;
  *v134 = v145;
  v134[1] = v135;
  v136 = (a9 + v125[22]);
  v137 = v142;
  *v136 = v144;
  v136[1] = v137;
  v138 = a9 + v125[23];
  *v138 = v118;
  *(v138 + 8) = v160;
  *(a9 + v125[24]) = v140;
  result = sub_1D1741A90(v168, a9 + v125[25], &qword_1EC644760, &unk_1D1E9E530);
  *(a9 + v125[26]) = v120;
  return result;
}

uint64_t static StaticMediaProfile.test(name:specialMediaCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  sub_1D1E66A6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v33 = sub_1D179BE14(v11);
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  v12 = type metadata accessor for StaticMediaProfile();
  v13 = v12[8];
  sub_1D1E6698C();
  v14 = sub_1D1E669FC();
  (*(*(v14 - 8) + 56))(a4 + v13, 0, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643200, &qword_1D1E71658);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v5;
  v16 = inited + 32;
  *(inited + 40) = v6;
  v17 = _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(inited);
  v19 = v18;
  swift_setDeallocating();
  sub_1D1771B4C(v5, v6);
  sub_1D18EB158(v16);
  v20 = a4 + v12[14];
  sub_1D1E66A6C();
  v21 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v22 = v12[18];
  sub_1D1E66A6C();
  v23 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v23 - 8) + 56))(a4 + v22, 0, 1, v23);
  v24 = v12[25];
  v25 = type metadata accessor for StaticSoftwareUpdate(0);
  (*(*(v25 - 8) + 56))(a4 + v24, 1, 1, v25);
  v26 = (a4 + v12[5]);
  *v26 = a1;
  v26[1] = a2;
  *(a4 + v12[6]) = v33;
  v27 = (a4 + v12[7]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a4 + v12[9]);
  *v28 = v17;
  v28[1] = v19;
  *(a4 + v12[10]) = 0;
  *(a4 + v12[11]) = 1;
  *(a4 + v12[12]) = 1;
  *(a4 + v12[13]) = 0;
  *(a4 + v12[15]) = 1;
  *(a4 + v12[16]) = 1;
  *(a4 + v12[17]) = v21;
  *(a4 + v12[19]) = 6;
  *(a4 + v12[20]) = 4;
  v29 = (a4 + v12[21]);
  *v29 = 0;
  v29[1] = 0;
  v30 = (a4 + v12[22]);
  *v30 = 0;
  v30[1] = 0;
  v31 = a4 + v12[23];
  *v31 = v5;
  *(v31 + 8) = v6;
  *(a4 + v12[24]) = 0;
  *(a4 + v12[26]) = 0;
  sub_1D1771B4C(v5, v6);
}

uint64_t sub_1D1C03084(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 272) = a3;
  *(v4 + 280) = a4;
  *(v4 + 692) = a2;
  *(v4 + 264) = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v4 + 288) = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  v7 = sub_1D1E6702C();
  *(v4 + 304) = v7;
  v8 = *(v7 - 8);
  *(v4 + 312) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  v10 = sub_1D1E66FDC();
  *(v4 + 336) = v10;
  v11 = *(v10 - 8);
  *(v4 + 344) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  v13 = sub_1D1E66A7C();
  *(v4 + 384) = v13;
  v14 = *(v13 - 8);
  *(v4 + 392) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  v16 = type metadata accessor for StateSnapshot(0);
  *(v4 + 440) = v16;
  v17 = *(v16 + 20);
  v18 = swift_task_alloc();
  *(v4 + 448) = v18;
  *v18 = v4;
  v18[1] = sub_1D1C032DC;

  return StaticHome.home.getter();
}

uint64_t sub_1D1C032DC(uint64_t a1)
{
  v2 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C033DC, 0, 0);
}

uint64_t sub_1D1C033DC()
{
  v51 = v0;
  if (*(v0 + 456))
  {
    v1 = swift_task_alloc();
    *(v0 + 464) = v1;
    *v1 = v0;
    v1[1] = sub_1D1C0385C;

    return sub_1D1E387D4();
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 272);
    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EE07B5D8);

    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6833C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 272);
      v8 = *(v0 + 692);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v49 = v10;
      *v9 = 136315650;
      *(v9 + 4) = sub_1D1B1312C(0xD000000000000031, 0x80000001D1EC67E0, &v49);
      *(v9 + 12) = 1024;
      *(v9 + 14) = v8;
      *(v9 + 18) = 2080;
      v11 = *(v7 + 16);
      v12 = MEMORY[0x1E69E7CC0];
      if (v11)
      {
        v41 = v10;
        v42 = v6;
        v43 = v9;
        v44 = v5;
        v13 = *(v0 + 392);
        v14 = *(v0 + 272);
        v50 = MEMORY[0x1E69E7CC0];
        sub_1D178CD24(0, v11, 0);
        v12 = v50;
        v15 = *(v13 + 16);
        v13 += 16;
        v16 = v14 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
        v45 = *(v13 + 56);
        v46 = v15;
        v17 = (v13 - 8);
        do
        {
          v18 = *(v0 + 408);
          v19 = *(v0 + 384);
          v46(v18, v16, v19);
          v20 = sub_1D1E66A1C();
          v22 = v21;
          (*v17)(v18, v19);
          v50 = v12;
          v24 = *(v12 + 16);
          v23 = *(v12 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1D178CD24((v23 > 1), v24 + 1, 1);
            v12 = v50;
          }

          *(v12 + 16) = v24 + 1;
          v25 = v12 + 16 * v24;
          *(v25 + 32) = v20;
          *(v25 + 40) = v22;
          v16 += v45;
          --v11;
        }

        while (v11);
        v9 = v43;
        v5 = v44;
        v6 = v42;
        v10 = v41;
      }

      *(v0 + 208) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
      sub_1D17B3684();
      v26 = sub_1D1E6770C();
      v28 = v27;

      v29 = sub_1D1B1312C(v26, v28, &v49);

      *(v9 + 20) = v29;
      _os_log_impl(&dword_1D16EC000, v5, v6, "%s Home not found to set power state to %{BOOL}d for device idss %s.", v9, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    (*(*(*(v0 + 440) - 8) + 56))(*(v0 + 264), 1, 1);
    v31 = *(v0 + 424);
    v30 = *(v0 + 432);
    v33 = *(v0 + 408);
    v32 = *(v0 + 416);
    v34 = *(v0 + 400);
    v36 = *(v0 + 368);
    v35 = *(v0 + 376);
    v38 = *(v0 + 352);
    v37 = *(v0 + 360);
    v39 = *(v0 + 328);
    v47 = *(v0 + 320);
    v48 = *(v0 + 296);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_1D1C0385C(uint64_t a1)
{
  v2 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C0395C, 0, 0);
}

uint64_t sub_1D1C0395C()
{
  v83 = v0;
  if (*(v0 + 472))
  {
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      if (sub_1D1E6873C())
      {
        sub_1D179D370(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v72 = MEMORY[0x1E69E7CD0];
      }

      *(v0 + 224) = v72;
      if (sub_1D1E6873C())
      {
        sub_1D179D394(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v1 = MEMORY[0x1E69E7CD0];
      }
    }

    else
    {
      v1 = MEMORY[0x1E69E7CD0];
      *(v0 + 224) = MEMORY[0x1E69E7CD0];
    }

    v2 = *(v0 + 272);
    *(v0 + 232) = v1;
    v3 = *(v2 + 16);
    *(v0 + 480) = v3;
    if (v3)
    {
      v4 = *(v0 + 384);
      v5 = *(v0 + 392);
      v6 = *(v5 + 16);
      v5 += 16;
      v7 = *(v5 + 64);
      *(v0 + 688) = v7;
      *(v0 + 488) = *(v5 + 56);
      *(v0 + 496) = v6;
      v8 = *(v0 + 432);
      *(v0 + 504) = 0;
      *(v0 + 512) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v6(v8, v2 + ((v7 + 32) & ~v7), v4);
      v9 = swift_task_alloc();
      *(v0 + 520) = v9;
      *v9 = v0;
      v9[1] = sub_1D1C0419C;
      v10 = *(v0 + 432);
      v11 = *(v0 + 280);

      return sub_1D1C08CA0(v10, v11);
    }

    else
    {
      if (qword_1EE07AE48 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 376);
      v37 = sub_1D1E6701C();
      *(v0 + 536) = __swift_project_value_buffer(v37, qword_1EE07AE50);
      sub_1D1E66FCC();
      v38 = sub_1D1E66FFC();
      v39 = sub_1D1E683EC();
      if (sub_1D1E6855C())
      {
        v40 = *(v0 + 376);
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v38, v39, v42, "MediaSetPowerState", "", v41, 2u);
        MEMORY[0x1D3893640](v41, -1, -1);
      }

      v43 = *(v0 + 456);
      v44 = *(v0 + 368);
      v45 = *(v0 + 376);
      v46 = *(v0 + 336);
      v47 = *(v0 + 344);

      (*(v47 + 16))(v44, v45, v46);
      v48 = sub_1D1E6705C();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      *(v0 + 544) = sub_1D1E6704C();
      v51 = *(v47 + 8);
      *(v0 + 552) = v51;
      *(v0 + 560) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v51(v45, v46);
      v52 = *(v0 + 224);
      *(v0 + 568) = v52;
      sub_1D1BFAAF4(v52, &qword_1EC643000, 0x1E696CAF8, &qword_1EC64C908);
      sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
      sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
      v53 = sub_1D1E6815C();
      *(v0 + 576) = v53;

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1D1C049A4;
      v54 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D17B04C8;
      *(v0 + 104) = &block_descriptor_50;
      *(v0 + 112) = v54;
      [v43 executeActions:v53 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 272);
    v14 = sub_1D1E6709C();
    __swift_project_value_buffer(v14, qword_1EE07B5D8);

    v15 = sub_1D1E6707C();
    v16 = sub_1D1E6833C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 272);
      v18 = *(v0 + 692);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v81 = v20;
      *v19 = 136315650;
      *(v19 + 4) = sub_1D1B1312C(0xD000000000000031, 0x80000001D1EC67E0, &v81);
      *(v19 + 12) = 1024;
      *(v19 + 14) = v18;
      *(v19 + 18) = 2080;
      v21 = *(v17 + 16);
      v22 = MEMORY[0x1E69E7CC0];
      if (v21)
      {
        v73 = v20;
        v74 = v16;
        v75 = v19;
        v76 = v15;
        v23 = *(v0 + 392);
        v24 = *(v0 + 272);
        v82 = MEMORY[0x1E69E7CC0];
        sub_1D178CD24(0, v21, 0);
        v22 = v82;
        v25 = *(v23 + 16);
        v23 += 16;
        v26 = v24 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
        v77 = *(v23 + 56);
        v78 = v25;
        v27 = (v23 - 8);
        do
        {
          v28 = *(v0 + 408);
          v29 = *(v0 + 384);
          v78(v28, v26, v29);
          v30 = sub_1D1E66A1C();
          v32 = v31;
          (*v27)(v28, v29);
          v82 = v22;
          v34 = *(v22 + 16);
          v33 = *(v22 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_1D178CD24((v33 > 1), v34 + 1, 1);
            v22 = v82;
          }

          *(v22 + 16) = v34 + 1;
          v35 = v22 + 16 * v34;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
          v26 += v77;
          --v21;
        }

        while (v21);
        v19 = v75;
        v15 = v76;
        v16 = v74;
        v20 = v73;
      }

      v56 = *(v0 + 456);
      *(v0 + 216) = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
      sub_1D17B3684();
      v57 = sub_1D1E6770C();
      v59 = v58;

      v60 = sub_1D1B1312C(v57, v59, &v81);

      *(v19 + 20) = v60;
      _os_log_impl(&dword_1D16EC000, v15, v16, "%s HomeManager not found to set power state to %{BOOL}d for device idss %s.", v19, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    else
    {
      v55 = *(v0 + 456);
    }

    (*(*(*(v0 + 440) - 8) + 56))(*(v0 + 264), 1, 1);
    v62 = *(v0 + 424);
    v61 = *(v0 + 432);
    v64 = *(v0 + 408);
    v63 = *(v0 + 416);
    v65 = *(v0 + 400);
    v67 = *(v0 + 368);
    v66 = *(v0 + 376);
    v69 = *(v0 + 352);
    v68 = *(v0 + 360);
    v70 = *(v0 + 328);
    v79 = *(v0 + 320);
    v80 = *(v0 + 296);

    v71 = *(v0 + 8);

    return v71();
  }
}

uint64_t sub_1D1C0419C(uint64_t a1)
{
  v2 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C0429C, 0, 0);
}

uint64_t sub_1D1C0429C()
{
  v62 = v0;
  v1 = *(v0 + 528);
  if (v1)
  {
    if (*(v0 + 692))
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    v3 = [objc_allocWithZone(MEMORY[0x1E696CAF8]) initWithAccessory:v1 targetSleepWakeState:v2];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 mediaProfile];
      if (v5)
      {
        sub_1D1763114(&v61, v5);
      }

      v6 = *(v0 + 432);
      v7 = *(v0 + 384);
      v8 = *(v0 + 392);
      v9 = v4;
      sub_1D1768DB8(&v61, v9);

      (*(v8 + 8))(v6, v7);
      goto LABEL_15;
    }
  }

  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 512);
  v11 = *(v0 + 496);
  v12 = *(v0 + 424);
  v13 = *(v0 + 432);
  v14 = *(v0 + 384);
  v15 = sub_1D1E6709C();
  __swift_project_value_buffer(v15, qword_1EE07B5D8);
  v11(v12, v13, v14);
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6833C();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 424);
  v20 = *(v0 + 432);
  v22 = *(v0 + 384);
  v21 = *(v0 + 392);
  if (v18)
  {
    v60 = *(v0 + 432);
    v23 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v23 = 136315906;
    *(v23 + 4) = sub_1D1B1312C(0xD00000000000007CLL, 0x80000001D1EC6820, &v61);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1D1B1312C(0xD000000000000031, 0x80000001D1EC67E0, &v61);
    *(v23 + 22) = 2048;
    *(v23 + 24) = 460;
    *(v23 + 32) = 2080;
    sub_1D1C07270(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v24 = sub_1D1E68FAC();
    v26 = v25;
    v27 = *(v21 + 8);
    v27(v19, v22);
    v28 = sub_1D1B1312C(v24, v26, &v61);

    *(v23 + 34) = v28;
    _os_log_impl(&dword_1D16EC000, v16, v17, "%s | %s | %ld | Could not create power action using deviceID: %s", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v59, -1, -1);
    MEMORY[0x1D3893640](v23, -1, -1);

    v27(v60, v22);
  }

  else
  {

    v29 = *(v21 + 8);
    v29(v19, v22);
    v29(v20, v22);
  }

LABEL_15:
  v30 = *(v0 + 504) + 1;
  if (v30 == *(v0 + 480))
  {
    if (qword_1EE07AE48 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 376);
    v32 = sub_1D1E6701C();
    *(v0 + 536) = __swift_project_value_buffer(v32, qword_1EE07AE50);
    sub_1D1E66FCC();
    v33 = sub_1D1E66FFC();
    v34 = sub_1D1E683EC();
    if (sub_1D1E6855C())
    {
      v35 = *(v0 + 376);
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v33, v34, v37, "MediaSetPowerState", "", v36, 2u);
      MEMORY[0x1D3893640](v36, -1, -1);
    }

    v38 = *(v0 + 456);
    v39 = *(v0 + 368);
    v40 = *(v0 + 376);
    v41 = *(v0 + 336);
    v42 = *(v0 + 344);

    (*(v42 + 16))(v39, v40, v41);
    v43 = sub_1D1E6705C();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    *(v0 + 544) = sub_1D1E6704C();
    v46 = *(v42 + 8);
    *(v0 + 552) = v46;
    *(v0 + 560) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v40, v41);
    v47 = *(v0 + 224);
    *(v0 + 568) = v47;
    sub_1D1BFAAF4(v47, &qword_1EC643000, 0x1E696CAF8, &qword_1EC64C908);
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    v48 = sub_1D1E6815C();
    *(v0 + 576) = v48;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D1C049A4;
    v49 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D17B04C8;
    *(v0 + 104) = &block_descriptor_50;
    *(v0 + 112) = v49;
    [v38 executeActions:v48 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v50 = *(v0 + 496);
    v51 = *(v0 + 432);
    v52 = *(v0 + 384);
    v53 = *(v0 + 272) + ((*(v0 + 688) + 32) & ~*(v0 + 688)) + *(v0 + 488) * v30;
    v54 = (*(v0 + 392) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 504) = v30;
    *(v0 + 512) = v54;
    v50(v51, v53, v52);
    v55 = swift_task_alloc();
    *(v0 + 520) = v55;
    *v55 = v0;
    v55[1] = sub_1D1C0419C;
    v56 = *(v0 + 432);
    v57 = *(v0 + 280);

    return sub_1D1C08CA0(v56, v57);
  }
}

uint64_t sub_1D1C049A4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 584) = v3;
  if (v3)
  {
    v4 = *(v1 + 568);
    v5 = *(v1 + 232);

    v6 = sub_1D1C055D4;
  }

  else
  {
    v6 = sub_1D1C04AC8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1C04AC8()
{
  v1 = v0;
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 360);

  v5 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v6 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v7 = *(v0 + 544);
    v8 = *(v0 + 328);
    v9 = *(v0 + 304);
    v10 = *(v0 + 312);

    sub_1D1E6706C();

    if ((*(v10 + 88))(v8, v9) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 312) + 8))(*(v0 + 328), *(v0 + 304));
      v11 = "";
    }

    v12 = *(v0 + 360);
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v5, v6, v14, "MediaSetPowerState", v11, v13, 2u);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  v17 = *(v0 + 360);
  v18 = *(v0 + 336);

  v16(v17, v18);
  v19 = *(v0 + 232);
  v20 = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
  if ((v19 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
    sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
    v21 = sub_1D1E681BC();
    v19 = *(v0 + 144);
    v24 = *(v0 + 152);
    v25 = *(v0 + 160);
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
  }

  else
  {
    v28 = -1 << *(v19 + 32);
    v24 = v19 + 56;
    v25 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v27 = v30 & *(v19 + 56);

    v26 = 0;
  }

  v31 = *(v0 + 392);
  v32 = *(v0 + 692);
  v64 = v25;
  v33 = (v25 + 64) >> 6;
  v68 = v32 | 0x80;
  v65 = v31;
  v66 = v33;
  v67 = (v31 + 8);
  for (i = v1; ; v1 = i)
  {
    v1[74] = v20;
    if (v19 < 0)
    {
      v39 = sub_1D1E6877C();
      if (!v39 || (v1[32] = v39, sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0), swift_dynamicCast(), v38 = v1[31], v36 = v26, v37 = v27, !v38))
      {
LABEL_33:
        v58 = i[71];
        sub_1D1716918();

        i[75] = sub_1D1E67E1C();
        i[76] = sub_1D1E67E0C();
        v59 = sub_1D1E67D4C();
        v61 = v60;
        v21 = sub_1D1C0509C;
        v22 = v59;
        v23 = v61;

        return MEMORY[0x1EEE6DFA0](v21, v22, v23);
      }
    }

    else
    {
      v34 = v26;
      v35 = v27;
      v36 = v26;
      if (!v27)
      {
        while (1)
        {
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v36 >= v33)
          {
            goto LABEL_33;
          }

          v35 = *(v24 + 8 * v36);
          ++v34;
          if (v35)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v21, v22, v23);
      }

LABEL_20:
      v37 = (v35 - 1) & v35;
      v38 = *(*(v19 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
      if (!v38)
      {
        goto LABEL_33;
      }
    }

    v40 = v24;
    v41 = v19;
    v42 = i[52];
    v43 = [v38 uniqueIdentifier];
    sub_1D1E66A5C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v20;
    v21 = sub_1D1742188(v42);
    v45 = v20[2];
    v46 = (v22 & 1) == 0;
    v47 = __OFADD__(v45, v46);
    v48 = v45 + v46;
    if (v47)
    {
      goto LABEL_40;
    }

    v49 = v22;
    if (v20[3] < v48)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = v21;
      sub_1D173BFC4();
      v21 = v57;
      v20 = v70;
    }

LABEL_30:
    v52 = i[52];
    v53 = i[48];
    if (v49)
    {
      *(v20[7] + v21) = v68;

      v21 = (*v67)(v52, v53);
    }

    else
    {
      v20[(v21 >> 6) + 8] |= 1 << v21;
      v54 = v21;
      (*(v65 + 16))(v20[6] + *(v65 + 72) * v21, v52, v53);
      *(v20[7] + v54) = v68;

      v21 = (*(v65 + 8))(v52, v53);
      v55 = v20[2];
      v47 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v47)
      {
        goto LABEL_41;
      }

      v20[2] = v56;
    }

    v26 = v36;
    v27 = v37;
    v19 = v41;
    v24 = v40;
    v33 = v66;
  }

  v50 = i[52];
  sub_1D172DCA8(v48, isUniquelyReferenced_nonNull_native);
  v21 = sub_1D1742188(v50);
  if ((v49 & 1) == (v51 & 1))
  {
    goto LABEL_30;
  }

  v62 = i[48];

  return sub_1D1E690FC();
}

uint64_t sub_1D1C0509C()
{
  v1 = *(v0 + 608);

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C05134, 0, 0);
}

uint64_t sub_1D1C05134()
{
  v1 = *(v0 + 600);
  *(v0 + 616) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C051C0, v3, v2);
}

uint64_t sub_1D1C051C0()
{
  v1 = *(v0 + 616);

  *(v0 + 624) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1C05234, 0, 0);
}

uint64_t sub_1D1C05234()
{
  v1 = v0[74];
  v2 = v0[59];
  v3 = v0[57];
  v5 = v0[36];
  v4 = v0[37];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
  v7 = [v3 uniqueIdentifier];
  sub_1D1E66A5C();

  *(v4 + v6) = v1;
  swift_storeEnumTagMultiPayload();
  v8 = swift_task_alloc();
  v0[79] = v8;
  *v8 = v0;
  v8[1] = sub_1D1C05358;
  v9 = v0[78];
  v10 = v0[37];
  v11 = v0[33];

  return sub_1D1E5A250(v11, v10, v2, v3, 0);
}

uint64_t sub_1D1C05358()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 296);
  v4 = *v0;

  sub_1D1C09494(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1C05484, 0, 0);
}

uint64_t sub_1D1C05484()
{
  v1 = v0[68];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[55];
  v5 = v0[33];

  (*(*(v4 - 8) + 56))(v5, 0, 1, v4);
  v7 = v0[53];
  v6 = v0[54];
  v9 = v0[51];
  v8 = v0[52];
  v10 = v0[50];
  v12 = v0[46];
  v11 = v0[47];
  v14 = v0[44];
  v13 = v0[45];
  v15 = v0[41];
  v18 = v0[40];
  v19 = v0[37];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D1C055D4()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[44];
  swift_willThrow();

  v6 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v7 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v8 = v0[68];
    v10 = v0[39];
    v9 = v0[40];
    v11 = v0[38];

    sub_1D1E6706C();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[39] + 8))(v0[40], v0[38]);
      v12 = "";
    }

    v13 = v0[44];
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v6, v7, v15, "MediaSetPowerState", v12, v14, 2u);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  v16 = v0[70];
  v17 = v0[69];
  v18 = v0[44];
  v19 = v0[42];

  v17(v18, v19);
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v20 = v0[73];
  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EE07B5D8);
  v22 = v20;
  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[73];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_1D16EC000, v23, v24, "Error executing power actions %@", v26, 0xCu);
    sub_1D1741A30(v27, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v27, -1, -1);
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v0[80] = sub_1D1E67E1C();
  v0[81] = sub_1D1E67E0C();
  v31 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C058E0, v31, v30);
}

uint64_t sub_1D1C058E0()
{
  v1 = *(v0 + 648);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C05978, 0, 0);
}

uint64_t sub_1D1C05978()
{
  v1 = *(v0 + 640);
  *(v0 + 656) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C05A04, v3, v2);
}

uint64_t sub_1D1C05A04()
{
  v1 = *(v0 + 656);

  *(v0 + 664) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1C05A78, 0, 0);
}

uint64_t sub_1D1C05A78()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 400);
  v3 = [*(v0 + 456) uniqueIdentifier];
  sub_1D1E66A5C();

  *(v0 + 672) = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C05B38, v5, v4);
}

uint64_t sub_1D1C05B38()
{
  v1 = v0[84];
  v2 = v0[83];

  swift_getKeyPath();
  v0[30] = v2;
  sub_1D1C07270(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToStateSnapshots;
  swift_beginAccess();
  v0[85] = *(v2 + v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1C05C48, 0, 0);
}

uint64_t sub_1D1C05C48()
{
  if (*(v0[85] + 16))
  {
    v1 = sub_1D1742188(v0[50]);
    v2 = v0[73];
    v3 = v0[68];
    v4 = v0[59];
    v5 = v0[57];
    v6 = v0[55];
    v8 = v0[49];
    v7 = v0[50];
    v9 = v0[48];
    if (v10)
    {
      v36 = v0[50];
      v11 = *(v6 - 8);
      sub_1D1C09520(*(v0[85] + 56) + *(v11 + 72) * v1, v0[33], type metadata accessor for StateSnapshot);

      (*(v8 + 8))(v36, v9);

      v12 = 0;
      goto LABEL_7;
    }

    v22 = v0[68];

    (*(v8 + 8))(v7, v9);
    v21 = *(v6 - 8);
  }

  else
  {
    v13 = v0[73];
    v14 = v0[68];
    v15 = v0[59];
    v16 = v0[57];
    v17 = v0[55];
    v19 = v0[49];
    v18 = v0[50];
    v20 = v0[48];

    (*(v19 + 8))(v18, v20);
    v21 = *(v17 - 8);
  }

  v11 = v21;
  v12 = 1;
LABEL_7:
  (*(v11 + 56))(v0[33], v12, 1, v0[55]);
  v24 = v0[53];
  v23 = v0[54];
  v26 = v0[51];
  v25 = v0[52];
  v27 = v0[50];
  v29 = v0[46];
  v28 = v0[47];
  v31 = v0[44];
  v30 = v0[45];
  v32 = v0[41];
  v35 = v0[40];
  v37 = v0[37];

  v33 = v0[1];

  return v33();
}

void *sub_1D1C05EFC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1D19FA9A0(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

void sub_1D1C05F8C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_1D1E684EC();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_1D1E684FC();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

BOOL _s13HomeDataModel18StaticMediaProfileV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v117 = type metadata accessor for StaticSoftwareUpdate(0);
  v115 = *(v117 - 8);
  v4 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v113 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v116 = &v109 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C608, &qword_1D1E9FA10);
  v9 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v118 = &v109 - v10;
  v121 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v119 = *(v121 - 8);
  v11 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v120 = &v109 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C910, &qword_1D1EA0D90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v122 = &v109 - v19;
  v20 = sub_1D1E669FC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v109 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v109 - v31;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v112 = v13;
  v33 = type metadata accessor for StaticMediaProfile();
  v34 = v33[5];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D17A6E98(*(a1 + v33[6]), *(a2 + v33[6])) & 1) == 0)
  {
    return 0;
  }

  v38 = v33[7];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v43 = a1;
  v44 = a2;
  v111 = v33;
  v45 = v33[8];
  v46 = *(v29 + 48);
  v109 = v43;
  sub_1D1741C08(v43 + v45, v32, &qword_1EC642570, &qword_1D1E6C6A0);
  v110 = v44;
  sub_1D1741C08(v44 + v45, &v32[v46], &qword_1EC642570, &qword_1D1E6C6A0);
  v47 = *(v21 + 48);
  if (v47(v32, 1, v20) == 1)
  {
    if (v47(&v32[v46], 1, v20) == 1)
    {
      sub_1D1741A30(v32, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_21;
    }

LABEL_18:
    v48 = &qword_1EC642AC0;
    v49 = &qword_1D1E6E810;
    v50 = v32;
LABEL_19:
    sub_1D1741A30(v50, v48, v49);
    return 0;
  }

  sub_1D1741C08(v32, v28, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v47(&v32[v46], 1, v20) == 1)
  {
    (*(v21 + 8))(v28, v20);
    goto LABEL_18;
  }

  (*(v21 + 32))(v24, &v32[v46], v20);
  sub_1D1C07270(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v51 = sub_1D1E6775C();
  v52 = *(v21 + 8);
  v52(v24, v20);
  v52(v28, v20);
  sub_1D1741A30(v32, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v54 = v110;
  v53 = v111;
  v55 = v111[9];
  v56 = v109;
  v57 = *(v109 + v55);
  v58 = *(v109 + v55 + 8);
  v59 = (v110 + v55);
  if (v57 != *v59 || v58 != v59[1])
  {
    v60 = sub_1D1E6904C();
    v53 = v111;
    if ((v60 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v56 + v53[10]) != *(v54 + v53[10]))
  {
    return 0;
  }

  if (*(v56 + v53[11]) != *(v54 + v53[11]))
  {
    return 0;
  }

  if (*(v56 + v53[12]) != *(v54 + v53[12]))
  {
    return 0;
  }

  if (*(v56 + v53[13]) != *(v54 + v53[13]))
  {
    return 0;
  }

  v61 = v53[14];
  v62 = v53;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(v56 + v62[15]) != *(v54 + v62[15]) || *(v56 + v62[16]) != *(v54 + v62[16]) || (sub_1D18490AC(*(v56 + v62[17]), *(v54 + v62[17])) & 1) == 0)
  {
    return 0;
  }

  v63 = v62[18];
  v64 = *(v17 + 48);
  v65 = v56 + v63;
  v66 = v122;
  sub_1D1741C08(v65, v122, &qword_1EC643C58, &unk_1D1E995D0);
  sub_1D1741C08(v54 + v63, v66 + v64, &qword_1EC643C58, &unk_1D1E995D0);
  v67 = *(v119 + 48);
  v68 = v121;
  if (v67(v66, 1, v121) == 1)
  {
    if (v67(v66 + v64, 1, v68) == 1)
    {
      sub_1D1741A30(v122, &qword_1EC643C58, &unk_1D1E995D0);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  sub_1D1741C08(v66, v120, &qword_1EC643C58, &unk_1D1E995D0);
  if (v67(v66 + v64, 1, v68) == 1)
  {
    sub_1D1C09494(v120, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_37:
    v48 = &qword_1EC64C910;
    v49 = &qword_1D1EA0D90;
    v50 = v122;
    goto LABEL_19;
  }

  v69 = v122;
  v70 = v122 + v64;
  v71 = v112;
  sub_1D1C0942C(v70, v112, type metadata accessor for StaticAccessory.DeviceIdentifier);
  v72 = v120;
  v73 = _s13HomeDataModel15StaticAccessoryV16DeviceIdentifierO2eeoiySbAE_AEtFZ_0(v120, v71);
  sub_1D1C09494(v71, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1C09494(v72, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A30(v69, &qword_1EC643C58, &unk_1D1E995D0);
  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  v74 = v111[19];
  v75 = *(v109 + v74);
  v76 = *(v110 + v74);
  if (v75 == 6)
  {
    if (v76 != 6)
    {
      return 0;
    }
  }

  else if (v75 != v76)
  {
    return 0;
  }

  v77 = v111[20];
  v78 = *(v109 + v77);
  v79 = *(v110 + v77);
  if (v78 == 4)
  {
    if (v79 != 4)
    {
      return 0;
    }
  }

  else if (v78 != v79)
  {
    return 0;
  }

  v80 = v111[21];
  v81 = (v109 + v80);
  v82 = *(v109 + v80 + 8);
  v83 = (v110 + v80);
  v84 = v83[1];
  if (v82)
  {
    if (!v84 || (*v81 != *v83 || v82 != v84) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v84)
  {
    return 0;
  }

  v85 = v111[22];
  v86 = (v109 + v85);
  v87 = *(v109 + v85 + 8);
  v88 = (v110 + v85);
  v89 = v88[1];
  if (v87)
  {
    if (!v89 || (*v86 != *v88 || v87 != v89) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  v90 = v111[23];
  v91 = (v109 + v90);
  v92 = *(v109 + v90);
  v93 = *(v109 + v90 + 8);
  v94 = v110 + v90;
  v95 = *v94;
  v96 = *(v94 + 8);
  if (v93 == 255)
  {
    sub_1D18EB144(*v91, 255);
    if (v96 == 255)
    {
      sub_1D18EB144(v95, 255);
      sub_1D18EB2D8(v92, 255);
      goto LABEL_71;
    }

    sub_1D18EB144(v95, v96);
LABEL_68:
    sub_1D18EB2D8(v92, v93);
    sub_1D18EB2D8(v95, v96);
    return 0;
  }

  v125 = v92;
  v126 = v93;
  if (v96 == 255)
  {
    sub_1D18EB144(v92, v93);
    sub_1D18EB144(v95, 255);
    sub_1D18EB144(v92, v93);
    sub_1D1771B5C(v92, v93);
    goto LABEL_68;
  }

  v123 = v95;
  v124 = v96;
  sub_1D18EB144(v92, v93);
  sub_1D18EB144(v95, v96);
  sub_1D18EB144(v92, v93);
  v97 = static StaticAccessory.SpecialMediaCategory.== infix(_:_:)(&v125, &v123);
  sub_1D1771B5C(v123, v124);
  sub_1D1771B5C(v125, v126);
  sub_1D18EB2D8(v92, v93);
  if ((v97 & 1) == 0)
  {
    return 0;
  }

LABEL_71:
  v99 = v111[24];
  v100 = *(v110 + v99);
  if (*(v109 + v99))
  {
    if (!v100 || (sub_1D17B30F0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v100)
  {
    return 0;
  }

  v101 = v111[25];
  v102 = *(v114 + 48);
  v103 = v118;
  sub_1D1741C08(v109 + v101, v118, &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741C08(v110 + v101, v103 + v102, &qword_1EC644760, &unk_1D1E9E530);
  v104 = *(v115 + 48);
  if (v104(v103, 1, v117) != 1)
  {
    v105 = v118;
    sub_1D1741C08(v118, v116, &qword_1EC644760, &unk_1D1E9E530);
    if (v104(v105 + v102, 1, v117) == 1)
    {
      sub_1D1C09494(v116, type metadata accessor for StaticSoftwareUpdate);
      goto LABEL_82;
    }

    sub_1D1C0942C(v118 + v102, v113, type metadata accessor for StaticSoftwareUpdate);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      sub_1D1C09494(v113, type metadata accessor for StaticSoftwareUpdate);
      sub_1D1C09494(v116, type metadata accessor for StaticSoftwareUpdate);
      v48 = &qword_1EC644760;
      v49 = &unk_1D1E9E530;
      goto LABEL_83;
    }

    v106 = v116;
    v107 = v113;
    updated = _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(v116 + *(v117 + 20), v113 + *(v117 + 20));
    sub_1D1C09494(v107, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1C09494(v106, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1741A30(v118, &qword_1EC644760, &unk_1D1E9E530);
    if (updated)
    {
      return *(v109 + v111[26]) == *(v110 + v111[26]);
    }

    return 0;
  }

  if (v104(v118 + v102, 1, v117) != 1)
  {
LABEL_82:
    v48 = &qword_1EC64C608;
    v49 = &qword_1D1E9FA10;
LABEL_83:
    v50 = v118;
    goto LABEL_19;
  }

  sub_1D1741A30(v118, &qword_1EC644760, &unk_1D1E9E530);
  return *(v109 + v111[26]) == *(v110 + v111[26]);
}

uint64_t sub_1D1C06E10(uint64_t *a1)
{
  v2 = sub_1D1E66ADC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1D1E677DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-v10];
  v12 = *(a1 + 8);
  if (v12 != 1)
  {
    v13 = *a1;
    if (v12 == 2)
    {
      if ((v13 & 0x100) != 0)
      {
        goto LABEL_9;
      }
    }

    else if (v12 == 3 && (v13 == 1 || v13 == 3))
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  sub_1D1E6776C();
  (*(v5 + 16))(v9, v11, v4);
  if (qword_1EE07A000 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE0813C0;
  sub_1D1E66ACC();
  v16 = sub_1D1E6787C();
  (*(v5 + 8))(v11, v4);
  return v16;
}

uint64_t _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0xD000000000000010;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (result + 40);
  while (*v5 > 1u)
  {
    if (*v5 != 2 && *(v5 - 1) == 1)
    {
      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }
    }

LABEL_4:
    v5 += 16;
    if (!--v1)
    {
      goto LABEL_20;
    }
  }

  if (!*v5)
  {
    goto LABEL_4;
  }

  v7 = *(v5 - 1);
  if (v7 < 2)
  {
    v6 = __OFADD__(v3++, 1);
    if (v6)
    {
      goto LABEL_31;
    }

    goto LABEL_4;
  }

  if (v7 == 2)
  {
    v6 = __OFADD__(v2++, 1);
    if (v6)
    {
      goto LABEL_32;
    }

    goto LABEL_4;
  }

  v6 = __OFADD__(v3++, 1);
  if (!v6)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_20:
  if (v4 == 1)
  {
    return 0x2E7674656C707061;
  }

  result = 0x2E646F70656D6F68;
  if (v3 != 2 && v3 != 1)
  {
    if (v2 == 1)
    {
      return 0xD000000000000010;
    }

    else
    {
      if (v2 != 2)
      {
        return 0xD000000000000010;
      }

      return 0xD000000000000012;
    }
  }

  return result;
}

uint64_t type metadata accessor for StaticMediaProfile()
{
  result = qword_1EE07D578;
  if (!qword_1EE07D578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1C0721C()
{
  result = qword_1EC64C7C0;
  if (!qword_1EC64C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C7C0);
  }

  return result;
}

uint64_t sub_1D1C07270(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1C072B8()
{
  result = qword_1EC64C7C8;
  if (!qword_1EC64C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C7C8);
  }

  return result;
}

unint64_t sub_1D1C0730C()
{
  result = qword_1EC64C7D0;
  if (!qword_1EC64C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C7D0);
  }

  return result;
}

uint64_t sub_1D1C07360(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C07270(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1C073FC()
{
  result = qword_1EC64C7E0;
  if (!qword_1EC64C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C7E0);
  }

  return result;
}

unint64_t sub_1D1C07450()
{
  result = qword_1EC64C7E8;
  if (!qword_1EC64C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C7E8);
  }

  return result;
}

unint64_t sub_1D1C074A4()
{
  result = qword_1EC64C818;
  if (!qword_1EC64C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C818);
  }

  return result;
}

unint64_t sub_1D1C074F8()
{
  result = qword_1EC64C820;
  if (!qword_1EC64C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C820);
  }

  return result;
}

unint64_t sub_1D1C0754C()
{
  result = qword_1EC64C828;
  if (!qword_1EC64C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C828);
  }

  return result;
}

unint64_t sub_1D1C075A0()
{
  result = qword_1EC64C830;
  if (!qword_1EC64C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C830);
  }

  return result;
}

unint64_t sub_1D1C075F4()
{
  result = qword_1EC64C838;
  if (!qword_1EC64C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C838);
  }

  return result;
}

uint64_t sub_1D1C076D8(void *a1)
{
  a1[1] = sub_1D1C07270(&qword_1EC64C878, type metadata accessor for StaticMediaProfile);
  a1[2] = sub_1D1C07270(&qword_1EC64C880, type metadata accessor for StaticMediaProfile);
  a1[3] = sub_1D1C07270(&qword_1EC64BFC0, type metadata accessor for StaticMediaProfile);
  a1[4] = sub_1D1C07270(&qword_1EC64C050, type metadata accessor for StaticMediaProfile);
  a1[5] = sub_1D1C07270(&qword_1EE07A810, type metadata accessor for StaticMediaProfile);
  result = sub_1D1C07270(&qword_1EC64C888, type metadata accessor for StaticMediaProfile);
  a1[6] = result;
  return result;
}

unint64_t sub_1D1C07800()
{
  result = qword_1EC64C890;
  if (!qword_1EC64C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C890);
  }

  return result;
}

void sub_1D1C0787C()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1791340();
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, qword_1EE07D1F8);
      if (v2 <= 0x3F)
      {
        sub_1D1C07B28(319, &qword_1EE07E020, MEMORY[0x1E6969530]);
        if (v3 <= 0x3F)
        {
          sub_1D1BCA118();
          if (v4 <= 0x3F)
          {
            sub_1D1C07B28(319, &qword_1EE07D830, type metadata accessor for StaticAccessory.DeviceIdentifier);
            if (v5 <= 0x3F)
            {
              sub_1D17BDF80(319, qword_1EE07BDB8);
              if (v6 <= 0x3F)
              {
                sub_1D17BDF80(319, qword_1EE07C838);
                if (v7 <= 0x3F)
                {
                  sub_1D17BDF80(319, qword_1EE07CA78);
                  if (v8 <= 0x3F)
                  {
                    sub_1D1C07AC4();
                    if (v9 <= 0x3F)
                    {
                      sub_1D1C07B28(319, &qword_1EE07DE40, type metadata accessor for StaticSoftwareUpdate);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D1C07AC4()
{
  if (!qword_1EE07B6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C340, &qword_1D1E9E550);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B6E0);
    }
  }
}

void sub_1D1C07B28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E685AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticMediaProfile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticMediaProfile.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1C07D30()
{
  result = qword_1EC64C898;
  if (!qword_1EC64C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C898);
  }

  return result;
}

unint64_t sub_1D1C07D88()
{
  result = qword_1EC64C8A0;
  if (!qword_1EC64C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8A0);
  }

  return result;
}

unint64_t sub_1D1C07DE0()
{
  result = qword_1EC64C8A8;
  if (!qword_1EC64C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8A8);
  }

  return result;
}

unint64_t sub_1D1C07E38()
{
  result = qword_1EC64C8B0;
  if (!qword_1EC64C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8B0);
  }

  return result;
}

unint64_t sub_1D1C07E90()
{
  result = qword_1EC64C8B8;
  if (!qword_1EC64C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8B8);
  }

  return result;
}

unint64_t sub_1D1C07EE8()
{
  result = qword_1EC64C8C0;
  if (!qword_1EC64C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8C0);
  }

  return result;
}

unint64_t sub_1D1C07F40()
{
  result = qword_1EC64C8C8;
  if (!qword_1EC64C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8C8);
  }

  return result;
}

unint64_t sub_1D1C07F98()
{
  result = qword_1EC64C8D0;
  if (!qword_1EC64C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8D0);
  }

  return result;
}

unint64_t sub_1D1C07FF0()
{
  result = qword_1EC64C8D8;
  if (!qword_1EC64C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8D8);
  }

  return result;
}

unint64_t sub_1D1C08048()
{
  result = qword_1EC64C8E0;
  if (!qword_1EC64C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8E0);
  }

  return result;
}

unint64_t sub_1D1C080A0()
{
  result = qword_1EC64C8E8;
  if (!qword_1EC64C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8E8);
  }

  return result;
}

unint64_t sub_1D1C080F8()
{
  result = qword_1EC64C8F0;
  if (!qword_1EC64C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8F0);
  }

  return result;
}

unint64_t sub_1D1C08150()
{
  result = qword_1EC64C8F8;
  if (!qword_1EC64C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8F8);
  }

  return result;
}

unint64_t sub_1D1C081A8()
{
  result = qword_1EC64C900;
  if (!qword_1EC64C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C900);
  }

  return result;
}

uint64_t sub_1D1C081FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x626D79536E6F6369 && a2 == 0xEA00000000006C6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C62756F447369 && a2 == 0xEC00000068676948 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC6130 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC5D60 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC67A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6190 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6449656369766564 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xED00006574617453 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6B61577065656C73 && a2 == 0xEE00657461745365 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6449616964656DLL && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC67C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBDFE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x736D6F74706D7973 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEE00657461647055 || (sub_1D1E6904C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6270 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

unint64_t sub_1D1C08924(char a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16[-v8];
  v10 = type metadata accessor for StaticSoftwareUpdate(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 0;
  if (a1)
  {
    sub_1D1741C08(a2, v9, &qword_1EC644760, &unk_1D1E9E530);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1D1741A30(v9, &qword_1EC644760, &unk_1D1E9E530);
    }

    else
    {
      sub_1D1C0942C(v9, v14, type metadata accessor for StaticSoftwareUpdate);
      sub_1D1D2F0C0(&v17);
      if (v17 != 8 && (v17 == 3 || v17 == 5))
      {
        sub_1D1C09494(v14, type metadata accessor for StaticSoftwareUpdate);
        return 0xD000000000000015;
      }

      sub_1D1C09494(v14, type metadata accessor for StaticSoftwareUpdate);
    }

    return _s13HomeDataModel12SymptomErrorO14tileIconSymbol3forSSSgShyACGSg_tFZ_0(a3);
  }

  return result;
}

uint64_t sub_1D1C08B3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B617761 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7065656C73 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C646E6148746F6ELL && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D1C08CA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D1E66A7C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(type metadata accessor for StaticAccessory(0) - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v8 = type metadata accessor for StaticMediaProfile();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C08E2C, 0, 0);
}

uint64_t sub_1D1C08E2C()
{
  v42 = v0;
  v1 = v0[3];
  v2 = type metadata accessor for StateSnapshot(0);
  v3 = *(v1 + *(v2 + 48));
  if (*(v3 + 16))
  {
    v4 = v2;
    v5 = sub_1D1742188(v0[2]);
    if (v6)
    {
      v8 = v0[12];
      v7 = v0[13];
      v9 = v0[3];
      sub_1D1C09520(*(v3 + 56) + *(v0[11] + 72) * v5, v8, type metadata accessor for StaticMediaProfile);
      sub_1D1C0942C(v8, v7, type metadata accessor for StaticMediaProfile);
      v10 = *(v9 + *(v4 + 32));
      if (*(v10 + 16))
      {
        v11 = sub_1D1742188(v0[13] + *(v0[10] + 56));
        if (v12)
        {
          v14 = v0[8];
          v13 = v0[9];
          sub_1D1C09520(*(v10 + 56) + *(v0[7] + 72) * v11, v14, type metadata accessor for StaticAccessory);
          sub_1D1C0942C(v14, v13, type metadata accessor for StaticAccessory);
          v15 = swift_task_alloc();
          v0[14] = v15;
          *v15 = v0;
          v15[1] = sub_1D1C09224;
          v16 = v0[9];

          return StaticAccessory.accessory.getter();
        }
      }

      sub_1D1C09494(v0[13], type metadata accessor for StaticMediaProfile);
    }
  }

  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v19 = v0[5];
  v18 = v0[6];
  v20 = v0[4];
  v21 = v0[2];
  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE07B5D8);
  (*(v19 + 16))(v18, v21, v20);
  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6835C();
  v25 = os_log_type_enabled(v23, v24);
  v27 = v0[5];
  v26 = v0[6];
  v28 = v0[4];
  if (v25)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41 = v30;
    *v29 = 136315138;
    sub_1D1C07270(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v31 = sub_1D1E68FAC();
    v33 = v32;
    (*(v27 + 8))(v26, v28);
    v34 = sub_1D1B1312C(v31, v33, &v41);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1D16EC000, v23, v24, "Failed to get static accessory from deviceID %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v26, v28);
  }

  v36 = v0[12];
  v35 = v0[13];
  v38 = v0[8];
  v37 = v0[9];
  v39 = v0[6];

  v40 = v0[1];

  return v40(0);
}

uint64_t sub_1D1C09224(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C09324, 0, 0);
}

uint64_t sub_1D1C09324()
{
  v1 = v0[13];
  sub_1D1C09494(v0[9], type metadata accessor for StaticAccessory);
  sub_1D1C09494(v1, type metadata accessor for StaticMediaProfile);
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8(v2);
}

uint64_t sub_1D1C0942C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C09494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C09520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t StaticMediaSystem.staticMediaSystemComponents.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaSystem() + 100));

  return sub_1D1782784(v2);
}

uint64_t type metadata accessor for StaticMediaSystem()
{
  result = qword_1EE07D6B0;
  if (!qword_1EE07D6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL StaticMediaSystem.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for StatusStrings.Options();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v6[13];
  v11 = sub_1D1E669FC();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *v9 = 257;
  v9[2] = 1;
  *(v9 + 3) = 0;
  v9[v6[14]] = 2;
  v12 = &v9[v6[15]];
  v12[4] = 0;
  *v12 = 2;
  v13 = type metadata accessor for StaticMatterDevice();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  StaticMediaSystem.statusString(with:associatedMatterDevice:)(v9);
  v15 = v14;
  sub_1D1741A30(v4, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C11AF0(v9, type metadata accessor for StatusStrings.Options);
  if (!v15)
  {
    return *(v0 + *(type metadata accessor for StaticMediaSystem() + 60)) == 1;
  }

  return 0;
}

uint64_t StaticMediaSystem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticMediaSystem.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticMediaSystem() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticMediaSystem.specialMediaCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticMediaSystem() + 24);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1D18EB144(v4, v5);
}

uint64_t StaticMediaSystem.iconSymbol.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticMediaSystem() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticMediaSystem.playbackState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMediaSystem();
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t StaticMediaSystem.audioDestinationId.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticMediaSystem() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticMediaSystem.symptoms.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaSystem() + 68));
}

uint64_t StaticMediaSystem.homeNonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMediaSystem();
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t StaticMediaSystem.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticMediaSystem() + 80);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticMediaSystem.roomIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaSystem() + 84));
}

uint64_t StaticMediaSystem.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticMediaSystem() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticMediaSystem.accessoryIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaSystem() + 92));
}

uint64_t StaticMediaSystem.deviceIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaSystem() + 96));
}

uint64_t StaticMediaSystem.staticMediaSystemComponentsDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaSystem() + 100));
}

unint64_t sub_1D1C09D10(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x6564644165746164;
      break;
    case 4:
      result = 0x626D79536E6F6369;
      break;
    case 5:
      result = 0x656C62756F447369;
      break;
    case 6:
      result = 0x69726F7661467369;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x7461706D6F437369;
      break;
    case 9:
      result = 0x6168636165527369;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6B63616279616C70;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x736D6F74706D7973;
      break;
    case 14:
      result = 0x6572617774666F73;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x6449656D6F68;
      break;
    case 17:
      result = 0x7364496D6F6F72;
      break;
    case 18:
      result = 0x656D614E6D6F6F72;
      break;
    case 19:
      result = 0x726F737365636361;
      break;
    case 20:
      result = 0x6449656369766564;
      break;
    case 21:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1C09FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1C10BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1C09FD8(uint64_t a1)
{
  v2 = sub_1D1C10088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C0A014(uint64_t a1)
{
  v2 = sub_1D1C10088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMediaSystem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C920, &qword_1D1EA0D98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C10088();
  sub_1D1E6930C();
  LOBYTE(v39) = 0;
  sub_1D1E66A7C();
  sub_1D1C11294(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticMediaSystem();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v39) = 1;
    sub_1D1E68ECC();
    v15 = v3 + v11[6];
    v16 = *(v15 + 8);
    v39 = *v15;
    v40 = v16;
    v41 = 2;
    sub_1D18EB144(v39, v16);
    sub_1D18F1630();
    sub_1D1E68E5C();
    sub_1D18EB2D8(v39, v40);
    v38 = v11;
    v17 = v11[7];
    LOBYTE(v39) = 3;
    sub_1D1E669FC();
    sub_1D1C11294(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
    v18 = v38;
    v19 = (v3 + v38[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v39) = 4;
    sub_1D1E68ECC();
    v22 = *(v3 + v18[9]);
    LOBYTE(v39) = 5;
    sub_1D1E68EDC();
    v23 = *(v3 + v18[10]);
    LOBYTE(v39) = 6;
    sub_1D1E68EDC();
    v24 = *(v3 + v18[11]);
    LOBYTE(v39) = 7;
    sub_1D1E68EDC();
    v25 = *(v3 + v18[12]);
    LOBYTE(v39) = 8;
    sub_1D1E68EDC();
    v26 = *(v3 + v18[13]);
    LOBYTE(v39) = 9;
    sub_1D1E68EDC();
    v27 = *(v3 + v18[14]);
    LOBYTE(v39) = 10;
    sub_1D1E68EDC();
    LOBYTE(v39) = *(v3 + v38[15]);
    v41 = 11;
    sub_1D1C072B8();
    sub_1D1E68E5C();
    v28 = (v3 + v38[16]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v39) = 12;
    sub_1D1E68E0C();
    v39 = *(v3 + v38[17]);
    v41 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550);
    sub_1D1BC93A0(&qword_1EC64C348, sub_1D1BC9140);
    sub_1D1E68E5C();
    v31 = v38[18];
    LOBYTE(v39) = 14;
    type metadata accessor for StaticSoftwareUpdate(0);
    sub_1D1C11294(&qword_1EC64C330, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1E68E5C();
    LOBYTE(v39) = *(v3 + v38[19]);
    v41 = 15;
    sub_1D1BC90EC();
    sub_1D1E68F1C();
    v32 = v38[20];
    LOBYTE(v39) = 16;
    sub_1D1E68F1C();
    v39 = *(v3 + v38[21]);
    v41 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C10264(&qword_1EC646B10, &qword_1EE07B258);
    sub_1D1E68F1C();
    v33 = (v3 + v38[22]);
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v39) = 18;
    sub_1D1E68E0C();
    v39 = *(v3 + v38[23]);
    v41 = 19;
    sub_1D1E68F1C();
    v39 = *(v3 + v38[24]);
    v41 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C930, &qword_1D1EA0DA0);
    sub_1D1C100DC(&qword_1EC64C938, &qword_1EC64C328);
    sub_1D1E68F1C();
    v39 = *(v3 + v38[25]);
    v41 = 21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C940, &qword_1D1EA0DA8);
    sub_1D1C10178();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticMediaSystem.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticSoftwareUpdate(0);
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48[0] = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = v48 - v9;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v48 - v17;
  v19 = sub_1D1E66A7C();
  v48[1] = sub_1D1C11294(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v48[2] = v19;
  sub_1D1E676EC();
  v20 = type metadata accessor for StaticMediaSystem();
  v21 = (v1 + v20[5]);
  v22 = *v21;
  v23 = v21[1];
  sub_1D1E678EC();
  v24 = v1 + v20[6];
  v25 = *(v24 + 8);
  if (v25 == 255)
  {
    sub_1D1E6922C();
  }

  else
  {
    v52 = *v24;
    v26 = v52;
    v53 = v25;
    sub_1D1E6922C();
    sub_1D1771B4C(v26, v25);
    StaticAccessory.SpecialMediaCategory.hash(into:)(a1);
    sub_1D1771B5C(v52, v53);
  }

  sub_1D1741C08(v1 + v20[7], v18, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_1D1E6922C();
    sub_1D1C11294(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v11 + 8))(v14, v10);
  }

  v27 = (v1 + v20[8]);
  v28 = *v27;
  v29 = v27[1];
  sub_1D1E678EC();
  v30 = *(v1 + v20[9]);
  sub_1D1E6922C();
  v31 = *(v1 + v20[10]);
  sub_1D1E6922C();
  v32 = *(v1 + v20[11]);
  sub_1D1E6922C();
  v33 = *(v1 + v20[12]);
  sub_1D1E6922C();
  v34 = *(v1 + v20[13]);
  sub_1D1E6922C();
  v35 = *(v1 + v20[14]);
  sub_1D1E6922C();
  v36 = *(v1 + v20[15]);
  sub_1D1E6922C();
  if (v36 != 6)
  {
    MEMORY[0x1D3892850](v36);
  }

  v37 = (v1 + v20[16]);
  if (v37[1])
  {
    v38 = *v37;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v39 = *(v1 + v20[17]);
  sub_1D1E6922C();
  if (v39)
  {
    sub_1D1771CBC(a1, v39);
  }

  v40 = v49;
  sub_1D1741C08(v2 + v20[18], v49, &qword_1EC644760, &unk_1D1E9E530);
  v41 = v51;
  if ((*(v50 + 48))(v40, 1, v51) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v42 = v48[0];
    sub_1D1C11B50(v40, v48[0], type metadata accessor for StaticSoftwareUpdate);
    sub_1D1E6922C();
    sub_1D1E676EC();
    v43 = v42 + *(v41 + 20);
    StaticSoftwareUpdate.Kind.hash(into:)();
    sub_1D1C11AF0(v42, type metadata accessor for StaticSoftwareUpdate);
  }

  MEMORY[0x1D3892850](*(v2 + v20[19]));
  v44 = v2 + v20[20];
  sub_1D1E676EC();
  sub_1D176D4E8(a1, *(v2 + v20[21]));
  v45 = (v2 + v20[22]);
  if (v45[1])
  {
    v46 = *v45;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D176D4E8(a1, *(v2 + v20[23]));
  sub_1D176DEFC(a1, *(v2 + v20[24]));
  return sub_1D185B23C(a1, *(v2 + v20[25]));
}

uint64_t StaticMediaSystem.hashValue.getter()
{
  sub_1D1E6920C();
  StaticMediaSystem.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticMediaSystem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v91 = &v81 - v8;
  v9 = sub_1D1E66A7C();
  v90 = *(v9 - 8);
  v10 = v90[8];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v81 - v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C958, &qword_1D1EA0DB0);
  v92 = *(v94 - 8);
  v15 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v17 = &v81 - v16;
  v18 = type metadata accessor for StaticMediaSystem();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C10088();
  v93 = v17;
  v23 = v96;
  sub_1D1E692FC();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v91;
  v85 = v13;
  v86 = v18;
  v87 = a1;
  v96 = v21;
  LOBYTE(v97) = 0;
  sub_1D1C11294(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v25 = v94;
  v26 = v93;
  sub_1D1E68D7C();
  v28 = v90[4];
  v29 = v96;
  v28(v96, v95, v9);
  LOBYTE(v97) = 1;
  v30 = sub_1D1E68D2C();
  v95 = v9;
  v31 = v86;
  v32 = &v29[v86[5]];
  *v32 = v30;
  v32[1] = v33;
  v99 = 2;
  sub_1D18F18D0();
  v83 = 0;
  sub_1D1E68CBC();
  v84 = 0;
  v82 = v28;
  v34 = v98;
  v35 = &v29[v31[6]];
  *v35 = v97;
  v35[8] = v34;
  sub_1D1E669FC();
  LOBYTE(v97) = 3;
  sub_1D1C11294(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  v36 = v84;
  sub_1D1E68CBC();
  if (v36)
  {
    v84 = v36;
    (*(v92 + 8))(v26, v25);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    LODWORD(v91) = 0;
    LODWORD(v92) = 0;
    LODWORD(v93) = 0;
    LODWORD(v94) = 0;
  }

  else
  {
    sub_1D1741A90(v24, &v29[v31[7]], &qword_1EC642570, &qword_1D1E6C6A0);
    LOBYTE(v97) = 4;
    v41 = sub_1D1E68D2C();
    v42 = &v29[v31[8]];
    *v42 = v41;
    v42[1] = v43;
    LOBYTE(v97) = 5;
    v29[v31[9]] = sub_1D1E68D3C() & 1;
    LOBYTE(v97) = 6;
    v29[v31[10]] = sub_1D1E68D3C() & 1;
    LOBYTE(v97) = 7;
    v29[v86[11]] = sub_1D1E68D3C() & 1;
    LOBYTE(v97) = 8;
    v58 = sub_1D1E68D3C();
    v84 = 0;
    v96[v86[12]] = v58 & 1;
    LOBYTE(v97) = 9;
    v59 = v84;
    v60 = sub_1D1E68D3C();
    v84 = v59;
    if (v59)
    {
      goto LABEL_35;
    }

    v96[v86[13]] = v60 & 1;
    LOBYTE(v97) = 10;
    v61 = v84;
    v62 = sub_1D1E68D3C();
    v84 = v61;
    if (v61)
    {
      goto LABEL_35;
    }

    v96[v86[14]] = v62 & 1;
    v99 = 11;
    sub_1D1C073FC();
    v63 = v84;
    sub_1D1E68CBC();
    v84 = v63;
    if (v63 || (v96[v86[15]] = v97, LOBYTE(v97) = 12, v64 = v84, v65 = sub_1D1E68C6C(), (v84 = v64) != 0))
    {
LABEL_35:
      (*(v92 + 8))(v93, v94);
      v39 = 0;
      v40 = 0;
      LODWORD(v88) = 0;
      LODWORD(v89) = 0;
      LODWORD(v91) = 0;
      LODWORD(v92) = 0;
      LODWORD(v93) = 0;
      LODWORD(v94) = 0;
      v37 = 1;
      v38 = 1;
    }

    else
    {
      v67 = &v96[v86[16]];
      *v67 = v65;
      v67[1] = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550);
      v99 = 13;
      sub_1D1BC93A0(&qword_1EC64C380, sub_1D1BC9418);
      v68 = v84;
      sub_1D1E68CBC();
      v84 = v68;
      if (v68)
      {
        (*(v92 + 8))(v93, v94);
        v40 = 0;
        LODWORD(v88) = 0;
        LODWORD(v89) = 0;
        LODWORD(v91) = 0;
        LODWORD(v92) = 0;
        LODWORD(v93) = 0;
        LODWORD(v94) = 0;
        v37 = 1;
        v38 = 1;
        v39 = 1;
      }

      else
      {
        *&v96[v86[17]] = v97;
        type metadata accessor for StaticSoftwareUpdate(0);
        LOBYTE(v97) = 14;
        sub_1D1C11294(&qword_1EC64C370, type metadata accessor for StaticSoftwareUpdate);
        v69 = v84;
        sub_1D1E68CBC();
        v84 = v69;
        if (v69)
        {
          (*(v92 + 8))(v93, v94);
          LODWORD(v88) = 0;
          LODWORD(v89) = 0;
          LODWORD(v91) = 0;
          LODWORD(v92) = 0;
          LODWORD(v93) = 0;
          LODWORD(v94) = 0;
          v37 = 1;
          v38 = 1;
          v39 = 1;
          v40 = 1;
        }

        else
        {
          sub_1D1741A90(v89, &v96[v86[18]], &qword_1EC644760, &unk_1D1E9E530);
          v99 = 15;
          sub_1D1BC934C();
          v70 = v84;
          sub_1D1E68D7C();
          v84 = v70;
          if (v70 || (v96[v86[19]] = v97, LOBYTE(v97) = 16, v71 = v84, sub_1D1E68D7C(), (v84 = v71) != 0))
          {
            (*(v92 + 8))(v93, v94);
            LODWORD(v89) = 0;
            LODWORD(v91) = 0;
            LODWORD(v92) = 0;
            LODWORD(v93) = 0;
            LODWORD(v94) = 0;
            v37 = 1;
            v38 = 1;
            v39 = 1;
            v40 = 1;
            LODWORD(v88) = 1;
          }

          else
          {
            v82(&v96[v86[20]], v85, v95);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
            v99 = 17;
            sub_1D1C10264(&qword_1EC646B78, &qword_1EC644B20);
            v72 = v84;
            sub_1D1E68D7C();
            v84 = v72;
            if (v72)
            {
              (*(v92 + 8))(v93, v94);
              LODWORD(v91) = 0;
              LODWORD(v92) = 0;
              LODWORD(v93) = 0;
              LODWORD(v94) = 0;
              v37 = 1;
              v38 = 1;
              v39 = 1;
              v40 = 1;
              LODWORD(v88) = 1;
              LODWORD(v89) = 1;
            }

            else
            {
              *&v96[v86[21]] = v97;
              LOBYTE(v97) = 18;
              v73 = v84;
              v74 = sub_1D1E68C6C();
              v84 = v73;
              if (v73)
              {
                (*(v92 + 8))(v93, v94);
                LODWORD(v92) = 0;
                LODWORD(v93) = 0;
                LODWORD(v94) = 0;
                v37 = 1;
                v38 = 1;
                v39 = 1;
                v40 = 1;
                LODWORD(v88) = 1;
                LODWORD(v89) = 1;
                LODWORD(v91) = 1;
              }

              else
              {
                v76 = &v96[v86[22]];
                *v76 = v74;
                v76[1] = v75;
                v99 = 19;
                v77 = v84;
                sub_1D1E68D7C();
                v84 = v77;
                if (v77)
                {
                  (*(v92 + 8))(v93, v94);
                  LODWORD(v93) = 0;
                  LODWORD(v94) = 0;
                  v37 = 1;
                  v38 = 1;
                  v39 = 1;
                  v40 = 1;
                  LODWORD(v88) = 1;
                  LODWORD(v89) = 1;
                  LODWORD(v91) = 1;
                  LODWORD(v92) = 1;
                }

                else
                {
                  *&v96[v86[23]] = v97;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C930, &qword_1D1EA0DA0);
                  v99 = 20;
                  sub_1D1C100DC(&qword_1EC64C960, &qword_1EC64C368);
                  v78 = v84;
                  sub_1D1E68D7C();
                  v84 = v78;
                  if (v78)
                  {
                    (*(v92 + 8))(v93, v94);
                    LODWORD(v94) = 0;
                    v37 = 1;
                    v38 = 1;
                    v39 = 1;
                    v40 = 1;
                    LODWORD(v88) = 1;
                    LODWORD(v89) = 1;
                    LODWORD(v91) = 1;
                    LODWORD(v92) = 1;
                    LODWORD(v93) = 1;
                  }

                  else
                  {
                    *&v96[v86[24]] = v97;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C940, &qword_1D1EA0DA8);
                    v99 = 21;
                    sub_1D1C10300();
                    v79 = v84;
                    sub_1D1E68D7C();
                    v84 = v79;
                    if (!v79)
                    {
                      (*(v92 + 8))(v93, v94);
                      v80 = v96;
                      *&v96[v86[25]] = v97;
                      sub_1D1C11A88(v80, v88, type metadata accessor for StaticMediaSystem);
                      __swift_destroy_boxed_opaque_existential_1(v87);
                      return sub_1D1C11AF0(v80, type metadata accessor for StaticMediaSystem);
                    }

                    (*(v92 + 8))(v93, v94);
                    v37 = 1;
                    v38 = 1;
                    v39 = 1;
                    v40 = 1;
                    LODWORD(v88) = 1;
                    LODWORD(v89) = 1;
                    LODWORD(v91) = 1;
                    LODWORD(v92) = 1;
                    LODWORD(v93) = 1;
                    LODWORD(v94) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v44 = v83;
  __swift_destroy_boxed_opaque_existential_1(v87);
  v45 = v90[1];
  v46 = v96;
  v45(v96, v95);
  if (!v44)
  {
    v53 = *&v46[v86[5] + 8];
  }

  v47 = v86;
  v48 = v96;
  result = sub_1D18EB2D8(*&v96[v86[6]], v96[v86[6] + 8]);
  if (v37)
  {
    result = sub_1D1741A30(&v48[v47[7]], &qword_1EC642570, &qword_1D1E6C6A0);
    if (v38)
    {
LABEL_12:
      v49 = *&v48[v47[8] + 8];

      if ((v39 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  else if (v38)
  {
    goto LABEL_12;
  }

  if (!v39)
  {
LABEL_13:
    if (v40)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v54 = *&v48[v47[16] + 8];

  if (v40)
  {
LABEL_14:
    v50 = *&v48[v47[17]];

    if ((v88 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v88)
  {
LABEL_15:
    v51 = v95;
    if (v89)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = sub_1D1741A30(&v48[v47[18]], &qword_1EC644760, &unk_1D1E9E530);
  v51 = v95;
  if (v89)
  {
LABEL_16:
    result = (v45)(&v48[v47[20]], v51);
    if ((v91 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v91)
  {
LABEL_17:
    if (v92)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  v55 = *&v48[v47[21]];

  if (v92)
  {
LABEL_18:
    v52 = *&v48[v47[22] + 8];

    if ((v93 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v93)
  {
LABEL_19:
    if (v94)
    {
      goto LABEL_30;
    }

    return result;
  }

LABEL_29:
  v56 = *&v48[v47[23]];

  if (v94)
  {
LABEL_30:
    v57 = *&v48[v47[24]];
  }

  return result;
}

uint64_t sub_1D1C0BE88()
{
  sub_1D1E6920C();
  StaticMediaSystem.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C0BECC()
{
  sub_1D1E6920C();
  StaticMediaSystem.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticMediaSystem.tileIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticMediaSystem();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C11A88(v1, v6, type metadata accessor for StaticMediaSystem);
  return Icon.init(staticMediaSystem:)(v6, a1);
}

uint64_t StaticMediaSystem.foregroundColor.getter()
{
  if (StaticMediaSystem.isActivated.getter())
  {
    return sub_1D1E673AC();
  }

  else
  {
    return sub_1D1E673CC();
  }
}

uint64_t StaticMediaSystem.set(showInDashboard:)(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C0C0C8;

  return StaticMediaSystem.mediaSystem.getter();
}

uint64_t sub_1D1C0C0C8(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C0C1C8, 0, 0);
}

uint64_t sub_1D1C0C1C8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMMediaSystem.shouldShowInDashboard.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t StaticMediaSystem.mediaSystem.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C0C318, 0, 0);
}

uint64_t sub_1D1C0C318()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[10] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1C0C408;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1C0C874;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1C0C408()
{
  v43 = v0;
  v2 = v0;
  v3 = v0[10];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v6);
    sub_1D1747DDC(&v42);

    v7 = v42;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[8];
  v9 = v0[6];
  v10 = v0[5];
  v11 = *(v0[7] + 16);
  v11(v0[9], v10, v9);
  v11(v8, v10, v9);
  v40 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = v7 & 0xC000000000000001;
  v39 = v7 + 32;
  while (v12 != v13)
  {
    if (v14)
    {
      v1 = v7;
      v15 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v41 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v15 = *(v7 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v2;
    v18 = v2[8];
    v19 = [v15 mediaSystems];
    sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
    v20 = sub_1D1E67C1C();

    v21 = swift_task_alloc();
    *(v21 + 16) = v18;
    v22 = sub_1D174A6C4(sub_1D1749C64, v21, v20);

    if (v22)
    {
      v12 = v13;
      v7 = v1;
      v2 = v17;
      break;
    }

    v23 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v17;
    if (v23)
    {
      goto LABEL_30;
    }
  }

  if (!v40)
  {
    if (v12 != *(v41 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v1 = *(v2[7] + 8);
    v1(v2[9], v2[6]);
    v32 = 0;
    goto LABEL_26;
  }

  if (v12 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v14)
  {
    v24 = MEMORY[0x1D3891EF0](v12, v7);
  }

  else
  {
    if (v12 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v24 = *(v39 + 8 * v12);
  }

  v25 = v24;
  v26 = v2[9];
  v28 = v2[6];
  v27 = v2[7];
  v29 = [v24 mediaSystems];
  sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
  v30 = sub_1D1E67C1C();

  v31 = swift_task_alloc();
  *(v31 + 16) = v26;
  v32 = sub_1D174A6C4(sub_1D1778988, v31, v30);

  v1 = *(v27 + 8);
  v1(v26, v28);

  if (!v32)
  {
LABEL_34:
    v35 = (v1)(v2[8], v2[6]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v35, v36, v37);
  }

LABEL_26:
  v2[11] = v32;
  v33 = v2[8];
  v34 = v2[6];

  v1(v33, v34);
  v35 = sub_1D1B9A998;
  v36 = 0;
  v37 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

uint64_t sub_1D1C0C874()
{
  v1 = *(v0 + 104);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C0C90C, 0, 0);
}

uint64_t sub_1D1C0C90C()
{
  v1 = *(v0 + 96);
  *(v0 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C0C998, v3, v2);
}

uint64_t sub_1D1C0C998()
{
  v1 = *(v0 + 112);

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1C0CA0C, 0, 0);
}

uint64_t sub_1D1C0CA0C()
{
  v1 = v0[12];
  v2 = v0[5];
  v0[16] = sub_1D1E66A2C();
  v0[17] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C0CAA4, v4, v3);
}

uint64_t sub_1D1C0CAA4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  v4 = [v3 mediaSystemFor_];

  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7(v4);
}

uint64_t StaticMediaSystem.set(includeInStatus:)(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C0CBD0;

  return StaticMediaSystem.mediaSystem.getter();
}

uint64_t sub_1D1C0CBD0(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C0CCD0, 0, 0);
}

uint64_t sub_1D1C0CCD0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMMediaSystem.contributesToHomeStatus.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1C0CD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C11A88(v2, v6, type metadata accessor for StaticMediaSystem);
  return Icon.init(staticMediaSystem:)(v6, a2);
}

uint64_t sub_1D1C0CDE8()
{
  if (StaticMediaSystem.isActivated.getter())
  {
    return sub_1D1E673AC();
  }

  else
  {
    return sub_1D1E673CC();
  }
}

uint64_t sub_1D1C0CE2C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 88));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id StaticMediaSystem.statusString(with:associatedMatterDevice:)(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaSystem();
  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *(v2 + v4[13]);
  v9 = *(v2 + v4[19]);
  v10 = *(v2 + v4[14]);
  if (*(v2 + v4[15]) != 6)
  {
    LOBYTE(v22[0]) = *(v2 + v4[15]);
    v6 = sub_1D1CF8E54();
    v7 = v11;
  }

  v12 = v5[18];
  v13 = a1[4];
  LOBYTE(v22[0]) = v13;
  v14 = sub_1D1D32844(v2 + v12, v22);
  if (!v15)
  {
    v16 = *(v2 + v5[17]);
    LOBYTE(v22[0]) = v13;
    v14 = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v16, v22);
  }

  LOBYTE(v19) = v8;
  BYTE1(v19) = v9;
  BYTE2(v19) = 2;
  BYTE3(v19) = v10 ^ 1;
  BYTE4(v19) = 2;
  *(&v19 + 1) = v6;
  *&v20 = v7;
  *(&v20 + 1) = v14;
  v21 = v15;
  v17 = StatusStrings.string(for:)(a1);
  v22[0] = v19;
  v22[1] = v20;
  v23 = v21;
  sub_1D1A46590(v22);
  return v17;
}

uint64_t sub_1D1C0CF9C(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C0C0C8;

  return StaticMediaSystem.mediaSystem.getter();
}

uint64_t sub_1D1C0D02C(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C0CBD0;

  return StaticMediaSystem.mediaSystem.getter();
}

unint64_t StaticMediaSystem.tileStatusStringIconSymbolSuffix.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13[-v3];
  v5 = type metadata accessor for StaticSoftwareUpdate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for StaticMediaSystem();
  result = 0;
  if (*(v0 + v10[13]) == 1)
  {
    v12 = *(v0 + v10[17]);
    sub_1D1741C08(v0 + v10[18], v4, &qword_1EC644760, &unk_1D1E9E530);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1D1741A30(v4, &qword_1EC644760, &unk_1D1E9E530);
    }

    else
    {
      sub_1D1C11B50(v4, v9, type metadata accessor for StaticSoftwareUpdate);
      sub_1D1D2F0C0(&v14);
      if (v14 != 8 && (v14 == 3 || v14 == 5))
      {
        sub_1D1C11AF0(v9, type metadata accessor for StaticSoftwareUpdate);
        return 0xD000000000000015;
      }

      sub_1D1C11AF0(v9, type metadata accessor for StaticSoftwareUpdate);
    }

    return _s13HomeDataModel12SymptomErrorO14tileIconSymbol3forSSSgShyACGSg_tFZ_0(v12);
  }

  return result;
}

uint64_t StaticMediaSystem.hasDetailAttentionMessages.getter()
{
  v1 = type metadata accessor for StaticMediaSystem();
  v2 = *(v1 + 72);
  v8 = 2;
  sub_1D1D32844(v0 + v2, &v8);
  if (!v3)
  {
    v4 = *(v0 + *(v1 + 68));
    v7 = 2;
    _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v4, &v7);
    if (!v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D1C0D384@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, void (**a6)(char *, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v15 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_1D1C11A88(a2, v17, type metadata accessor for StateSnapshot.UpdateType);
  v24 = a4;
  v19 = v18;
  v20 = a3;

  sub_1D1C0D4D4(v19, v17, v20, &v24, a5, a6, a7);
  v21 = type metadata accessor for StaticMediaSystem();
  return (*(*(v21 - 8) + 56))(a7, 0, 1, v21);
}

uint64_t sub_1D1C0D4D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, void (**a6)(char *, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v373 = a6;
  v370 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v362 = &v334 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v361 = &v334 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v360 = &v334 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v356 = &v334 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v343 = &v334 - v22;
  v23 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v354 = &v334 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v353 = &v334 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v352 = &v334 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v351 = &v334 - v31;
  v368 = type metadata accessor for StaticAccessory(0);
  v367 = *(v368 - 1);
  v32 = *(v367 + 64);
  v33 = MEMORY[0x1EEE9AC00](v368);
  v341 = &v334 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v346 = &v334 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v350 = &v334 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v336 = &v334 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v355 = &v334 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v348 = &v334 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v335 = &v334 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v369 = (&v334 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v377 = &v334 - v50;
  v379 = sub_1D1E66A7C();
  v51 = *(v379 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x1EEE9AC00](v379);
  v358 = &v334 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v345 = &v334 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v364 = &v334 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v366 = &v334 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v337 = &v334 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v340 = &v334 - v63;
  v376 = type metadata accessor for StaticMediaSystemComponent();
  v64 = *(v376 - 1);
  v65 = *(v64 + 8);
  v66 = MEMORY[0x1EEE9AC00](v376);
  v359 = &v334 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v363 = &v334 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v347 = &v334 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v349 = &v334 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v374 = &v334 - v74;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643780, &qword_1D1EA1130);
  v75 = *(v378 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v378);
  v78 = &v334 - v77;
  v79 = *a4;
  v365 = a1;
  v80 = [a1 components];
  sub_1D1741B10(0, &qword_1EC6453E0, 0x1E696CC00);
  v81 = sub_1D1E67C1C();

  v344 = a2;
  v381 = a2;
  v382 = a5;
  v375 = a5;
  v357 = a3;
  v383 = a3;
  v342 = v79;
  v384 = v79;
  v385 = v373;
  v82 = 0;
  v83 = sub_1D178972C(sub_1D1C112DC, v380, v81);

  v84 = v83[2];
  v371 = v51;
  v372 = v64;
  if (v84)
  {
    v339 = 0;
    v386 = MEMORY[0x1E69E7CC0];
    sub_1D178DC00(0, v84, 0);
    v85 = v386;
    v86 = (v64[80] + 32) & ~v64[80];
    v87 = v51;
    v338 = v83;
    v88 = v83 + v86;
    v89 = *(v64 + 9);
    v90 = (v87 + 16);
    v91 = v379;
    do
    {
      v92 = *(v378 + 48);
      sub_1D1C11A88(v88, &v78[v92], type metadata accessor for StaticMediaSystemComponent);
      (*v90)(v78, &v78[v92], v91);
      v386 = v85;
      v94 = *(v85 + 16);
      v93 = *(v85 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_1D178DC00(v93 > 1, v94 + 1, 1);
        v91 = v379;
        v85 = v386;
      }

      *(v85 + 16) = v94 + 1;
      sub_1D1741A90(v78, v85 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v94, &qword_1EC643780, &qword_1D1EA1130);
      v88 += v89;
      --v84;
    }

    while (v84);

    v82 = v339;
    if (*(v85 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {

    v85 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B28, &qword_1D1E6E870);
      v95 = sub_1D1E68BCC();
      goto LABEL_10;
    }
  }

  v95 = MEMORY[0x1E69E7CC8];
LABEL_10:
  v386 = v95;
  sub_1D1C11304(v85, 1, &v386);
  v339 = v82;
  if (v82)
  {
    goto LABEL_179;
  }

  v96 = v386 + 64;
  v97 = 1 << *(v386 + 32);
  v98 = -1;
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  v99 = v98 & *(v386 + 64);
  v100 = (v97 + 63) >> 6;
  v101 = (v371 + 48);
  v373 = (v371 + 32);
  v378 = v386;
  swift_retain_n();
  v102 = 0;
  v103 = MEMORY[0x1E69E7CC0];
  while (v99)
  {
    v104 = v102;
LABEL_19:
    v105 = __clz(__rbit64(v99));
    v99 &= v99 - 1;
    v106 = v374;
    sub_1D1C11A88(*(v378 + 56) + *(v372 + 9) * (v105 | (v104 << 6)), v374, type metadata accessor for StaticMediaSystemComponent);
    v107 = v377;
    sub_1D1741C08(v106 + v376[8], v377, &qword_1EC642590, qword_1D1E71260);
    sub_1D1C11AF0(v106, type metadata accessor for StaticMediaSystemComponent);
    if ((*v101)(v107, 1, v379) == 1)
    {
      sub_1D1741A30(v107, &qword_1EC642590, qword_1D1E71260);
      v102 = v104;
    }

    else
    {
      v108 = *v373;
      (*v373)(v340, v107, v379);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_1D177D0AC(0, *(v103 + 2) + 1, 1, v103);
      }

      v110 = *(v103 + 2);
      v109 = *(v103 + 3);
      v111 = (v110 + 1);
      if (v110 >= v109 >> 1)
      {
        v338 = (v110 + 1);
        v112 = sub_1D177D0AC(v109 > 1, v110 + 1, 1, v103);
        v111 = v338;
        v103 = v112;
      }

      *(v103 + 2) = v111;
      v108(&v103[((*(v371 + 80) + 32) & ~*(v371 + 80)) + *(v371 + 72) * v110], v340, v379);
      v102 = v104;
    }
  }

  while (1)
  {
    v104 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      __break(1u);
      goto LABEL_171;
    }

    if (v104 >= v100)
    {
      break;
    }

    v99 = *(v96 + 8 * v104);
    ++v102;
    if (v99)
    {
      goto LABEL_19;
    }
  }

  v113 = sub_1D17841EC(v103);

  v114 = v365;
  v115 = [v365 uniqueIdentifier];
  sub_1D1E66A5C();

  v116 = [v114 configuredName];
  v117 = sub_1D1E6781C();
  v119 = v118;

  v120 = HIBYTE(v119) & 0xF;
  if ((v119 & 0x2000000000000000) == 0)
  {
    v120 = v117 & 0xFFFFFFFFFFFFLL;
  }

  v377 = v113;
  if (v120)
  {
    v121 = [v114 configuredName];
    v122 = sub_1D1E6781C();
    v124 = v123;

    v125 = v371;
    v126 = v348;
    goto LABEL_39;
  }

  v127 = v369;
  sub_1D17721A0(v113, v369);
  v128 = v379;
  v129 = (*v101)(v127, 1, v379);
  v125 = v371;
  v126 = v348;
  if (v129 == 1)
  {
    sub_1D1741A30(v127, &qword_1EC642590, qword_1D1E71260);
  }

  else
  {
    v130 = v337;
    (*v373)(v337, v127, v128);
    v131 = v375;
    if (!*(v375 + 16))
    {
      goto LABEL_37;
    }

    v132 = sub_1D1742188(v130);
    if ((v133 & 1) == 0)
    {
      goto LABEL_37;
    }

    v134 = *(v131 + 56) + *(v367 + 72) * v132;
    v135 = v335;
    sub_1D1C11A88(v134, v335, type metadata accessor for StaticAccessory);
    v136 = v135 + v368[23];
    v137 = *v136;
    v138 = *(v136 + 8);
    sub_1D18EB144(*v136, *(v136 + 8));
    sub_1D1C11AF0(v135, type metadata accessor for StaticAccessory);
    if (v138 != 255)
    {
      v386 = v137;
      v387 = v138;
      v122 = sub_1D1C06E10(&v386);
      v124 = v139;
      (*(v125 + 8))(v130, v379);
      sub_1D18EB2D8(v137, v138);
      if (v124)
      {
        goto LABEL_39;
      }
    }

    else
    {
LABEL_37:
      (*(v125 + 8))(v130, v379);
    }
  }

  v140 = [v365 name];
  v122 = sub_1D1E6781C();
  v124 = v141;

LABEL_39:
  v369 = type metadata accessor for StaticMediaSystem();
  v142 = (v370 + v369[5]);
  *v142 = v122;
  v142[1] = v124;
  v143 = (v377 + 56);
  v144 = 1 << *(v377 + 32);
  v145 = -1;
  if (v144 < 64)
  {
    v145 = ~(-1 << v144);
  }

  v146 = v145 & *(v377 + 56);
  v147 = (v144 + 63) >> 6;
  v373 = (v125 + 8);
  v374 = v125 + 16;

  v148 = 0;
  v149 = MEMORY[0x1E69E7CC0];
  while (v146)
  {
    v150 = v379;
    v151 = v366;
LABEL_50:
    v153 = __clz(__rbit64(v146));
    v146 &= v146 - 1;
    (*(v371 + 16))(v151, *(v377 + 48) + *(v371 + 72) * (v153 | (v148 << 6)), v150);
    v154 = v375;
    if (*(v375 + 16) && (v155 = sub_1D1742188(v151), (v156 & 1) != 0))
    {
      sub_1D1C11A88(*(v154 + 56) + *(v367 + 72) * v155, v126, type metadata accessor for StaticAccessory);
      (*v373)(v151, v379);
      v157 = v126 + v368[23];
      v158 = *v157;
      v159 = *(v157 + 8);
      sub_1D18EB144(*v157, *(v157 + 8));
      sub_1D1C11AF0(v126, type metadata accessor for StaticAccessory);
      if (v159 != 255)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_1D177FA8C(0, *(v149 + 2) + 1, 1, v149);
        }

        v161 = *(v149 + 2);
        v160 = *(v149 + 3);
        if (v161 >= v160 >> 1)
        {
          v149 = sub_1D177FA8C((v160 > 1), v161 + 1, 1, v149);
        }

        *(v149 + 2) = v161 + 1;
        v162 = &v149[16 * v161];
        *(v162 + 4) = v158;
        v162[40] = v159;
        v126 = v348;
      }
    }

    else
    {
      (*v373)(v151, v379);
    }
  }

  v150 = v379;
  v151 = v366;
  while (1)
  {
    v152 = v148 + 1;
    if (__OFADD__(v148, 1))
    {
      break;
    }

    if (v152 >= v147)
    {

      if (*(v149 + 2))
      {
        v163 = *(v149 + 4);
        v164 = v149[40];
        sub_1D1771B4C(v163, v164);
      }

      else
      {
        v163 = 0;
        v164 = -1;
      }

      v165 = v371;
      v166 = v372;

      v167 = v369;
      v168 = v370;
      v169 = v370 + v369[6];
      *v169 = v163;
      *(v169 + 8) = v164;
      HMMediaSystem.dateAdded.getter(v168 + v167[7]);
      v170 = v377;
      v171 = sub_1D1C116F4(v377, v375);
      v172 = (v168 + v167[8]);
      *v172 = v171;
      v172[1] = v173;
      *(v168 + v167[9]) = sub_1D1A11850() & 1;
      v174 = 1 << *(v170 + 32);
      v175 = -1;
      if (v174 < 64)
      {
        v175 = ~(-1 << v174);
      }

      v176 = v175 & *(v170 + 56);
      v177 = (v174 + 63) >> 6;

      v178 = 0;
      while (v176)
      {
        v179 = v379;
        v180 = v364;
LABEL_72:
        v182 = __clz(__rbit64(v176));
        v176 &= v176 - 1;
        (*(v165 + 16))(v180, *(v377 + 48) + *(v165 + 72) * (v182 | (v178 << 6)), v179);
        v183 = v375;
        if (*(v375 + 16) && (v184 = sub_1D1742188(v180), (v185 & 1) != 0))
        {
          v186 = v166;
          v187 = v165;
          v188 = v355;
          sub_1D1C11A88(*(v183 + 56) + *(v367 + 72) * v184, v355, type metadata accessor for StaticAccessory);
          (*v373)(v180, v379);
          v189 = *(v188 + v368[16]);
          v190 = v188;
          v165 = v187;
          v166 = v186;
          sub_1D1C11AF0(v190, type metadata accessor for StaticAccessory);
          if (v189)
          {
            v191 = 1;
LABEL_77:

            v192 = v369;
            v193 = v370;
            *(v370 + v369[10]) = v191;
            v194 = v365;
            *(v193 + v192[11]) = HMMediaSystem.shouldShowInDashboard.getter() & 1;
            *(v193 + v192[12]) = [v194 isCompatible];
            v195 = 1;
            v196 = 1 << *(v378 + 32);
            v197 = -1;
            if (v196 < 64)
            {
              v197 = ~(-1 << v196);
            }

            v198 = v197 & *(v378 + 64);
            v199 = (v196 + 63) >> 6;
            swift_retain_n();
            v200 = 0;
            for (i = v349; v198; v195 &= v211)
            {
LABEL_84:
              while (1)
              {
                v203 = __clz(__rbit64(v198));
                v198 &= v198 - 1;
                sub_1D1C11A88(*(v378 + 56) + *(v166 + 9) * (v203 | (v200 << 6)), i, type metadata accessor for StaticMediaSystemComponent);
                v204 = v375;
                if (*(v375 + 16))
                {
                  v205 = i + v376[5];
                  v206 = v205 + *(type metadata accessor for StaticMediaProfile() + 56);
                  v166 = v372;
                  v207 = sub_1D1742188(v206);
                  if (v208)
                  {
                    break;
                  }
                }

                sub_1D1C11AF0(i, type metadata accessor for StaticMediaSystemComponent);
                if (!v198)
                {
                  goto LABEL_80;
                }
              }

              v209 = *(v204 + 56) + *(v367 + 72) * v207;
              v210 = v336;
              sub_1D1C11A88(v209, v336, type metadata accessor for StaticAccessory);
              sub_1D1C11AF0(i, type metadata accessor for StaticMediaSystemComponent);
              v211 = *(v210 + v368[31]);
              sub_1D1C11AF0(v210, type metadata accessor for StaticAccessory);
            }

LABEL_80:
            while (1)
            {
              v202 = v200 + 1;
              if (__OFADD__(v200, 1))
              {
                goto LABEL_172;
              }

              if (v202 >= v199)
              {

                v212 = v369;
                *(v370 + v369[13]) = v195 & 1;
                v213 = [v365 settings];
                if (v213 && (v214 = v213, v215 = [v213 rootGroup], v214, v215))
                {

                  v216 = 1;
                }

                else
                {
                  v216 = 0;
                }

                v217 = v370;
                *(v370 + v212[14]) = v216;
                v218 = [v357 uniqueIdentifier];
                v219 = v217 + v212[20];
                sub_1D1E66A5C();

                v386 = MEMORY[0x1E69E7CC0];
                v220 = 1 << *(v378 + 32);
                v221 = -1;
                if (v220 < 64)
                {
                  v221 = ~(-1 << v220);
                }

                v222 = v221 & *(v378 + 64);
                v223 = (v220 + 63) >> 6;
                swift_retain_n();
                v224 = 0;
                v225 = v347;
                while (v222)
                {
                  v226 = v224;
LABEL_102:
                  v227 = __clz(__rbit64(v222));
                  v222 &= v222 - 1;
                  sub_1D1C11A88(*(v378 + 56) + *(v166 + 9) * (v227 | (v226 << 6)), v225, type metadata accessor for StaticMediaSystemComponent);
                  v228 = *(v225 + v376[7]);

                  sub_1D1C11AF0(v225, type metadata accessor for StaticMediaSystemComponent);
                  sub_1D17A5608(v228);
                }

                while (1)
                {
                  v226 = v224 + 1;
                  if (__OFADD__(v224, 1))
                  {
                    goto LABEL_173;
                  }

                  if (v226 >= v223)
                  {
                    v229 = v378;

                    v366 = sub_1D17841EC(v386);

                    v230 = 1 << *(v229 + 32);
                    v231 = -1;
                    if (v230 < 64)
                    {
                      v231 = ~(-1 << v230);
                    }

                    v232 = v231 & *(v229 + 64);
                    v233 = (v230 + 63) >> 6;
                    swift_retain_n();
                    v234 = 0;
                    v235 = MEMORY[0x1E69E7CC0];
                    if (!v232)
                    {
                      goto LABEL_109;
                    }

                    do
                    {
LABEL_107:
                      while (1)
                      {
                        v236 = __clz(__rbit64(v232));
                        v232 &= v232 - 1;
                        v237 = v363;
                        sub_1D1C11A88(*(v378 + 56) + *(v372 + 9) * (v236 | (v234 << 6)), v363, type metadata accessor for StaticMediaSystemComponent);
                        v238 = v237 + v376[5];
                        v239 = (v238 + *(type metadata accessor for StaticMediaProfile() + 28));
                        v241 = *v239;
                        v240 = v239[1];

                        sub_1D1C11AF0(v237, type metadata accessor for StaticMediaSystemComponent);
                        if (v240)
                        {
                          break;
                        }

                        if (!v232)
                        {
                          goto LABEL_109;
                        }
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v235 = sub_1D177CF00(0, *(v235 + 2) + 1, 1, v235);
                      }

                      v244 = *(v235 + 2);
                      v243 = *(v235 + 3);
                      if (v244 >= v243 >> 1)
                      {
                        v235 = sub_1D177CF00((v243 > 1), v244 + 1, 1, v235);
                      }

                      *(v235 + 2) = v244 + 1;
                      v245 = &v235[16 * v244];
                      *(v245 + 4) = v241;
                      *(v245 + 5) = v240;
                    }

                    while (v232);
LABEL_109:
                    while (1)
                    {
                      v242 = v234 + 1;
                      if (__OFADD__(v234, 1))
                      {
                        goto LABEL_175;
                      }

                      if (v242 >= v233)
                      {

                        v246 = sub_1D1784988(v235);

                        if (*(v246 + 16) == 1)
                        {
                          v247 = sub_1D1772608(v246);
                          v249 = v248;

                          v250 = v369;
                          v251 = v370;
                          v252 = (v370 + v369[22]);
                          *v252 = v247;
                          v252[1] = v249;
                        }

                        else
                        {

                          v250 = v369;
                          v251 = v370;
                          v253 = (v370 + v369[22]);
                          *v253 = 0;
                          v253[1] = 0;
                        }

                        v254 = v375;
                        v255 = v372;
                        v256 = v359;
                        *(v251 + v250[21]) = v366;
                        v257 = v378;
                        *(v251 + v250[23]) = v377;
                        v386 = MEMORY[0x1E69E7CD0];
                        v258 = 1 << *(v257 + 32);
                        v259 = -1;
                        if (v258 < 64)
                        {
                          v259 = ~(-1 << v258);
                        }

                        v260 = v259 & *(v257 + 64);
                        v261 = (v258 + 63) >> 6;
                        swift_retain_n();

                        v262 = 0;
                        while (v260)
                        {
LABEL_131:
                          sub_1D1C11A88(*(v378 + 56) + *(v255 + 9) * (__clz(__rbit64(v260)) | (v262 << 6)), v256, type metadata accessor for StaticMediaSystemComponent);
                          if (*(v254 + 16))
                          {
                            v264 = v256 + v376[5];
                            v265 = type metadata accessor for StaticMediaProfile();
                            v266 = sub_1D1742188(v264 + *(v265 + 56));
                            if (v267)
                            {
                              v268 = v350;
                              sub_1D1C11A88(*(v254 + 56) + *(v367 + 72) * v266, v350, type metadata accessor for StaticAccessory);
                              v269 = v352;
                              sub_1D1C11A88(v268 + v368[8], v352, type metadata accessor for StaticAccessory.DeviceIdentifier);
                              sub_1D1C11AF0(v268, type metadata accessor for StaticAccessory);
                              v270 = v351;
                              sub_1D1C11B50(v269, v351, type metadata accessor for StaticAccessory.DeviceIdentifier);
                              v271 = v354;
                              sub_1D1C11A88(v270, v354, type metadata accessor for StaticAccessory.DeviceIdentifier);
                              v272 = v353;
                              sub_1D1768FF0(v353, v271);
                              sub_1D1C11AF0(v272, type metadata accessor for StaticAccessory.DeviceIdentifier);
                              v273 = v270;
                              v256 = v359;
                              v255 = v372;
                              sub_1D1C11AF0(v273, type metadata accessor for StaticAccessory.DeviceIdentifier);
                            }
                          }

                          v260 &= v260 - 1;
                          sub_1D1C11AF0(v256, type metadata accessor for StaticMediaSystemComponent);
                        }

                        while (1)
                        {
                          v263 = v262 + 1;
                          if (__OFADD__(v262, 1))
                          {
                            goto LABEL_176;
                          }

                          if (v263 >= v261)
                          {
                            v274 = v378;

                            v275 = v369;
                            v276 = v370;
                            *(v370 + v369[24]) = v386;
                            *(v276 + v275[25]) = v274;
                            v277 = v365;
                            v278 = [v277 mediaSession];
                            if (v278)
                            {
                              v279 = v278;
                              v280 = [v278 playbackState];

                              v281 = 0x5000403020100uLL >> (8 * v280);
                              if (v280 >= 7)
                              {
                                LOBYTE(v281) = 0;
                              }
                            }

                            else
                            {

                              LOBYTE(v281) = 6;
                            }

                            v282 = v371;
                            v283 = v346;
                            *(v276 + v275[15]) = v281;
                            v364 = v277;
                            v284 = [v277 audioDestinationIdentifier];
                            if (v284)
                            {
                              v285 = v284;
                              v286 = sub_1D1E6781C();
                              v288 = v287;

                              v275 = v369;
                            }

                            else
                            {
                              v286 = 0;
                              v288 = 0;
                            }

                            v289 = (v276 + v275[16]);
                            *v289 = v286;
                            v289[1] = v288;
                            v386 = MEMORY[0x1E69E7CD0];
                            v290 = v377;
                            v291 = 1 << *(v377 + 32);
                            v292 = -1;
                            if (v291 < 64)
                            {
                              v292 = ~(-1 << v291);
                            }

                            v293 = v292 & *(v377 + 56);
                            v294 = (v291 + 63) >> 6;

                            v295 = 0;
                            v296 = v379;
                            v297 = v345;
                            while (v293)
                            {
LABEL_150:
                              (*(v282 + 16))(v297, *(v290 + 48) + *(v282 + 72) * (__clz(__rbit64(v293)) | (v295 << 6)), v296);
                              if (*(v254 + 16))
                              {
                                v299 = sub_1D1742188(v297);
                                v296 = v379;
                                if (v300)
                                {
                                  sub_1D1C11A88(*(v254 + 56) + *(v367 + 72) * v299, v283, type metadata accessor for StaticAccessory);
                                  v301 = *(v283 + v368[33]);

                                  sub_1D1C11AF0(v283, type metadata accessor for StaticAccessory);
                                  if (v301)
                                  {
                                    sub_1D1931080(v301);
                                    v296 = v379;
                                  }
                                }
                              }

                              v293 &= v293 - 1;
                              (*v373)(v297, v296);
                              v290 = v377;
                            }

                            while (1)
                            {
                              v298 = v295 + 1;
                              if (__OFADD__(v295, 1))
                              {
                                goto LABEL_177;
                              }

                              if (v298 >= v294)
                              {

                                *(v370 + v369[17]) = v386;
                                v302 = type metadata accessor for StaticSoftwareUpdate(0);
                                v303 = *(v302 - 8);
                                v304 = *(v303 + 56);
                                v305 = (v303 + 56);
                                v306 = v356;
                                v378 = v302;
                                v366 = v304;
                                (v304)(v356, 1, 1);
                                v307 = v306;
                                v308 = v360;
                                sub_1D1741C08(v307, v360, &qword_1EC644760, &unk_1D1E9E530);
                                v309 = 1 << *(v290 + 32);
                                v310 = v308;
                                v311 = -1;
                                if (v309 < 64)
                                {
                                  v311 = ~(-1 << v309);
                                }

                                v312 = v311 & *(v290 + 56);
                                v313 = (v309 + 63) >> 6;
                                v365 = v305;
                                v372 = v305 - 8;

                                v314 = 0;
                                v315 = v358;
                                v376 = v143;
                                while (v312)
                                {
LABEL_164:
                                  v319 = *(v290 + 48) + *(v371 + 72) * (__clz(__rbit64(v312)) | (v314 << 6));
                                  v320 = v315;
                                  v321 = v315;
                                  v322 = v379;
                                  (*(v371 + 16))(v320, v319, v379);
                                  v323 = v362;
                                  sub_1D1741C08(v310, v362, &qword_1EC644760, &unk_1D1E9E530);
                                  v324 = v378;
                                  if ((*v372)(v323, 1, v378) == 1)
                                  {
                                    sub_1D1741A30(v323, &qword_1EC644760, &unk_1D1E9E530);
                                    v325 = v375;
                                    v315 = v321;
                                    if (*(v375 + 16) && (v326 = sub_1D1742188(v321), (v327 & 1) != 0))
                                    {
                                      v328 = v341;
                                      sub_1D1C11A88(*(v325 + 56) + *(v367 + 72) * v326, v341, type metadata accessor for StaticAccessory);
                                      (*v373)(v358, v379);
                                      v310 = v360;
                                      sub_1D1741A30(v360, &qword_1EC644760, &unk_1D1E9E530);
                                      v317 = v361;
                                      sub_1D1741C08(v328 + v368[30], v361, &qword_1EC644760, &unk_1D1E9E530);
                                      v329 = v328;
                                      v315 = v358;
                                      sub_1D1C11AF0(v329, type metadata accessor for StaticAccessory);
                                    }

                                    else
                                    {
                                      (*v373)(v321, v379);
                                      v310 = v360;
                                      sub_1D1741A30(v360, &qword_1EC644760, &unk_1D1E9E530);
                                      v317 = v361;
                                      (v366)(v361, 1, 1, v378);
                                    }
                                  }

                                  else
                                  {
                                    (*v373)(v321, v322);
                                    sub_1D1741A30(v310, &qword_1EC644760, &unk_1D1E9E530);
                                    v316 = v323;
                                    v317 = v361;
                                    sub_1D1C11B50(v316, v361, type metadata accessor for StaticSoftwareUpdate);
                                    (v366)(v317, 0, 1, v324);
                                    v315 = v321;
                                  }

                                  v143 = v376;
                                  v290 = v377;
                                  v312 &= v312 - 1;
                                  sub_1D1741A90(v317, v310, &qword_1EC644760, &unk_1D1E9E530);
                                }

                                while (1)
                                {
                                  v318 = v314 + 1;
                                  if (__OFADD__(v314, 1))
                                  {
                                    goto LABEL_178;
                                  }

                                  if (v318 >= v313)
                                  {
                                    sub_1D1741A30(v356, &qword_1EC644760, &unk_1D1E9E530);

                                    v330 = v343;
                                    sub_1D1741A90(v310, v343, &qword_1EC644760, &unk_1D1E9E530);

                                    sub_1D1C11AF0(v344, type metadata accessor for StateSnapshot.UpdateType);
                                    v331 = v369;
                                    v332 = v370;
                                    result = sub_1D1741A90(v330, v370 + v369[18], &qword_1EC644760, &unk_1D1E9E530);
                                    *(v332 + v331[19]) = v342;
                                    return result;
                                  }

                                  v312 = *&v143[2 * v318];
                                  ++v314;
                                  if (v312)
                                  {
                                    v314 = v318;
                                    goto LABEL_164;
                                  }
                                }
                              }

                              v293 = *&v143[2 * v298];
                              ++v295;
                              if (v293)
                              {
                                v295 = v298;
                                goto LABEL_150;
                              }
                            }
                          }

                          v260 = *(v96 + 8 * v263);
                          ++v262;
                          if (v260)
                          {
                            v262 = v263;
                            goto LABEL_131;
                          }
                        }
                      }

                      v232 = *(v96 + 8 * v242);
                      ++v234;
                      if (v232)
                      {
                        v234 = v242;
                        goto LABEL_107;
                      }
                    }
                  }

                  v222 = *(v96 + 8 * v226);
                  ++v224;
                  if (v222)
                  {
                    v224 = v226;
                    goto LABEL_102;
                  }
                }
              }

              v198 = *(v96 + 8 * v202);
              ++v200;
              if (v198)
              {
                v200 = v202;
                goto LABEL_84;
              }
            }
          }
        }

        else
        {
          (*v373)(v180, v379);
        }
      }

      v179 = v379;
      v180 = v364;
      while (1)
      {
        v181 = v178 + 1;
        if (__OFADD__(v178, 1))
        {
          goto LABEL_174;
        }

        if (v181 >= v177)
        {
          v191 = 0;
          goto LABEL_77;
        }

        v176 = *&v143[2 * v181];
        ++v178;
        if (v176)
        {
          v178 = v181;
          goto LABEL_72;
        }
      }
    }

    v146 = *&v143[2 * v152];
    ++v148;
    if (v146)
    {
      v148 = v152;
      goto LABEL_50;
    }
  }

LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:

  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel17StaticMediaSystemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticSoftwareUpdate(0);
  v93 = *(v4 - 8);
  v5 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v85 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C608, &qword_1D1E9FA10);
  v10 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v12 = &v85 - v11;
  v13 = sub_1D1E669FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v85 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v85 - v24;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v26 = type metadata accessor for StaticMediaSystem();
  v27 = *(v26 + 20);
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  v32 = v28 == *v30;
  v90 = v26;
  if (!v32 || v29 != v31)
  {
    v33 = sub_1D1E6904C();
    v26 = v90;
    if ((v33 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v86 = v4;
  v87 = v12;
  v34 = *(v26 + 24);
  v88 = a2;
  v89 = a1;
  v35 = a1 + v34;
  v36 = *(a1 + v34);
  v37 = *(v35 + 8);
  v38 = a2 + v34;
  v39 = *v38;
  v40 = *(v38 + 8);
  if (v37 == 255)
  {
    sub_1D18EB144(v36, 255);
    if (v40 == 255)
    {
      sub_1D18EB144(v39, 255);
      sub_1D18EB2D8(v36, 255);
      goto LABEL_15;
    }

    sub_1D18EB144(v39, v40);
LABEL_13:
    sub_1D18EB2D8(v36, v37);
    sub_1D18EB2D8(v39, v40);
    goto LABEL_32;
  }

  v97 = v36;
  v98 = v37;
  if (v40 == 255)
  {
    sub_1D18EB144(v36, v37);
    sub_1D18EB144(v39, 255);
    sub_1D18EB144(v36, v37);
    sub_1D1771B5C(v36, v37);
    goto LABEL_13;
  }

  v95 = v39;
  v96 = v40;
  sub_1D18EB144(v36, v37);
  sub_1D18EB144(v39, v40);
  sub_1D18EB144(v36, v37);
  v41 = static StaticAccessory.SpecialMediaCategory.== infix(_:_:)(&v97, &v95);
  sub_1D1771B5C(v95, v96);
  sub_1D1771B5C(v97, v98);
  sub_1D18EB2D8(v36, v37);
  if ((v41 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  v42 = v90[7];
  v43 = *(v22 + 48);
  sub_1D1741C08(v89 + v42, v25, &qword_1EC642570, &qword_1D1E6C6A0);
  v44 = v88;
  sub_1D1741C08(v88 + v42, &v25[v43], &qword_1EC642570, &qword_1D1E6C6A0);
  v45 = *(v14 + 48);
  if (v45(v25, 1, v13) == 1)
  {
    if (v45(&v25[v43], 1, v13) == 1)
    {
      sub_1D1741A30(v25, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_23;
    }

LABEL_20:
    v46 = &qword_1EC642AC0;
    v47 = &qword_1D1E6E810;
    v48 = v25;
LABEL_21:
    sub_1D1741A30(v48, v46, v47);
    goto LABEL_32;
  }

  sub_1D1741C08(v25, v21, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v45(&v25[v43], 1, v13) == 1)
  {
    (*(v14 + 8))(v21, v13);
    goto LABEL_20;
  }

  (*(v14 + 32))(v17, &v25[v43], v13);
  sub_1D1C11294(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v49 = sub_1D1E6775C();
  v50 = *(v14 + 8);
  v50(v17, v13);
  v50(v21, v13);
  sub_1D1741A30(v25, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_23:
  v52 = v89;
  v51 = v90;
  v53 = v90[8];
  v54 = *(v89 + v53);
  v55 = *(v89 + v53 + 8);
  v56 = (v44 + v53);
  if (v54 != *v56 || v55 != v56[1])
  {
    v57 = sub_1D1E6904C();
    v51 = v90;
    if ((v57 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (*(v52 + v51[9]) != *(v44 + v51[9]) || *(v52 + v51[10]) != *(v44 + v51[10]) || *(v52 + v51[11]) != *(v44 + v51[11]) || *(v52 + v51[12]) != *(v44 + v51[12]) || *(v52 + v51[13]) != *(v44 + v51[13]) || *(v52 + v51[14]) != *(v44 + v51[14]))
  {
    goto LABEL_32;
  }

  v60 = v51[15];
  v61 = *(v52 + v60);
  v62 = *(v44 + v60);
  if (v61 == 6)
  {
    if (v62 != 6)
    {
      goto LABEL_32;
    }
  }

  else if (v61 != v62)
  {
    goto LABEL_32;
  }

  v63 = v51[16];
  v64 = (v52 + v63);
  v65 = *(v52 + v63 + 8);
  v66 = (v44 + v63);
  v67 = v66[1];
  if (v65)
  {
    if (!v67)
    {
      goto LABEL_32;
    }

    if (*v64 != *v66 || v65 != v67)
    {
      v68 = sub_1D1E6904C();
      v51 = v90;
      if ((v68 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v67)
  {
    goto LABEL_32;
  }

  v69 = v51[17];
  v70 = *(v44 + v69);
  if (*(v52 + v69))
  {
    if (!v70 || (sub_1D17B30F0() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v70)
  {
    goto LABEL_32;
  }

  v71 = v90[18];
  v72 = *(v92 + 48);
  v73 = v87;
  sub_1D1741C08(v89 + v71, v87, &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741C08(v88 + v71, v73 + v72, &qword_1EC644760, &unk_1D1E9E530);
  v74 = *(v93 + 48);
  if (v74(v73, 1, v86) != 1)
  {
    v81 = v87;
    sub_1D1741C08(v87, v94, &qword_1EC644760, &unk_1D1E9E530);
    if (v74(v81 + v72, 1, v86) != 1)
    {
      sub_1D1C11B50(&v87[v72], v91, type metadata accessor for StaticSoftwareUpdate);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v82 = v94;
        v83 = v91;
        updated = _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(v94 + *(v86 + 20), v91 + *(v86 + 20));
        sub_1D1C11AF0(v83, type metadata accessor for StaticSoftwareUpdate);
        sub_1D1C11AF0(v82, type metadata accessor for StaticSoftwareUpdate);
        sub_1D1741A30(v87, &qword_1EC644760, &unk_1D1E9E530);
        if (!updated)
        {
          goto LABEL_32;
        }

        goto LABEL_53;
      }

      sub_1D1C11AF0(v91, type metadata accessor for StaticSoftwareUpdate);
      sub_1D1C11AF0(v94, type metadata accessor for StaticSoftwareUpdate);
      v46 = &qword_1EC644760;
      v47 = &unk_1D1E9E530;
      goto LABEL_65;
    }

    sub_1D1C11AF0(v94, type metadata accessor for StaticSoftwareUpdate);
LABEL_64:
    v46 = &qword_1EC64C608;
    v47 = &qword_1D1E9FA10;
LABEL_65:
    v48 = v87;
    goto LABEL_21;
  }

  if (v74(&v87[v72], 1, v86) != 1)
  {
    goto LABEL_64;
  }

  sub_1D1741A30(v87, &qword_1EC644760, &unk_1D1E9E530);
LABEL_53:
  if (*(v89 + v90[19]) != *(v88 + v90[19]))
  {
    goto LABEL_32;
  }

  v75 = v90[20];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D17A6E98(*(v89 + v90[21]), *(v88 + v90[21])) & 1) == 0)
  {
    goto LABEL_32;
  }

  v76 = v90[22];
  v77 = (v89 + v76);
  v78 = *(v89 + v76 + 8);
  v79 = (v88 + v76);
  v80 = v79[1];
  if (v78)
  {
    if (!v80 || (*v77 != *v79 || v78 != v80) && (sub_1D1E6904C() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v80)
  {
    goto LABEL_32;
  }

  if (sub_1D17A6E98(*(v89 + v90[23]), *(v88 + v90[23])) & 1) != 0 && (sub_1D17A81F0(*(v89 + v90[24]), *(v88 + v90[24])))
  {
    v58 = sub_1D184C628(*(v89 + v90[25]), *(v88 + v90[25]));
    return v58 & 1;
  }

LABEL_32:
  v58 = 0;
  return v58 & 1;
}

unint64_t sub_1D1C10088()
{
  result = qword_1EC64C928;
  if (!qword_1EC64C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C928);
  }

  return result;
}

uint64_t sub_1D1C100DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C930, &qword_1D1EA0DA0);
    sub_1D1C11294(a2, type metadata accessor for StaticAccessory.DeviceIdentifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1C10178()
{
  result = qword_1EC64C948;
  if (!qword_1EC64C948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C940, &qword_1D1EA0DA8);
    sub_1D1C11294(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1C11294(&qword_1EC64C950, type metadata accessor for StaticMediaSystemComponent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C948);
  }

  return result;
}

uint64_t sub_1D1C10264(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C11294(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1C10300()
{
  result = qword_1EC64C968;
  if (!qword_1EC64C968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C940, &qword_1D1EA0DA8);
    sub_1D1C11294(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1C11294(&qword_1EC64C970, type metadata accessor for StaticMediaSystemComponent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C968);
  }

  return result;
}

uint64_t sub_1D1C1047C(void *a1)
{
  a1[1] = sub_1D1C11294(&qword_1EC64C978, type metadata accessor for StaticMediaSystem);
  a1[2] = sub_1D1C11294(&qword_1EC64C980, type metadata accessor for StaticMediaSystem);
  a1[3] = sub_1D1C11294(&qword_1EC64BFD8, type metadata accessor for StaticMediaSystem);
  a1[4] = sub_1D1C11294(&qword_1EC64C058, type metadata accessor for StaticMediaSystem);
  a1[5] = sub_1D1C11294(qword_1EE07A8D8, type metadata accessor for StaticMediaSystem);
  result = sub_1D1C11294(&qword_1EC64C988, type metadata accessor for StaticMediaSystem);
  a1[6] = result;
  return result;
}

void sub_1D1C105C8()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, qword_1EE07CA78);
    if (v1 <= 0x3F)
    {
      sub_1D1C107C8(319, &qword_1EE07E020, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1D17BDF80(319, qword_1EE07BDB8);
        if (v3 <= 0x3F)
        {
          sub_1D17BDF80(319, qword_1EE07D1F8);
          if (v4 <= 0x3F)
          {
            sub_1D1C07AC4();
            if (v5 <= 0x3F)
            {
              sub_1D1C107C8(319, &qword_1EE07DE40, type metadata accessor for StaticSoftwareUpdate);
              if (v6 <= 0x3F)
              {
                sub_1D1791340();
                if (v7 <= 0x3F)
                {
                  sub_1D1C1081C();
                  if (v8 <= 0x3F)
                  {
                    sub_1D1C108B0();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D1C107C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E685AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1C1081C()
{
  if (!qword_1EE07B6C0)
  {
    type metadata accessor for StaticAccessory.DeviceIdentifier(255);
    sub_1D1C11294(&qword_1EE07CAB0, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v0 = sub_1D1E681FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B6C0);
    }
  }
}

void sub_1D1C108B0()
{
  if (!qword_1EE07B790)
  {
    sub_1D1E66A7C();
    type metadata accessor for StaticMediaSystemComponent();
    sub_1D1C11294(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v0 = sub_1D1E6769C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B790);
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticMediaSystem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticMediaSystem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1C10AB0()
{
  result = qword_1EC64C990;
  if (!qword_1EC64C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C990);
  }

  return result;
}

unint64_t sub_1D1C10B08()
{
  result = qword_1EC64C998;
  if (!qword_1EC64C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C998);
  }

  return result;
}

unint64_t sub_1D1C10B60()
{
  result = qword_1EC64C9A0;
  if (!qword_1EC64C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C9A0);
  }

  return result;
}

uint64_t sub_1D1C10BB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBDFE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x626D79536E6F6369 && a2 == 0xEA00000000006C6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C62756F447369 && a2 == 0xEC00000068676948 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461706D6F437369 && a2 == 0xEC000000656C6269 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC67A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xED00006574617453 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC67C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x736D6F74706D7973 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEE00657461647055 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6270 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEC00000073644979 || (sub_1D1E6904C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6449656369766564 && a2 == 0xE900000000000073 || (sub_1D1E6904C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D1EC6920 == a2)
  {

    return 21;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t sub_1D1C11294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1C11304(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticMediaSystemComponent();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643780, &qword_1D1EA1130);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1741C08(v18, v47, &qword_1EC643780, &qword_1D1EA1130);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1C11B50(v20 + v45, v8, type metadata accessor for StaticMediaSystemComponent);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D173D7C0();
        }
      }

      else
      {
        v32 = v51;
        sub_1D1730B14(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1C11BB8(v24, v19);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1C11B50(v24, v37, type metadata accessor for StaticMediaSystemComponent);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C116F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAccessory(0);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v47 = a1;
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v45 = (v8 + 8);
  v46 = v8 + 16;

  v17 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  while (v14)
  {
    v18 = v48;
LABEL_12:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v8 + 16))(v18, *(v47 + 48) + *(v8 + 72) * (v20 | (v17 << 6)), v7);
    if (*(a2 + 16) && (v21 = a2, v22 = sub_1D1742188(v18), (v23 & 1) != 0))
    {
      v24 = *(a2 + 56) + *(v43 + 72) * v22;
      v25 = v8;
      v26 = v7;
      v27 = v42;
      sub_1D1C11A88(v24, v42, type metadata accessor for StaticAccessory);
      (*v45)(v18, v26);
      v28 = v27 + *(v44 + 92);
      v29 = *v28;
      v30 = *(v28 + 8);
      sub_1D18EB144(*v28, *(v28 + 8));
      v31 = v27;
      v7 = v26;
      v8 = v25;
      a2 = v21;
      result = sub_1D1C11AF0(v31, type metadata accessor for StaticAccessory);
      if (v30 != 255)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D177FA8C(0, *(v41 + 2) + 1, 1, v41);
          v41 = result;
        }

        v32 = v29;
        v34 = *(v41 + 2);
        v33 = *(v41 + 3);
        v35 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v40 = v34 + 1;
          result = sub_1D177FA8C((v33 > 1), v34 + 1, 1, v41);
          v35 = v40;
          v41 = result;
        }

        v36 = v41;
        *(v41 + 2) = v35;
        v37 = &v36[16 * v34];
        *(v37 + 4) = v32;
        v37[40] = v30;
      }
    }

    else
    {
      result = (*v45)(v18, v7);
    }
  }

  v18 = v48;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      v38 = _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(v41);

      return v38;
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C11A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C11AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C11B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C11BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMediaSystemComponent();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t StaticService.staticCharacteristic(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + *(type metadata accessor for StaticService(0) + 128));
  if (*(v5 + 16))
  {
    v6 = *a1;

    v7 = sub_1D171D140(v6);
    if (v8)
    {
      v9 = v7;
      v10 = *(v5 + 56);
      v11 = type metadata accessor for StaticCharacteristic();
      v12 = *(v11 - 8);
      sub_1D1C2AEC4(v10 + *(v12 + 72) * v9, a2, type metadata accessor for StaticCharacteristic);
      (*(v12 + 56))(a2, 0, 1, v11);
    }

    else
    {
      v16 = type metadata accessor for StaticCharacteristic();
      (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    }
  }

  else
  {
    v13 = type metadata accessor for StaticCharacteristic();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t StaticService.description.getter()
{
  BYTE8(v6) = 0;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x2065636976726553, 0xE900000000000027);
  v1 = type metadata accessor for StaticService(0);
  MEMORY[0x1D3890F70](*(v0 + v1[5]), *(v0 + v1[5] + 8));
  MEMORY[0x1D3890F70](0x27206469202C27, 0xE700000000000000);
  sub_1D1E66A7C();
  sub_1D1C2AFE0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC6970);
  *&v6 = *(v0 + v1[26]);
  v3 = ServiceKind.localizedDescription.getter();
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EC6990);
  *(v0 + v1[28]);
  v4 = ServiceKind.localizedDescription.getter();
  MEMORY[0x1D3890F70](v4);

  MEMORY[0x1D3890F70](39, 0xE100000000000000);
  return *(&v6 + 1);
}

uint64_t StaticService.set(displayName:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = swift_task_alloc();
  v2[20] = v3;
  *v3 = v2;
  v3[1] = sub_1D1C12034;

  return StaticService.service.getter();
}

uint64_t sub_1D1C12034(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C12134, 0, 0);
}

uint64_t sub_1D1C12134()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[18];
    v3 = v0[19];
    v4 = sub_1D1E677EC();
    v0[22] = v4;
    v0[2] = v0;
    v0[3] = sub_1D1C122A0;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_51;
    v0[14] = v5;
    [v1 updateName:v4 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D1C122A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1D1C12418;
  }

  else
  {
    v3 = sub_1D1C123B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1C123B0()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1C12418()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t StaticService.set(staticRoom:)()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C1252C;

  return StaticRoom.room.getter();
}

uint64_t sub_1D1C1252C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C1262C, 0, 0);
}

uint64_t sub_1D1C1262C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1D1BADE64;
    v3 = v0[2];

    return StaticService.set(room:)(v1);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t StaticService.set(room:)(uint64_t a1)
{
  *(v1 + 144) = a1;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C127BC;

  return StaticService.service.getter();
}

uint64_t sub_1D1C127BC(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C128BC, 0, 0);
}

uint64_t sub_1D1C128BC()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 160) accessory];
    *(v0 + 168) = v2;

    if (v2)
    {
      v3 = [v2 home];
      *(v0 + 176) = v3;
      if (v3)
      {
        v4 = v3;
        v5 = *(v0 + 144);
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_1D1C12AA0;
        v6 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1D17B04C8;
        *(v0 + 104) = &block_descriptor_9;
        *(v0 + 112) = v6;
        [v4 assignAccessory:v2 toRoom:v5 completionHandler:v0 + 80];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }
    }
  }

  sub_1D1820D0C();
  swift_allocError();
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1C12AA0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1D1BADB48;
  }

  else
  {
    v3 = sub_1D1C12BB0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1C12BB0()
{
  sub_1D1E67E1C();
  *(v0 + 192) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C12C44, v2, v1);
}

uint64_t sub_1D1C12C44()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];

  sub_1D18B4DB8(v2, v3);
  v0[25] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D1C123B0, 0, 0);
}

uint64_t sub_1D1C12CE4()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 200);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t StaticService.set(showInDashboard:)(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C12DDC;

  return StaticService.service.getter();
}

uint64_t sub_1D1C12DDC(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C12EDC, 0, 0);
}

uint64_t sub_1D1C12EDC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMService.shouldShowInDashboard.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t StaticService.set(favorite:)(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C12FEC;

  return StaticService.service.getter();
}

uint64_t sub_1D1C12FEC(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C130EC, 0, 0);
}

uint64_t sub_1D1C130EC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMService.isFavorite.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1C131A0@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for StaticService(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C2AEC4(v2, v8, type metadata accessor for StaticService);
  v11 = a1;
  return sub_1D18F211C(v8, &v11, a2);
}

uint64_t StaticService.set(customIconSymbol:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1D1C132DC;

  return StaticService.service.getter();
}

uint64_t sub_1D1C132DC(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C133DC, 0, 0);
}

uint64_t sub_1D1C133DC()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[3];

    v4 = v1;
    HMService.customIconSFSymbol.setter(v2, v3);
  }

  v5 = v0[1];

  return v5();
}

BOOL StaticService.canBeToggled.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - v7;
  v9 = type metadata accessor for StaticService(0);
  v10 = *(v0 + *(v9 + 104));
  if (v10 - 3) < 0x2E && ((0x32C892066001uLL >> (v10 - 3)))
  {
    return 1;
  }

  if (qword_1EC642230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = off_1EC646318;

  v12 = sub_1D171951C(v10, v11);

  if (v12)
  {
    return 1;
  }

  v52 = v10;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3340 == v14)
  {
  }

  else
  {
    v15 = sub_1D1E6904C();

    if ((v15 & 1) == 0)
    {
LABEL_18:
      v52 = v10;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v24)
      {
      }

      else
      {
        v25 = sub_1D1E6904C();

        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

      v26 = *(v1 + *(v9 + 128));
      if (!*(v26 + 16))
      {
        v34 = type metadata accessor for StaticCharacteristic();
        (*(*(v34 - 8) + 56))(v6, 1, 1, v34);
LABEL_35:
        sub_1D1741A30(v6, &qword_1EC643630, &qword_1D1E71D10);
        return 0;
      }

      v27 = *(v1 + *(v9 + 128));

      v28 = sub_1D171D140(152);
      if (v29)
      {
        v30 = v28;
        v31 = *(v26 + 56);
        v32 = type metadata accessor for StaticCharacteristic();
        v33 = *(v32 - 8);
        sub_1D1C2AEC4(v31 + *(v33 + 72) * v30, v6, type metadata accessor for StaticCharacteristic);
        (*(v33 + 56))(v6, 0, 1, v32);
      }

      else
      {
        v32 = type metadata accessor for StaticCharacteristic();
        (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
      }

      type metadata accessor for StaticCharacteristic();
      if ((*(*(v32 - 8) + 48))(v6, 1, v32) == 1)
      {
        goto LABEL_35;
      }

      v44 = &v6[*(v32 + 44)];
      v45 = *v44;
      v46 = v44[1];
      v47 = v44[2];
      v48 = v44[3];
      v40 = v44[4];
      sub_1D18F323C(*v44, v46, v47, v48);
      sub_1D1C2AF2C(v6, type metadata accessor for StaticCharacteristic);
      if (v48 >> 8 == 0xFFFFFFFF)
      {
        return 0;
      }

      if (v48 >> 62)
      {
        sub_1D18F3260(v45, v46, v47, v48);
        return 0;
      }

      if (!v40)
      {
        if (v47 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v47;
        }

        v42 = v46;
        v43 = v45;
LABEL_44:
        v40 = sub_1D1C279CC(v42, v43, v41);
        goto LABEL_45;
      }

      goto LABEL_45;
    }
  }

  v16 = *(v1 + *(v9 + 128));
  if (!*(v16 + 16))
  {
    v23 = type metadata accessor for StaticCharacteristic();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
LABEL_17:
    sub_1D1741A30(v8, &qword_1EC643630, &qword_1D1E71D10);
    goto LABEL_18;
  }

  v17 = *(v1 + *(v9 + 128));

  v18 = sub_1D171D140(160);
  if (v19)
  {
    v20 = v18;
    v51 = *(v16 + 56);
    v21 = type metadata accessor for StaticCharacteristic();
    v22 = *(v21 - 8);
    sub_1D1C2AEC4(v51 + *(v22 + 72) * v20, v8, type metadata accessor for StaticCharacteristic);
    (*(v22 + 56))(v8, 0, 1, v21);
  }

  else
  {
    v21 = type metadata accessor for StaticCharacteristic();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  type metadata accessor for StaticCharacteristic();
  if ((*(*(v21 - 8) + 48))(v8, 1, v21) == 1)
  {
    goto LABEL_17;
  }

  v35 = &v8[*(v21 + 44)];
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  v39 = v35[3];
  v40 = v35[4];
  sub_1D18F323C(*v35, v37, v38, v39);
  sub_1D1C2AF2C(v8, type metadata accessor for StaticCharacteristic);
  if (v39 >> 8 == 0xFFFFFFFF)
  {
    goto LABEL_18;
  }

  if (v39 >> 62)
  {
    sub_1D18F3260(v36, v37, v38, v39);
    goto LABEL_18;
  }

  if (!v40)
  {
    if (v38 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v38;
    }

    v42 = v37;
    v43 = v36;
    goto LABEL_44;
  }

LABEL_45:
  v49 = *(v40 + 16);

  return v49 == 2;
}

uint64_t sub_1D1C13B78(char a1, uint64_t (*a2)(char *))
{
  v7 = *(v2 + *(type metadata accessor for StaticService(0) + 128));
  v6 = a1;
  return a2(&v6);
}

Swift::Int sub_1D1C13BE0(char a1)
{
  v5 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
  v4 = a1;
  v6 = StaticCharacteristicsBag.int(for:)(&v4);
  if (v6.is_nil)
  {
    v6.value = 0;
  }

  return v6.value;
}

uint64_t StaticService.service.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C13D48, 0, 0);
}

uint64_t sub_1D1C13D48()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[14] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1C13E38;
    v4 = 0;
  }

  else
  {
    v0[16] = sub_1D1E67E1C();
    v0[17] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1C14974;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1C13E38()
{
  v91 = v1;
  v4 = v1[14];
  swift_beginAccess();
  v5 = *(v4 + 64);
  if (v5)
  {
    v6 = [v5 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v90 = sub_1D1749970(v7);
    v0 = 0;
    sub_1D1747DDC(&v90);

    v8 = v90;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = v1[12];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[5];
  v13 = *(v11 + 16);
  (v13)(v1[13], v12, v10);
  v79 = v13;
  v80 = (v11 + 16);
  (v13)(v9, v12, v10);
  v74 = v8 >> 62;
  if (v8 >> 62)
  {
LABEL_76:
    v83 = v8 & 0xFFFFFFFFFFFFFF8;
    v82 = sub_1D1E6873C();
  }

  else
  {
    v83 = v8 & 0xFFFFFFFFFFFFFF8;
    v82 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v81 = v8 & 0xC000000000000001;
  v75 = v8;
  v15 = (v1[7] + 8);
  v87 = v1;
  v77 = v15;
  v78 = v8 + 32;
  while (1)
  {
    if (v14 == v82)
    {
      v35 = v82;
      if (v74)
      {
        goto LABEL_55;
      }

      goto LABEL_34;
    }

    v86 = v14;
    if (v81)
    {
      v16 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v14 >= *(v83 + 16))
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v16 = *(v78 + 8 * v14);
    }

    v18 = v1[11];
    v17 = v1[12];
    v19 = v1[10];
    v20 = v1[6];
    v84 = v16;
    v21 = [v16 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v22 = sub_1D1E67C1C();

    v3 = v22;
    v1 = v79;
    (v79)(v18, v17, v20);
    (v79)(v19, v17, v20);
    v85 = (v22 >> 62);
    v88 = v22 & 0xFFFFFFFFFFFFFF8;
    v8 = v22 >> 62 ? sub_1D1E6873C() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = 0;
    v23 = v22 & 0xC000000000000001;
    v76 = v22 + 32;
    while (v8 != v2)
    {
      if (v23)
      {
        v24 = v3;
        v25 = MEMORY[0x1D3891EF0](v2, v3);
      }

      else
      {
        if (v2 >= *(v88 + 16))
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v24 = v3;
        v25 = *(v3 + 8 * v2 + 32);
      }

      v26 = v25;
      v27 = v87[10];
      v28 = [v25 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v29 = sub_1D1E67C1C();

      v30 = swift_task_alloc();
      *(v30 + 16) = v27;
      v0 = 0;
      v1 = sub_1D174A6C4(sub_1D1749C64, v30, v29);

      if (v1)
      {
        v8 = v2;
        v3 = v24;
        break;
      }

      v31 = __OFADD__(v2++, 1);
      v3 = v24;
      if (v31)
      {
        goto LABEL_71;
      }
    }

    if (!v85)
    {
      break;
    }

    if (v8 != sub_1D1E6873C())
    {
      goto LABEL_50;
    }

LABEL_28:
    v1 = v87;
    v32 = v87[10];
    v33 = v87[6];
    v15 = v77;
    v34 = *v77;
    (*v77)(v87[11], v33);

    v34(v32, v33);

    v14 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      goto LABEL_73;
    }
  }

  if (v8 == *(v88 + 16))
  {
    goto LABEL_28;
  }

LABEL_50:
  if (v23)
  {
    goto LABEL_82;
  }

  if (v8 < *(v88 + 16))
  {
    for (i = *(v76 + 8 * v8); ; i = MEMORY[0x1D3891EF0](v8, v3))
    {
      v50 = i;
      v1 = v87;
      v51 = v87[11];
      v52 = v87[6];
      v53 = [i services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v54 = sub_1D1E67C1C();

      v55 = swift_task_alloc();
      *(v55 + 16) = v51;
      v2 = sub_1D174A6C4(sub_1D1778988, v55, v54);

      v15 = v77;
      v56 = *v77;
      (*v77)(v51, v52);

      v57 = v87[10];
      v0 = v87[6];
      if (!v2)
      {
        goto LABEL_86;
      }

      v56(v57, v0);

      v35 = v86;
      if (v74)
      {
LABEL_55:
        if (v35 == sub_1D1E6873C())
        {
LABEL_56:
          v58 = *v15;
          (*v15)(v1[13], v1[6]);
          v0 = 0;
          goto LABEL_67;
        }
      }

      else
      {
LABEL_34:
        if (v35 == *(v83 + 16))
        {
          goto LABEL_56;
        }
      }

      if (v81)
      {
        v36 = MEMORY[0x1D3891EF0](v35, v75);
      }

      else
      {
        if (v35 >= *(v83 + 16))
        {
          __break(1u);
LABEL_80:
          v60 = MEMORY[0x1D3891EF0](v35, v3);
LABEL_65:
          v57 = v60;
          v61 = v0[9];
          v2 = v0;
          v62 = v0[6];
          v63 = [v60 services];
          sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          v56 = sub_1D1E67C1C();

          v64 = swift_task_alloc();
          *(v64 + 16) = v61;
          v0 = sub_1D174A6C4(sub_1D1778988, v64, v56);

          v58 = *v77;
          (*v77)(v61, v62);

          if (!v0)
          {
            goto LABEL_85;
          }

          v65 = *(v2 + 104);
          v66 = *(v2 + 64);
          v67 = *(v2 + 48);

          v58(v66, v67);
          v58(v65, v67);

          v1 = v2;
LABEL_67:

          v1[15] = v0;
          v58(v1[12], v1[6]);
          v68 = sub_1D1C148C4;
          v69 = 0;
          v70 = 0;

          return MEMORY[0x1EEE6DFA0](v68, v69, v70);
        }

        v36 = *(v78 + 8 * v35);
      }

      v37 = v1[13];
      v39 = v1[8];
      v38 = v1[9];
      v40 = v1[6];
      v85 = v36;
      v41 = [v36 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v3 = sub_1D1E67C1C();

      v1 = v80;
      (v79)(v38, v37, v40);
      (v79)(v39, v37, v40);
      v86 = v3 >> 62;
      v89 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 >> 62)
      {
        v35 = sub_1D1E6873C();
      }

      else
      {
        v35 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0;
      v42 = v3 & 0xC000000000000001;
      v84 = (v3 + 32);
      v0 = v87;
      while (v35 != v8)
      {
        if (v42)
        {
          v2 = v3;
          v43 = MEMORY[0x1D3891EF0](v8, v3);
        }

        else
        {
          if (v8 >= *(v89 + 16))
          {
            goto LABEL_74;
          }

          v2 = v3;
          v43 = *(v3 + 8 * v8 + 32);
        }

        v44 = v43;
        v45 = v0[8];
        v46 = [v43 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v47 = sub_1D1E67C1C();

        v1 = swift_task_alloc();
        v1[2] = v45;
        v48 = sub_1D174A6C4(sub_1D1778988, v1, v47);

        if (v48)
        {
          v35 = v8;
          v0 = v87;
          v3 = v2;
          break;
        }

        v31 = __OFADD__(v8++, 1);
        v0 = v87;
        v3 = v2;
        if (v31)
        {
          goto LABEL_75;
        }
      }

      if (v86)
      {
        v59 = sub_1D1E6873C();
      }

      else
      {
        v59 = *(v89 + 16);
      }

      if (v35 == v59)
      {
        goto LABEL_84;
      }

      if (v42)
      {
        goto LABEL_80;
      }

      if (v35 < *(v89 + 16))
      {
        v60 = *(v84 + v35);
        goto LABEL_65;
      }

      __break(1u);
LABEL_82:
      ;
    }
  }

  __break(1u);
LABEL_84:
  v71 = v0[12];
  v57 = v0[13];
  v56 = v0[8];
  v72 = v0[9];
  v0 = v0[6];
  v58 = *v77;
  (*v77)(v72, v0);

  v58(v56, v0);
  v58(v57, v0);

  v58(v71, v0);
  __break(1u);
LABEL_85:
  v58(*(v2 + 64), *(v2 + 48));
  __break(1u);
LABEL_86:
  v68 = (v56)(v57, v0);
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v68, v69, v70);
}

uint64_t sub_1D1C148C4()
{
  v1 = v0[14];

  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9(v2);
}

uint64_t sub_1D1C14974()
{
  v1 = *(v0 + 136);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C14A0C, 0, 0);
}

uint64_t sub_1D1C14A0C()
{
  v1 = *(v0 + 128);
  *(v0 + 144) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C14A98, v3, v2);
}

uint64_t sub_1D1C14A98()
{
  v1 = *(v0 + 144);

  *(v0 + 152) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1C14B0C, 0, 0);
}

uint64_t sub_1D1C14B0C()
{
  v1 = v0[16];
  v2 = v0[5];
  v0[20] = sub_1D1E66A2C();
  v0[21] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C14BA4, v4, v3);
}

uint64_t sub_1D1C14BA4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v4 = [v3 serviceFor_];

  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11(v4);
}

uint64_t StaticService.isActivated.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30[-v4];
  v6 = type metadata accessor for StatusStrings.Options();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v7[13];
  v12 = sub_1D1E669FC();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *v10 = 257;
  *(v10 + 2) = 0;
  v10[6] = 0;
  v10[v7[14]] = 2;
  v13 = &v10[v7[15]];
  v13[4] = 0;
  *v13 = 2;
  v14 = type metadata accessor for StaticMatterDevice();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  StaticService.statusString(with:associatedMatterDevice:)(v10);
  v16 = v15;
  sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C2AF2C(v10, type metadata accessor for StatusStrings.Options);
  if (v16)
  {

LABEL_3:
    v17 = 0;
  }

  else
  {
    v19 = type metadata accessor for StaticService(0);
    v17 = 0;
    switch(*(v1 + *(v19 + 104)))
    {
      case 3:
        v32 = *(v1 + *(v19 + 128));
        v31 = 30;
        v35 = StaticCharacteristicsBag.int(for:)(&v31);
        v25 = v35.value == 2;
        goto LABEL_36;
      case 9:
        v32 = *(v1 + *(v19 + 128));
        v24 = 18;
        goto LABEL_35;
      case 0xA:
        v32 = *(v1 + *(v19 + 128));
        v24 = 21;
        goto LABEL_35;
      case 0xB:
        v32 = *(v1 + *(v19 + 128));
        v24 = 28;
        goto LABEL_35;
      case 0xE:
      case 0x33:
      case 0x34:
        v32 = *(v1 + *(v19 + 128));
        v31 = 40;
        v33 = StaticCharacteristicsBag.int(for:)(&v31);
        v17 = (v33.value > 0) & ~v33.is_nil;
        return v17 & 1;
      case 0x10:
      case 0x1C:
      case 0x22:
      case 0x29:
        v32 = *(v1 + *(v19 + 128));
        v20 = 105;
        goto LABEL_13;
      case 0x11:
      case 0x14:
      case 0x15:
      case 0x2A:
      case 0x2C:
      case 0x30:
        v32 = *(v1 + *(v19 + 128));
        v20 = 3;
        goto LABEL_13;
      case 0x13:
        v32 = *(v1 + *(v19 + 128));
        v26 = 31;
        goto LABEL_26;
      case 0x18:
        v32 = *(v1 + *(v19 + 128));
        v20 = 65;
        goto LABEL_13;
      case 0x1A:
        v32 = *(v1 + *(v19 + 128));
        v24 = 74;
        goto LABEL_35;
      case 0x1E:
        v32 = *(v1 + *(v19 + 128));
        v26 = 38;
LABEL_26:
        v31 = v26;
        v34 = StaticCharacteristicsBag.int(for:)(&v31);
        v21 = v34.value == 1;
        goto LABEL_27;
      case 0x1F:
      case 0x26:
        v32 = *(v1 + *(v19 + 128));
        v20 = 84;
        goto LABEL_13;
      case 0x20:
        v32 = *(v1 + *(v19 + 128));
        v20 = 83;
LABEL_13:
        v31 = v20;
        v17 = sub_1D1CE4920(&v31);
        if (v17 != 2)
        {
          return v17 & 1;
        }

        goto LABEL_3;
      case 0x21:
        v32 = *(v1 + *(v19 + 128));
        v24 = 89;
        goto LABEL_35;
      case 0x23:
        v32 = *(v1 + *(v19 + 128));
        v31 = 42;
        v34 = StaticCharacteristicsBag.int(for:)(&v31);
        v21 = v34.value == 3;
LABEL_27:
        v27 = !v21;
        v17 = v27 & ~v34.is_nil;
        return v17 & 1;
      case 0x25:
        v32 = *(v1 + *(v19 + 128));
        v24 = 127;
LABEL_35:
        v31 = v24;
        v35 = StaticCharacteristicsBag.int(for:)(&v31);
        v25 = v35.value == 1;
LABEL_36:
        v29 = v25;
        v17 = v29 & ~v35.is_nil;
        return v17 & 1;
      case 0x2E:
        v28 = *(v19 + 128);
        v32 = *(v1 + v28);
        v31 = 34;
        v36 = StaticCharacteristicsBag.int(for:)(&v31);
        if (!v36.is_nil && v36.value)
        {
          v17 = 1;
          return v17 & 1;
        }

        v32 = *(v1 + v28);
        v31 = -104;
        v37 = StaticCharacteristicsBag.int(for:)(&v31);
        if (v37.is_nil)
        {
          goto LABEL_3;
        }

        v17 = v37.value != 0;
        break;
      case 0x2F:
        v22 = *(v19 + 128);
        v32 = *(v1 + v22);
        v31 = 3;
        v23 = sub_1D1CE4920(&v31);
        if (v23 == 2 || (v23 & 1) == 0)
        {
          goto LABEL_3;
        }

        v32 = *(v1 + v22);
        v31 = 65;
        v17 = sub_1D1CE4920(&v31);
        return v17 & 1;
      default:
        return v17 & 1;
    }
  }

  return v17 & 1;
}

uint64_t _s13HomeDataModel13StaticServiceV07displayE4KindAA0eG0Ovg_0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  v4 = *(v1 + *(result + 112));
  if (v4 == 53)
  {
    LOBYTE(v4) = *(v1 + *(result + 104));
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D1C1516C(unsigned __int8 a1)
{
  v5 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
  v4 = a1;
  return sub_1D1CE4920(&v4);
}

uint64_t StaticService.isSensor.getter()
{
  if (qword_1EE07AB30 != -1)
  {
    swift_once();
  }

  v1 = off_1EE07AB38;
  v2 = *(v0 + *(type metadata accessor for StaticService(0) + 104));

  return sub_1D171951C(v2, v1);
}

uint64_t StaticService.toggle()(uint64_t a1)
{
  *(v1 + 48) = 2;
  *(v1 + 16) = xmmword_1D1E88490;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1D186C9D4;

  return StaticService.toggle(options:context:)(a1, (v1 + 48), (v1 + 16));
}

BOOL StaticService.isVisibleService.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  if (qword_1EC642398 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC6BE1B0;
  v6 = type metadata accessor for StaticService(0);
  if ((sub_1D171951C(*(v0 + *(v6 + 104)), v5) & 1) == 0)
  {
    return 0;
  }

  sub_1D1741C08(v0 + *(v6 + 116), v4, &qword_1EC642590, qword_1D1E71260);
  v7 = sub_1D1E66A7C();
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) == 1;
  sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
  return v8;
}

Swift::Int StaticService.isTransitioning.getter()
{
  v1 = type metadata accessor for StaticService(0);
  LOBYTE(v2) = 0;
  v3 = *(v0 + *(v1 + 104));
  if (v3 > 0x2E)
  {
    if (v3 - 51 >= 2)
    {
      if (v3 != 47)
      {
        return v2 & 1;
      }

      v9 = *(v0 + *(v1 + 128));
      v19 = v9;
      v18 = 3;
      v10 = sub_1D1CE4920(&v18);
      if (v10 == 2)
      {
        goto LABEL_25;
      }

      v11 = v10;
      v19 = v9;
      v18 = 65;
      v12 = sub_1D1CE4920(&v18);
      LOBYTE(v2) = v12 ^ v11;
      if (v12 == 2)
      {
        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    }

LABEL_15:
    v7 = *(v0 + *(v1 + 128));
    v19 = v7;
    v18 = -98;
    v22 = StaticCharacteristicsBag.int(for:)(&v18);
    if (v22.is_nil)
    {
      goto LABEL_25;
    }

    value = v22.value;
    v19 = v7;
    v18 = 40;
    v23 = StaticCharacteristicsBag.int(for:)(&v18);
    LOBYTE(v2) = value != v23.value;
    if (v23.is_nil)
    {
      LOBYTE(v2) = 0;
    }

    return v2 & 1;
  }

  switch(v3)
  {
    case 0xEu:
      goto LABEL_15;
    case 0x13u:
      v13 = *(v0 + *(v1 + 128));
      v19 = v13;
      v18 = -107;
      v24 = StaticCharacteristicsBag.int(for:)(&v18);
      if (v24.is_nil)
      {
        goto LABEL_25;
      }

      v15 = v24.value;
      v19 = v13;
      v18 = 31;
      v25 = StaticCharacteristicsBag.int(for:)(&v18);
      v17 = v15 != v25.value && v25.value != 4;
      LOBYTE(v2) = v17 & ~v25.is_nil;
      break;
    case 0x1Eu:
      v19 = *(v0 + *(v1 + 128));
      v4 = v19;
      v18 = -100;
      v20 = StaticCharacteristicsBag.int(for:)(&v18);
      v5 = v20.value;
      is_nil = v20.is_nil;
      v19 = v4;
      v18 = 38;
      v21 = StaticCharacteristicsBag.int(for:)(&v18);
      if (v21.is_nil)
      {
        v2 = 0;
      }

      else
      {
        v2 = v21.value;
      }

      if (is_nil)
      {
        goto LABEL_25;
      }

      if (v5)
      {
        if (v5 == 1 && !v21.is_nil && !v2)
        {
          LOBYTE(v2) = 1;
          return v2 & 1;
        }

LABEL_25:
        LOBYTE(v2) = 0;
        return v2 & 1;
      }

      if (v21.is_nil || v2 != 1)
      {
        goto LABEL_25;
      }

      break;
  }

  return v2 & 1;
}

char StaticService.statusIcon.getter@<W0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticService(0);
  v4 = *(v1 + v3[28]);
  if (v4 == 53)
  {
    v4 = *(v1 + v3[26]);
  }

  v5 = *(v1 + v3[27]);
  v6 = (v1 + v3[25]);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v6[1];

    v10._countAndFlagsBits = v8;
    v10._object = v7;
    LOBYTE(v3) = IconSymbol.init(rawValue:)(v10);
    v11 = v13;
  }

  else
  {
    v11 = 92;
  }

  *a1 = v4 | (v5 << 8);
  *(a1 + 8) = 0;
  *(a1 + 9) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return v3;
}

BOOL StaticService.isBridgedValveService.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v18 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = type metadata accessor for StaticService(0);
  v19 = *(v0 + v8[26]);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3580 == v9)
  {
  }

  else
  {
    v10 = sub_1D1E6904C();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11;
    }
  }

  sub_1D1741C08(v0 + v8[29], v7, &qword_1EC642590, qword_1D1E71260);
  v12 = sub_1D1E66A7C();
  v13 = *(*(v12 - 8) + 48);
  v11 = 1;
  v14 = v13(v7, 1, v12);
  sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
  if (v14 == 1)
  {
    v15 = v1 + v8[37];
    v16 = v18;
    sub_1D1741C08(v15, v18, &qword_1EC642590, qword_1D1E71260);
    v11 = v13(v16, 1, v12) != 1;
    sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
  }

  return v11;
}

uint64_t StaticService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticService.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticService(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticService.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticService(0) + 44);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticService.mediaSourceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticService(0) + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t StaticService.accessoryLastSeenBatteryStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t StaticService.roomIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticService(0) + 76));
}

uint64_t StaticService.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticService(0) + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticService.customIconSymbol.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticService(0) + 100));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticService.serviceSubKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  *a1 = *(v1 + *(result + 108));
  return result;
}

uint64_t StaticService.associatedServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  *a1 = *(v1 + *(result + 112));
  return result;
}

uint64_t StaticService.linkedStaticServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticService(0) + 124));
}

uint64_t StaticService.staticCharacteristicsBag.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
}

uint64_t StaticService.staticProfileBag.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticService(0) + 132));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t StaticService.homeNonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  *a1 = *(v1 + *(result + 140));
  return result;
}

uint64_t StaticService.bridgedValveServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticService(0) + 144));
}

unint64_t sub_1D1C162F8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x72616D6972507369;
      break;
    case 3:
      result = 0x656C62756F447369;
      break;
    case 4:
      result = 0x6168636165527369;
      break;
    case 5:
      result = 0x7262696C61437369;
      break;
    case 6:
      result = 0x746142776F4C7369;
      break;
    case 7:
      result = 0x726F737365636361;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x654D656369766564;
      break;
    case 10:
      result = 0x6564644165746164;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0x7364496D6F6F72;
      break;
    case 16:
      result = 0x656D614E6D6F6F72;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 19:
      result = 0x69726F7661467369;
      break;
    case 20:
      result = 0xD000000000000017;
      break;
    case 21:
    case 26:
    case 29:
    case 34:
      result = 0xD000000000000010;
      break;
    case 22:
      result = 0x4B65636976726573;
      break;
    case 23:
      result = 0x5365636976726573;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      result = 0x6553746E65726170;
      break;
    case 27:
    case 32:
      result = 0xD000000000000014;
      break;
    case 28:
    case 36:
      result = 0xD000000000000018;
      break;
    case 30:
      result = 0x6572617774666F73;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 35:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1C166FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1C2C128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1C16730(uint64_t a1)
{
  v2 = sub_1D1C2AF8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C1676C(uint64_t a1)
{
  v2 = sub_1D1C2AF8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticService.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B8, &unk_1D1EA1198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C2AF8C();
  sub_1D1E6930C();
  LOBYTE(v54) = 0;
  sub_1D1E66A7C();
  sub_1D1C2AFE0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticService(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v54) = 1;
    sub_1D1E68ECC();
    v15 = *(v3 + v11[6]);
    LOBYTE(v54) = 2;
    sub_1D1E68EDC();
    v16 = *(v3 + v11[7]);
    LOBYTE(v54) = 3;
    sub_1D1E68EDC();
    v17 = *(v3 + v11[8]);
    LOBYTE(v54) = 4;
    sub_1D1E68EDC();
    v18 = *(v3 + v11[9]);
    LOBYTE(v54) = 5;
    sub_1D1E68E1C();
    v19 = *(v3 + v11[10]);
    LOBYTE(v54) = 6;
    sub_1D1E68E1C();
    v20 = v11[11];
    LOBYTE(v54) = 7;
    sub_1D1E68F1C();
    v21 = (v3 + v11[12]);
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v54) = 8;
    sub_1D1E68E3C();
    v53 = v11[13];
    LOBYTE(v54) = 9;
    type metadata accessor for StaticDeviceMetadata();
    sub_1D1C2AFE0(&qword_1EC644648, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E68E5C();
    v53 = v11[14];
    LOBYTE(v54) = 10;
    v24 = sub_1D1E669FC();
    v52 = sub_1D1C2AFE0(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    v53 = v24;
    sub_1D1E68E5C();
    v25 = v11[15];
    LOBYTE(v54) = 11;
    sub_1D1E68E5C();
    LOBYTE(v54) = *(v3 + v11[16]);
    v56 = 12;
    sub_1D1BC8FFC();
    sub_1D1E68E5C();
    v26 = *(v3 + v11[17]);
    LOBYTE(v54) = 13;
    sub_1D1E68EDC();
    v27 = *(v3 + v11[18]);
    LOBYTE(v54) = 14;
    sub_1D1E68EDC();
    v54 = *(v3 + v11[19]);
    v56 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C2B1F4(&qword_1EC646B10, &qword_1EE07B258);
    sub_1D1E68F1C();
    v28 = (v3 + v11[20]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v54) = 16;
    sub_1D1E68E0C();
    v31 = *(v3 + v11[21]);
    LOBYTE(v54) = 17;
    sub_1D1E68EDC();
    v32 = *(v3 + v11[22]);
    LOBYTE(v54) = 18;
    sub_1D1E68EDC();
    v33 = *(v3 + v11[23]);
    LOBYTE(v54) = 19;
    sub_1D1E68EDC();
    v34 = *(v3 + v11[24]);
    LOBYTE(v54) = 20;
    sub_1D1E68EDC();
    v35 = (v3 + v11[25]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v54) = 21;
    sub_1D1E68E0C();
    LOBYTE(v54) = *(v3 + v11[26]);
    v56 = 22;
    v53 = sub_1D18F1780();
    sub_1D1E68F1C();
    LOBYTE(v54) = *(v3 + v11[27]);
    v56 = 23;
    sub_1D18F17D4();
    sub_1D1E68E5C();
    LOBYTE(v54) = *(v3 + v11[28]);
    v56 = 24;
    sub_1D1E68E5C();
    v38 = v11[29];
    LOBYTE(v54) = 25;
    sub_1D1E68E5C();
    v39 = v11[30];
    LOBYTE(v54) = 26;
    sub_1D1E68E5C();
    v54 = *(v3 + v11[31]);
    v56 = 27;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9C8, &qword_1D1EA11A8);
    v52 = sub_1D1C2B028(&qword_1EC64C9D0, &qword_1EC6446F8);
    v53 = v40;
    sub_1D1E68F1C();
    v54 = *(v3 + v11[32]);
    v56 = 28;
    sub_1D1C2B0C4();

    sub_1D1E68F1C();

    v41 = (v3 + v11[33]);
    v42 = *v41;
    v51 = v41[1];
    v54 = v42;
    v55 = v51;
    v56 = 29;
    sub_1D1C2B118();

    sub_1D1E68F1C();

    v51 = v11[34];
    LOBYTE(v54) = 30;
    type metadata accessor for StaticSoftwareUpdate(0);
    sub_1D1C2AFE0(&qword_1EC64C330, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1E68E5C();
    LOBYTE(v54) = *(v3 + v11[35]);
    v56 = 31;
    sub_1D1BC90EC();
    sub_1D1E68F1C();
    v54 = *(v3 + v11[36]);
    v56 = 32;
    sub_1D1E68F1C();
    v43 = v11[37];
    LOBYTE(v54) = 33;
    sub_1D1E68E5C();
    v44 = (v3 + v11[38]);
    v45 = *v44;
    v46 = *(v44 + 2);
    LOBYTE(v54) = 34;
    sub_1D1E68E9C();
    v47 = v11[39];
    LOBYTE(v54) = 35;
    type metadata accessor for EndpointPath(0);
    sub_1D1C2AFE0(&qword_1EC646B18, type metadata accessor for EndpointPath);
    sub_1D1E68E5C();
    v48 = v11[40];
    LOBYTE(v54) = 36;
    type metadata accessor for StaticService.AutoClimateControlConfig(0);
    sub_1D1C2AFE0(&qword_1EC64C9E8, type metadata accessor for StaticService.AutoClimateControlConfig);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticService.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EndpointPath(0);
  v130 = *(v4 - 8);
  v131 = v4;
  v5 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v129 = &v117 - v9;
  v10 = type metadata accessor for StaticSoftwareUpdate(0);
  v126 = *(v10 - 8);
  v127 = v10;
  v11 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v125 = &v117 - v15;
  v16 = type metadata accessor for StaticService(0);
  v132 = *(v16 - 1);
  v17 = *(v132 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v117 - v21;
  v23 = sub_1D1E66A7C();
  v135 = *(v23 - 8);
  v24 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v134 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v128 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v124 = &v117 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v123 = &v117 - v32;
  v33 = sub_1D1E669FC();
  v136 = *(v33 - 8);
  v34 = *(v136 + 8);
  MEMORY[0x1EEE9AC00](v33);
  v133 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v122 = &v117 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v121 = &v117 - v40;
  v120 = type metadata accessor for StaticDeviceMetadata();
  v41 = *(v120 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v117 - v46;
  v137 = sub_1D1C2AFE0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v138 = v23;
  sub_1D1E676EC();
  v48 = (v1 + v16[5]);
  v49 = *v48;
  v50 = v48[1];
  sub_1D1E678EC();
  v51 = *(v1 + v16[6]);
  sub_1D1E6922C();
  v52 = *(v1 + v16[7]);
  sub_1D1E6922C();
  v53 = *(v1 + v16[8]);
  sub_1D1E6922C();
  if (*(v1 + v16[9]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + v16[10]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v54 = v1 + v16[11];
  sub_1D1E676EC();
  v55 = (v2 + v16[12]);
  if (*(v55 + 8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v56 = *v55;
    sub_1D1E6922C();
    MEMORY[0x1D3892850](v56);
  }

  v57 = v121;
  sub_1D1741C08(v2 + v16[13], v47, &qword_1EC644620, &unk_1D1E75A00);
  if ((*(v41 + 48))(v47, 1, v120) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v58 = v47;
    v59 = v117;
    sub_1D1C2B18C(v58, v117, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E6922C();
    StaticDeviceMetadata.hash(into:)();
    sub_1D1C2AF2C(v59, type metadata accessor for StaticDeviceMetadata);
  }

  sub_1D1741C08(v2 + v16[14], v57, &qword_1EC642570, &qword_1D1E6C6A0);
  v60 = v136;
  v61 = *(v136 + 6);
  if (v61(v57, 1, v33) == 1)
  {
    sub_1D1E6922C();
    v62 = v136;
  }

  else
  {
    v63 = v57;
    v64 = v133;
    (*(v60 + 4))(v133, v63, v33);
    sub_1D1E6922C();
    sub_1D1C2AFE0(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    v62 = v136;
    (*(v136 + 1))(v64, v33);
  }

  v65 = v122;
  sub_1D1741C08(v2 + v16[15], v122, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v61(v65, 1, v33) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v66 = v133;
    (*(v62 + 4))(v133, v65, v33);
    sub_1D1E6922C();
    sub_1D1C2AFE0(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v62 + 1))(v66, v33);
  }

  v67 = v135;
  if (*(v2 + v16[16]) == 2)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  v68 = *(v2 + v16[17]);
  sub_1D1E6922C();
  v69 = *(v2 + v16[18]);
  sub_1D1E6922C();
  sub_1D176D4E8(a1, *(v2 + v16[19]));
  v70 = (v2 + v16[20]);
  if (v70[1])
  {
    v71 = *v70;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v72 = *(v2 + v16[21]);
  sub_1D1E6922C();
  v73 = *(v2 + v16[22]);
  sub_1D1E6922C();
  v74 = *(v2 + v16[23]);
  sub_1D1E6922C();
  v75 = *(v2 + v16[24]);
  sub_1D1E6922C();
  v76 = (v2 + v16[25]);
  if (v76[1])
  {
    v77 = *v76;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v140 = *(v2 + v16[26]);
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();

  v78 = *(v2 + v16[27]);
  sub_1D1E6922C();
  if (v78 != 5)
  {
    sub_1D1E678EC();
  }

  v79 = *(v2 + v16[28]);
  sub_1D1E6922C();
  if (v79 != 53)
  {
    v139 = v79;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();
  }

  v80 = v123;
  sub_1D1741C08(v2 + v16[29], v123, &qword_1EC642590, qword_1D1E71260);
  v81 = *(v67 + 48);
  v82 = v81(v80, 1, v138);
  v136 = v81;
  v133 = (v67 + 48);
  if (v82 == 1)
  {
    v83 = v67;
    sub_1D1E6922C();
  }

  else
  {
    v84 = v134;
    v85 = v138;
    (*(v67 + 32))(v134, v80, v138);
    sub_1D1E6922C();
    sub_1D1E676EC();
    v83 = v67;
    v86 = v84;
    v81 = v136;
    (*(v67 + 8))(v86, v85);
  }

  v87 = v124;
  sub_1D1741C08(v2 + v16[30], v124, &qword_1EC642590, qword_1D1E71260);
  if (v81(v87, 1, v138) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v88 = v134;
    v89 = v138;
    (*(v83 + 32))(v134, v87, v138);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v83 + 8))(v88, v89);
  }

  v90 = *(v2 + v16[31]);
  MEMORY[0x1D3892850](*(v90 + 16));
  v91 = *(v90 + 16);
  if (v91)
  {
    v92 = v90 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
    v93 = *(v132 + 72);
    do
    {
      sub_1D1C2AEC4(v92, v22, type metadata accessor for StaticService);
      StaticService.hash(into:)(a1);
      sub_1D1C2AF2C(v22, type metadata accessor for StaticService);
      v92 += v93;
      --v91;
    }

    while (v91);
  }

  sub_1D18563E0(a1, *(v2 + v16[32]));
  v94 = (v2 + v16[33]);
  v95 = v94[1];
  sub_1D18582DC(a1, *v94);
  sub_1D1857C7C(a1, v95);
  v96 = v125;
  sub_1D1741C08(v2 + v16[34], v125, &qword_1EC644760, &unk_1D1E9E530);
  v97 = v127;
  if ((*(v126 + 48))(v96, 1, v127) == 1)
  {
    sub_1D1E6922C();
    v98 = v138;
  }

  else
  {
    v99 = v118;
    sub_1D1C2B18C(v96, v118, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1E6922C();
    v98 = v138;
    sub_1D1E676EC();
    v100 = v99 + *(v97 + 20);
    StaticSoftwareUpdate.Kind.hash(into:)();
    sub_1D1C2AF2C(v99, type metadata accessor for StaticSoftwareUpdate);
  }

  MEMORY[0x1D3892850](*(v2 + v16[35]));
  v101 = *(v2 + v16[36]);
  MEMORY[0x1D3892850](*(v101 + 16));
  v102 = *(v101 + 16);
  if (v102)
  {
    v103 = v101 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
    v104 = *(v132 + 72);
    do
    {
      sub_1D1C2AEC4(v103, v20, type metadata accessor for StaticService);
      StaticService.hash(into:)(a1);
      sub_1D1C2AF2C(v20, type metadata accessor for StaticService);
      v103 += v104;
      --v102;
    }

    while (v102);
  }

  v105 = v128;
  sub_1D1741C08(v2 + v16[37], v128, &qword_1EC642590, qword_1D1E71260);
  if (v136(v105, 1, v98) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v107 = v134;
    v106 = v135;
    (*(v135 + 32))(v134, v105, v98);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v106 + 8))(v107, v98);
  }

  v109 = v129;
  v108 = v130;
  v110 = (v2 + v16[38]);
  if (*(v110 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v111 = *v110;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v112 = v131;
  sub_1D1741C08(v2 + v16[39], v109, &qword_1EC644870, &unk_1D1EABA00);
  if ((*(v108 + 48))(v109, 1, v112) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v113 = v119;
    sub_1D1C2B18C(v109, v119, type metadata accessor for EndpointPath);
    sub_1D1E6922C();
    sub_1D1E676EC();
    MEMORY[0x1D3892890](*(v113 + *(v112 + 20)));
    v114 = *(v113 + *(v112 + 24));
    sub_1D1E6923C();
    sub_1D1C2AF2C(v113, type metadata accessor for EndpointPath);
  }

  v115 = v2 + v16[40];
  return sub_1D1C27FB4(a1);
}