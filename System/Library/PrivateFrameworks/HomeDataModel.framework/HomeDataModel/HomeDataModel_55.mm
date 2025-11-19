uint64_t _s13HomeDataModel19StaticCameraProfileV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraRecordingEventManager();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E8, &qword_1D1E9B040);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v86 = &v81 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA20, &qword_1D1E9B630);
  v10 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v81 - v11;
  v12 = type metadata accessor for StaticCameraStreamControl();
  v93 = *(v12 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v92 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA28, &qword_1D1E9B638);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v81 - v20;
  v22 = type metadata accessor for StaticCameraSnapshotControl();
  v94 = *(v22 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v81 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA30, &unk_1D1E9B640);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v81 - v32;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_37;
  }

  v84 = v12;
  v34 = type metadata accessor for StaticCameraProfile();
  v35 = v34[5];
  v36 = *(a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  if ((v36 != *v38 || v37 != v38[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_37;
  }

  if ((sub_1D17A6E98(*(a1 + v34[6]), *(a2 + v34[6])) & 1) == 0)
  {
    goto LABEL_37;
  }

  v39 = v34[7];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  v44 = v34;
  if (v41)
  {
    if (!v43)
    {
      goto LABEL_37;
    }

    if (*v40 != *v42 || (v45 = v21, v41 != v43))
    {
      v46 = v44;
      v47 = sub_1D1E6904C();
      v44 = v46;
      v45 = v21;
      if ((v47 & 1) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v45 = v21;
    if (v43)
    {
      goto LABEL_37;
    }
  }

  v48 = v44[8];
  v49 = v44;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_37;
  }

  if ((sub_1D17A6E98(*(a1 + v49[9]), *(a2 + v49[9])) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (*(a1 + v49[10]) != *(a2 + v49[10]))
  {
    goto LABEL_37;
  }

  v50 = v49;
  if (*(a1 + v49[11]) != *(a2 + v49[11]))
  {
    goto LABEL_37;
  }

  v82 = v49;
  v51 = v49[12];
  v52 = *(v30 + 48);
  v53 = v50[12];
  sub_1D1741C08(a1 + v51, v33, &qword_1EC64B8D8, &qword_1D1E9B030);
  v83 = v52;
  sub_1D1741C08(a2 + v53, &v33[v52], &qword_1EC64B8D8, &qword_1D1E9B030);
  v54 = *(v94 + 48);
  if (v54(v33, 1, v22) == 1)
  {
    if (v54(&v33[v83], 1, v22) == 1)
    {
      sub_1D1741A30(v33, &qword_1EC64B8D8, &qword_1D1E9B030);
      goto LABEL_24;
    }

LABEL_22:
    v55 = &qword_1EC64BA30;
    v56 = &unk_1D1E9B640;
    v57 = v33;
LABEL_36:
    sub_1D1741A30(v57, v55, v56);
    goto LABEL_37;
  }

  sub_1D1741C08(v33, v29, &qword_1EC64B8D8, &qword_1D1E9B030);
  if (v54(&v33[v83], 1, v22) == 1)
  {
    sub_1D1B89188(v29, type metadata accessor for StaticCameraSnapshotControl);
    goto LABEL_22;
  }

  sub_1D1B89F40(&v33[v83], v25, type metadata accessor for StaticCameraSnapshotControl);
  v58 = _s13HomeDataModel27StaticCameraSnapshotControlV2eeoiySbAC_ACtFZ_0(v29, v25);
  sub_1D1B89188(v25, type metadata accessor for StaticCameraSnapshotControl);
  sub_1D1B89188(v29, type metadata accessor for StaticCameraSnapshotControl);
  sub_1D1741A30(v33, &qword_1EC64B8D8, &qword_1D1E9B030);
  if (!v58)
  {
    goto LABEL_37;
  }

LABEL_24:
  v59 = v82[13];
  v60 = *(v18 + 48);
  sub_1D1741C08(a1 + v59, v45, &qword_1EC64B8E0, &qword_1D1E9B038);
  sub_1D1741C08(a2 + v59, v45 + v60, &qword_1EC64B8E0, &qword_1D1E9B038);
  v61 = *(v93 + 48);
  v62 = v84;
  if (v61(v45, 1, v84) != 1)
  {
    v70 = v92;
    sub_1D1741C08(v45, v92, &qword_1EC64B8E0, &qword_1D1E9B038);
    if (v61(v45 + v60, 1, v62) != 1)
    {
      v73 = v91;
      sub_1D1B89F40(v45 + v60, v91, type metadata accessor for StaticCameraStreamControl);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v74 = *(v84 + 20);
        v75 = *(v70 + v74);
        v76 = *(v73 + v74);
        sub_1D1B89188(v73, type metadata accessor for StaticCameraStreamControl);
        sub_1D1B89188(v70, type metadata accessor for StaticCameraStreamControl);
        sub_1D1741A30(v45, &qword_1EC64B8E0, &qword_1D1E9B038);
        if (v75 != v76)
        {
          goto LABEL_37;
        }

        goto LABEL_27;
      }

      sub_1D1B89188(v73, type metadata accessor for StaticCameraStreamControl);
      sub_1D1B89188(v70, type metadata accessor for StaticCameraStreamControl);
      v55 = &qword_1EC64B8E0;
      v56 = &qword_1D1E9B038;
      goto LABEL_35;
    }

    sub_1D1B89188(v70, type metadata accessor for StaticCameraStreamControl);
LABEL_34:
    v55 = &qword_1EC64BA28;
    v56 = &qword_1D1E9B638;
LABEL_35:
    v57 = v45;
    goto LABEL_36;
  }

  if (v61(v45 + v60, 1, v62) != 1)
  {
    goto LABEL_34;
  }

  sub_1D1741A30(v45, &qword_1EC64B8E0, &qword_1D1E9B038);
LABEL_27:
  if (*(a1 + v82[14]) != *(a2 + v82[14]) || *(a1 + v82[15]) != *(a2 + v82[15]))
  {
    goto LABEL_37;
  }

  v63 = v82[16];
  v64 = *(v87 + 48);
  v65 = v90;
  sub_1D1741C08(a1 + v63, v90, &qword_1EC64B8E8, &qword_1D1E9B040);
  v66 = a2 + v63;
  v67 = v65;
  sub_1D1741C08(v66, v65 + v64, &qword_1EC64B8E8, &qword_1D1E9B040);
  v68 = v89;
  v69 = *(v88 + 48);
  if (v69(v65, 1, v89) == 1)
  {
    if (v69(v65 + v64, 1, v68) == 1)
    {
      sub_1D1741A30(v65, &qword_1EC64B8E8, &qword_1D1E9B040);
LABEL_47:
      v71 = *(a1 + v82[17]) ^ *(a2 + v82[17]) ^ 1;
      return v71 & 1;
    }

    goto LABEL_45;
  }

  v77 = v86;
  sub_1D1741C08(v67, v86, &qword_1EC64B8E8, &qword_1D1E9B040);
  if (v69(v67 + v64, 1, v68) == 1)
  {
    sub_1D1B89188(v77, type metadata accessor for StaticCameraRecordingEventManager);
LABEL_45:
    v55 = &qword_1EC64BA20;
    v56 = &qword_1D1E9B630;
    v57 = v67;
    goto LABEL_36;
  }

  v78 = v67 + v64;
  v79 = v85;
  sub_1D1B89F40(v78, v85, type metadata accessor for StaticCameraRecordingEventManager);
  v80 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  sub_1D1B89188(v79, type metadata accessor for StaticCameraRecordingEventManager);
  sub_1D1B89188(v77, type metadata accessor for StaticCameraRecordingEventManager);
  sub_1D1741A30(v67, &qword_1EC64B8E8, &qword_1D1E9B040);
  if (v80)
  {
    goto LABEL_47;
  }

LABEL_37:
  v71 = 0;
  return v71 & 1;
}

unint64_t sub_1D1B8682C()
{
  result = qword_1EC64B8F8;
  if (!qword_1EC64B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B8F8);
  }

  return result;
}

unint64_t sub_1D1B86880()
{
  result = qword_1EC64B900;
  if (!qword_1EC64B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B900);
  }

  return result;
}

uint64_t sub_1D1B868D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1B891E8(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1B86970()
{
  result = qword_1EC64B928;
  if (!qword_1EC64B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B928);
  }

  return result;
}

uint64_t _s13HomeDataModel19StaticCameraProfileV06NearbyD5ItemsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1D1848AD4(*a1, *a2) & 1) == 0 || (sub_1D18490AC(v2, v5) & 1) == 0 || (sub_1D1849684(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1D1849C5C(v3, v6);
}

unint64_t sub_1D1B86A60()
{
  result = qword_1EC64B950;
  if (!qword_1EC64B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B950);
  }

  return result;
}

unint64_t sub_1D1B86AB4()
{
  result = qword_1EC64B960;
  if (!qword_1EC64B960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B958, &unk_1D1E9B0D0);
    sub_1D1B891E8(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1B891E8(&qword_1EC644708, type metadata accessor for StaticAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B960);
  }

  return result;
}

unint64_t sub_1D1B86BA0()
{
  result = qword_1EC64B970;
  if (!qword_1EC64B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B968, &unk_1D1E9B0E0);
    sub_1D1B891E8(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1B891E8(&qword_1EC6446E8, type metadata accessor for StaticServiceGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B970);
  }

  return result;
}

unint64_t sub_1D1B86C8C()
{
  result = qword_1EC64B980;
  if (!qword_1EC64B980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B978, &qword_1D1EA2E10);
    sub_1D1B891E8(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1B891E8(&qword_1EC649210, type metadata accessor for StaticMatterDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B980);
  }

  return result;
}

unint64_t sub_1D1B86D78()
{
  result = qword_1EC64B990;
  if (!qword_1EC64B990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B958, &unk_1D1E9B0D0);
    sub_1D1B891E8(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1B891E8(&qword_1EC644758, type metadata accessor for StaticAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B990);
  }

  return result;
}

unint64_t sub_1D1B86E64()
{
  result = qword_1EC64B998;
  if (!qword_1EC64B998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B968, &unk_1D1E9B0E0);
    sub_1D1B891E8(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1B891E8(&qword_1EC644748, type metadata accessor for StaticServiceGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B998);
  }

  return result;
}

unint64_t sub_1D1B86F50()
{
  result = qword_1EC64B9A0;
  if (!qword_1EC64B9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B978, &qword_1D1EA2E10);
    sub_1D1B891E8(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1B891E8(&qword_1EC649240, type metadata accessor for StaticMatterDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9A0);
  }

  return result;
}

uint64_t sub_1D1B8703C(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticCameraProfile();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643798, &qword_1D1E71EF0);
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
      sub_1D1741C08(v18, v47, &qword_1EC643798, &qword_1D1E71EF0);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1B89F40(v20 + v45, v8, type metadata accessor for StaticCameraProfile);
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
          sub_1D1734FB0();
        }
      }

      else
      {
        v32 = v51;
        sub_1D17223B4(v30, a2 & 1);
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
        result = sub_1D1B89FA8(v24, v19, type metadata accessor for StaticCameraProfile);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1B89F40(v24, v37, type metadata accessor for StaticCameraProfile);
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

uint64_t sub_1D1B87440(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v185 = a7;
  v178 = a5;
  v164 = a4;
  v167 = a3;
  v182 = a9;
  v13 = type metadata accessor for StaticMatterDevice();
  v162 = *(v13 - 8);
  v14 = *(v162 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v165 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v161 = &v161 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v163 = &v161 - v19;
  v20 = type metadata accessor for StaticServiceGroup();
  v171 = *(v20 - 8);
  v21 = *(v171 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v183 = &v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v170 = &v161 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v181 = &v161 - v26;
  v27 = type metadata accessor for StaticService(0);
  v173 = *(v27 - 8);
  v28 = *(v173 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v186 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v172 = &v161 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v184 = &v161 - v33;
  v177 = type metadata accessor for StaticAccessory(0);
  v175 = *(v177 - 8);
  v34 = *(v175 + 64);
  v35 = MEMORY[0x1EEE9AC00](v177);
  v179 = &v161 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v174 = &v161 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v187 = &v161 - v39;
  v40 = sub_1D1E66A7C();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v166 = &v161 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v188 = &v161 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v193 = &v161 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v191 = &v161 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v200 = &v161 - v51;
  v52 = a1 + 56;
  v53 = 1 << *(a1 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(a1 + 56);
  v56 = (v53 + 63) >> 6;
  v199 = v50 + 16;
  v194 = v50;
  v196 = a1;
  v197 = (v50 + 8);

  v57 = 0;
  v189 = a6;
  v190 = a2;
  v192 = v40;
  v180 = v56;
  v168 = a8;
  v169 = v52;
  while (v55)
  {
LABEL_12:
    v60 = *(v196 + 48);
    v195 = *(v194 + 72);
    v198 = *(v194 + 16);
    v198(v200, v60 + v195 * (__clz(__rbit64(v55)) | (v57 << 6)), v40);
    if (*(a2 + 16))
    {
      v61 = sub_1D1742188(v200);
      if (v62)
      {
        v63 = *(a2 + 56);
        v64 = *(v175 + 72);
        v65 = v174;
        sub_1D1B89120(v63 + v64 * v61, v174, type metadata accessor for StaticAccessory);
        v66 = v187;
        sub_1D1B89F40(v65, v187, type metadata accessor for StaticAccessory);
        if (*(v66 + *(v177 + 148)) == 1 && (v67 = v66 + *(v177 + 144), (*(v67 + 8) & 1) == 0) && *(v167 + 16) && (v68 = sub_1D17420B0(*v67), (v69 & 1) != 0))
        {
          v70 = *(v167 + 56);
          v176 = *(v162 + 72);
          v71 = v161;
          sub_1D1B89120(v70 + v176 * v68, v161, type metadata accessor for StaticMatterDevice);
          v72 = v71;
          v73 = v163;
          sub_1D1B89F40(v72, v163, type metadata accessor for StaticMatterDevice);
          v74 = v166;
          v198(v166, v187, v40);
          sub_1D1B89120(v73, v165, type metadata accessor for StaticMatterDevice);
          v75 = v164;
          v76 = *v164;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = *v75;
          v201 = v78;
          v79 = sub_1D1742188(v74);
          v81 = v78[2];
          v82 = (v80 & 1) == 0;
          v83 = __OFADD__(v81, v82);
          v84 = v81 + v82;
          if (v83)
          {
            goto LABEL_73;
          }

          v85 = v80;
          if (v78[3] >= v84)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v159 = v79;
              sub_1D1736F7C();
              v79 = v159;
            }
          }

          else
          {
            sub_1D1725208(v84, isUniquelyReferenced_nonNull_native);
            v79 = sub_1D1742188(v166);
            if ((v85 & 1) != (v86 & 1))
            {
              goto LABEL_75;
            }
          }

          v40 = v192;
          v153 = v201;
          if (v85)
          {
            sub_1D1B89FA8(v165, v201[7] + v79 * v176, type metadata accessor for StaticMatterDevice);
          }

          else
          {
            v201[(v79 >> 6) + 8] |= 1 << v79;
            v154 = v79;
            v198((v153[6] + v79 * v195), v166, v40);
            sub_1D1B89F40(v165, v153[7] + v154 * v176, type metadata accessor for StaticMatterDevice);
            v155 = v153[2];
            v83 = __OFADD__(v155, 1);
            v156 = v155 + 1;
            if (v83)
            {
              goto LABEL_74;
            }

            v153[2] = v156;
          }

          a6 = v189;
          a2 = v190;
          (*v197)(v166, v40);
          *v164 = v153;
          sub_1D1B89188(v163, type metadata accessor for StaticMatterDevice);
        }

        else
        {
          v176 = v64;
          v87 = a8;
          v88 = v188;
          v198(v188, v66, v40);
          sub_1D1B89120(v66, v179, type metadata accessor for StaticAccessory);
          v89 = v178;
          v90 = *v178;
          v91 = swift_isUniquelyReferenced_nonNull_native();
          v92 = *v89;
          v201 = v92;
          v93 = sub_1D1742188(v88);
          v95 = v92[2];
          v96 = (v94 & 1) == 0;
          v83 = __OFADD__(v95, v96);
          v97 = v95 + v96;
          if (v83)
          {
            goto LABEL_69;
          }

          v98 = v94;
          if (v92[3] >= v97)
          {
            a8 = v87;
            if ((v91 & 1) == 0)
            {
              v158 = v93;
              sub_1D17362B8();
              v93 = v158;
            }
          }

          else
          {
            sub_1D1723F74(v97, v91);
            v93 = sub_1D1742188(v188);
            if ((v98 & 1) != (v99 & 1))
            {
              goto LABEL_75;
            }

            a8 = v87;
          }

          v40 = v192;
          v100 = v176;
          v101 = v201;
          if (v98)
          {
            sub_1D1B89FA8(v179, v201[7] + v93 * v176, type metadata accessor for StaticAccessory);
          }

          else
          {
            v201[(v93 >> 6) + 8] |= 1 << v93;
            v102 = v93;
            v198((v101[6] + v93 * v195), v188, v40);
            sub_1D1B89F40(v179, v101[7] + v102 * v100, type metadata accessor for StaticAccessory);
            v103 = v101[2];
            v83 = __OFADD__(v103, 1);
            v104 = v103 + 1;
            if (v83)
            {
              goto LABEL_72;
            }

            v101[2] = v104;
          }

          (*v197)(v188, v40);
          *v178 = v101;
          a6 = v189;
          a2 = v190;
        }

        sub_1D1B89188(v187, type metadata accessor for StaticAccessory);
      }
    }

    if (*(a6 + 16))
    {
      v105 = sub_1D1742188(v200);
      if (v106)
      {
        v107 = a8;
        v108 = *(v173 + 72);
        v109 = *(a6 + 56) + v108 * v105;
        v110 = v172;
        sub_1D1B89120(v109, v172, type metadata accessor for StaticService);
        v111 = v110;
        v112 = v184;
        sub_1D1B89F40(v111, v184, type metadata accessor for StaticService);
        v113 = v193;
        v198(v193, v112, v40);
        sub_1D1B89120(v112, v186, type metadata accessor for StaticService);
        v114 = v185;
        v115 = *v185;
        v116 = swift_isUniquelyReferenced_nonNull_native();
        v117 = *v114;
        v201 = v117;
        v118 = sub_1D1742188(v113);
        v120 = v117[2];
        v121 = (v119 & 1) == 0;
        v83 = __OFADD__(v120, v121);
        v122 = v120 + v121;
        if (v83)
        {
          goto LABEL_67;
        }

        v123 = v119;
        if (v117[3] >= v122)
        {
          a8 = v107;
          if ((v116 & 1) == 0)
          {
            v157 = v118;
            sub_1D1735934();
            v118 = v157;
          }
        }

        else
        {
          sub_1D1723194(v122, v116);
          v118 = sub_1D1742188(v193);
          if ((v123 & 1) != (v124 & 1))
          {
            goto LABEL_75;
          }

          a8 = v107;
        }

        v40 = v192;
        v56 = v180;
        v125 = v201;
        if (v123)
        {
          sub_1D1B89FA8(v186, v201[7] + v118 * v108, type metadata accessor for StaticService);
        }

        else
        {
          v201[(v118 >> 6) + 8] |= 1 << v118;
          v126 = v118;
          v198((v125[6] + v118 * v195), v193, v40);
          sub_1D1B89F40(v186, v125[7] + v126 * v108, type metadata accessor for StaticService);
          v127 = v125[2];
          v83 = __OFADD__(v127, 1);
          v128 = v127 + 1;
          if (v83)
          {
            goto LABEL_70;
          }

          v125[2] = v128;
        }

        (*v197)(v193, v40);
        v129 = v184;
        *v185 = v125;
        sub_1D1B89188(v129, type metadata accessor for StaticService);
        a6 = v189;
        a2 = v190;
      }
    }

    if (*(a8 + 16))
    {
      v130 = sub_1D1742188(v200);
      if (v131)
      {
        v132 = *(a8 + 56);
        v133 = *(v171 + 72);
        v134 = v170;
        sub_1D1B89120(v132 + v133 * v130, v170, type metadata accessor for StaticServiceGroup);
        v135 = v134;
        v136 = v181;
        sub_1D1B89F40(v135, v181, type metadata accessor for StaticServiceGroup);
        v137 = v191;
        v198(v191, v136, v40);
        sub_1D1B89120(v136, v183, type metadata accessor for StaticServiceGroup);
        v138 = v182;
        v139 = *v182;
        v140 = swift_isUniquelyReferenced_nonNull_native();
        v141 = *v138;
        v201 = v141;
        v143 = sub_1D1742188(v137);
        v144 = v141[2];
        v145 = (v142 & 1) == 0;
        v146 = v144 + v145;
        if (__OFADD__(v144, v145))
        {
          goto LABEL_68;
        }

        v147 = v142;
        if (v141[3] >= v146)
        {
          v56 = v180;
          if ((v140 & 1) == 0)
          {
            sub_1D17352DC();
          }
        }

        else
        {
          sub_1D1722854(v146, v140);
          v148 = sub_1D1742188(v191);
          v56 = v180;
          if ((v147 & 1) != (v149 & 1))
          {
            goto LABEL_75;
          }

          v143 = v148;
        }

        a2 = v190;
        v52 = v169;
        v150 = v201;
        if (v147)
        {
          sub_1D1B89FA8(v183, v201[7] + v143 * v133, type metadata accessor for StaticServiceGroup);
          v40 = v192;
        }

        else
        {
          v201[(v143 >> 6) + 8] |= 1 << v143;
          v40 = v192;
          v198((v150[6] + v143 * v195), v191, v192);
          sub_1D1B89F40(v183, v150[7] + v143 * v133, type metadata accessor for StaticServiceGroup);
          v151 = v150[2];
          v83 = __OFADD__(v151, 1);
          v152 = v151 + 1;
          if (v83)
          {
            goto LABEL_71;
          }

          v150[2] = v152;
        }

        (*v197)(v191, v40);
        v58 = v181;
        *v182 = v150;
        sub_1D1B89188(v58, type metadata accessor for StaticServiceGroup);
        a8 = v168;
        a6 = v189;
      }
    }

    v55 &= v55 - 1;
    (*v197)(v200, v40);
  }

  while (1)
  {
    v59 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v59 >= v56)
    {
    }

    v55 = *(v52 + 8 * v59);
    ++v57;
    if (v55)
    {
      v57 = v59;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1B88440(void *a1)
{
  a1[1] = sub_1D1B891E8(&qword_1EC64B9B0, type metadata accessor for StaticCameraProfile);
  a1[2] = sub_1D1B891E8(&qword_1EC64B9B8, type metadata accessor for StaticCameraProfile);
  a1[3] = sub_1D1B891E8(&qword_1EC64B9C0, type metadata accessor for StaticCameraProfile);
  a1[4] = sub_1D1B891E8(&qword_1EC64B9C8, type metadata accessor for StaticCameraProfile);
  a1[5] = sub_1D1B891E8(&qword_1EC643520, type metadata accessor for StaticCameraProfile);
  result = sub_1D1B891E8(&qword_1EC64B9D0, type metadata accessor for StaticCameraProfile);
  a1[6] = result;
  return result;
}

unint64_t sub_1D1B88568()
{
  result = qword_1EC64B9D8;
  if (!qword_1EC64B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9D8);
  }

  return result;
}

void sub_1D1B885E4()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1791340();
    if (v1 <= 0x3F)
    {
      sub_1D17786E4();
      if (v2 <= 0x3F)
      {
        sub_1D1B88758(319, &qword_1EE07D290, type metadata accessor for StaticCameraSnapshotControl);
        if (v3 <= 0x3F)
        {
          sub_1D1B88758(319, &qword_1EE07D300, type metadata accessor for StaticCameraStreamControl);
          if (v4 <= 0x3F)
          {
            sub_1D1B88758(319, &qword_1EE07B880, type metadata accessor for StaticCameraRecordingEventManager);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D1B88758(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for StaticCameraProfile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticCameraProfile.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1B88920()
{
  result = qword_1EC64B9E0;
  if (!qword_1EC64B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9E0);
  }

  return result;
}

unint64_t sub_1D1B88978()
{
  result = qword_1EC64B9E8;
  if (!qword_1EC64B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9E8);
  }

  return result;
}

unint64_t sub_1D1B889D0()
{
  result = qword_1EC64B9F0;
  if (!qword_1EC64B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9F0);
  }

  return result;
}

unint64_t sub_1D1B88A28()
{
  result = qword_1EC64B9F8;
  if (!qword_1EC64B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9F8);
  }

  return result;
}

unint64_t sub_1D1B88A80()
{
  result = qword_1EC64BA00;
  if (!qword_1EC64BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA00);
  }

  return result;
}

unint64_t sub_1D1B88AD8()
{
  result = qword_1EC64BA08;
  if (!qword_1EC64BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA08);
  }

  return result;
}

uint64_t sub_1D1B88B2C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC5D60 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC5D80 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC5DA0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746F687370616E73 && a2 == 0xEF6C6F72746E6F43 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F436D6165727473 && a2 == 0xED00006C6F72746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC5E00 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1D1B88FA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F737365636361 && a2 == 0xEB00000000736569;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4765636976726573 && a2 == 0xED00007370756F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654472657474616DLL && a2 == 0xED00007365636976)
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

uint64_t sub_1D1B89120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B89188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B891E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B89270(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v48 = a2;
  v49 = a1;
  v6 = type metadata accessor for StaticAccessory(0);
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v10 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v67 = &v47 - v11;
  v54 = type metadata accessor for StaticService(0);
  v60 = *(v54 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D1E66A7C();
  v15 = *(*(v66 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v66);
  v65 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v63 = a3;
  v22 = a3[8];
  v21 = a3 + 8;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v50 = (v23 + 63) >> 6;
  v51 = 0;
  v55 = v17 + 16;
  v56 = a4;
  v57 = v17;
  v58 = v9;
  v62 = (v17 + 8);
  v59 = v6;
  while (v25)
  {
    v26 = __clz(__rbit64(v25));
    v64 = (v25 - 1) & v25;
LABEL_12:
    v29 = v26 | (v19 << 6);
    v30 = v63;
    v31 = *(v57 + 16);
    v33 = v65;
    v32 = v66;
    v31(v65, v63[6] + *(v57 + 72) * v29, v66);
    v34 = v30[7];
    v35 = *(v60 + 72);
    v52 = v29;
    sub_1D1B89120(v34 + v35 * v29, v14, type metadata accessor for StaticService);
    v36 = v14;
    v37 = v67;
    v31(v67, v33, v32);
    v38 = v37 + *(v61 + 48);
    v14 = v36;
    sub_1D1B89120(v36, v38, type metadata accessor for StaticService);
    v39 = v56;
    v41 = v58;
    v40 = v59;
    if (!*(v56 + 16))
    {
      goto LABEL_20;
    }

    v42 = sub_1D1742188(v38 + *(v54 + 44));
    if ((v43 & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_1D1B89120(*(v39 + 56) + *(v53 + 72) * v42, v41, type metadata accessor for StaticAccessory);
    if ((*(v41 + v40[19]) & 1) != 0 || (*(v41 + v40[27]) & 1) == 0)
    {
      sub_1D1B89188(v41, type metadata accessor for StaticAccessory);
LABEL_20:
      sub_1D1741A30(v67, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B89188(v36, type metadata accessor for StaticService);
      result = (*v62)(v65, v66);
      v25 = v64;
LABEL_21:
      *(v49 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      if (__OFADD__(v51++, 1))
      {
        __break(1u);
        return sub_1D188B1C8(v49, v48, v51, v63);
      }
    }

    else
    {
      v44 = StaticAccessory.hasVisibleServices(minCount:)(2);
      sub_1D1741A30(v67, &qword_1EC642DB0, &unk_1D1E6F360);
      if (v44)
      {
        sub_1D1B89188(v41, type metadata accessor for StaticAccessory);
        sub_1D1B89188(v36, type metadata accessor for StaticService);
        result = (*v62)(v65, v66);
        v25 = v64;
      }

      else
      {
        v45 = *(v41 + v40[37]);
        sub_1D1B89188(v41, type metadata accessor for StaticAccessory);
        sub_1D1B89188(v36, type metadata accessor for StaticService);
        result = (*v62)(v65, v66);
        v25 = v64;
        if ((v45 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v27 = v19;
  while (1)
  {
    v19 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v19 >= v50)
    {
      return sub_1D188B1C8(v49, v48, v51, v63);
    }

    v28 = v21[v19];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v64 = (v28 - 1) & v28;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B897EC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47[0] = a2;
  v49 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v67 = v47 - v7;
  v8 = type metadata accessor for StaticService(0);
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v47 - v13;
  v64 = sub_1D1E66A7C();
  v15 = *(*(v64 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v64);
  v63 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a3;
  v59 = 0;
  v19 = 0;
  v20 = *(a3 + 64);
  v48 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v52 = v17 + 16;
  v65 = a4;
  v54 = v17;
  v50 = (v17 + 8);
  v53 = v24;
  v55 = v14;
  v51 = a4 + 7;
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v62 = (v23 - 1) & v23;
LABEL_13:
    v28 = v25 | (v19 << 6);
    v29 = v58;
    v30 = v58[6] + *(v54 + 72) * v28;
    v61 = *(v54 + 16);
    v31 = v63;
    v32 = v64;
    v61(v63, v30, v64);
    v33 = v29[7];
    v34 = *(v56 + 72);
    v60 = v28;
    sub_1D1B89120(v33 + v34 * v28, v14, type metadata accessor for StaticService);
    v35 = v14;
    v36 = v67;
    v61(v67, v31, v32);
    v37 = *(v57 + 48);
    sub_1D1B89120(v35, v36 + v37, type metadata accessor for StaticService);
    v38 = v51;
    if (v65[2] && (v39 = v65, v40 = v65[5], sub_1D1E6920C(), StaticService.hash(into:)(v66), v41 = sub_1D1E6926C(), v42 = -1 << *(v39 + 32), v43 = v41 & ~v42, ((*(v38 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0))
    {
      v44 = ~v42;
      while (1)
      {
        sub_1D1B89120(v65[6] + v43 * v34, v12, type metadata accessor for StaticService);
        v45 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v12, &v67[v37]);
        sub_1D1B89188(v12, type metadata accessor for StaticService);
        if (v45)
        {
          break;
        }

        v43 = (v43 + 1) & v44;
        if (((*(v38 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_1D1741A30(v67, &qword_1EC642DB0, &unk_1D1E6F360);
      v14 = v55;
      sub_1D1B89188(v55, type metadata accessor for StaticService);
      result = (*v50)(v63, v64);
      v24 = v53;
      v23 = v62;
    }

    else
    {
LABEL_18:
      sub_1D1741A30(v67, &qword_1EC642DB0, &unk_1D1E6F360);
      v14 = v55;
      sub_1D1B89188(v55, type metadata accessor for StaticService);
      result = (*v50)(v63, v64);
      *(v49 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
      v46 = __OFADD__(v59++, 1);
      v24 = v53;
      v23 = v62;
      if (v46)
      {
        __break(1u);
        return sub_1D188B1C8(v49, v47[0], v59, v58);
      }
    }
  }

  v26 = v19;
  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      return sub_1D188B1C8(v49, v47[0], v59, v58);
    }

    v27 = *(v48 + 8 * v19);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v62 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1B89D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v14 = sub_1D1B85C30(v17, v11, a1, a2, a4);
      MEMORY[0x1D3893640](v17, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v13);
  bzero(v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = a3(v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_1D1B89F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B89FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t StaticCameraProfile.AccessMode.description.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6120746365746564;
  v4 = 0x6D6165727473;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6710895;
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

unint64_t StaticCameraProfile.AccessMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1D1B8A104()
{
  result = qword_1EC64BA40;
  if (!qword_1EC64BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BA48, &qword_1D1E9B690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA40);
  }

  return result;
}

unint64_t sub_1D1B8A178()
{
  result = qword_1EC64BA50;
  if (!qword_1EC64BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA50);
  }

  return result;
}

unint64_t sub_1D1B8A28C()
{
  result = qword_1EC64BA58;
  if (!qword_1EC64BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA58);
  }

  return result;
}

uint64_t StaticCameraProfile.lowBatteryLevel(in:)(uint64_t a1)
{
  v3 = type metadata accessor for StaticCameraProfile();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20[-v10];
  v12 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 40));
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = sub_1D1742188(v1);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  sub_1D1B8A814(*(v12 + 56) + *(v4 + 72) * v13, v7, type metadata accessor for StaticCameraProfile);
  v15 = *&v7[*(v3 + 36)];

  v16 = sub_1D1B8A87C(v7, type metadata accessor for StaticCameraProfile);
  MEMORY[0x1EEE9AC00](v16);
  *&v20[-16] = a1;
  sub_1D17479B4(sub_1D1B8A7D4, v15, v11);

  MEMORY[0x1EEE9AC00](v17);
  *&v20[-16] = a1;
  v18 = sub_1D17BE894(sub_1D1B8A7F4);
  sub_1D1835548(v11);
  return v18;
}

BOOL sub_1D1B8A51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (!*(v9 + 16))
  {
    return 0;
  }

  v10 = sub_1D1742188(a1);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_1D1B8A814(*(v9 + 56) + *(v5 + 72) * v10, v8, type metadata accessor for StaticService);
  v16 = *&v8[*(v4 + 128)];
  HIBYTE(v15) = 11;
  v17 = StaticCharacteristicsBag.int(for:)((&v15 + 7));
  value = v17.value;
  is_nil = v17.is_nil;
  sub_1D1B8A87C(v8, type metadata accessor for StaticService);
  return !is_nil && value < 26;
}

uint64_t sub_1D1B8A674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StateSnapshot(0);
  v12 = *(a2 + *(result + 60));
  if (*(v12 + 16) && (result = sub_1D1742188(a1), (v13 & 1) != 0))
  {
    sub_1D1B8A814(*(v12 + 56) + *(v7 + 72) * result, v10, type metadata accessor for StaticService);
    v16 = *&v10[*(v6 + 128)];
    v15 = 11;
    v17 = StaticCharacteristicsBag.int(for:)(&v15);
    *a3 = v17.value;
    *(a3 + 8) = v17.is_nil;
    return sub_1D1B8A87C(v10, type metadata accessor for StaticService);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 1;
  }

  return result;
}

uint64_t sub_1D1B8A814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B8A87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StaticCameraProfile.CameraMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticCameraProfile.currentMode.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for StaticCameraProfile();
  sub_1D1741C08(v1 + *(v7 + 52), v6, &qword_1EC64B8E0, &qword_1D1E9B038);
  v8 = type metadata accessor for StaticCameraStreamControl();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_1D1741A30(v6, &qword_1EC64B8E0, &qword_1D1E9B038);
    v10 = 1;
  }

  else
  {
    v11 = v6[*(v8 + 20)];
    result = sub_1D1B8BD24(v6, type metadata accessor for StaticCameraStreamControl);
    v10 = v11 != 2;
  }

  *a1 = v10;
  return result;
}

uint64_t StaticCameraProfile.cameraSource.getter()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B8ABD4, 0, 0);
}

uint64_t sub_1D1B8ABD4()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for StaticCameraProfile();
  v4 = *(v3 + 52);
  sub_1D1741C08(v2 + v4, v1, &qword_1EC64B8E0, &qword_1D1E9B038);
  v5 = type metadata accessor for StaticCameraStreamControl();
  v6 = *(*(v5 - 8) + 48);
  v7 = v6(v1, 1, v5);
  v8 = v0[5];
  if (v7 == 1)
  {
    sub_1D1741A30(v8, &qword_1EC64B8E0, &qword_1D1E9B038);
LABEL_6:
    v14 = v0[3];
    sub_1D1741C08(v0[2] + *(v3 + 48), v14, &qword_1EC64B8D8, &qword_1D1E9B030);
    v15 = type metadata accessor for StaticCameraSnapshotControl();
    if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
    {
      v11 = v0[3];
      v12 = &qword_1EC64B8D8;
      v13 = &qword_1D1E9B030;
      goto LABEL_8;
    }

    v21 = swift_task_alloc();
    v0[8] = v21;
    *v21 = v0;
    v21[1] = sub_1D1B8B0C8;
    v22 = v0[3];
    goto LABEL_13;
  }

  v9 = *(v8 + *(v5 + 20));
  sub_1D1B8BD24(v8, type metadata accessor for StaticCameraStreamControl);
  if (v9 != 2)
  {
    goto LABEL_6;
  }

  v10 = v0[4];
  sub_1D1741C08(v2 + v4, v10, &qword_1EC64B8E0, &qword_1D1E9B038);
  if (v6(v10, 1, v5) == 1)
  {
    v11 = v0[4];
    v12 = &qword_1EC64B8E0;
    v13 = &qword_1D1E9B038;
LABEL_8:
    sub_1D1741A30(v11, v12, v13);
    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[3];

    v19 = v0[1];

    return v19(0);
  }

  v23 = swift_task_alloc();
  v0[6] = v23;
  *v23 = v0;
  v23[1] = sub_1D1B8AEE4;
  v22 = v0[4];
LABEL_13:

  return sub_1D1E506F8(v22);
}

uint64_t sub_1D1B8AEE4(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8AFE4, 0, 0);
}

uint64_t sub_1D1B8AFE4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = [v1 streamControl];

  v4 = [v3 cameraStream];
  sub_1D1B8BD24(v2, type metadata accessor for StaticCameraStreamControl);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  v8 = v0[1];

  return v8(v4);
}

uint64_t sub_1D1B8B0C8(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8B1C8, 0, 0);
}

uint64_t sub_1D1B8B1C8()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = [v1 snapshotControl];

  v4 = [v3 mostRecentSnapshot];
  sub_1D1B8BD24(v2, type metadata accessor for StaticCameraSnapshotControl);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  v8 = v0[1];

  return v8(v4);
}

uint64_t StaticCameraProfile.takeSnapshot()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B8B348, 0, 0);
}

uint64_t sub_1D1B8B348()
{
  v1 = v0[2];
  v2 = type metadata accessor for StaticCameraProfile();
  if (*(v1 + v2[10]) != 1 || *(v1 + v2[11]) < 3u)
  {
LABEL_5:
    v5 = v0[3];

    v6 = v0[1];

    return v6();
  }

  v3 = v0[3];
  sub_1D1741C08(v1 + v2[12], v3, &qword_1EC64B8D8, &qword_1D1E9B030);
  v4 = type metadata accessor for StaticCameraSnapshotControl();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_1D1741A30(v0[3], &qword_1EC64B8D8, &qword_1D1E9B030);
    goto LABEL_5;
  }

  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_1D1B8B4C0;
  v9 = v0[3];

  return StaticCameraSnapshotControl.takeSnapshot()();
}

uint64_t sub_1D1B8B4C0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  sub_1D1B8BD24(v3, type metadata accessor for StaticCameraSnapshotControl);
  v4 = *(v1 + 24);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t StaticCameraProfile.startStreaming()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B8B688, 0, 0);
}

uint64_t sub_1D1B8B688()
{
  v1 = v0[2];
  v2 = type metadata accessor for StaticCameraProfile();
  if (*(v1 + *(v2 + 40)) != 1 || *(v1 + *(v2 + 44)) < 3u || (v3 = v2, sub_1D1B8B80C()))
  {
LABEL_6:
    v6 = v0[3];

    v7 = v0[1];

    return v7();
  }

  v4 = v0[3];
  sub_1D1741C08(v0[2] + *(v3 + 52), v4, &qword_1EC64B8E0, &qword_1D1E9B038);
  v5 = type metadata accessor for StaticCameraStreamControl();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1D1741A30(v0[3], &qword_1EC64B8E0, &qword_1D1E9B038);
    goto LABEL_6;
  }

  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = sub_1D1B8BDEC;
  v10 = v0[3];

  return StaticCameraStreamControl.startStream()();
}

BOOL sub_1D1B8B80C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for StaticCameraProfile() + 52);
  sub_1D1741C08(v0 + v8, v7, &qword_1EC64B8E0, &qword_1D1E9B038);
  v9 = type metadata accessor for StaticCameraStreamControl();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC64B8E0, &qword_1D1E9B038);
  }

  else
  {
    v11 = v7[*(v9 + 20)];
    sub_1D1B8BD24(v7, type metadata accessor for StaticCameraStreamControl);
    if (v11 == 2)
    {
      return 1;
    }
  }

  sub_1D1741C08(v0 + v8, v5, &qword_1EC64B8E0, &qword_1D1E9B038);
  if (v10(v5, 1, v9) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC64B8E0, &qword_1D1E9B038);
    return 0;
  }

  else
  {
    v13 = v5[*(v9 + 20)];
    sub_1D1B8BD24(v5, type metadata accessor for StaticCameraStreamControl);
    return v13 == 1;
  }
}

uint64_t StaticCameraProfile.stopStreaming()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B8BA98, 0, 0);
}

uint64_t sub_1D1B8BA98()
{
  v1 = v0[2];
  if (!sub_1D1B8B80C())
  {
LABEL_4:
    v6 = v0[3];

    v7 = v0[1];

    return v7();
  }

  v2 = v0[2];
  v3 = v0[3];
  v4 = type metadata accessor for StaticCameraProfile();
  sub_1D1741C08(v2 + *(v4 + 52), v3, &qword_1EC64B8E0, &qword_1D1E9B038);
  v5 = type metadata accessor for StaticCameraStreamControl();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1D1741A30(v0[3], &qword_1EC64B8E0, &qword_1D1E9B038);
    goto LABEL_4;
  }

  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = sub_1D1B8BBF8;
  v10 = v0[3];

  return StaticCameraStreamControl.stopStream()();
}

uint64_t sub_1D1B8BBF8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  sub_1D1B8BD24(v3, type metadata accessor for StaticCameraStreamControl);
  v4 = *(v1 + 24);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1D1B8BD24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1B8BD88()
{
  result = qword_1EC64BA60;
  if (!qword_1EC64BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA60);
  }

  return result;
}

uint64_t _s13HomeDataModel19StaticCameraProfileV12statusString4with22associatedMatterDeviceSSSgAA13StatusStringsV7OptionsV_AA0dkL0VSgtF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v13 - v3;
  v5 = type metadata accessor for StaticCameraProfile();
  sub_1D1B8BFC4(v0 + v5[13], v4);
  v6 = type metadata accessor for StaticCameraStreamControl();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1D1B8C034(v4);
  }

  else
  {
    v7 = v4[*(v6 + 20)];
    sub_1D1B8C09C(v4);
    if (v7 == 2)
    {
      return 1702259020;
    }
  }

  v9 = *(v0 + v5[11]);
  if (v9 <= 2)
  {
    if (*(v0 + v5[11]))
    {
      if (v9 == 1)
      {
        v10 = 0xE300000000000000;
        v11 = 6710895;
      }

      else
      {
        v10 = 0xEF79746976697463;
        v11 = 0x6120746365746564;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      v11 = 1701736302;
    }

    v13[0] = v11;
    v13[1] = v10;
    sub_1D17D8EF0();
    v12 = sub_1D1E685EC();

    return v12;
  }

  else
  {
    if (*(v0 + v5[10]))
    {
      result = 0;
    }

    else
    {
      result = 0x6F70736552206F4ELL;
    }

    *(v0 + v5[10]);
  }

  return result;
}

uint64_t sub_1D1B8BFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B8C034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1B8C09C(uint64_t a1)
{
  v2 = type metadata accessor for StaticCameraStreamControl();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StaticCameraRecordingEventManager.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D1B8C170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1B8C1F0(uint64_t a1)
{
  v2 = sub_1D1B8C3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B8C22C(uint64_t a1)
{
  v2 = sub_1D1B8C3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraRecordingEventManager.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA68, &qword_1D1E9B8A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8C3E0();
  sub_1D1E6930C();
  sub_1D1E66A7C();
  sub_1D1B8CA54(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D1B8C3E0()
{
  result = qword_1EC64BA70;
  if (!qword_1EC64BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA70);
  }

  return result;
}

uint64_t StaticCameraRecordingEventManager.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D1B8CA54(qword_1EE07DD78, MEMORY[0x1E69695A8]);

  return sub_1D1E676EC();
}

uint64_t StaticCameraRecordingEventManager.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B8CA54(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t StaticCameraRecordingEventManager.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1D1E66A7C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA78, &qword_1D1E9B8A8);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for StaticCameraRecordingEventManager();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8C3E0();
  sub_1D1E692FC();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1D1B8CA54(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1E68D7C();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1D1B8C9A8(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1B8C7CC()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B8CA54(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B8C854()
{
  sub_1D1E66A7C();
  sub_1D1B8CA54(qword_1EE07DD78, MEMORY[0x1E69695A8]);

  return sub_1D1E676EC();
}

uint64_t sub_1D1B8C8D8()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B8CA54(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t type metadata accessor for StaticCameraRecordingEventManager()
{
  result = qword_1EE07B888;
  if (!qword_1EE07B888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1B8C9A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraRecordingEventManager();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B8CA54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B8CAFC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA68, &qword_1D1E9B8A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8C3E0();
  sub_1D1E6930C();
  sub_1D1E66A7C();
  sub_1D1B8CA54(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D1B8CCB0()
{
  result = qword_1EC64BA88;
  if (!qword_1EC64BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA88);
  }

  return result;
}

unint64_t sub_1D1B8CD08()
{
  result = qword_1EC64BA90;
  if (!qword_1EC64BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA90);
  }

  return result;
}

unint64_t sub_1D1B8CD60()
{
  result = qword_1EC64BA98;
  if (!qword_1EC64BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA98);
  }

  return result;
}

uint64_t sub_1D1B8CDB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for StaticCameraSnapshotControl();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v14 = [a1 snapshotControl];
  if (v14 && (v15 = v14, v16 = [v14 mostRecentSnapshot], v15, v16))
  {
    v17 = [v16 captureDate];

    sub_1D1E669BC();
    v18 = 0;
    a1 = v17;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_1D1E669FC();
  (*(*(v19 - 8) + 56))(v7, v18, 1, v19);
  sub_1D19A376C(v7, &v12[*(v8 + 20)]);
  sub_1D1B8F014(v12, a2);
  return (*(v9 + 56))(a2, 0, 1, v8);
}

uint64_t StaticCameraSnapshotControl.mostRecentSnapshot.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1B8D084;

  return sub_1D1E506F8(v0);
}

uint64_t sub_1D1B8D084(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8D184, 0, 0);
}

uint64_t sub_1D1B8D184()
{
  v1 = *(v0 + 24);
  v2 = [v1 snapshotControl];

  v3 = [v2 mostRecentSnapshot];
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t StaticCameraSnapshotControl.takeSnapshot()()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for StaticCameraSnapshotControl() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_1D1B8D308;

  return sub_1D1E506F8(v0);
}

uint64_t sub_1D1B8D308(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8D408, 0, 0);
}

uint64_t sub_1D1B8D408()
{
  v34 = v0;
  v1 = v0[6];
  v2 = [v1 snapshotControl];

  if (v2)
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v4 = v0[2];
    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F3F8);
    sub_1D1B8EC64(v4, v3);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[4];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B8EFCC(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v12 = sub_1D1E68FAC();
      v14 = v13;
      sub_1D1B8ECC8(v9);
      v15 = sub_1D1B1312C(v12, v14, &v33);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v6, v7, "[%s] Taking snapshot", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    else
    {

      sub_1D1B8ECC8(v9);
    }

    [v2 takeSnapshot];
  }

  else
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v16 = v0[2];
    v17 = v0[3];
    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EC64F3F8);
    sub_1D1B8EC64(v16, v17);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[3];
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B8EFCC(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v25 = sub_1D1E68FAC();
      v27 = v26;
      sub_1D1B8ECC8(v22);
      v28 = sub_1D1B1312C(v25, v27, &v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1D16EC000, v19, v20, "[%s] Tried to take a snapshot but HMCameraSnapshotControl is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {

      sub_1D1B8ECC8(v22);
    }
  }

  v30 = v0[3];
  v29 = v0[4];

  v31 = v0[1];

  return v31();
}

uint64_t StaticCameraSnapshotControl.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticCameraSnapshotControl.mostRecentCaptureDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticCameraSnapshotControl() + 20);

  return sub_1D174A548(v3, a1);
}

unint64_t sub_1D1B8D890()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1D1B8D8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5E40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1B8D9A0(uint64_t a1)
{
  v2 = sub_1D1B8ED24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B8D9DC(uint64_t a1)
{
  v2 = sub_1D1B8ED24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraSnapshotControl.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BAA0, &qword_1D1E9BB08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8ED24();
  sub_1D1E6930C();
  v11[15] = 0;
  sub_1D1E66A7C();
  sub_1D1B8EFCC(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v1)
  {
    v9 = *(type metadata accessor for StaticCameraSnapshotControl() + 20);
    v11[14] = 1;
    sub_1D1E669FC();
    sub_1D1B8EFCC(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t StaticCameraSnapshotControl.hash(into:)()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1D1E66A7C();
  sub_1D1B8EFCC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for StaticCameraSnapshotControl();
  sub_1D174A548(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_1D1E6922C();
  sub_1D1B8EFCC(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t StaticCameraSnapshotControl.hashValue.getter()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B8EFCC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for StaticCameraSnapshotControl();
  sub_1D174A548(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D1E6922C();
    sub_1D1B8EFCC(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  return sub_1D1E6926C();
}

uint64_t StaticCameraSnapshotControl.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - v6;
  v33 = sub_1D1E66A7C();
  v29 = *(v33 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BAB0, &qword_1D1E9BB10);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for StaticCameraSnapshotControl();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8ED24();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v15;
  v27 = v18;
  v20 = v29;
  v35 = 0;
  sub_1D1B8EFCC(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v21 = v30;
  v22 = v31;
  v23 = v33;
  sub_1D1E68D7C();
  (*(v20 + 32))(v27, v21, v23);
  sub_1D1E669FC();
  v34 = 1;
  sub_1D1B8EFCC(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  (*(v32 + 8))(v14, v22);
  v24 = v27;
  sub_1D19A376C(v7, &v27[*(v26 + 20)]);
  sub_1D1B8EC64(v24, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1B8ECC8(v24);
}

uint64_t sub_1D1B8E468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - v11;
  sub_1D1E66A7C();
  sub_1D1B8EFCC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  sub_1D174A548(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_1D1E6922C();
  sub_1D1B8EFCC(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D1B8E690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - v11;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B8EFCC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  sub_1D174A548(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D1E6922C();
    sub_1D1B8EFCC(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel27StaticCameraSnapshotControlV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for StaticCameraSnapshotControl() + 20);
  v18 = *(v13 + 48);
  sub_1D174A548(a1 + v17, v16);
  sub_1D174A548(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1D174A548(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1D1741A30(v16, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1D1B8EFCC(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v21 = sub_1D1E6775C();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
  return (v21 & 1) != 0;
}

uint64_t type metadata accessor for StaticCameraSnapshotControl()
{
  result = qword_1EE07D298;
  if (!qword_1EE07D298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1B8EC64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraSnapshotControl();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B8ECC8(uint64_t a1)
{
  v2 = type metadata accessor for StaticCameraSnapshotControl();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1B8ED24()
{
  result = qword_1EC64BAA8;
  if (!qword_1EC64BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAA8);
  }

  return result;
}

void sub_1D1B8EE30()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D17B77BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D1B8EEC8()
{
  result = qword_1EC64BAC0;
  if (!qword_1EC64BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAC0);
  }

  return result;
}

unint64_t sub_1D1B8EF20()
{
  result = qword_1EC64BAC8;
  if (!qword_1EC64BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAC8);
  }

  return result;
}

unint64_t sub_1D1B8EF78()
{
  result = qword_1EC64BAD0;
  if (!qword_1EC64BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAD0);
  }

  return result;
}

uint64_t sub_1D1B8EFCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B8F014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraSnapshotControl();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B8F078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticCameraStreamControl();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v10 = [a1 streamControl];
  if (v10)
  {
    v11 = v10;
    v12 = [v11 streamState];

    if (v12 >= 5)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {

    v13 = 0;
  }

  v8[*(v4 + 20)] = v13;
  sub_1D1B92AC8(v8, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t static StaticCameraStreamControl.test(state:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1D1E66A6C();
  result = type metadata accessor for StaticCameraStreamControl();
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t type metadata accessor for StaticCameraStreamControl()
{
  result = qword_1EE07D308;
  if (!qword_1EE07D308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticCameraStreamControl.cameraStream.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1B8F308;

  return sub_1D1E506F8(v0);
}

uint64_t sub_1D1B8F308(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8F408, 0, 0);
}

uint64_t sub_1D1B8F408()
{
  v1 = *(v0 + 24);
  v2 = [v1 streamControl];

  v3 = [v2 cameraStream];
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t StaticCameraStreamControl.startStream()()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for StaticCameraStreamControl() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_1D1B8F58C;

  return sub_1D1E506F8(v0);
}

uint64_t sub_1D1B8F58C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8F68C, 0, 0);
}

uint64_t sub_1D1B8F68C()
{
  v34 = v0;
  v1 = v0[6];
  v2 = [v1 streamControl];

  if (v2)
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v4 = v0[2];
    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F3F8);
    sub_1D1B91D80(v4, v3);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[4];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B92120(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v12 = sub_1D1E68FAC();
      v14 = v13;
      sub_1D1B8C09C(v9);
      v15 = sub_1D1B1312C(v12, v14, &v33);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v6, v7, "[%s] Starting live stream", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    else
    {

      sub_1D1B8C09C(v9);
    }

    [v2 startStream];
  }

  else
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v16 = v0[2];
    v17 = v0[3];
    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EC64F3F8);
    sub_1D1B91D80(v16, v17);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[3];
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B92120(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v25 = sub_1D1E68FAC();
      v27 = v26;
      sub_1D1B8C09C(v22);
      v28 = sub_1D1B1312C(v25, v27, &v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1D16EC000, v19, v20, "[%s] Tried to start a live stream but HMCameraStreamControl is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {

      sub_1D1B8C09C(v22);
    }
  }

  v30 = v0[3];
  v29 = v0[4];

  v31 = v0[1];

  return v31();
}

uint64_t StaticCameraStreamControl.stopStream()()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for StaticCameraStreamControl() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_1D1B8FB48;

  return sub_1D1E506F8(v0);
}

uint64_t sub_1D1B8FB48(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8FC48, 0, 0);
}

uint64_t sub_1D1B8FC48()
{
  v34 = v0;
  v1 = v0[6];
  v2 = [v1 streamControl];

  if (v2)
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v4 = v0[2];
    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F3F8);
    sub_1D1B91D80(v4, v3);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[4];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B92120(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v12 = sub_1D1E68FAC();
      v14 = v13;
      sub_1D1B8C09C(v9);
      v15 = sub_1D1B1312C(v12, v14, &v33);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v6, v7, "[%s] Stopping live stream", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    else
    {

      sub_1D1B8C09C(v9);
    }

    [v2 stopStream];
  }

  else
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v16 = v0[2];
    v17 = v0[3];
    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EC64F3F8);
    sub_1D1B91D80(v16, v17);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[3];
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B92120(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v25 = sub_1D1E68FAC();
      v27 = v26;
      sub_1D1B8C09C(v22);
      v28 = sub_1D1B1312C(v25, v27, &v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1D16EC000, v19, v20, "[%s] Tried to stop a live stream but HMCameraStreamControl is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {

      sub_1D1B8C09C(v22);
    }
  }

  v30 = v0[3];
  v29 = v0[4];

  v31 = v0[1];

  return v31();
}

uint64_t StaticCameraStreamControl.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticCameraStreamControl.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticCameraStreamControl();
  *a1 = *(v1 + *(result + 20));
  return result;
}

BOOL static StaticCameraStreamControl.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticCameraStreamControl();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1D1B90120()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1D1B9014C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1B9021C(uint64_t a1)
{
  v2 = sub_1D1B91DE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90258(uint64_t a1)
{
  v2 = sub_1D1B91DE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraStreamControl.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BAD8, &qword_1D1E9BD68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B91DE4();
  sub_1D1E6930C();
  v12[15] = 0;
  sub_1D1E66A7C();
  sub_1D1B92120(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for StaticCameraStreamControl() + 20));
    v12[13] = 1;
    sub_1D1B91E38();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticCameraStreamControl.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D1B92120(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticCameraStreamControl();
  return MEMORY[0x1D3892850](*(v0 + *(v1 + 20)));
}

uint64_t StaticCameraStreamControl.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B92120(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticCameraStreamControl();
  MEMORY[0x1D3892850](*(v0 + *(v1 + 20)));
  return sub_1D1E6926C();
}

uint64_t StaticCameraStreamControl.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_1D1E66A7C();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BAF0, &qword_1D1E9BD70);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for StaticCameraStreamControl();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B91DE4();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_1D1B92120(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v19 = v31;
  v20 = v29;
  sub_1D1E68D7C();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_1D1B91E8C();
  sub_1D1E68D7C();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_1D1B91D80(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1B8C09C(v22);
}

uint64_t sub_1D1B90948(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B92120(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v1 + *(a1 + 20)));
  return sub_1D1E6926C();
}

uint64_t sub_1D1B909EC(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D1B92120(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return MEMORY[0x1D3892850](*(v2 + *(a2 + 20)));
}

uint64_t sub_1D1B90A78(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B92120(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v2 + *(a2 + 20)));
  return sub_1D1E6926C();
}

uint64_t StaticCameraStreamControl.StreamState.description.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6E696D6165727473;
  v4 = 0x676E6970706F7473;
  if (v1 != 3)
  {
    v4 = 0x6572747320746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E697472617473;
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

uint64_t sub_1D1B90BEC()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6E696D6165727473;
  v4 = 0x676E6970706F7473;
  if (v1 != 3)
  {
    v4 = 0x6165727453746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E697472617473;
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

uint64_t sub_1D1B90C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1B9290C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1B90CB4(uint64_t a1)
{
  v2 = sub_1D1B91EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90CF0(uint64_t a1)
{
  v2 = sub_1D1B91EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B90D2C(uint64_t a1)
{
  v2 = sub_1D1B92084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90D68(uint64_t a1)
{
  v2 = sub_1D1B92084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B90DA4(uint64_t a1)
{
  v2 = sub_1D1B91F34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90DE0(uint64_t a1)
{
  v2 = sub_1D1B91F34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B90E1C(uint64_t a1)
{
  v2 = sub_1D1B92030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90E58(uint64_t a1)
{
  v2 = sub_1D1B92030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B90E94(uint64_t a1)
{
  v2 = sub_1D1B91F88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90ED0(uint64_t a1)
{
  v2 = sub_1D1B91F88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B90F0C(uint64_t a1)
{
  v2 = sub_1D1B91FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90F48(uint64_t a1)
{
  v2 = sub_1D1B91FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraStreamControl.StreamState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB00, &qword_1D1E9BD78);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB08, &qword_1D1E9BD80);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB10, &qword_1D1E9BD88);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB18, &qword_1D1E9BD90);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB20, &qword_1D1E9BD98);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB28, &qword_1D1E9BDA0);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_1D1B91EE0();
  sub_1D1E6930C();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_1D1B92030();
      v38 = v52;
      sub_1D1E68DFC();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_1D1B92084();
      v38 = v52;
      sub_1D1E68DFC();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_1D1B91FDC();
      v29 = v40;
      v30 = v52;
      sub_1D1E68DFC();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_1D1B91F88();
      v29 = v43;
      v30 = v52;
      sub_1D1E68DFC();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_1D1B91F34();
      v29 = v46;
      v30 = v52;
      sub_1D1E68DFC();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

uint64_t StaticCameraStreamControl.StreamState.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticCameraStreamControl.StreamState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB60, &qword_1D1E9BDA8);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB68, &qword_1D1E9BDB0);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB70, &qword_1D1E9BDB8);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB78, &qword_1D1E9BDC0);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB80, &qword_1D1E9BDC8);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB88, &unk_1D1E9BDD0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D1B91EE0();
  v26 = v69;
  sub_1D1E692FC();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_1D1E68DDC();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_1D18085CC();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_1D1E688EC();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v41 = &type metadata for StaticCameraStreamControl.StreamState;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_1D1B92030();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_1D1E68C4C();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_1D1B92084();
      v45 = v54;
      sub_1D1E68C4C();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_1D1B91FDC();
    v46 = v31;
    v47 = v54;
    sub_1D1E68C4C();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_1D1B91F34();
    v49 = v64;
    v50 = v54;
    sub_1D1E68C4C();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v75 = 3;
  sub_1D1B91F88();
  v38 = v54;
  sub_1D1E68C4C();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_1D1B91D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraStreamControl();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1B91DE4()
{
  result = qword_1EC64BAE0;
  if (!qword_1EC64BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAE0);
  }

  return result;
}

unint64_t sub_1D1B91E38()
{
  result = qword_1EC64BAE8;
  if (!qword_1EC64BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAE8);
  }

  return result;
}

unint64_t sub_1D1B91E8C()
{
  result = qword_1EC64BAF8;
  if (!qword_1EC64BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAF8);
  }

  return result;
}

unint64_t sub_1D1B91EE0()
{
  result = qword_1EC64BB30;
  if (!qword_1EC64BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB30);
  }

  return result;
}

unint64_t sub_1D1B91F34()
{
  result = qword_1EC64BB38;
  if (!qword_1EC64BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB38);
  }

  return result;
}

unint64_t sub_1D1B91F88()
{
  result = qword_1EC64BB40;
  if (!qword_1EC64BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB40);
  }

  return result;
}

unint64_t sub_1D1B91FDC()
{
  result = qword_1EC64BB48;
  if (!qword_1EC64BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB48);
  }

  return result;
}

unint64_t sub_1D1B92030()
{
  result = qword_1EC64BB50;
  if (!qword_1EC64BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB50);
  }

  return result;
}

unint64_t sub_1D1B92084()
{
  result = qword_1EC64BB58;
  if (!qword_1EC64BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB58);
  }

  return result;
}

uint64_t sub_1D1B92120(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1B921B4()
{
  result = qword_1EC64BB98;
  if (!qword_1EC64BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB98);
  }

  return result;
}

unint64_t sub_1D1B9220C()
{
  result = qword_1EC64BBA0;
  if (!qword_1EC64BBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BBA8, &qword_1D1E9BF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBA0);
  }

  return result;
}

uint64_t sub_1D1B92298()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D1B92390()
{
  result = qword_1EC64BBB0;
  if (!qword_1EC64BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBB0);
  }

  return result;
}

unint64_t sub_1D1B923E8()
{
  result = qword_1EC64BBB8;
  if (!qword_1EC64BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBB8);
  }

  return result;
}

unint64_t sub_1D1B92440()
{
  result = qword_1EC64BBC0;
  if (!qword_1EC64BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBC0);
  }

  return result;
}

unint64_t sub_1D1B92498()
{
  result = qword_1EC64BBC8;
  if (!qword_1EC64BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBC8);
  }

  return result;
}

unint64_t sub_1D1B924F0()
{
  result = qword_1EC64BBD0;
  if (!qword_1EC64BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBD0);
  }

  return result;
}

unint64_t sub_1D1B92548()
{
  result = qword_1EC64BBD8;
  if (!qword_1EC64BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBD8);
  }

  return result;
}

unint64_t sub_1D1B925A0()
{
  result = qword_1EC64BBE0;
  if (!qword_1EC64BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBE0);
  }

  return result;
}

unint64_t sub_1D1B925F8()
{
  result = qword_1EC64BBE8;
  if (!qword_1EC64BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBE8);
  }

  return result;
}

unint64_t sub_1D1B92650()
{
  result = qword_1EC64BBF0;
  if (!qword_1EC64BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBF0);
  }

  return result;
}

unint64_t sub_1D1B926A8()
{
  result = qword_1EC64BBF8;
  if (!qword_1EC64BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBF8);
  }

  return result;
}

unint64_t sub_1D1B92700()
{
  result = qword_1EC64BC00;
  if (!qword_1EC64BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC00);
  }

  return result;
}

unint64_t sub_1D1B92758()
{
  result = qword_1EC64BC08;
  if (!qword_1EC64BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC08);
  }

  return result;
}

unint64_t sub_1D1B927B0()
{
  result = qword_1EC64BC10;
  if (!qword_1EC64BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC10);
  }

  return result;
}

unint64_t sub_1D1B92808()
{
  result = qword_1EC64BC18;
  if (!qword_1EC64BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC18);
  }

  return result;
}

unint64_t sub_1D1B92860()
{
  result = qword_1EC64BC20;
  if (!qword_1EC64BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC20);
  }

  return result;
}

unint64_t sub_1D1B928B8()
{
  result = qword_1EC64BC28;
  if (!qword_1EC64BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC28);
  }

  return result;
}

uint64_t sub_1D1B9290C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697472617473 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xE900000000000067 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6970706F7473 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6165727453746F6ELL && a2 == 0xEC000000676E696DLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1B92AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraStreamControl();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B92B34()
{
  *(v1 + 16) = v0;
  v2 = *(type metadata accessor for StaticLightProfile() + 28);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1D1B92BF0;

  return (sub_1D1B9A370)(v0 + v2);
}

uint64_t sub_1D1B92BF0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B92CF0, 0, 0);
}

uint64_t sub_1D1B92CF0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = [*(v0 + 32) profiles];

    sub_1D1741B10(0, &qword_1EC6497D0, 0x1E696CAD0);
    v4 = sub_1D1E67C1C();

    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    v6 = sub_1D174A6C4(sub_1D1B9E00C, v5, v4);

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        goto LABEL_6;
      }
    }
  }

  v7 = 0;
LABEL_6:
  v8 = *(v0 + 8);

  return v8(v7);
}

void sub_1D1B92E20(unint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = sub_1D1E66A7C();
  v3 = *(v22 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v22);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v11 = 0;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = a1 & 0xC000000000000001;
    v12 = v3 + 1;
    while (1)
    {
      if (v20)
      {
        v13 = MEMORY[0x1D3891EF0](v11, a1);
      }

      else
      {
        if (v11 >= *(v19 + 16))
        {
          goto LABEL_12;
        }

        v13 = *(a1 + 8 * v11 + 32);
      }

      v3 = v13;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = i;
      v16 = a1;
      v17 = [v13 uniqueIdentifier];
      sub_1D1E66A5C();

      a1 = v16;
      i = v15;
      swift_beginAccess();
      sub_1D1762CB8(v9, v7);
      swift_endAccess();
      (*v12)(v9, v22);

      ++v11;
      if (v14 == v15)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1D1B93024(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v45 = a3;
  v5 = sub_1D1E66A7C();
  v40 = *(v5 - 8);
  v6 = v40[8];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v52 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v55 = &v39[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39[-v11];
  if (a1 >> 62)
  {
LABEL_25:
    v13 = sub_1D1E6873C();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (v13)
  {
    v14 = 0;
    v47 = a1 & 0xFFFFFFFFFFFFFF8;
    v48 = a1 & 0xC000000000000001;
    v46 = a1 + 32;
    v54 = (v40 + 1);
    v51 = v40 + 2;
    v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v43 = a1;
    v44 = a2;
    v42 = v12;
    v41 = v13;
    do
    {
      if (v48)
      {
        v23 = MEMORY[0x1D3891EF0](v14, a1);
        v24 = __OFADD__(v14++, 1);
        if (v24)
        {
LABEL_22:
          __break(1u);
          return;
        }
      }

      else
      {
        if (v14 >= *(v47 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v23 = *(v46 + 8 * v14);
        v24 = __OFADD__(v14++, 1);
        if (v24)
        {
          goto LABEL_22;
        }
      }

      v25 = v15[61];
      v50 = v23;
      v26 = [v23 v25];
      sub_1D1E66A5C();

      swift_beginAccess();
      if (*(*a2 + 16) && (sub_1D1742188(v12), (v27 & 1) != 0))
      {
        swift_endAccess();
        (*v54)(v12, v5);
      }

      else
      {
        v49 = v14;
        swift_endAccess();
        v53 = *v54;
        v53(v12, v5);
        v28 = *v45;

        v29 = [v50 v15[61]];
        sub_1D1E66A5C();

        if (*(v28 + 16) && (v30 = *(v28 + 40), sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8]), v31 = sub_1D1E676DC(), v32 = -1 << *(v28 + 32), v33 = v31 & ~v32, ((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
        {
          v34 = ~v32;
          v35 = v40[9];
          v36 = v40[2];
          while (1)
          {
            v37 = v52;
            v36(v52, *(v28 + 48) + v35 * v33, v5);
            sub_1D1B9DF5C(&qword_1EE07D170, MEMORY[0x1E69695A8]);
            v38 = sub_1D1E6775C();
            v53(v37, v5);
            if (v38)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v53(v55, v5);

          a1 = v43;
          a2 = v44;
          v12 = v42;
          v13 = v41;
          v14 = v49;
          v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        }

        else
        {
LABEL_5:

          v16 = v53;
          v53(v55, v5);
          v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          v17 = v50;
          v18 = [v50 uniqueIdentifier];
          v19 = v52;
          sub_1D1E66A5C();

          type metadata accessor for HMError(0);
          v57 = 8;
          sub_1D1CD8538(MEMORY[0x1E69E7CC0]);
          sub_1D1B9DF5C(&qword_1EC6428A0, type metadata accessor for HMError);
          sub_1D1E6654C();
          v20 = v58;
          a2 = v44;
          swift_beginAccess();
          v21 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = *a2;
          *a2 = 0x8000000000000000;
          sub_1D17562C8(v20, v19, isUniquelyReferenced_nonNull_native);
          v16(v19, v5);
          *a2 = v56;
          swift_endAccess();

          v12 = v42;
          a1 = v43;
          v13 = v41;
          v14 = v49;
        }
      }
    }

    while (v14 != v13);
  }
}

unint64_t sub_1D1B935C0(unint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3891EF0](i, v3);
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_12;
          }

          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v9 = v4;
        v10 = [v6 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v11 = sub_1D1E67C1C();

        v4 = v9;
        sub_1D1B93024(v11, a2, a3);

        if (v8 == v9)
        {
          return result;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_1D1E6873C();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t static StaticLightProfile.fetchSettings(for:lightProfiles:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1B9BD98(a1, a2, a3, a4 & 1);
}

uint64_t StaticLightProfile.isNaturalLightEnabled.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticLightProfile() + 24));
  v2 = *v1;
  v3 = v1[1];
  if (v3 == 2)
  {
    LOBYTE(v3) = v2;
  }

  return v3 & 1;
}

uint64_t StaticLightProfile.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WritableProfileValue.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_1D1E685AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v2 + *(a1 + 52), v6);
  v11 = *(v5 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v10, v5);
  }

  (*(v11 + 16))(a2, v2, v5);
  result = (v12)(v10, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t StaticLightProfile.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticLightProfile() + 28);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL static WritableProfileValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v40 = a5;
  v41 = *(a3 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D1E685AC();
  v43 = *(v13 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  v18 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v34 - v19;
  v21 = *(a6 + 8);
  v42 = a1;
  v37 = v21;
  if ((sub_1D1E6775C() & 1) == 0)
  {
    return 0;
  }

  v35 = v12;
  v36 = v16;
  v44 = a3;
  v45 = v39;
  v46 = v40;
  v47 = a6;
  v22 = *(type metadata accessor for WritableProfileValue() + 52);
  v40 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = *(v43 + 16);
  v24(v20, v42 + v22, v13);
  v25 = a2 + v22;
  v26 = v41;
  v24(&v20[v23], v25, v13);
  v27 = *(v26 + 48);
  if (v27(v20, 1, a3) == 1)
  {
    if (v27(&v20[v23], 1, a3) == 1)
    {
      (*(v43 + 8))(v20, v13);
      return 1;
    }

    goto LABEL_7;
  }

  v28 = v36;
  v24(v36, v20, v13);
  if (v27(&v20[v23], 1, a3) == 1)
  {
    (*(v26 + 8))(v28, a3);
LABEL_7:
    (*(v38 + 8))(v20, v40);
    return 0;
  }

  v30 = v35;
  (*(v26 + 32))(v35, &v20[v23], a3);
  v31 = v28;
  v32 = sub_1D1E6775C();
  v33 = *(v26 + 8);
  v33(v30, a3);
  v33(v31, a3);
  (*(v43 + 8))(v20, v13);
  return (v32 & 1) != 0;
}

unint64_t sub_1D1B93E90()
{
  v1 = 25705;
  v2 = 0x726F737365636361;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_1D1B93F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1B9C798(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1B93F34(uint64_t a1)
{
  v2 = sub_1D1B9C588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B93F70(uint64_t a1)
{
  v2 = sub_1D1B9C588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticLightProfile.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BC30, &qword_1D1E9C600);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B9C588();
  sub_1D1E6930C();
  v23 = 0;
  sub_1D1E66A7C();
  sub_1D1B9DF5C(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticLightProfile();
    v12 = *(v3 + v11[5]);
    v22 = 1;
    sub_1D1E68EDC();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    LOBYTE(v13) = v13[1];
    v20 = v14;
    v21 = v13;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BC40, &qword_1D1E9C608);
    sub_1D1B9C5DC(&qword_1EC64BC48);
    sub_1D1E68F1C();
    v15 = v11[7];
    v18 = 3;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticLightProfile.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticLightProfile();
  v2 = *(v0 + v1[5]);
  sub_1D1E6922C();
  v3 = (v0 + v1[6]);
  v4 = *v3;
  v5 = v3[1];
  sub_1D1E6922C();
  if (v5 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v6 = v0 + v1[7];
  return sub_1D1E676EC();
}

uint64_t StaticLightProfile.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticLightProfile();
  v2 = *(v0 + v1[5]);
  sub_1D1E6922C();
  v3 = (v0 + v1[6]);
  v4 = *v3;
  v5 = v3[1];
  sub_1D1E6922C();
  if (v5 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v6 = v0 + v1[7];
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t StaticLightProfile.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1D1E66A7C();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BC50, &qword_1D1E9C610);
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v13 = type metadata accessor for StaticLightProfile();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B9C588();
  v38 = v12;
  v18 = v41;
  sub_1D1E692FC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v7;
  v41 = a1;
  v19 = v36;
  v47 = 0;
  v20 = sub_1D1B9DF5C(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v21 = v37;
  v22 = v38;
  sub_1D1E68D7C();
  v23 = v21;
  v24 = *(v19 + 32);
  v24(v16, v23, v3);
  v46 = 1;
  v25 = sub_1D1E68D3C();
  v33 = v24;
  v37 = v20;
  v26 = v13;
  v16[*(v13 + 20)] = v25 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BC40, &qword_1D1E9C608);
  v43 = 2;
  sub_1D1B9C5DC(&qword_1EC64BC58);
  sub_1D1E68D7C();
  v27 = v39;
  v28 = v45;
  v29 = &v16[*(v13 + 24)];
  *v29 = v44;
  v29[1] = v28;
  v42 = 3;
  v30 = v34;
  sub_1D1E68D7C();
  (*(v27 + 8))(v22, v40);
  v33(&v16[*(v26 + 28)], v30, v3);
  sub_1D1B9DFA4(v16, v35, type metadata accessor for StaticLightProfile);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1D1B9D0C4(v16, type metadata accessor for StaticLightProfile);
}

uint64_t sub_1D1B948CC(uint64_t a1, int *a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = *(v2 + a2[5]);
  sub_1D1E6922C();
  v5 = (v2 + a2[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_1D1E6922C();
  if (v7 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v8 = v2 + a2[7];
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B94A04(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v15 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1B9DFA4(a1, v17, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      sub_1D1B9D0C4(v17, type metadata accessor for StateSnapshot.UpdateType);
      return a3;
    }

    v19 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48)];
    v20 = [a2 uniqueIdentifier];
    sub_1D1E66A5C();

    if (*(v19 + 16) && (v21 = sub_1D1742188(v13), (v22 & 1) != 0))
    {
      v23 = *(*(v19 + 56) + v21);
      v24 = *(v7 + 8);
      v24(v13, v6);

      if ((v23 & 0x80000000) == 0)
      {
        a3 = v23 & 1;
        v24(v17, v6);
        return a3;
      }
    }

    else
    {

      v24 = *(v7 + 8);
      v24(v13, v6);
    }

    v24(v17, v6);
    return a3;
  }

  v25 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48)];
  v26 = [a2 uniqueIdentifier];
  sub_1D1E66A5C();

  LOBYTE(v26) = sub_1D1719534(v11, v25);

  v27 = *(v7 + 8);
  v27(v11, v6);
  v27(v17, v6);
  if (v26)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

uint64_t sub_1D1B94D10(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t static StaticLightProfile.setNaturalLight(_:lightProfiles:waitForWriteRequestCompletion:timeout:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 394) = a6;
  *(v6 + 120) = a3;
  *(v6 + 128) = a5;
  *(v6 + 393) = a4;
  *(v6 + 392) = a2;
  *(v6 + 112) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v6 + 144) = updated;
  v9 = *(*(updated - 8) + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v10 = type metadata accessor for StateSnapshot(0);
  *(v6 + 160) = v10;
  v11 = *(v10 - 8);
  *(v6 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440) - 8) + 64) + 15;
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B94F8C, 0, 0);
}

uint64_t sub_1D1B94F8C()
{
  v1 = v0[15];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (sub_1D1E6827C())
  {
    (*(v0[21] + 56))(v0[14], 1, 1, v0[20]);
    v4 = v0[22];
    v3 = v0[23];
    v5 = v0[19];
    v6 = v0[17];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_1D1B950D8;

    return sub_1D1E387D4();
  }
}

uint64_t sub_1D1B950D8(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B951D8, 0, 0);
}

uint64_t sub_1D1B951D8()
{
  v1 = v0[25];
  if (!v1)
  {
LABEL_4:
    (*(v0[21] + 56))(v0[14], 1, 1, v0[20]);
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[19];
    v10 = v0[17];

    v11 = v0[1];

    return v11();
  }

  v2 = v0[23];
  v3 = v0[15];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D1E6829C();
  v5 = type metadata accessor for StaticLightProfile();
  if ((*(*(v5 - 8) + 48))(v2, 1, v5) == 1)
  {
    v6 = v0[23];

    sub_1D1741A30(v6, &qword_1EC6430E8, &unk_1D1E71440);
    goto LABEL_4;
  }

  v13 = swift_task_alloc();
  v0[26] = v13;
  *v13 = v0;
  v13[1] = sub_1D1B95388;
  v14 = v0[23];

  return sub_1D1B92B34();
}

uint64_t sub_1D1B95388(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B95488, 0, 0);
}

uint64_t sub_1D1B95488()
{
  v1 = *(v0 + 216);
  sub_1D1B9D0C4(*(v0 + 184), type metadata accessor for StaticLightProfile);
  if (v1 && (v2 = *(v0 + 216), v3 = [v2 accessory], v2, v3) && (v4 = objc_msgSend(v3, sel_home), *(v0 + 224) = v4, v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 392);
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    *(swift_task_alloc() + 16) = v6;
    v8 = *(v7 + 8);
    v9 = sub_1D1E67AEC();

    if (v9)
    {
      v10 = *(v0 + 393);
      v11 = *(v0 + 120);
      v12 = v11[4];
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      *(v0 + 104) = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
      *(swift_task_alloc() + 16) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C0, &qword_1D1E974E0);
      v13 = *(v12 + 8);
      sub_1D1E67A9C();

      *(v0 + 232) = *(v0 + 96);
      if (v10 == 1)
      {
        v14 = *(v0 + 394);
        v15 = swift_task_alloc();
        *(v0 + 240) = v15;
        *v15 = v0;
        v15[1] = sub_1D1B95840;
        v16 = *(v0 + 120);
        v17 = *(v0 + 128);
        v18 = *(v0 + 392);

        return sub_1D1B9CB3C(v18, v16, v17, v14 & 1);
      }

      else
      {
        v26 = *(v0 + 200);
        sub_1D17419CC(*(v0 + 120), v0 + 16);
        sub_1D17419CC(v0 + 16, v0 + 56);
        v27 = swift_allocObject();
        *(v0 + 256) = v27;
        *(v27 + 16) = v6;
        sub_1D16EEE20((v0 + 16), v27 + 24);
        *(v27 + 64) = v4;
        *(v27 + 72) = v26;
        *(v0 + 264) = sub_1D1E67E1C();
        v28 = v4;
        v29 = v26;
        *(v0 + 272) = sub_1D1E67E0C();
        v31 = sub_1D1E67D4C();
        *(v0 + 280) = v31;
        *(v0 + 288) = v30;

        return MEMORY[0x1EEE6DFA0](sub_1D1B95A00, v31, v30);
      }
    }

    v20 = *(v0 + 200);
  }

  else
  {
    v20 = *(v0 + 200);
  }

  (*(*(v0 + 168) + 56))(*(v0 + 112), 1, 1, *(v0 + 160));
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 152);
  v24 = *(v0 + 136);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D1B95840()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1D1B95954;
  }

  else
  {
    v3 = sub_1D1B9E034;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1B95954()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[19];
  v7 = v0[17];

  v8 = v0[1];
  v9 = v0[31];

  return v8();
}

uint64_t sub_1D1B95A00()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 environment];

  v3 = sub_1D1E675FC();
  if (*(v3 + 16) && (sub_1D171D2F0(0xD00000000000001BLL, 0x80000001D1EC0D30), (v4 & 1) != 0))
  {

    v5 = swift_task_alloc();
    *(v0 + 336) = v5;
    *v5 = v0;
    v5[1] = sub_1D1B963C4;
    v6 = *(v0 + 392);

    return sub_1D1B9CB3C(v6, v0 + 56, 0, 1);
  }

  else
  {
    v8 = *(v0 + 264);
    v9 = *(v0 + 272);
    v10 = *(v0 + 256);
    v11 = *(v0 + 136);

    v12 = sub_1D1E67E7C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

    v13 = sub_1D1E67E0C();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = &unk_1D1E9C670;
    v14[5] = v10;
    sub_1D17C6EF0(0, 0, v11, &unk_1D1E9C678, v14);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));

    return MEMORY[0x1EEE6DFA0](sub_1D1B961A0, 0, 0);
  }
}

uint64_t sub_1D1B95C80()
{
  v1 = *(v0 + 304);

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1B95D18, 0, 0);
}

uint64_t sub_1D1B95D18()
{
  v1 = *(v0 + 264);
  *(v0 + 312) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B95DA4, v3, v2);
}

uint64_t sub_1D1B95DA4()
{
  v1 = *(v0 + 312);

  *(v0 + 320) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1B95E18, 0, 0);
}

uint64_t sub_1D1B95E18()
{
  v1 = v0[37];
  v2 = v0[28];
  v3 = v0[25];
  v5 = v0[18];
  v4 = v0[19];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  v7 = [v2 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = v0[10];
  v9 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v8);
  v10 = sub_1D1E66A7C();
  v12 = sub_1D18CE91C(sub_1D18CFDFC, 0, v8, v10, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v11);
  v13 = sub_1D17841EC(v12);

  *(v4 + v6) = v13;
  swift_storeEnumTagMultiPayload();
  v14 = swift_task_alloc();
  v0[41] = v14;
  *v14 = v0;
  v14[1] = sub_1D1B95FB0;
  v15 = v0[40];
  v16 = v0[28];
  v17 = v0[22];
  v18 = v0[19];

  return sub_1D1E5A250(v17, v18, v3, v16, 0);
}

uint64_t sub_1D1B95FB0()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 152);
  v5 = *v0;

  sub_1D1B9D0C4(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1B9D0C4(v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1B9610C, 0, 0);
}

uint64_t sub_1D1B96124()
{
  v1 = v0[34];
  v2 = v0[32];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  return MEMORY[0x1EEE6DFA0](sub_1D1B961A0, 0, 0);
}

uint64_t sub_1D1B961A0()
{
  v15 = v0;
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07B5D8);

  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    sub_1D1E66A7C();
    sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v8 = sub_1D1E6760C();
    v10 = sub_1D1B1312C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D16EC000, v3, v4, "start override profile write %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  v0[44] = sub_1D1E67E1C();
  v0[45] = sub_1D1E67E0C();
  v12 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B96604, v12, v11);
}

uint64_t sub_1D1B963C4()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_1D1B9656C;
  }

  else
  {
    v3 = sub_1D1B964D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1B964D8()
{
  v0[37] = v0[43];
  v1 = v0[33];
  v0[38] = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B95C80, v3, v2);
}

uint64_t sub_1D1B9656C()
{
  *(v0 + 296) = 0;
  v1 = *(v0 + 264);
  *(v0 + 304) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B95C80, v3, v2);
}

uint64_t sub_1D1B96604()
{
  v1 = *(v0 + 360);

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1B9669C, 0, 0);
}

uint64_t sub_1D1B9669C()
{
  v1 = *(v0 + 352);
  *(v0 + 368) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B96728, v3, v2);
}

uint64_t sub_1D1B96728()
{
  v1 = *(v0 + 368);

  *(v0 + 376) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1B9679C, 0, 0);
}

uint64_t sub_1D1B9679C()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[25];
  v5 = v0[18];
  v4 = v0[19];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
  v7 = [v1 uniqueIdentifier];
  sub_1D1E66A5C();

  *(v4 + v6) = v2;
  swift_storeEnumTagMultiPayload();
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = sub_1D1B968B4;
  v9 = v0[47];
  v10 = v0[28];
  v11 = v0[19];
  v12 = v0[14];

  return sub_1D1E5A250(v12, v11, v3, v10, 0);
}

uint64_t sub_1D1B968B4()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 152);
  v4 = *v0;

  sub_1D1B9D0C4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1B969E0, 0, 0);
}

uint64_t sub_1D1B969E0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 112);

  (*(v3 + 56))(v4, 0, 1, v2);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D1B96AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4[5] = updated;
  v8 = *(*(updated - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v9 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[8] = v10;
  *v10 = v4;
  v10[1] = sub_1D1B96BC4;

  return (sub_1D1B9CB3C)(a1, a2, 0, 1);
}

uint64_t sub_1D1B96BC4()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D1B96D78;
  }

  else
  {
    v3 = sub_1D1B96CD8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1B96CD8()
{
  v0[10] = v0[9];
  v0[11] = sub_1D1E67E1C();
  v0[12] = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B96E1C, v2, v1);
}

uint64_t sub_1D1B96D78()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = sub_1D1E67E1C();
  *(v0 + 96) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B96E1C, v2, v1);
}

uint64_t sub_1D1B96E1C()
{
  v1 = *(v0 + 96);

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1B96EB4, 0, 0);
}

uint64_t sub_1D1B96EB4()
{
  v1 = *(v0 + 88);
  *(v0 + 104) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B96F40, v3, v2);
}

uint64_t sub_1D1B96F40()
{
  v1 = *(v0 + 104);

  *(v0 + 112) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1B96FB4, 0, 0);
}

uint64_t sub_1D1B96FB4()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  v7 = [v4 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = v5[3];
  v9 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v8);
  v10 = sub_1D1E66A7C();
  v12 = sub_1D18CE91C(sub_1D18CFDFC, 0, v8, v10, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v11);
  v13 = sub_1D17841EC(v12);

  *(v2 + v6) = v13;
  swift_storeEnumTagMultiPayload();
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_1D1B97138;
  v15 = v0[14];
  v17 = v0[6];
  v16 = v0[7];
  v19 = v0[3];
  v18 = v0[4];

  return sub_1D1E5A250(v16, v17, v18, v19, 0);
}

uint64_t sub_1D1B97138()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  sub_1D1B9D0C4(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1B9D0C4(v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1B97294, 0, 0);
}

uint64_t sub_1D1B97294()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1B972FC(uint64_t a1, char a2)
{
  *(v2 + 160) = a2;
  *(v2 + 144) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1B97320, 0, 0);
}

uint64_t sub_1D1B97320()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1A77D2C;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_47;
  *(v0 + 112) = v3;
  [v2 setNaturalLightingEnabled:v1 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1B97464()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1AF6168;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E0, &unk_1D1E9CBB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_82;
  v0[14] = v2;
  [v1 fetchSettingsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1B97580(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA00, &qword_1D1E97570);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v32 - v14;
  v16 = *(type metadata accessor for StaticLightProfile() + 28);
  if (*(*a1 + 16) && (sub_1D1742188(a2 + v16), (v17 & 1) != 0))
  {
    v34 = *(v5 + 16);
    v35 = a2;
    v34(v11, a2 + v16, v4);
    v18 = sub_1D1C77360(v36);
    if (*v19)
    {
      v33 = v18;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
      v21 = *(v20 + 48);
      v34(v9, v35, v4);
      v22 = sub_1D1762CB8(&v15[v21], v9);
      (v33)(v36, 0);
      (*(v5 + 8))(v11, v4);
      *v15 = v22 & 1;
      (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
    }

    else
    {
      (v18)(v36, 0);
      (*(v5 + 8))(v11, v4);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
      (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
    }

    return sub_1D1741A30(v15, &qword_1EC64AA00, &qword_1D1E97570);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v23 = *(v5 + 72);
    v24 = a2;
    v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D1E739C0;
    (*(v5 + 16))(v26 + v25, v24, v4);
    v27 = sub_1D179BE14(v26);
    swift_setDeallocating();
    (*(v5 + 8))(v26 + v25, v4);
    swift_deallocClassInstance();
    v28 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = *a1;
    result = sub_1D1756288(v27, v24 + v16, isUniquelyReferenced_nonNull_native);
    *a1 = v36[0];
  }

  return result;
}

uint64_t sub_1D1B9793C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 162) = v14;
  *(v8 + 128) = v13;
  *(v8 + 112) = v12;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 161) = a5;
  *(v8 + 80) = a4;
  *(v8 + 88) = a6;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B97A00, 0, 0);
}

uint64_t sub_1D1B97A00()
{
  v1 = *(v0 + 136);
  v31 = *(v0 + 162);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 161);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 64);
  v9 = sub_1D1E67E7C();
  v30 = *(v0 + 88);
  v28 = *(*(v9 - 8) + 56);
  v29 = v9;
  v28(v1, 1, 1);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v7;
  *(v10 + 40) = v6;
  *(v10 + 48) = v5;
  *(v10 + 56) = v30;
  *(v10 + 72) = v4;
  *(v10 + 80) = v3;
  *(v10 + 88) = v2;

  sub_1D1A01DDC(v1, &unk_1D1E9CB28, v10);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v31 & 1) == 0)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EE07B5D8);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 128);
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v14;
      _os_log_impl(&dword_1D16EC000, v12, v13, "performing natural lighting requests with timeout: %f", v15, 0xCu);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 88);
    v21 = *(v0 + 64);

    (v28)(v16, 1, 1, v29);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v17;
    v22[5] = v20;
    v22[6] = v18;
    v22[7] = v19;

    sub_1D1A01DDC(v16, &unk_1D1E9CB48, v22);
    sub_1D1741A30(v16, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v23 = *(MEMORY[0x1E69E8708] + 4);
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v24 = v0;
  v24[1] = sub_1D1B97D48;
  v26 = *(v0 + 64);

  return MEMORY[0x1EEE6DAC8](v0 + 160, 0, 0, v25);
}

uint64_t sub_1D1B97D48()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1D1AF6F00;
  }

  else
  {
    v3 = sub_1D1B97E5C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1B97E5C()
{
  v22 = v0;
  v1 = **(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 120);
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07B5D8);

  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_beginAccess();
    v9 = *(v6 + 16);
    sub_1D1E66A7C();
    sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8]);

    v10 = sub_1D1E6760C();
    v12 = v11;

    v13 = sub_1D1B1312C(v10, v12, &v21);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1D16EC000, v4, v5, "natural lighting requests has completed with result: %s, cancelling timeout", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v14 = *(v0 + 120);
  swift_beginAccess();
  v15 = *(v14 + 16);
  if (*(v15 + 16))
  {
    sub_1D1AFA694();
    swift_allocError();
    *v16 = v15;
    swift_willThrow();
    v17 = *(v0 + 136);
  }

  else
  {
    v19 = *(v0 + 136);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D1B98138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v18;
  *(v8 + 64) = v17;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 200) = a6;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  v9 = sub_1D1E6702C();
  *(v8 + 88) = v9;
  v10 = *(v9 - 8);
  *(v8 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v12 = sub_1D1E66FDC();
  *(v8 + 112) = v12;
  v13 = *(v12 - 8);
  *(v8 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B98288, 0, 0);
}

uint64_t sub_1D1B98288()
{
  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_1D1E6701C();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_1EE07AE50);
  sub_1D1E66FCC();
  v3 = sub_1D1E66FFC();
  v4 = sub_1D1E683EC();
  v5 = sub_1D1E6855C();
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v13 = *(v0 + 32);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v13 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v13 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x1EEE6DBF8](v5, v6, v7, v8, v9, v10, v11, v12);
      }

      if (v13 >> 16 <= 0x10)
      {
        v13 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v14 = *(v0 + 144);
  v15 = swift_slowAlloc();
  *v15 = 0;
  v16 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v3, v4, v16, v13, "", v15, 2u);
  MEMORY[0x1D3893640](v15, -1, -1);
LABEL_12:

  v17 = *(v0 + 144);
  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  v20 = *(v0 + 80);
  v21 = *(v0 + 200);
  v23 = *(v0 + 32);
  v22 = *(v0 + 40);
  v31 = *(v0 + 64);
  v32 = *(v0 + 48);
  (*(v19 + 16))(*(v0 + 136), v17, v18);
  v24 = sub_1D1E6705C();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_1D1E6704C();
  v27 = *(v19 + 8);
  *(v0 + 168) = v27;
  *(v0 + 176) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v17, v18);
  v28 = swift_task_alloc();
  *(v0 + 184) = v28;
  *(v28 + 16) = v32;
  *(v28 + 32) = v31;
  *(v28 + 48) = v23;
  *(v28 + 56) = v22;
  *(v28 + 64) = v21;
  *(v28 + 72) = v20;
  v29 = *(MEMORY[0x1E69E87D8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  *(v5 + 8) = sub_1D1AF736C;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v10 = &unk_1D1E9CB58;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = 0;
  v9 = 0;
  v11 = v28;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D1B98540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v12;
  *(v8 + 120) = a8;
  *(v8 + 128) = v13;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B98604, 0, 0);
}

uint64_t sub_1D1B98604()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v22 = *(v0 + 80);
    }

    result = sub_1D1E6873C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);

    v25 = *(v0 + 8);

    return v25();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v28 = **(v0 + 72);
    v29 = result;
    v27 = v1 & 0xC000000000000001;
    v26 = *(v0 + 80) + 32;
    while (1)
    {
      v36 = v3;
      if (v27)
      {
        v6 = MEMORY[0x1D3891EF0](v3, *(v0 + 80));
      }

      else
      {
        v6 = *(v26 + 8 * v3);
      }

      v7 = *(v0 + 144);
      v33 = *(v0 + 136);
      v34 = v6;
      v32 = *(v0 + 152);
      v8 = *(v0 + 128);
      v9 = *(v0 + 104);
      v30 = *(v0 + 112);
      v31 = *(v0 + 120);
      v10 = *(v0 + 88);
      v11 = *(v0 + 96);
      v12 = sub_1D1E67E7C();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v7, 1, 1, v12);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = v34;
      *(v14 + 56) = v9;
      *(v14 + 64) = v30;
      *(v14 + 72) = v31;
      *(v14 + 80) = v32;
      *(v14 + 88) = v8;
      sub_1D1741C08(v7, v33, &unk_1EC6442C0, &qword_1D1E741A0);
      LODWORD(v9) = (*(v13 + 48))(v33, 1, v12);

      v35 = v34;

      v16 = *(v0 + 136);
      if (v9 == 1)
      {
        sub_1D1741A30(*(v0 + 136), &unk_1EC6442C0, &qword_1D1E741A0);
        if (!*v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D1E67E6C();
        (*(v13 + 8))(v16, v12);
        if (!*v15)
        {
LABEL_14:
          v18 = 0;
          v20 = 0;
          goto LABEL_15;
        }
      }

      v17 = *(v14 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_1D1E67D4C();
      v20 = v19;
      swift_unknownObjectRelease();
LABEL_15:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1D1E9CB68;
      *(v21 + 24) = v14;

      if (v20 | v18)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v4 = 0;
      }

      v3 = v36 + 1;
      v5 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v28;
      swift_task_create();

      sub_1D1741A30(v5, &unk_1EC6442C0, &qword_1D1E741A0);
      if (v29 == v36 + 1)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B989BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = v15;
  *(v8 + 48) = v17;
  *(v8 + 72) = v16;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  *(v8 + 56) = v11;
  *v11 = v8;
  v11[1] = sub_1D1B98AD4;

  return v13(a6);
}

uint64_t sub_1D1B98AD4()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1D1B98CB0;
  }

  else
  {
    v3 = sub_1D1B98BE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1B98BE8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = [*(v0 + 16) services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v4 = sub_1D1E67C1C();

  sub_1D1B92E20(v4, v2 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1B98CB0()
{
  v26 = v0;
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07B5D8);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v10 = 136315394;
    v13 = sub_1D1E6888C();
    v15 = sub_1D1B1312C(v13, v14, &v25);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Error performing natural light block with name: %s error: %@", v10, 0x16u);
    sub_1D1741A30(v11, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  v18 = *(v0 + 64);
  v19 = *(v0 + 48);
  v20 = [*(v0 + 16) services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v21 = sub_1D1E67C1C();

  v22 = v18;
  sub_1D1B9ACDC(v21, (v19 + 16), v18);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D1B98F38(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 48) = a5;
  *(v7 + 40) = a1;
  v8 = sub_1D1E68A4C();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B99000, 0, 0);
}

uint64_t sub_1D1B99000()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = sub_1D1E693AC();
  v5 = v4;
  sub_1D1E6912C();
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1D1B990DC;
  v7 = v0[11];

  return sub_1D1A01910(v3, v5, 0, 0, 1);
}

uint64_t sub_1D1B990DC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v5 = sub_1D1AF8520;
  }

  else
  {
    v5 = sub_1D1B99244;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1B99244()
{
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE07B5D8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "natural lighting requests timeout has been hit", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v5 = v0[13];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  sub_1D1B935C0(v8, (v7 + 16), (v6 + 16));
  swift_beginAccess();
  v9 = *(v7 + 16);
  sub_1D1AFA694();
  swift_allocError();
  *v10 = v9;
  swift_willThrow();
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t StaticLightProfile.copyReplacing(id:isNaturalLightSupported:isNaturalLightEnabled:accessoryId:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v38 = a4;
  v40 = a3;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v39 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - v21;
  sub_1D1741C08(a1, v15, &qword_1EC642590, qword_1D1E71260);
  v23 = *(v17 + 48);
  v24 = v23(v15, 1, v16);
  v42 = v6;
  if (v24 == 1)
  {
    (*(v17 + 16))(v22, v6, v16);
    if (v23(v15, 1, v16) != 1)
    {
      sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
  }

  v25 = v41;
  if (v41 == 2)
  {
    v26 = type metadata accessor for StaticLightProfile();
    v27 = v42;
    v25 = *(v42 + *(v26 + 20));
    v28 = v40;
  }

  else
  {
    v28 = v40;
    v27 = v42;
  }

  if (v28 == 2)
  {
    v29 = (v27 + *(type metadata accessor for StaticLightProfile() + 24));
    v30 = *v29;
    v31 = v29[1];
    if (v31 == 2)
    {
      v28 = v30;
    }

    else
    {
      v28 = v31;
    }
  }

  v32 = v39;
  sub_1D1741C08(v38, v13, &qword_1EC642590, qword_1D1E71260);
  if (v23(v13, 1, v16) == 1)
  {
    v33 = type metadata accessor for StaticLightProfile();
    (*(v17 + 16))(v32, v42 + *(v33 + 28), v16);
    if (v23(v13, 1, v16) != 1)
    {
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v17 + 32))(v32, v13, v16);
  }

  v34 = *(v17 + 32);
  v34(a5, v22, v16);
  v35 = type metadata accessor for StaticLightProfile();
  *(a5 + v35[5]) = v25 & 1;
  v36 = (a5 + v35[6]);
  *v36 = v28 & 1;
  v36[1] = 2;
  return (v34)(a5 + v35[7], v32, v16);
}

uint64_t WritableProfileValue.overrideValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 16);
  v6 = sub_1D1E685AC();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_1D1B99838(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xED000065756C6156)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D1B99940(char a1)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1 & 1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B99988(char a1)
{
  if (a1)
  {
    return 0x656469727265766FLL;
  }

  else
  {
    return 0x65756C6176;
  }
}

BOOL sub_1D1B999C8(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1D1B99908(*a1, *a2);
}

uint64_t sub_1D1B999E0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1D1B99940(*v1);
}

uint64_t sub_1D1B999F4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1D1B99918(a1, *v2);
}

uint64_t sub_1D1B99A08(uint64_t a1, void *a2)
{
  sub_1D1E6920C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1D1B99918(v9, *v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B99A54(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1D1B99988(*v1);
}

uint64_t sub_1D1B99A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1D1B99838(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D1B99A9C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1D1B48FA0();
  *a2 = result;
  return result;
}

uint64_t sub_1D1B99AD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D1B99B24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t WritableProfileValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v14[0] = *(a2 + 32);
  v14[1] = v4;
  v15 = v4;
  v16 = v14[0];
  type metadata accessor for WritableProfileValue.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D1E68F7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1E6930C();
  LOBYTE(v15) = 0;
  v11 = v17;
  sub_1D1E68F1C();
  if (!v11)
  {
    v12 = *(a2 + 52);
    LOBYTE(v15) = 1;
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WritableProfileValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 40);
  sub_1D1E676EC();
  v5 = *(a2 + 52);
  sub_1D1E685AC();
  return sub_1D1E685BC();
}

uint64_t WritableProfileValue.hashValue.getter(uint64_t a1)
{
  sub_1D1E6920C();
  WritableProfileValue.hash(into:)(v3, a1);
  return sub_1D1E6926C();
}

uint64_t WritableProfileValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v11 = sub_1D1E685AC();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v44 = &v36 - v14;
  v43 = *(a2 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  type metadata accessor for WritableProfileValue.CodingKeys();
  swift_getWitnessTable();
  v49 = sub_1D1E68DEC();
  v42 = *(v49 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v19 = &v36 - v18;
  v45 = a2;
  v50 = a2;
  v51 = a3;
  v48 = a3;
  v52 = a4;
  v53 = a5;
  v20 = type metadata accessor for WritableProfileValue();
  v41 = *(v20 - 8);
  v21 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v36 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = v19;
  v25 = v54;
  sub_1D1E692FC();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v41;
  v27 = v42;
  v54 = v20;
  v28 = v43;
  v29 = v44;
  LOBYTE(v50) = 0;
  v30 = v45;
  v31 = v46;
  sub_1D1E68D7C();
  v32 = *(v28 + 32);
  v37 = v23;
  v32(v23, v47, v30);
  LOBYTE(v50) = 1;
  sub_1D1E68CBC();
  (*(v27 + 8))(v31, v49);
  v33 = v54;
  v34 = v37;
  (*(v38 + 32))(&v37[*(v54 + 52)], v29, v39);
  (*(v26 + 16))(v40, v34, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v26 + 8))(v34, v33);
}

uint64_t sub_1D1B9A234(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  WritableProfileValue.hash(into:)(v4, a2);
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel18StaticLightProfileV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticLightProfile();
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4[6];
  v6 = a2 + v5;
  if (*(a1 + v5) != *(a2 + v5))
  {
    return 0;
  }

  v8 = *(a1 + v5 + 1);
  v9 = *(v6 + 1);
  if (v8 == 2)
  {
    if (v9 == 2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v9 == 2 || ((v8 ^ v9) & 1) != 0)
  {
    return 0;
  }

LABEL_10:
  v10 = v4[7];

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D1B9A370(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B9A43C, 0, 0);
}

uint64_t sub_1D1B9A43C()
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
    v3 = sub_1D1B9A52C;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1B9AA10;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1B9A52C()
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
    v19 = [v15 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
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
  v29 = [v24 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
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

uint64_t sub_1D1B9A998()
{
  v1 = v0[10];

  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_1D1B9AA10()
{
  v1 = *(v0 + 104);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1B9AAA8, 0, 0);
}

uint64_t sub_1D1B9AAA8()
{
  v1 = *(v0 + 96);
  *(v0 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B9AB34, v3, v2);
}

uint64_t sub_1D1B9AB34()
{
  v1 = *(v0 + 112);

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1B9ABA8, 0, 0);
}

uint64_t sub_1D1B9ABA8()
{
  v1 = v0[12];
  v2 = v0[5];
  v0[16] = sub_1D1E66A2C();
  v0[17] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B9AC40, v4, v3);
}

uint64_t sub_1D1B9AC40()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  v4 = [v3 accessoryFor_];

  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7(v4);
}

void sub_1D1B9ACDC(unint64_t a1, unint64_t *a2, unint64_t a3)
{
  v39 = sub_1D1E66A7C();
  v33 = *(v39 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_27:
    v9 = sub_1D1E6873C();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v37 = a1 & 0xFFFFFFFFFFFFFF8;
      v38 = a1 & 0xC000000000000001;
      v32[2] = v33 + 16;
      v35 = (v33 + 8);
      v36 = a1;
      v34 = v9;
      do
      {
        if (v38)
        {
          v13 = MEMORY[0x1D3891EF0](v10, a1);
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v10 >= *(v37 + 16))
          {
            goto LABEL_24;
          }

          v13 = *(a1 + 8 * v10 + 32);
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v40 = v14;
        v15 = v13;
        v16 = [v13 uniqueIdentifier];
        sub_1D1E66A5C();

        swift_beginAccess();
        v17 = a3;
        v18 = a3;
        v19 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *a2;
        a1 = v41;
        v21 = a2;
        *a2 = 0x8000000000000000;
        a2 = v8;
        a3 = sub_1D1742188(v8);
        v23 = *(a1 + 16);
        v24 = (v22 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_25;
        }

        v26 = v22;
        if (*(a1 + 24) >= v25)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            a1 = v41;
            if (v22)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1D173C4C0();
            a1 = v41;
            if (v26)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1D172E458(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_1D1742188(a2);
          if ((v26 & 1) != (v28 & 1))
          {
            sub_1D1E690FC();
            __break(1u);
            return;
          }

          a3 = v27;
          a1 = v41;
          if (v26)
          {
LABEL_4:
            v11 = *(a1 + 56);
            v12 = *(v11 + 8 * a3);
            *(v11 + 8 * a3) = v17;
            a3 = v17;

            v8 = a2;
            goto LABEL_5;
          }
        }

        *(a1 + 8 * (a3 >> 6) + 64) |= 1 << a3;
        v8 = a2;
        (*(v33 + 16))(*(a1 + 48) + *(v33 + 72) * a3, a2, v39);
        *(*(a1 + 56) + 8 * a3) = v17;
        v29 = *(a1 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_26;
        }

        a3 = v17;
        *(a1 + 16) = v31;
LABEL_5:
        (*v35)(v8, v39);
        a2 = v21;
        *v21 = a1;
        swift_endAccess();

        ++v10;
        a1 = v36;
      }

      while (v40 != v34);
    }
  }
}

uint64_t sub_1D1B9B02C(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_1D1E66A7C();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E8, &qword_1D1E97560) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B9B148, 0, 0);
}

uint64_t sub_1D1B9B148()
{
  v1 = *(v0 + 48);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F0, &unk_1D1E9CB80);
  v3 = *(v2 + 8);
  sub_1D1E67A9C();
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  v4 = *(v0 + 16);
  *(v0 + 112) = v4;
  v5 = *(v4 + 32);
  *(v0 + 160) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -(-1 << v5));
  }

  v8 = v6 & *(v4 + 64);
  if (v8)
  {
    v9 = 0;
LABEL_8:
    v12 = *(v0 + 88);
    v13 = *(v0 + 96);
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);
    v16 = (v8 - 1) & v8;
    v17 = __clz(__rbit64(v8)) | (v9 << 6);
    (*(v15 + 16))(v12, *(v4 + 48) + *(v15 + 72) * v17, v14);
    v18 = *(*(v4 + 56) + 8 * v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    v20 = *(v19 + 48);
    (*(v15 + 32))(v13, v12, v14);
    *(v13 + v20) = v18;
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);

    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = ((63 - v7) >> 6) - 1;
    while (v11 != v10)
    {
      v9 = v10 + 1;
      v8 = *(v4 + 72 + 8 * v10++);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v37 = *(v0 + 96);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    v16 = 0;
  }

  *(v0 + 120) = v16;
  *(v0 + 128) = v11;
  v21 = *(v0 + 104);
  sub_1D1B9DEEC(*(v0 + 96), v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    v23 = *(v0 + 112);

    v24 = *(v0 + 32);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v28 = *(v0 + 80);
    v27 = *(v0 + 88);
    v29 = *(v0 + 72);

    v30 = *(v0 + 8);

    return v30(v24);
  }

  else
  {
    v32 = *(v0 + 80);
    v33 = *(v0 + 56);
    v34 = *(v0 + 64);
    *(v0 + 136) = *(*(v0 + 104) + *(v22 + 48));
    (*(v34 + 32))(v32);
    v35 = swift_task_alloc();
    *(v0 + 144) = v35;
    *v35 = v0;
    v35[1] = sub_1D1B9B52C;
    v36 = *(v0 + 80);

    return sub_1D1B9A370(v36);
  }
}

uint64_t sub_1D1B9B52C(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B9B62C, 0, 0);
}

uint64_t sub_1D1B9B62C()
{
  v1 = *(v0 + 152);
  if (!v1)
  {
    v31 = *(v0 + 136);
    v32 = *(v0 + 112);
    v33 = *(v0 + 80);
    v34 = *(v0 + 56);
    v35 = *(v0 + 64);
    v36 = *(v0 + 32);

    (*(v35 + 8))(v33, v34);
    v37 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v63 = *(v0 + 96);
    v62 = *(v0 + 104);
    v65 = *(v0 + 80);
    v64 = *(v0 + 88);
    v66 = *(v0 + 72);

    v67 = *(v0 + 8);

    return v67(v37);
  }

  v75 = *(v0 + 152);
  v2 = [v1 profiles];
  sub_1D1741B10(0, &qword_1EC6497D0, 0x1E696CAD0);
  v3 = sub_1D1E67C1C();

  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v81 = v3 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v5 = 0;
    v80 = v3 & 0xC000000000000001;
    v77 = v3 + 32;
    v85 = *(v0 + 136);
    v84 = v85 + 56;
    v76 = MEMORY[0x1E69E7CC0];
    v78 = i;
    v79 = v3;
    while (v80)
    {
      v10 = MEMORY[0x1D3891EF0](v5, v3);
      v11 = __OFADD__(v5, 1);
      v12 = v5 + 1;
      if (v11)
      {
        goto LABEL_25;
      }

LABEL_10:
      v82 = v10;
      v83 = v12;
      v13 = *(v0 + 72);
      v14 = [v10 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v85 + 16) && (v15 = *(v0 + 72), v16 = *(v0 + 56), v17 = *(v85 + 40), sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8]), v18 = sub_1D1E676DC(), v19 = -1 << *(v85 + 32), v20 = v18 & ~v19, ((*(v84 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        v22 = *(v0 + 64);
        v23 = *(v22 + 72);
        v24 = *(v22 + 16);
        while (1)
        {
          v25 = *(v0 + 88);
          v27 = *(v0 + 64);
          v26 = *(v0 + 72);
          v28 = *(v0 + 56);
          v24(v25, *(v85 + 48) + v20 * v23, v28);
          sub_1D1B9DF5C(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          LOBYTE(v26) = sub_1D1E6775C();
          v29 = *(v27 + 8);
          v29(v25, v28);
          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v84 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v29(*(v0 + 72), *(v0 + 56));
        objc_opt_self();
        v9 = v78;
        v3 = v79;
        v5 = v83;
        if (swift_dynamicCastObjCClass())
        {
          MEMORY[0x1D3891220]();
          if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v30 = *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D1E67C5C();
          }

          sub_1D1E67CAC();
          v76 = *(v0 + 40);
        }

        else
        {
        }
      }

      else
      {
LABEL_5:
        v7 = *(v0 + 64);
        v6 = *(v0 + 72);
        v8 = *(v0 + 56);

        (*(v7 + 8))(v6, v8);
        v9 = v78;
        v3 = v79;
        v5 = v83;
      }

      if (v5 == v9)
      {
        goto LABEL_29;
      }
    }

    if (v5 >= *(v81 + 16))
    {
      goto LABEL_26;
    }

    v10 = *(v77 + 8 * v5);
    v11 = __OFADD__(v5, 1);
    v12 = v5 + 1;
    if (!v11)
    {
      goto LABEL_10;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v81 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v76 = MEMORY[0x1E69E7CC0];
LABEL_29:
  v38 = *(v0 + 136);
  v39 = *(v0 + 80);
  v41 = *(v0 + 56);
  v40 = *(v0 + 64);

  sub_1D17A4BE0(v76);

  result = (*(v40 + 8))(v39, v41);
  v43 = *(v0 + 120);
  v44 = *(v0 + 128);
  if (v43)
  {
    v45 = *(v0 + 112);
LABEL_39:
    v50 = *(v0 + 88);
    v51 = *(v0 + 96);
    v52 = *(v0 + 56);
    v53 = *(v0 + 64);
    v54 = (v43 - 1) & v43;
    v55 = __clz(__rbit64(v43)) | (v44 << 6);
    (*(v53 + 16))(v50, *(v45 + 48) + *(v53 + 72) * v55, v52);
    v56 = *(*(v45 + 56) + 8 * v55);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    v58 = *(v57 + 48);
    (*(v53 + 32))(v51, v50, v52);
    *(v51 + v58) = v56;
    (*(*(v57 - 8) + 56))(v51, 0, 1, v57);

    v48 = v44;
LABEL_40:
    *(v0 + 120) = v54;
    *(v0 + 128) = v48;
    v59 = *(v0 + 104);
    sub_1D1B9DEEC(*(v0 + 96), v59);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {
      v61 = *(v0 + 112);

      v37 = *(v0 + 32);
      goto LABEL_42;
    }

    v68 = *(v0 + 80);
    v69 = *(v0 + 56);
    v70 = *(v0 + 64);
    *(v0 + 136) = *(*(v0 + 104) + *(v60 + 48));
    (*(v70 + 32))(v68);
    v71 = swift_task_alloc();
    *(v0 + 144) = v71;
    *v71 = v0;
    v71[1] = sub_1D1B9B52C;
    v72 = *(v0 + 80);

    return sub_1D1B9A370(v72);
  }

  else
  {
    v46 = ((1 << *(v0 + 160)) + 63) >> 6;
    if (v46 <= (v44 + 1))
    {
      v47 = v44 + 1;
    }

    else
    {
      v47 = ((1 << *(v0 + 160)) + 63) >> 6;
    }

    v48 = v47 - 1;
    while (1)
    {
      v49 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v49 >= v46)
      {
        v73 = *(v0 + 96);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
        (*(*(v74 - 8) + 56))(v73, 1, 1, v74);
        v54 = 0;
        goto LABEL_40;
      }

      v45 = *(v0 + 112);
      v43 = *(v45 + 8 * v49 + 64);
      ++v44;
      if (v43)
      {
        v44 = v49;
        goto LABEL_39;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B9BD98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 128) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  v6 = swift_task_alloc();
  *(v4 + 72) = v6;
  *v6 = v4;
  v6[1] = sub_1D1B9BE34;

  return sub_1D1B9B02C(a2);
}

uint64_t sub_1D1B9BE34(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B9BF34, 0, 0);
}

uint64_t sub_1D1B9BF34()
{
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07B5D8);
  sub_1D17419CC(v1, v0 + 16);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136446210;
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64) + 15;
    swift_task_alloc();
    (*(v9 + 16))();
    type metadata accessor for StaticLightProfile();
    sub_1D1B9DF5C(&qword_1EC64A9D0, type metadata accessor for StaticLightProfile);
    v11 = *(v8 + 8);
    sub_1D1E6820C();

    v12 = sub_1D1E6817C();
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v15 = sub_1D1B1312C(v12, v14, &v29);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_1D16EC000, v3, v4, "start light profile read %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D3893640](v6, -1, -1);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 128);
  v18 = *(v0 + 64);
  v19 = swift_allocObject();
  *(v0 + 88) = v19;
  *(v19 + 16) = sub_1D18DAFB0(MEMORY[0x1E69E7CC0]);
  v20 = swift_allocObject();
  *(v0 + 96) = v20;
  *(v20 + 16) = MEMORY[0x1E69E7CD0];
  v21 = swift_task_alloc();
  *(v0 + 104) = v21;
  *(v21 + 16) = "LightProfileFetch";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  *(v21 + 40) = v16;
  *(v21 + 48) = &unk_1D1E9CBA0;
  *(v21 + 56) = 0;
  *(v21 + 64) = v20;
  *(v21 + 72) = v19;
  *(v21 + 80) = v18;
  *(v21 + 88) = v17 & 1;
  v22 = *(MEMORY[0x1E69E88A0] + 4);
  v23 = swift_task_alloc();
  *(v0 + 112) = v23;
  *v23 = v0;
  v23[1] = sub_1D1B9C308;
  v24 = MEMORY[0x1E69E7CA8] + 8;
  v25 = MEMORY[0x1E69E7CA8] + 8;
  v26 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v23, v24, v25, 0, 0, &unk_1D1E9CBA8, v21, v26);
}

uint64_t sub_1D1B9C308()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1D1B9C49C;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 80);

    v4 = sub_1D1B9C430;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1B9C430()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1B9C49C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t type metadata accessor for StaticLightProfile()
{
  result = qword_1EE07A8A8;
  if (!qword_1EE07A8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1B9C588()
{
  result = qword_1EC64BC38;
  if (!qword_1EC64BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC38);
  }

  return result;
}

uint64_t sub_1D1B9C5DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BC40, &qword_1D1E9C608);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1B9C62C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1B96AA4(v2, v0 + 24, v3, v4);
}

uint64_t sub_1D1B9C6D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1E32D28(a1, v4, v5, v7);
}

uint64_t sub_1D1B9C798(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC5E60 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5E80 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000644979)
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

BOOL sub_1D1B9C908(void *a1, void *a2)
{
  v3 = [a1 settings];
  LOBYTE(v4) = [v3 supportedFeatures];

  v5 = [a2 residentDevices];
  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v6 = sub_1D1E67C1C();

  v24 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v23 = v4;
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v12 = &selRef_addZoneWithName_completionHandler_;
    while (1)
    {
      if (v9)
      {
        v13 = MEMORY[0x1D3891EF0](v8, v6);
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_16;
        }

        v13 = *(v6 + 8 * v8 + 32);
      }

      v14 = v13;
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ([v13 v11[113]] && (objc_msgSend(v14, v12[46]) & 0x4000) != 0)
      {
        sub_1D1E6896C();
        v15 = v9;
        v16 = i;
        v17 = v6;
        v18 = v11;
        v19 = *(v24 + 16);
        sub_1D1E689AC();
        v11 = v18;
        v6 = v17;
        i = v16;
        v9 = v15;
        sub_1D1E689BC();
        sub_1D1E6897C();
        v12 = &selRef_addZoneWithName_completionHandler_;
      }

      else
      {
      }

      ++v8;
      if (v4 == i)
      {
        LOBYTE(v4) = v23;
        v20 = v24;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_19:

  if (v4)
  {
    if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
    {
      v22 = sub_1D1E6873C();
    }

    else
    {
      v22 = *(v20 + 16);
    }

    return v22 != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1D1B9CB3C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 89) = a4;
  *(v4 + 16) = a3;
  *(v4 + 88) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1D1B9CBDC;

  return sub_1D1B9B02C(a2);
}

uint64_t sub_1D1B9CBDC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B9CCDC, 0, 0);
}

uint64_t sub_1D1B9CCDC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 89);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = sub_1D18DAFB0(MEMORY[0x1E69E7CC0]);
  v7 = swift_allocObject();
  *(v0 + 56) = v7;
  *(v7 + 16) = MEMORY[0x1E69E7CD0];
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = "LightProfileSetNaturalLightEnabled";
  *(v8 + 24) = 34;
  *(v8 + 32) = 2;
  *(v8 + 40) = v1;
  *(v8 + 48) = &unk_1D1E9CB08;
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;
  *(v8 + 80) = v3;
  *(v8 + 88) = v2 & 1;
  v9 = *(MEMORY[0x1E69E88A0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_1D1B9CE90;
  v11 = MEMORY[0x1E69E7CA8] + 8;
  v12 = MEMORY[0x1E69E7CA8] + 8;
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v10, v11, v12, 0, 0, &unk_1D1E9CB18, v8, v13);
}

uint64_t sub_1D1B9CE90()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1D1B9D030;
  }

  else
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 32);

    v4 = sub_1D1B9CFB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1B9CFB8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1B9D030()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  v6 = v0[1];
  v7 = v0[10];

  return v6();
}

uint64_t sub_1D1B9D0C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1B9D210()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1B9D2A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1B9D2A0()
{
  if (!qword_1EC64BC68[0])
  {
    v0 = type metadata accessor for WritableProfileValue();
    if (!v1)
    {
      atomic_store(v0, qword_1EC64BC68);
    }
  }
}

uint64_t sub_1D1B9D31C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1D1E685AC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1B9D3A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5)
  {
    v7 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v9 = v7 + ((v6 + *(v4 + 80)) & ~*(v4 + 80));
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1D1B9D500(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = (v7 + *(v5 + 80)) & ~*(v5 + 80);
  if (!v6)
  {
    ++v7;
  }

  v9 = v7 + v8;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_41:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_30;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return result;
  }

LABEL_30:
  v20 = *(v5 + 56);

  return v20();
}

unint64_t sub_1D1B9D734()
{
  result = qword_1EC64BD70;
  if (!qword_1EC64BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BD70);
  }

  return result;
}

unint64_t sub_1D1B9D7E0()
{
  result = qword_1EC64BD78;
  if (!qword_1EC64BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BD78);
  }

  return result;
}

unint64_t sub_1D1B9D838()
{
  result = qword_1EC64BD80;
  if (!qword_1EC64BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BD80);
  }

  return result;
}

uint64_t sub_1D1B9D88C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D1B972FC(a1, v4);
}

uint64_t sub_1D1B9D928(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v15 = *(v2 + 64);
  v10 = *(v2 + 80);
  v11 = *(v2 + 88);
  v12 = *(v2 + 32);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1B9793C(a1, a2, v5, v6, v12, v7, v8, v9);
}

uint64_t sub_1D1B9DA34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1B98138(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_1D1B9DB34(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1B98F38(v6, a1, v4, v5, v7, v8, v9);
}

uint64_t sub_1D1B9DC0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 72);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1B98540(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D1B9DD04(uint64_t a1)
{
  v16 = *(v1 + 16);
  v14 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v9 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1B989BC(a1, v16, v14, v4, v5, v6, v7, v9);
}

uint64_t sub_1D1B9DE08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1B2258C(a1, v5);
}

uint64_t sub_1D1B9DEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E8, &qword_1D1E97560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B9DF5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B9DFA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static StaticProfileBag.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D184CF18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D184D5B4(v2, v3);
}

unint64_t sub_1D1B9E0BC()
{
  if (*v0)
  {
    result = 0xD000000000000022;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1D1B9E0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001D1EC5EA0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001D1EC5EC0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D1B9E1DC(uint64_t a1)
{
  v2 = sub_1D1B9E42C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B9E218(uint64_t a1)
{
  v2 = sub_1D1B9E42C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticProfileBag.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BD88, &qword_1D1E9CBC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B9E42C();

  sub_1D1E6930C();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BD98, &qword_1D1E9CBC8);
  sub_1D1B9E480();
  sub_1D1E68F1C();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BDB0, &qword_1D1E9CBD0);
    sub_1D1B9E56C();
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D1B9E42C()
{
  result = qword_1EC64BD90;
  if (!qword_1EC64BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BD90);
  }

  return result;
}

unint64_t sub_1D1B9E480()
{
  result = qword_1EC64BDA0;
  if (!qword_1EC64BDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BD98, &qword_1D1E9CBC8);
    sub_1D1BA2264(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1BA2264(&qword_1EC64BDA8, type metadata accessor for StaticLightProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BDA0);
  }

  return result;
}

unint64_t sub_1D1B9E56C()
{
  result = qword_1EC64BDB8;
  if (!qword_1EC64BDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BDB0, &qword_1D1E9CBD0);
    sub_1D1BA2264(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1BA2264(&qword_1EC64BDC0, type metadata accessor for StaticTelevisionProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BDB8);
  }

  return result;
}

uint64_t StaticProfileBag.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1D18582DC(a1, v3);

  return sub_1D1857C7C(a1, v4);
}

uint64_t StaticProfileBag.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  sub_1D18582DC(v4, v1);
  sub_1D1857C7C(v4, v2);
  return sub_1D1E6926C();
}

uint64_t StaticProfileBag.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BDC8, &unk_1D1E9CBD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B9E42C();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BD98, &qword_1D1E9CBC8);
  v15 = 0;
  sub_1D1BA208C();
  sub_1D1E68D7C();
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BDB0, &qword_1D1E9CBD0);
  v15 = 1;
  sub_1D1BA2178();
  sub_1D1E68D7C();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1B9E91C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D184CF18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D184D5B4(v2, v3);
}

uint64_t sub_1D1B9E978()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  sub_1D18582DC(v4, v1);
  sub_1D1857C7C(v4, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B9E9CC(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1D18582DC(a1, v3);

  return sub_1D1857C7C(a1, v4);
}

uint64_t sub_1D1B9EA0C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  sub_1D18582DC(v4, v1);
  sub_1D1857C7C(v4, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B9EA8C(uint64_t a1, void **a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v71 = a8;
  v68 = a6;
  v69 = a7;
  v67 = a4;
  v75 = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v12 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v77 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for StaticLightProfile();
  v70 = *(v78 - 8);
  v14 = *(v70 + 64);
  v15 = MEMORY[0x1EEE9AC00](v78);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v74 = v65 - v18;
  v19 = sub_1D1E66A7C();
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v73 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v65 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v76 = v65 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v79 = v65 - v34;
  v35 = *a2;
  v36 = [v35 services];
  sub_1D17DAA94();
  v37 = sub_1D1E67C1C();

  v82 = a3;
  v81 = &v82;
  LOBYTE(a3) = sub_1D18B8754(sub_1D1BA2F80, v80, v37);

  if (a3)
  {
    v39 = v67;
    v65[1] = v8;
    if (v67)
    {
      v40 = [v35 uniqueIdentifier];
      sub_1D1E66A5C();

      v41 = v70;
      if (v39[2] && (v42 = sub_1D1742188(v24), (v43 & 1) != 0))
      {
        sub_1D1BA2FA0(v39[7] + *(v41 + 72) * v42, v79, type metadata accessor for StaticLightProfile);
        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      v45 = v78;
      (*(v66 + 8))(v24, v19);
    }

    else
    {
      v44 = 1;
      v45 = v78;
      v41 = v70;
    }

    v46 = *(v41 + 56);
    v47 = v79;
    v70 = v41 + 56;
    v67 = v46;
    (v46)(v79, v44, 1, v45);
    v48 = v77;
    sub_1D1BA2FA0(v68, v77, type metadata accessor for StateSnapshot.UpdateType);
    v49 = v47;
    v50 = v76;
    sub_1D1741C08(v49, v76, &qword_1EC6430E8, &unk_1D1E71440);
    v51 = [v35 uniqueIdentifier];
    sub_1D1E66A5C();

    v52 = [v69 uniqueIdentifier];
    v53 = &v17[v45[7]];
    sub_1D1E66A5C();

    v54 = sub_1D1B9C908(v35, v71);
    if (v54)
    {
      sub_1D1741C08(v50, v31, &qword_1EC6430E8, &unk_1D1E71440);
      if ((*(v41 + 48))(v31, 1, v45) == 1)
      {
        sub_1D1741A30(v31, &qword_1EC6430E8, &unk_1D1E71440);
        v55 = 2;
      }

      else
      {
        v55 = v31[v45[6] + 1];
        sub_1D1BA3008(v31, type metadata accessor for StaticLightProfile);
      }

      v58 = v77;
      v57 = sub_1D1B94A04(v77, v35, v55);
      v59 = [v35 settings];
      v56 = [v59 isNaturalLightingEnabled];

      sub_1D1741A30(v76, &qword_1EC6430E8, &unk_1D1E71440);
      sub_1D1BA3008(v58, type metadata accessor for StateSnapshot.UpdateType);
      v45 = v78;
    }

    else
    {
      sub_1D1741A30(v50, &qword_1EC6430E8, &unk_1D1E71440);
      sub_1D1BA3008(v48, type metadata accessor for StateSnapshot.UpdateType);
      v56 = 0;
      v57 = 2;
    }

    v60 = &v17[v45[6]];
    *v60 = v56;
    v60[1] = v57;
    v17[v45[5]] = v54;
    v61 = v74;
    sub_1D1BA2EB4(v17, v74, type metadata accessor for StaticLightProfile);
    v62 = [v35 uniqueIdentifier];
    v63 = v73;
    sub_1D1E66A5C();

    v64 = v72;
    sub_1D1BA2FA0(v61, v72, type metadata accessor for StaticLightProfile);
    (v67)(v64, 0, 1, v45);
    sub_1D1B0EF74(v64, v63);
    sub_1D1BA3008(v61, type metadata accessor for StaticLightProfile);
    return sub_1D1741A30(v79, &qword_1EC6430E8, &unk_1D1E71440);
  }

  return result;
}

uint64_t sub_1D1B9F16C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v142 = a1;
  v122 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v123 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v120 = &v113 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v127 = &v113 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v119 = &v113 - v11;
  v126 = type metadata accessor for StaticLightProfile();
  v137 = *(v126 - 8);
  v12 = *(v137 + 64);
  v13 = MEMORY[0x1EEE9AC00](v126 - 8);
  v141 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v124 = &v113 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v118 = &v113 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v150 = &v113 - v19;
  v20 = sub_1D1E66A7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v117 = &v113 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v125 = &v113 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v128 = &v113 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v146 = &v113 - v32;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
  v33 = *(*(v135 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v135);
  v134 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v148 = &v113 - v36;
  v37 = *v2;
  v121 = v2[1];

  v38 = sub_1D18DB57C(MEMORY[0x1E69E7CC0]);
  v39 = v37 + 64;
  v40 = 1 << *(v37 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v37 + 64);
  v43 = (v40 + 63) >> 6;
  v140 = v21 + 32;
  v147 = v21 + 8;
  v116 = (v21 + 56);
  v136 = v21;
  v115 = (v21 + 48);
  v138 = v37;

  v44 = 0;
  v131 = v43;
  v132 = v37 + 64;
  v129 = v25;
  v133 = v21 + 16;
  while (v42)
  {
    v145 = v38;
    v45 = v44;
LABEL_13:
    v143 = (v42 - 1) & v42;
    v46 = __clz(__rbit64(v42)) | (v45 << 6);
    v47 = v138;
    v48 = *(v138 + 48);
    v49 = v136;
    v139 = *(v136 + 72);
    v50 = v148;
    v149 = *(v136 + 16);
    v149(v148, v48 + v139 * v46, v20);
    v51 = *(v47 + 56);
    v144 = *(v137 + 72);
    v52 = v135;
    sub_1D1BA2FA0(v51 + v144 * v46, v50 + *(v135 + 48), type metadata accessor for StaticLightProfile);
    v53 = v134;
    sub_1D1741C08(v50, v134, &qword_1EC645578, &qword_1D1E79B20);
    v54 = *(v52 + 48);
    v55 = v146;
    v130 = *(v49 + 32);
    v130(v146, v53, v20);
    sub_1D1BA3008(v53 + v54, type metadata accessor for StaticLightProfile);
    sub_1D1741C08(v50, v53, &qword_1EC645578, &qword_1D1E79B20);
    v56 = v150;
    sub_1D1BA2EB4(v53 + *(v52 + 48), v150, type metadata accessor for StaticLightProfile);
    v57 = *(v49 + 8);
    v57(v53, v20);
    if (!*(v142 + 16) || (v58 = sub_1D1742188(v55), (v59 & 1) == 0) || *(*(v142 + 56) + v58) < 0)
    {
      v68 = v129;
      v69 = v149;
      v149(v129, v55, v20);
      sub_1D1BA2FA0(v56, v141, type metadata accessor for StaticLightProfile);
      v70 = v145;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v151 = v70;
      v72 = sub_1D1742188(v68);
      v74 = v70[2];
      v75 = (v73 & 1) == 0;
      v76 = __OFADD__(v74, v75);
      v77 = v74 + v75;
      if (v76)
      {
        goto LABEL_47;
      }

      v78 = v73;
      if (v70[3] < v77)
      {
        sub_1D1730674(v77, isUniquelyReferenced_nonNull_native);
        v72 = sub_1D1742188(v68);
        if ((v78 & 1) != (v79 & 1))
        {
          goto LABEL_51;
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_24:
        v80 = v150;
        v38 = v151;
        if (v78)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v109 = v72;
        sub_1D173D494();
        v72 = v109;
        v69 = v149;
        v80 = v150;
        v38 = v151;
        if (v78)
        {
LABEL_4:
          sub_1D1BA2F1C(v141, v38[7] + v72 * v144);
          v57(v68, v20);
          sub_1D1BA3008(v80, type metadata accessor for StaticLightProfile);
          v57(v146, v20);
LABEL_5:
          sub_1D1741A30(v148, &qword_1EC645578, &qword_1D1E79B20);
          goto LABEL_6;
        }
      }

      v38[(v72 >> 6) + 8] |= 1 << v72;
      v81 = v72;
      v69(v38[6] + v72 * v139, v68, v20);
      sub_1D1BA2EB4(v141, v38[7] + v81 * v144, type metadata accessor for StaticLightProfile);
      v57(v68, v20);
      sub_1D1BA3008(v80, type metadata accessor for StaticLightProfile);
      v57(v146, v20);
      sub_1D1741A30(v148, &qword_1EC645578, &qword_1D1E79B20);
      v82 = v38[2];
      v76 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v76)
      {
        goto LABEL_48;
      }

      goto LABEL_26;
    }

    v114 = *(*(v142 + 56) + v58);
    v113 = v57;
    v60 = v149;
    v149(v128, v55, v20);
    v61 = *v116;
    v62 = v119;
    (*v116)(v119, 1, 1, v20);
    v61(v127, 1, 1, v20);
    v63 = v120;
    sub_1D1741A90(v62, v120, &qword_1EC642590, qword_1D1E71260);
    v64 = *v115;
    if ((*v115)(v63, 1, v20) == 1)
    {
      v60(v125, v150, v20);
      v65 = v64(v63, 1, v20);
      v66 = v145;
      v67 = v130;
      if (v65 != 1)
      {
        sub_1D1741A30(v63, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      v67 = v130;
      v130(v125, v63, v20);
      v66 = v145;
    }

    v84 = v126;
    v85 = v150;
    LODWORD(v145) = *(v150 + *(v126 + 20));
    v86 = v123;
    sub_1D1741A90(v127, v123, &qword_1EC642590, qword_1D1E71260);
    if (v64(v86, 1, v20) == 1)
    {
      v87 = v85 + *(v84 + 28);
      v88 = v117;
      v149(v117, v87, v20);
      if (v64(v86, 1, v20) != 1)
      {
        sub_1D1741A30(v123, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      v88 = v117;
      v67(v117, v86, v20);
    }

    v89 = v118;
    v67(v118, v125, v20);
    v90 = v126;
    *(v89 + *(v126 + 20)) = v145;
    v91 = (v89 + *(v90 + 24));
    *v91 = v114 & 1;
    v91[1] = 2;
    v67((v89 + *(v90 + 28)), v88, v20);
    sub_1D1BA2EB4(v89, v124, type metadata accessor for StaticLightProfile);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v66;
    v94 = sub_1D1742188(v128);
    v95 = v66[2];
    v96 = (v93 & 1) == 0;
    v97 = v95 + v96;
    if (__OFADD__(v95, v96))
    {
      goto LABEL_49;
    }

    v98 = v93;
    if (v66[3] >= v97)
    {
      v101 = v149;
      if ((v92 & 1) == 0)
      {
        sub_1D173D494();
      }
    }

    else
    {
      sub_1D1730674(v97, v92);
      v99 = sub_1D1742188(v128);
      v101 = v149;
      if ((v98 & 1) != (v100 & 1))
      {
        goto LABEL_51;
      }

      v94 = v99;
    }

    v102 = v150;
    v38 = v151;
    v103 = v146;
    if (v98)
    {
      sub_1D1BA2F1C(v124, v151[7] + v94 * v144);
      v104 = v113;
      v113(v128, v20);
      sub_1D1BA3008(v102, type metadata accessor for StaticLightProfile);
      v104(v103, v20);
      goto LABEL_5;
    }

    v151[(v94 >> 6) + 8] |= 1 << v94;
    v105 = v128;
    v101(v38[6] + v94 * v139, v128, v20);
    sub_1D1BA2EB4(v124, v38[7] + v94 * v144, type metadata accessor for StaticLightProfile);
    v106 = v105;
    v107 = v113;
    v113(v106, v20);
    sub_1D1BA3008(v102, type metadata accessor for StaticLightProfile);
    v107(v103, v20);
    sub_1D1741A30(v148, &qword_1EC645578, &qword_1D1E79B20);
    v108 = v38[2];
    v76 = __OFADD__(v108, 1);
    v83 = v108 + 1;
    if (v76)
    {
      goto LABEL_50;
    }

LABEL_26:
    v38[2] = v83;
LABEL_6:
    v44 = v45;
    v43 = v131;
    v39 = v132;
    v42 = v143;
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v45 >= v43)
    {

      v111 = v122;
      v112 = v121;
      *v122 = v38;
      v111[1] = v112;
      return result;
    }

    v42 = *(v39 + 8 * v45);
    ++v44;
    if (v42)
    {
      v145 = v38;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}