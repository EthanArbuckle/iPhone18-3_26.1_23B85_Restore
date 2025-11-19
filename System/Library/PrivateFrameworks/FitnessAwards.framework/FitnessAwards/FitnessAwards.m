uint64_t type metadata accessor for AwardEarnedLoadState()
{
  result = qword_2810E2E70;
  if (!qword_2810E2E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B3CF96C()
{
  sub_24B3CF9D4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_24B3CF9D4()
{
  if (!qword_2810E36D0)
  {
    v0 = sub_24B45836C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E36D0);
    }
  }
}

uint64_t type metadata accessor for AwardImageLoadState()
{
  result = qword_2810E3048;
  if (!qword_2810E3048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B3CFA68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24B3CFAB4()
{
  sub_24B3CFA68(319, &qword_2810E36D0, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    sub_24B3CFA68(319, &qword_2810E36E8, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for AwardProgressLoadState()
{
  result = qword_2810E2D10;
  if (!qword_2810E2D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B3CFBAC()
{
  sub_24B3CF9D4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t type metadata accessor for AwardToastLoadState()
{
  result = qword_2810E2F18;
  if (!qword_2810E2F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B3CFC80()
{
  sub_24B3CF9D4();
  if (v0 <= 0x3F)
  {
    sub_24B3CFCF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

ValueMetadata *sub_24B3CFCF4()
{
  result = qword_2810E3330[0];
  if (!qword_2810E3330[0])
  {
    result = &type metadata for AwardToastDetail;
    atomic_store(&type metadata for AwardToastDetail, qword_2810E3330);
  }

  return result;
}

void sub_24B3CFD24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B458D8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24B3CFD88()
{
  sub_24B3CFD24(319, &qword_2810E27A8, type metadata accessor for AwardEarnedLoadState);
  if (v0 <= 0x3F)
  {
    sub_24B3CFFA0();
    if (v1 <= 0x3F)
    {
      sub_24B3CFD24(319, &qword_2810E27A0, type metadata accessor for AwardProgressLoadState);
      if (v2 <= 0x3F)
      {
        sub_24B3D0064();
        if (v3 <= 0x3F)
        {
          type metadata accessor for AwardToastLoadState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24B3CFE8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B3CFEDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t type metadata accessor for AchievementEnvironmentCacheMonitorState()
{
  result = qword_2810E29E0;
  if (!qword_2810E29E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B3CFFA0()
{
  if (!qword_2810E2788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8090, &qword_24B45C2C0);
    v0 = sub_24B458D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E2788);
    }
  }
}

void type metadata accessor for CGSize()
{
  if (!qword_2810E2760)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2810E2760);
    }
  }
}

void sub_24B3D0064()
{
  if (!qword_2810E2790)
  {
    v0 = sub_24B458D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E2790);
    }
  }
}

uint64_t sub_24B3D00C4(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardToastLoadState();
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t AchievementEnvironmentCacheMonitorState.init(earnedLoadStates:imageLoadStates:progressLoadStates:suggestedWorkoutsStates:toastLoadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for AchievementEnvironmentCacheMonitorState() + 32);

  return sub_24B3D00C4(a5, v7);
}

unint64_t sub_24B3D0178()
{
  result = qword_2810E29F0;
  if (!qword_2810E29F0)
  {
    type metadata accessor for AchievementEnvironmentCacheMonitorState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E29F0);
  }

  return result;
}

uint64_t _s13FitnessAwards39AchievementEnvironmentCacheMonitorStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  if ((sub_24B3D0270(*a1, *a2) & 1) == 0 || (sub_24B3D1534(*(a1 + 8), a2[1]) & 1) == 0 || (sub_24B3D0A7C(*(a1 + 16), a2[2]) & 1) == 0 || (sub_24B3D1A04(*(a1 + 24), a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AchievementEnvironmentCacheMonitorState() + 32);

  return _s13FitnessAwards19AwardToastLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v4, a2 + v4);
}

uint64_t sub_24B3D0270(uint64_t a1, uint64_t a2)
{
  v76 = sub_24B45836C();
  v4 = *(v76 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8330, &unk_24B45D840);
  v7 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v9 = &v71 - v8;
  State = type metadata accessor for AwardEarnedLoadState();
  v87 = *(State - 8);
  v11 = *(v87 + 64);
  v12 = MEMORY[0x28223BE20](State);
  v78 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v71 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v88 = &v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v71 - v20;
  MEMORY[0x28223BE20](v19);
  v81 = &v71 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8970, &qword_24B460708);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v24);
  v83 = (&v71 - v28);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v29 = 0;
  v77 = a1;
  v32 = *(a1 + 64);
  v31 = a1 + 64;
  v30 = v32;
  v33 = 1 << *(v31 - 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v30;
  v36 = (v33 + 63) >> 6;
  v72 = (v4 + 32);
  v73 = (v4 + 8);
  v74 = v16;
  v79 = State;
  v80 = a2;
  v85 = v26;
  while (1)
  {
    if (!v35)
    {
      if (v36 <= v29 + 1)
      {
        v38 = v29 + 1;
      }

      else
      {
        v38 = v36;
      }

      v39 = v38 - 1;
      while (1)
      {
        v40 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v40 >= v36)
        {
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
          (*(*(v70 - 8) + 56))(v26, 1, 1, v70);
          v86 = 0;
          v29 = v39;
          goto LABEL_19;
        }

        v41 = *(v31 + 8 * v40);
        ++v29;
        if (v41)
        {
          v86 = (v41 - 1) & v41;
          v37 = __clz(__rbit64(v41)) | (v40 << 6);
          v29 = v40;
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }

    v86 = (v35 - 1) & v35;
    v37 = __clz(__rbit64(v35)) | (v29 << 6);
LABEL_18:
    v42 = (*(v77 + 48) + 16 * v37);
    v44 = *v42;
    v43 = v42[1];
    v45 = v81;
    sub_24B45680C(*(v77 + 56) + *(v87 + 72) * v37, v81, type metadata accessor for AwardEarnedLoadState);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
    v47 = *(v46 + 48);
    v48 = v85;
    *v85 = v44;
    *(v48 + 1) = v43;
    v26 = v48;
    sub_24B456874(v45, &v48[v47], type metadata accessor for AwardEarnedLoadState);
    (*(*(v46 - 8) + 56))(v26, 0, 1, v46);

LABEL_19:
    v49 = v83;
    sub_24B41C0B0(v26, v83, &qword_27EFE8970, &qword_24B460708);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
    v51 = 1;
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      return v51;
    }

    v52 = *(v50 + 48);
    v53 = *v49;
    v54 = v49[1];
    v55 = v84;
    sub_24B456874(v49 + v52, v84, type metadata accessor for AwardEarnedLoadState);
    v56 = v80;
    v57 = sub_24B412140(v53, v54);
    v59 = v58;

    if ((v59 & 1) == 0)
    {
      sub_24B4568DC(v55, type metadata accessor for AwardEarnedLoadState);
      return 0;
    }

    v60 = *(v56 + 56);
    v61 = v88;
    sub_24B45680C(v60 + *(v87 + 72) * v57, v88, type metadata accessor for AwardEarnedLoadState);
    v62 = *(v82 + 48);
    sub_24B45680C(v61, v9, type metadata accessor for AwardEarnedLoadState);
    sub_24B45680C(v55, &v9[v62], type metadata accessor for AwardEarnedLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4568DC(v88, type metadata accessor for AwardEarnedLoadState);
      sub_24B4568DC(v55, type metadata accessor for AwardEarnedLoadState);
      sub_24B45680C(v9, v78, type metadata accessor for AwardEarnedLoadState);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_34;
      }

      if (*v78 != v9[v62])
      {
LABEL_32:
        sub_24B4568DC(v9, type metadata accessor for AwardEarnedLoadState);
        return 0;
      }
    }

    else
    {
      sub_24B4568DC(v88, type metadata accessor for AwardEarnedLoadState);
      sub_24B4568DC(v55, type metadata accessor for AwardEarnedLoadState);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_34;
      }
    }

LABEL_7:
    result = sub_24B4568DC(v9, type metadata accessor for AwardEarnedLoadState);
    v26 = v85;
    v35 = v86;
  }

  v64 = v74;
  sub_24B45680C(v9, v74, type metadata accessor for AwardEarnedLoadState);
  if (!swift_getEnumCaseMultiPayload())
  {
    v65 = &v9[v62];
    v66 = v75;
    v67 = v76;
    (*v72)(v75, v65, v76);
    v68 = sub_24B45834C();
    v69 = *v73;
    (*v73)(v66, v67);
    sub_24B4568DC(v88, type metadata accessor for AwardEarnedLoadState);
    sub_24B4568DC(v84, type metadata accessor for AwardEarnedLoadState);
    v69(v64, v67);
    if ((v68 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_7;
  }

  sub_24B4568DC(v88, type metadata accessor for AwardEarnedLoadState);
  sub_24B4568DC(v84, type metadata accessor for AwardEarnedLoadState);
  (*v73)(v64, v76);
LABEL_34:
  sub_24B3DF4F0(v9, &qword_27EFE8330, &unk_24B45D840);
  return 0;
}

uint64_t sub_24B3D0A7C(uint64_t a1, uint64_t a2)
{
  v98 = sub_24B45836C();
  v4 = *(v98 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v98);
  v95 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7ED0, &qword_24B45BA80);
  v7 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v9 = &v91 - v8;
  State = type metadata accessor for AwardProgressLoadState();
  v10 = *(State - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](State);
  v96 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v97 = &v91 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v111 = &v91 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v91 - v19;
  MEMORY[0x28223BE20](v18);
  v103 = &v91 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8948, &qword_24B4606E8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v24);
  v108 = (&v91 - v28);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v107 = v9;
  v29 = 0;
  v100 = a1;
  v30 = *(a1 + 64);
  v94 = a1 + 64;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;
  v92 = (v4 + 32);
  v93 = (v4 + 8);
  v101 = a2;
  v102 = v10;
  v104 = v20;
  v109 = v26;
  v99 = v34;
  while (1)
  {
    if (!v33)
    {
      if (v34 <= v29 + 1)
      {
        v38 = v29 + 1;
      }

      else
      {
        v38 = v34;
      }

      v39 = v38 - 1;
      while (1)
      {
        v40 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v40 >= v34)
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
          (*(*(v83 - 8) + 56))(v26, 1, 1, v83);
          v110 = 0;
          v29 = v39;
          goto LABEL_19;
        }

        v41 = *(v94 + 8 * v40);
        ++v29;
        if (v41)
        {
          v36 = v20;
          v110 = (v41 - 1) & v41;
          v37 = __clz(__rbit64(v41)) | (v40 << 6);
          v29 = v40;
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }

    v36 = v20;
    v110 = (v33 - 1) & v33;
    v37 = __clz(__rbit64(v33)) | (v29 << 6);
LABEL_18:
    v42 = (*(v100 + 48) + 16 * v37);
    v44 = *v42;
    v43 = v42[1];
    v45 = v103;
    sub_24B45680C(*(v100 + 56) + *(v10 + 72) * v37, v103, type metadata accessor for AwardProgressLoadState);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
    v47 = *(v46 + 48);
    v48 = v109;
    *v109 = v44;
    *(v48 + 1) = v43;
    v26 = v48;
    sub_24B456874(v45, &v48[v47], type metadata accessor for AwardProgressLoadState);
    (*(*(v46 - 8) + 56))(v26, 0, 1, v46);

    v20 = v36;
    v34 = v99;
LABEL_19:
    v49 = v26;
    v50 = v108;
    sub_24B41C0B0(v49, v108, &qword_27EFE8948, &qword_24B4606E8);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
    v52 = 1;
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      return v52;
    }

    v53 = *(v51 + 48);
    v54 = *v50;
    v55 = v50[1];
    sub_24B456874(v50 + v53, v20, type metadata accessor for AwardProgressLoadState);
    v56 = sub_24B412140(v54, v55);
    v58 = v57;

    if ((v58 & 1) == 0)
    {
      v90 = v20;
      goto LABEL_52;
    }

    v59 = *(a2 + 56) + *(v10 + 72) * v56;
    v60 = v111;
    sub_24B45680C(v59, v111, type metadata accessor for AwardProgressLoadState);
    v61 = v107;
    v62 = &v107[*(v106 + 48)];
    sub_24B45680C(v60, v107, type metadata accessor for AwardProgressLoadState);
    sub_24B45680C(v20, v62, type metadata accessor for AwardProgressLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v76 = v97;
    sub_24B45680C(v61, v97, type metadata accessor for AwardProgressLoadState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_24B4568DC(v111, type metadata accessor for AwardProgressLoadState);
      sub_24B4568DC(v20, type metadata accessor for AwardProgressLoadState);
      (*v93)(v76, v98);
      goto LABEL_47;
    }

    v77 = v95;
    v78 = v98;
    (*v92)(v95, v62, v98);
    v79 = v20;
    v80 = v76;
    v81 = sub_24B45834C();
    v82 = *v93;
    (*v93)(v77, v78);
    sub_24B4568DC(v111, type metadata accessor for AwardProgressLoadState);
    sub_24B4568DC(v79, type metadata accessor for AwardProgressLoadState);
    v82(v80, v78);
    v10 = v102;
    if ((v81 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_7:
    result = sub_24B4568DC(v61, type metadata accessor for AwardProgressLoadState);
    a2 = v101;
    v20 = v104;
    v26 = v109;
    v33 = v110;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24B4568DC(v111, type metadata accessor for AwardProgressLoadState);
    sub_24B4568DC(v20, type metadata accessor for AwardProgressLoadState);
    v35 = swift_getEnumCaseMultiPayload();
    v10 = v102;
    if (v35 != 2)
    {
      goto LABEL_47;
    }

    goto LABEL_7;
  }

  v64 = v96;
  sub_24B45680C(v61, v96, type metadata accessor for AwardProgressLoadState);
  v65 = *v64;
  v66 = *(v64 + 8);
  v67 = *(v64 + 16);
  v68 = *(v64 + 24);
  v69 = *(v64 + 32);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B3DF468(v65, v66, v67, v68, v69);
    sub_24B4568DC(v111, type metadata accessor for AwardProgressLoadState);
    sub_24B4568DC(v104, type metadata accessor for AwardProgressLoadState);
    v61 = v107;
LABEL_47:
    sub_24B3DF4F0(v61, &qword_27EFE7ED0, &qword_24B45BA80);
    return 0;
  }

  v70 = *v62;
  v71 = *(v62 + 8);
  v73 = *(v62 + 16);
  v72 = *(v62 + 24);
  v74 = *(v62 + 32);
  if (v69)
  {
    v91 = v72;
    v75 = v73;
    sub_24B4568DC(v111, type metadata accessor for AwardProgressLoadState);
    sub_24B4568DC(v104, type metadata accessor for AwardProgressLoadState);
    if ((v74 & 1) == 0)
    {
      sub_24B3DF468(v70, v71, v75, v91, 0);
      goto LABEL_50;
    }

    v61 = v107;
    v10 = v102;
    if (v65 != v70 || ((v71 ^ v66) & 1) != 0 || v67 != v75)
    {
      goto LABEL_51;
    }

    goto LABEL_7;
  }

  if ((v74 & 1) == 0)
  {
    v84 = *&v68;
    v85 = *&v73;
    v86 = *&v72;
    if (v65 == v70 && v66 == v71)
    {
      sub_24B3DF468(v65, v66, v73, v72, 0);
      sub_24B3DF468(v65, v66, v67, v68, 0);
      sub_24B4568DC(v111, type metadata accessor for AwardProgressLoadState);
      sub_24B4568DC(v104, type metadata accessor for AwardProgressLoadState);
      v61 = v107;
      v10 = v102;
      if (*&v67 != v85)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v87 = v70;
      v88 = v72;
      v89 = v73;
      LODWORD(v91) = sub_24B4591AC();
      sub_24B3DF468(v87, v71, v89, v88, 0);
      sub_24B3DF468(v65, v66, v67, v68, 0);
      sub_24B4568DC(v111, type metadata accessor for AwardProgressLoadState);
      sub_24B4568DC(v104, type metadata accessor for AwardProgressLoadState);
      v61 = v107;
      v10 = v102;
      if ((v91 & 1) == 0 || *&v67 != v85)
      {
        goto LABEL_51;
      }
    }

    if (v84 != v86)
    {
      goto LABEL_51;
    }

    goto LABEL_7;
  }

  sub_24B3DF468(v65, v66, v67, v68, 0);
  sub_24B4568DC(v111, type metadata accessor for AwardProgressLoadState);
  sub_24B4568DC(v104, type metadata accessor for AwardProgressLoadState);
LABEL_50:
  v61 = v107;
LABEL_51:
  v90 = v61;
LABEL_52:
  sub_24B4568DC(v90, type metadata accessor for AwardProgressLoadState);
  return 0;
}

uint64_t sub_24B3D1534(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_24B412140(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = *(*(a2 + 56) + 8 * v17);

    v22 = sub_24B454A98(v21, v16);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13FitnessAwards19AwardToastLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B45836C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardToastLoadState();
  v10 = *(*(State - 8) + 64);
  v11 = MEMORY[0x28223BE20](State);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE90C8, &unk_24B4633E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = v40 - v19;
  v21 = v40 + *(v18 + 56) - v19;
  sub_24B3D1D24(a1, v40 - v19);
  sub_24B3D1D24(a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24B3D1D24(v20, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v5 + 32))(v8, v21, v4);
      v37 = sub_24B45834C();
      v38 = *(v5 + 8);
      v38(v8, v4);
      v38(v15, v4);
      goto LABEL_12;
    }

    (*(v5 + 8))(v15, v4);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_24B3D1D24(v20, v13);
    v23 = *v13;
    v24 = *(v13 + 2);
    v25 = *(v13 + 4);
    v26 = *(v13 + 5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v13[48];
      v28 = *(v13 + 3);
      v29 = *(v13 + 1);
      v31 = *v21;
      v30 = *(v21 + 1);
      v33 = *(v21 + 2);
      v32 = *(v21 + 3);
      v35 = *(v21 + 4);
      v34 = *(v21 + 5);
      v36 = v21[48];
      v42[0] = v23;
      v42[1] = v29;
      v42[2] = v24;
      v42[3] = v28;
      v42[4] = v25;
      v42[5] = v26;
      v43 = v27;
      v40[0] = v31;
      v40[1] = v30;
      v40[2] = v33;
      v40[3] = v32;
      v40[4] = v35;
      v40[5] = v34;
      v41 = v36;
      v37 = _s13FitnessAwards16AwardToastDetailV2eeoiySbAC_ACtFZ_0(v42, v40);

LABEL_12:
      sub_24B3D1D88(v20);
      return v37 & 1;
    }

    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_24B436180(v20);
    v37 = 0;
    return v37 & 1;
  }

  sub_24B3D1D88(v20);
  v37 = 1;
  return v37 & 1;
}

unint64_t sub_24B3D1A04(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);

    sub_24B3D81E4(v17);
    v18 = sub_24B412140(v15, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
LABEL_42:
      sub_24B3D8220(v17);
      return 0;
    }

    v21 = *(*(v2 + 56) + 8 * v18);
    if (v21)
    {
      if (v21 == 1)
      {
        if (v17 != 1)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v17 < 2)
        {
          goto LABEL_42;
        }

        v22 = *(v21 + 16);
        if (v22 != *(v17 + 16))
        {
          goto LABEL_42;
        }

        if (v22)
        {
          v23 = v21 == v17;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          v34 = v9;
          v35 = v5;
          v36 = v2;

          v24 = 0;
          v25 = (v21 + 64);
          v26 = (v17 + 64);
          v38 = v8;
          v39 = v21;
          v40 = v17;
          v37 = v22;
          while (v24 < *(v21 + 16))
          {
            if (v24 >= *(v17 + 16))
            {
              goto LABEL_46;
            }

            v27 = *(v25 - 2);
            v28 = *(v25 - 1);
            v29 = *v25;
            v30 = *(v26 - 2);
            v31 = *(v26 - 1);
            v41 = *v26;
            if (*(v25 - 4) != *(v26 - 4) || *(v25 - 3) != *(v26 - 3))
            {
              v32 = *(v25 - 3);
              v31 = *(v26 - 1);
              if ((sub_24B4591AC() & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            if ((v27 != v30 || v28 != v31) && (sub_24B4591AC() & 1) == 0)
            {
              goto LABEL_41;
            }

            v33 = sub_24B40E74C(v29, v41);

            if ((v33 & 1) == 0)
            {
LABEL_41:
              sub_24B3D8220(v40);
              v17 = v39;
              goto LABEL_42;
            }

            ++v24;
            v25 += 5;
            v26 += 5;
            v8 = v38;
            v21 = v39;
            v17 = v40;
            if (v37 == v24)
            {
              sub_24B3D8220(v40);
              v2 = v36;
              v9 = v34;
              v5 = v35;
              goto LABEL_28;
            }
          }

          goto LABEL_45;
        }

        v21 = v17;
LABEL_28:
        result = sub_24B3D8220(v21);
      }
    }

    else if (v17)
    {
      goto LABEL_42;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_24B3D1D24(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardToastLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_24B3D1D88(uint64_t a1)
{
  State = type metadata accessor for AwardToastLoadState();
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t sub_24B3D1DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    State = type metadata accessor for AwardEarnedLoadState();
    v9 = *(*(State - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, State);
  }
}

uint64_t sub_24B3D1E90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for AwardEarnedLoadState();
    v8 = *(*(State - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B3D1F34@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24B3D1F80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D1FBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7A88, &qword_24B45A1A0);
  type metadata accessor for AwardProgressLoadState();
  sub_24B3DE994();
  sub_24B3DF27C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B3D2080()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D20B8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_24B4585BC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D00, &qword_24B45B418);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  sub_24B45872C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  sub_24B45872C();
  sub_24B45872C();
  sub_24B458B7C();
  sub_24B4585BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B3D26B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D00, &qword_24B45B418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B3D2728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D00, &qword_24B45B418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B3D27B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D27EC()
{
  v1 = (type metadata accessor for AwardProgressFeature() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2 + 8);

  v6 = v1[7];
  v7 = sub_24B45836C();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_24B3D28EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D2998(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D2A44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D2A80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AD8, &qword_24B45A210);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  sub_24B4585BC();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  sub_24B45872C();
  sub_24B458B7C();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  sub_24B4585BC();
  sub_24B4585AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190);
  swift_getWitnessTable();
  sub_24B3F4404(&qword_2810E28D0, MEMORY[0x277CDD9F8]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  sub_24B4585BC();
  sub_24B4585BC();
  sub_24B4585BC();
  swift_getOpaqueTypeConformance2();
  sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458BDC();
  sub_24B4585EC();
  swift_getWitnessTable();
  sub_24B3F4404(&qword_2810E2870, MEMORY[0x277CDDB18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B3D307C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8040, &qword_24B45C180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B3D30EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8040, &qword_24B45C180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B3D3160()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D319C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D31D4()
{
  v1 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 40);
  v2 = (type metadata accessor for TVAwardHeaderView() - 8);
  v3 = *(*v2 + 64);
  v4 = (v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80)));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  sub_24B3DE5B8();
  (*(*(v1 - 8) + 8))(v4 + v2[15], v1);
  (*(*(v9 - 8) + 8))(v4 + v2[16]);
  return swift_deallocObject();
}

uint64_t sub_24B3D3314(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8338, &qword_24B45D858);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC8, &qword_24B45A200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  sub_24B4585BC();
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE8340, &qword_24B45D860);
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  sub_24B4585BC();
  sub_24B4585BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B3D35C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D3600()
{
  v1 = (type metadata accessor for AwardDetailFeature() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + v2 + 8);

  v6 = *(v0 + v2 + 24);

  v7 = v1[7];
  v8 = sub_24B45836C();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24B3D36F8()
{
  v1 = (type metadata accessor for AwardDetailFeature() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2 + 8);

  v6 = *(v4 + 24);

  v7 = v1[7];
  v8 = sub_24B45836C();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_24B3D3800(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D38AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D3954()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D398C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D39C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8788, &qword_24B45F748);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8780, &unk_24B45F8E0);
  sub_24B412274();
  sub_24B412558();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B3D3A58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87A8, &qword_24B45F7A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B3D3ACC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D3B04()
{
  v1 = (type metadata accessor for AwardImageFeature() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2 + 8);

  v6 = v1[7];
  v7 = sub_24B45836C();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_24B3D3C0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D3CB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D3D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AwardLockupLayout();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B3D3E8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AwardLockupLayout();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B3D3FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    State = type metadata accessor for AwardProgressLoadState();
    v9 = *(State - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = State;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24B45839C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B3D40E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for AwardProgressLoadState();
    v9 = *(State - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = State;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24B45839C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B3D4204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AwardHeaderLayout();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B3D4334(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AwardHeaderLayout();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B3D4464(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    State = type metadata accessor for AwardToastLoadState();
    v9 = *(*(State - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, State);
  }
}

void *sub_24B3D4510(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for AwardToastLoadState();
    v8 = *(*(State - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B3D45B4()
{
  v1 = (type metadata accessor for AwardHeaderFeature() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + v2 + 8);

  v6 = v1[7];
  v7 = sub_24B45836C();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_24B3D46A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D4750(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D47F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D4858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a3 + 16);
    swift_getFunctionTypeMetadata1();
    v9 = sub_24B4583CC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24B3D4920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v6 = *(a4 + 16);
    swift_getFunctionTypeMetadata1();
    v8 = sub_24B4583CC();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_24B3D49DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  sub_24B4585BC();
  sub_24B458F6C();
  sub_24B42BE44();
  sub_24B458C5C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458C3C();
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D50, &qword_24B461BC0);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D20, &qword_24B461BA8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B3DF11C(&qword_27EFE8D58, &qword_27EFE8D20, &qword_24B461BA8);
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D60, &qword_24B461BC8);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  sub_24B4585BC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190);
  swift_getWitnessTable();
  sub_24B3DF11C(&qword_27EFE8D68, &qword_27EFE8D60, &qword_24B461BC8);
  swift_getWitnessTable();
  sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D18, &qword_24B461BA0);
  swift_getOpaqueTypeConformance2();
  sub_24B3DF11C(&qword_27EFE8D70, &qword_27EFE8D18, &qword_24B461BA0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B3D5008()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24B3D5040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B45865C();
  *a1 = result;
  return result;
}

uint64_t sub_24B3D5094@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B45869C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B3D50C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24B4586AC();
}

uint64_t sub_24B3D50F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B45867C();
  *a1 = result;
  return result;
}

uint64_t sub_24B3D5124(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B45868C();
}

uint64_t sub_24B3D5150()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = (type metadata accessor for AwardToastView() - 8);
  v4 = (*(*v3 + 80) + 40) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + 4);

  v7 = *&v0[v4];
  v8 = *&v0[v4 + 8];
  v9 = v0[v4 + 16];
  sub_24B3DE5B8();
  v10 = v3[11];
  swift_getFunctionTypeMetadata1();
  v11 = sub_24B4583CC();
  (*(*(v11 - 8) + 8))(&v0[v4 + v10], v11);

  return swift_deallocObject();
}

uint64_t sub_24B3D5280()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_24B3D52CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    State = type metadata accessor for AwardToastLoadState();
    v9 = *(*(State - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, State);
  }
}

uint64_t sub_24B3D5378(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for AwardToastLoadState();
    v8 = *(*(State - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B3D5420()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B3D545C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a3 + 24);
    swift_getFunctionTypeMetadata0();
    v9 = sub_24B4583CC();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 52);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = *(a3 + 16);
      swift_getFunctionTypeMetadata0();
      v15 = sub_24B4583CC();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 56);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_24B3D5598(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = *(a4 + 24);
    swift_getFunctionTypeMetadata0();
    v9 = sub_24B4583CC();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(v10 + 56);
      v13 = v5 + *(a4 + 52);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      v14 = *(a4 + 16);
      swift_getFunctionTypeMetadata0();
      v15 = sub_24B4583CC();
      v16 = *(*(v15 - 8) + 56);
      v17 = v5 + *(a4 + 56);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

uint64_t sub_24B3D56D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE91A0, &qword_24B463A10);
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  swift_getWitnessTable();
  sub_24B45849C();
  swift_getWitnessTable();
  sub_24B45858C();
  sub_24B4585BC();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  swift_getWitnessTable();
  sub_24B45849C();
  sub_24B45872C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B45858C();
  sub_24B45872C();
  sub_24B458B7C();
  sub_24B4585BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B4103F8();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AwardEarnedLoadState();
  swift_getOpaqueTypeConformance2();
  sub_24B438C1C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B3D5A80()
{
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v16 = *(v0 + 40);
  v1 = (type metadata accessor for AwardDetailView() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2);
  v6 = *(v0 + v2 + 8);
  v7 = *(v0 + v2 + 16);
  sub_24B3DE5B8();
  v8 = v1[15];
  swift_getFunctionTypeMetadata0();
  v9 = sub_24B4583CC();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = v1[16];
  swift_getFunctionTypeMetadata0();
  v11 = sub_24B4583CC();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);
  v12 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_24B3D5C08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    State = type metadata accessor for AwardToastLoadState();
    v9 = *(*(State - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, State);
  }
}

void *sub_24B3D5CB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for AwardToastLoadState();
    v8 = *(*(State - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B3D5D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B45843C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24B3D5E28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B45843C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24B3D5F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B45843C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24B3D5FF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B45843C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24B3D60AC()
{
  v1 = (type metadata accessor for AwardToastPresentationFeature() - 8);
  v2 = (*(*v1 + 80) + 33) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_24B3D810C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v4 = *(v0 + v2 + 8);

  v5 = *(v0 + v2 + 24);

  v6 = *(v0 + v2 + 40);

  v7 = *(v0 + v2 + 56);

  v8 = *(v0 + v2 + 72);

  v9 = *(v0 + v2 + 88);

  v10 = *(v0 + v2 + 104);

  v11 = *(v0 + v2 + 120);

  v12 = *(v0 + v2 + 136);

  v13 = v1[7];
  v14 = sub_24B45836C();
  (*(*(v14 - 8) + 8))(v0 + v2 + v13, v14);

  return swift_deallocObject();
}

uint64_t sub_24B3D61E0()
{
  v1 = (type metadata accessor for AwardToastPresentationFeature() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v0 + v2);
  v5 = *(v0 + v2 + 8);

  v6 = *(v4 + 3);

  v7 = *(v4 + 5);

  v8 = *(v4 + 7);

  v9 = *(v4 + 9);

  v10 = *(v4 + 11);

  v11 = *(v4 + 13);

  v12 = *(v4 + 15);

  v13 = *(v4 + 17);

  v14 = v1[7];
  v15 = sub_24B45836C();
  (*(*(v15 - 8) + 8))(&v4[v14], v15);
  v16 = *(v0 + v3);

  v17 = *(v0 + v3 + 16);

  v18 = *(v0 + v3 + 32);

  v19 = *(v0 + v3 + 40);

  return swift_deallocObject();
}

uint64_t sub_24B3D6338()
{
  v1 = (type metadata accessor for AwardToastPresentationFeature() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v0 + v2);
  v5 = *(v0 + v2 + 8);

  v6 = *(v4 + 3);

  v7 = *(v4 + 5);

  v8 = *(v4 + 7);

  v9 = *(v4 + 9);

  v10 = *(v4 + 11);

  v11 = *(v4 + 13);

  v12 = *(v4 + 15);

  v13 = *(v4 + 17);

  v14 = v1[7];
  v15 = sub_24B45836C();
  (*(*(v15 - 8) + 8))(&v4[v14], v15);
  v16 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_24B3D6478(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D6524(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D65D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D6684(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D672C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AwardImageLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AwardImageLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_24B3D6870(uint64_t a1, _OWORD *a2)
{
  *(v3 + 176) = a1;
  v5 = *(*(sub_24B45839C() - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v6 = *(*(sub_24B458E2C() - 8) + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  v7 = *(*(sub_24B458E0C() - 8) + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v8 = a2[1];
  *(v3 + 208) = *a2;
  *(v3 + 224) = v8;
  v9 = *v2;
  *(v3 + 240) = a2[5];
  *(v3 + 256) = v9;
  *(v3 + 49) = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_24B3D6978, 0, 0);
}

uint64_t sub_24B3D6978()
{
  if (*(v0 + 49) > 1u)
  {
    if (*(v0 + 49) != 2)
    {
      v20 = (*(v0 + 208) + **(v0 + 208));
      v17 = *(*(v0 + 208) + 4);
      v18 = swift_task_alloc();
      *(v0 + 400) = v18;
      *v18 = v0;
      v18[1] = sub_24B3D7CC8;
      v19 = *(v0 + 216);
      v4 = &unk_285E6C480;
      goto LABEL_12;
    }

    v5 = *(v0 + 264);
    v6 = *(v0 + 224);

    v21 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 280) = v8;
    *v8 = v0;
    v8[1] = sub_24B3D6E20;
    v9 = *(v0 + 256);
    v10 = *(v0 + 232);

    return v21(v0 + 16, v9, v5);
  }

  else
  {
    if (!*(v0 + 49))
    {
      v20 = (*(v0 + 208) + **(v0 + 208));
      v1 = *(*(v0 + 208) + 4);
      v2 = swift_task_alloc();
      *(v0 + 336) = v2;
      *v2 = v0;
      v2[1] = sub_24B3D755C;
      v3 = *(v0 + 216);
      v4 = &unk_285E6C450;
LABEL_12:

      return v20(v4);
    }

    v12 = *(v0 + 256);
    v13 = *(v0 + 240);

    v22 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 272) = v15;
    *v15 = v0;
    v15[1] = sub_24B3D6CE8;
    v16 = *(v0 + 248);

    return v22();
  }
}

uint64_t sub_24B3D6CE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 272);
  v8 = *v3;

  if (v2)
  {
    MEMORY[0x24C2406D0](v2);
    v9 = sub_24B3D7118;
  }

  else
  {
    *(v6 + 296) = a2;
    *(v6 + 304) = a1;
    v9 = sub_24B3D6F40;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24B3D6E20()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    sub_24B3D810C(*(v2 + 256), *(v2 + 264), 2);
    v4 = sub_24B3D7FDC;
  }

  else
  {
    v4 = sub_24B3D7874;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24B3D6F40()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  sub_24B458DFC();
  sub_24B458DEC();
  sub_24B458DDC();

  sub_24B458DEC();
  sub_24B458E1C();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_24B45838C();
  v0[19] = sub_24B458E5C();
  v0[20] = v8;
  v9 = v0[32];
  v10 = v0[26];
  v0[39] = v8;
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[40] = v12;
  *v12 = v0;
  v12[1] = sub_24B3D72A4;
  v13 = v0[27];

  return v15(v9);
}

uint64_t sub_24B3D7118()
{
  v1 = v0[23];
  v2 = v0[24];
  sub_24B458DBC();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_24B45838C();
  v0[19] = sub_24B458E5C();
  v0[20] = v5;
  v6 = v0[32];
  v7 = v0[26];
  v0[39] = v5;
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[40] = v9;
  *v9 = v0;
  v9[1] = sub_24B3D72A4;
  v10 = v0[27];

  return v12(v6);
}

uint64_t sub_24B3D72A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[40];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[39];
    v9 = v4[32];
    v8 = v4[33];

    sub_24B3D810C(v9, v8, 1);
    v11 = v4[24];
    v10 = v4[25];
    v12 = v4[23];

    v13 = v6[1];

    return v13();
  }

  else
  {
    v4[41] = v4[19];

    return MEMORY[0x2822009F8](sub_24B3D7430, 0, 0);
  }
}

uint64_t sub_24B3D7430()
{
  v1 = v0[23];
  v2 = v0[24];
  sub_24B458DBC();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_24B45838C();
  v5 = sub_24B458E5C();
  v6 = v0[41];
  v7 = v0[8];
  v8 = v0[39];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[22];
  v12 = v0[23];
  *v11 = v0[32];
  *(v11 + 8) = v6;
  *(v11 + 16) = v8;
  *(v11 + 24) = v5;
  *(v11 + 32) = v13;
  *(v11 + 40) = v7;
  *(v11 + 48) = 0;

  v14 = v0[1];

  return v14();
}

uint64_t sub_24B3D755C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v5 = v3[42];
  v6 = *v2;

  if (v1)
  {
    v8 = v4[24];
    v7 = v4[25];
    v9 = v4[23];

    v10 = v6[1];

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24B3D76BC, 0, 0);
  }
}

uint64_t sub_24B3D76BC()
{
  v2 = v0[23];
  v1 = v0[24];
  sub_24B458DBC();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  sub_24B45838C();
  v6 = sub_24B458E5C();
  v8 = v7;
  sub_24B458DBC();
  v9 = [v4 bundleForClass_];
  sub_24B45838C();
  v10 = sub_24B458E5C();
  v11 = v0[11];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[22];
  v15 = v0[23];
  *v14 = &unk_285E6C450;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v16;
  *(v14 + 40) = v11;
  *(v14 + 48) = 2;

  v17 = v0[1];

  return v17();
}

uint64_t sub_24B3D7874()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 208);
  *(v0 + 344) = *(v0 + 16);
  *(v0 + 360) = *(v0 + 40);
  *(v0 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE78F0, &qword_24B45BC80);
  v4 = swift_allocObject();
  *(v0 + 376) = v4;
  *(v4 + 16) = xmmword_24B459800;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;

  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v0 + 384) = v6;
  *v6 = v0;
  v6[1] = sub_24B3D79CC;
  v7 = *(v0 + 216);

  return v9(v4);
}

uint64_t sub_24B3D79CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = v1;
  v5 = v3[48];
  v9 = *v2;
  v4[49] = v1;

  if (v1)
  {
    v6 = sub_24B3D805C;
  }

  else
  {
    v7 = v4[47];

    v6 = sub_24B3D7AF0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24B3D7AF0()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24B459800;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;

  sub_24B458DFC();
  sub_24B458DEC();
  v0[21] = 1;
  sub_24B458DCC();
  sub_24B458DEC();
  sub_24B458E1C();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_24B45838C();
  v12 = sub_24B458E5C();
  v14 = v13;

  v15 = v0[14];
  v17 = v0[43];
  v16 = v0[44];
  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[22];
  v21 = v0[23];
  *v20 = v9;
  *(v20 + 8) = v17;
  *(v20 + 16) = v16;
  *(v20 + 24) = v12;
  *(v20 + 32) = v14;
  *(v20 + 40) = v15;
  *(v20 + 48) = 1;

  v22 = v0[1];

  return v22();
}

uint64_t sub_24B3D7CC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[16] = v2;
  v4[17] = a1;
  v4[18] = v1;
  v5 = v3[50];
  v6 = *v2;

  if (v1)
  {
    v8 = v4[24];
    v7 = v4[25];
    v9 = v4[23];

    v10 = v6[1];

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24B3D7E28, 0, 0);
  }
}

uint64_t sub_24B3D7E28()
{
  v2 = v0[23];
  v1 = v0[24];
  sub_24B458DBC();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  sub_24B45838C();
  v6 = sub_24B458E5C();
  v8 = v7;
  sub_24B458DBC();
  v9 = [v4 bundleForClass_];
  sub_24B45838C();
  v10 = sub_24B458E5C();
  v11 = v0[17];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[22];
  v15 = v0[23];
  *v14 = &unk_285E6C480;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v16;
  *(v14 + 40) = v11;
  *(v14 + 48) = 3;

  v17 = v0[1];

  return v17();
}

uint64_t sub_24B3D7FDC()
{
  v1 = v0[36];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24B3D805C()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  v5 = v0[32];
  v4 = v0[33];

  sub_24B3D810C(v5, v4, 2);
  v6 = v0[49];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24B3D810C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t AwardDetailState.templateUniqueName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void AwardDetailState.layout.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 17);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t AwardDetailState.suggestedWorkoutsLoadState.getter()
{
  v1 = *(v0 + 24);
  sub_24B3D81E4(v1);
  return v1;
}

unint64_t sub_24B3D81E4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t AwardDetailState.suggestedWorkoutsLoadState.setter(uint64_t a1)
{
  result = sub_24B3D8220(*(v1 + 24));
  *(v1 + 24) = a1;
  return result;
}

unint64_t sub_24B3D8220(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t type metadata accessor for AwardDetailState()
{
  result = qword_27EFE7940;
  if (!qword_27EFE7940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardDetailState.earnedLoadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AwardDetailState() + 28);

  return sub_24B3D8330(a1, v3);
}

uint64_t sub_24B3D8330(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardEarnedLoadState();
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t AwardDetailState.init(templateUniqueName:layout:suggestedWorkoutsLoadState:earnedLoadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v8;
  *(a6 + 17) = v9;
  *(a6 + 24) = a4;
  v10 = a6 + *(type metadata accessor for AwardDetailState() + 28);

  return sub_24B3D843C(a5, v10);
}

uint64_t sub_24B3D843C(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardEarnedLoadState();
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_24B3D84A0()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

uint64_t sub_24B3D84E8()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

unint64_t sub_24B3D852C()
{
  v1 = 0x74756F79616CLL;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0x6F4C64656E726165;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_24B3D85BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B3D8FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B3D85FC(uint64_t a1)
{
  v2 = sub_24B3D88E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D8638(uint64_t a1)
{
  v2 = sub_24B3D88E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardDetailState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE78F8, &qword_24B459840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3D88E4();
  sub_24B45928C();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_24B45914C();
  if (!v2)
  {
    v13 = *(v3 + 17);
    v19 = *(v3 + 16);
    v20 = v13;
    v18 = 1;
    sub_24B3D8938();
    sub_24B45918C();
    v17 = v3[3];
    v16[15] = 2;
    sub_24B3D898C();
    sub_24B45918C();
    v14 = *(type metadata accessor for AwardDetailState() + 28);
    v16[14] = 3;
    type metadata accessor for AwardEarnedLoadState();
    sub_24B3D8E80(&qword_27EFE7918);
    sub_24B45918C();
  }

  return (*(v6 + 8))(v9, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B3D88E4()
{
  result = qword_27EFE7900;
  if (!qword_27EFE7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7900);
  }

  return result;
}

unint64_t sub_24B3D8938()
{
  result = qword_27EFE7908;
  if (!qword_27EFE7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7908);
  }

  return result;
}

unint64_t sub_24B3D898C()
{
  result = qword_27EFE7910;
  if (!qword_27EFE7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7910);
  }

  return result;
}

uint64_t AwardDetailState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  State = type metadata accessor for AwardEarnedLoadState();
  v4 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7920, &qword_24B459848);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for AwardDetailState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3D88E4();
  v26 = v10;
  v16 = v27;
  sub_24B45927C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = State;
  v17 = v6;
  v19 = v24;
  v18 = v25;
  v34 = 0;
  *v14 = sub_24B4590AC();
  *(v14 + 1) = v20;
  v31 = 1;
  sub_24B3D8DD8();
  sub_24B4590EC();
  v21 = v33;
  v14[16] = v32;
  v14[17] = v21;
  v30 = 2;
  sub_24B3D8E2C();
  sub_24B4590EC();
  *(v14 + 3) = v28;
  v29 = 3;
  sub_24B3D8E80(&qword_27EFE7938);
  sub_24B4590EC();
  (*(v19 + 8))(v26, v18);
  sub_24B3D843C(v17, &v14[*(v11 + 28)]);
  sub_24B3D8EC4(v14, v23, type metadata accessor for AwardDetailState);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B3D8F2C(v14);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_24B3D8DD8()
{
  result = qword_27EFE7928;
  if (!qword_27EFE7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7928);
  }

  return result;
}

unint64_t sub_24B3D8E2C()
{
  result = qword_27EFE7930;
  if (!qword_27EFE7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7930);
  }

  return result;
}

uint64_t sub_24B3D8E80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AwardEarnedLoadState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B3D8EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B3D8F2C(uint64_t a1)
{
  v2 = type metadata accessor for AwardDetailState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B3D8FC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024B466A30 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4C64656E726165 && a2 == 0xEF65746174536461)
  {

    return 3;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t _s13FitnessAwards16AwardDetailStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_24B4591AC() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || ((*(a1 + 17) ^ *(a2 + 17)) & 1) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (v5 == 1)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6 < 2 || (sub_24B40E5E4(v5, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(type metadata accessor for AwardDetailState() + 28);

  return _s13FitnessAwards20AwardEarnedLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t sub_24B3D9234()
{
  result = type metadata accessor for AwardEarnedLoadState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwardDetailState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AwardDetailState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B3D9428()
{
  result = qword_27EFE7950;
  if (!qword_27EFE7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7950);
  }

  return result;
}

unint64_t sub_24B3D9480()
{
  result = qword_27EFE7958;
  if (!qword_27EFE7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7958);
  }

  return result;
}

unint64_t sub_24B3D94D8()
{
  result = qword_27EFE7960;
  if (!qword_27EFE7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7960);
  }

  return result;
}

uint64_t sub_24B3D9548(uint64_t a1)
{
  v2 = sub_24B3D9DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D9584(uint64_t a1)
{
  v2 = sub_24B3D9DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3D95C0()
{
  v1 = 0x656373656C616F63;
  v2 = 0x6E6961746E69616DLL;
  if (*v0 != 2)
  {
    v2 = 0x7274537472617473;
  }

  if (*v0)
  {
    v1 = 0x72616C75676E6973;
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

uint64_t sub_24B3D9654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B3D9F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B3D967C(uint64_t a1)
{
  v2 = sub_24B3D9C98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D96B8(uint64_t a1)
{
  v2 = sub_24B3D9C98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3D96F4(uint64_t a1)
{
  v2 = sub_24B3D9D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D9730(uint64_t a1)
{
  v2 = sub_24B3D9D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3D976C(uint64_t a1)
{
  v2 = sub_24B3D9D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D97A8(uint64_t a1)
{
  v2 = sub_24B3D9D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3D97E4(uint64_t a1)
{
  v2 = sub_24B3D9CEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D9820(uint64_t a1)
{
  v2 = sub_24B3D9CEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastType.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7968, &qword_24B459A20);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7970, &qword_24B459A28);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7978, &qword_24B459A30);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7980, &qword_24B459A38);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7988, &qword_24B459A40);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3D9C98();
  sub_24B45928C();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_24B3D9D40();
      v12 = v29;
      sub_24B45910C();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_24B3D9CEC();
      v12 = v32;
      sub_24B45910C();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_24B3D9D94();
    sub_24B45910C();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_24B3D9DE8();
  sub_24B45910C();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_24B3D9C98()
{
  result = qword_27EFE7990;
  if (!qword_27EFE7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7990);
  }

  return result;
}

unint64_t sub_24B3D9CEC()
{
  result = qword_27EFE7998;
  if (!qword_27EFE7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7998);
  }

  return result;
}

unint64_t sub_24B3D9D40()
{
  result = qword_27EFE79A0;
  if (!qword_27EFE79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79A0);
  }

  return result;
}

unint64_t sub_24B3D9D94()
{
  result = qword_27EFE79A8;
  if (!qword_27EFE79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79A8);
  }

  return result;
}

unint64_t sub_24B3D9DE8()
{
  result = qword_27EFE79B0;
  if (!qword_27EFE79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79B0);
  }

  return result;
}

void *sub_24B3D9E54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B3DA084(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t AwardToastType.hashValue.getter(unsigned __int8 a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](a1);
  return sub_24B45926C();
}

uint64_t sub_24B3D9F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656373656C616F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676E6973 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6961746E69616DLL && a2 == 0xEE006B6165727453 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7274537472617473 && a2 == 0xEB000000006B6165)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B4591AC();

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

void *sub_24B3DA084(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A18, &qword_24B459F30);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A20, &qword_24B459F38);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A28, &qword_24B459F40);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A30, &qword_24B459F48);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A38, &unk_24B459F50);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B3D9C98();
  v21 = v50;
  sub_24B45927C();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_24B4590FC();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_24B3E380C();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_24B3D9D94();
        v36 = v40;
        sub_24B45905C();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_24B3D9DE8();
        v29 = v40;
        sub_24B45905C();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_24B3D9D40();
      v35 = v40;
      sub_24B45905C();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_24B3D9CEC();
      v37 = v40;
      sub_24B45905C();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_24B458FFC();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
  *v15 = &type metadata for AwardToastType;
  sub_24B45906C();
  sub_24B458FEC();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x277D84160], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_24B3DA6C8()
{
  result = qword_27EFE79B8;
  if (!qword_27EFE79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79B8);
  }

  return result;
}

unint64_t sub_24B3DA780()
{
  result = qword_27EFE79C0;
  if (!qword_27EFE79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79C0);
  }

  return result;
}

unint64_t sub_24B3DA7D8()
{
  result = qword_27EFE79C8;
  if (!qword_27EFE79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79C8);
  }

  return result;
}

unint64_t sub_24B3DA830()
{
  result = qword_27EFE79D0;
  if (!qword_27EFE79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79D0);
  }

  return result;
}

unint64_t sub_24B3DA888()
{
  result = qword_27EFE79D8;
  if (!qword_27EFE79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79D8);
  }

  return result;
}

unint64_t sub_24B3DA8E0()
{
  result = qword_27EFE79E0;
  if (!qword_27EFE79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79E0);
  }

  return result;
}

unint64_t sub_24B3DA938()
{
  result = qword_27EFE79E8;
  if (!qword_27EFE79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79E8);
  }

  return result;
}

unint64_t sub_24B3DA990()
{
  result = qword_27EFE79F0;
  if (!qword_27EFE79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79F0);
  }

  return result;
}

unint64_t sub_24B3DA9E8()
{
  result = qword_27EFE79F8;
  if (!qword_27EFE79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79F8);
  }

  return result;
}

unint64_t sub_24B3DAA40()
{
  result = qword_27EFE7A00;
  if (!qword_27EFE7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A00);
  }

  return result;
}

unint64_t sub_24B3DAA98()
{
  result = qword_27EFE7A08;
  if (!qword_27EFE7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A08);
  }

  return result;
}

unint64_t sub_24B3DAAF0()
{
  result = qword_27EFE7A10;
  if (!qword_27EFE7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A10);
  }

  return result;
}

double AwardImageLayout.size.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

FitnessAwards::AwardImageLayout __swiftcall AwardImageLayout.init(size:)(FitnessAwards::AwardImageLayout size)
{
  *v1 = size.size.width;
  v1[1] = size.size.height;
  return size;
}

uint64_t sub_24B3DAB84()
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](0);
  return sub_24B45926C();
}

uint64_t sub_24B3DABC8()
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](0);
  return sub_24B45926C();
}

uint64_t sub_24B3DAC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B3DACA0(uint64_t a1)
{
  v2 = sub_24B3DAE8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DACDC(uint64_t a1)
{
  v2 = sub_24B3DAE8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardImageLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A48, &qword_24B459F70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3DAE8C();
  sub_24B45928C();
  v12[0] = v8;
  v12[1] = v9;
  type metadata accessor for CGSize();
  sub_24B3DB074(&qword_2810E2768);
  sub_24B45918C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B3DAE8C()
{
  result = qword_27EFE7A50;
  if (!qword_27EFE7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A50);
  }

  return result;
}

uint64_t AwardImageLayout.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A58, &qword_24B459F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3DAE8C();
  sub_24B45927C();
  if (!v2)
  {
    type metadata accessor for CGSize();
    sub_24B3DB074(&qword_27EFE7A60);
    sub_24B4590EC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B3DB074(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AwardImageLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C2403E0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x24C2403E0](*&v3);
}

uint64_t AwardImageLayout.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x24C2403E0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x24C2403E0](*&v4);
  return sub_24B45926C();
}

uint64_t sub_24B3DB1D0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  sub_24B3DB298(v1, v2);
  return sub_24B45926C();
}

uint64_t sub_24B3DB22C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  sub_24B3DB298(v1, v2);
  return sub_24B45926C();
}

uint64_t sub_24B3DB298(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x24C2403E0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x24C2403E0](*&v3);
}

unint64_t sub_24B3DB2EC()
{
  result = qword_27EFE7A68;
  if (!qword_27EFE7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwardImageLayout.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AwardImageLayout.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24B3DB43C()
{
  result = qword_27EFE7A70;
  if (!qword_27EFE7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A70);
  }

  return result;
}

unint64_t sub_24B3DB494()
{
  result = qword_27EFE7A78;
  if (!qword_27EFE7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A78);
  }

  return result;
}

unint64_t sub_24B3DB4EC()
{
  result = qword_27EFE7A80;
  if (!qword_27EFE7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A80);
  }

  return result;
}

uint64_t AwardProgressView.init(store:descriptionStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a4 = sub_24B3DB5A8;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 17) = v7;
  return result;
}

uint64_t sub_24B3DB5A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t AwardProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  State = type metadata accessor for AwardProgressLoadState();
  v2 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A88, &qword_24B45A1A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 17);
  sub_24B3DB854(*v1, v10, v11 | (v12 << 8), &v17 - v7);
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  *(v13 + 33) = v12;
  v14 = &v8[*(v5 + 36)];
  *v14 = sub_24B3DE5C0;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  sub_24B3DE5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
  sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8);
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v10;
  *(v15 + 32) = v11;
  *(v15 + 33) = v12;
  sub_24B3DE5D8();
  sub_24B3DE994();
  sub_24B3DF27C();
  sub_24B458ABC();

  sub_24B3DF2D4(v4);
  return sub_24B3DF4F0(v8, &qword_27EFE7A88, &qword_24B45A1A0);
}

uint64_t sub_24B3DB854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B18, &qword_24B45A358);
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v56 = (&v54 - v8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AB0, &qword_24B45A1E8);
  v9 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v54 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AA8, &qword_24B45A1E0);
  v11 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v59 = &v54 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B20, &qword_24B45A360);
  v13 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v66 = &v54 - v14;
  v15 = sub_24B45860C();
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B28, &qword_24B45A368);
  v62 = *(v65 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x28223BE20](v65);
  v21 = &v54 - v20;
  State = type metadata accessor for AwardProgressLoadState();
  v23 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
  v26 = a2;
  v27 = a3;
  sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8);
  v28 = a1;
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v38 = sub_24B45836C();
    (*(*(v38 - 8) + 8))(v25, v38);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_6:
    sub_24B4586CC();
    v39 = sub_24B45891C();
    v41 = v40;
    *&v71 = v39;
    *(&v71 + 1) = v40;
    v43 = v42 & 1;
    LOBYTE(v72) = v42 & 1;
    *(&v72 + 1) = v44;
    sub_24B4585FC();
    v45 = MEMORY[0x277CE0BD8];
    v46 = MEMORY[0x277CE0BC8];
    sub_24B458ACC();
    (*(v60 + 8))(v18, v61);
    sub_24B3DF478(v39, v41, v43);

    v47 = v62;
    v48 = v65;
    (*(v62 + 16))(v66, v21, v65);
    swift_storeEnumTagMultiPayload();
    *&v71 = v45;
    *(&v71 + 1) = v46;
    swift_getOpaqueTypeConformance2();
    sub_24B3DEB60();
    sub_24B45871C();
    return (*(v47 + 8))(v21, v48);
  }

  v30 = v59;
  v31 = *v25;
  v32 = *(v25 + 1);
  if (v25[32])
  {
    v68 = v28;
    v69 = v26;
    v70 = v27 & 0xFF01;
    sub_24B3DD178(v31, v32 & 1, &v71);
    v33 = v73;
    v34 = v74;
    v35 = v75;
    v36 = v72;
    v37 = v56;
    *v56 = v71;
    v37[1] = v36;
    *(v37 + 4) = v33;
    *(v37 + 20) = v34;
    *(v37 + 42) = v35;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B08, &qword_24B45A240);
    sub_24B3DEBEC();
    sub_24B3DF164();
    sub_24B45871C();
  }

  else
  {
    v52 = v25 + 16;
    v50 = *(v25 + 2);
    v51 = *(v52 + 1);
    *&v71 = v28;
    *(&v71 + 1) = v26;
    LOWORD(v72) = v27 & 0xFF01;
    v53 = v55;
    sub_24B3DBFDC(v55, *&v51, *&v50);
    sub_24B3DF488(v53, v56, &qword_27EFE7AB0, &qword_24B45A1E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B08, &qword_24B45A240);
    sub_24B3DEBEC();
    sub_24B3DF164();
    sub_24B45871C();
    sub_24B3DF468(v31, v32, v50, v51, 0);
    sub_24B3DF4F0(v53, &qword_27EFE7AB0, &qword_24B45A1E8);
  }

  sub_24B3DF488(v30, v66, &qword_27EFE7AA8, &qword_24B45A1E0);
  swift_storeEnumTagMultiPayload();
  *&v71 = MEMORY[0x277CE0BD8];
  *(&v71 + 1) = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_24B3DEB60();
  sub_24B45871C();
  return sub_24B3DF4F0(v30, &qword_27EFE7AA8, &qword_24B45A1E0);
}

uint64_t sub_24B3DBFDC@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v100 = a1;
  v6 = sub_24B458B0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AE8, &qword_24B45A220);
  v92 = *(v11 - 8);
  v12 = v92[8];
  MEMORY[0x28223BE20](v11);
  v14 = &v92 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AE0, &qword_24B45A218);
  v15 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v17 = &v92 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B30, &qword_24B45A370);
  v18 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v99 = &v92 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B38, &qword_24B45A378);
  v20 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v22 = (&v92 - v21);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AB8, &qword_24B45A1F0);
  v23 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v95 = &v92 - v24;
  v25 = sub_24B45839C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v96 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24B458E2C();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = sub_24B458E0C();
  v31 = *(*(v30 - 8) + 64);
  result = MEMORY[0x28223BE20](v30 - 8);
  v34 = *v3;
  v33 = v3[1];
  v35 = *(v3 + 16);
  v36 = *(v3 + 17);
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      *&v107 = a3 / a2;
      BYTE8(v107) = 0;
      *&v101 = 0x3FF0000000000000;
      sub_24B3DF550();
      sub_24B45853C();
      (*(v7 + 104))(v10, *MEMORY[0x277CE0EE0], v6);
      v52 = sub_24B458B5C();
      sub_24B458B2C();
      v53 = sub_24B458B3C();

      *&v107 = v52;
      *(&v107 + 1) = v53;
      *&v108 = 0x4024000000000000;
      sub_24B3DF11C(&qword_2810E28D8, &qword_27EFE7AE8, &qword_24B45A220);
      sub_24B3DEF84();
      sub_24B45896C();

      (v92[1])(v14, v11);
      sub_24B458CBC();
      sub_24B45855C();
      v54 = &v17[*(v94 + 36)];
      v55 = v108;
      *v54 = v107;
      *(v54 + 1) = v55;
      *(v54 + 2) = v109;
      sub_24B3DF488(v17, v22, &qword_27EFE7AE0, &qword_24B45A218);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC0, &qword_24B45A1F8);
      sub_24B3DED04();
      sub_24B3DEE74();
      v56 = v95;
      sub_24B45871C();
      sub_24B3DF488(v56, v99, &qword_27EFE7AB8, &qword_24B45A1F0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AF0, &qword_24B45A228);
      sub_24B3DEC78();
      sub_24B3DEFD8();
      sub_24B45871C();
      sub_24B3DF4F0(v56, &qword_27EFE7AB8, &qword_24B45A1F0);
      return sub_24B3DF4F0(v17, &qword_27EFE7AE0, &qword_24B45A218);
    }

    v73 = ceil(a2 - a3);
    if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    if (v73 <= -9.22337204e18)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v73 >= 9.22337204e18)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v74 = v73;
    v75 = *v3;
    v76 = v3[1];
    v77 = *(v3 + 16);
    sub_24B458DFC();
    sub_24B458DEC();
    *&v107 = v74;
    sub_24B458DCC();
    sub_24B458DEC();
    sub_24B458E1C();
    type metadata accessor for AwardsLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v79 = [objc_opt_self() bundleForClass_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
    sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8);
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    v96 = sub_24B4588CC();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    KeyPath = swift_getKeyPath();
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v101) = v107;
    v87 = sub_24B43C2AC();
    v88 = swift_getKeyPath();
    LOBYTE(v107) = v83 & 1;
    v89 = sub_24B45875C();
    *&v111 = v96;
    *(&v111 + 1) = v81;
    LOBYTE(v112) = v83 & 1;
    *(&v112 + 1) = v85;
    *&v113 = KeyPath;
    BYTE8(v113) = 0;
    *&v114 = v88;
    *(&v114 + 1) = v87;
    v115 = v89;
    v103 = v113;
    v104 = v114;
    v105 = v89;
    v102 = v112;
    v101 = v111;
    v116 = 1;
    v106 = 1;
    v68 = &qword_27EFE7AF8;
    v69 = &qword_24B45A230;
    sub_24B3DF488(&v111, &v107, &qword_27EFE7AF8, &qword_24B45A230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC0, &qword_24B45A1F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AF8, &qword_24B45A230);
    sub_24B3DED04();
    sub_24B3DF064();
    sub_24B45871C();
    v90 = *v110;
    v71 = v99;
    *(v99 + 32) = v109;
    *(v71 + 48) = v90;
    v72 = *&v110[13];
LABEL_17:
    *(v71 + 61) = v72;
    v91 = v108;
    *v71 = v107;
    *(v71 + 16) = v91;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AF0, &qword_24B45A228);
    sub_24B3DEC78();
    sub_24B3DEFD8();
    sub_24B45871C();
    return sub_24B3DF4F0(&v111, v68, v69);
  }

  v37 = *v3;
  v38 = v3[1];
  v39 = *(v3 + 16);
  if (*(v3 + 17))
  {
    sub_24B458DFC();
    sub_24B458DEC();
    *&v107 = a3;
    sub_24B458DCC();
    sub_24B458DEC();
    *&v107 = a2;
    sub_24B458DCC();
    sub_24B458DEC();
    sub_24B458E1C();
    type metadata accessor for AwardsLocalizationBundle();
    v57 = swift_getObjCClassFromMetadata();
    v58 = [objc_opt_self() bundleForClass_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
    sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8);
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    v59 = sub_24B4588CC();
    v96 = v60;
    v62 = v61;
    v64 = v63;
    v65 = swift_getKeyPath();
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v101) = v107;
    v66 = sub_24B43C2AC();
    v67 = swift_getKeyPath();
    LOBYTE(v107) = v62 & 1;
    *&v111 = v59;
    *(&v111 + 1) = v96;
    LOBYTE(v112) = v62 & 1;
    *(&v112 + 1) = v64;
    *&v113 = v65;
    BYTE8(v113) = 0;
    *&v114 = v67;
    *(&v114 + 1) = v66;
    v101 = v111;
    v102 = v112;
    v103 = v113;
    v104 = v114;
    v116 = 0;
    v106 = 0;
    v68 = &qword_27EFE7AC0;
    v69 = &qword_24B45A1F8;
    sub_24B3DF488(&v111, &v107, &qword_27EFE7AC0, &qword_24B45A1F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC0, &qword_24B45A1F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AF8, &qword_24B45A230);
    sub_24B3DED04();
    sub_24B3DF064();
    sub_24B45871C();
    v70 = *v110;
    v71 = v99;
    *(v99 + 32) = v109;
    *(v71 + 48) = v70;
    v72 = *&v110[13];
    goto LABEL_17;
  }

  sub_24B458DFC();
  result = sub_24B458DEC();
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *&v107 = a3;
  sub_24B458DCC();
  result = sub_24B458DEC();
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2 > -9.22337204e18)
  {
    if (a2 < 9.22337204e18)
    {
      *&v107 = a2;
      sub_24B458DCC();
      sub_24B458DEC();
      sub_24B458E1C();
      type metadata accessor for AwardsLocalizationBundle();
      v40 = swift_getObjCClassFromMetadata();
      v92 = [objc_opt_self() bundleForClass_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
      sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8);
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      v41 = sub_24B4588CC();
      v96 = v42;
      v44 = v43;
      v92 = v45;
      v46 = swift_getKeyPath();
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      LOWORD(v101) = v107;
      v47 = sub_24B43C2AC();
      v48 = swift_getKeyPath();
      LOBYTE(v101) = v44 & 1;
      *&v107 = v41;
      *(&v107 + 1) = v96;
      LOBYTE(v108) = v44 & 1;
      *(&v108 + 1) = v92;
      *&v109 = v46;
      BYTE8(v109) = 1;
      *v110 = v48;
      *&v110[8] = v47;
      v49 = v108;
      *v22 = v107;
      v22[1] = v49;
      v50 = *v110;
      v22[2] = v109;
      v22[3] = v50;
      swift_storeEnumTagMultiPayload();
      sub_24B3DF488(&v107, &v101, &qword_27EFE7AC0, &qword_24B45A1F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC0, &qword_24B45A1F8);
      sub_24B3DED04();
      sub_24B3DEE74();
      v51 = v95;
      sub_24B45871C();
      sub_24B3DF488(v51, v99, &qword_27EFE7AB8, &qword_24B45A1F0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AF0, &qword_24B45A228);
      sub_24B3DEC78();
      sub_24B3DEFD8();
      sub_24B45871C();
      sub_24B3DF4F0(&v107, &qword_27EFE7AC0, &qword_24B45A1F8);
      return sub_24B3DF4F0(v51, &qword_27EFE7AB8, &qword_24B45A1F0);
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double sub_24B3DD178@<D0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v187 = a1;
  v190 = a3;
  v5 = sub_24B45839C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B458E2C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B458E0C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24B458B0C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v22 = *v3;
  v21 = *(v3 + 8);
  v23 = *(v3 + 16);
  v24 = *(v3 + 17);
  if (a2)
  {
    v25 = sub_24B458B4C();
  }

  else
  {
    (*(v20 + 104))(&v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
    v25 = sub_24B458B5C();
  }

  v194 = v25;
  if (v24 <= 1)
  {
    if (!v24)
    {
      sub_24B458B9C();
      v26 = sub_24B45893C();
      v28 = v27;
      v188 = v12;
      v189 = v8;
      v30 = v29;
      *&v199 = v25;
      v31 = sub_24B4588DC();
      LODWORD(v193) = v23;
      v195 = v31;
      v191 = v21;
      v192 = v22;
      v185 = v33;
      v186 = v32;
      v35 = v34;
      sub_24B3DF478(v26, v28, v30 & 1);

      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
      v183 = sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8);
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      LOWORD(v196) = v199;
      sub_24B43C2AC();
      LOBYTE(v26) = v35;
      v36 = v195;
      v37 = v186;
      v38 = sub_24B45890C();
      v40 = v39;
      LOBYTE(v28) = v41;
      v181 = v42;

      sub_24B3DF478(v36, v37, v26 & 1);

      sub_24B4586CC();
      v185 = sub_24B4588EC();
      v195 = v43;
      LODWORD(v186) = v44;
      v182 = v45;

      sub_24B3DF478(v38, v40, v28 & 1);

      sub_24B458DFC();
      sub_24B458DEC();
      *&v199 = v187;
      sub_24B458DCC();
      sub_24B458DEC();
      sub_24B458E1C();
      type metadata accessor for AwardsLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v47 = [objc_opt_self() bundleForClass_];
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      v187 = sub_24B4588CC();
      v181 = v48;
      LODWORD(v188) = v49;
      v189 = v50;
      v51 = sub_24B4588FC();
      v53 = v52;
      v55 = v54;
      v56 = sub_24B4588FC();
      v178 = v57;
      v179 = v56;
      LODWORD(v177) = v58;
      v180 = v59;
      sub_24B3DF478(v51, v53, v55 & 1);

      *&v199 = v194;
      v60 = sub_24B4588DC();
      v62 = v61;
      LOBYTE(v36) = v63;
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      LOWORD(v196) = v199;
      sub_24B43C2AC();
      v64 = sub_24B45890C();
      v66 = v65;
      LOBYTE(v53) = v67;
      v69 = v68;

      sub_24B3DF478(v60, v62, v36 & 1);

      KeyPath = swift_getKeyPath();
      *&v196 = v64;
      *(&v196 + 1) = v66;
      *v197 = v53 & 1;
      *&v197[8] = v69;
      *&v197[16] = KeyPath;
      *&v197[24] = 1;
      v191 = v66;
      v192 = v64;
      v184 = *v197;
      sub_24B3DF5A4(v64, v66, v53 & 1);
      v193 = v69;

      v183 = KeyPath;

      sub_24B3DF5A4(v64, v66, v53 & 1);

      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC8, &qword_24B45A200);
      sub_24B3DEDBC();
      sub_24B45871C();
      v71 = v199;
      v73 = v200;
      v72 = *(&v200 + 1);
      v74 = v201;
      v75 = HIBYTE(v202);
      v76 = v202;
      if (HIBYTE(v202))
      {
        v77 = 256;
      }

      else
      {
        v77 = 0;
      }

      v196 = v199;
      *v197 = v200;
      *&v197[16] = v201;
      *&v197[24] = v77 | v202;
      v198 = 0;
      sub_24B3DF5B4(v199, *(&v199 + 1), v200, *(&v200 + 1), v201, v202, SHIBYTE(v202));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B10, &qword_24B45A248);
      sub_24B3DF1F0();
      sub_24B45871C();
      sub_24B3DF478(v179, v178, v177 & 1);

      sub_24B3DF478(v187, v181, v188 & 1);

      sub_24B3DF478(v185, v195, v186 & 1);

      sub_24B3DF604(v71, *(&v71 + 1), v73, v72, v74, v76, v75);
      v79 = v191;
      v78 = v192;
      v80 = v184;
      sub_24B3DF478(v192, v191, v184);

      sub_24B3DF478(v78, v79, v80);
      goto LABEL_16;
    }

LABEL_15:
    sub_24B458B9C();
    v88 = sub_24B45893C();
    v90 = v89;
    v188 = v12;
    v189 = v8;
    v92 = v91;
    *&v199 = v25;
    v93 = sub_24B4588DC();
    v178 = v16;
    v181 = v94;
    v182 = v93;
    v96 = v95;
    v180 = v97;
    sub_24B3DF478(v88, v90, v92 & 1);

    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
    v195 = sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8);
    v192 = v22;
    LODWORD(v193) = v23;
    v177 = v98;
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v196) = v199;
    sub_24B43C2AC();
    v100 = v181;
    v99 = v182;
    v101 = sub_24B45890C();
    v184 = v102;
    v185 = v101;
    LODWORD(v183) = v103;
    v186 = v104;

    sub_24B3DF478(v99, v100, v96 & 1);

    sub_24B458DBC();
    type metadata accessor for AwardsLocalizationBundle();
    v105 = swift_getObjCClassFromMetadata();
    v176 = v105;
    v175 = objc_opt_self();
    v106 = [v175 bundleForClass_];
    v191 = v21;
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    v107 = sub_24B4588CC();
    v109 = v108;
    v111 = v110;
    *&v199 = v194;
    v112 = sub_24B4588DC();
    v114 = v113;
    LOBYTE(v98) = v115;
    sub_24B3DF478(v107, v109, v111 & 1);

    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v196) = v199;
    sub_24B43C2AC();
    v116 = sub_24B45890C();
    v180 = v117;
    v181 = v116;
    LODWORD(v179) = v118;
    v182 = v119;

    sub_24B3DF478(v112, v114, v98 & 1);

    sub_24B458DFC();
    sub_24B458DEC();
    *&v199 = v187;
    sub_24B458DCC();
    sub_24B458DEC();
    sub_24B458E1C();
    v120 = [v175 bundleForClass_];
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    v121 = sub_24B4588CC();
    v123 = v122;
    v125 = v124;
    LODWORD(v199) = sub_24B45875C();
    v126 = sub_24B4588DC();
    v128 = v127;
    LOBYTE(v114) = v129;
    v176 = v130;
    sub_24B3DF478(v121, v123, v125 & 1);

    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v196) = v199;
    sub_24B43C2AC();
    v131 = sub_24B45890C();
    v187 = v132;
    v188 = v131;
    LODWORD(v178) = v133;
    v189 = v134;

    sub_24B3DF478(v126, v128, v114 & 1);

    LODWORD(v199) = sub_24B45875C();
    v135 = sub_24B4588DC();
    v137 = v136;
    LOBYTE(v98) = v138;
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v196) = v199;
    sub_24B43C2AC();
    v195 = sub_24B45890C();
    v192 = v140;
    v193 = v139;
    LODWORD(v191) = v141;

    sub_24B3DF478(v135, v137, v98 & 1);

    v142 = sub_24B4588FC();
    v144 = v143;
    LOBYTE(v135) = v145;
    v146 = sub_24B4588FC();
    v148 = v147;
    LOBYTE(v123) = v149;
    sub_24B3DF478(v142, v144, v135 & 1);

    v150 = sub_24B4588FC();
    v152 = v151;
    LOBYTE(v135) = v153;
    sub_24B3DF478(v146, v148, v123 & 1);

    v154 = sub_24B4588FC();
    v156 = v155;
    LOBYTE(v109) = v157;
    sub_24B3DF478(v150, v152, v135 & 1);

    v158 = sub_24B4588FC();
    v160 = v159;
    LOBYTE(v137) = v161;
    sub_24B3DF478(v154, v156, v109 & 1);

    v162 = sub_24B4588FC();
    v164 = v163;
    LOBYTE(v156) = v165;
    v167 = v166;
    sub_24B3DF478(v158, v160, v137 & 1);

    v168 = swift_getKeyPath();
    *&v196 = v162;
    *(&v196 + 1) = v164;
    *v197 = v156 & 1;
    *&v197[8] = v167;
    *&v197[16] = v168;
    *&v197[24] = 0;
    v198 = 1;
    sub_24B3DF5A4(v162, v164, v156 & 1);

    sub_24B3DF5A4(v162, v164, v156 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B10, &qword_24B45A248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC8, &qword_24B45A200);
    sub_24B3DF1F0();
    sub_24B3DEDBC();
    sub_24B45871C();

    sub_24B3DF478(v195, v193, v191 & 1);

    sub_24B3DF478(v188, v187, v178 & 1);

    sub_24B3DF478(v181, v180, v179 & 1);

    sub_24B3DF478(v185, v184, v183 & 1);

    sub_24B3DF478(v162, v164, v156 & 1);

    sub_24B3DF478(v162, v164, v156 & 1);
LABEL_16:

    goto LABEL_17;
  }

  if (v24 != 2)
  {
    goto LABEL_15;
  }

  v196 = 0u;
  memset(v197, 0, 25);
  v197[25] = 1;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC8, &qword_24B45A200);
  sub_24B3DEDBC();
  sub_24B45871C();
  v81 = v199;
  v82 = v200;
  v83 = *(&v200 + 1);
  v84 = v201;
  v85 = HIBYTE(v202);
  v86 = v202;
  if (HIBYTE(v202))
  {
    v87 = 256;
  }

  else
  {
    v87 = 0;
  }

  v196 = v199;
  *v197 = v200;
  *&v197[16] = v201;
  *&v197[24] = v87 | v202;
  v198 = 0;
  sub_24B3DF5B4(v199, *(&v199 + 1), v200, *(&v200 + 1), v201, v202, SHIBYTE(v202));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B10, &qword_24B45A248);
  sub_24B3DF1F0();
  sub_24B45871C();

  sub_24B3DF604(v81, *(&v81 + 1), v82, v83, v84, v86, v85);
LABEL_17:
  result = *&v199;
  v170 = v200;
  v171 = v201;
  v172 = v202;
  v173 = v203;
  v174 = v190;
  *v190 = v199;
  v174[1] = v170;
  *(v174 + 4) = v171;
  *(v174 + 20) = v172;
  *(v174 + 42) = v173;
  return result;
}

uint64_t sub_24B3DE4F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
  sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8);
  sub_24B45851C();
  sub_24B458D6C();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24B3DE628()
{
  State = type metadata accessor for AwardProgressLoadState();
  v1 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
  sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8);
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_24B3DF2D4(v3);
  if (EnumCaseMultiPayload == 2)
  {
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v6 = sub_24B45847C();
    __swift_project_value_buffer(v6, qword_2810E3618);
    sub_24B3DE5D8();
    v7 = sub_24B45845C();
    v8 = sub_24B458F4C();
    sub_24B3DE5B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v9 = 136315138;
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      v10 = sub_24B3F17BC(v14, *(&v14 + 1), &v13);

      *(v9 + 4) = v10;
      _os_log_impl(&dword_24B3CE000, v7, v8, "[AwardProgressView] Load state was reset to idle for  %s", v9, 0xCu);
      v11 = v12;
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x24C2408A0](v11, -1, -1);
      MEMORY[0x24C2408A0](v9, -1, -1);
    }

    sub_24B45851C();
    v14 = 0u;
    v15 = 0u;
    v16 = 0x80;
    sub_24B458D6C();
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_24B3DE5B8();

  return swift_deallocObject();
}

unint64_t sub_24B3DE994()
{
  result = qword_2810E28B0;
  if (!qword_2810E28B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7A88, &qword_24B45A1A0);
    sub_24B3DEA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28B0);
  }

  return result;
}

unint64_t sub_24B3DEA20()
{
  result = qword_2810E27E8;
  if (!qword_2810E27E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7A98, &qword_24B45A1D0);
    sub_24B3DEAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E27E8);
  }

  return result;
}

unint64_t sub_24B3DEAA4()
{
  result = qword_2810E2838;
  if (!qword_2810E2838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AA0, &qword_24B45A1D8);
    swift_getOpaqueTypeConformance2();
    sub_24B3DEB60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2838);
  }

  return result;
}

unint64_t sub_24B3DEB60()
{
  result = qword_2810E2818;
  if (!qword_2810E2818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AA8, &qword_24B45A1E0);
    sub_24B3DEBEC();
    sub_24B3DF164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2818);
  }

  return result;
}

unint64_t sub_24B3DEBEC()
{
  result = qword_2810E2828;
  if (!qword_2810E2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AB0, &qword_24B45A1E8);
    sub_24B3DEC78();
    sub_24B3DEFD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2828);
  }

  return result;
}

unint64_t sub_24B3DEC78()
{
  result = qword_2810E2858;
  if (!qword_2810E2858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AB8, &qword_24B45A1F0);
    sub_24B3DED04();
    sub_24B3DEE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2858);
  }

  return result;
}

unint64_t sub_24B3DED04()
{
  result = qword_2810E2890;
  if (!qword_2810E2890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC0, &qword_24B45A1F8);
    sub_24B3DEDBC();
    sub_24B3DF11C(&qword_2810E27F8, &qword_27EFE7AD8, &qword_24B45A210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2890);
  }

  return result;
}

unint64_t sub_24B3DEDBC()
{
  result = qword_2810E28C8;
  if (!qword_2810E28C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC8, &qword_24B45A200);
    sub_24B3DF11C(&qword_2810E2800, &qword_27EFE7AD0, &qword_24B45A208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28C8);
  }

  return result;
}

unint64_t sub_24B3DEE74()
{
  result = qword_2810E28B8;
  if (!qword_2810E28B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AE0, &qword_24B45A218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AE8, &qword_24B45A220);
    sub_24B3DF11C(&qword_2810E28D8, &qword_27EFE7AE8, &qword_24B45A220);
    sub_24B3DEF84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28B8);
  }

  return result;
}

unint64_t sub_24B3DEF84()
{
  result = qword_2810E29F8[0];
  if (!qword_2810E29F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E29F8);
  }

  return result;
}

unint64_t sub_24B3DEFD8()
{
  result = qword_2810E2850;
  if (!qword_2810E2850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AF0, &qword_24B45A228);
    sub_24B3DED04();
    sub_24B3DF064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2850);
  }

  return result;
}

unint64_t sub_24B3DF064()
{
  result = qword_2810E2880;
  if (!qword_2810E2880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AF8, &qword_24B45A230);
    sub_24B3DED04();
    sub_24B3DF11C(&qword_2810E2808, &qword_27EFE7B00, &qword_24B45A238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2880);
  }

  return result;
}

uint64_t sub_24B3DF11C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B3DF164()
{
  result = qword_2810E2830;
  if (!qword_2810E2830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7B08, &qword_24B45A240);
    sub_24B3DF1F0();
    sub_24B3DEDBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2830);
  }

  return result;
}

unint64_t sub_24B3DF1F0()
{
  result = qword_2810E2868;
  if (!qword_2810E2868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7B10, &qword_24B45A248);
    sub_24B3DEDBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2868);
  }

  return result;
}

unint64_t sub_24B3DF27C()
{
  result = qword_2810E2D20;
  if (!qword_2810E2D20)
  {
    type metadata accessor for AwardProgressLoadState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2D20);
  }

  return result;
}

uint64_t sub_24B3DF2D4(uint64_t a1)
{
  State = type metadata accessor for AwardProgressLoadState();
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B3DF394(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B3DF3DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24B3DF468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24B3DF478(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B3DF488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B3DF4F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24B3DF550()
{
  result = qword_27EFE7B40;
  if (!qword_27EFE7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7B40);
  }

  return result;
}

uint64_t sub_24B3DF5A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B3DF5B4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_24B3DF5A4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24B3DF604(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_24B3DF478(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24B3DF654()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B3DF688()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_24B3DF6BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_24B3DF6E8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B3DF71C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B3DF750()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24B3DF784(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x6E61436863746566;
    v5 = 0xD000000000000016;
    if (a1 != 3)
    {
      v5 = 0xD00000000000002ALL;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000014;
    }

    if (!a1)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746F4E7473616F74;
    if (a1 != 9)
    {
      v1 = 0x6572507473616F74;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0xD000000000000010;
    if (a1 == 6)
    {
      v2 = 0xD000000000000016;
    }

    if (a1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B3DF914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B3E3470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B3DF948(uint64_t a1)
{
  v2 = sub_24B3E0D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DF984(uint64_t a1)
{
  v2 = sub_24B3E0D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DF9C0(uint64_t a1)
{
  v2 = sub_24B3E120C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DF9FC(uint64_t a1)
{
  v2 = sub_24B3E120C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFA38(uint64_t a1)
{
  v2 = sub_24B3E11B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFA74(uint64_t a1)
{
  v2 = sub_24B3E11B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFAB0(uint64_t a1)
{
  v2 = sub_24B3E1164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFAEC(uint64_t a1)
{
  v2 = sub_24B3E1164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFB34(uint64_t a1)
{
  v2 = sub_24B3E10BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFB70(uint64_t a1)
{
  v2 = sub_24B3E10BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFBAC(uint64_t a1)
{
  v2 = sub_24B3E1014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFBE8(uint64_t a1)
{
  v2 = sub_24B3E1014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFC24(uint64_t a1)
{
  v2 = sub_24B3E0F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFC60(uint64_t a1)
{
  v2 = sub_24B3E0F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFC9C(uint64_t a1)
{
  v2 = sub_24B3E0F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFCD8(uint64_t a1)
{
  v2 = sub_24B3E0F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFD14(uint64_t a1)
{
  v2 = sub_24B3E0E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFD50(uint64_t a1)
{
  v2 = sub_24B3E0E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B3DFE0C(uint64_t a1)
{
  v2 = sub_24B3E0E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFE48(uint64_t a1)
{
  v2 = sub_24B3E0E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFE84(uint64_t a1)
{
  v2 = sub_24B3E0DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFEC0(uint64_t a1)
{
  v2 = sub_24B3E0DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFEFC(uint64_t a1)
{
  v2 = sub_24B3E0D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFF38(uint64_t a1)
{
  v2 = sub_24B3E0D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastPresentationAction.encode(to:)(void *a1)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B48, &qword_24B45A420);
  v75 = *(v76 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v71 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B50, &qword_24B45A428);
  v72 = *(v73 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v71 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B58, &qword_24B45A430);
  v78 = *(v79 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B60, &qword_24B45A438);
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  MEMORY[0x28223BE20](v9);
  v94 = &v71 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B68, &qword_24B45A440);
  v81 = *(v82 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v71 - v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B70, &qword_24B45A448);
  v92 = *(v93 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B78, &qword_24B45A450);
  v98 = *(v16 - 8);
  v99 = v16;
  v17 = *(v98 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v71 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B80, &qword_24B45A458);
  v97 = *(v20 - 8);
  v21 = *(v97 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v71 - v22;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B88, &qword_24B45A460);
  v84 = *(v85 - 8);
  v24 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v83 = &v71 - v25;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B90, &qword_24B45A468);
  v87 = *(v88 - 8);
  v26 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v71 - v27;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B98, &qword_24B45A470);
  v89 = *(v90 - 8);
  v28 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v30 = &v71 - v29;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BA0, &qword_24B45A478);
  v105 = *(v107 - 8);
  v31 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v32 = v1[1];
  v106 = *v1;
  v34 = v1[2];
  v33 = v1[3];
  v103 = v32;
  v104 = v34;
  v102 = v33;
  v35 = v1[4];
  v100 = v1[5];
  v101 = v35;
  v36 = *(v1 + 48);
  v38 = a1[3];
  v37 = a1[4];
  v39 = a1;
  v41 = &v71 - v40;
  __swift_project_boxed_opaque_existential_1(v39, v38);
  sub_24B3E0D20();
  v115 = v41;
  sub_24B45928C();
  v42 = v36 >> 5;
  if (v36 >> 5 <= 1)
  {
    v49 = v97;
    v48 = v98;
    v50 = v99;
    if (v42)
    {
      LOBYTE(v108) = 4;
      sub_24B3E1014();
      v44 = v107;
      v61 = v115;
      sub_24B45910C();
      v108 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BE0, &qword_24B45A480);
      sub_24B3E2530(&qword_2810E2798, sub_24B3E1068);
      sub_24B45918C();
      (*(v48 + 8))(v19, v50);
      v46 = *(v105 + 8);
      v47 = v61;
    }

    else
    {
      v51 = v20;
      LOBYTE(v108) = 3;
      sub_24B3E10BC();
      v52 = v23;
      v44 = v107;
      v53 = v115;
      sub_24B45910C();
      v108 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BE8, &qword_24B45A488);
      sub_24B3E2608(&qword_2810E2778, sub_24B3E1110);
      sub_24B45918C();
      (*(v49 + 8))(v52, v51);
      v46 = *(v105 + 8);
      v47 = v53;
    }

    return v46(v47, v44);
  }

  if (v42 == 2)
  {
    LOBYTE(v108) = 5;
    sub_24B3E0F6C();
    v54 = v91;
    v55 = v107;
    v56 = v115;
    sub_24B45910C();
    v108 = v106;
    v109 = v103;
    v110 = v104;
    v111 = v102;
    v112 = v101;
    v113 = v100;
    v114 = v36 & 0x1F;
    sub_24B3E0FC0();
    v57 = v93;
    sub_24B45918C();
    (*(v92 + 8))(v54, v57);
    return (*(v105 + 8))(v56, v55);
  }

  if (v42 == 3)
  {
    LOBYTE(v108) = 7;
    sub_24B3E0E70();
    v43 = v94;
    v44 = v107;
    sub_24B45910C();
    v108 = v106;
    v109 = v103;
    LOBYTE(v110) = v104;
    sub_24B3E0EC4();
    v45 = v96;
    sub_24B45918C();
    (*(v95 + 8))(v43, v45);
    v46 = *(v105 + 8);
    v47 = v115;
    return v46(v47, v44);
  }

  if (v104 | v103 | v106 | v102 | v101 | v100 || v36 != 128)
  {
    v62 = v104 | v103 | v102 | v101 | v100;
    if (v36 == 128 && v106 == 1 && !v62)
    {
      LOBYTE(v108) = 1;
      sub_24B3E11B8();
      v63 = v86;
      v64 = v107;
      v65 = v115;
      sub_24B45910C();
      (*(v87 + 8))(v63, v88);
    }

    else if (v36 == 128 && v106 == 2 && !v62)
    {
      LOBYTE(v108) = 2;
      sub_24B3E1164();
      v66 = v83;
      v64 = v107;
      v65 = v115;
      sub_24B45910C();
      (*(v84 + 8))(v66, v85);
    }

    else if (v36 == 128 && v106 == 3 && !v62)
    {
      LOBYTE(v108) = 6;
      sub_24B3E0F18();
      v67 = v80;
      v64 = v107;
      v65 = v115;
      sub_24B45910C();
      (*(v81 + 8))(v67, v82);
    }

    else if (v36 == 128 && v106 == 4 && !v62)
    {
      LOBYTE(v108) = 8;
      sub_24B3E0E1C();
      v68 = v77;
      v64 = v107;
      v65 = v115;
      sub_24B45910C();
      (*(v78 + 8))(v68, v79);
    }

    else if (v36 == 128 && v106 == 5 && !v62)
    {
      LOBYTE(v108) = 9;
      sub_24B3E0DC8();
      v69 = v71;
      v64 = v107;
      v65 = v115;
      sub_24B45910C();
      (*(v72 + 8))(v69, v73);
    }

    else
    {
      LOBYTE(v108) = 10;
      sub_24B3E0D74();
      v70 = v74;
      v64 = v107;
      v65 = v115;
      sub_24B45910C();
      (*(v75 + 8))(v70, v76);
    }

    return (*(v105 + 8))(v65, v64);
  }

  else
  {
    LOBYTE(v108) = 0;
    sub_24B3E120C();
    v59 = v107;
    v60 = v115;
    sub_24B45910C();
    (*(v89 + 8))(v30, v90);
    return (*(v105 + 8))(v60, v59);
  }
}

unint64_t sub_24B3E0D20()
{
  result = qword_2810E2B08;
  if (!qword_2810E2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B08);
  }

  return result;
}

unint64_t sub_24B3E0D74()
{
  result = qword_27EFE7BA8;
  if (!qword_27EFE7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BA8);
  }

  return result;
}

unint64_t sub_24B3E0DC8()
{
  result = qword_2810E2B70;
  if (!qword_2810E2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B70);
  }

  return result;
}

unint64_t sub_24B3E0E1C()
{
  result = qword_27EFE7BB0;
  if (!qword_27EFE7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BB0);
  }

  return result;
}

unint64_t sub_24B3E0E70()
{
  result = qword_27EFE7BB8;
  if (!qword_27EFE7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BB8);
  }

  return result;
}

unint64_t sub_24B3E0EC4()
{
  result = qword_27EFE7BC0;
  if (!qword_27EFE7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BC0);
  }

  return result;
}

unint64_t sub_24B3E0F18()
{
  result = qword_27EFE7BC8;
  if (!qword_27EFE7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BC8);
  }

  return result;
}

unint64_t sub_24B3E0F6C()
{
  result = qword_27EFE7BD0;
  if (!qword_27EFE7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BD0);
  }

  return result;
}

unint64_t sub_24B3E0FC0()
{
  result = qword_27EFE7BD8;
  if (!qword_27EFE7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BD8);
  }

  return result;
}

unint64_t sub_24B3E1014()
{
  result = qword_2810E2AC0;
  if (!qword_2810E2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AC0);
  }

  return result;
}

unint64_t sub_24B3E1068()
{
  result = qword_2810E2BA8;
  if (!qword_2810E2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2BA8);
  }

  return result;
}

unint64_t sub_24B3E10BC()
{
  result = qword_2810E2AD8;
  if (!qword_2810E2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AD8);
  }

  return result;
}

unint64_t sub_24B3E1110()
{
  result = qword_2810E35C0;
  if (!qword_2810E35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35C0);
  }

  return result;
}

unint64_t sub_24B3E1164()
{
  result = qword_2810E2B88;
  if (!qword_2810E2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B88);
  }

  return result;
}

unint64_t sub_24B3E11B8()
{
  result = qword_2810E2AF0;
  if (!qword_2810E2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AF0);
  }

  return result;
}

unint64_t sub_24B3E120C()
{
  result = qword_2810E2BA0;
  if (!qword_2810E2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2BA0);
  }

  return result;
}

uint64_t AwardToastPresentationAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BF0, &qword_24B45A490);
  v4 = *(v3 - 8);
  v107 = v3;
  v108 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v113 = &v84 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BF8, &qword_24B45A498);
  v105 = *(v106 - 8);
  v7 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v117 = &v84 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C00, &qword_24B45A4A0);
  v102 = *(v103 - 8);
  v9 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v116 = &v84 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C08, &qword_24B45A4A8);
  v91 = *(v104 - 8);
  v11 = *(v91 + 64);
  MEMORY[0x28223BE20](v104);
  v112 = &v84 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C10, &qword_24B45A4B0);
  v99 = *(v101 - 8);
  v13 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v111 = &v84 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C18, &qword_24B45A4B8);
  v90 = *(v100 - 8);
  v15 = *(v90 + 64);
  MEMORY[0x28223BE20](v100);
  v115 = &v84 - v16;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C20, &qword_24B45A4C0);
  v89 = *(v98 - 8);
  v17 = *(v89 + 64);
  MEMORY[0x28223BE20](v98);
  v110 = &v84 - v18;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C28, &qword_24B45A4C8);
  v88 = *(v96 - 8);
  v19 = *(v88 + 64);
  MEMORY[0x28223BE20](v96);
  v109 = &v84 - v20;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C30, &qword_24B45A4D0);
  v97 = *(v93 - 8);
  v21 = *(v97 + 64);
  MEMORY[0x28223BE20](v93);
  v114 = &v84 - v22;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C38, &qword_24B45A4D8);
  v94 = *(v95 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v25 = &v84 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C40, &qword_24B45A4E0);
  v92 = *(v26 - 8);
  v27 = *(v92 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v84 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C48, &qword_24B45A4E8);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v84 - v33;
  v36 = a1[3];
  v35 = a1[4];
  v119 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_24B3E0D20();
  v37 = v126;
  sub_24B45927C();
  v126 = v37;
  if (v37)
  {
    goto LABEL_13;
  }

  v85 = v29;
  v84 = v26;
  v38 = v114;
  v39 = v115;
  v41 = v116;
  v40 = v117;
  v86 = v31;
  v42 = v118;
  v87 = v34;
  v43 = sub_24B4590FC();
  if (*(v43 + 16) != 1 || (v44 = *(v43 + 32), v44 == 11))
  {
    v56 = sub_24B458FFC();
    v57 = swift_allocError();
    v59 = v58;
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
    *v59 = &type metadata for AwardToastPresentationAction;
    v61 = v87;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x277D84160], v56);
    v126 = v57;
    swift_willThrow();
  }

  else
  {
    if (*(v43 + 32) > 4u)
    {
      v45 = v87;
      if (*(v43 + 32) <= 7u)
      {
        v46 = v42;
        v47 = v86;
        if (v44 == 5)
        {
          LOBYTE(v120) = 5;
          sub_24B3E0F6C();
          v73 = v126;
          sub_24B45905C();
          v126 = v73;
          if (!v73)
          {
            sub_24B3E24DC();
            v74 = v100;
            v75 = v126;
            sub_24B4590EC();
            v126 = v75;
            v76 = &v122;
            if (!v75)
            {
              (*(v90 + 8))(v39, v74);
              (*(v47 + 8))(v45, v30);
              swift_unknownObjectRelease();
              v55 = v120;
              v50 = v121;
              v51 = v122;
              v53 = v123;
              v52 = v124;
              v54 = v125 | 0x40;
              goto LABEL_54;
            }

            goto LABEL_44;
          }
        }

        else
        {
          v48 = v126;
          if (v44 == 6)
          {
            LOBYTE(v120) = 6;
            sub_24B3E0F18();
            v49 = v111;
            sub_24B45905C();
            v126 = v48;
            if (!v48)
            {
              (*(v99 + 8))(v49, v101);
              (*(v47 + 8))(v45, v30);
              swift_unknownObjectRelease();
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0uLL;
              v54 = 0x80;
              v55 = 3;
LABEL_54:
              v62 = v119;
              v64 = v46;
              goto LABEL_55;
            }

            goto LABEL_47;
          }

          LOBYTE(v120) = 7;
          sub_24B3E0E70();
          v39 = v112;
          sub_24B45905C();
          v126 = v48;
          if (!v48)
          {
            sub_24B3E2488();
            v74 = v104;
            v81 = v126;
            sub_24B4590EC();
            v126 = v81;
            v76 = &v123;
            if (!v81)
            {
              (*(v91 + 8))(v39, v74);
              (*(v47 + 8))(v45, v30);
              swift_unknownObjectRelease();
              v52 = 0;
              v55 = v120;
              v50 = v121;
              v53 = 0uLL;
              v54 = 96;
              v51 = v122;
              goto LABEL_54;
            }

LABEL_44:
            (*(*(v76 - 32) + 8))(v39, v74);
          }
        }

LABEL_47:
        (*(v47 + 8))(v45, v30);
        goto LABEL_12;
      }

      v64 = v42;
      v47 = v86;
      if (v44 == 8)
      {
        LOBYTE(v120) = 8;
        sub_24B3E0E1C();
        v77 = v126;
        sub_24B45905C();
        v126 = v77;
        if (v77)
        {
          goto LABEL_47;
        }

        (*(v102 + 8))(v41, v103);
        (*(v47 + 8))(v45, v30);
        swift_unknownObjectRelease();
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0uLL;
        v54 = 0x80;
        v55 = 4;
      }

      else if (v44 == 9)
      {
        LOBYTE(v120) = 9;
        sub_24B3E0DC8();
        v70 = v126;
        sub_24B45905C();
        v126 = v70;
        if (v70)
        {
          goto LABEL_47;
        }

        (*(v105 + 8))(v40, v106);
        (*(v47 + 8))(v45, v30);
        swift_unknownObjectRelease();
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0uLL;
        v54 = 0x80;
        v55 = 5;
      }

      else
      {
        LOBYTE(v120) = 10;
        sub_24B3E0D74();
        v82 = v113;
        v83 = v126;
        sub_24B45905C();
        v126 = v83;
        if (v83)
        {
          goto LABEL_47;
        }

        (*(v108 + 8))(v82, v107);
        (*(v47 + 8))(v45, v30);
        swift_unknownObjectRelease();
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0uLL;
        v54 = 0x80;
        v55 = 6;
      }

      goto LABEL_52;
    }

    if (*(v43 + 32) <= 1u)
    {
      v71 = v126;
      if (*(v43 + 32))
      {
        LOBYTE(v120) = 1;
        sub_24B3E11B8();
        v61 = v87;
        sub_24B45905C();
        v126 = v71;
        if (v71)
        {
          goto LABEL_11;
        }

        (*(v94 + 8))(v25, v95);
        (*(v86 + 8))(v61, v30);
        swift_unknownObjectRelease();
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0uLL;
        v54 = 0x80;
        v55 = 1;
      }

      else
      {
        LOBYTE(v120) = 0;
        sub_24B3E120C();
        v72 = v85;
        v61 = v87;
        sub_24B45905C();
        v126 = v71;
        if (v71)
        {
          goto LABEL_11;
        }

        (*(v92 + 8))(v72, v84);
        (*(v86 + 8))(v61, v30);
        swift_unknownObjectRelease();
        v55 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0uLL;
        v54 = 0x80;
      }

      v62 = v119;
      v64 = v42;
LABEL_55:
      *v64 = v55;
      *(v64 + 8) = v50;
      *(v64 + 16) = v51;
      *(v64 + 24) = v53;
      *(v64 + 40) = v52;
      *(v64 + 48) = v54;
      return __swift_destroy_boxed_opaque_existential_1(v62);
    }

    v64 = v42;
    v65 = v126;
    if (v44 != 2)
    {
      v117 = v43;
      v66 = v87;
      if (v44 == 3)
      {
        LOBYTE(v120) = 3;
        sub_24B3E10BC();
        v67 = v109;
        sub_24B45905C();
        v126 = v65;
        if (v65)
        {
LABEL_38:
          (*(v86 + 8))(v66, v30);
          goto LABEL_12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BE8, &qword_24B45A488);
        sub_24B3E2608(&qword_27EFE7C70, sub_24B3E2680);
        v68 = v96;
        v69 = v126;
        sub_24B4590EC();
        v126 = v69;
        if (v69)
        {
          (*(v88 + 8))(v67, v68);
          goto LABEL_38;
        }

        (*(v88 + 8))(v67, v68);
        (*(v86 + 8))(v66, v30);
        swift_unknownObjectRelease();
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v54 = 0;
        v55 = v120;
        v53 = 0uLL;
      }

      else
      {
        LOBYTE(v120) = 4;
        sub_24B3E1014();
        v78 = v110;
        sub_24B45905C();
        v126 = v65;
        if (v65)
        {
          goto LABEL_38;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BE0, &qword_24B45A480);
        sub_24B3E2530(&qword_27EFE7C60, sub_24B3E25B4);
        v79 = v98;
        v80 = v126;
        sub_24B4590EC();
        v126 = v80;
        if (v80)
        {
          (*(v89 + 8))(v78, v79);
          goto LABEL_38;
        }

        (*(v89 + 8))(v78, v79);
        (*(v86 + 8))(v66, v30);
        swift_unknownObjectRelease();
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v55 = v120;
        v53 = 0uLL;
        v54 = 32;
      }

LABEL_52:
      v62 = v119;
      goto LABEL_55;
    }

    LOBYTE(v120) = 2;
    sub_24B3E1164();
    v61 = v87;
    sub_24B45905C();
    v126 = v65;
    if (!v65)
    {
      (*(v97 + 8))(v38, v93);
      (*(v86 + 8))(v61, v30);
      swift_unknownObjectRelease();
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0uLL;
      v54 = 0x80;
      v55 = 2;
      goto LABEL_52;
    }
  }

LABEL_11:
  (*(v86 + 8))(v61, v30);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v62 = v119;
  return __swift_destroy_boxed_opaque_existential_1(v62);
}

unint64_t sub_24B3E2488()
{
  result = qword_27EFE7C50;
  if (!qword_27EFE7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C50);
  }

  return result;
}

unint64_t sub_24B3E24DC()
{
  result = qword_27EFE7C58;
  if (!qword_27EFE7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C58);
  }

  return result;
}

uint64_t sub_24B3E2530(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7BE0, &qword_24B45A480);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B3E25B4()
{
  result = qword_27EFE7C68;
  if (!qword_27EFE7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C68);
  }

  return result;
}

uint64_t sub_24B3E2608(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7BE8, &qword_24B45A488);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B3E2680()
{
  result = qword_27EFE7C78;
  if (!qword_27EFE7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessAwards14AwardToastKindO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_13FitnessAwards28AwardToastPresentationActionO(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B3E275C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 49))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 48) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 48) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24B3E27B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_24B3E282C(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 48) = *(result + 48) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwardToastPresentationAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AwardToastPresentationAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B3E2A7C()
{
  result = qword_27EFE7C80;
  if (!qword_27EFE7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C80);
  }

  return result;
}

unint64_t sub_24B3E2AD4()
{
  result = qword_27EFE7C88;
  if (!qword_27EFE7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C88);
  }

  return result;
}

unint64_t sub_24B3E2B2C()
{
  result = qword_27EFE7C90;
  if (!qword_27EFE7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C90);
  }

  return result;
}

unint64_t sub_24B3E2B84()
{
  result = qword_27EFE7C98;
  if (!qword_27EFE7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C98);
  }

  return result;
}

unint64_t sub_24B3E2BDC()
{
  result = qword_27EFE7CA0;
  if (!qword_27EFE7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CA0);
  }

  return result;
}

unint64_t sub_24B3E2C34()
{
  result = qword_2810E2B90;
  if (!qword_2810E2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B90);
  }

  return result;
}

unint64_t sub_24B3E2C8C()
{
  result = qword_2810E2B98;
  if (!qword_2810E2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B98);
  }

  return result;
}

unint64_t sub_24B3E2CE4()
{
  result = qword_2810E2AE0;
  if (!qword_2810E2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AE0);
  }

  return result;
}

unint64_t sub_24B3E2D3C()
{
  result = qword_2810E2AE8;
  if (!qword_2810E2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AE8);
  }

  return result;
}

unint64_t sub_24B3E2D94()
{
  result = qword_2810E2B78;
  if (!qword_2810E2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B78);
  }

  return result;
}

unint64_t sub_24B3E2DEC()
{
  result = qword_2810E2B80;
  if (!qword_2810E2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B80);
  }

  return result;
}

unint64_t sub_24B3E2E44()
{
  result = qword_2810E2AC8;
  if (!qword_2810E2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AC8);
  }

  return result;
}

unint64_t sub_24B3E2E9C()
{
  result = qword_2810E2AD0;
  if (!qword_2810E2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AD0);
  }

  return result;
}

unint64_t sub_24B3E2EF4()
{
  result = qword_2810E2AB0;
  if (!qword_2810E2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AB0);
  }

  return result;
}

unint64_t sub_24B3E2F4C()
{
  result = qword_2810E2AB8;
  if (!qword_2810E2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AB8);
  }

  return result;
}

unint64_t sub_24B3E2FA4()
{
  result = qword_2810E2B30;
  if (!qword_2810E2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B30);
  }

  return result;
}

unint64_t sub_24B3E2FFC()
{
  result = qword_2810E2B38;
  if (!qword_2810E2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B38);
  }

  return result;
}

unint64_t sub_24B3E3054()
{
  result = qword_2810E2B10;
  if (!qword_2810E2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B10);
  }

  return result;
}

unint64_t sub_24B3E30AC()
{
  result = qword_2810E2B18;
  if (!qword_2810E2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B18);
  }

  return result;
}

unint64_t sub_24B3E3104()
{
  result = qword_2810E2B40;
  if (!qword_2810E2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B40);
  }

  return result;
}

unint64_t sub_24B3E315C()
{
  result = qword_2810E2B48;
  if (!qword_2810E2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B48);
  }

  return result;
}

unint64_t sub_24B3E31B4()
{
  result = qword_2810E2B20;
  if (!qword_2810E2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B20);
  }

  return result;
}

unint64_t sub_24B3E320C()
{
  result = qword_2810E2B28;
  if (!qword_2810E2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B28);
  }

  return result;
}

unint64_t sub_24B3E3264()
{
  result = qword_2810E2B60;
  if (!qword_2810E2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B60);
  }

  return result;
}

unint64_t sub_24B3E32BC()
{
  result = qword_2810E2B68;
  if (!qword_2810E2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B68);
  }

  return result;
}

unint64_t sub_24B3E3314()
{
  result = qword_2810E2B50;
  if (!qword_2810E2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B50);
  }

  return result;
}

unint64_t sub_24B3E336C()
{
  result = qword_2810E2B58;
  if (!qword_2810E2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B58);
  }

  return result;
}

unint64_t sub_24B3E33C4()
{
  result = qword_2810E2AF8;
  if (!qword_2810E2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AF8);
  }

  return result;
}

unint64_t sub_24B3E341C()
{
  result = qword_2810E2B00;
  if (!qword_2810E2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B00);
  }

  return result;
}

uint64_t sub_24B3E3470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x800000024B466C20 == a2;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61436863746566 && a2 == 0xEF73657461646964 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B466C40 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B466C60 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000002ALL && 0x800000024B466C80 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B466CB0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B466CD0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B466CF0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B466D10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746F4E7473616F74 && a2 == 0xED0000646E756F46 || (sub_24B4591AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6572507473616F74 && a2 == 0xEE006465746E6573)
  {

    return 10;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

_OWORD *TVAwardHeaderLayout.init(awardImageLayout:descriptionMaxWidth:height:imageToTextSpacing:progressToDescriptionSpacing:titleToProgressSpacing:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = *result;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = a5;
  *(a2 + 40) = a6;
  *(a2 + 48) = a7;
  return result;
}

unint64_t sub_24B3E3840()
{
  v1 = *v0;
  v2 = 0x746867696568;
  v3 = 0xD000000000000016;
  if (v1 == 4)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B3E3904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B3E4664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B3E3938(uint64_t a1)
{
  v2 = sub_24B3E3C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3E3974(uint64_t a1)
{
  v2 = sub_24B3E3C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TVAwardHeaderLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7CA8, &qword_24B45B1F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v14 = v1[4];
  v13 = v1[5];
  v15 = v1[6];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3E3C4C();
  sub_24B45928C();
  v18[0] = v9;
  v18[1] = v10;
  v19 = 0;
  sub_24B3E3CA0();
  sub_24B45918C();
  if (!v2)
  {
    v18[0] = v12;
    v19 = 1;
    sub_24B3E3CF4();
    sub_24B45918C();
    v18[0] = v11;
    v19 = 2;
    sub_24B45918C();
    v18[0] = v14;
    v19 = 3;
    sub_24B45918C();
    v18[0] = v13;
    v19 = 4;
    sub_24B45918C();
    v18[0] = v15;
    v19 = 5;
    sub_24B45918C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B3E3C4C()
{
  result = qword_27EFE7CB0;
  if (!qword_27EFE7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CB0);
  }

  return result;
}

unint64_t sub_24B3E3CA0()
{
  result = qword_27EFE7CB8;
  if (!qword_27EFE7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CB8);
  }

  return result;
}

unint64_t sub_24B3E3CF4()
{
  result = qword_27EFE7CC0;
  if (!qword_27EFE7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CC0);
  }

  return result;
}

uint64_t TVAwardHeaderLayout.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7CC8, &qword_24B45B1F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3E3C4C();
  sub_24B45927C();
  if (!v2)
  {
    v20 = 0;
    sub_24B3E4034();
    sub_24B4590EC();
    v11 = v19[0];
    v12 = v19[1];
    v20 = 1;
    sub_24B3E4088();
    sub_24B4590EC();
    v13 = v19[0];
    v20 = 2;
    sub_24B4590EC();
    v14 = v19[0];
    v20 = 3;
    sub_24B4590EC();
    v15 = v19[0];
    v20 = 4;
    sub_24B4590EC();
    v17 = v19[0];
    v20 = 5;
    sub_24B4590EC();
    (*(v6 + 8))(v9, v5);
    v18 = v19[0];
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v14;
    a2[4] = v15;
    a2[5] = v17;
    a2[6] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B3E4034()
{
  result = qword_27EFE7CD0;
  if (!qword_27EFE7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CD0);
  }

  return result;
}

unint64_t sub_24B3E4088()
{
  result = qword_27EFE7CD8;
  if (!qword_27EFE7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CD8);
  }

  return result;
}

uint64_t TVAwardHeaderLayout.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_24B3DB298(*v0, v0[1]);
  if (v1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v1;
  }

  MEMORY[0x24C2403E0](*&v6);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x24C2403E0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x24C2403E0](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C2403E0](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  return MEMORY[0x24C2403E0](*&v10);
}

uint64_t TVAwardHeaderLayout.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  sub_24B45922C();
  TVAwardHeaderLayout.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B3E4210()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  sub_24B45922C();
  TVAwardHeaderLayout.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B3E4270()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  sub_24B45922C();
  TVAwardHeaderLayout.hash(into:)();
  return sub_24B45926C();
}

BOOL _s13FitnessAwards19TVAwardHeaderLayoutV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[3].f64[0] == a2[3].f64[0];
  }

  return result;
}

unint64_t sub_24B3E4334()
{
  result = qword_27EFE7CE0;
  if (!qword_27EFE7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CE0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B3E43A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B3E43C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TVAwardHeaderLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVAwardHeaderLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B3E4560()
{
  result = qword_27EFE7CE8;
  if (!qword_27EFE7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CE8);
  }

  return result;
}

unint64_t sub_24B3E45B8()
{
  result = qword_27EFE7CF0;
  if (!qword_27EFE7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CF0);
  }

  return result;
}

unint64_t sub_24B3E4610()
{
  result = qword_27EFE7CF8;
  if (!qword_27EFE7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CF8);
  }

  return result;
}

uint64_t sub_24B3E4664(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024B466D30 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B466D50 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B466D70 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024B466D90 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B466DB0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B3E4898()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DA0, qword_24B45B498);
  sub_24B3DF11C(&qword_27EFE7DA8, &qword_27EFE7DA0, qword_24B45B498);

  return sub_24B45851C();
}

uint64_t AwardHeaderView.init(store:awardImageViewBuilder:awardProgressViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *a5 = sub_24B3DB5A8;
  *(a5 + 8) = v9;
  *(a5 + 16) = 0;
  v10 = type metadata accessor for AwardHeaderView();
  v11 = *(v10 + 52);

  v13 = a3(v12);
  v14 = a5 + *(v10 + 56);
  a4(v13);
}

uint64_t AwardHeaderView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v64 = *(a1 - 1);
  v65 = *(v64 + 64);
  v3 = MEMORY[0x28223BE20](a1);
  v63 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v59 = *(v3 + 16);
  v5 = sub_24B4585BC();
  *&v69 = a1[4];
  v95 = v69;
  v96 = MEMORY[0x277CE01B0];
  v68 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v88 = v5;
  v89 = WitnessTable;
  v67 = MEMORY[0x277CDEBE0];
  swift_getOpaqueTypeMetadata2();
  v88 = sub_24B4585BC();
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D00, &qword_24B45B418);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v62 = a1;
  v8 = a1[3];
  v60 = a1[5];
  v93 = v8;
  v94 = v60;
  v58 = v8;
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v90 = sub_24B458F6C();
  OpaqueTypeMetadata2 = v7;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v55 = sub_24B458C1C();
  sub_24B4585BC();
  v88 = sub_24B4585BC();
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v90 = sub_24B458F6C();
  OpaqueTypeMetadata2 = v9;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v10 = sub_24B458C1C();
  v57 = v10;
  v56 = sub_24B4585BC();
  v50 = sub_24B45872C();
  v54 = swift_getWitnessTable();
  v88 = v10;
  v89 = v54;
  swift_getOpaqueTypeMetadata2();
  v88 = MEMORY[0x277CE1180];
  v86 = v69;
  v87 = MEMORY[0x277CDF678];
  v84 = swift_getWitnessTable();
  v85 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v89 = sub_24B458C1C();
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  v11 = sub_24B458C1C();
  v12 = swift_getWitnessTable();
  v93 = v11;
  v94 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v47 = sub_24B458BFC();
  sub_24B45872C();
  sub_24B45872C();
  v13 = sub_24B458B7C();
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v13);
  v48 = &v47 - v15;
  v16 = sub_24B4585BC();
  v52 = *(v16 - 8);
  v17 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v49 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = &v47 - v20;
  *&v21 = v59;
  *(&v21 + 1) = v58;
  v59 = v21;
  *&v22 = v69;
  v23 = v61;
  *(&v22 + 1) = v60;
  v69 = v22;
  v70 = v21;
  v71 = v22;
  v72 = v61;
  v24 = swift_getWitnessTable();
  v25 = v54;
  v82 = v54;
  v83 = MEMORY[0x277CDF678];
  v26 = swift_getWitnessTable();
  v80 = v24;
  v81 = v26;
  v27 = swift_getWitnessTable();
  v88 = v57;
  v89 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = swift_getWitnessTable();
  v78 = OpaqueTypeConformance2;
  v79 = v29;
  v30 = swift_getWitnessTable();
  v76 = v27;
  v77 = v30;
  v31 = swift_getWitnessTable();
  v32 = v48;
  sub_24B458B6C();
  v33 = v63;
  v34 = v64;
  v35 = v23;
  v36 = v62;
  (*(v64 + 16))(v63, v35, v62);
  v37 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v38 = swift_allocObject();
  v39 = v69;
  *(v38 + 16) = v59;
  *(v38 + 32) = v39;
  (*(v34 + 32))(v38 + v37, v33, v36);
  v75 = v31;
  v40 = swift_getWitnessTable();
  v41 = v49;
  sub_24B458AAC();

  (*(v53 + 8))(v32, v13);
  v73 = v40;
  v74 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v42 = v51;
  v43 = v52;
  v44 = *(v52 + 16);
  v44(v51, v41, v16);
  v45 = *(v43 + 8);
  v45(v41, v16);
  v44(v66, v42, v16);
  return (v45)(v42, v16);
}

uint64_t sub_24B3E5394@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v148 = a5;
  v156 = a4;
  v157 = a2;
  v146 = a3;
  v159 = a1;
  v152 = a6;
  v7 = MEMORY[0x277CE1180];
  v200 = MEMORY[0x277CE1180];
  sub_24B4585BC();
  v8 = sub_24B4585BC();
  v198 = a4;
  v199 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v197 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v201 = sub_24B458C1C();
  v202 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  v194 = sub_24B458C1C();
  v195 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v204 = v7;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v9 = sub_24B458BFC();
  v131 = *(v9 - 8);
  v10 = *(v131 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v136 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v135 = &v130 - v13;
  v200 = v8;
  v201 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v202 = sub_24B458F6C();
  OpaqueTypeMetadata2 = v14;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v15 = sub_24B458C1C();
  v16 = swift_getWitnessTable();
  v200 = v15;
  v201 = v16;
  v154 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v158 = v9;
  v18 = sub_24B45872C();
  v137 = *(v18 - 8);
  v19 = *(v137 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v141 = &v130 - v21;
  v134 = v17;
  v130 = *(v17 - 8);
  v22 = *(v130 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v133 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v132 = &v130 - v25;
  v155 = v15;
  v26 = sub_24B4585BC();
  v143 = *(v26 - 8);
  v27 = *(v143 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v140 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v139 = &v130 - v30;
  v31 = sub_24B4585BC();
  v192 = v156;
  v193 = MEMORY[0x277CE01B0];
  v32 = swift_getWitnessTable();
  v200 = v31;
  v201 = v32;
  swift_getOpaqueTypeMetadata2();
  v200 = sub_24B4585BC();
  v201 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D00, &qword_24B45B418);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v34 = v146;
  v35 = v148;
  v194 = v146;
  v195 = v148;
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v202 = sub_24B458F6C();
  OpaqueTypeMetadata2 = v33;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v36 = sub_24B458C1C();
  v153 = v26;
  v37 = sub_24B45872C();
  v142 = *(v37 - 8);
  v38 = *(v142 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v147 = &v130 - v40;
  v138 = *(v36 - 8);
  v41 = *(v138 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v130 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v145 = &v130 - v45;
  v46 = type metadata accessor for AwardHeaderLayout();
  v47 = *(*(v46 - 1) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v130 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v18;
  v50 = sub_24B45872C();
  v149 = *(v50 - 8);
  v150 = v50;
  v51 = *(v149 + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v130 - v52;
  v200 = v157;
  v201 = v34;
  v202 = v156;
  OpaqueTypeMetadata2 = v35;
  v54 = type metadata accessor for AwardHeaderView();
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  LODWORD(v33) = v49[v46[11]];
  sub_24B3EC714(v49);
  v144 = v37;
  if (v33 == 1)
  {
    sub_24B3E66C8(v54, v44);
    v55 = swift_getWitnessTable();
    v56 = v138;
    v57 = *(v138 + 16);
    v58 = v145;
    v57(v145, v44, v36);
    v159 = *(v56 + 8);
    v159(v44, v36);
    v57(v44, v58, v36);
    v164 = v154;
    v59 = v154;
    v165 = MEMORY[0x277CDF678];
    v60 = swift_getWitnessTable();
    v61 = v147;
    sub_24B437B98(v44, v36);
    v162 = v55;
    v163 = v60;
    v62 = v144;
    v157 = swift_getWitnessTable();
    v200 = v155;
    v201 = v59;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v64 = swift_getWitnessTable();
    v160 = OpaqueTypeConformance2;
    v161 = v64;
    swift_getWitnessTable();
    sub_24B437B98(v61, v62);
    (*(v142 + 8))(v61, v62);
    v65 = v44;
    v66 = v159;
    v159(v65, v36);
    v66(v145, v36);
    v67 = v154;
    v68 = v155;
  }

  else
  {
    v156 = v53;
    v157 = v36;
    v69 = v154;
    v70 = MEMORY[0x277CDF678];
    sub_24B3E4898();
    swift_getKeyPath();
    sub_24B458D5C();

    v71 = v49[v46[12]];
    sub_24B3EC714(v49);
    if (v71 == 1)
    {
      v72 = v140;
      sub_24B3E69F4(v54, v140);
      v73 = v70;
      v74 = v69;
      v170 = v69;
      v171 = v73;
      v75 = v153;
      v76 = swift_getWitnessTable();
      v77 = v143;
      v78 = *(v143 + 16);
      v79 = v139;
      v78(v139, v72, v75);
      v80 = *(v77 + 8);
      v143 = v77 + 8;
      v159 = v80;
      v80(v72, v75);
      v78(v72, v79, v75);
      v81 = v157;
      v82 = swift_getWitnessTable();
      sub_24B437C90(v72, v81, v75);
      v168 = v82;
      v169 = v76;
      v83 = v144;
      swift_getWitnessTable();
      v68 = v155;
      v200 = v155;
      v201 = v74;
      v84 = v74;
      v85 = swift_getOpaqueTypeConformance2();
      v86 = swift_getWitnessTable();
      v166 = v85;
      v167 = v86;
      swift_getWitnessTable();
      v53 = v156;
      v87 = v147;
      v88 = v75;
      sub_24B437B98(v147, v83);
      (*(v142 + 8))(v87, v83);
      v89 = v75;
      v90 = v159;
      v159(v140, v89);
      v90(v139, v88);
      v67 = v84;
    }

    else
    {
      sub_24B3E4898();
      swift_getKeyPath();
      sub_24B458D5C();

      v91 = v49[v46[10]];
      sub_24B3EC714(v49);
      v92 = v158;
      if (v91 == 1)
      {
        v93 = v133;
        sub_24B3E6D68(v54, v133, 0.6);
        v200 = v155;
        v201 = v69;
        v94 = v69;
        v148 = swift_getOpaqueTypeConformance2();
        v95 = v130;
        v96 = *(v130 + 16);
        v97 = v132;
        v98 = v134;
        v96(v132, v93, v134);
        v159 = *(v95 + 8);
        v159(v93, v98);
        v96(v93, v97, v98);
        v99 = swift_getWitnessTable();
        sub_24B437B98(v93, v98);
        v100 = swift_getWitnessTable();
        v176 = v94;
        v177 = MEMORY[0x277CDF678];
        v101 = swift_getWitnessTable();
        v174 = v100;
        v175 = v101;
        v102 = v144;
        swift_getWitnessTable();
        v172 = v148;
        v173 = v99;
        v103 = v151;
        swift_getWitnessTable();
        v104 = v156;
        v105 = v141;
        sub_24B437C90(v141, v102, v103);
        (*(v137 + 8))(v105, v103);
        v106 = v159;
        v159(v133, v98);
        v106(v132, v98);
        v53 = v104;
        v67 = v154;
      }

      else
      {
        v107 = v136;
        sub_24B3E70F4(v54, v136);
        v108 = swift_getWitnessTable();
        v109 = v131;
        v110 = *(v131 + 16);
        v111 = v135;
        v110(v135, v107, v92);
        v159 = *(v109 + 8);
        v159(v107, v92);
        v110(v107, v111, v92);
        v200 = v155;
        v201 = v69;
        v112 = swift_getOpaqueTypeConformance2();
        sub_24B437C90(v107, v134, v92);
        v113 = swift_getWitnessTable();
        v190 = v69;
        v191 = MEMORY[0x277CDF678];
        v114 = v92;
        v115 = swift_getWitnessTable();
        v188 = v113;
        v189 = v115;
        v116 = v144;
        swift_getWitnessTable();
        v186 = v112;
        v187 = v108;
        v117 = v151;
        swift_getWitnessTable();
        v118 = v156;
        v119 = v141;
        sub_24B437C90(v141, v116, v117);
        (*(v137 + 8))(v119, v117);
        v120 = v159;
        v159(v136, v114);
        v120(v135, v114);
        v67 = v154;
        v53 = v118;
      }

      v68 = v155;
    }
  }

  v121 = swift_getWitnessTable();
  v184 = v67;
  v185 = MEMORY[0x277CDF678];
  v122 = swift_getWitnessTable();
  v182 = v121;
  v183 = v122;
  v123 = swift_getWitnessTable();
  v200 = v68;
  v201 = v67;
  v124 = swift_getOpaqueTypeConformance2();
  v125 = swift_getWitnessTable();
  v180 = v124;
  v181 = v125;
  v126 = swift_getWitnessTable();
  v178 = v123;
  v179 = v126;
  v127 = v150;
  swift_getWitnessTable();
  v128 = v149;
  (*(v149 + 16))(v152, v53, v127);
  return (*(v128 + 8))(v53, v127);
}

uint64_t sub_24B3E66C8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = a1[2];
  sub_24B4585BC();
  v28 = a1[4];
  v4 = v28;
  v29 = MEMORY[0x277CE01B0];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v30 = sub_24B4585BC();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D00, &qword_24B45B418);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v7 = a1[5];
  v26 = a1[3];
  v6 = v26;
  v27 = v7;
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v32 = sub_24B458F6C();
  v33 = v5;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v8 = sub_24B458C1C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  *&v16 = v3;
  *(&v16 + 1) = v6;
  *&v17 = v4;
  *(&v17 + 1) = v7;
  v23 = v16;
  v24 = v17;
  v25 = v21;
  sub_24B4586EC();
  sub_24B458C0C();
  swift_getWitnessTable();
  v18 = v9[2];
  v18(v15, v13, v8);
  v19 = v9[1];
  v19(v13, v8);
  v18(v22, v15, v8);
  return (v19)(v15, v8);
}

uint64_t sub_24B3E69F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v3 = *(a1 + 16);
  sub_24B4585BC();
  v26 = sub_24B4585BC();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v5 = *(a1 + 24);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v28 = sub_24B458F6C();
  v29 = v4;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v6 = sub_24B458C1C();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = sub_24B4585BC();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  sub_24B3E8E40(a1, v9);
  sub_24B458CBC();
  WitnessTable = swift_getWitnessTable();
  sub_24B458A4C();
  (*(v22 + 8))(v9, v6);
  v24 = WitnessTable;
  v25 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  v19 = v11[2];
  v19(v17, v15, v10);
  v20 = v11[1];
  v20(v15, v10);
  v19(v23, v17, v10);
  return (v20)(v17, v10);
}

uint64_t sub_24B3E6D68@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v26 = a2;
  v5 = *(a1 + 16);
  sub_24B4585BC();
  v27 = sub_24B4585BC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v7 = *(a1 + 24);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v29 = sub_24B458F6C();
  v30 = v6;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v8 = sub_24B458C1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  WitnessTable = swift_getWitnessTable();
  v27 = v8;
  v28 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  sub_24B3E8E40(a1, v12);
  sub_24B45879C();
  *(swift_allocObject() + 16) = a3;
  sub_24B458CBC();
  sub_24B458A2C();

  (*(v9 + 8))(v12, v8);
  v22 = v15[2];
  v22(v21, v19, OpaqueTypeMetadata2);
  v23 = v15[1];
  v23(v19, OpaqueTypeMetadata2);
  v22(v26, v21, OpaqueTypeMetadata2);
  return (v23)(v21, OpaqueTypeMetadata2);
}