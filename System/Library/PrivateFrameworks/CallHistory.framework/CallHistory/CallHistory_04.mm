uint64_t sub_1C3F32990(void (*a1)(void *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1C3EF0270(0, v5, 0);
  v6 = v22;
  for (i = (a3 + 56); ; i += 4)
  {
    v9 = *(i - 1);
    v10 = *i;
    v18 = *(i - 3);
    v19 = v9;
    v20 = v10;

    a1(v21, &v18);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v12 = v21[0];
    v11 = v21[1];
    v22 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1C3EF0270((v13 > 1), v14 + 1, 1);
      v6 = v22;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F32AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1C3EF05C8(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v6 = v26;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v28 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 48) + 8 * result);
    v14 = *(*(v7 + 56) + result);
    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = result;
      sub_1C3EF05C8((v15 > 1), v16 + 1, 1);
      v7 = a1;
      v9 = v28;
      v6 = v26;
      result = v25;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v10 = 1 << *(v7 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1C3E97CDC(result, v28, 0);
          v7 = a1;
          v9 = v28;
          v6 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v28, 0);
      v7 = a1;
      v9 = v28;
      v6 = v26;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

CallHistory::CallStatus_optional sub_1C3F32D18@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v72 - v9;
  v10 = type metadata accessor for RecentCall();
  v11 = v10[5];
  v12 = sub_1C40309F0();
  v13 = *(*(v12 - 8) + 56);
  v13(a2 + v11, 1, 1, v12);
  v78 = v10[6];
  v13(a2 + v78, 1, 1, v12);
  v79 = v10[7];
  v13(v79 + a2, 1, 1, v12);
  v80 = v10[8];
  v13(a2 + v80, 1, 1, v12);
  v14 = v10[12];
  v81 = v10[11];
  v85 = v14;
  v15 = v10[19];
  v16 = sub_1C4030910();
  v17 = *(*(v16 - 8) + 56);
  v74 = v15;
  v17(a2 + v15, 1, 1, v16);
  v13(a2 + v10[36], 1, 1, v12);
  v18 = a2 + v10[38];
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  v73 = v18;
  *(a2 + v10[40]) = MEMORY[0x1E69E7CC0];
  v19 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3917ManagedRecentCall___observationRegistrar;
  *&v87 = a1;
  swift_getKeyPath();
  v20 = sub_1C3F3F528(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  v84 = v19;
  sub_1C4030AA0();

  swift_getKeyPath();
  v21 = sub_1C3F3F528(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C3F3F528(&qword_1EC08F0B0, MEMORY[0x1E69695A8]);
  sub_1C4030F90();

  *&v87 = a1;
  swift_getKeyPath();
  v83 = v20;
  sub_1C4030AA0();

  swift_getKeyPath();
  *&v86 = sub_1C3F40EA8();
  v22 = v77;
  v82 = v21;
  sub_1C4030F90();

  sub_1C3F3F2F0(v22, a2 + v11, &qword_1EC08F218, &qword_1C4041840);
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  sub_1C3F3F2F0(v22, a2 + v78, &qword_1EC08F218, &qword_1C4041840);
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  sub_1C3F3F2F0(v22, v79 + a2, &qword_1EC08F218, &qword_1C4041840);
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  sub_1C3F3F2F0(v22, a2 + v80, &qword_1EC08F218, &qword_1C4041840);
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(a2 + v10[9]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F09AFC();
  sub_1C4030F90();

  *(a2 + v10[10]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  v23 = sub_1C3F3189C();
  sub_1C4030F90();

  *(a2 + v81) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  v81 = v23;
  sub_1C4030F90();

  v75 = a2;
  *(a2 + v85) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  result.value = CallStatus.init(rawValue:)(v87).value;
  if (v87 == 6)
  {
    goto LABEL_36;
  }

  v25 = v10[22];
  v85 = v10[20];
  *&v86 = v25;
  v26 = v75;
  *(v75 + v10[13]) = v87;
  v27 = v10[14];
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F3F528(&qword_1EC08FB48, MEMORY[0x1E6969530]);
  sub_1C4030F90();

  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v26 + v10[15]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v26 + v10[16]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v26 + v10[17]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v26 + v10[18]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F40F5C();
  v28 = v76;
  sub_1C4030F90();

  sub_1C3F3F2F0(v28, v26 + v74, &qword_1EC08F130, &qword_1C4038450);
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v26 + v85) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F3F840();
  sub_1C4030F90();

  *(v26 + v10[21]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v26 + v86) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  if (v87 > 2u)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = v10[32];
  v80 = v10[31];
  v30 = v10[33];
  v85 = v29;
  *&v86 = v30;
  v31 = v75;
  *(v75 + v10[23]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v31 + v10[24]) = v87;
  sub_1C4014F48(&v87);
  *(v31 + v10[25]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F0A664();
  sub_1C4030F90();

  *(v31 + v10[26]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F0A8AC();
  sub_1C4030F90();

  *(v31 + v10[27]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3EF79AC();
  sub_1C4030F90();

  *(v31 + v10[28]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v31 + v10[29]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v31 + v10[30]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v31 + v80) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v31 + v85) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  *(v31 + v86) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F098B4();
  sub_1C4030F90();

  *(v31 + v10[34]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F3F894();
  sub_1C4030F90();

  *(v31 + v10[35]) = v87;
  *&v87 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV39.ManagedHandle(0);
  sub_1C3F41010();
  sub_1C4030F80();

  v32 = v87;
  if (v87 >> 62)
  {
    v44 = v87;
    v33 = sub_1C40317E0();
    v32 = v44;
    v79 = v10;
    v80 = a1;
    if (v33)
    {
      goto LABEL_5;
    }

LABEL_15:

    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v33 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v79 = v10;
  v80 = a1;
  if (!v33)
  {
    goto LABEL_15;
  }

LABEL_5:
  v34 = v32;
  v91 = MEMORY[0x1E69E7CC0];
  result.value = sub_1C3EF03F8(0, v33 & ~(v33 >> 63), 0);
  if (v33 < 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v35 = 0;
  v36 = v91;
  v37 = v34;
  v76 = (v34 & 0xC000000000000001);
  v77 = v33;
  v78 = v34;
  do
  {
    *&v86 = v36;
    if (v76)
    {
      v38 = MEMORY[0x1C6933590](v35, v37);
    }

    else
    {
      v38 = *(v37 + 8 * v35 + 32);
    }

    *&v87 = v38;
    swift_getKeyPath();
    sub_1C3F3F528(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
    sub_1C4030AA0();

    swift_getKeyPath();
    sub_1C3F3F528(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
    sub_1C3F0A1D4();
    sub_1C4030F90();

    LODWORD(v85) = v87;
    *&v87 = v38;
    swift_getKeyPath();
    sub_1C4030AA0();

    swift_getKeyPath();
    sub_1C4030F90();

    v39 = v87;
    *&v87 = v38;
    swift_getKeyPath();
    sub_1C4030AA0();

    swift_getKeyPath();
    sub_1C4030F90();

    v40 = v87;
    v36 = v86;
    v91 = v86;
    v42 = *(v86 + 16);
    v41 = *(v86 + 24);
    if (v42 >= v41 >> 1)
    {
      v86 = v87;
      sub_1C3EF03F8((v41 > 1), v42 + 1, 1);
      v40 = v86;
      v36 = v91;
    }

    *(v36 + 16) = v42 + 1;
    v43 = v36 + 40 * v42;
    *(v43 + 32) = v85;
    ++v35;
    *(v43 + 40) = v39;
    *(v43 + 56) = v40;
    v37 = v78;
  }

  while (v77 != v35);

LABEL_16:
  v45 = v75;
  v46 = sub_1C3F3F358(v36);

  v48 = v79;
  v47 = v80;
  *(v45 + v79[37]) = v46;
  *&v87 = v47;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F3F528(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  v49 = sub_1C4030F70();

  if (!v49)
  {
    *&v86 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
LABEL_20:
    v54 = v73;
    v55 = v73[3];
    v56 = v73[4];
    sub_1C3F3F400(*v73, v73[1], v73[2]);
    *v54 = v86;
    v54[1] = v49;
    v54[2] = v51;
    v54[3] = v52;
    v54[4] = v53;
    *&v87 = v47;
    swift_getKeyPath();
    sub_1C4030AA0();

    swift_getKeyPath();
    type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem(0);
    sub_1C3F410C4();
    sub_1C4030F80();

    v57 = v87;
    if (v87 >> 62)
    {
      v69 = v87;
      v58 = sub_1C40317E0();
      v57 = v69;
      if (v58)
      {
LABEL_22:
        v59 = v57;
        v91 = MEMORY[0x1E69E7CC0];
        result.value = sub_1C3EF03D8(0, v58 & ~(v58 >> 63), 0);
        if ((v58 & 0x8000000000000000) == 0)
        {
          v60 = 0;
          v61 = v91;
          v62 = v59;
          v78 = v59 & 0xC000000000000001;
          v85 = v59;
          v81 = v58;
          do
          {
            if (v78)
            {
              v63 = MEMORY[0x1C6933590](v60, v62);
            }

            else
            {
              v63 = *(v62 + 8 * v60 + 32);
            }

            *&v87 = v63;
            swift_getKeyPath();
            sub_1C3F3F528(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
            sub_1C4030AA0();

            swift_getKeyPath();
            sub_1C3F3F528(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
            sub_1C4030F90();

            v64 = *(&v87 + 1);
            *&v86 = v87;
            *&v87 = v63;
            swift_getKeyPath();
            sub_1C4030AA0();

            swift_getKeyPath();
            sub_1C3F09F8C();
            sub_1C4030F90();

            v65 = v87;
            v91 = v61;
            v67 = *(v61 + 16);
            v66 = *(v61 + 24);
            if (v67 >= v66 >> 1)
            {
              sub_1C3EF03D8((v66 > 1), v67 + 1, 1);
              v61 = v91;
            }

            ++v60;
            *(v61 + 16) = v67 + 1;
            v68 = v61 + 24 * v67;
            v62 = v85;
            *(v68 + 32) = v86;
            *(v68 + 40) = v64;
            *(v68 + 48) = v65;
            v47 = v80;
            v48 = v79;
          }

          while (v81 != v60);

          goto LABEL_33;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v58 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v58)
      {
        goto LABEL_22;
      }
    }

    v61 = MEMORY[0x1E69E7CC0];
LABEL_33:
    v70 = sub_1C3F3F444(v61);

    v71 = v75;
    *(v75 + v48[39]) = v70;
    *&v87 = v47;
    swift_getKeyPath();
    sub_1C4030AA0();

    swift_getKeyPath();
    sub_1C3F3FA68();
    sub_1C4030F90();

    *(v71 + v48[41]) = v87;
    return result;
  }

  *&v87 = v47;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  v50 = sub_1C4030F70();

  if (v50)
  {
    sub_1C3F2FF5C(*&v50, &v87);
    *&v86 = v87;
    v49 = *(&v87 + 1);
    v51 = v88;
    v52 = v89;
    v53 = v90;
    goto LABEL_20;
  }

LABEL_38:
  __break(1u);
  return result;
}

id RecentCall.chRecentCall.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v77 = &v77 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v77 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v77 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v77 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v77 - v18;
  v20 = [objc_allocWithZone(CHRecentCall) init];
  sub_1C40309A0();
  v21 = sub_1C4031190();

  [v20 setUniqueId_];

  v22 = type metadata accessor for RecentCall();
  sub_1C3EF1A60(v0 + v22[5], v19, &qword_1EC08F218, &qword_1C4041840);
  v23 = sub_1C40309F0();
  v24 = *(v23 - 8);
  v79 = *(v24 + 48);
  v80 = v24;
  v25 = 0;
  if (v79(v19, 1, v23) != 1)
  {
    v25 = sub_1C40309B0();
    (*(v80 + 8))(v19, v23);
  }

  [v20 setConversationID_];

  sub_1C3EF1A60(v1 + v22[6], v17, &qword_1EC08F218, &qword_1C4041840);
  v26 = v79;
  if (v79(v17, 1, v23) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_1C40309B0();
    (*(v80 + 8))(v17, v23);
  }

  [v20 setLocalParticipantUUID_];

  sub_1C3EF1A60(v1 + v22[7], v14, &qword_1EC08F218, &qword_1C4041840);
  if (v26(v14, 1, v23) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_1C40309B0();
    (*(v80 + 8))(v14, v23);
  }

  v29 = v77;
  [v20 setOutgoingLocalParticipantUUID_];

  sub_1C3EF1A60(v1 + v22[8], v11, &qword_1EC08F218, &qword_1C4041840);
  if (v26(v11, 1, v23) == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_1C40309B0();
    (*(v80 + 8))(v11, v23);
  }

  [v20 setParticipantGroupUUID_];

  v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  [v20 setBytesOfDataUsed_];

  v81 = *(v1 + v22[10]);
  [v20 setCallerIdAvailability_];
  v32 = (v1 + v22[12]);
  if (v32[1])
  {
    v33 = *v32;
    v34 = sub_1C4031190();
  }

  else
  {
    v34 = 0;
  }

  [v20 setName_];

  v81 = *(v1 + v22[13]);
  [v20 setCallStatus_];
  v35 = v1 + v22[14];
  v36 = sub_1C4030930();
  [v20 setDate_];

  v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  [v20 setDisconnectedCause_];

  [v20 setDuration_];
  v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  [v20 setFilteredOutReason_];

  [v20 setHasMessage_];
  sub_1C3EF1A60(v1 + v22[19], v29, &qword_1EC08F130, &qword_1C4038450);
  v39 = sub_1C4030910();
  v40 = *(v39 - 8);
  v41 = 0;
  if ((*(v40 + 48))(v29, 1, v39) != 1)
  {
    v41 = sub_1C40308D0();
    (*(v40 + 8))(v29, v39);
  }

  [v20 setImageURL_];

  v42 = (v1 + v22[20]);
  if (v42[1])
  {
    v43 = *v42;
    v44 = sub_1C4031190();
  }

  else
  {
    v44 = 0;
  }

  [v20 setIsoCountryCode_];

  v81 = *(v1 + v22[21]);
  [v20 setJunkConfidence_];
  v45 = (v1 + v22[22]);
  if (v45[1])
  {
    v46 = *v45;
    v47 = sub_1C4031190();
  }

  else
  {
    v47 = 0;
  }

  [v20 setJunkIdentificationCategory_];

  v81 = *(v1 + v22[23]);
  [v20 setMediaType_];
  [v20 setRead_];
  v48 = (v1 + v22[25]);
  v49 = v48[1];
  if (v49 != 1)
  {
    v50 = *v48;
    v51 = v48[1];
  }

  sub_1C3F16304(*v48, v49);
  v52 = sub_1C4031190();

  [v20 setServiceProvider_];

  v81 = *(v1 + v22[26]);
  [v20 setTtyType_];
  v81 = *(v1 + v22[27]);
  [v20 setVerificationStatus_];
  v81 = *(v1 + v22[28]);
  [v20 setAutoAnsweredReason_];
  [v20 setUsedEmergencyVideoStreaming_];
  [v20 setWasEmergencyCall_];
  v53 = (v1 + v22[31]);
  if (v53[1])
  {
    v54 = *v53;
    v55 = sub_1C4031190();
  }

  else
  {
    v55 = 0;
  }

  v56 = v78;
  [v20 setBlockedByExtension_];

  v57 = (v1 + v22[32]);
  if (v57[1])
  {
    v58 = *v57;
    v59 = sub_1C4031190();
  }

  else
  {
    v59 = 0;
  }

  [v20 setBlockedByExtensionName_];

  v60 = (v1 + v22[33]);
  if (v60[1])
  {
    v61 = *v60;
    v62 = sub_1C4031190();
  }

  else
  {
    v62 = 0;
  }

  [v20 setIdentityExtension_];

  v81 = *(v1 + v22[34]);
  result = [v20 setCallDirectoryIdentityType_];
  if ((*(v1 + v22[35]) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [v20 setScreenSharingType_];
    sub_1C3EF1A60(v1 + v22[36], v56, &qword_1EC08F218, &qword_1C4041840);
    if (v79(v56, 1, v23) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = sub_1C40309B0();
      (*(v80 + 8))(v56, v23);
    }

    [v20 setReminderUUID_];

    v65 = sub_1C3F31B14(*(v1 + v22[37]));
    sub_1C3F3F148(v65, &qword_1EC0902E0, off_1E81DB4E8, &qword_1EC0902E8, sub_1C4026368);

    sub_1C3F03800(0, &qword_1EC0902E0, off_1E81DB4E8);
    sub_1C3F3F2A0(&qword_1EC0902E8, &qword_1EC0902E0, off_1E81DB4E8);
    v66 = sub_1C40314F0();

    [v20 setRemoteParticipantHandles_];

    v67 = (v1 + v22[38]);
    if (v67[2])
    {
      v68 = v67[3];
      v69 = v67[4];
      v70 = *(v1 + v22[38] + 8);
      v81 = *v67;
      v71 = sub_1C3F121C0(&v81);
      v72 = sub_1C4031190();
      if (v69)
      {
        v73 = sub_1C4031190();
      }

      else
      {
        v73 = 0;
      }

      v74 = [objc_allocWithZone(CHHandle) initWithType:v71 value:v72 normalizedValue:v73];
    }

    else
    {
      v74 = 0;
    }

    [v20 setInitiator_];

    v75 = sub_1C3F31EA8(*(v1 + v22[39]));
    sub_1C3F3F148(v75, &qword_1EC0902F0, off_1E81DB4D8, &qword_1EC0902F8, sub_1C4026344);

    sub_1C3F03800(0, &qword_1EC0902F0, off_1E81DB4D8);
    sub_1C3F3F2A0(&qword_1EC0902F8, &qword_1EC0902F0, off_1E81DB4D8);
    v76 = sub_1C40314F0();

    [v20 setEmergencyMediaItems_];

    v81 = *(v1 + v22[41]);
    [v20 setCommunicationTrustScore_];
    return v20;
  }

  return result;
}

NSObject RecentCall.init(_:uniqueID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v230 = a2;
  v215 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v229 = &v207 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v222 = &v207 - v9;
  v10 = sub_1C4030980();
  v223 = *(v10 - 8);
  v224 = v10;
  v11 = *(v223 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v207 = &v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v221 = &v207 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v212 = &v207 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v219 = &v207 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v218 = &v207 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v207 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v207 - v26;
  v28 = type metadata accessor for RecentCall();
  v29 = v28[5];
  v30 = sub_1C40309F0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v33 = 1;
  v213 = v29;
  v32(a3 + v29, 1, 1, v30);
  v214 = v28[6];
  v32(a3 + v214, 1, 1, v30);
  v216 = v28[7];
  v32(a3 + v216, 1, 1, v30);
  v217 = v28[8];
  v32(a3 + v217, 1, 1, v30);
  v34 = v28[19];
  v35 = sub_1C4030910();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v227 = v35;
  v228 = v34;
  v225 = v36 + 56;
  v226 = v37;
  (v37)(a3 + v34, 1, 1);
  v211 = v28[36];
  v38 = v31 + 56;
  v231 = v32;
  v32(a3 + v211, 1, 1, v30);
  v39 = v215;
  v40 = a3 + v28[38];
  *(v40 + 32) = 0;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  v209 = v40;
  *(a3 + v28[40]) = MEMORY[0x1E69E7CC0];
  v210 = v31;
  v41 = v30;
  (*(v31 + 16))(a3, v230, v30);
  v42 = [v39 conversationID];
  if (v42)
  {
    v43 = v42;
    sub_1C40309D0();

    v33 = 0;
  }

  v44 = 1;
  v45 = v30;
  v46 = v38;
  v47 = v231;
  v231(v27, v33, 1, v45);
  sub_1C3F3F2F0(v27, a3 + v213, &qword_1EC08F218, &qword_1C4041840);
  v48 = [v39 localParticipantUUID];
  if (v48)
  {
    v49 = v48;
    sub_1C40309D0();

    v44 = 0;
  }

  v50 = 1;
  v47(v25, v44, 1, v41);
  sub_1C3F3F2F0(v25, a3 + v214, &qword_1EC08F218, &qword_1C4041840);
  v51 = [v39 outgoingLocalParticipantUUID];
  v52 = v218;
  if (v51)
  {
    v53 = v51;
    sub_1C40309D0();

    v50 = 0;
  }

  v54 = v219;
  v55 = 1;
  v47(v52, v50, 1, v41);
  sub_1C3F3F2F0(v52, a3 + v216, &qword_1EC08F218, &qword_1C4041840);
  v56 = [v39 participantGroupUUID];
  if (v56)
  {
    v57 = v56;
    sub_1C40309D0();

    v55 = 0;
  }

  v47(v54, v55, 1, v41);
  sub_1C3F3F2F0(v54, a3 + v217, &qword_1EC08F218, &qword_1C4041840);
  v58 = [v39 bytesOfDataUsed];
  v59 = sub_1C40316D0();

  *(a3 + v28[9]) = v59;
  v60 = [v39 callerIdAvailability];
  if (qword_1EC08EB10 != -1)
  {
    v197 = v60;
    swift_once();
    v60 = v197;
  }

  v61 = qword_1EC0B0C60;
  v62 = *(qword_1EC0B0C60 + 16);
  if (v62)
  {
    v63 = sub_1C3F3C890(v60);
    if (v64)
    {
      LOBYTE(v62) = *(*(v61 + 56) + v63);
    }

    else
    {
      LOBYTE(v62) = 0;
    }
  }

  v65 = (a3 + v28[11]);
  *(a3 + v28[10]) = v62;
  v66 = [v39 callerIdLocation];
  v67 = sub_1C40311C0();
  v69 = v68;

  *v65 = v67;
  v65[1] = v69;
  v70 = [v39 name];
  if (v70)
  {
    v71 = v70;
    v72 = sub_1C40311C0();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0;
  }

  v76 = v223;
  v75 = v224;
  v77 = (a3 + v28[12]);
  *v77 = v72;
  v77[1] = v74;
  v78 = [v39 callStatus];
  if (qword_1EC08EB18 != -1)
  {
    v198 = v78;
    swift_once();
    v78 = v198;
  }

  v79 = qword_1EC0B0C68;
  v80 = *(qword_1EC0B0C68 + 16);
  v220 = v46;
  if (v80)
  {
    v81 = sub_1C3F3C890(v78);
    if (v82)
    {
      LOBYTE(v80) = *(*(v79 + 56) + v81);
    }

    else
    {
      LOBYTE(v80) = 0;
    }
  }

  v83 = v41;
  *(a3 + v28[13]) = v80;
  v84 = [v39 date];
  if (v84)
  {
    v85 = v207;
    v86 = v84;
    sub_1C4030960();

    v87 = *(v76 + 32);
    v88 = v222;
    v87(v222, v85, v75);
    (*(v76 + 56))(v88, 0, 1, v75);
    v89 = v221;
    v87(v221, v88, v75);
  }

  else
  {
    v90 = v222;
    (*(v76 + 56))(v222, 1, 1, v75);
    v89 = v221;
    sub_1C4030920();
    if ((*(v76 + 48))(v90, 1, v75) != 1)
    {
      sub_1C3EED388(v90, &qword_1EC08EF40, &unk_1C403ED30);
    }
  }

  (*(v76 + 32))(a3 + v28[14], v89, v75);
  v91 = [v39 disconnectedCause];
  if (!v91)
  {
    sub_1C3F03800(0, &qword_1EC090300, 0x1E696AD98);
    v91 = sub_1C4031660();
  }

  v92 = v91;
  v93 = sub_1C4031C40();

  *(a3 + v28[15]) = v93;
  [v39 duration];
  *(a3 + v28[16]) = v94;
  v95 = [v39 filteredOutReason];
  if (!v95)
  {
    sub_1C3F03800(0, &qword_1EC090300, 0x1E696AD98);
    v95 = sub_1C4031660();
  }

  v96 = v95;
  v97 = sub_1C4031C40();

  *(a3 + v28[17]) = v97;
  *(a3 + v28[18]) = [v39 hasMessage];
  v98 = [v39 imageURL];
  if (v98)
  {
    v99 = v229;
    v100 = v98;
    sub_1C40308E0();

    v101 = 0;
  }

  else
  {
    v101 = 1;
    v99 = v229;
  }

  v226(v99, v101, 1, v227);
  sub_1C3F3F2F0(v99, a3 + v228, &qword_1EC08F130, &qword_1C4038450);
  v102 = [v39 isoCountryCode];
  if (v102)
  {
    v103 = v102;
    v104 = sub_1C40311C0();
    v106 = v105;
  }

  else
  {
    v104 = 0;
    v106 = 0;
  }

  v107 = (a3 + v28[20]);
  *v107 = v104;
  v107[1] = v106;
  v108 = [v39 junkConfidence];
  if (qword_1EC08EB38 != -1)
  {
    v199 = v108;
    swift_once();
    v108 = v199;
  }

  v109 = qword_1EC0B0C88;
  v110 = *(qword_1EC0B0C88 + 16);
  if (v110)
  {
    v111 = sub_1C3F3C940(v108);
    if (v112)
    {
      LOBYTE(v110) = *(*(v109 + 56) + v111);
    }

    else
    {
      LOBYTE(v110) = 0;
    }
  }

  *(a3 + v28[21]) = v110;
  v113 = [v39 junkIdentificationCategory];
  if (v113)
  {
    v114 = v113;
    v115 = sub_1C40311C0();
    v117 = v116;
  }

  else
  {
    v115 = 0;
    v117 = 0;
  }

  v118 = (a3 + v28[22]);
  *v118 = v115;
  v118[1] = v117;
  v119 = [v39 mediaType];
  if (qword_1EC08EB40 != -1)
  {
    v200 = v119;
    swift_once();
    v119 = v200;
  }

  v120 = qword_1EC0B0C90;
  v121 = *(qword_1EC0B0C90 + 16);
  if (v121)
  {
    v122 = sub_1C3F3C940(v119);
    if (v123)
    {
      LOBYTE(v121) = *(*(v120 + 56) + v122);
    }

    else
    {
      LOBYTE(v121) = 0;
    }
  }

  *(a3 + v28[23]) = v121;
  *(a3 + v28[24]) = [v39 read];
  v124 = [v39 serviceProvider];
  if (v124)
  {

    v125.super.isa = [v39 serviceProvider];
    if (!v125.super.isa)
    {
      __break(1u);
      goto LABEL_121;
    }

    isa = v125.super.isa;
    v127 = sub_1C40311C0();
    v129 = v128;

    if (v127 == 0xD000000000000013 && 0x80000001C4056D00 == v129 || (sub_1C4031BF0() & 1) != 0)
    {
      v130 = 0;
LABEL_59:

      v127 = 0;
      goto LABEL_61;
    }

    if (v127 == 0xD000000000000012 && 0x80000001C4056D20 == v129 || (v130 = v129, (sub_1C4031BF0() & 1) != 0))
    {
      v130 = 1;
      goto LABEL_59;
    }
  }

  else
  {
    v127 = 0;
    v130 = 0;
  }

LABEL_61:
  v131 = (a3 + v28[25]);
  *v131 = v127;
  v131[1] = v130;
  v132 = [v39 ttyType];
  if (qword_1EC08EB48 != -1)
  {
    v201 = v132;
    swift_once();
    v132 = v201;
  }

  v133 = qword_1EC0B0C98;
  v134 = *(qword_1EC0B0C98 + 16);
  if (v134)
  {
    v135 = sub_1C3F3C940(v132);
    if (v136)
    {
      LOBYTE(v134) = *(*(v133 + 56) + v135);
    }

    else
    {
      LOBYTE(v134) = 0;
    }
  }

  *(a3 + v28[26]) = v134;
  v137 = [v39 verificationStatus];
  if (qword_1EC08EB50 != -1)
  {
    v202 = v137;
    swift_once();
    v137 = v202;
  }

  v138 = qword_1EC0B0CA0;
  if (*(qword_1EC0B0CA0 + 16) && (v139 = sub_1C3F3C940(v137), (v140 & 1) != 0))
  {
    v141 = *(*(v138 + 56) + v139);
  }

  else
  {
    v141 = 3;
  }

  *(a3 + v28[27]) = v141;
  v142 = [v39 autoAnsweredReason];
  if (qword_1EC08EB00 != -1)
  {
    v203 = v142;
    swift_once();
    v142 = v203;
  }

  v143 = qword_1EC0B0C50;
  v144 = *(qword_1EC0B0C50 + 16);
  if (v144)
  {
    v145 = sub_1C3F3C940(v142);
    if (v146)
    {
      LOBYTE(v144) = *(*(v143 + 56) + v145);
    }

    else
    {
      LOBYTE(v144) = 0;
    }
  }

  *(a3 + v28[28]) = v144;
  *(a3 + v28[29]) = [v39 usedEmergencyVideoStreaming];
  *(a3 + v28[30]) = [v39 wasEmergencyCall];
  v147 = [v39 blockedByExtension];
  if (v147)
  {
    v130 = v147;
    v148 = sub_1C40311C0();
    v150 = v149;
  }

  else
  {
    v148 = 0;
    v150 = 0;
  }

  v151 = (a3 + v28[31]);
  *v151 = v148;
  v151[1] = v150;
  v152 = [v39 blockedByExtensionName];
  if (v152)
  {
    v130 = v152;
    v153 = sub_1C40311C0();
    v155 = v154;
  }

  else
  {
    v153 = 0;
    v155 = 0;
  }

  v156 = (a3 + v28[32]);
  *v156 = v153;
  v156[1] = v155;
  v157 = [v39 identityExtension];
  if (v157)
  {
    v130 = v157;
    v158 = sub_1C40311C0();
    v160 = v159;
  }

  else
  {
    v158 = 0;
    v160 = 0;
  }

  v161 = (a3 + v28[33]);
  *v161 = v158;
  v161[1] = v160;
  v162 = [v39 callDirectoryIdentityType];
  if (qword_1EC08EB08 != -1)
  {
    v204 = v162;
    swift_once();
    v162 = v204;
  }

  v163 = qword_1EC0B0C58;
  v164 = *(qword_1EC0B0C58 + 16);
  v165 = v212;
  if (v164)
  {
    v166 = sub_1C3F3C940(v162);
    if (v167)
    {
      LOBYTE(v164) = *(*(v163 + 56) + v166);
    }

    else
    {
      LOBYTE(v164) = 0;
    }
  }

  *(a3 + v28[34]) = v164;
  v168 = [v39 screenSharingType];
  if (v168 >> 15)
  {
    __break(1u);
LABEL_119:
    v205 = v168;
    swift_once();
    v168 = v205;
    goto LABEL_109;
  }

  *(a3 + v28[35]) = v168;
  v169 = [v39 reminderUUID];
  if (v169)
  {
    v170 = v169;
    sub_1C40309D0();

    v171 = 0;
  }

  else
  {
    v171 = 1;
  }

  v231(v165, v171, 1, v83);
  sub_1C3F3F2F0(v165, a3 + v211, &qword_1EC08F218, &qword_1C4041840);
  v172 = [v39 remoteParticipantHandles];
  if (v172)
  {
    v173 = v172;
    sub_1C3F03800(0, &qword_1EC0902E0, off_1E81DB4E8);
    sub_1C3F3F2A0(&qword_1EC0902E8, &qword_1EC0902E0, off_1E81DB4E8);
    v174 = sub_1C4031500();

    sub_1C3F32220(sub_1C3F38860, 0, v174);
    v176 = v175;
  }

  else
  {
    v176 = MEMORY[0x1E69E7CC0];
  }

  v177 = sub_1C3F3F358(v176);

  *(a3 + v28[37]) = v177;
  v178 = [v39 initiator];
  v208 = v83;
  if (v178)
  {

    v125.super.isa = [v39 initiator];
    if (v125.super.isa)
    {
      Handle.init(_:)(&v232, v125);
      type = v232.type;
      countAndFlagsBits = v232.value._countAndFlagsBits;
      object = v232.value._object;
      v182 = v232.normalizedValue.value._countAndFlagsBits;
      v183 = v232.normalizedValue.value._object;
      goto LABEL_105;
    }

LABEL_121:
    __break(1u);
    return v125.super;
  }

  type = 0;
  countAndFlagsBits = 0;
  object = 0;
  v182 = 0;
  v183 = 0;
LABEL_105:
  v184 = v209;
  v185 = v209[3];
  v186 = v209[4];
  sub_1C3F3F400(*v209, v209[1], v209[2]);
  *v184 = type;
  v184[1] = countAndFlagsBits;
  v184[2] = object;
  v184[3] = v182;
  v184[4] = v183;
  v187 = [v39 emergencyMediaItems];
  if (v187)
  {
    v188 = v187;
    sub_1C3F03800(0, &qword_1EC0902F0, off_1E81DB4D8);
    sub_1C3F3F2A0(&qword_1EC0902F8, &qword_1EC0902F0, off_1E81DB4D8);
    v189 = sub_1C4031500();

    sub_1C3F325DC(sub_1C3F38898, 0, v189);
    v191 = v190;
  }

  else
  {
    v191 = MEMORY[0x1E69E7CC0];
  }

  v130 = v208;
  v192 = sub_1C3F3F444(v191);

  *(a3 + v28[39]) = v192;
  v168 = [v39 communicationTrustScore];
  if (qword_1EC08EB20 != -1)
  {
    goto LABEL_119;
  }

LABEL_109:
  v193 = qword_1EC0B0C70;
  if (*(qword_1EC0B0C70 + 16) && (v194 = sub_1C3F3C940(v168), (v195 & 1) != 0))
  {
    v196 = *(*(v193 + 56) + v194);
  }

  else
  {
    v196 = 4;
  }

  v125.super.isa = (*(v210 + 8))(v230, v130);
  *(a3 + v28[41]) = v196;
  return v125.super;
}

uint64_t type metadata accessor for RecentCall()
{
  result = qword_1EC0903B0;
  if (!qword_1EC0903B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecentCall.uniqueID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C40309F0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RecentCall.bytesOfDataUsed.setter(uint64_t a1)
{
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t RecentCall.callerIDAvailability.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t RecentCall.callerIDAvailability.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t RecentCall.callerIDLocation.getter()
{
  v1 = (v0 + *(type metadata accessor for RecentCall() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RecentCall.callerIDLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.callerNetworkName.getter()
{
  v1 = (v0 + *(type metadata accessor for RecentCall() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RecentCall.callerNetworkName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.callStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall();
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t RecentCall.callStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t RecentCall.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecentCall() + 56);
  v4 = sub_1C4030980();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecentCall.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentCall() + 56);
  v4 = sub_1C4030980();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecentCall.disconnectedCause.setter(__int16 a1)
{
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t RecentCall.duration.setter(double a1)
{
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t RecentCall.filteredOutReason.setter(__int16 a1)
{
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t RecentCall.hasMessage.setter(char a1)
{
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t RecentCall.isoCountryCode.getter()
{
  v1 = (v0 + *(type metadata accessor for RecentCall() + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RecentCall.isoCountryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall() + 80));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.junkConfidence.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall();
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t RecentCall.junkConfidence.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t RecentCall.junkIdentificationCategory.getter()
{
  v1 = (v0 + *(type metadata accessor for RecentCall() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RecentCall.junkIdentificationCategory.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall() + 88));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.mediaType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall();
  *a1 = *(v1 + *(result + 92));
  return result;
}

uint64_t RecentCall.mediaType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 92)) = v2;
  return result;
}

uint64_t RecentCall.isRead.setter(char a1)
{
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t RecentCall.serviceProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecentCall() + 100));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1C3F16304(v4, v5);
}

uint64_t RecentCall.serviceProvider.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 + *(type metadata accessor for RecentCall() + 100);
  result = sub_1C3F17D70(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t RecentCall.ttyType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall();
  *a1 = *(v1 + *(result + 104));
  return result;
}

uint64_t RecentCall.ttyType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 104)) = v2;
  return result;
}

uint64_t RecentCall.verificationStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall();
  *a1 = *(v1 + *(result + 108));
  return result;
}

uint64_t RecentCall.verificationStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 108)) = v2;
  return result;
}

uint64_t RecentCall.autoAnsweredReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall();
  *a1 = *(v1 + *(result + 112));
  return result;
}

uint64_t RecentCall.autoAnsweredReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 112)) = v2;
  return result;
}

uint64_t RecentCall.usedEmergencyVideoStreaming.setter(char a1)
{
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 116)) = a1;
  return result;
}

uint64_t RecentCall.wasEmergencyCall.setter(char a1)
{
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t RecentCall.blockedByExtension.getter()
{
  v1 = (v0 + *(type metadata accessor for RecentCall() + 124));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RecentCall.blockedByExtension.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall() + 124));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.blockedByExtensionName.getter()
{
  v1 = (v0 + *(type metadata accessor for RecentCall() + 128));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RecentCall.blockedByExtensionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall() + 128));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.identityExtension.getter()
{
  v1 = (v0 + *(type metadata accessor for RecentCall() + 132));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RecentCall.identityExtension.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall() + 132));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.callDirectoryIdentityType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall();
  *a1 = *(v1 + *(result + 136));
  return result;
}

uint64_t RecentCall.callDirectoryIdentityType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 136)) = v2;
  return result;
}

uint64_t RecentCall.screenSharingType.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for RecentCall();
  *a1 = *(v1 + *(result + 140));
  return result;
}

uint64_t RecentCall.screenSharingType.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 140)) = v2;
  return result;
}

uint64_t RecentCall.remoteParticipantHandles.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCall() + 148));
}

uint64_t RecentCall.remoteParticipantHandles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentCall() + 148);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RecentCall.initiator.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecentCall() + 152));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1C3F3F4E4(v4, v5, v6);
}

__n128 RecentCall.initiator.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for RecentCall() + 152));
  v5 = v4[3];
  v6 = v4[4];
  sub_1C3F3F400(*v4, v4[1], v4[2]);
  result = *a1;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  v4[4] = v3;
  return result;
}

uint64_t RecentCall.emergencyMediaItems.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCall() + 156));
}

uint64_t RecentCall.emergencyMediaItems.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentCall() + 156);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RecentCall.coalescedCalls.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCall() + 160));
}

uint64_t RecentCall.coalescedCalls.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentCall() + 160);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RecentCall.communicationTrustScore.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall();
  *a1 = *(v1 + *(result + 164));
  return result;
}

uint64_t RecentCall.communicationTrustScore.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall();
  *(v1 + *(result + 164)) = v2;
  return result;
}

__n128 RecentCall.init(uniqueID:conversationID:localParticipantUUID:outgoingLocalParticipantUUID:participantGroupUUID:bytesOfDataUsed:callerIDAvailability:callerIDLocation:callerNetworkName:callStatus:date:disconnectedCause:duration:filteredOutReason:hasMessage:imageURL:isoCountryCode:junkConfidence:junkIdentificationCategory:mediaType:isRead:serviceProvider:ttyType:verificationStatus:autoAnsweredReason:usedEmergencyVideoStreaming:wasEmergencyCall:blockedByExtension:blockedByExtensionName:identityExtension:callDirectoryIdentityType:screenSharingType:reminderUUID:remoteParticipantHandles:initiator:emergencyMediaItems:communicationTrustScore:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, __int16 a16, __int16 a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char *a25, char a26, uint64_t *a27, char *a28, char *a29, char *a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *a39, __int16 *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45)
{
  v75 = *a7;
  v76 = *a14;
  v81 = *a22;
  v82 = *a25;
  v84 = a27[1];
  v85 = *a27;
  v86 = *a28;
  v89 = *a30;
  v92 = *a39;
  v93 = *a40;
  v95 = *a45;
  v88 = *a29;
  v94 = *(a43 + 32);
  v47 = type metadata accessor for RecentCall();
  v48 = v47[5];
  v64 = v48;
  v49 = sub_1C40309F0();
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v90 = *a43;
  v87 = *(a43 + 16);
  v51(a9 + v48, 1, 1, v49);
  v52 = v47[6];
  v51(a9 + v52, 1, 1, v49);
  v53 = v47[7];
  v51(a9 + v53, 1, 1, v49);
  v54 = v47[8];
  v51(a9 + v54, 1, 1, v49);
  v65 = (a9 + v47[11]);
  v66 = (a9 + v47[12]);
  v55 = v47[19];
  v68 = v55;
  v56 = sub_1C4030910();
  (*(*(v56 - 8) + 56))(a9 + v55, 1, 1, v56);
  v67 = (a9 + v47[20]);
  v69 = (a9 + v47[22]);
  v70 = (a9 + v47[31]);
  v72 = (a9 + v47[32]);
  v71 = (a9 + v47[33]);
  v73 = v47[36];
  v51(a9 + v73, 1, 1, v49);
  v57 = (a9 + v47[38]);
  v57[4] = 0;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  *(a9 + v47[40]) = MEMORY[0x1E69E7CC0];
  (*(v50 + 32))(a9, a1, v49);
  sub_1C3F3F2F0(a2, a9 + v64, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3F3F2F0(a3, a9 + v52, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3F3F2F0(a4, a9 + v53, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3F3F2F0(a5, a9 + v54, &qword_1EC08F218, &qword_1C4041840);
  *(a9 + v47[9]) = a6;
  *(a9 + v47[10]) = v75;
  *v65 = a8;
  v65[1] = a11;
  *v66 = a12;
  v66[1] = a13;
  *(a9 + v47[13]) = v76;
  v58 = v47[14];
  v59 = sub_1C4030980();
  (*(*(v59 - 8) + 32))(a9 + v58, a15, v59);
  *(a9 + v47[15]) = a16;
  *(a9 + v47[16]) = a10;
  *(a9 + v47[17]) = a17;
  *(a9 + v47[18]) = a18;
  sub_1C3F3F2F0(a19, a9 + v68, &qword_1EC08F130, &qword_1C4038450);
  *v67 = a20;
  v67[1] = a21;
  *(a9 + v47[21]) = v81;
  *v69 = a23;
  v69[1] = a24;
  *(a9 + v47[23]) = v82;
  *(a9 + v47[24]) = a26;
  v60 = (a9 + v47[25]);
  *v60 = v85;
  v60[1] = v84;
  *(a9 + v47[26]) = v86;
  *(a9 + v47[27]) = v88;
  *(a9 + v47[28]) = v89;
  *(a9 + v47[39]) = a44;
  *(a9 + v47[29]) = a31;
  *(a9 + v47[30]) = a32;
  *v70 = a33;
  v70[1] = a34;
  *v72 = a35;
  v72[1] = a36;
  *v71 = a37;
  v71[1] = a38;
  *(a9 + v47[34]) = v92;
  *(a9 + v47[35]) = v93;
  sub_1C3F3F2F0(a41, a9 + v73, &qword_1EC08F218, &qword_1C4041840);
  *(a9 + v47[37]) = a42;
  v61 = v57[3];
  v62 = v57[4];
  sub_1C3F3F400(*v57, v57[1], v57[2]);
  result = v90;
  *v57 = v90;
  *(v57 + 1) = v87;
  v57[4] = v94;
  *(a9 + v47[41]) = v95;
  return result;
}

unint64_t RecentCall.description.getter()
{
  v0 = sub_1C4031200();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1C40306B0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1C40306F0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1C40306E0();
  sub_1C40306A0();
  sub_1C40306C0();
  type metadata accessor for RecentCall();
  sub_1C3F3F528(&qword_1EC08ED90, type metadata accessor for RecentCall);
  v7 = sub_1C40306D0();
  v9 = v8;
  sub_1C40311F0();
  v10 = sub_1C40311E0();
  v12 = v11;
  sub_1C3F31480(v7, v9);

  if (v12)
  {
    return v10;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C3F38C14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v38 = a2 + 56;
  v33 = result + 56;
  v34 = result;
  v36 = a2;
  v32 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v35 = (v6 - 1) & v6;
LABEL_13:
    v11 = (*(result + 48) + 40 * (v8 | (v2 << 6)));
    v12 = *v11;
    v14 = v11[1];
    v13 = v11[2];
    v16 = v11[3];
    v15 = v11[4];
    v17 = a2;
    v18 = *(a2 + 40);
    sub_1C4031C70();
    sub_1C4031CA0();

    sub_1C4031280();
    v37 = v16;
    sub_1C4031C90();
    if (v15)
    {
      sub_1C4031280();
    }

    v19 = sub_1C4031CC0();
    v20 = -1 << *(v17 + 32);
    v21 = v19 & ~v20;
    v22 = v38;
    if (((*(v38 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_35:

      return 0;
    }

    v23 = ~v20;
    v24 = *(v36 + 48);
    while (1)
    {
      v25 = (v24 + 40 * v21);
      if (*v25 != v12)
      {
        goto LABEL_18;
      }

      v27 = v25[3];
      v26 = v25[4];
      if (v25[1] != v14 || v25[2] != v13)
      {
        v29 = sub_1C4031BF0();
        v22 = v38;
        if ((v29 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (v26)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_32;
      }

LABEL_18:
      v21 = (v21 + 1) & v23;
      if (((*(v22 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    if (!v15)
    {
      goto LABEL_18;
    }

    if (v27 != v37 || v26 != v15)
    {
      v31 = sub_1C4031BF0();
      v22 = v38;
      if ((v31 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_32:

    v3 = v33;
    result = v34;
    v6 = v35;
    a2 = v36;
    v7 = v32;
  }

  while (v35);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v35 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F38EB4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v26 = v7;
  v27 = result;
  v29 = a2;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v6));
    v28 = (v6 - 1) & v6;
LABEL_13:
    v12 = *(result + 48) + 24 * (v9 | (v2 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(a2 + 40);
    v17 = a2;
    sub_1C4031C70();

    sub_1C4031280();
    sub_1C4031CA0();
    v18 = sub_1C4031CC0();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_26:

      return 0;
    }

    v21 = ~v19;
    v22 = *(v29 + 48);
    while (1)
    {
      v23 = v22 + 24 * v20;
      v24 = *(v23 + 16);
      if (*v23 != v14 || *(v23 + 8) != v13)
      {
        break;
      }

      if (v15 == v24)
      {
        goto LABEL_23;
      }

LABEL_16:
      v20 = (v20 + 1) & v21;
      if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (sub_1C4031BF0() & 1) == 0 || ((v15 ^ v24))
    {
      goto LABEL_16;
    }

LABEL_23:

    v7 = v26;
    result = v27;
    v6 = v28;
    a2 = v29;
  }

  while (v28);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C3F390B4(char a1)
{
  result = 0x4449657571696E75;
  switch(a1)
  {
    case 1:
      result = 0x61737265766E6F63;
      break;
    case 2:
    case 4:
    case 6:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0x44664F7365747962;
      break;
    case 7:
    case 26:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x746174536C6C6163;
      break;
    case 10:
      result = 1702125924;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6E6F697461727564;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x617373654D736168;
      break;
    case 15:
      result = 0x4C52556567616D69;
      break;
    case 16:
      result = 0x746E756F436F7369;
      break;
    case 17:
      result = 0x666E6F436B6E756ALL;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0x707954616964656DLL;
      break;
    case 20:
      result = 0x646165527369;
      break;
    case 21:
      result = 0x5065636976726573;
      break;
    case 22:
      result = 0x65707954797474;
      break;
    case 23:
    case 24:
    case 27:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD00000000000001BLL;
      break;
    case 28:
      result = 0xD000000000000016;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    case 30:
      result = 0xD000000000000019;
      break;
    case 31:
      result = 0xD000000000000011;
      break;
    case 32:
      result = 0x7265646E696D6572;
      break;
    case 33:
      result = 0xD000000000000018;
      break;
    case 34:
      result = 0x6F74616974696E69;
      break;
    case 35:
      result = 0xD000000000000013;
      break;
    case 36:
      result = 0x656373656C616F63;
      break;
    case 37:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C3F394D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C3F40240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C3F3950C(uint64_t a1)
{
  v2 = sub_1C3F3F570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F39548(uint64_t a1)
{
  v2 = sub_1C3F3F570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecentCall.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090308, &qword_1C403CDB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v54 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F3F570();
  sub_1C4031D10();
  LOBYTE(v55) = 0;
  sub_1C40309F0();
  sub_1C3F3F528(&qword_1EC08F0B8, MEMORY[0x1E69695A8]);
  sub_1C4031B70();
  if (!v2)
  {
    v11 = type metadata accessor for RecentCall();
    v12 = v11[5];
    LOBYTE(v55) = 1;
    sub_1C4031B20();
    v13 = v11[6];
    LOBYTE(v55) = 2;
    sub_1C4031B20();
    v14 = v11[7];
    LOBYTE(v55) = 3;
    sub_1C4031B20();
    v15 = v11[8];
    LOBYTE(v55) = 4;
    sub_1C4031B20();
    v16 = *(v3 + v11[9]);
    LOBYTE(v55) = 5;
    sub_1C4031B60();
    LOBYTE(v55) = *(v3 + v11[10]);
    v60 = 6;
    sub_1C3F09B50();
    sub_1C4031B70();
    v17 = (v3 + v11[11]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v55) = 7;
    sub_1C4031B10();
    v20 = (v3 + v11[12]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v55) = 8;
    sub_1C4031B10();
    LOBYTE(v55) = *(v3 + v11[13]);
    v60 = 9;
    sub_1C3F09D98();
    sub_1C4031B70();
    v54 = v11[14];
    LOBYTE(v55) = 10;
    sub_1C4030980();
    sub_1C3F3F528(&qword_1EC08FA20, MEMORY[0x1E6969530]);
    sub_1C4031B70();
    v23 = *(v3 + v11[15]);
    LOBYTE(v55) = 11;
    sub_1C4031B80();
    v24 = *(v3 + v11[16]);
    LOBYTE(v55) = 12;
    sub_1C4031B50();
    v25 = *(v3 + v11[17]);
    LOBYTE(v55) = 13;
    sub_1C4031B80();
    v26 = *(v3 + v11[18]);
    LOBYTE(v55) = 14;
    sub_1C4031B40();
    v54 = v11[19];
    LOBYTE(v55) = 15;
    sub_1C4030910();
    sub_1C3F3F528(&qword_1EC090318, MEMORY[0x1E6968FB0]);
    sub_1C4031B20();
    v27 = (v3 + v11[20]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v55) = 16;
    sub_1C4031B10();
    LOBYTE(v55) = *(v3 + v11[21]);
    v60 = 17;
    sub_1C3F3F5C4();
    sub_1C4031B70();
    v30 = (v3 + v11[22]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v55) = 18;
    sub_1C4031B10();
    LOBYTE(v55) = *(v3 + v11[23]);
    v60 = 19;
    sub_1C3F0A470();
    sub_1C4031B70();
    v33 = *(v3 + v11[24]);
    LOBYTE(v55) = 20;
    sub_1C4031B40();
    v34 = (v3 + v11[25]);
    v35 = v34[1];
    v55 = *v34;
    v56 = v35;
    v60 = 21;
    sub_1C3F16304(v55, v35);
    sub_1C3F24AD0();
    sub_1C4031B70();
    sub_1C3F17D70(v55, v56);
    LOBYTE(v55) = *(v3 + v11[26]);
    v60 = 22;
    sub_1C3F0A6B8();
    sub_1C4031B70();
    LOBYTE(v55) = *(v3 + v11[27]);
    v60 = 23;
    sub_1C3F0A900();
    sub_1C4031B70();
    LOBYTE(v55) = *(v3 + v11[28]);
    v60 = 24;
    sub_1C3F096C0();
    sub_1C4031B70();
    v36 = *(v3 + v11[29]);
    LOBYTE(v55) = 25;
    sub_1C4031B40();
    v37 = *(v3 + v11[30]);
    LOBYTE(v55) = 26;
    sub_1C4031B40();
    v38 = (v3 + v11[31]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v55) = 27;
    sub_1C4031B10();
    v41 = (v3 + v11[32]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v55) = 28;
    sub_1C4031B10();
    v44 = (v3 + v11[33]);
    v45 = *v44;
    v46 = v44[1];
    LOBYTE(v55) = 29;
    sub_1C4031B10();
    LOBYTE(v55) = *(v3 + v11[34]);
    v60 = 30;
    sub_1C3F09908();
    sub_1C4031B70();
    LOWORD(v55) = *(v3 + v11[35]);
    v60 = 31;
    sub_1C3F3F618();
    sub_1C4031B70();
    v47 = v11[36];
    LOBYTE(v55) = 32;
    sub_1C4031B20();
    v55 = *(v3 + v11[37]);
    v60 = 33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090330, &qword_1C403CDB8);
    sub_1C3F3F8E8(&qword_1EC090338, sub_1C3F24BFC);
    sub_1C4031B70();
    v48 = (v3 + v11[38]);
    v49 = v48[1];
    v50 = v48[2];
    v51 = v48[3];
    v52 = v48[4];
    v55 = *v48;
    v56 = v49;
    v57 = v50;
    v58 = v51;
    v59 = v52;
    v60 = 34;
    sub_1C3F3F4E4(v55, v49, v50);
    sub_1C3F24BFC();
    sub_1C4031B20();
    sub_1C3F3F400(v55, v56, v57);
    v55 = *(v3 + v11[39]);
    v60 = 35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090340, &qword_1C403CDC0);
    sub_1C3F3F66C(&qword_1EC090348, sub_1C3F3F6E4);
    sub_1C4031B70();
    v55 = *(v3 + v11[40]);
    v60 = 36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
    sub_1C3F3F738();
    sub_1C4031B70();
    LOBYTE(v55) = *(v3 + v11[41]);
    v60 = 37;
    sub_1C3F3F7EC();
    sub_1C4031B70();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RecentCall.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecentCall();
  v96 = *(v4 - 1);
  v5 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4030910();
  v101 = *(v8 - 8);
  v102 = v8;
  v9 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v100 = &v95 - v13;
  v14 = sub_1C40309F0();
  v97 = *(v14 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v99 = &v95 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v98 = &v95 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v95 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v95 - v29;
  v31 = sub_1C3F3F528(&qword_1EC08F290, MEMORY[0x1E69695A8]);
  sub_1C4031140();
  v32 = v97;
  sub_1C3EF1A60(v2 + v4[5], v30, &qword_1EC08F218, &qword_1C4041840);
  v105 = *(v32 + 48);
  v106 = v32 + 48;
  v33 = v105(v30, 1, v14);
  v104 = v31;
  if (v33 == 1)
  {
    v34 = v32;
    sub_1C4031C90();
  }

  else
  {
    (*(v32 + 32))(v17, v30, v14);
    sub_1C4031C90();
    sub_1C4031140();
    v34 = v32;
    (*(v32 + 8))(v17, v14);
  }

  sub_1C3EF1A60(v2 + v4[6], v28, &qword_1EC08F218, &qword_1C4041840);
  if (v105(v28, 1, v14) == 1)
  {
    sub_1C4031C90();
    v35 = v34;
  }

  else
  {
    v36 = v28;
    v35 = v34;
    (*(v34 + 32))(v17, v36, v14);
    sub_1C4031C90();
    sub_1C4031140();
    (*(v34 + 8))(v17, v14);
  }

  v37 = v98;
  sub_1C3EF1A60(v2 + v4[7], v98, &qword_1EC08F218, &qword_1C4041840);
  if (v105(v37, 1, v14) == 1)
  {
    sub_1C4031C90();
  }

  else
  {
    (*(v35 + 32))(v17, v37, v14);
    sub_1C4031C90();
    sub_1C4031140();
    (*(v35 + 8))(v17, v14);
  }

  v38 = v99;
  sub_1C3EF1A60(v2 + v4[8], v99, &qword_1EC08F218, &qword_1C4041840);
  if (v105(v38, 1, v14) == 1)
  {
    sub_1C4031C90();
  }

  else
  {
    (*(v35 + 32))(v17, v38, v14);
    sub_1C4031C90();
    sub_1C4031140();
    (*(v35 + 8))(v17, v14);
  }

  MEMORY[0x1C6933940](*(v2 + v4[9]));
  v39 = *(v2 + v4[10]);
  sub_1C4031CA0();
  v40 = (v2 + v4[11]);
  if (v40[1])
  {
    v41 = *v40;
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  v42 = (v2 + v4[12]);
  if (v42[1])
  {
    v43 = *v42;
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  v44 = *(v2 + v4[13]);
  sub_1C4031CA0();
  v45 = v4[14];
  sub_1C4030980();
  sub_1C3F3F528(&qword_1EC08FA70, MEMORY[0x1E6969530]);
  sub_1C4031140();
  v46 = *(v2 + v4[15]);
  sub_1C4031CA0();
  v47 = *(v2 + v4[16]);
  if (v47 == 0.0)
  {
    v47 = 0.0;
  }

  MEMORY[0x1C6933970](*&v47);
  v48 = *(v2 + v4[17]);
  sub_1C4031CA0();
  v49 = *(v2 + v4[18]);
  sub_1C4031C90();
  v50 = v100;
  sub_1C3EF1A60(v2 + v4[19], v100, &qword_1EC08F130, &qword_1C4038450);
  v52 = v101;
  v51 = v102;
  if ((*(v101 + 48))(v50, 1, v102) == 1)
  {
    sub_1C4031C90();
  }

  else
  {
    v53 = *(v52 + 32);
    v99 = v14;
    v54 = v17;
    v55 = v35;
    v56 = v95;
    v53(v95, v50, v51);
    sub_1C4031C90();
    sub_1C3F3F528(&qword_1EC090360, MEMORY[0x1E6968FB0]);
    sub_1C4031140();
    v57 = v56;
    v35 = v55;
    v17 = v54;
    v14 = v99;
    (*(v52 + 8))(v57, v51);
  }

  v58 = (v2 + v4[20]);
  if (v58[1])
  {
    v59 = *v58;
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  v60 = *(v2 + v4[21]);
  sub_1C4031CA0();
  v61 = (v2 + v4[22]);
  if (v61[1])
  {
    v62 = *v61;
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  v63 = *(v2 + v4[23]);
  sub_1C4031CA0();
  v64 = *(v2 + v4[24]);
  sub_1C4031C90();
  v65 = (v2 + v4[25]);
  v66 = v65[1];
  if (!v66)
  {
    v67 = 0;
    goto LABEL_34;
  }

  if (v66 == 1)
  {
    v67 = 1;
LABEL_34:
    MEMORY[0x1C6933940](v67);
    goto LABEL_36;
  }

  v68 = *v65;
  MEMORY[0x1C6933940](2);
  sub_1C4031280();
LABEL_36:
  v69 = *(v2 + v4[26]);
  sub_1C4031CA0();
  v70 = *(v2 + v4[27]);
  sub_1C4031CA0();
  v71 = *(v2 + v4[28]);
  sub_1C4031CA0();
  v72 = *(v2 + v4[29]);
  sub_1C4031C90();
  v73 = *(v2 + v4[30]);
  sub_1C4031C90();
  v74 = (v2 + v4[31]);
  if (v74[1])
  {
    v75 = *v74;
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  v76 = (v2 + v4[32]);
  if (v76[1])
  {
    v77 = *v76;
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  v78 = (v2 + v4[33]);
  if (v78[1])
  {
    v79 = *v78;
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  v80 = *(v2 + v4[34]);
  sub_1C4031CA0();
  v81 = *(v2 + v4[35]);
  sub_1C4031CA0();
  v82 = v103;
  sub_1C3EF1A60(v2 + v4[36], v103, &qword_1EC08F218, &qword_1C4041840);
  if (v105(v82, 1, v14) == 1)
  {
    sub_1C4031C90();
  }

  else
  {
    (*(v35 + 32))(v17, v82, v14);
    sub_1C4031C90();
    sub_1C4031140();
    (*(v35 + 8))(v17, v14);
  }

  sub_1C3F3D514(a1, *(v2 + v4[37]));
  v83 = (v2 + v4[38]);
  v84 = v83[2];
  if (v84)
  {
    v85 = *v83;
    v86 = v83[1];
    v87 = v83[3];
    v88 = v83[4];
    sub_1C4031C90();
    sub_1C4031CA0();

    sub_1C4031280();
    sub_1C4031C90();
    if (v88)
    {
      sub_1C4031280();
    }

    sub_1C3F3F400(v85, v86, v84);
  }

  else
  {
    sub_1C4031C90();
  }

  sub_1C3F3D3A8(a1, *(v2 + v4[39]));
  v89 = *(v2 + v4[40]);
  MEMORY[0x1C6933940](*(v89 + 16));
  v90 = *(v89 + 16);
  if (v90)
  {
    v91 = v89 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v92 = *(v96 + 72);
    do
    {
      sub_1C3F40DE0(v91, v7, type metadata accessor for RecentCall);
      RecentCall.hash(into:)(a1);
      sub_1C3F40E48(v7, type metadata accessor for RecentCall);
      v91 += v92;
      --v90;
    }

    while (v90);
  }

  v93 = *(v2 + v4[41]);
  return sub_1C4031CA0();
}

uint64_t RecentCall.hashValue.getter()
{
  sub_1C4031C70();
  RecentCall.hash(into:)(v1);
  return sub_1C4031CC0();
}

uint64_t RecentCall.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *&v122 = &v116 - v5;
  v126 = sub_1C4030980();
  v125 = *(v126 - 8);
  v6 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  *&v123 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v120 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v129 = &v116 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v130 = &v116 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v131 = &v116 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v132 = &v116 - v18;
  v19 = sub_1C40309F0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v133 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090368, &qword_1C403CDC8);
  v124 = *(v127 - 8);
  v23 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v25 = &v116 - v24;
  v26 = type metadata accessor for RecentCall();
  v27 = *(*(v26 - 1) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v20 + 56);
  v143 = *(v28 + 20);
  v31(&v30[v143], 1, 1, v19);
  v142 = v26[6];
  v31(&v30[v142], 1, 1, v19);
  v141 = v26[7];
  v31(&v30[v141], 1, 1, v19);
  v140 = v26[8];
  v31(&v30[v140], 1, 1, v19);
  v32 = v26[19];
  v33 = sub_1C4030910();
  v34 = *(*(v33 - 8) + 56);
  v134 = v32;
  v35 = &v30[v32];
  v36 = v19;
  v37 = v33;
  v34(v35, 1, 1, v33);
  v135 = v26[36];
  v31(&v30[v135], 1, 1, v36);
  v137 = a1;
  v138 = v26;
  v38 = &v30[v26[38]];
  *(v38 + 4) = 0;
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v136 = v38;
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F3F570();
  v128 = v25;
  v40 = v139;
  sub_1C4031D00();
  if (!v40)
  {
    v41 = v132;
    v118 = v37;
    v119 = v20;
    LOBYTE(v144) = 0;
    sub_1C3F3F528(&qword_1EC08F0B0, MEMORY[0x1E69695A8]);
    v42 = v133;
    sub_1C4031AC0();
    (*(v119 + 32))(v30, v42, v36);
    LOBYTE(v144) = 1;
    v51 = v41;
    sub_1C4031A70();
    v52 = v138;
    v117 = v36;
    sub_1C3F3F2F0(v51, &v30[v143], &qword_1EC08F218, &qword_1C4041840);
    LOBYTE(v144) = 2;
    v53 = v131;
    sub_1C4031A70();
    sub_1C3F3F2F0(v53, &v30[v142], &qword_1EC08F218, &qword_1C4041840);
    LOBYTE(v144) = 3;
    v54 = v130;
    sub_1C4031A70();
    sub_1C3F3F2F0(v54, &v30[v141], &qword_1EC08F218, &qword_1C4041840);
    LOBYTE(v144) = 4;
    v55 = v129;
    sub_1C4031A70();
    sub_1C3F3F2F0(v55, &v30[v140], &qword_1EC08F218, &qword_1C4041840);
    LOBYTE(v144) = 5;
    *&v30[v52[9]] = sub_1C4031AB0();
    v147 = 6;
    sub_1C3F09AFC();
    sub_1C4031AC0();
    v30[v52[10]] = v144;
    LOBYTE(v144) = 7;
    v56 = sub_1C4031A60();
    v58 = &v30[v52[11]];
    *v58 = v56;
    v58[1] = v59;
    LOBYTE(v144) = 8;
    v60 = sub_1C4031A60();
    v139 = 0;
    v62 = v52[12];
    v116 = v30;
    v63 = &v30[v62];
    *v63 = v60;
    v63[1] = v61;
    v147 = 9;
    sub_1C3F09D44();
    v64 = v139;
    sub_1C4031AC0();
    v139 = v64;
    if (v64 || (v116[v138[13]] = v144, LOBYTE(v144) = 10, sub_1C3F3F528(&qword_1EC08FB48, MEMORY[0x1E6969530]), v65 = v139, sub_1C4031AC0(), (v139 = v65) != 0))
    {
      (*(v124 + 8))(v128, v127);
      v44 = 0;
      v45 = 0;
      LODWORD(v127) = 0;
      LODWORD(v128) = 0;
      v129 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v133 = 0;
      goto LABEL_16;
    }

    (*(v125 + 32))(&v116[v138[14]], v123, v126);
    LOBYTE(v144) = 11;
    v66 = v139;
    v67 = sub_1C4031AD0();
    v139 = v66;
    if (v66)
    {
      goto LABEL_20;
    }

    *&v116[v138[15]] = v67;
    LOBYTE(v144) = 12;
    sub_1C4031AA0();
    v139 = 0;
    *&v116[v138[16]] = v68;
    LOBYTE(v144) = 13;
    v69 = sub_1C4031AD0();
    v139 = 0;
    *&v116[v138[17]] = v69;
    LOBYTE(v144) = 14;
    v70 = sub_1C4031A90();
    v139 = 0;
    v116[v138[18]] = v70 & 1;
    LOBYTE(v144) = 15;
    sub_1C3F3F528(&qword_1EC090370, MEMORY[0x1E6968FB0]);
    v71 = v139;
    sub_1C4031A70();
    v139 = v71;
    if (v71 || (sub_1C3F3F2F0(v122, &v116[v134], &qword_1EC08F130, &qword_1C4038450), LOBYTE(v144) = 16, v72 = v139, v73 = sub_1C4031A60(), v133 = v74, (v139 = v72) != 0))
    {
LABEL_20:
      (*(v124 + 8))(v128, v127);
      v45 = 0;
      LODWORD(v127) = 0;
      LODWORD(v128) = 0;
      v129 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v133 = 0;
    }

    else
    {
      v75 = &v116[v138[20]];
      v76 = v133;
      *v75 = v73;
      v75[1] = v76;
      v147 = 17;
      sub_1C3F3F840();
      v77 = v139;
      sub_1C4031AC0();
      v139 = v77;
      if (v77)
      {
        (*(v124 + 8))(v128, v127);
        v45 = 0;
        LODWORD(v127) = 0;
        LODWORD(v128) = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
      }

      else
      {
        v116[v138[21]] = v144;
        LOBYTE(v144) = 18;
        v78 = sub_1C4031A60();
        v132 = v79;
        v139 = 0;
        v80 = &v116[v138[22]];
        v81 = v132;
        *v80 = v78;
        v80[1] = v81;
        v147 = 19;
        sub_1C3F0A41C();
        v82 = v139;
        sub_1C4031AC0();
        v139 = v82;
        if (!v82)
        {
          v116[v138[23]] = v144;
          LOBYTE(v144) = 20;
          v83 = sub_1C4031A90();
          v139 = 0;
          v116[v138[24]] = v83 & 1;
          v147 = 21;
          sub_1C3F290EC();
          v84 = v139;
          sub_1C4031AC0();
          v139 = v84;
          if (!v84)
          {
            *&v116[v138[25]] = v144;
            v147 = 22;
            sub_1C3F0A664();
            v85 = v139;
            sub_1C4031AC0();
            v139 = v85;
            if (v85)
            {
              goto LABEL_32;
            }

            v116[v138[26]] = v144;
            v147 = 23;
            sub_1C3F0A8AC();
            v86 = v139;
            sub_1C4031AC0();
            v139 = v86;
            if (v86 || (v116[v138[27]] = v144, v147 = 24, sub_1C3EF79AC(), v87 = v139, sub_1C4031AC0(), (v139 = v87) != 0))
            {
LABEL_32:
              (*(v124 + 8))(v128, v127);
              LODWORD(v127) = 0;
              LODWORD(v128) = 0;
              v129 = 0;
              v130 = 0;
              v131 = 0;
              v44 = 1;
            }

            else
            {
              v116[v138[28]] = v144;
              LOBYTE(v144) = 25;
              v88 = sub_1C4031A90();
              v139 = 0;
              v116[v138[29]] = v88 & 1;
              LOBYTE(v144) = 26;
              v89 = sub_1C4031A90();
              v139 = 0;
              v116[v138[30]] = v89 & 1;
              LOBYTE(v144) = 27;
              v90 = sub_1C4031A60();
              v131 = v91;
              v139 = 0;
              v92 = &v116[v138[31]];
              *v92 = v90;
              v92[1] = v91;
              LOBYTE(v144) = 28;
              v93 = sub_1C4031A60();
              v129 = v94;
              v139 = 0;
              v95 = &v116[v138[32]];
              *v95 = v93;
              v95[1] = v94;
              LOBYTE(v144) = 29;
              v96 = sub_1C4031A60();
              v130 = v97;
              v139 = 0;
              v98 = &v116[v138[33]];
              v99 = v130;
              *v98 = v96;
              v98[1] = v99;
              v147 = 30;
              sub_1C3F098B4();
              v100 = v139;
              sub_1C4031AC0();
              v139 = v100;
              if (!v100)
              {
                v116[v138[34]] = v144;
                v147 = 31;
                sub_1C3F3F894();
                v101 = v139;
                sub_1C4031AC0();
                v139 = v101;
                if (!v101)
                {
                  *&v116[v138[35]] = v144;
                  LOBYTE(v144) = 32;
                  sub_1C4031A70();
                  v139 = 0;
                  sub_1C3F3F2F0(v120, &v116[v135], &qword_1EC08F218, &qword_1C4041840);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090330, &qword_1C403CDB8);
                  v147 = 33;
                  sub_1C3F3F8E8(&qword_1EC090388, sub_1C3F291C4);
                  v102 = v139;
                  sub_1C4031AC0();
                  v139 = v102;
                  if (!v102)
                  {
                    *&v116[v138[37]] = v144;
                    v147 = 34;
                    sub_1C3F291C4();
                    v103 = v139;
                    sub_1C4031A70();
                    v139 = v103;
                    if (v103)
                    {
                      goto LABEL_40;
                    }

                    v104 = v146;
                    v105 = v136;
                    v106 = *v136;
                    v107 = v136[1];
                    v108 = v136[2];
                    v109 = v136[3];
                    v110 = v136[4];
                    v123 = v144;
                    v122 = v145;
                    sub_1C3F3F400(v106, v107, v108);
                    v111 = v122;
                    *v105 = v123;
                    *(v105 + 1) = v111;
                    v105[4] = v104;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090340, &qword_1C403CDC0);
                    v147 = 35;
                    sub_1C3F3F66C(&qword_1EC090390, sub_1C3F3F960);
                    v112 = v139;
                    sub_1C4031AC0();
                    v139 = v112;
                    if (v112)
                    {
LABEL_40:
                      (*(v124 + 8))(v128, v127);
                      LODWORD(v128) = 0;
                      v44 = 1;
                      v45 = 1;
                      LODWORD(v127) = 1;
                    }

                    else
                    {
                      *&v116[v138[39]] = v144;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
                      v147 = 36;
                      sub_1C3F3F9B4();
                      v113 = v139;
                      sub_1C4031AC0();
                      v139 = v113;
                      if (!v113)
                      {
                        *&v116[v138[40]] = v144;
                        v147 = 37;
                        sub_1C3F3FA68();
                        v114 = v139;
                        sub_1C4031AC0();
                        v139 = v114;
                        if (!v114)
                        {
                          (*(v124 + 8))(v128, v127);
                          v115 = v116;
                          v116[v138[41]] = v144;
                          sub_1C3F40DE0(v115, v121, type metadata accessor for RecentCall);
                          __swift_destroy_boxed_opaque_existential_1(v137);
                          return sub_1C3F40E48(v115, type metadata accessor for RecentCall);
                        }
                      }

                      (*(v124 + 8))(v128, v127);
                      v44 = 1;
                      v45 = 1;
                      LODWORD(v127) = 1;
                      LODWORD(v128) = 1;
                    }

                    goto LABEL_16;
                  }
                }
              }

              (*(v124 + 8))(v128, v127);
              LODWORD(v127) = 0;
              LODWORD(v128) = 0;
              v44 = 1;
            }

            v45 = 1;
LABEL_16:
            v43 = v138;
            v30 = v116;
            v57 = v119;
            __swift_destroy_boxed_opaque_existential_1(v137);
            (*(v57 + 8))(v30, v117);
            goto LABEL_4;
          }
        }

        (*(v124 + 8))(v128, v127);
        v45 = 0;
        LODWORD(v127) = 0;
        LODWORD(v128) = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
      }
    }

    v44 = 1;
    goto LABEL_16;
  }

  v139 = v40;
  v43 = v138;
  __swift_destroy_boxed_opaque_existential_1(v137);
  v44 = 0;
  v45 = 0;
  LODWORD(v127) = 0;
  LODWORD(v128) = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
LABEL_4:
  sub_1C3EED388(&v30[v143], &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EED388(&v30[v142], &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EED388(&v30[v141], &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EED388(&v30[v140], &qword_1EC08F218, &qword_1C4041840);

  if (v44)
  {
    (*(v125 + 8))(&v30[v43[14]], v126);
  }

  sub_1C3EED388(&v30[v134], &qword_1EC08F130, &qword_1C4038450);

  if (v45)
  {
    sub_1C3F17D70(*&v30[v43[25]], *&v30[v43[25] + 8]);
  }

  sub_1C3EED388(&v30[v135], &qword_1EC08F218, &qword_1C4041840);
  if (v127)
  {
    v46 = *&v30[v43[37]];
  }

  v47 = v136[3];
  v48 = v136[4];
  sub_1C3F3F400(*v136, v136[1], v136[2]);
  if (v128)
  {
    v49 = *&v30[v43[39]];
  }
}

uint64_t sub_1C3F3C594()
{
  sub_1C4031C70();
  RecentCall.hash(into:)(v1);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F3C5D8()
{
  sub_1C4031C70();
  RecentCall.hash(into:)(v1);
  return sub_1C4031CC0();
}

unint64_t sub_1C3F3C61C(unsigned __int8 *a1)
{
  v3 = *(v1 + 40);
  sub_1C4031C70();
  sub_1C4025638();
  v4 = sub_1C4031CC0();

  return sub_1C3F3CA10(a1, v4);
}

unint64_t sub_1C3F3C688(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C4031C60();

  return sub_1C3F3CB6C(a1, v4);
}

unint64_t sub_1C3F3C6CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C4031830();

  return sub_1C3F3CBD8(a1, v5);
}

unint64_t sub_1C3F3C710(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C4031C70();
  sub_1C4031280();
  v6 = sub_1C4031CC0();

  return sub_1C3F3CCA0(a1, a2, v6);
}

unint64_t sub_1C3F3C78C(int a1)
{
  v3 = *(v1 + 40);
  sub_1C4031C70();
  sub_1C4031C90();
  v4 = sub_1C4031CC0();

  return sub_1C3F3CD58(a1, v4);
}

unint64_t sub_1C3F3C7F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1C40309F0();
  sub_1C3F3F528(&qword_1EC08F290, MEMORY[0x1E69695A8]);
  v5 = sub_1C4031130();

  return sub_1C3F3CDC8(a1, v5);
}

unint64_t sub_1C3F3C890(unsigned int a1)
{
  v3 = MEMORY[0x1C6933910](*(v1 + 40), a1, 4);

  return sub_1C3F3CF88(a1, v3);
}

unint64_t sub_1C3F3C8D8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1C4031C70();
  sub_1C4031CA0();
  v4 = sub_1C4031CC0();
  return sub_1C3F3CFF4(a1, v4);
}

unint64_t sub_1C3F3C940(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C4031C70();
  MEMORY[0x1C6933940](a1);
  v4 = sub_1C4031CC0();
  return sub_1C3F3CB6C(a1, v4);
}

unint64_t sub_1C3F3C9A8(char a1)
{
  v3 = *(v1 + 40);
  sub_1C4031C70();
  sub_1C4031CA0();
  v4 = sub_1C4031CC0();
  return sub_1C3F3CD58(a1 & 1, v4);
}

unint64_t sub_1C3F3CA10(unsigned __int8 *a1, uint64_t a2)
{
  v5 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_1C3F40DE0(*(v2 + 48) + v13 * v11, v9, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      v14 = sub_1C402A3F0(v9, a1);
      sub_1C3F40E48(v9, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1C3F3CB6C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C3F3CBD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C3F411E8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C6933500](v9, a1);
      sub_1C3F41244(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C3F3CCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C4031BF0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C3F3CD58(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C3F3CDC8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1C40309F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
      v16 = sub_1C4031180();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1C3F3CF88(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C3F3CFF4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_1C3F3D064(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F3C9A8(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F01C7C(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_1C3F3C9A8(v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1C3F02D00();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + v10) = v7;
  *(v22[7] + 8 * v10) = v8;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C40318C0();
    MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
    sub_1C40319C0();
    MEMORY[0x1C6932F70](39, 0xE100000000000000);
    sub_1C40319D0();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v25 = *v6;
      v7 = *(v6 - 8);
      v26 = *a3;
      v27 = sub_1C3F3C9A8(v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1C3F01C7C(v31, 1);
        v32 = *a3;
        v27 = sub_1C3F3C9A8(v7);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + v27) = v7;
      *(v34[7] + 8 * v27) = v25;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1C3F3D3A8(__int128 *a1, uint64_t a2)
{
  v19 = a1[2];
  v20 = a1[3];
  v21 = *(a1 + 8);
  v17 = *a1;
  v18 = a1[1];
  sub_1C4031CC0();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v16)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(a2 + 48) + 24 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_1C4031C70();

    sub_1C4031280();
    sub_1C4031CA0();
    v16 = sub_1C4031CC0();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1C6933940](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F3D514(__int128 *a1, uint64_t a2)
{
  v23 = a1[2];
  v24 = a1[3];
  v25 = *(a1 + 8);
  v21 = *a1;
  v22 = a1[1];
  sub_1C4031CC0();
  v19 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v20 = v9;
LABEL_11:
    v13 = (*(v19 + 48) + 40 * (__clz(__rbit64(v6)) | (v10 << 6)));
    v14 = *v13;
    v16 = v13[1];
    v15 = v13[2];
    v18 = v13[3];
    v17 = v13[4];
    sub_1C4031C70();
    sub_1C4031CA0();

    sub_1C4031280();
    sub_1C4031C90();
    if (v17)
    {
      sub_1C4031280();
    }

    v6 &= v6 - 1;
    v11 = sub_1C4031CC0();

    v9 = v11 ^ v20;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x1C6933940](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v20 = v9;
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F3D6C4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_1C3F411E8(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1C3F3D71C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C69334C0](a1, a2, v11);
      sub_1C3F03800(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C3F03800(0, a5, a6);
    if (sub_1C40317C0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C40317D0();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_1C4031670();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_1C4031680();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

BOOL _s11CallHistory06RecentA0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4030910();
  v195 = *(v4 - 8);
  v196 = v4;
  v5 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v192 = &v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v194 = &v183 - v9;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090418, &qword_1C403D110);
  v10 = *(*(v193 - 8) + 64);
  MEMORY[0x1EEE9AC00](v193);
  v197 = &v183 - v11;
  v12 = sub_1C40309F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v191 = &v183 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v198 = &v183 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v201 = &v183 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v183 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v183 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090420, &unk_1C4054100);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v190 = &v183 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v200 = &v183 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v202 = &v183 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v183 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v183 - v41;
  if ((sub_1C40309C0() & 1) == 0)
  {
    return 0;
  }

  v186 = v16;
  v43 = type metadata accessor for RecentCall();
  v203 = a2;
  v187 = v30;
  v188 = v43;
  v199 = v12;
  v44 = *(v43 + 20);
  v45 = *(v30 + 48);
  v189 = a1;
  sub_1C3EF1A60(a1 + v44, v42, &qword_1EC08F218, &qword_1C4041840);
  v46 = v203 + v44;
  v47 = v199;
  sub_1C3EF1A60(v46, &v42[v45], &qword_1EC08F218, &qword_1C4041840);
  v48 = *(v13 + 48);
  v49 = v13;
  if (v48(v42, 1, v47) == 1)
  {
    if (v48(&v42[v45], 1, v47) == 1)
    {
      v184 = v48;
      v50 = (v13 + 48);
      v185 = v13;
      sub_1C3EED388(v42, &qword_1EC08F218, &qword_1C4041840);
      v51 = v47;
      goto LABEL_9;
    }

LABEL_7:
    v52 = &qword_1EC090420;
    v53 = &unk_1C4054100;
    v54 = v42;
LABEL_22:
    sub_1C3EED388(v54, v52, v53);
    return 0;
  }

  sub_1C3EF1A60(v42, v29, &qword_1EC08F218, &qword_1C4041840);
  if (v48(&v42[v45], 1, v47) == 1)
  {
    (*(v13 + 8))(v29, v47);
    goto LABEL_7;
  }

  v184 = v48;
  v50 = (v13 + 48);
  v55 = *(v13 + 32);
  v56 = v186;
  v55(v186, &v42[v45], v47);
  sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
  v57 = sub_1C4031180();
  v185 = v49;
  v58 = v49;
  v51 = v47;
  v59 = *(v58 + 8);
  v59(v56, v47);
  v59(v29, v47);
  sub_1C3EED388(v42, &qword_1EC08F218, &qword_1C4041840);
  if ((v57 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v60 = v187;
  v61 = v188[6];
  v62 = *(v187 + 48);
  sub_1C3EF1A60(v189 + v61, v40, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EF1A60(v203 + v61, &v40[v62], &qword_1EC08F218, &qword_1C4041840);
  v63 = v184;
  v64 = v51;
  if (v184(v40, 1, v51) == 1)
  {
    v65 = v63;
    v66 = v63(&v40[v62], 1, v51);
    v67 = v185;
    if (v66 == 1)
    {
      sub_1C3EED388(v40, &qword_1EC08F218, &qword_1C4041840);
      goto LABEL_16;
    }

LABEL_14:
    v52 = &qword_1EC090420;
    v53 = &unk_1C4054100;
    v54 = v40;
    goto LABEL_22;
  }

  sub_1C3EF1A60(v40, v27, &qword_1EC08F218, &qword_1C4041840);
  v65 = v63;
  v68 = v63(&v40[v62], 1, v51);
  v67 = v185;
  if (v68 == 1)
  {
    (*(v185 + 8))(v27, v64);
    goto LABEL_14;
  }

  v69 = v186;
  (*(v185 + 32))(v186, &v40[v62], v64);
  sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
  v70 = sub_1C4031180();
  v71 = *(v67 + 8);
  v72 = v69;
  v60 = v187;
  v71(v72, v64);
  v71(v27, v64);
  sub_1C3EED388(v40, &qword_1EC08F218, &qword_1C4041840);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v185 = v67;
  v73 = v64;
  v74 = v188;
  v75 = v188[7];
  v76 = *(v60 + 48);
  v77 = v202;
  sub_1C3EF1A60(v189 + v75, v202, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EF1A60(v203 + v75, v77 + v76, &qword_1EC08F218, &qword_1C4041840);
  if (v65(v77, 1, v73) == 1)
  {
    if (v65(v77 + v76, 1, v73) == 1)
    {
      v184 = v50;
      sub_1C3EED388(v77, &qword_1EC08F218, &qword_1C4041840);
      v73 = v199;
      goto LABEL_26;
    }

LABEL_21:
    v52 = &qword_1EC090420;
    v53 = &unk_1C4054100;
    v54 = v77;
    goto LABEL_22;
  }

  v78 = v201;
  sub_1C3EF1A60(v77, v201, &qword_1EC08F218, &qword_1C4041840);
  if (v65(v77 + v76, 1, v73) == 1)
  {
    (*(v185 + 8))(v78, v73);
    goto LABEL_21;
  }

  v184 = v50;
  v80 = v185;
  v81 = v186;
  (*(v185 + 32))(v186, v77 + v76, v73);
  sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
  v82 = sub_1C4031180();
  v83 = *(v80 + 8);
  v84 = v81;
  v74 = v188;
  v83(v84, v73);
  v83(v78, v73);
  sub_1C3EED388(v77, &qword_1EC08F218, &qword_1C4041840);
  if ((v82 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v85 = v74[8];
  v86 = *(v60 + 48);
  v40 = v200;
  sub_1C3EF1A60(v189 + v85, v200, &qword_1EC08F218, &qword_1C4041840);
  v87 = v203 + v85;
  v88 = v203;
  sub_1C3EF1A60(v87, &v40[v86], &qword_1EC08F218, &qword_1C4041840);
  if (v65(v40, 1, v73) == 1)
  {
    if (v65(&v40[v86], 1, v73) == 1)
    {
      v89 = v65;
      sub_1C3EED388(v40, &qword_1EC08F218, &qword_1C4041840);
      goto LABEL_32;
    }

    goto LABEL_14;
  }

  v90 = v198;
  sub_1C3EF1A60(v40, v198, &qword_1EC08F218, &qword_1C4041840);
  if (v65(&v40[v86], 1, v73) == 1)
  {
    (*(v185 + 8))(v90, v73);
    goto LABEL_14;
  }

  v91 = v185;
  v92 = v186;
  (*(v185 + 32))(v186, &v40[v86], v73);
  sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
  v93 = sub_1C4031180();
  v94 = *(v91 + 8);
  v95 = v92;
  v88 = v203;
  v94(v95, v73);
  v94(v90, v73);
  sub_1C3EED388(v40, &qword_1EC08F218, &qword_1C4041840);
  v89 = v65;
  if ((v93 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v97 = v188;
  v96 = v189;
  if (*(v189 + v188[9]) != *(v88 + v188[9]) || *(v189 + v188[10]) != *(v88 + v188[10]))
  {
    return 0;
  }

  v98 = v188[11];
  v99 = (v189 + v98);
  v100 = *(v189 + v98 + 8);
  v101 = (v88 + v98);
  v102 = v101[1];
  if (v100)
  {
    if (!v102 || (*v99 != *v101 || v100 != v102) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v102)
  {
    return 0;
  }

  v103 = v97[12];
  v104 = (v96 + v103);
  v105 = *(v96 + v103 + 8);
  v106 = (v88 + v103);
  v107 = v106[1];
  if (v105)
  {
    if (!v107 || (*v104 != *v106 || v105 != v107) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  if (*(v96 + v97[13]) != *(v88 + v97[13]))
  {
    return 0;
  }

  v108 = v97[14];
  if ((sub_1C4030950() & 1) == 0)
  {
    return 0;
  }

  v109 = v185;
  if (*(v96 + v97[15]) != *(v88 + v97[15]) || *(v96 + v97[16]) != *(v88 + v97[16]) || *(v189 + v188[17]) != *(v203 + v188[17]) || *(v189 + v188[18]) != *(v203 + v188[18]))
  {
    return 0;
  }

  v110 = v188[19];
  v111 = *(v193 + 48);
  v112 = v197;
  sub_1C3EF1A60(v189 + v110, v197, &qword_1EC08F130, &qword_1C4038450);
  sub_1C3EF1A60(v203 + v110, v112 + v111, &qword_1EC08F130, &qword_1C4038450);
  v113 = *(v195 + 48);
  if (v113(v112, 1, v196) == 1)
  {
    if (v113(v197 + v111, 1, v196) == 1)
    {
      sub_1C3EED388(v197, &qword_1EC08F130, &qword_1C4038450);
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v114 = v197;
  sub_1C3EF1A60(v197, v194, &qword_1EC08F130, &qword_1C4038450);
  if (v113(v114 + v111, 1, v196) == 1)
  {
    (*(v195 + 8))(v194, v196);
LABEL_59:
    v52 = &qword_1EC090418;
    v53 = &qword_1C403D110;
    v54 = v197;
    goto LABEL_22;
  }

  v115 = v195;
  v116 = v197;
  v117 = v197 + v111;
  v118 = v192;
  v119 = v196;
  (*(v195 + 32))(v192, v117, v196);
  sub_1C3F3F528(&qword_1EC090428, MEMORY[0x1E6968FB0]);
  v120 = v194;
  v121 = sub_1C4031180();
  v122 = *(v115 + 8);
  v122(v118, v119);
  v122(v120, v119);
  sub_1C3EED388(v116, &qword_1EC08F130, &qword_1C4038450);
  if ((v121 & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  v123 = v188[20];
  v124 = (v189 + v123);
  v125 = *(v189 + v123 + 8);
  v126 = (v203 + v123);
  v127 = v126[1];
  if (v125)
  {
    if (!v127 || (*v124 != *v126 || v125 != v127) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v127)
  {
    return 0;
  }

  if (*(v189 + v188[21]) != *(v203 + v188[21]))
  {
    return 0;
  }

  v128 = v188[22];
  v129 = (v189 + v128);
  v130 = *(v189 + v128 + 8);
  v131 = (v203 + v128);
  v132 = v131[1];
  if (v130)
  {
    if (!v132 || (*v129 != *v131 || v130 != v132) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v132)
  {
    return 0;
  }

  if (*(v189 + v188[23]) != *(v203 + v188[23]))
  {
    return 0;
  }

  if (*(v189 + v188[24]) != *(v203 + v188[24]))
  {
    return 0;
  }

  v133 = v188[25];
  v134 = *(v189 + v133 + 8);
  v206 = *(v189 + v133);
  v207 = v134;
  v135 = (v203 + v133);
  v137 = v135[1];
  v204 = *v135;
  v136 = v204;
  v205 = v137;
  sub_1C3F16304(v206, v134);
  sub_1C3F16304(v136, v137);
  LOBYTE(v136) = _s11CallHistory15ServiceProviderO2eeoiySbAC_ACtFZ_0(&v206, &v204);
  sub_1C3F17D70(v204, v205);
  sub_1C3F17D70(v206, v207);
  if ((v136 & 1) == 0 || *(v189 + v188[26]) != *(v203 + v188[26]) || *(v189 + v188[27]) != *(v203 + v188[27]) || *(v189 + v188[28]) != *(v203 + v188[28]) || *(v189 + v188[29]) != *(v203 + v188[29]) || *(v189 + v188[30]) != *(v203 + v188[30]))
  {
    return 0;
  }

  v138 = v188[31];
  v139 = (v189 + v138);
  v140 = *(v189 + v138 + 8);
  v141 = (v203 + v138);
  v142 = v141[1];
  if (v140)
  {
    if (!v142 || (*v139 != *v141 || v140 != v142) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v142)
  {
    return 0;
  }

  v143 = v188[32];
  v144 = (v189 + v143);
  v145 = *(v189 + v143 + 8);
  v146 = (v203 + v143);
  v147 = v146[1];
  if (v145)
  {
    if (!v147 || (*v144 != *v146 || v145 != v147) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v147)
  {
    return 0;
  }

  v148 = v188[33];
  v149 = (v189 + v148);
  v150 = *(v189 + v148 + 8);
  v151 = (v203 + v148);
  v152 = v151[1];
  if (v150)
  {
    if (!v152 || (*v149 != *v151 || v150 != v152) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v152)
  {
    return 0;
  }

  if (*(v189 + v188[34]) != *(v203 + v188[34]) || *(v189 + v188[35]) != *(v203 + v188[35]))
  {
    return 0;
  }

  v153 = v188[36];
  v154 = *(v187 + 48);
  v155 = v190;
  sub_1C3EF1A60(v189 + v153, v190, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EF1A60(v203 + v153, v155 + v154, &qword_1EC08F218, &qword_1C4041840);
  if (v89(v155, 1, v199) == 1)
  {
    if (v89(v190 + v154, 1, v199) == 1)
    {
      sub_1C3EED388(v190, &qword_1EC08F218, &qword_1C4041840);
      goto LABEL_114;
    }

    goto LABEL_112;
  }

  v156 = v190;
  sub_1C3EF1A60(v190, v191, &qword_1EC08F218, &qword_1C4041840);
  if (v89(v156 + v154, 1, v199) == 1)
  {
    (*(v109 + 8))(v191, v199);
LABEL_112:
    v52 = &qword_1EC090420;
    v53 = &unk_1C4054100;
    v54 = v190;
    goto LABEL_22;
  }

  v157 = v109;
  v158 = *(v109 + 32);
  v159 = v190;
  v160 = v190 + v154;
  v161 = v186;
  v162 = v199;
  v158(v186, v160, v199);
  sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
  v163 = v191;
  v164 = sub_1C4031180();
  v165 = *(v157 + 8);
  v165(v161, v162);
  v165(v163, v162);
  sub_1C3EED388(v159, &qword_1EC08F218, &qword_1C4041840);
  if ((v164 & 1) == 0)
  {
    return 0;
  }

LABEL_114:
  if ((sub_1C3F38C14(*(v189 + v188[37]), *(v203 + v188[37])) & 1) == 0)
  {
    return 0;
  }

  v166 = v188[38];
  v168 = *(v189 + v166);
  v167 = *(v189 + v166 + 8);
  v169 = *(v189 + v166 + 16);
  v202 = *(v189 + v166 + 24);
  v170 = *(v189 + v166 + 32);
  v171 = (v203 + v166);
  v173 = *v171;
  v172 = v171[1];
  v174 = v171[2];
  v175 = v171[3];
  v176 = v171[4];
  if (v169)
  {
    if (v174)
    {
      if (v173 == v168 && (v167 == v172 && v169 == v174 || (sub_1C4031BF0() & 1) != 0))
      {
        if (!v170)
        {
          sub_1C3F3F4E4(v168, v167, v169);
          if (!v176)
          {
            sub_1C3F3F4E4(v173, v172, v174);
            sub_1C3F3F4E4(v168, v167, v169);
            v180 = v173;
            v181 = v172;
            v182 = v174;
            goto LABEL_137;
          }

          goto LABEL_119;
        }

        if (v176)
        {
          if (v202 == v175 && v170 == v176)
          {
            sub_1C3F3F4E4(v168, v167, v169);
            sub_1C3F3F4E4(v173, v172, v174);
            sub_1C3F3F4E4(v168, v167, v169);
            v180 = v173;
            v181 = v172;
            v182 = v174;
LABEL_137:
            sub_1C3F3F400(v180, v181, v182);
LABEL_139:

            goto LABEL_140;
          }

          LODWORD(v201) = sub_1C4031BF0();
          sub_1C3F3F4E4(v168, v167, v169);
          sub_1C3F3F4E4(v173, v172, v174);
          sub_1C3F3F4E4(v168, v167, v169);
          sub_1C3F3F400(v173, v172, v174);
          if (v201)
          {
            goto LABEL_139;
          }

          goto LABEL_120;
        }
      }

      sub_1C3F3F4E4(v168, v167, v169);
LABEL_119:
      sub_1C3F3F4E4(v173, v172, v174);
      sub_1C3F3F4E4(v168, v167, v169);
      sub_1C3F3F400(v173, v172, v174);
LABEL_120:

      v177 = v168;
      v178 = v167;
      v179 = v169;
LABEL_125:
      sub_1C3F3F400(v177, v178, v179);
      return 0;
    }

    sub_1C3F3F4E4(v168, v167, v169);
    sub_1C3F3F4E4(v173, v172, 0);
    sub_1C3F3F4E4(v168, v167, v169);

LABEL_124:
    sub_1C3F3F400(v168, v167, v169);
    v177 = v173;
    v178 = v172;
    v179 = v174;
    goto LABEL_125;
  }

  sub_1C3F3F4E4(v168, v167, 0);
  if (v174)
  {
    sub_1C3F3F4E4(v173, v172, v174);
    goto LABEL_124;
  }

  sub_1C3F3F4E4(v173, v172, 0);
  v169 = 0;
LABEL_140:
  sub_1C3F3F400(v168, v167, v169);
  if (sub_1C3F38EB4(*(v189 + v188[39]), *(v203 + v188[39])) & 1) != 0 && (sub_1C3F22158(*(v189 + v188[40]), *(v203 + v188[40])))
  {
    return *(v189 + v188[41]) == *(v203 + v188[41]);
  }

  return 0;
}

uint64_t sub_1C3F3F148(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C40317E0())
  {
    v12 = sub_1C3F03800(0, a2, a3);
    v13 = sub_1C3F3F2A0(a4, a2, a3);
    result = MEMORY[0x1C69331E0](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x1C6933590](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_1C40317E0();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C3F3F2A0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C3F03800(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3F3F2F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3F3F358(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C3F3FE30();
  result = MEMORY[0x1C69331E0](v2, &type metadata for Handle, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v9[0] = *v5;
      v9[1] = v6;
      v10 = *(v5 + 32);
      sub_1C3F2AF14(v9, v7);
      sub_1C4026108(v7, v9);

      v5 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C3F3F400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C3F3F444(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C3F3FF30();
  result = MEMORY[0x1C69331E0](v2, &type metadata for EmergencyMediaItem, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      sub_1C4025F68(&v9, v8, v7, v6);

      v5 += 24;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1C3F3F4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C3F3F528(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C3F3F570()
{
  result = qword_1EC090310;
  if (!qword_1EC090310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090310);
  }

  return result;
}

unint64_t sub_1C3F3F5C4()
{
  result = qword_1EC090320;
  if (!qword_1EC090320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090320);
  }

  return result;
}

unint64_t sub_1C3F3F618()
{
  result = qword_1EC090328;
  if (!qword_1EC090328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090328);
  }

  return result;
}

uint64_t sub_1C3F3F66C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090340, &qword_1C403CDC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3F3F6E4()
{
  result = qword_1EC090350;
  if (!qword_1EC090350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090350);
  }

  return result;
}

unint64_t sub_1C3F3F738()
{
  result = qword_1EC08EE30;
  if (!qword_1EC08EE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EE28, &qword_1C403D780);
    sub_1C3F3F528(&qword_1EC08ED90, type metadata accessor for RecentCall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE30);
  }

  return result;
}

unint64_t sub_1C3F3F7EC()
{
  result = qword_1EC090358;
  if (!qword_1EC090358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090358);
  }

  return result;
}

unint64_t sub_1C3F3F840()
{
  result = qword_1EC090378;
  if (!qword_1EC090378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090378);
  }

  return result;
}

unint64_t sub_1C3F3F894()
{
  result = qword_1EC090380;
  if (!qword_1EC090380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090380);
  }

  return result;
}

uint64_t sub_1C3F3F8E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090330, &qword_1C403CDB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3F3F960()
{
  result = qword_1EC090398;
  if (!qword_1EC090398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090398);
  }

  return result;
}

unint64_t sub_1C3F3F9B4()
{
  result = qword_1EC08EE20;
  if (!qword_1EC08EE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EE28, &qword_1C403D780);
    sub_1C3F3F528(&qword_1EC08ED78, type metadata accessor for RecentCall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE20);
  }

  return result;
}

unint64_t sub_1C3F3FA68()
{
  result = qword_1EC0903A0;
  if (!qword_1EC0903A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0903A0);
  }

  return result;
}

void sub_1C3F3FB2C()
{
  sub_1C40309F0();
  if (v0 <= 0x3F)
  {
    sub_1C3F3FF84(319, &qword_1EC0903C0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C3F3FE84(319, &qword_1EC08F8B0);
      if (v2 <= 0x3F)
      {
        sub_1C4030980();
        if (v3 <= 0x3F)
        {
          sub_1C3F3FF84(319, &qword_1EC0903C8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C3F3FED0(319, &qword_1EC0903D0, sub_1C3F3FE30);
            if (v5 <= 0x3F)
            {
              sub_1C3F3FE84(319, &qword_1EC0903E0);
              if (v6 <= 0x3F)
              {
                sub_1C3F3FED0(319, &qword_1EC0903E8, sub_1C3F3FF30);
                if (v7 <= 0x3F)
                {
                  sub_1C3F3FF84(319, &qword_1EC0903F8, type metadata accessor for RecentCall, MEMORY[0x1E69E62F8]);
                  if (v8 <= 0x3F)
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

unint64_t sub_1C3F3FE30()
{
  result = qword_1EC0903D8;
  if (!qword_1EC0903D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0903D8);
  }

  return result;
}

void sub_1C3F3FE84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C40316A0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C3F3FED0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1C4031550();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C3F3FF30()
{
  result = qword_1EC0903F0;
  if (!qword_1EC0903F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0903F0);
  }

  return result;
}

void sub_1C3F3FF84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for RecentCall.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

  if (a2 + 37 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 37) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecentCall.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C3F4013C()
{
  result = qword_1EC090400;
  if (!qword_1EC090400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090400);
  }

  return result;
}

unint64_t sub_1C3F40194()
{
  result = qword_1EC090408;
  if (!qword_1EC090408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090408);
  }

  return result;
}

unint64_t sub_1C3F401EC()
{
  result = qword_1EC090410;
  if (!qword_1EC090410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090410);
  }

  return result;
}

uint64_t sub_1C3F40240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4031BF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974 || (sub_1C4031BF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C4057120 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001C4057140 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C4056FB0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44664F7365747962 && a2 == 0xEF64657355617461 || (sub_1C4031BF0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C4057160 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4057180 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C40571A0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746174536C6C6163 && a2 == 0xEA00000000007375 || (sub_1C4031BF0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C40571C0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C40571E0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x617373654D736168 && a2 == 0xEA00000000006567 || (sub_1C4031BF0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x4C52556567616D69 && a2 == 0xE800000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972 || (sub_1C4031BF0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x666E6F436B6E756ALL && a2 == 0xEE0065636E656469 || (sub_1C4031BF0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C4057200 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1C4031BF0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x646165527369 && a2 == 0xE600000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x5065636976726573 && a2 == 0xEF72656469766F72 || (sub_1C4031BF0() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x65707954797474 && a2 == 0xE700000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C4057220 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C4057240 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001C4057260 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4057280 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C40572A0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C40572C0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C40572E0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C4057300 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C4057320 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEC00000044495555 || (sub_1C4031BF0() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C4056E60 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x6F74616974696E69 && a2 == 0xE900000000000072 || (sub_1C4031BF0() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C4057340 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x656373656C616F63 && a2 == 0xEE00736C6C614364 || (sub_1C4031BF0() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C4057360 == a2)
  {

    return 37;
  }

  else
  {
    v6 = sub_1C4031BF0();

    if (v6)
    {
      return 37;
    }

    else
    {
      return 38;
    }
  }
}

uint64_t sub_1C3F40DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3F40E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C3F40EA8()
{
  result = qword_1EC090440;
  if (!qword_1EC090440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F218, &qword_1C4041840);
    sub_1C3F3F528(&qword_1EC08F0B0, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090440);
  }

  return result;
}

unint64_t sub_1C3F40F5C()
{
  result = qword_1EC090448;
  if (!qword_1EC090448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F130, &qword_1C4038450);
    sub_1C3F3F528(&qword_1EC090370, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090448);
  }

  return result;
}

unint64_t sub_1C3F41010()
{
  result = qword_1EC090450;
  if (!qword_1EC090450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FFD0, &qword_1C403C460);
    sub_1C3F3F528(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090450);
  }

  return result;
}

unint64_t sub_1C3F410C4()
{
  result = qword_1EC090458;
  if (!qword_1EC090458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090460, &qword_1C403D6F0);
    sub_1C3F3F528(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090458);
  }

  return result;
}

uint64_t sub_1C3F41178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EFF0, &qword_1C40381E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3F412A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090478, &qword_1C403D888);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v5[3] = v0;
  v5[4] = &off_1EEB06AE8;
  v5[0] = sub_1C4030DE0();
  type metadata accessor for CallHistoryStoreClient();
  v3 = swift_allocObject();
  sub_1C3F2C800(v5, v3 + 16);
  sub_1C4030DA0();
  __swift_destroy_boxed_opaque_existential_1(v5);
  type metadata accessor for CallHistoryManager();
  result = swift_allocObject();
  *(result + 16) = v3;
  qword_1EC090470 = result;
  return result;
}

uint64_t static CallHistoryManager.shared.getter()
{
  if (qword_1EC08EB58 != -1)
  {
    swift_once();
  }
}

uint64_t CallHistoryManager.saveCalls(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C3F413E4, 0, 0);
}

uint64_t sub_1C3F413E4()
{
  v1 = v0[3];
  v2 = *(v0[4] + 16);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v0[2] = v1;
  v5 = *(v4 + 64);

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  v8 = sub_1C3EEB4F0();
  *v7 = v0;
  v7[1] = sub_1C3F41550;

  return (v10)(v0 + 2, &type metadata for SaveCalls, v8, v3, v4);
}

uint64_t sub_1C3F41550()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(v4 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3F4523C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

void *CallHistoryManager.getCalls(with:coalescingStrategy:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(v2 + 16);
  v5 = *a2;
  return sub_1C3EE47AC(a1, &v5);
}

uint64_t CallHistoryManager.getCallsStream(fetchRequest:pageSize:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F220, &qword_1C4038680);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  v10 = v1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8790], v3);
  return sub_1C40314E0();
}

uint64_t sub_1C3F417F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CallFetchRequest();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v22 - v15;
  v17 = sub_1C40314B0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1C3F45174(v22, v12, type metadata accessor for CallFetchRequest);
  (*(v5 + 16))(v8, v23, v4);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a2;
  sub_1C3EF19F8(v12, &v20[v18], type metadata accessor for CallFetchRequest);
  (*(v5 + 32))(&v20[v19], v8, v4);

  sub_1C3F41DFC(0, 0, v16, &unk_1C403D878, v20);
}

uint64_t sub_1C3F41AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A0, &qword_1C403D880);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  Calls = type metadata accessor for GetCalls(0);
  v6[10] = Calls;
  v11 = *(*(Calls - 8) + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3F41BB0, 0, 0);
}

uint64_t sub_1C3F41BB0()
{
  v17 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  v4 = *(v0[4] + 16);
  v5 = v4[5];
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v5);
  sub_1C3F45174(v3, v2, type metadata accessor for CallFetchRequest);
  v7 = *(v6 + 40);
  v8 = sub_1C3F4512C(&qword_1EC08EBE8, type metadata accessor for GetCalls);
  v7(v2, v1, v8, v5, v6);
  sub_1C3F451DC(v0[11], type metadata accessor for GetCalls);
  v16 = v0[2];

  sub_1C3F432BC(&v16);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[6];
  v14 = v0[7];

  v0[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860);
  sub_1C40314C0();
  (*(v12 + 8))(v11, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1C3F41DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1C3F45054(a3, v24 - v10);
  v12 = sub_1C40314B0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C3F450C4(v11);
  }

  else
  {
    sub_1C40314A0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C4031450();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C4031240() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1C3F450C4(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C3F450C4(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t CallHistoryManager.getCallCount(with:)(uint64_t a1)
{
  v4 = type metadata accessor for GetCallCount(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
  sub_1C3F45174(a1, v7, type metadata accessor for CallFetchRequest);
  v11 = *(v10 + 40);
  v12 = sub_1C3F4512C(&qword_1EC08EEC0, type metadata accessor for GetCallCount);
  v11(&v15, v7, v4, v12, v9, v10);
  result = sub_1C3F451DC(v7, type metadata accessor for GetCallCount);
  if (!v2)
  {
    return v15;
  }

  return result;
}

uint64_t CallHistoryManager.updateCalls(with:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C3F421E4, 0, 0);
}

uint64_t sub_1C3F421E4()
{
  v1 = v0[3];
  v2 = *(v0[4] + 16);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v0[2] = v1;
  v5 = *(v4 + 64);

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  v8 = sub_1C3EEB6F0();
  *v7 = v0;
  v7[1] = sub_1C3F42350;

  return (v10)(v0 + 2, &type metadata for UpdateCalls, v8, v3, v4);
}

uint64_t sub_1C3F42350()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(v4 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3F08664, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t CallHistoryManager.deleteCalls(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3F424C4, 0, 0);
}

uint64_t sub_1C3F424C4()
{
  v1 = v0[5];
  v2 = *(v0[4] + 16);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v0[3] = v1;
  v5 = *(v4 + 56);
  sub_1C3EE61B4(v1);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  v8 = sub_1C3EE61E4();
  *v7 = v0;
  v7[1] = sub_1C3EE4B28;

  return (v10)(v0 + 2, v0 + 3, &type metadata for DeleteCalls, v8, v3, v4);
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallHistoryManager.estimateDatabaseSize(temporary:)(Swift::Bool temporary)
{
  v2 = type metadata accessor for GetCallCount(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CallFetchRequest();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v28 - v11;
  sub_1C40309E0();
  *&v10[*(v6 + 20)] = 0xF000000000000000;
  v13 = [objc_allocWithZone(MEMORY[0x1E698E740]) init];
  v14 = [v13 bundleIdentifier];

  if (v14)
  {
    v15 = sub_1C40311C0();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = &v10[*(v6 + 24)];
  *v18 = v15;
  v18[1] = v17;
  sub_1C3EF19F8(v10, v12, type metadata accessor for CallFetchRequest);
  v19 = *(v1 + 16);
  v20 = v19[5];
  v21 = v19[6];
  __swift_project_boxed_opaque_existential_1(v19 + 2, v20);
  sub_1C3F45174(v12, v5, type metadata accessor for CallFetchRequest);
  v22 = *(v21 + 40);
  v23 = sub_1C3F4512C(&qword_1EC08EEC0, type metadata accessor for GetCallCount);
  v24 = v28[1];
  v22(&v29, v5, v2, v23, v20, v21);
  sub_1C3F451DC(v5, type metadata accessor for GetCallCount);
  result = sub_1C3F451DC(v12, type metadata accessor for CallFetchRequest);
  if (!v24)
  {
    v26 = v29;
    v27 = *(*(type metadata accessor for RecentCall() - 8) + 72);
    result = v27 * v26;
    if ((v27 * v26) >> 64 != (v27 * v26) >> 63)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t CallHistoryManager.markCallsAsRead(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3F42918, 0, 0);
}

uint64_t sub_1C3F42918()
{
  v1 = v0[4];
  v2 = *(v0[3] + 16);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v0[2] = v1;
  v5 = *(v4 + 64);
  sub_1C3EE61B4(v1);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  v8 = sub_1C3EEBAC0();
  *v7 = v0;
  v7[1] = sub_1C3F42A84;

  return (v10)(v0 + 2, &type metadata for MarkCallsAsRead, v8, v3, v4);
}

uint64_t sub_1C3F42A84()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  sub_1C3EE6238(v3[2]);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3F4523C, 0, 0);
  }

  else
  {
    v4 = v3[1];

    return v4();
  }
}

uint64_t CallHistoryManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CallHistoryManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C3F42C18(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3EE7A84;

  return CallHistoryManager.saveCalls(_:)(a1);
}

void *sub_1C3F42CB0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(*v2 + 16);
  v5 = *a2;
  return sub_1C3EE47AC(a1, &v5);
}

uint64_t sub_1C3F42CE4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F220, &qword_1C4038680);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  v10 = *v1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8790], v3);
  return sub_1C40314E0();
}

uint64_t sub_1C3F42E10(uint64_t a1)
{
  v4 = type metadata accessor for GetCallCount(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 16);
  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
  sub_1C3F45174(a1, v7, type metadata accessor for CallFetchRequest);
  v11 = *(v10 + 40);
  v12 = sub_1C3F4512C(&qword_1EC08EEC0, type metadata accessor for GetCallCount);
  v11(&v15, v7, v4, v12, v9, v10);
  result = sub_1C3F451DC(v7, type metadata accessor for GetCallCount);
  if (!v2)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1C3F42F70(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3EE4204;

  return CallHistoryManager.updateCalls(with:)(a1);
}

uint64_t sub_1C3F43008(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = *v1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3F43030, 0, 0);
}

uint64_t sub_1C3F43030()
{
  v1 = *(v0[3] + 16);
  v0[2] = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1C3F430D0;

  return sub_1C3EE4998(v0 + 2);
}

uint64_t sub_1C3F430D0(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(v5 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3F08664, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1C3F43224(uint64_t *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3EE7A84;

  return CallHistoryManager.markCallsAsRead(with:)(a1);
}

uint64_t sub_1C3F432BC(void **a1)
{
  v2 = *(type metadata accessor for RecentCall() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C3F15350(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C3F43364(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1C3F43364(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4031BA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for RecentCall();
        v6 = sub_1C4031420();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for RecentCall() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C3F436F4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C3F43490(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C3F43490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for RecentCall();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1C3F45174(v24, v18, type metadata accessor for RecentCall);
      sub_1C3F45174(v21, v14, type metadata accessor for RecentCall);
      v25 = *(v8 + 56);
      v26 = sub_1C4030940();
      sub_1C3F451DC(v14, type metadata accessor for RecentCall);
      result = sub_1C3F451DC(v18, type metadata accessor for RecentCall);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1C3EF19F8(v24, v37, type metadata accessor for RecentCall);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1C3EF19F8(v27, v21, type metadata accessor for RecentCall);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F436F4(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for RecentCall();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v119 = &v104 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v120 = &v104 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_1C3F44058(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1C3F14D78(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_1C3F14CEC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_1C3F14D78(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_1C3F45174(v114 + v25 * v24, v19, type metadata accessor for RecentCall);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_1C3F45174(v27, v120, type metadata accessor for RecentCall);
      v30 = *(v9 + 56);
      LODWORD(v115) = sub_1C4030940();
      sub_1C3F451DC(v29, type metadata accessor for RecentCall);
      result = sub_1C3F451DC(v19, type metadata accessor for RecentCall);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_1C3F45174(v32, v19, type metadata accessor for RecentCall);
        v33 = v120;
        sub_1C3F45174(v5, v120, type metadata accessor for RecentCall);
        v34 = *(v121 + 56);
        v35 = sub_1C4030940() & 1;
        sub_1C3F451DC(v33, type metadata accessor for RecentCall);
        result = sub_1C3F451DC(v19, type metadata accessor for RecentCall);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_1C3EF19F8(v42 + v41, v111, type metadata accessor for RecentCall);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1C3EF19F8(v111, v42 + v36, type metadata accessor for RecentCall);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_1C3F45174(v5, v19, type metadata accessor for RecentCall);
    v96 = v120;
    sub_1C3F45174(v93, v120, type metadata accessor for RecentCall);
    v97 = *(v9 + 56);
    a4 = sub_1C4030940();
    sub_1C3F451DC(v96, type metadata accessor for RecentCall);
    result = sub_1C3F451DC(v19, type metadata accessor for RecentCall);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_1C3EFFD7C(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_1C3EFFD7C((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_1C3F44058(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_1C3F14D78(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_1C3F14CEC(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for RecentCall;
    v98 = v119;
    sub_1C3EF19F8(v5, v119, type metadata accessor for RecentCall);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C3EF19F8(v98, v93, type metadata accessor for RecentCall);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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

uint64_t sub_1C3F44058(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for RecentCall();
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_1C3F45174(v33, v47, type metadata accessor for RecentCall);
          v35 = v48;
          sub_1C3F45174(v29, v48, type metadata accessor for RecentCall);
          v36 = *(v31 + 56);
          v37 = sub_1C4030940();
          sub_1C3F451DC(v35, type metadata accessor for RecentCall);
          sub_1C3F451DC(v34, type metadata accessor for RecentCall);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_1C3F45174(a2, v47, type metadata accessor for RecentCall);
        v22 = v48;
        sub_1C3F45174(a4, v48, type metadata accessor for RecentCall);
        v23 = *(v49 + 56);
        v24 = sub_1C4030940();
        sub_1C3F451DC(v22, type metadata accessor for RecentCall);
        sub_1C3F451DC(v21, type metadata accessor for RecentCall);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_1C3F44588(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_1C3F44588(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for RecentCall();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1C3F4466C(char a1)
{
  v3 = sub_1C4030770();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4030910();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1C402C604(v11);
  }

  else
  {
    sub_1C402BF1C(v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F240, &qword_1C40386A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C40385D0;
  v13 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v14 = v13;
  sub_1C3F0326C(inited);
  swift_setDeallocating();
  sub_1C3F451DC(inited + 32, type metadata accessor for URLResourceKey);
  v15 = v11;
  sub_1C40308B0();
  if (v1)
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {

    v16 = sub_1C4030760();
    if (v17)
    {
      if (qword_1EC08EB80 != -1)
      {
        swift_once();
      }

      v18 = sub_1C4030D10();
      __swift_project_value_buffer(v18, qword_1EC0B0CF8);
      v19 = sub_1C4030CF0();
      v20 = sub_1C40315C0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        MEMORY[0x1C6934650](v21, -1, -1);
      }

      v15 = 0;
    }

    else
    {
      v15 = v16;
    }

    (*(v24 + 8))(v6, v3);
    (*(v8 + 8))(v11, v7);
  }

  return v15;
}

uint64_t dispatch thunk of CallHistoryManagerProtocol.saveCalls(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C3EE7A84;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryManagerProtocol.updateCalls(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C3EE4204;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryManagerProtocol.deleteCalls(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C3EEB800;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryManagerProtocol.markCallsAsRead(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C3EE7A84;

  return v11(a1, a2, a3);
}

uint64_t sub_1C3F44EE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CallFetchRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1C3EE7A84;

  return sub_1C3F41AB0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1C3F45054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3F450C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3F4512C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F45174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3F451DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3F452D4(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_1C3F158C4(&unk_1F4387368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090290, &qword_1C403D890);
  result = swift_arrayDestroy();
  v4 = 0;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v4;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v9 << 6);
    if (*(*(v2 + 56) + v11) == v1)
    {
      v12 = (*(v2 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_1C4031310();

      if (v15)
      {
        v16 = sub_1C3F0BAF4(1uLL, v14, v13);
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v14 = MEMORY[0x1C6932F10](v16, v18, v20, v22);
        v24 = v23;
      }

      else
      {
        v24 = v13;
      }

      MEMORY[0x1C6932F70](v14, v24);

      return 46;
    }
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v2 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_10;
    }
  }

  v25 = sub_1C4031BB0();
  v27 = v26;
  if (sub_1C4031310())
  {
    v28 = sub_1C3F0BAF4(1uLL, v25, v27);
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v25 = MEMORY[0x1C6932F10](v28, v30, v32, v34);
  }

  return v25;
}

uint64_t sub_1C3F45598(unsigned __int8 a1, void *a2, uint64_t *a3)
{
  v3 = a1;
  if (*a2 != -1)
  {
LABEL_20:
    v37 = a3;
    swift_once();
    a3 = v37;
  }

  v4 = 0;
  v5 = *a3;
  v6 = 1 << *(*a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v4;
LABEL_11:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v10 << 6);
    if (*(*(v5 + 56) + v12) == v3)
    {
      v13 = (*(v5 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];

      v16 = sub_1C4031310();

      if (v16)
      {
        v17 = sub_1C3F0BAF4(1uLL, v15, v14);
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v15 = MEMORY[0x1C6932F10](v17, v19, v21, v23);
        v25 = v24;
      }

      else
      {
        v25 = v14;
      }

      MEMORY[0x1C6932F70](v15, v25);

      return 46;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(*a3 + 64 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_11;
    }
  }

  v26 = sub_1C4031BB0();
  v28 = v27;
  if (sub_1C4031310())
  {
    v29 = sub_1C3F0BAF4(1uLL, v26, v28);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v26 = MEMORY[0x1C6932F10](v29, v31, v33, v35);
  }

  return v26;
}

uint64_t sub_1C3F457F4(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
LABEL_20:
    v36 = a1;
    v37 = a3;
    swift_once();
    a3 = v37;
    a1 = v36;
  }

  v3 = 0;
  v4 = *a3;
  v5 = 1 << *(*a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_11:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v9 << 6);
    if (*(*(v4 + 56) + v11) == (a1 & 1))
    {
      v12 = (*(v4 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_1C4031310();

      if (v15)
      {
        v16 = sub_1C3F0BAF4(1uLL, v14, v13);
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v14 = MEMORY[0x1C6932F10](v16, v18, v20, v22);
        v24 = v23;
      }

      else
      {
        v24 = v13;
      }

      MEMORY[0x1C6932F70](v14, v24);

      return 46;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(*a3 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }

  v25 = sub_1C4031BB0();
  v27 = v26;
  if (sub_1C4031310())
  {
    v28 = sub_1C3F0BAF4(1uLL, v25, v27);
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v25 = MEMORY[0x1C6932F10](v28, v30, v32, v34);
  }

  return v25;
}

unint64_t static CoalescingStrategy.caseMap.getter()
{
  v0 = sub_1C3F158C4(&unk_1F4387EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090290, &qword_1C403D890);
  swift_arrayDestroy();
  return v0;
}

CallHistory::CoalescingStrategy_optional __swiftcall CoalescingStrategy.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F45B74()
{
  v0 = sub_1C3F158C4(&unk_1F4387950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090290, &qword_1C403D890);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1C3F45BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F45F3C();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F45C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F45DEC();
  v5 = sub_1C3F45F3C();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F45C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F45DEC();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

unint64_t sub_1C3F45CF4()
{
  result = qword_1EC090480;
  if (!qword_1EC090480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090480);
  }

  return result;
}

unint64_t sub_1C3F45D48(void *a1)
{
  a1[1] = sub_1C3F45D98();
  a1[2] = sub_1C3F45DEC();
  a1[3] = sub_1C3F45E40();
  a1[4] = sub_1C3F45E94();
  a1[5] = sub_1C3F45EE8();
  result = sub_1C3F45F3C();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F45D98()
{
  result = qword_1EC090488;
  if (!qword_1EC090488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090488);
  }

  return result;
}

unint64_t sub_1C3F45DEC()
{
  result = qword_1EC090490;
  if (!qword_1EC090490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090490);
  }

  return result;
}

unint64_t sub_1C3F45E40()
{
  result = qword_1EC090498;
  if (!qword_1EC090498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090498);
  }

  return result;
}

unint64_t sub_1C3F45E94()
{
  result = qword_1EC0904A0;
  if (!qword_1EC0904A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904A0);
  }

  return result;
}

unint64_t sub_1C3F45EE8()
{
  result = qword_1EC0904A8;
  if (!qword_1EC0904A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904A8);
  }

  return result;
}

unint64_t sub_1C3F45F3C()
{
  result = qword_1EC0904B0;
  if (!qword_1EC0904B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904B0);
  }

  return result;
}

unint64_t sub_1C3F45F94()
{
  result = qword_1EC0904B8;
  if (!qword_1EC0904B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0904C0, &qword_1C403D9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904B8);
  }

  return result;
}

uint64_t sub_1C3F46008()
{
  v1 = [v0 versionIdentifiers];
  v2 = sub_1C4031500();

  *&v16 = v2;
  *(&v16 + 1) = sub_1C3F461B4;
  *&v17 = 0;
  *(&v17 + 1) = sub_1C3F47568;
  *&v18 = 0;
  *(&v18 + 1) = sub_1C3F47578;
  *&v19 = 0;
  *(&v19 + 1) = sub_1C3F4620C;
  *&v20 = 0;
  *(&v20 + 1) = sub_1C3F47540;
  v21 = 0;
  v22 = sub_1C3F47550;
  v23 = 0;
  v15 = 0;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v10 = v16;
  v11 = v17;
  result = sub_1C3F46F98();
  if (v5)
  {
    goto LABEL_10;
  }

  if (*(v2 + 36) != v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result == 1 << *(v2 + 32))
  {
    v6 = -1;
LABEL_8:
    sub_1C3F48280(&v16);
    return v6;
  }

  sub_1C3F3D6C4(result, v4, v2, v7);
  sub_1C3F461B4(v7, &v8);
  result = sub_1C3F41244(v7);
  if (!v9)
  {
    goto LABEL_11;
  }

  v7[0] = v8;
  v7[1] = v9;
  sub_1C3F4620C(v7, &v8);

  if (v9 != 1)
  {
    v6 = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C3F461B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C3F411E8(a1, v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t *sub_1C3F4620C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = HIBYTE(v3) & 0xF;
  v5 = *result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v27 = 0;
    v26 = 1;
LABEL_66:
    *a2 = v27;
    *(a2 + 8) = v26 & 1;
    return result;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v28 = result[1];
    v29 = a2;

    v8 = sub_1C3F46598(v2, v3, 10);
    v26 = v30;

    a2 = v29;
LABEL_63:
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v31 = *result;
      v32 = a2;
      result = sub_1C4031910();
      a2 = v32;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = result + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            result = (result + 1);
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = result + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v34 = v4;
        v26 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v33[0] = *result;
  v33[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v33;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v33 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v33 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

void *sub_1C3F46524(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F008, &qword_1C40381F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1C3F46598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1C4031340();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C3F46B24();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C4031910();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C3F46B24()
{
  v0 = sub_1C4031350();
  v4 = sub_1C3F46BA4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C3F46BA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C4031270();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1C40316C0();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1C3F46524(v9, 0);
  v12 = sub_1C3F46CFC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1C4031270();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1C4031910();
LABEL_4:

  return sub_1C4031270();
}

unint64_t sub_1C3F46CFC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C3F46F1C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C40312F0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C4031910();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C3F46F1C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C40312D0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C3F46F1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C4031300();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C6932FA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1C3F46F98()
{
  v2 = v0[1];
  v23 = *v0;
  v24 = v2;
  v3 = *(v0 + 5);
  v25 = *(v0 + 4);
  v13 = *(v0 + 6);
  v14 = v3;
  v12 = *(v0 + 7);
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  v6 = *(v0 + 10);
  result = sub_1C3F4711C();
  v20 = result;
  v21 = v8;
  v22 = v9 & 1;
  if (v9)
  {
LABEL_7:
    __break(1u);
    return v1;
  }

  else
  {
    v10 = v8;
    v11 = v23;
    while (*(v11 + 36) == v10)
    {
      v1 = v20;
      if (v20 == 1 << *(v11 + 32))
      {
        return v1;
      }

      sub_1C3F3D6C4(v20, v10, v11, &v15);
      (*(&v11 + 1))(v17, &v15);
      sub_1C3F41244(&v15);
      v14(&v15, v17);

      v17[0] = v15;
      v17[1] = v16;
      v12(&v18, v17);

      v15 = v18;
      LOBYTE(v16) = v19;
      if (v5(&v15))
      {
        return v1;
      }

      result = sub_1C3F47324(&v20);
      v10 = v21;
      if (v22 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F4711C()
{
  v1 = *v0;
  v20 = v0[2];
  v21 = v0[1];
  v19 = v0[3];
  v2 = v0[4];
  v3 = *v0 + 56;
  v4 = -1 << *(*v0 + 32);
  result = sub_1C4031770();
  v6 = result;
  v7 = *(v1 + 36);
  v8 = 1 << *(v1 + 32);
  if (result == v8)
  {
    return v6;
  }

  else
  {
    while ((v6 & 0x8000000000000000) == 0 && v6 < v8)
    {
      v10 = v6 >> 6;
      if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      sub_1C3F411E8(*(v1 + 48) + 40 * v6, v22);
      v21(v23, v22);
      sub_1C3F41244(v22);
      v22[0] = v23[0];
      v22[1] = v23[1];
      v11 = v19(v22);

      if (v11)
      {
        return v6;
      }

      v9 = 1 << *(v1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_22;
      }

      v12 = *(v3 + 8 * v10);
      if ((v12 & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v13 = v12 & (-2 << (v6 & 0x3F));
      if (v13)
      {
        v9 = __clz(__rbit64(v13)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v10 << 6;
        v15 = v10 + 1;
        v16 = (v1 + 64 + 8 * v10);
        while (v15 < (v9 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_1C3E97CDC(v6, v7, 0);
            v9 = __clz(__rbit64(v17)) + v14;
            goto LABEL_6;
          }
        }

        result = sub_1C3E97CDC(v6, v7, 0);
      }

LABEL_6:
      v7 = *(v1 + 36);
      v8 = 1 << *(v1 + 32);
      v6 = v9;
      if (v9 == v8)
      {
        return v9;
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
  }

  return result;
}