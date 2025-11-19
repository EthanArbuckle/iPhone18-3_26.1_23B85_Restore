uint64_t sub_216D52DE0(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECF8);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  FriendsPageLockup = type metadata accessor for SocialOnboardingFindFriendsPageLockup();
  v74 = *(FriendsPageLockup - 8);
  MEMORY[0x28223BE20](FriendsPageLockup);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937DD4(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937DD4(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CABECF8);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937DD4(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937DD4(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(FriendsPageLockup + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED10);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D537BC(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED38);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for SocialProfileHorizontalLockup();
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937D54(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937D54(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CABED38);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937D54(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937D54(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED50);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D54198(uint64_t a1, uint64_t a2)
{
  *&v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9868);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v71[-v4];
  v5 = type metadata accessor for TextListComponentModel();
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v84 = &v71[-v8];
  MEMORY[0x28223BE20](v9);
  v74 = &v71[-v10];
  MEMORY[0x28223BE20](v11);
  v79 = &v71[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v71[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v71[-v17];
  v76 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v37 = *(v72 + 16);
    if (v37)
    {
      v38 = v72 + 32;
      v39 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v72 = v21;
      v40 = v73;
      v41 = v76;
      while (1)
      {
        sub_216DD9F00();
        if (v83)
        {
          v78 = v39;
          v42 = v82[0];
          v80 = v82[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v43 = sub_216E68120(v81), (v44 & 1) != 0))
          {
            v45 = v43;

            v46 = *(v77 + 72);
            v47 = v74;
            sub_216DDA0A0(v20[7] + v46 * v45, v74);
            sub_216788110(v81);
            sub_216DDA0A0(v47, v75);
            v39 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937CD4(0, *(v39 + 16) + 1, 1, v39);
              v39 = v67;
            }

            v49 = *(v39 + 16);
            v48 = *(v39 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_216937CD4(v48 > 1, v49 + 1, 1, v39);
              v39 = v68;
            }

            sub_216DDA050();
            *(v39 + 16) = v49 + 1;
            sub_216DDA0F4(v75, v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + v49 * v46);
          }

          else
          {
            sub_216788110(v81);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v53 = sub_217007CA4();
            __swift_project_value_buffer(v53, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v54 = sub_217007C84();
            v55 = sub_21700ED84();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v81[0] = v57;
              *v56 = v72;
              v58 = sub_2166A85FC(v42, *(&v42 + 1), v81);

              *(v56 + 4) = v58;
              *(v56 + 12) = 2080;
              v59 = sub_21700E394();
              v61 = v60;
              swift_bridgeObjectRelease_n();
              v62 = sub_2166A85FC(v59, v61, v81);

              *(v56 + 14) = v62;
              _os_log_impl(&dword_216679000, v54, v55, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v56, 0x16u);
              swift_arrayDestroy();
              v63 = v57;
              v41 = v76;
              MEMORY[0x21CEA1440](v63, -1, -1);
              v64 = v56;
              v40 = v73;
              MEMORY[0x21CEA1440](v64, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v41 = v76;
            }

            v39 = v78;
          }
        }

        else
        {
          sub_2166A0F18(v82, v81);
          sub_216681AA4(v81, &v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
            sub_2166997CC(v40, &qword_27CAB9868);
            sub_2169BB698();
            swift_allocError();
            *v69 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v81);
            return v39;
          }

          __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
          v50 = v79;
          sub_216DDA0F4(v40, v79);
          sub_216DDA0A0(v50, v84);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937CD4(0, *(v39 + 16) + 1, 1, v39);
            v39 = v65;
          }

          v52 = *(v39 + 16);
          v51 = *(v39 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_216937CD4(v51 > 1, v52 + 1, 1, v39);
            v39 = v66;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v81);
          *(v39 + 16) = v52 + 1;
          sub_216DDA0F4(v84, v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v52);
        }

        v38 += 48;
        if (!--v37)
        {
          goto LABEL_40;
        }
      }
    }

    v39 = MEMORY[0x277D84F90];
LABEL_40:

    return v39;
  }

  v23 = a1 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v24 = *(v77 + 72);
  v78 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(v18, v82);
    v25 = v15;
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v81[0] = v20;
    v26 = sub_216E68120(v82);
    if (__OFADD__(v20[2], (v27 & 1) == 0))
    {
      break;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED88);
    if (sub_21700F554())
    {
      v30 = sub_216E68120(v82);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_45;
      }

      v28 = v30;
    }

    v20 = v81[0];
    if (v29)
    {
      v32 = *(v81[0] + 56) + v28 * v24;
      v15 = v25;
      sub_2166CE10C(v25, v32);
      sub_216788110(v82);
      v18 = v78;
      sub_216DDA050();
    }

    else
    {
      *(v81[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
      sub_216788294(v82, v20[6] + 40 * v28);
      v33 = v20[7] + v28 * v24;
      v15 = v25;
      sub_216DDA0F4(v25, v33);
      sub_216788110(v82);
      v18 = v78;
      sub_216DDA050();
      v34 = v20[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_44;
      }

      v20[2] = v36;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D54B34(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED90);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for TopSearchLockup();
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937C94(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937C94(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CABED90);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937C94(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937C94(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDA8);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D55510(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDD0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for VerticalVideoLockup();
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937C54(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937C54(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
            sub_2166997CC(v37, &qword_27CABEDD0);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937C54(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937C54(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDE8);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D55EEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  OUTLINED_FUNCTION_181();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21701D820;
  OUTLINED_FUNCTION_0_1();
  v1 = OUTLINED_FUNCTION_74_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_65_0();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = &off_282914240;
  swift_unknownObjectWeakAssign();
  *(v0 + 32) = v2;
  return v0;
}

void sub_216D55F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v121 = a2;
  v122 = a3;
  v120 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  MEMORY[0x28223BE20](v5 - 8);
  v124 = &v91 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A30);
  v119 = *(v123 - 1);
  MEMORY[0x28223BE20](v123);
  v118 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A38);
  v116 = *(v8 - 8);
  v117 = v8;
  MEMORY[0x28223BE20](v8);
  v115 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E8);
  v113 = *(v10 - 8);
  v114 = v10;
  MEMORY[0x28223BE20](v10);
  v112 = &v91 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180);
  v12 = MEMORY[0x28223BE20](v111);
  v110 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v109 = &v91 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E0);
  v125 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v91 - v15;
  v106 = type metadata accessor for BackgroundConfiguration(0);
  v16 = MEMORY[0x28223BE20](v106);
  v105 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v104 = &v91 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v91 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D8);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v91 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  v21 = MEMORY[0x28223BE20](v97);
  v96 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v95 = &v91 - v23;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v91 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A40);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v91 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D28);
  v30 = MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v91 - v31;
  v33 = *(*v3 + 96);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
  sub_216DD9F00();
  sub_217007DA4();
  sub_2166997CC(v32, &qword_27CAC6D28);
  (*(v26 + 32))(v4 + v33, v28, v25);
  v35 = *(*v4 + 104);
  aBlock = 0;
  v127 = 0;
  v128[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660);
  v36 = v92;
  sub_217007DA4();
  (*(v93 + 32))(v4 + v35, v36, v94);
  v37 = *(*v4 + 112);
  v38 = type metadata accessor for ToolbarConfiguration(0);
  v39 = v95;
  __swift_storeEnumTagSinglePayload(v95, 1, 1, v38);
  sub_216DD9F00();
  v40 = v98;
  sub_217007DA4();
  sub_2166997CC(v39, &qword_27CAB7930);
  (*(v99 + 32))(v4 + v37, v40, v100);
  v41 = *(*v4 + 128);
  LOBYTE(aBlock) = 0;
  v42 = v101;
  sub_217007DA4();
  v43 = *(v102 + 32);
  v44 = v103;
  v43(v4 + v41, v42, v103);
  *(v4 + *(*v4 + 136)) = 0;
  v45 = *(*v4 + 144);
  type metadata accessor for AutoUpdatingPageMapper();
  swift_allocObject();
  *(v4 + v45) = sub_216E593C8();
  v46 = *(*v4 + 184);
  LOBYTE(aBlock) = 1;
  sub_217007DA4();
  v43(v4 + v46, v42, v44);
  v47 = *(*v4 + 192);
  v48 = v104;
  swift_storeEnumTagMultiPayload();
  v49 = v105;
  sub_216DDA0A0(v48, v105);
  v50 = v107;
  sub_217007DA4();
  sub_216DDA050();
  v51 = *(v125 + 32);
  v125 += 32;
  v52 = v4 + v47;
  v53 = v50;
  v54 = v50;
  v55 = v108;
  v51(v52, v53, v108);
  v56 = *(*v4 + 200);
  swift_storeEnumTagMultiPayload();
  sub_216DDA0A0(v48, v49);
  sub_217007DA4();
  sub_216DDA050();
  v51(v4 + v56, v54, v55);
  v57 = *(*v4 + 208);
  v58 = sub_2170080D4();
  v59 = v109;
  __swift_storeEnumTagSinglePayload(v109, 1, 1, v58);
  sub_216DD9F00();
  v60 = v112;
  sub_217007DA4();
  sub_2166997CC(v59, &qword_27CAB9180);
  (*(v113 + 32))(v4 + v57, v60, v114);
  v61 = *(*v4 + 216);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668);
  __swift_storeEnumTagSinglePayload(v4 + v61, 1, 1, v62);
  *(v4 + *(*v4 + 240)) = 0;
  v63 = *(*v4 + 248);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  __swift_storeEnumTagSinglePayload(v4 + v63, 1, 1, v125);
  *(v4 + *(*v4 + 256)) = MEMORY[0x277D84F90];
  v64 = *(*v4 + 264);
  type metadata accessor for AsyncQueue();
  swift_allocObject();
  *(v4 + v64) = sub_216CA9FD4();
  *(v4 + *(*v4 + 272)) = 0;
  swift_weakInit();
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 304) + 8) = 0;
  swift_unknownObjectWeakInit();
  v65 = *(*v4 + 312);
  type metadata accessor for MusicPageMetricsProvider();
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v68 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
  *(v4 + v65) = v66;
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 160)) = v122;
  *(v4 + *(*v4 + 224)) = v120;
  sub_216DD9F00();
  sub_21700DAB4();
  v69 = type metadata accessor for ObjectGraph();

  sub_21700E094();
  *(v4 + *(*v4 + 232)) = aBlock;
  sub_21700DDB4();

  v114 = v69;
  sub_21700E094();

  *(v4 + *(*v4 + 120)) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A48);
  swift_allocObject();

  *(v4 + *(*v4 + 168)) = sub_216CF258C(v70);
  type metadata accessor for SocialBadgingRequestCoordinator();

  sub_21700E094();

  *(v4 + *(*v4 + 176)) = aBlock;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A50);
  sub_2166D9530(&qword_280E2A330, &qword_27CAC8A50);

  sub_21700D1D4();
  v71 = v115;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v116 + 8))(v71, v117);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A58);
  sub_2166D9530(&qword_280E2A318, &qword_27CAC8A58);
  sub_21700D1D4();
  v72 = v118;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v119 + 8))(v72, v123);
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  v73 = v124;
  v119 = aBlock;
  sub_2166B5494(v4, &unk_282935188, &unk_2829351B0, sub_216DD3668, sub_2166EFCD4, v74, v75, v76, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v125);
  swift_beginAccess();
  sub_216DD9404();
  swift_endAccess();
  v77 = sub_216D55EEC();
  v78 = sub_2166BF3C8(v77);
  v79 = 0;
  v80 = *(*v4 + 256);
  v124 = (v77 & 0xFFFFFFFFFFFFFF8);
  v125 = v77 & 0xC000000000000001;
  v123 = v128;
  while (1)
  {
    if (v78 == v79)
    {

      sub_2166997CC(v121, &qword_27CAB6AB8);
      return;
    }

    if (v125)
    {
      v81 = MEMORY[0x21CEA0220](v79, v77);
    }

    else
    {
      if (v79 >= *(v124 + 2))
      {
        goto LABEL_16;
      }

      v81 = *(v77 + 8 * v79 + 32);
    }

    if (__OFADD__(v79, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v83 = *(Strong + 16);
      swift_unknownObjectRelease();
      v84 = [objc_opt_self() defaultCenter];
      v85 = swift_allocObject();
      swift_weakInit();
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      *(v86 + 24) = v81;
      v128[2] = sub_216DD3590;
      v128[3] = v86;
      aBlock = MEMORY[0x277D85DD0];
      v127 = 1107296256;
      v128[0] = sub_216D5D040;
      v128[1] = &block_descriptor_37;
      v87 = _Block_copy(&aBlock);
      v88 = v83;

      v89 = [v84 addObserverForName:v88 object:0 queue:0 usingBlock:v87];
      _Block_release(v87);

      v90 = swift_beginAccess();
      MEMORY[0x21CE9F610](v90);
      if (*((*(v4 + v80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      swift_endAccess();
    }

    else
    {
    }

    ++v79;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_216D57488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v121 = a2;
  v122 = a3;
  v120 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  MEMORY[0x28223BE20](v5 - 8);
  v124 = &v91 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9400);
  v119 = *(v123 - 1);
  MEMORY[0x28223BE20](v123);
  v118 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9408);
  v116 = *(v8 - 8);
  v117 = v8;
  MEMORY[0x28223BE20](v8);
  v115 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E8);
  v113 = *(v10 - 8);
  v114 = v10;
  MEMORY[0x28223BE20](v10);
  v112 = &v91 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180);
  MEMORY[0x28223BE20](v111);
  v110 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v109 = &v91 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E0);
  v125 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v91 - v15;
  v106 = type metadata accessor for BackgroundConfiguration(0);
  MEMORY[0x28223BE20](v106);
  v105 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v104 = &v91 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v91 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D8);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v91 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  MEMORY[0x28223BE20](v97);
  v96 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v91 - v23;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v91 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9138);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v91 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91F0);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v91 - v31;
  v33 = *(*v3 + 96);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
  sub_216DD9F00();
  sub_217007DA4();
  sub_2166997CC(v32, &qword_27CAB91F0);
  (*(v26 + 32))(v4 + v33, v28, v25);
  v35 = *(*v4 + 104);
  aBlock = 0;
  v127 = 0;
  v128[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660);
  v36 = v92;
  sub_217007DA4();
  (*(v93 + 32))(v4 + v35, v36, v94);
  v37 = *(*v4 + 112);
  v38 = type metadata accessor for ToolbarConfiguration(0);
  v39 = v95;
  __swift_storeEnumTagSinglePayload(v95, 1, 1, v38);
  sub_216DD9F00();
  v40 = v98;
  sub_217007DA4();
  sub_2166997CC(v39, &qword_27CAB7930);
  (*(v99 + 32))(v4 + v37, v40, v100);
  v41 = *(*v4 + 128);
  LOBYTE(aBlock) = 0;
  v42 = v101;
  sub_217007DA4();
  v43 = *(v102 + 32);
  v44 = v103;
  v43(v4 + v41, v42, v103);
  *(v4 + *(*v4 + 136)) = 0;
  v45 = *(*v4 + 144);
  type metadata accessor for AutoUpdatingPageMapper();
  swift_allocObject();
  *(v4 + v45) = sub_216E593C8();
  v46 = *(*v4 + 184);
  LOBYTE(aBlock) = 1;
  sub_217007DA4();
  v43(v4 + v46, v42, v44);
  v47 = *(*v4 + 192);
  v48 = v104;
  swift_storeEnumTagMultiPayload();
  v49 = v105;
  sub_216DDA0A0(v48, v105);
  v50 = v107;
  sub_217007DA4();
  sub_216DDA050();
  v51 = *(v125 + 32);
  v125 += 32;
  v52 = v4 + v47;
  v53 = v50;
  v54 = v50;
  v55 = v108;
  v51(v52, v53, v108);
  v56 = *(*v4 + 200);
  swift_storeEnumTagMultiPayload();
  sub_216DDA0A0(v48, v49);
  sub_217007DA4();
  sub_216DDA050();
  v51(v4 + v56, v54, v55);
  v57 = *(*v4 + 208);
  v58 = sub_2170080D4();
  v59 = v109;
  __swift_storeEnumTagSinglePayload(v109, 1, 1, v58);
  sub_216DD9F00();
  v60 = v112;
  sub_217007DA4();
  sub_2166997CC(v59, &qword_27CAB9180);
  (*(v113 + 32))(v4 + v57, v60, v114);
  v61 = *(*v4 + 216);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0);
  __swift_storeEnumTagSinglePayload(v4 + v61, 1, 1, v62);
  *(v4 + *(*v4 + 240)) = 0;
  v63 = *(*v4 + 248);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  __swift_storeEnumTagSinglePayload(v4 + v63, 1, 1, v125);
  *(v4 + *(*v4 + 256)) = MEMORY[0x277D84F90];
  v64 = *(*v4 + 264);
  type metadata accessor for AsyncQueue();
  swift_allocObject();
  *(v4 + v64) = sub_216CA9FD4();
  *(v4 + *(*v4 + 272)) = 0;
  swift_weakInit();
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 304) + 8) = 0;
  swift_unknownObjectWeakInit();
  v65 = *(*v4 + 312);
  type metadata accessor for MusicPageMetricsProvider();
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v68 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
  *(v4 + v65) = v66;
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 160)) = v122;
  *(v4 + *(*v4 + 224)) = v120;
  sub_216DD9F00();
  sub_21700DAB4();
  v69 = type metadata accessor for ObjectGraph();

  sub_21700E094();
  *(v4 + *(*v4 + 232)) = aBlock;
  sub_21700DDB4();

  v114 = v69;
  sub_21700E094();

  *(v4 + *(*v4 + 120)) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9410);
  swift_allocObject();

  *(v4 + *(*v4 + 168)) = sub_216CF2704(v70);
  type metadata accessor for SocialBadgingRequestCoordinator();

  sub_21700E094();

  *(v4 + *(*v4 + 176)) = aBlock;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9418);
  sub_2166D9530(&qword_27CAC9420, &qword_27CAC9418);

  sub_21700D1D4();
  v71 = v115;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v116 + 8))(v71, v117);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9428);
  sub_2166D9530(&qword_27CAC9430, &qword_27CAC9428);
  sub_21700D1D4();
  v72 = v118;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v119 + 8))(v72, v123);
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  v73 = v124;
  v119 = aBlock;
  sub_2166B5494(v4, &unk_282936498, &unk_2829364C0, sub_216DD8090, sub_2168E4C64, v74, v75, v76, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v125);
  swift_beginAccess();
  sub_216DD9404();
  swift_endAccess();
  v77 = sub_216D55EEC();
  v78 = sub_2166BF3C8(v77);
  v79 = 0;
  v80 = *(*v4 + 256);
  v124 = (v77 & 0xFFFFFFFFFFFFFF8);
  v125 = v77 & 0xC000000000000001;
  v123 = v128;
  while (1)
  {
    if (v78 == v79)
    {

      sub_2166997CC(v121, &qword_27CAC5B38);
      return;
    }

    if (v125)
    {
      v81 = MEMORY[0x21CEA0220](v79, v77);
    }

    else
    {
      if (v79 >= *(v124 + 2))
      {
        goto LABEL_16;
      }

      v81 = *(v77 + 8 * v79 + 32);
    }

    if (__OFADD__(v79, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v83 = *(Strong + 16);
      swift_unknownObjectRelease();
      v84 = [objc_opt_self() defaultCenter];
      v85 = swift_allocObject();
      swift_weakInit();
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      *(v86 + 24) = v81;
      v128[2] = sub_216DD7FB8;
      v128[3] = v86;
      aBlock = MEMORY[0x277D85DD0];
      v127 = 1107296256;
      v128[0] = sub_216D5D040;
      v128[1] = &block_descriptor_810;
      v87 = _Block_copy(&aBlock);
      v88 = v83;

      v89 = [v84 addObserverForName:v88 object:0 queue:0 usingBlock:v87];
      _Block_release(v87);

      v90 = swift_beginAccess();
      MEMORY[0x21CE9F610](v90);
      if (*((*(v4 + v80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      swift_endAccess();
    }

    else
    {
    }

    ++v79;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_216D58974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v121 = a2;
  v122 = a3;
  v120 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  MEMORY[0x28223BE20](v5 - 8);
  v124 = &v91 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9098);
  v119 = *(v123 - 1);
  MEMORY[0x28223BE20](v123);
  v118 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90A0);
  v116 = *(v8 - 8);
  v117 = v8;
  MEMORY[0x28223BE20](v8);
  v115 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E8);
  v113 = *(v10 - 8);
  v114 = v10;
  MEMORY[0x28223BE20](v10);
  v112 = &v91 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180);
  MEMORY[0x28223BE20](v111);
  v110 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v109 = &v91 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E0);
  v125 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v91 - v15;
  v106 = type metadata accessor for BackgroundConfiguration(0);
  MEMORY[0x28223BE20](v106);
  v105 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v104 = &v91 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v91 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D8);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v91 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  MEMORY[0x28223BE20](v97);
  v96 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v91 - v23;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v91 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90A8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v91 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EF8);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v91 - v31;
  v33 = *(*v3 + 96);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F00);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
  sub_216DD9F00();
  sub_217007DA4();
  sub_2166997CC(v32, &qword_27CAC8EF8);
  (*(v26 + 32))(v4 + v33, v28, v25);
  v35 = *(*v4 + 104);
  aBlock = 0;
  v127 = 0;
  v128[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660);
  v36 = v92;
  sub_217007DA4();
  (*(v93 + 32))(v4 + v35, v36, v94);
  v37 = *(*v4 + 112);
  v38 = type metadata accessor for ToolbarConfiguration(0);
  v39 = v95;
  __swift_storeEnumTagSinglePayload(v95, 1, 1, v38);
  sub_216DD9F00();
  v40 = v98;
  sub_217007DA4();
  sub_2166997CC(v39, &qword_27CAB7930);
  (*(v99 + 32))(v4 + v37, v40, v100);
  v41 = *(*v4 + 128);
  LOBYTE(aBlock) = 0;
  v42 = v101;
  sub_217007DA4();
  v43 = *(v102 + 32);
  v44 = v103;
  v43(v4 + v41, v42, v103);
  *(v4 + *(*v4 + 136)) = 0;
  v45 = *(*v4 + 144);
  type metadata accessor for AutoUpdatingPageMapper();
  swift_allocObject();
  *(v4 + v45) = sub_216E593C8();
  v46 = *(*v4 + 184);
  LOBYTE(aBlock) = 1;
  sub_217007DA4();
  v43(v4 + v46, v42, v44);
  v47 = *(*v4 + 192);
  v48 = v104;
  swift_storeEnumTagMultiPayload();
  v49 = v105;
  sub_216DDA0A0(v48, v105);
  v50 = v107;
  sub_217007DA4();
  sub_216DDA050();
  v51 = *(v125 + 32);
  v125 += 32;
  v52 = v4 + v47;
  v53 = v50;
  v54 = v50;
  v55 = v108;
  v51(v52, v53, v108);
  v56 = *(*v4 + 200);
  swift_storeEnumTagMultiPayload();
  sub_216DDA0A0(v48, v49);
  sub_217007DA4();
  sub_216DDA050();
  v51(v4 + v56, v54, v55);
  v57 = *(*v4 + 208);
  v58 = sub_2170080D4();
  v59 = v109;
  __swift_storeEnumTagSinglePayload(v109, 1, 1, v58);
  sub_216DD9F00();
  v60 = v112;
  sub_217007DA4();
  sub_2166997CC(v59, &qword_27CAB9180);
  (*(v113 + 32))(v4 + v57, v60, v114);
  v61 = *(*v4 + 216);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690);
  __swift_storeEnumTagSinglePayload(v4 + v61, 1, 1, v62);
  *(v4 + *(*v4 + 240)) = 0;
  v63 = *(*v4 + 248);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  __swift_storeEnumTagSinglePayload(v4 + v63, 1, 1, v125);
  *(v4 + *(*v4 + 256)) = MEMORY[0x277D84F90];
  v64 = *(*v4 + 264);
  type metadata accessor for AsyncQueue();
  swift_allocObject();
  *(v4 + v64) = sub_216CA9FD4();
  *(v4 + *(*v4 + 272)) = 0;
  swift_weakInit();
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 304) + 8) = 0;
  swift_unknownObjectWeakInit();
  v65 = *(*v4 + 312);
  type metadata accessor for MusicPageMetricsProvider();
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v68 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
  *(v4 + v65) = v66;
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 160)) = v122;
  *(v4 + *(*v4 + 224)) = v120;
  sub_216DD9F00();
  sub_21700DAB4();
  v69 = type metadata accessor for ObjectGraph();

  sub_21700E094();
  *(v4 + *(*v4 + 232)) = aBlock;
  sub_21700DDB4();

  v114 = v69;
  sub_21700E094();

  *(v4 + *(*v4 + 120)) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90B0);
  swift_allocObject();

  *(v4 + *(*v4 + 168)) = sub_216CF287C(v70);
  type metadata accessor for SocialBadgingRequestCoordinator();

  sub_21700E094();

  *(v4 + *(*v4 + 176)) = aBlock;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90B8);
  sub_2166D9530(&qword_280E2A338, &qword_27CAC90B8);

  sub_21700D1D4();
  v71 = v115;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v116 + 8))(v71, v117);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90C0);
  sub_2166D9530(&qword_280E2A328, &qword_27CAC90C0);
  sub_21700D1D4();
  v72 = v118;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v119 + 8))(v72, v123);
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  v73 = v124;
  v119 = aBlock;
  sub_2166B5494(v4, &unk_282935BB0, &unk_282935BD8, sub_216DD6CD4, sub_2168E4C64, v74, v75, v76, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v125);
  swift_beginAccess();
  sub_216DD9404();
  swift_endAccess();
  v77 = sub_216D55EEC();
  v78 = sub_2166BF3C8(v77);
  v79 = 0;
  v80 = *(*v4 + 256);
  v124 = (v77 & 0xFFFFFFFFFFFFFF8);
  v125 = v77 & 0xC000000000000001;
  v123 = v128;
  while (1)
  {
    if (v78 == v79)
    {

      sub_2166997CC(v121, &qword_27CAC8058);
      return;
    }

    if (v125)
    {
      v81 = MEMORY[0x21CEA0220](v79, v77);
    }

    else
    {
      if (v79 >= *(v124 + 2))
      {
        goto LABEL_16;
      }

      v81 = *(v77 + 8 * v79 + 32);
    }

    if (__OFADD__(v79, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v83 = *(Strong + 16);
      swift_unknownObjectRelease();
      v84 = [objc_opt_self() defaultCenter];
      v85 = swift_allocObject();
      swift_weakInit();
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      *(v86 + 24) = v81;
      v128[2] = sub_216DD6BFC;
      v128[3] = v86;
      aBlock = MEMORY[0x277D85DD0];
      v127 = 1107296256;
      v128[0] = sub_216D5D040;
      v128[1] = &block_descriptor_445;
      v87 = _Block_copy(&aBlock);
      v88 = v83;

      v89 = [v84 addObserverForName:v88 object:0 queue:0 usingBlock:v87];
      _Block_release(v87);

      v90 = swift_beginAccess();
      MEMORY[0x21CE9F610](v90);
      if (*((*(v4 + v80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      swift_endAccess();
    }

    else
    {
    }

    ++v79;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_216D59E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v121 = a2;
  v122 = a3;
  v120 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  MEMORY[0x28223BE20](v5 - 8);
  v124 = &v91 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9148);
  v119 = *(v123 - 1);
  MEMORY[0x28223BE20](v123);
  v118 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9150);
  v116 = *(v8 - 8);
  v117 = v8;
  MEMORY[0x28223BE20](v8);
  v115 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E8);
  v113 = *(v10 - 8);
  v114 = v10;
  MEMORY[0x28223BE20](v10);
  v112 = &v91 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180);
  v12 = MEMORY[0x28223BE20](v111);
  v110 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v109 = &v91 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E0);
  v125 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v91 - v15;
  v106 = type metadata accessor for BackgroundConfiguration(0);
  v16 = MEMORY[0x28223BE20](v106);
  v105 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v104 = &v91 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v91 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D8);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v91 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  v21 = MEMORY[0x28223BE20](v97);
  v96 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v95 = &v91 - v23;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v91 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9158);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v91 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE088);
  v30 = MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v91 - v31;
  v33 = *(*v3 + 96);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
  sub_216DD9F00();
  sub_217007DA4();
  sub_2166997CC(v32, &qword_27CABE088);
  (*(v26 + 32))(v4 + v33, v28, v25);
  v35 = *(*v4 + 104);
  aBlock = 0;
  v127 = 0;
  v128[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660);
  v36 = v92;
  sub_217007DA4();
  (*(v93 + 32))(v4 + v35, v36, v94);
  v37 = *(*v4 + 112);
  v38 = type metadata accessor for ToolbarConfiguration(0);
  v39 = v95;
  __swift_storeEnumTagSinglePayload(v95, 1, 1, v38);
  sub_216DD9F00();
  v40 = v98;
  sub_217007DA4();
  sub_2166997CC(v39, &qword_27CAB7930);
  (*(v99 + 32))(v4 + v37, v40, v100);
  v41 = *(*v4 + 128);
  LOBYTE(aBlock) = 0;
  v42 = v101;
  sub_217007DA4();
  v43 = *(v102 + 32);
  v44 = v103;
  v43(v4 + v41, v42, v103);
  *(v4 + *(*v4 + 136)) = 0;
  v45 = *(*v4 + 144);
  type metadata accessor for AutoUpdatingPageMapper();
  swift_allocObject();
  *(v4 + v45) = sub_216E593C8();
  v46 = *(*v4 + 184);
  LOBYTE(aBlock) = 1;
  sub_217007DA4();
  v43(v4 + v46, v42, v44);
  v47 = *(*v4 + 192);
  v48 = v104;
  swift_storeEnumTagMultiPayload();
  v49 = v105;
  sub_216DDA0A0(v48, v105);
  v50 = v107;
  sub_217007DA4();
  sub_216DDA050();
  v51 = *(v125 + 32);
  v125 += 32;
  v52 = v4 + v47;
  v53 = v50;
  v54 = v50;
  v55 = v108;
  v51(v52, v53, v108);
  v56 = *(*v4 + 200);
  swift_storeEnumTagMultiPayload();
  sub_216DDA0A0(v48, v49);
  sub_217007DA4();
  sub_216DDA050();
  v51(v4 + v56, v54, v55);
  v57 = *(*v4 + 208);
  v58 = sub_2170080D4();
  v59 = v109;
  __swift_storeEnumTagSinglePayload(v109, 1, 1, v58);
  sub_216DD9F00();
  v60 = v112;
  sub_217007DA4();
  sub_2166997CC(v59, &qword_27CAB9180);
  (*(v113 + 32))(v4 + v57, v60, v114);
  v61 = *(*v4 + 216);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  __swift_storeEnumTagSinglePayload(v4 + v61, 1, 1, v62);
  *(v4 + *(*v4 + 240)) = 0;
  v63 = *(*v4 + 248);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  __swift_storeEnumTagSinglePayload(v4 + v63, 1, 1, v125);
  *(v4 + *(*v4 + 256)) = MEMORY[0x277D84F90];
  v64 = *(*v4 + 264);
  type metadata accessor for AsyncQueue();
  swift_allocObject();
  *(v4 + v64) = sub_216CA9FD4();
  *(v4 + *(*v4 + 272)) = 0;
  swift_weakInit();
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 304) + 8) = 0;
  swift_unknownObjectWeakInit();
  v65 = *(*v4 + 312);
  type metadata accessor for MusicPageMetricsProvider();
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v68 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
  *(v4 + v65) = v66;
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 160)) = v122;
  *(v4 + *(*v4 + 224)) = v120;
  sub_216DD9F00();
  sub_21700DAB4();
  v69 = type metadata accessor for ObjectGraph();

  sub_21700E094();
  *(v4 + *(*v4 + 232)) = aBlock;
  sub_21700DDB4();

  v114 = v69;
  sub_21700E094();

  *(v4 + *(*v4 + 120)) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9160);
  swift_allocObject();

  *(v4 + *(*v4 + 168)) = sub_216CF29F4(v70);
  type metadata accessor for SocialBadgingRequestCoordinator();

  sub_21700E094();

  *(v4 + *(*v4 + 176)) = aBlock;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9168);
  sub_2166D9530(&qword_27CAC9170, &qword_27CAC9168);

  sub_21700D1D4();
  v71 = v115;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v116 + 8))(v71, v117);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9178);
  sub_2166D9530(&qword_27CAC9180, &qword_27CAC9178);
  sub_21700D1D4();
  v72 = v118;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v119 + 8))(v72, v123);
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  v73 = v124;
  v119 = aBlock;
  sub_2166B5494(v4, &unk_282935E58, &unk_282935E80, sub_216DD7448, sub_2168E4C64, v74, v75, v76, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v125);
  swift_beginAccess();
  sub_216DD9404();
  swift_endAccess();
  v77 = sub_216D55EEC();
  v78 = sub_2166BF3C8(v77);
  v79 = 0;
  v80 = *(*v4 + 256);
  v124 = (v77 & 0xFFFFFFFFFFFFFF8);
  v125 = v77 & 0xC000000000000001;
  v123 = v128;
  while (1)
  {
    if (v78 == v79)
    {

      sub_2166997CC(v121, &qword_27CAC4BF8);
      return;
    }

    if (v125)
    {
      v81 = MEMORY[0x21CEA0220](v79, v77);
    }

    else
    {
      if (v79 >= *(v124 + 2))
      {
        goto LABEL_16;
      }

      v81 = *(v77 + 8 * v79 + 32);
    }

    if (__OFADD__(v79, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v83 = *(Strong + 16);
      swift_unknownObjectRelease();
      v84 = [objc_opt_self() defaultCenter];
      v85 = swift_allocObject();
      swift_weakInit();
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      *(v86 + 24) = v81;
      v128[2] = sub_216DD7370;
      v128[3] = v86;
      aBlock = MEMORY[0x277D85DD0];
      v127 = 1107296256;
      v128[0] = sub_216D5D040;
      v128[1] = &block_descriptor_554;
      v87 = _Block_copy(&aBlock);
      v88 = v83;

      v89 = [v84 addObserverForName:v88 object:0 queue:0 usingBlock:v87];
      _Block_release(v87);

      v90 = swift_beginAccess();
      MEMORY[0x21CE9F610](v90);
      if (*((*(v4 + v80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      swift_endAccess();
    }

    else
    {
    }

    ++v79;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_216D5B34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v121 = a2;
  v122 = a3;
  v120 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  MEMORY[0x28223BE20](v5 - 8);
  v124 = &v91 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9868);
  v119 = *(v123 - 1);
  MEMORY[0x28223BE20](v123);
  v118 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9870);
  v116 = *(v8 - 8);
  v117 = v8;
  MEMORY[0x28223BE20](v8);
  v115 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E8);
  v113 = *(v10 - 8);
  v114 = v10;
  MEMORY[0x28223BE20](v10);
  v112 = &v91 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180);
  MEMORY[0x28223BE20](v111);
  v110 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v109 = &v91 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E0);
  v125 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v91 - v15;
  v106 = type metadata accessor for BackgroundConfiguration(0);
  MEMORY[0x28223BE20](v106);
  v105 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v104 = &v91 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v91 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D8);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v91 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  MEMORY[0x28223BE20](v97);
  v96 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v91 - v23;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v91 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EB8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v91 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D60);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v91 - v31;
  v33 = *(*v3 + 96);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
  sub_216DD9F00();
  sub_217007DA4();
  sub_2166997CC(v32, &qword_27CAC7D60);
  (*(v26 + 32))(v4 + v33, v28, v25);
  v35 = *(*v4 + 104);
  aBlock = 0;
  v127 = 0;
  v128[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660);
  v36 = v92;
  sub_217007DA4();
  (*(v93 + 32))(v4 + v35, v36, v94);
  v37 = *(*v4 + 112);
  v38 = type metadata accessor for ToolbarConfiguration(0);
  v39 = v95;
  __swift_storeEnumTagSinglePayload(v95, 1, 1, v38);
  sub_216DD9F00();
  v40 = v98;
  sub_217007DA4();
  sub_2166997CC(v39, &qword_27CAB7930);
  (*(v99 + 32))(v4 + v37, v40, v100);
  v41 = *(*v4 + 128);
  LOBYTE(aBlock) = 0;
  v42 = v101;
  sub_217007DA4();
  v43 = *(v102 + 32);
  v44 = v103;
  v43(v4 + v41, v42, v103);
  *(v4 + *(*v4 + 136)) = 0;
  v45 = *(*v4 + 144);
  type metadata accessor for AutoUpdatingPageMapper();
  swift_allocObject();
  *(v4 + v45) = sub_216E593C8();
  v46 = *(*v4 + 184);
  LOBYTE(aBlock) = 1;
  sub_217007DA4();
  v43(v4 + v46, v42, v44);
  v47 = *(*v4 + 192);
  v48 = v104;
  swift_storeEnumTagMultiPayload();
  v49 = v105;
  sub_216DDA0A0(v48, v105);
  v50 = v107;
  sub_217007DA4();
  sub_216DDA050();
  v51 = *(v125 + 32);
  v125 += 32;
  v52 = v4 + v47;
  v53 = v50;
  v54 = v50;
  v55 = v108;
  v51(v52, v53, v108);
  v56 = *(*v4 + 200);
  swift_storeEnumTagMultiPayload();
  sub_216DDA0A0(v48, v49);
  sub_217007DA4();
  sub_216DDA050();
  v51(v4 + v56, v54, v55);
  v57 = *(*v4 + 208);
  v58 = sub_2170080D4();
  v59 = v109;
  __swift_storeEnumTagSinglePayload(v109, 1, 1, v58);
  sub_216DD9F00();
  v60 = v112;
  sub_217007DA4();
  sub_2166997CC(v59, &qword_27CAB9180);
  (*(v113 + 32))(v4 + v57, v60, v114);
  v61 = *(*v4 + 216);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708);
  __swift_storeEnumTagSinglePayload(v4 + v61, 1, 1, v62);
  *(v4 + *(*v4 + 240)) = 0;
  v63 = *(*v4 + 248);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  __swift_storeEnumTagSinglePayload(v4 + v63, 1, 1, v125);
  *(v4 + *(*v4 + 256)) = MEMORY[0x277D84F90];
  v64 = *(*v4 + 264);
  type metadata accessor for AsyncQueue();
  swift_allocObject();
  *(v4 + v64) = sub_216CA9FD4();
  *(v4 + *(*v4 + 272)) = 0;
  swift_weakInit();
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 304) + 8) = 0;
  swift_unknownObjectWeakInit();
  v65 = *(*v4 + 312);
  type metadata accessor for MusicPageMetricsProvider();
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v68 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
  *(v4 + v65) = v66;
  swift_weakInit();
  swift_weakInit();
  *(v4 + *(*v4 + 160)) = v122;
  *(v4 + *(*v4 + 224)) = v120;
  sub_216DD9F00();
  sub_21700DAB4();
  v69 = type metadata accessor for ObjectGraph();

  sub_21700E094();
  *(v4 + *(*v4 + 232)) = aBlock;
  sub_21700DDB4();

  v114 = v69;
  sub_21700E094();

  *(v4 + *(*v4 + 120)) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9878);
  swift_allocObject();

  *(v4 + *(*v4 + 168)) = sub_216CF2B6C(v70);
  type metadata accessor for SocialBadgingRequestCoordinator();

  sub_21700E094();

  *(v4 + *(*v4 + 176)) = aBlock;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9880);
  sub_2166D9530(&qword_280E2A340, &qword_27CAC9880);

  sub_21700D1D4();
  v71 = v115;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v116 + 8))(v71, v117);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9888);
  sub_2166D9530(&qword_280E2A320, &qword_27CAC9888);
  sub_21700D1D4();
  v72 = v118;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  (*(v119 + 8))(v72, v123);
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  v73 = v124;
  v119 = aBlock;
  sub_2166B5494(v4, &unk_282936DD0, &unk_282936DF8, sub_216DD976C, sub_2168E4C64, v74, v75, v76, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v125);
  swift_beginAccess();
  sub_216DD9404();
  swift_endAccess();
  v77 = sub_216D55EEC();
  v78 = sub_2166BF3C8(v77);
  v79 = 0;
  v80 = *(*v4 + 256);
  v124 = (v77 & 0xFFFFFFFFFFFFFF8);
  v125 = v77 & 0xC000000000000001;
  v123 = v128;
  while (1)
  {
    if (v78 == v79)
    {

      sub_2166997CC(v121, &qword_27CAC9698);
      return;
    }

    if (v125)
    {
      v81 = MEMORY[0x21CEA0220](v79, v77);
    }

    else
    {
      if (v79 >= *(v124 + 2))
      {
        goto LABEL_16;
      }

      v81 = *(v77 + 8 * v79 + 32);
    }

    if (__OFADD__(v79, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v83 = *(Strong + 16);
      swift_unknownObjectRelease();
      v84 = [objc_opt_self() defaultCenter];
      v85 = swift_allocObject();
      swift_weakInit();
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      *(v86 + 24) = v81;
      v128[2] = sub_216DD9694;
      v128[3] = v86;
      aBlock = MEMORY[0x277D85DD0];
      v127 = 1107296256;
      v128[0] = sub_216D5D040;
      v128[1] = &block_descriptor_1181;
      v87 = _Block_copy(&aBlock);
      v88 = v83;

      v89 = [v84 addObserverForName:v88 object:0 queue:0 usingBlock:v87];
      _Block_release(v87);

      v90 = swift_beginAccess();
      MEMORY[0x21CE9F610](v90);
      if (*((*(v4 + v80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      swift_endAccess();
    }

    else
    {
    }

    ++v79;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_216D5C838(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_17_2();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = OUTLINED_FUNCTION_41_2();
    a3(v5);
  }

  return result;
}

uint64_t sub_216D5C8A0()
{
  OUTLINED_FUNCTION_1112();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_0();
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_143();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_17_2();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = v1;

  sub_21677BBA0();
}

uint64_t sub_216D5C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_216D5C9D4, 0, 0);
}

uint64_t sub_216D5C9D4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  swift_weakLoadStrong();
  OUTLINED_FUNCTION_962();

  sub_21700EA34();
  *(v0 + 72) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v1 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_216D5CA68()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_1196();
  OUTLINED_FUNCTION_459();
  sub_216A41228();
  if (v0)
  {
  }

  else
  {
    swift_weakDestroy();
    OUTLINED_FUNCTION_3();

    v1();
  }
}

uint64_t sub_216D5CB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_216D5CB24, 0, 0);
}

uint64_t sub_216D5CB24()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  swift_weakLoadStrong();
  OUTLINED_FUNCTION_962();

  sub_21700EA34();
  *(v0 + 72) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v1 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_216D5CBB8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_1196();
  OUTLINED_FUNCTION_459();
  sub_216A414F0();
  if (v0)
  {
  }

  else
  {
    swift_weakDestroy();
    OUTLINED_FUNCTION_3();

    v1();
  }
}

uint64_t sub_216D5CC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_216D5CC74, 0, 0);
}

uint64_t sub_216D5CC74()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  swift_weakLoadStrong();
  OUTLINED_FUNCTION_962();

  sub_21700EA34();
  *(v0 + 72) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v1 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_216D5CD08()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_1196();
  OUTLINED_FUNCTION_459();
  sub_216A417B8();
  if (v0)
  {
  }

  else
  {
    swift_weakDestroy();
    OUTLINED_FUNCTION_3();

    v1();
  }
}

uint64_t sub_216D5CDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_216D5CDC4, 0, 0);
}

uint64_t sub_216D5CDC4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  swift_weakLoadStrong();
  OUTLINED_FUNCTION_962();

  sub_21700EA34();
  *(v0 + 72) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v1 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_216D5CE58()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_1196();
  OUTLINED_FUNCTION_459();
  sub_216A41A80();
  if (v0)
  {
  }

  else
  {
    swift_weakDestroy();
    OUTLINED_FUNCTION_3();

    v1();
  }
}

uint64_t sub_216D5CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_216D5CF14, 0, 0);
}

uint64_t sub_216D5CF14()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  swift_weakLoadStrong();
  OUTLINED_FUNCTION_962();

  sub_21700EA34();
  *(v0 + 72) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v1 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_216D5CFA8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_1196();
  OUTLINED_FUNCTION_459();
  sub_216A41E18();
  if (v0)
  {
  }

  else
  {
    swift_weakDestroy();
    OUTLINED_FUNCTION_3();

    v1();
  }
}

uint64_t sub_216D5D040()
{
  OUTLINED_FUNCTION_110();
  sub_217005974();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = v3 - v2;
  v5 = *(v0 + 32);
  sub_217005934();

  v5(v4);

  v6 = OUTLINED_FUNCTION_45_0();
  return v7(v6);
}

uint64_t sub_216D5D118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D28);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for Page(0);
  sub_2166DC484(&qword_280E2C548, type metadata accessor for Page);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216DD9F00();

  sub_217007DF4();
  return sub_2166997CC(a1, &qword_27CAC6D28);
}

uint64_t sub_216D5D268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91F0);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for JSReplayPage();
  sub_2166DC484(&qword_27CAB91F8, type metadata accessor for JSReplayPage);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216DD9F00();

  sub_217007DF4();
  return sub_2166997CC(a1, &qword_27CAB91F0);
}

uint64_t sub_216D5D3B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE088);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for ReplayModel(0);
  sub_2166DC484(&qword_27CAB6FA0, type metadata accessor for ReplayModel);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216DD9F00();

  sub_217007DF4();
  return sub_2166997CC(a1, &qword_27CABE088);
}

uint64_t sub_216D5D508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EF8);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for JSSearchPage();
  sub_2166DC484(&qword_280E44AC8, type metadata accessor for JSSearchPage);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216DD9F00();

  sub_217007DF4();
  return sub_2166997CC(a1, &qword_27CAC8EF8);
}

uint64_t sub_216D5D658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D60);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for JSSearchResultsPage(0);
  sub_2166DC484(&qword_280E3DCA0, type metadata accessor for JSSearchResultsPage);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216DD9F00();

  sub_217007DF4();
  return sub_2166997CC(a1, &qword_27CAC7D60);
}

uint64_t sub_216D5D7A8()
{
  OUTLINED_FUNCTION_733();
  v0(0);
  OUTLINED_FUNCTION_1043();
  v1 = OUTLINED_FUNCTION_45_0();
  sub_2166DC484(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_42();
  return sub_217007DF4();
}

void sub_216D5D864()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_110();
  sub_21700D574();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_39_3();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_26_21();
  sub_21700CEA4();
  sub_21700D0D4();
  v3 = OUTLINED_FUNCTION_116();
  v4(v3);
  sub_21700DDB4();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_39_3();
  sub_21700DDA4();
  OUTLINED_FUNCTION_65_2();
}

void sub_216D5D970()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  sub_216DD8F88();
  swift_endAccess();
  *(v0 + *(*v0 + 240)) = 1;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_216DD9F00();
  sub_21700EA34();

  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = v1;
  v9 = v11;
  *(v7 + 40) = *&v10[8];
  *(v7 + 56) = v9;
  *(v7 + 72) = v12;
  sub_21677E250();
}

void sub_216D5DB18()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  sub_216DD8F88();
  swift_endAccess();
  *(v0 + *(*v0 + 240)) = 1;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_216DD9F00();
  sub_21700EA34();

  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = v1;
  v9 = v11;
  *(v7 + 40) = *&v10[8];
  *(v7 + 56) = v9;
  *(v7 + 72) = v12;
  sub_21677E700();
}

void sub_216D5DCC0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  sub_216DD8F88();
  swift_endAccess();
  *(v0 + *(*v0 + 240)) = 1;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_216DD9F00();
  sub_21700EA34();

  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = v1;
  v9 = v11;
  *(v7 + 40) = *&v10[8];
  *(v7 + 56) = v9;
  *(v7 + 72) = v12;
  sub_21677E938();
}

void sub_216D5DE68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_23_5();
  sub_216DD8F88();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  *(v0 + *(v3 + 240)) = 1;
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_23_5();
  sub_216DD9F00();
  sub_21700EA34();
  OUTLINED_FUNCTION_47();

  sub_21700EA24();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_944(v8, MEMORY[0x277D85700]);
  OUTLINED_FUNCTION_9_46();
  sub_21677EDC8();
}

void sub_216D5DFC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_23_5();
  sub_216DD8F88();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  *(v0 + *(v3 + 240)) = 1;
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_23_5();
  sub_216DD9F00();
  sub_21700EA34();
  OUTLINED_FUNCTION_47();

  sub_21700EA24();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_944(v8, MEMORY[0x277D85700]);
  OUTLINED_FUNCTION_9_46();
  sub_21677EE0C();
}

uint64_t sub_216D5E118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_21700EA34();
  v5[10] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_216D5E1B4, v7, v6);
}

uint64_t sub_216D5E1B4()
{
  OUTLINED_FUNCTION_31();
  sub_216DD9F00();
  OUTLINED_FUNCTION_8_97();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_148_2(v0);
  OUTLINED_FUNCTION_230_1(&dword_21705EBF8);

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_296(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_745(v2);
  OUTLINED_FUNCTION_308();

  return v4();
}

uint64_t sub_216D5E294()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_216DDA404;
  }

  else
  {

    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_216DDA42C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D5E398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_21700EA34();
  v5[10] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_216D5E434, v7, v6);
}

uint64_t sub_216D5E434()
{
  OUTLINED_FUNCTION_31();
  sub_216DD9F00();
  OUTLINED_FUNCTION_8_97();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_148_2(v0);
  OUTLINED_FUNCTION_230_1(&dword_21705FD38);

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_296(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_745(v2);
  OUTLINED_FUNCTION_308();

  return v4();
}

uint64_t sub_216D5E514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_21700EA34();
  v5[10] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_216D5E5B0, v7, v6);
}

uint64_t sub_216D5E5B0()
{
  OUTLINED_FUNCTION_31();
  sub_216DD9F00();
  OUTLINED_FUNCTION_8_97();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_148_2(v0);
  OUTLINED_FUNCTION_230_1(&dword_21705F848);

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_296(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_745(v2);
  OUTLINED_FUNCTION_308();

  return v4();
}

uint64_t sub_216D5E690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_21700EA34();
  v5[10] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_216D5E72C, v7, v6);
}

uint64_t sub_216D5E72C()
{
  OUTLINED_FUNCTION_31();
  sub_216DD9F00();
  OUTLINED_FUNCTION_8_97();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_148_2(v0);
  OUTLINED_FUNCTION_230_1(&dword_21705F2A0);

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_296(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_745(v2);
  OUTLINED_FUNCTION_308();

  return v4();
}

uint64_t sub_216D5E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_21700EA34();
  v5[10] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_216D5E8A8, v7, v6);
}

uint64_t sub_216D5E8A8()
{
  OUTLINED_FUNCTION_31();
  sub_216DD9F00();
  OUTLINED_FUNCTION_8_97();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_148_2(v0);
  OUTLINED_FUNCTION_230_1(&dword_217060078);

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_296(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_745(v2);
  OUTLINED_FUNCTION_308();

  return v4();
}

uint64_t sub_216D5E988()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_216D5EA8C;
  }

  else
  {

    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_216A9B29C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D5EA8C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D5EAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DDA0A0(a1, v8);
  v9 = *(a3 + *(*a3 + 168));
  v10 = sub_216D55EEC();
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AD8);
  swift_allocObject();
  v11 = sub_216DB0C14(v8, v9, v10, a2, v14);

  return v11;
}

uint64_t sub_216D5EC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JSReplayPage();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DDA0A0(a1, v8);
  v9 = *(a3 + *(*a3 + 168));
  v10 = sub_216D55EEC();
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94B0);
  swift_allocObject();
  v11 = sub_216DB0C14(v8, v9, v10, a2, v14);

  return v11;
}

uint64_t sub_216D5EDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReplayModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DDA0A0(a1, v8);
  v9 = *(a3 + *(*a3 + 168));
  v10 = sub_216D55EEC();
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91E8);
  swift_allocObject();
  v11 = sub_216DB0C14(v8, v9, v10, a2, v14);

  return v11;
}

uint64_t sub_216D5EF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JSSearchPage();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DDA0A0(a1, v8);
  v9 = *(a3 + *(*a3 + 168));
  v10 = sub_216D55EEC();
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EC0);
  swift_allocObject();
  v11 = sub_216DB0C14(v8, v9, v10, a2, v14);

  return v11;
}

uint64_t sub_216D5F074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JSSearchResultsPage(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DDA0A0(a1, v8);
  v9 = *(a3 + *(*a3 + 168));
  v10 = sub_216D55EEC();
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B8);
  swift_allocObject();
  v11 = sub_216DB0C14(v8, v9, v10, a2, v14);

  return v11;
}

uint64_t sub_216D5F1D4(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D5F274, v6, v5);
}

uint64_t sub_216D5F274()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    OUTLINED_FUNCTION_742();
    sub_216D64C50();
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_622(v2);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v3);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v5;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216D5F390()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {

    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216DDA410;
  }

  else
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216DDA390;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D5F494(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AB0) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D5F5A0, v7, v6);
}

uint64_t sub_216D5F5A0()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_985();
    sub_216D63A60(v2, v3);
  }

  OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_188_1();
  sub_216DD9F00();
  OUTLINED_FUNCTION_711();
  v4 = OUTLINED_FUNCTION_1193();
  OUTLINED_FUNCTION_416(v4);

  OUTLINED_FUNCTION_1055();
  sub_216D07D80();
  OUTLINED_FUNCTION_785(v5);

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D5F6D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216DDA278;
  }

  else
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216DDA394;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D5F7D4(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D5F874, v6, v5);
}

uint64_t sub_216D5F874()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D64618(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D5F980(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D5FA20, v6, v5);
}

uint64_t sub_216D5FA20()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    OUTLINED_FUNCTION_742();
    sub_216D64C50();
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_622(v2);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v3);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v5;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216D5FB3C(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D5FBDC, v6, v5);
}

uint64_t sub_216D5FBDC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    OUTLINED_FUNCTION_742();
    sub_216D670E8();
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_622(v2);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v3);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v5;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216D5FCF8(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9480) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D5FE04, v7, v6);
}

uint64_t sub_216D5FE04()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_985();
    sub_216D65730(v2, v3);
  }

  OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_188_1();
  sub_216DD9F00();
  OUTLINED_FUNCTION_711();
  v4 = OUTLINED_FUNCTION_1193();
  OUTLINED_FUNCTION_416(v4);

  OUTLINED_FUNCTION_1055();
  sub_216D07D80();
  OUTLINED_FUNCTION_785(v5);

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D5FF34(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D5FFD4, v6, v5);
}

uint64_t sub_216D5FFD4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D66478(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D600E0(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D60180, v6, v5);
}

uint64_t sub_216D60180()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    OUTLINED_FUNCTION_742();
    sub_216D670E8();
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_622(v2);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v3);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v5;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216D6029C(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(type metadata accessor for ReplaceReplayYearUpdate() - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D6039C, v7, v6);
}

uint64_t sub_216D6039C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    OUTLINED_FUNCTION_985();
    sub_216D6D980();
  }

  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_0_5();
  sub_216DDA0A0(v5, v2);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  sub_216DDA0F4(v2, v7 + v6);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_785(v8);

  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v3 = v10;
  v3[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x282200430](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_216D60548(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91D0) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D60654, v7, v6);
}

uint64_t sub_216D60654()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_985();
    sub_216D67BB4(v2, v3);
  }

  OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_188_1();
  sub_216DD9F00();
  OUTLINED_FUNCTION_711();
  v4 = OUTLINED_FUNCTION_1193();
  OUTLINED_FUNCTION_416(v4);

  OUTLINED_FUNCTION_1055();
  sub_216D07D80();
  OUTLINED_FUNCTION_785(v5);

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D60784(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D60824, v6, v5);
}

uint64_t sub_216D60824()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D688D4(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D60930(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D609D0, v6, v5);
}

uint64_t sub_216D609D0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D69C18(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D60ADC(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EC8) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D60BE8, v7, v6);
}

uint64_t sub_216D60BE8()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_985();
    sub_216D6951C(v2, v3);
  }

  OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_188_1();
  sub_216DD9F00();
  OUTLINED_FUNCTION_711();
  v4 = OUTLINED_FUNCTION_1193();
  OUTLINED_FUNCTION_416(v4);

  OUTLINED_FUNCTION_1055();
  sub_216D07D80();
  OUTLINED_FUNCTION_785(v5);

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D60D18(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D60DB8, v6, v5);
}

uint64_t sub_216D60DB8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6A860(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D60EC4(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D60F64, v6, v5);
}

uint64_t sub_216D60F64()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6B4A8(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D61070(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D61110, v6, v5);
}

uint64_t sub_216D61110()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6C0F0(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D6121C(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D612BC, v6, v5);
}

uint64_t sub_216D612BC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6CD38(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D613C8(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(type metadata accessor for ReplaceReplayPageUpdate() - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D614C8, v7, v6);
}

uint64_t sub_216D614C8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    OUTLINED_FUNCTION_985();
    sub_216D6D980();
  }

  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_0_5();
  sub_216DDA0A0(v5, v2);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  sub_216DDA0F4(v2, v7 + v6);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_785(v8);

  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v3 = v10;
  v3[1] = sub_216D5F6D0;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x282200430](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_216D61674(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D61714, v6, v5);
}

uint64_t sub_216D61714()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6EBF8(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D61820(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96C0) - 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 + 64);
  *(v4 + 48) = swift_task_alloc();
  sub_21700EA34();
  *(v4 + 56) = sub_21700EA24();
  v7 = sub_21700E9B4();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x2822009F8](sub_216D6192C, v7, v6);
}

uint64_t sub_216D6192C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_986();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_985();
    sub_216D6E4FC(v2, v3);
  }

  OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_188_1();
  sub_216DD9F00();
  OUTLINED_FUNCTION_711();
  v4 = OUTLINED_FUNCTION_1193();
  OUTLINED_FUNCTION_416(v4);

  OUTLINED_FUNCTION_1055();
  sub_216D07D80();
  OUTLINED_FUNCTION_785(v5);

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_979(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D61A5C;
  OUTLINED_FUNCTION_92_9();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D61A5C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216D61BCC;
  }

  else
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216D61B60;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D61B60()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216D61BCC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D61C30(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D61CD0, v6, v5);
}

uint64_t sub_216D61CD0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D6F840(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D61DDC;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D61DDC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {

    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216D61F44;
  }

  else
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216D61EE0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D61EE0()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216D61F44()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D61FA0(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_216D62040, v6, v5);
}

uint64_t sub_216D62040()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_743();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_742();
    sub_216D70488(v2, v3);
  }

  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_65_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_622(v4);

  OUTLINED_FUNCTION_1001();
  OUTLINED_FUNCTION_626(v5);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_723(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  OUTLINED_FUNCTION_586();
  *v0 = v7;
  v0[1] = sub_216D5F390;
  OUTLINED_FUNCTION_92_9();

  return MEMORY[0x282200430](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_216D6214C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216DD9F00();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      sub_216DDA0A0(v4, a1);
      sub_2166997CC(v4, &qword_27CAC0678);
    }

    else
    {
      v10 = *(v7 + 2);
      *a1 = *v7;
      *(a1 + 16) = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30);
    swift_storeEnumTagMultiPayload();
    return sub_2166997CC(v7, &qword_27CAC0670);
  }
}

uint64_t sub_216D6234C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216DD9F00();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      sub_216DDA0A0(v4, a1);
      sub_2166997CC(v4, &qword_27CAC0700);
    }

    else
    {
      v10 = *(v7 + 2);
      *a1 = *v7;
      *(a1 + 16) = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200);
    swift_storeEnumTagMultiPayload();
    return sub_2166997CC(v7, &qword_27CAC06F8);
  }
}

uint64_t sub_216D6254C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216DD9F00();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      sub_216DDA0A0(v4, a1);
      sub_2166997CC(v4, &qword_27CAC06B8);
    }

    else
    {
      v10 = *(v7 + 2);
      *a1 = *v7;
      *(a1 + 16) = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0);
    swift_storeEnumTagMultiPayload();
    return sub_2166997CC(v7, &qword_27CAC06B0);
  }
}

uint64_t sub_216D6274C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216DD9F00();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      sub_216DDA0A0(v4, a1);
      sub_2166997CC(v4, &qword_27CAC0698);
    }

    else
    {
      v10 = *(v7 + 2);
      *a1 = *v7;
      *(a1 + 16) = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F00);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F00);
    swift_storeEnumTagMultiPayload();
    return sub_2166997CC(v7, &qword_27CAC06A0);
  }
}

uint64_t sub_216D6294C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216DD9F00();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      sub_216DDA0A0(v4, a1);
      sub_2166997CC(v4, &qword_27CAC0710);
    }

    else
    {
      v10 = *(v7 + 2);
      *a1 = *v7;
      *(a1 + 16) = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8);
    swift_storeEnumTagMultiPayload();
    return sub_2166997CC(v7, &qword_27CAC0718);
  }
}

uint64_t sub_216D62B4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D28);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2166997CC(v5, &qword_27CAC8AA0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
    return sub_216D5D118(v2);
  }

  else
  {
    sub_216DD9B04();
    sub_216D6214C(v2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
    sub_216D5D118(v2);
    return sub_2166997CC(v8, &qword_27CAC0668);
  }
}

uint64_t sub_216D62D98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2166997CC(v5, &qword_27CAC9470);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
    return sub_216D5D268(v2);
  }

  else
  {
    sub_216DD9B04();
    sub_216D6234C(v2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
    sub_216D5D268(v2);
    return sub_2166997CC(v8, &qword_27CAC06F0);
  }
}

uint64_t sub_216D62FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE088);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2166997CC(v5, &qword_27CAC91C0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
    return sub_216D5D3B8(v2);
  }

  else
  {
    sub_216DD9B04();
    sub_216D6254C(v2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
    sub_216D5D3B8(v2);
    return sub_2166997CC(v8, &qword_27CAC06A8);
  }
}

uint64_t sub_216D63230()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EF8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2166997CC(v5, &qword_27CAC8EB8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F00);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
    return sub_216D5D508(v2);
  }

  else
  {
    sub_216DD9B04();
    sub_216D6274C(v2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8F00);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
    sub_216D5D508(v2);
    return sub_2166997CC(v8, &qword_27CAC0690);
  }
}

uint64_t sub_216D6347C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2166997CC(v5, &qword_27CAC96B0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
    return sub_216D5D658(v2);
  }

  else
  {
    sub_216DD9B04();
    sub_216D6294C(v2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
    sub_216D5D658(v2);
    return sub_2166997CC(v8, &qword_27CAC0708);
  }
}

uint64_t sub_216D636C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_377();
  swift_beginAccess();
  OUTLINED_FUNCTION_942();
  sub_216DD8F88();
  v5 = swift_endAccess();
  a4(v5);
  v6 = OUTLINED_FUNCTION_109();
  return sub_2166997CC(v6, v7);
}

void sub_216D6374C()
{
  OUTLINED_FUNCTION_0_1();
  if (*(v0 + *(v1 + 272)) < 1)
  {
    sub_216D637FC();
  }

  else
  {
    sub_216D63788();
  }
}

uint64_t sub_216D63788()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 136);
  if (*(v0 + v2))
  {

    sub_217007D34();
  }

  *(v0 + v2) = 0;
}

void sub_216D637FC()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0680);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_0_1();
  v6 = sub_216E591D4();
  OUTLINED_FUNCTION_658(v6);
  sub_216685F4C(0, &qword_280E29CD0);
  v18 = sub_21700EE84();
  sub_21700EE64();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_7_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11);
  OUTLINED_FUNCTION_42();
  sub_2166D9530(v12, v13);
  sub_2166C0E74();
  OUTLINED_FUNCTION_1033();
  sub_217007E54();
  sub_2166997CC(v1, &qword_27CABE1F0);

  OUTLINED_FUNCTION_143();
  swift_allocObject();
  OUTLINED_FUNCTION_1048();
  sub_2166D9530(&qword_280E48570, &qword_27CAC0680);
  v14 = sub_217007E84();

  v15 = OUTLINED_FUNCTION_97();
  v16(v15);
  OUTLINED_FUNCTION_0_5();
  *(v2 + *(v17 + 136)) = v14;

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216D63A60(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = a2;
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678);
  MEMORY[0x28223BE20](v4);
  v6 = &v45[-v5];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AB0);
  MEMORY[0x28223BE20](v50);
  v47 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v49 = &v45[-v9];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AA0);
  MEMORY[0x28223BE20](v48);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v45[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v45[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v45[-v19];
  swift_beginAccess();
  sub_216DD9F00();
  v51 = v20;
  sub_216DD9F00();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2166997CC(v17, &qword_27CAC0670);
LABEL_9:
    v23 = v11;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2166997CC(v17, &qword_27CAC0668);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC8AA0, &unk_21705EAC8, sub_216D62B4C);
    goto LABEL_9;
  }

  sub_216DD9B04();
  v23 = v11;
  if ((v46 & 1) == 0)
  {
    sub_216DD9F00();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC8AA0, &unk_21705EAC8, sub_216D62B4C);
  }

  sub_2166997CC(v6, &qword_27CAC0678);
LABEL_10:
  v24 = v49;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_280E2C160);
  sub_216DD9F00();
  sub_216DD9F00();
  v26 = sub_217007C84();
  v27 = sub_21700EDA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v28 = 136446466;
    sub_216DD9F00();
    v29 = sub_21700E5B4();
    v30 = v24;
    v31 = v29;
    v33 = v32;
    sub_2166997CC(v30, &qword_27CAC8AB0);
    v34 = sub_2166A85FC(v31, v33, &v53);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    sub_216DD9F00();
    v35 = sub_21700E5B4();
    v37 = v36;
    sub_2166997CC(v23, &qword_27CAC8AA0);
    v38 = sub_2166A85FC(v35, v37, &v53);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_216679000, v26, v27, "Update started: %{public}s from state: %{public}s", v28, 0x16u);
    v39 = v49;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v39, -1, -1);
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC8AA0);
    sub_2166997CC(v24, &qword_27CAC8AB0);
  }

  sub_216DD4790();

  v41 = *(*v3 + 272);
  v42 = *(v3 + v41);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v41) = v44;
    sub_216D6374C();
    return sub_2166997CC(v51, &qword_27CAC8AA0);
  }

  return result;
}

void sub_216D64170()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_909(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = OUTLINED_FUNCTION_114_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v63 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_783();
  OUTLINED_FUNCTION_727();
  sub_216DD9F00();
  OUTLINED_FUNCTION_1017();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668);
  OUTLINED_FUNCTION_15_6(v3);
  if (v17)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_668();
      sub_216DD9B04();
      if (v61)
      {
        v19 = &qword_27CAC0678;
        v20 = v4;
      }

      else
      {
        OUTLINED_FUNCTION_576();
        sub_216DD9F00();
        OUTLINED_FUNCTION_303();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
        OUTLINED_FUNCTION_194();
        swift_storeEnumTagMultiPayload();
        v36 = OUTLINED_FUNCTION_3_45();
        __swift_storeEnumTagSinglePayload(v36, v37, v38, v16);
        OUTLINED_FUNCTION_60_13();
        v39 = OUTLINED_FUNCTION_907();
        sub_216D636C8(v39, v40, v41, v42);
        OUTLINED_FUNCTION_31_9();
      }

      goto LABEL_10;
    }

    sub_2166997CC(v3, &qword_27CAC0668);
LABEL_8:
    OUTLINED_FUNCTION_412();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    OUTLINED_FUNCTION_194();
    swift_storeEnumTagMultiPayload();
    v25 = OUTLINED_FUNCTION_3_45();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v16);
    OUTLINED_FUNCTION_60_13();
    v28 = OUTLINED_FUNCTION_907();
    sub_216D636C8(v28, v29, v30, v31);
    goto LABEL_11;
  }

  v19 = &qword_27CAC0670;
  v20 = v3;
LABEL_10:
  sub_2166997CC(v20, v19);
LABEL_11:
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118();
  }

  v43 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v43, qword_280E2C160);
  sub_216DD9F00();

  v44 = sub_217007C84();
  v45 = sub_21700EDA4();

  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_544();
    v46 = swift_slowAlloc();
    OUTLINED_FUNCTION_556();
    v64 = swift_slowAlloc();
    *v46 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(v62);
    v47 = sub_21700E5B4();
    sub_2166A85FC(v47, v48, &v64);
    OUTLINED_FUNCTION_1233();

    OUTLINED_FUNCTION_905();
    OUTLINED_FUNCTION_69();
    sub_216DD9F00();
    sub_21700E5B4();
    v1 = v2;
    OUTLINED_FUNCTION_663();
    sub_2166997CC(v49, v50);
    OUTLINED_FUNCTION_1166();
    OUTLINED_FUNCTION_1010();
    *(v46 + 14) = &qword_27CAC8AA0;
    OUTLINED_FUNCTION_896();
    _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
    OUTLINED_FUNCTION_1008();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v56);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v57);
  }

  else
  {

    sub_2166997CC(v63, &qword_27CAC8AA0);
  }

  OUTLINED_FUNCTION_488();
  sub_216DD4790();

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1245();
  if (v60)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v58) = v59;
    OUTLINED_FUNCTION_159_1();
    sub_2166997CC(v1, &qword_27CAC8AA0);
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_216D64618(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AA0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0678;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8AA0, &unk_21705EAC8, sub_216D62B4C);
        v21 = v7;
        v20 = &qword_27CAC0678;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0668);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8AA0, &unk_21705EAC8, sub_216D62B4C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0670;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AD8);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v44);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC8AA0);
    v33 = sub_2166A85FC(v30, v32, &v44);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC8AA0);
  }

  sub_216DD4790();

  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    return sub_2166997CC(v17, &qword_27CAC8AA0);
  }

  return result;
}

void sub_216D64C50()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_909(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = OUTLINED_FUNCTION_114_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v63 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_783();
  OUTLINED_FUNCTION_727();
  sub_216DD9F00();
  OUTLINED_FUNCTION_1017();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668);
  OUTLINED_FUNCTION_15_6(v3);
  if (v17)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_668();
      sub_216DD9B04();
      if (v61)
      {
        v19 = &qword_27CAC0678;
        v20 = v4;
      }

      else
      {
        OUTLINED_FUNCTION_576();
        sub_216DD9F00();
        OUTLINED_FUNCTION_303();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
        OUTLINED_FUNCTION_194();
        swift_storeEnumTagMultiPayload();
        v36 = OUTLINED_FUNCTION_3_45();
        __swift_storeEnumTagSinglePayload(v36, v37, v38, v16);
        OUTLINED_FUNCTION_60_13();
        v39 = OUTLINED_FUNCTION_907();
        sub_216D636C8(v39, v40, v41, v42);
        OUTLINED_FUNCTION_31_9();
      }

      goto LABEL_10;
    }

    sub_2166997CC(v3, &qword_27CAC0668);
LABEL_8:
    OUTLINED_FUNCTION_412();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    OUTLINED_FUNCTION_194();
    swift_storeEnumTagMultiPayload();
    v25 = OUTLINED_FUNCTION_3_45();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v16);
    OUTLINED_FUNCTION_60_13();
    v28 = OUTLINED_FUNCTION_907();
    sub_216D636C8(v28, v29, v30, v31);
    goto LABEL_11;
  }

  v19 = &qword_27CAC0670;
  v20 = v3;
LABEL_10:
  sub_2166997CC(v20, v19);
LABEL_11:
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118();
  }

  v43 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v43, qword_280E2C160);
  sub_216DD9F00();

  v44 = sub_217007C84();
  v45 = sub_21700EDA4();

  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_544();
    v46 = swift_slowAlloc();
    OUTLINED_FUNCTION_556();
    v64 = swift_slowAlloc();
    *v46 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(v62);
    v47 = sub_21700E5B4();
    sub_2166A85FC(v47, v48, &v64);
    OUTLINED_FUNCTION_1233();

    OUTLINED_FUNCTION_905();
    OUTLINED_FUNCTION_69();
    sub_216DD9F00();
    sub_21700E5B4();
    v1 = v2;
    OUTLINED_FUNCTION_663();
    sub_2166997CC(v49, v50);
    OUTLINED_FUNCTION_1166();
    OUTLINED_FUNCTION_1010();
    *(v46 + 14) = &qword_27CAC8AA0;
    OUTLINED_FUNCTION_896();
    _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
    OUTLINED_FUNCTION_1008();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v56);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v57);
  }

  else
  {

    sub_2166997CC(v63, &qword_27CAC8AA0);
  }

  OUTLINED_FUNCTION_488();
  sub_216DD4790();

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1245();
  if (v60)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v58) = v59;
    OUTLINED_FUNCTION_159_1();
    sub_2166997CC(v1, &qword_27CAC8AA0);
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_216D650F8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0700;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC9470, &unk_21705FCC0, sub_216D62D98);
        v21 = v7;
        v20 = &qword_27CAC0700;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06F0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC9470, &unk_21705FCC0, sub_216D62D98);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06F8;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9468);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v44);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC9470);
    v33 = sub_2166A85FC(v30, v32, &v44);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC9470);
  }

  sub_216DD4790();

  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    return sub_2166997CC(v17, &qword_27CAC9470);
  }

  return result;
}

uint64_t sub_216D65730(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = a2;
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700);
  MEMORY[0x28223BE20](v4);
  v6 = &v45[-v5];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9480);
  MEMORY[0x28223BE20](v50);
  v47 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v49 = &v45[-v9];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470);
  MEMORY[0x28223BE20](v48);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v45[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v45[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v45[-v19];
  swift_beginAccess();
  sub_216DD9F00();
  v51 = v20;
  sub_216DD9F00();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2166997CC(v17, &qword_27CAC06F8);
LABEL_9:
    v23 = v11;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2166997CC(v17, &qword_27CAC06F0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC9470, &unk_21705FCC0, sub_216D62D98);
    goto LABEL_9;
  }

  sub_216DD9B04();
  v23 = v11;
  if ((v46 & 1) == 0)
  {
    sub_216DD9F00();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC9470, &unk_21705FCC0, sub_216D62D98);
  }

  sub_2166997CC(v6, &qword_27CAC0700);
LABEL_10:
  v24 = v49;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_280E2C160);
  sub_216DD9F00();
  sub_216DD9F00();
  v26 = sub_217007C84();
  v27 = sub_21700EDA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v28 = 136446466;
    sub_216DD9F00();
    v29 = sub_21700E5B4();
    v30 = v24;
    v31 = v29;
    v33 = v32;
    sub_2166997CC(v30, &qword_27CAC9480);
    v34 = sub_2166A85FC(v31, v33, &v53);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    sub_216DD9F00();
    v35 = sub_21700E5B4();
    v37 = v36;
    sub_2166997CC(v23, &qword_27CAC9470);
    v38 = sub_2166A85FC(v35, v37, &v53);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_216679000, v26, v27, "Update started: %{public}s from state: %{public}s", v28, 0x16u);
    v39 = v49;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v39, -1, -1);
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC9470);
    sub_2166997CC(v24, &qword_27CAC9480);
  }

  sub_216DD4790();

  v41 = *(*v3 + 272);
  v42 = *(v3 + v41);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v41) = v44;
    sub_216D6374C();
    return sub_2166997CC(v51, &qword_27CAC9470);
  }

  return result;
}

uint64_t sub_216D65E40(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0700;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC9470, &unk_21705FCC0, sub_216D62D98);
        v21 = v7;
        v20 = &qword_27CAC0700;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06F0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC9470, &unk_21705FCC0, sub_216D62D98);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06F8;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A8);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v44);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC9470);
    v33 = sub_2166A85FC(v30, v32, &v44);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC9470);
  }

  sub_216DD4790();

  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    return sub_2166997CC(v17, &qword_27CAC9470);
  }

  return result;
}

uint64_t sub_216D66478(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0700;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC9470, &unk_21705FCC0, sub_216D62D98);
        v21 = v7;
        v20 = &qword_27CAC0700;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06F0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC9470, &unk_21705FCC0, sub_216D62D98);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06F8;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94B0);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v44);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC9470);
    v33 = sub_2166A85FC(v30, v32, &v44);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC9470);
  }

  sub_216DD4790();

  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    return sub_2166997CC(v17, &qword_27CAC9470);
  }

  return result;
}

uint64_t sub_216D66AB0(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0700;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC9470, &unk_21705FCC0, sub_216D62D98);
        v21 = v7;
        v20 = &qword_27CAC0700;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06F0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC9470, &unk_21705FCC0, sub_216D62D98);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06F8;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9648);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v44);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC9470);
    v33 = sub_2166A85FC(v30, v32, &v44);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC9470);
  }

  sub_216DD4790();

  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    return sub_2166997CC(v17, &qword_27CAC9470);
  }

  return result;
}

void sub_216D670E8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_909(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = OUTLINED_FUNCTION_114_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v63 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_783();
  OUTLINED_FUNCTION_727();
  sub_216DD9F00();
  OUTLINED_FUNCTION_1017();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0);
  OUTLINED_FUNCTION_15_6(v3);
  if (v17)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_668();
      sub_216DD9B04();
      if (v61)
      {
        v19 = &qword_27CAC0700;
        v20 = v4;
      }

      else
      {
        OUTLINED_FUNCTION_576();
        sub_216DD9F00();
        OUTLINED_FUNCTION_303();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
        OUTLINED_FUNCTION_194();
        swift_storeEnumTagMultiPayload();
        v36 = OUTLINED_FUNCTION_3_45();
        __swift_storeEnumTagSinglePayload(v36, v37, v38, v16);
        OUTLINED_FUNCTION_179_0();
        v39 = OUTLINED_FUNCTION_907();
        sub_216D636C8(v39, v40, v41, v42);
        OUTLINED_FUNCTION_31_9();
      }

      goto LABEL_10;
    }

    sub_2166997CC(v3, &qword_27CAC06F0);
LABEL_8:
    OUTLINED_FUNCTION_412();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    OUTLINED_FUNCTION_194();
    swift_storeEnumTagMultiPayload();
    v25 = OUTLINED_FUNCTION_3_45();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v16);
    OUTLINED_FUNCTION_179_0();
    v28 = OUTLINED_FUNCTION_907();
    sub_216D636C8(v28, v29, v30, v31);
    goto LABEL_11;
  }

  v19 = &qword_27CAC06F8;
  v20 = v3;
LABEL_10:
  sub_2166997CC(v20, v19);
LABEL_11:
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118();
  }

  v43 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v43, qword_280E2C160);
  sub_216DD9F00();

  v44 = sub_217007C84();
  v45 = sub_21700EDA4();

  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_544();
    v46 = swift_slowAlloc();
    OUTLINED_FUNCTION_556();
    v64 = swift_slowAlloc();
    *v46 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(v62);
    v47 = sub_21700E5B4();
    sub_2166A85FC(v47, v48, &v64);
    OUTLINED_FUNCTION_1233();

    OUTLINED_FUNCTION_905();
    OUTLINED_FUNCTION_69();
    sub_216DD9F00();
    sub_21700E5B4();
    v1 = v2;
    OUTLINED_FUNCTION_663();
    sub_2166997CC(v49, v50);
    OUTLINED_FUNCTION_1166();
    OUTLINED_FUNCTION_1010();
    *(v46 + 14) = &qword_27CAC9470;
    OUTLINED_FUNCTION_896();
    _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
    OUTLINED_FUNCTION_1008();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v56);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440](v57);
  }

  else
  {

    sub_2166997CC(v63, &qword_27CAC9470);
  }

  OUTLINED_FUNCTION_488();
  sub_216DD4790();

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1245();
  if (v60)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v58) = v59;
    OUTLINED_FUNCTION_419();
    sub_2166997CC(v1, &qword_27CAC9470);
    OUTLINED_FUNCTION_26();
  }
}

void sub_216D67590(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC06B8;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
        v21 = v7;
        v20 = &qword_27CAC06B8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9930);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC91C0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC91C0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0);
  }
}

void sub_216D67BB4(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = a2;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8);
  MEMORY[0x28223BE20](v4);
  v6 = &v44[-v5];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91D0);
  MEMORY[0x28223BE20](v49);
  v46 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v48 = &v44[-v9];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0);
  MEMORY[0x28223BE20](v47);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v44[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v44[-v19];
  swift_beginAccess();
  sub_216DD9F00();
  v50 = v20;
  sub_216DD9F00();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2166997CC(v17, &qword_27CAC06B0);
LABEL_9:
    v23 = v11;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2166997CC(v17, &qword_27CAC06A8);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
    goto LABEL_9;
  }

  sub_216DD9B04();
  v23 = v11;
  if ((v45 & 1) == 0)
  {
    sub_216DD9F00();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
  }

  sub_2166997CC(v6, &qword_27CAC06B8);
LABEL_10:
  v24 = v48;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_280E2C160);
  sub_216DD9F00();
  sub_216DD9F00();
  v26 = sub_217007C84();
  v27 = sub_21700EDA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v28 = 136446466;
    sub_216DD9F00();
    v29 = sub_21700E5B4();
    v30 = v24;
    v31 = v29;
    v33 = v32;
    sub_2166997CC(v30, &qword_27CAC91D0);
    v34 = sub_2166A85FC(v31, v33, &v52);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    sub_216DD9F00();
    v35 = sub_21700E5B4();
    v37 = v36;
    sub_2166997CC(v23, &qword_27CAC91C0);
    v38 = sub_2166A85FC(v35, v37, &v52);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_216679000, v26, v27, "Update started: %{public}s from state: %{public}s", v28, 0x16u);
    v39 = v48;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v39, -1, -1);
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC91C0);
    sub_2166997CC(v24, &qword_27CAC91D0);
  }

  sub_216DD4790();
  v40 = *(*v3 + 272);
  v41 = *(v3 + v40);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v40) = v43;
    sub_216D6374C();
    sub_2166997CC(v50, &qword_27CAC91C0);
  }
}

void sub_216D682B0(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC06B8;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
        v21 = v7;
        v20 = &qword_27CAC06B8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91E0);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC91C0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC91C0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0);
  }
}

void sub_216D688D4(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC06B8;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
        v21 = v7;
        v20 = &qword_27CAC06B8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91E8);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC91C0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC91C0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0);
  }
}

void sub_216D68EF8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0698;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v21 = v7;
        v20 = &qword_27CAC0698;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90D0);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC8EB8);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC8EB8);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8);
  }
}

void sub_216D6951C(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = a2;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698);
  MEMORY[0x28223BE20](v4);
  v6 = &v44[-v5];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EC8);
  MEMORY[0x28223BE20](v49);
  v46 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v48 = &v44[-v9];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8);
  MEMORY[0x28223BE20](v47);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v44[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v44[-v19];
  swift_beginAccess();
  sub_216DD9F00();
  v50 = v20;
  sub_216DD9F00();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2166997CC(v17, &qword_27CAC06A0);
LABEL_9:
    v23 = v11;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2166997CC(v17, &qword_27CAC0690);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_9;
  }

  sub_216DD9B04();
  v23 = v11;
  if ((v45 & 1) == 0)
  {
    sub_216DD9F00();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
  }

  sub_2166997CC(v6, &qword_27CAC0698);
LABEL_10:
  v24 = v48;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_280E2C160);
  sub_216DD9F00();
  sub_216DD9F00();
  v26 = sub_217007C84();
  v27 = sub_21700EDA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v28 = 136446466;
    sub_216DD9F00();
    v29 = sub_21700E5B4();
    v30 = v24;
    v31 = v29;
    v33 = v32;
    sub_2166997CC(v30, &qword_27CAC8EC8);
    v34 = sub_2166A85FC(v31, v33, &v52);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    sub_216DD9F00();
    v35 = sub_21700E5B4();
    v37 = v36;
    sub_2166997CC(v23, &qword_27CAC8EB8);
    v38 = sub_2166A85FC(v35, v37, &v52);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_216679000, v26, v27, "Update started: %{public}s from state: %{public}s", v28, 0x16u);
    v39 = v48;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v39, -1, -1);
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC8EB8);
    sub_2166997CC(v24, &qword_27CAC8EC8);
  }

  sub_216DD4790();
  v40 = *(*v3 + 272);
  v41 = *(v3 + v40);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v40) = v43;
    sub_216D6374C();
    sub_2166997CC(v50, &qword_27CAC8EB8);
  }
}

void sub_216D69C18(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0698;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v21 = v7;
        v20 = &qword_27CAC0698;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90D8);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC8EB8);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC8EB8);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8);
  }
}

void sub_216D6A23C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0698;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v21 = v7;
        v20 = &qword_27CAC0698;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90F8);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC8EB8);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC8EB8);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8);
  }
}

void sub_216D6A860(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0698;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v21 = v7;
        v20 = &qword_27CAC0698;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9100);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC8EB8);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC8EB8);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8);
  }
}

void sub_216D6AE84(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0698;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v21 = v7;
        v20 = &qword_27CAC0698;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB0);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC8EB8);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC8EB8);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8);
  }
}

void sub_216D6B4A8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0698;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
        v21 = v7;
        v20 = &qword_27CAC0698;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0690);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06A0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EC0);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC8EB8);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC8EB8);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC8EB8);
  }
}

void sub_216D6BACC(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC06B8;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
        v21 = v7;
        v20 = &qword_27CAC06B8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91B8);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC91C0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC91C0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0);
  }
}

void sub_216D6C0F0(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC06B8;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
        v21 = v7;
        v20 = &qword_27CAC06B8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C8);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC91C0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC91C0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0);
  }
}

void sub_216D6C714(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC06B8;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
        v21 = v7;
        v20 = &qword_27CAC06B8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92E0);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC91C0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC91C0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0);
  }
}

void sub_216D6CD38(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC06B8;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
        v21 = v7;
        v20 = &qword_27CAC06B8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92E8);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC91C0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC91C0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0);
  }
}

void sub_216D6D35C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC06B8;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
        v21 = v7;
        v20 = &qword_27CAC06B8;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &unk_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9940);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC91C0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC91C0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0);
  }
}

void sub_216D6D980()
{
  OUTLINED_FUNCTION_49();
  v78 = v4;
  v79 = v5;
  v7 = v6;
  v8 = v0;
  v74 = v9;
  v81 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_40();
  v80 = v7(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v75 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_53_1();
  v15 = OUTLINED_FUNCTION_45_0();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(v15);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v77 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - v21;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_783();
  OUTLINED_FUNCTION_47_2();
  sub_216DD9F00();
  v82 = v22;
  OUTLINED_FUNCTION_942();
  sub_216DD9F00();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8);
  OUTLINED_FUNCTION_31_2(v2, 1, v23);
  if (v24)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_19();
      sub_216DD9B04();
      if (v74)
      {
        v26 = &qword_27CAC06B8;
        v27 = v1;
      }

      else
      {
        OUTLINED_FUNCTION_39();
        sub_216DD9F00();
        OUTLINED_FUNCTION_303();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
        OUTLINED_FUNCTION_52_3();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_41();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v23);
        OUTLINED_FUNCTION_344();
        v46 = OUTLINED_FUNCTION_947();
        sub_216D636C8(v46, v47, v48, v49);
        v27 = OUTLINED_FUNCTION_97_1();
      }

      goto LABEL_10;
    }

    sub_2166997CC(v2, &qword_27CAC06A8);
LABEL_8:
    OUTLINED_FUNCTION_412();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    OUTLINED_FUNCTION_52_3();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v23);
    OUTLINED_FUNCTION_344();
    v35 = OUTLINED_FUNCTION_947();
    sub_216D636C8(v35, v36, v37, v38);
    goto LABEL_11;
  }

  v26 = &qword_27CAC06B0;
  v27 = v2;
LABEL_10:
  sub_2166997CC(v27, v26);
LABEL_11:
  v50 = v77;
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118();
  }

  v51 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v51, qword_280E2C160);
  v52 = OUTLINED_FUNCTION_784();
  sub_216DDA0A0(v52, v53);
  sub_216DD9F00();
  v54 = sub_217007C84();
  v55 = sub_21700EDA4();
  if (os_log_type_enabled(v54, v55))
  {
    OUTLINED_FUNCTION_544();
    v56 = swift_slowAlloc();
    OUTLINED_FUNCTION_556();
    v83 = swift_slowAlloc();
    *v56 = 136446466;
    sub_216DDA0A0(v3, v75);
    OUTLINED_FUNCTION_696();
    sub_21700E5B4();
    sub_216DDA050();
    v57 = OUTLINED_FUNCTION_696();
    sub_2166A85FC(v57, v58, v59);
    OUTLINED_FUNCTION_1046();
    OUTLINED_FUNCTION_905();
    OUTLINED_FUNCTION_108();
    sub_216DD9F00();
    sub_21700E5B4();
    v60 = OUTLINED_FUNCTION_98();
    sub_2166997CC(v60, v61);
    v62 = OUTLINED_FUNCTION_668();
    sub_2166A85FC(v62, v63, v64);
    OUTLINED_FUNCTION_1045();
    *(v56 + 14) = &qword_27CAC91C0;
    OUTLINED_FUNCTION_896();
    _os_log_impl(v65, v66, v67, v68, v69, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  else
  {

    sub_2166997CC(v50, &qword_27CAC91C0);
    sub_216DDA050();
  }

  sub_216DD4790();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1245();
  if (v72)
  {
    __break(1u);
  }

  else
  {
    *(v8 + v70) = v71;
    OUTLINED_FUNCTION_858();
    sub_2166997CC(v82, &qword_27CAC91C0);
    OUTLINED_FUNCTION_26();
  }
}

void sub_216D6DED8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0710;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
        v21 = v7;
        v20 = &qword_27CAC0710;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96A8);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC96B0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC96B0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0);
  }
}

void sub_216D6E4FC(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = a2;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710);
  MEMORY[0x28223BE20](v4);
  v6 = &v44[-v5];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96C0);
  MEMORY[0x28223BE20](v49);
  v46 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v48 = &v44[-v9];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0);
  MEMORY[0x28223BE20](v47);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v44[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v44[-v19];
  swift_beginAccess();
  sub_216DD9F00();
  v50 = v20;
  sub_216DD9F00();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2166997CC(v17, &qword_27CAC0718);
LABEL_9:
    v23 = v11;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2166997CC(v17, &qword_27CAC0708);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
    goto LABEL_9;
  }

  sub_216DD9B04();
  v23 = v11;
  if ((v45 & 1) == 0)
  {
    sub_216DD9F00();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
  }

  sub_2166997CC(v6, &qword_27CAC0710);
LABEL_10:
  v24 = v48;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_280E2C160);
  sub_216DD9F00();
  sub_216DD9F00();
  v26 = sub_217007C84();
  v27 = sub_21700EDA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v28 = 136446466;
    sub_216DD9F00();
    v29 = sub_21700E5B4();
    v30 = v24;
    v31 = v29;
    v33 = v32;
    sub_2166997CC(v30, &qword_27CAC96C0);
    v34 = sub_2166A85FC(v31, v33, &v52);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    sub_216DD9F00();
    v35 = sub_21700E5B4();
    v37 = v36;
    sub_2166997CC(v23, &qword_27CAC96B0);
    v38 = sub_2166A85FC(v35, v37, &v52);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_216679000, v26, v27, "Update started: %{public}s from state: %{public}s", v28, 0x16u);
    v39 = v48;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v39, -1, -1);
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC96B0);
    sub_2166997CC(v24, &qword_27CAC96C0);
  }

  sub_216DD4790();
  v40 = *(*v3 + 272);
  v41 = *(v3 + v40);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v40) = v43;
    sub_216D6374C();
    sub_2166997CC(v50, &qword_27CAC96B0);
  }
}

void sub_216D6EBF8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0710;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
        v21 = v7;
        v20 = &qword_27CAC0710;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B8);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC96B0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC96B0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0);
  }
}

void sub_216D6F21C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0710;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
        v21 = v7;
        v20 = &qword_27CAC0710;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9898);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC96B0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC96B0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0);
  }
}

void sub_216D6F840(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0710;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
        v21 = v7;
        v20 = &qword_27CAC0710;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98A0);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC96B0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC96B0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0);
  }
}

void sub_216D6FE64(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0710;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
        v21 = v7;
        v20 = &qword_27CAC0710;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98C0);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC96B0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC96B0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0);
  }
}

void sub_216D70488(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v39) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v39)
      {
        v20 = &qword_27CAC0710;
        v21 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
        v21 = v7;
        v20 = &qword_27CAC0710;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &unk_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = v14;
LABEL_10:
  sub_2166997CC(v21, v20);
LABEL_11:
  v22 = v41;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E2C160);
  sub_216DD9F00();

  v24 = sub_217007C84();
  v25 = sub_21700EDA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = a1;
    v43 = v39;
    *v26 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98C8);
    v27 = sub_21700E5B4();
    v29 = sub_2166A85FC(v27, v28, &v43);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    sub_216DD9F00();
    v30 = sub_21700E5B4();
    v32 = v31;
    sub_2166997CC(v22, &qword_27CAC96B0);
    v33 = sub_2166A85FC(v30, v32, &v43);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_216679000, v24, v25, "Update started: %{public}s from state: %{public}s", v26, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  else
  {

    sub_2166997CC(v22, &qword_27CAC96B0);
  }

  sub_216DD4790();
  v35 = *(*v3 + 272);
  v36 = *(v3 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v35) = v38;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0);
  }
}

uint64_t sub_216D70AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  type metadata accessor for SectionChangeInstruction(0);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D70C08, v6, v5);
}

uint64_t sub_216D70C08()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v0 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v0);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_317();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0);
  v2 = OUTLINED_FUNCTION_152_1(v1, qword_280E73E38);
  v4 = v3(v2);
  OUTLINED_FUNCTION_414(v4, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_21705F0E0);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_208_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_90_10(v6);
  OUTLINED_FUNCTION_47_8();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}