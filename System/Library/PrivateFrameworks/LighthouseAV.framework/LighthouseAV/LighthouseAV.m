uint64_t sub_255EA3758()
{
  v0 = sub_255ECF198();
  __swift_allocate_value_buffer(v0, qword_27F815838);
  __swift_project_value_buffer(v0, qword_27F815838);

  return sub_255ECF188();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_255EA3840()
{
  v0 = sub_255ECF198();
  __swift_allocate_value_buffer(v0, qword_27F815858);
  __swift_project_value_buffer(v0, qword_27F815858);

  return sub_255ECF188();
}

uint64_t sub_255EA38F0()
{
  v0 = sub_255ECF198();
  __swift_allocate_value_buffer(v0, qword_27F815878);
  __swift_project_value_buffer(v0, qword_27F815878);

  return sub_255ECF188();
}

uint64_t sub_255EA3A58(uint64_t a1, uint64_t *a2)
{
  v3 = sub_255ECF198();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);

  return sub_255ECF188();
}

uint64_t sub_255EA3B04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_255ECF198();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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

uint64_t sub_255EA3C18@<X0>(uint64_t a1@<X8>)
{
  v2 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v3 = [v2 Audio];
  swift_unknownObjectRelease();
  v4 = [v3 AdaptiveVolume];
  swift_unknownObjectRelease();
  v5 = [v4 publisher];

  v6 = swift_allocObject();
  *(v6 + 16) = sub_255EAF5DC(MEMORY[0x277D84F90]);
  v17 = sub_255EAF6E0;
  v18 = v6;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_255EB29BC;
  v16 = &block_descriptor;
  v7 = _Block_copy(&v13);

  v17 = sub_255EAF700;
  v18 = v6;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_255EB29BC;
  v16 = &block_descriptor_3;
  v8 = _Block_copy(&v13);

  v9 = [v5 sinkWithCompletion:v7 receiveInput:v8];
  _Block_release(v8);
  _Block_release(v7);

  swift_beginAccess();
  v10 = *(v6 + 16);

  AVLogReader.convertBiomeEventsToDataFrame(_:)(v11, a1);
}

uint64_t sub_255EA3E78()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_255EA3EB0(uint64_t a1, uint64_t a2)
{
  if (qword_27F815850 != -1)
  {
    swift_once();
  }

  v3 = sub_255ECF198();
  __swift_project_value_buffer(v3, qword_27F815858);

  v4 = sub_255ECF178();
  v5 = sub_255ECF3F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    *(v6 + 4) = *(*(a2 + 16) + 16);

    _os_log_impl(&dword_255EA2000, v4, v5, "Completed reading from Biome. Found %ld events.", v6, 0xCu);
    MEMORY[0x259C511E0](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_255EA3FF8(void *a1, uint64_t a2)
{
  v2 = [a1 jsonDictionary];
  v3 = sub_255ECF1F8();

  v4 = 0;
  v5 = 0;
  v6 = MEMORY[0x277D837E0];
  while (1)
  {
    v7 = byte_2867F8F18[v5 + 32];
    *&v57[0] = sub_255EB29D0(v7);
    *(&v57[0] + 1) = v8;
    sub_255ECF498();
    if (*(v3 + 16))
    {
      v9 = sub_255EACB4C(&v55);
      if (v10)
      {
        break;
      }
    }

    sub_255EB28C8(&v55);
LABEL_3:
    if (++v5 == 36)
    {

      [a1 timestamp];
      v56 = MEMORY[0x277D839F8];
      *&v55 = v34;
      v11 = a2;
      swift_beginAccess();
      v35 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v54[0] = *(a2 + 16);
      v37 = *&v54[0];
      *(a2 + 16) = 0x8000000000000000;
      v16 = sub_255EACAD4(0x6D617473656D6974, 0xE900000000000070);
      v39 = v37[2];
      v40 = (v38 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_35;
      }

      v42 = v38;
      if (v37[3] >= v41)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_255EAD614();
          v37 = *&v54[0];
        }
      }

      else
      {
        sub_255EACD10(v41, isUniquelyReferenced_nonNull_native);
        v37 = *&v54[0];
        v43 = sub_255EACAD4(0x6D617473656D6974, 0xE900000000000070);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_38;
        }

        v16 = v43;
      }

      *(a2 + 16) = v37;
      if (v42)
      {
        goto LABEL_29;
      }

      v37[(v16 >> 6) + 8] |= 1 << v16;
      v45 = (v37[6] + 16 * v16);
      *v45 = 0x6D617473656D6974;
      v45[1] = 0xE900000000000070;
      *(v37[7] + 8 * v16) = MEMORY[0x277D84F90];
      v46 = v37[2];
      v27 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (!v27)
      {
        v37[2] = v47;
LABEL_29:
        v3 = v37[7];
        v11 = *(v3 + 8 * v16);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 8 * v16) = v11;
        if ((v48 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      __break(1u);
LABEL_38:
      result = sub_255ECF598();
      __break(1u);
      return result;
    }
  }

  v11 = v6;
  sub_255EAF798(*(v3 + 56) + 32 * v9, v54);
  sub_255EB28C8(&v55);
  sub_255EB2798(v54, v57);
  v12 = sub_255EB29D0(v7);
  v14 = v13;
  sub_255EAF798(v57, &v55);
  swift_beginAccess();
  sub_255EB291C(v4);
  v15 = *(a2 + 16);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  v4 = sub_255EACAD4(v12, v14);
  v19 = v17[2];
  v20 = (v18 & 1) == 0;
  v21 = v19 + v20;
  if (!__OFADD__(v19, v20))
  {
    v22 = v18;
    if (v17[3] >= v21)
    {
      if ((v16 & 1) == 0)
      {
        sub_255EAD614();
      }
    }

    else
    {
      sub_255EACD10(v21, v16);
      v23 = sub_255EACAD4(v12, v14);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_38;
      }

      v4 = v23;
    }

    *(a2 + 16) = v17;
    if ((v22 & 1) == 0)
    {
      v17[(v4 >> 6) + 8] |= 1 << v4;
      v25 = (v17[6] + 16 * v4);
      *v25 = v12;
      v25[1] = v14;
      *(v17[7] + 8 * v4) = MEMORY[0x277D84F90];
      v26 = v17[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_34;
      }

      v17[2] = v28;
    }

    v29 = v17[7];
    v30 = *(v29 + 8 * v4);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v29 + 8 * v4) = v30;
    if ((v31 & 1) == 0)
    {
      v30 = sub_255EAC2CC(0, *(v30 + 2) + 1, 1, v30);
      *(v29 + 8 * v4) = v30;
    }

    v33 = *(v30 + 2);
    v32 = *(v30 + 3);
    if (v33 >= v32 >> 1)
    {
      v30 = sub_255EAC2CC((v32 > 1), v33 + 1, 1, v30);
      *(v29 + 8 * v4) = v30;
    }

    *(v30 + 2) = v33 + 1;
    sub_255EB2798(&v55, &v30[32 * v33 + 32]);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0(v57);
    v4 = sub_255EA4514;
    v6 = v11;
    goto LABEL_3;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  v11 = sub_255EAC2CC(0, *(v11 + 2) + 1, 1, v11);
  *(v3 + 8 * v16) = v11;
LABEL_30:
  v50 = *(v11 + 2);
  v49 = *(v11 + 3);
  if (v50 >= v49 >> 1)
  {
    v11 = sub_255EAC2CC((v49 > 1), v50 + 1, 1, v11);
    *(v3 + 8 * v16) = v11;
  }

  *(v11 + 2) = v50 + 1;
  sub_255EB2798(&v55, &v11[32 * v50 + 32]);
  swift_endAccess();
  return sub_255EB291C(v4);
}

void sub_255EA4528(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t AVLogReader.convertBiomeEventsToDataFrame(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_255ECF0F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v91 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8158F8, &qword_255ECFB70);
  v90 = *(v93 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v83 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815900, &qword_255ECFB78);
  v89 = *(v94 - 8);
  v10 = *(v89 + 64);
  v11 = MEMORY[0x28223BE20](v94);
  v88 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v96 = &v83 - v13;
  v104 = sub_255ECEE68();
  v14 = *(v104 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v104);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815908, &qword_255ECFB80);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v99 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v102 = &v83 - v23;
  v24 = sub_255ECF078();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v103 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECF068();
  v105 = a1;
  v28 = sub_255EAA038(a1);
  v100 = v19;
  v101 = v25;
  if (!v28)
  {
    goto LABEL_5;
  }

  v29 = *(v28 + 16);

  if (!v29)
  {
    goto LABEL_5;
  }

  v30 = sub_255EACA50(v29, 0);
  if (sub_255EAF538(v107, (v30 + 4), v29, 0, v29 - 1) != v29)
  {
    __break(1u);
LABEL_5:
    v30 = MEMORY[0x277D84F90];
  }

  v107[0] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815910, &qword_255ECFB88);
  v97 = sub_255EB2624(&qword_27F815918, &qword_27F815910, &qword_255ECFB88);
  v98 = v31;
  sub_255ECF108();
  sub_255ECF028();
  if (*(v105 + 16))
  {
    v32 = sub_255EACAD4(0x6D617473656D6974, 0xE900000000000070);
    if (v33)
    {
      v95 = v18;
      v85 = v5;
      v34 = *(*(v105 + 56) + 8 * v32);
      v35 = *(v34 + 16);
      v36 = MEMORY[0x277D84F90];
      v86 = a2;
      if (v35)
      {
        v84 = v24;
        v87 = v4;
        v108 = MEMORY[0x277D84F90];

        sub_255EADBB8(0, v35, 0);
        v36 = v108;
        v83 = v34;
        v37 = v34 + 32;
        do
        {
          sub_255EAF798(v37, v107);
          sub_255EAF798(v107, v106);
          swift_dynamicCast();
          sub_255ECEBB8();
          __swift_destroy_boxed_opaque_existential_0(v107);
          v108 = v36;
          v39 = *(v36 + 16);
          v38 = *(v36 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_255EADBB8(v38 > 1, v39 + 1, 1);
            v36 = v108;
          }

          *(v36 + 16) = v39 + 1;
          (*(v14 + 32))(v36 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v39, v17, v104);
          v37 += 32;
          --v35;
        }

        while (v35);

        v4 = v87;
        v24 = v84;
      }

      v107[0] = v36;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815920, &qword_255ECFB90);
      v48 = sub_255EB2624(&qword_27F815928, &qword_27F815920, &qword_255ECFB90);
      v84 = v47;
      v83 = v48;
      sub_255ECF108();
      sub_255ECF028();
      v49 = 0;
      v89 += 8;
      v87 = (v90 + 8);
      ++v100;
      while (1)
      {
        v50 = byte_2867F8F18[v49 + 32];
        if (sub_255EAB918(v50, &unk_2867F8F60))
        {
          v51 = sub_255EB29D0(v50);
          if (*(v105 + 16))
          {
            v53 = sub_255EACAD4(v51, v52);
            v55 = v54;

            if (v55)
            {
              v56 = *(*(v105 + 56) + 8 * v53);

              v58 = sub_255EABAE8(v57);

              if (v58)
              {
                sub_255EB29D0(v50);
                v107[0] = v58;
                v59 = v99;
                sub_255ECF108();
                sub_255ECF028();
                (*v100)(v59, v95);
              }
            }

            goto LABEL_21;
          }
        }

        else if (sub_255EAB918(v50, &unk_2867F8FA8))
        {
          v60 = sub_255EB29D0(v50);
          if (*(v105 + 16))
          {
            v62 = sub_255EACAD4(v60, v61);
            v64 = v63;

            if (v64)
            {
              v65 = *(*(v105 + 56) + 8 * v62);

              v67 = sub_255EABBF4(v66);

              if (v67)
              {
                v90 = sub_255EB29D0(v50);
                v107[0] = v67;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815930, &unk_255ECFB98);
                sub_255EB2624(&qword_27F815938, &qword_27F815930, &unk_255ECFB98);
                v68 = v92;
                sub_255ECF108();
                sub_255ECF028();
                (*v87)(v68, v93);
              }
            }

            goto LABEL_21;
          }
        }

        else
        {
          if (!sub_255EAB918(v50, &unk_2867F8FD0))
          {
            goto LABEL_21;
          }

          v69 = sub_255EB29D0(v50);
          if (*(v105 + 16))
          {
            v71 = sub_255EACAD4(v69, v70);
            v73 = v72;

            if (v73)
            {
              v74 = *(*(v105 + 56) + 8 * v71);

              v76 = sub_255EABD08(v75);

              if (v76)
              {
                sub_255EB29D0(v50);
                v107[0] = v76;
                v77 = v88;
                sub_255ECF108();
                sub_255ECF028();
                (*v89)(v77, v94);
              }
            }

            goto LABEL_21;
          }
        }

LABEL_21:
        if (++v49 == 36)
        {
          v78 = v85;
          v79 = v91;
          (*(v85 + 104))(v91, *MEMORY[0x277CE18E0], v4);
          v80 = v86;
          v81 = v103;
          sub_255ECEF38();
          (*(v78 + 8))(v79, v4);
          (*v89)(v96, v94);
          (*v100)(v102, v95);
          v82 = v101;
          (*(v101 + 8))(v81, v24);
          return (*(v82 + 56))(v80, 0, 1, v24);
        }
      }
    }
  }

  v40 = v100;
  if (qword_27F815850 != -1)
  {
    swift_once();
  }

  v41 = sub_255ECF198();
  __swift_project_value_buffer(v41, qword_27F815858);
  v42 = sub_255ECF178();
  v43 = sub_255ECF408();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_255EA2000, v42, v43, "Got no timestamps when reading from biome. Returning nil", v44, 2u);
    MEMORY[0x259C511E0](v44, -1, -1);
  }

  v40[1](v102, v18);
  v45 = v101;
  (*(v101 + 8))(v103, v24);
  return (*(v45 + 56))(a2, 1, 1, v24);
}

void sub_255EA51D4()
{
  if (qword_27F815850 != -1)
  {
    swift_once();
  }

  v0 = sub_255ECF198();
  __swift_project_value_buffer(v0, qword_27F815858);
  oslog = sub_255ECF178();
  v1 = sub_255ECF3F8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_255EA2000, oslog, v1, "Completed reading from Biome.", v2, 2u);
    MEMORY[0x259C511E0](v2, -1, -1);
  }
}

void sub_255EA52BC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB8, &qword_255ECFF48);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v36 - v6;
  v7 = sub_255ECEE68();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815950, &qword_255ECFBB8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - v16;
  v18 = type metadata accessor for AVBiomeEventSummary();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 eventBody];
  if (v23)
  {
    v36 = a2;
    v24 = v23;
    [a1 timestamp];
    sub_255ECEBB8();
    v37 = v24;
    AVBiomeEventSummary.init(eventBody:inputTimestamp:)(v24, v13, v17);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_255EB1E28(v17, &qword_27F815950, &qword_255ECFBB8);
      if (qword_27F815850 != -1)
      {
        swift_once();
      }

      v25 = sub_255ECF198();
      __swift_project_value_buffer(v25, qword_27F815858);
      v26 = sub_255ECF178();
      v27 = sub_255ECF408();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_255EA2000, v26, v27, "Got invalid headphone mode while running, skipping event", v28, 2u);
        MEMORY[0x259C511E0](v28, -1, -1);
      }
    }

    else
    {
      sub_255EB272C(v17, v22, type metadata accessor for AVBiomeEventSummary);
      [a1 timestamp];
      sub_255ECEBB8();
      v29 = *(v4 + 48);
      v30 = v39;
      (*(v38 + 32))(v39, v11, v7);
      sub_255EB26C4(v22, v30 + v29, type metadata accessor for AVBiomeEventSummary);
      v31 = v36;
      swift_beginAccess();
      v32 = *(v31 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v31 + 16) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_255EAC3DC(0, v32[2] + 1, 1, v32);
        *(v31 + 16) = v32;
      }

      v35 = v32[2];
      v34 = v32[3];
      if (v35 >= v34 >> 1)
      {
        v32 = sub_255EAC3DC(v34 > 1, v35 + 1, 1, v32);
      }

      v32[2] = v35 + 1;
      sub_255EB2860(v30, v32 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v35, &qword_27F815AB8, &qword_255ECFF48);
      *(v31 + 16) = v32;
      swift_endAccess();

      sub_255EAFF7C(v22);
    }
  }
}

uint64_t AVBiomeEventSummary.init(eventBody:inputTimestamp:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AVBiomeEventSummary();
  v21 = *(v6 - 1);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 headphoneMode];
  if (v10 < 4)
  {
    *(v9 + 25) = v10;
    v11 = [a1 streamType];
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(v9 + 26) = 2;
        v12 = [a1 predVolSiriPrct];
        goto LABEL_13;
      }
    }

    else
    {
      if (!v11)
      {
        *(v9 + 26) = 0;
        v12 = [a1 predVolMediaPrct];
        goto LABEL_13;
      }

      if (v11 == 1)
      {
        *(v9 + 26) = 1;
        v12 = [a1 predVolTelephonyPrct];
LABEL_13:
        *(v9 + v6[15]) = v12;
        *v9 = [a1 smoothEae];
        v9[1] = [a1 personalizationCoeff] / 50.0;
        v9[2] = [a1 anchorEnv];
        v9[3] = [a1 anchorVol];
        v16 = [a1 smoothEae];
        v9[4] = v16 - [a1 anchorEnv];
        *(v9 + 5) = [a1 currentVolumePrct];
        *(v9 + 24) = [a1 singleBudFlag] != 0;
        v17 = v6[13];
        v18 = sub_255ECEE68();
        v19 = *(v18 - 8);
        (*(v19 + 16))(v9 + v17, a2, v18);
        LODWORD(v17) = [a1 manualVolumeChangeFlag];

        (*(v19 + 8))(a2, v18);
        *(v9 + v6[14]) = v17 == 1;
        sub_255EB272C(v9, a3, type metadata accessor for AVBiomeEventSummary);
        return (*(v21 + 56))(a3, 0, 1, v6);
      }
    }

    *(v9 + 26) = 3;
    v12 = 255;
    goto LABEL_13;
  }

  v13 = sub_255ECEE68();
  (*(*(v13 - 8) + 8))(a2, v13);

  v14 = *(v21 + 56);

  return v14(a3, 1, 1, v6);
}

uint64_t sub_255EA5B1C(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB8, &qword_255ECFF48);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815958, &qword_255ECFBC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_255EADC18(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_255EB27F8(v13, v5, &qword_27F815AB8, &qword_255ECFF48);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_255EADC18(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_255EB2860(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_27F815958, &qword_255ECFBC0);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_255EA5D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815948, &qword_255ECFBB0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815950, &qword_255ECFBB8) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v9 = type metadata accessor for AVBiomeEventSummary();
  v3[16] = v9;
  v10 = *(v9 - 8);
  v3[17] = v10;
  v11 = *(v10 + 64) + 15;
  v3[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815958, &qword_255ECFBC0);
  v3[19] = v12;
  v13 = *(v12 - 8);
  v3[20] = v13;
  v14 = *(v13 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v16 = sub_255ECEE68();
  v3[27] = v16;
  v17 = *(v16 - 8);
  v3[28] = v17;
  v18 = *(v17 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255EA6028, 0, 0);
}

uint64_t sub_255EA6028()
{
  v1 = *(v0 + 80);
  (*(*(v0 + 224) + 16))(*(v0 + 240), *(v0 + 72), *(v0 + 216));
  v2 = MEMORY[0x277D84F90];
  v3 = sub_255EAF9C0(MEMORY[0x277D84F90]);
  v4 = sub_255EAE2F8();
  *(v0 + 48) = v4;
  v164 = (v0 + 48);
  v161 = sub_255EAE210();
  *(v0 + 56) = v161;
  v166 = (v0 + 56);
  if (sub_255ECF388())
  {
    goto LABEL_2;
  }

  while (1)
  {
    v169 = v3;
    v40 = sub_255EAFAC4(*(v0 + 240), *(v0 + 80));
    *(v0 + 248) = v40;
    v41 = *(v40 + 16);
    *(v0 + 256) = v41;
    v162 = v2;
    if (!v41)
    {
      goto LABEL_112;
    }

    v43 = *(v0 + 216);
    v42 = *(v0 + 224);
    v44 = *(v0 + 200);
    v45 = *(v0 + 208);
    v47 = *(v0 + 152);
    v46 = *(v0 + 160);
    v48 = *(v46 + 80);
    *(v0 + 416) = v48;
    v174 = v40;
    v49 = *(v46 + 72);
    *(v0 + 264) = v49;
    sub_255EB27F8(v40 + ((v48 + 32) & ~v48) + v49 * (v41 - 1), v44, &qword_27F815958, &qword_255ECFBC0);
    v50 = *(v42 + 32);
    v51 = *(v47 + 48);
    *(v0 + 272) = v50;
    *(v0 + 280) = (v42 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v50(v45, v44, v43);
    (*(v42 + 56))(v45, 0, 1, v43);
    sub_255EAFF7C(v44 + v51);
    if ((*(v42 + 48))(v45, 1, v43) == 1)
    {
      (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

      goto LABEL_114;
    }

    v50(*(v0 + 232), *(v0 + 208), *(v0 + 216));
    if (qword_27F815850 != -1)
    {
      swift_once();
    }

    v52 = sub_255ECF198();
    *(v0 + 288) = __swift_project_value_buffer(v52, qword_27F815858);

    v53 = sub_255ECF178();
    v54 = sub_255ECF3F8();
    v3 = v169;
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = *(v174 + 16);

      _os_log_impl(&dword_255EA2000, v53, v54, "Read %ld events from biome", v55, 0xCu);
      MEMORY[0x259C511E0](v55, -1, -1);
    }

    else
    {
    }

    v56 = v162;

    v57 = *(v0 + 152);
    v58 = *(v0 + 136);
    *(v0 + 296) = *(v174 + 16);
    *(v0 + 420) = *(v57 + 48);
    *(v0 + 424) = *(v58 + 80);
    *(v0 + 320) = v162;
    *(v0 + 328) = v161;
    *(v0 + 304) = v169;
    *(v0 + 312) = 0;
    v59 = *(v0 + 248);
    if (!*(v59 + 16))
    {
LABEL_115:
      __break(1u);
LABEL_116:
      v2 = v56;
LABEL_2:
      v162 = v2;
      result = sub_255EAF9C0(MEMORY[0x277D84F90]);
      v6 = result;
      v7 = 0;
      v168 = v3;
      v10 = *(v3 + 64);
      v9 = v3 + 64;
      v8 = v10;
      v11 = -1;
      v12 = -1 << *(v9 - 32);
      if (-v12 < 64)
      {
        v11 = ~(-1 << -v12);
      }

      v13 = v11 & v8;
      v14 = (63 - v12) >> 6;
      v163 = v9;
      v160 = v14;
LABEL_6:
      if (!v13)
      {
        while (1)
        {
          v15 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_123;
          }

          if (v15 >= v14)
          {
            break;
          }

          v13 = *(v9 + 8 * v15);
          ++v7;
          if (v13)
          {
            goto LABEL_11;
          }
        }

        (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

        v169 = v6;
        goto LABEL_99;
      }

      v15 = v7;
LABEL_11:
      v165 = v15;
      v167 = (v13 - 1) & v13;
      v16 = __clz(__rbit64(v13)) | (v15 << 6);
      v17 = (*(v168 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v168 + 56) + 4 * v16);
      sub_255EAFED4();
      sub_255EAFF28();

      v21 = 3;
      v22 = &unk_2867F8EF0;
      while (1)
      {
        v24 = *(v22 - 1);
        v23 = *v22;
        *(v0 + 16) = v18;
        *(v0 + 24) = v19;
        *(v0 + 32) = v24;
        *(v0 + 40) = v23;
        if ((sub_255ECF208() & 1) == 0)
        {
          goto LABEL_14;
        }

        v25 = v6;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v18;
        v28 = isUniquelyReferenced_nonNull_native;
        v178 = v6;
        v29 = v27;
        v30 = v19;
        v32 = sub_255EACAD4(v27, v19);
        v33 = v25[2];
        v34 = (v31 & 1) == 0;
        result = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          __break(1u);
          goto LABEL_118;
        }

        v35 = v31;
        if (v25[3] >= result)
        {
          if ((v28 & 1) == 0)
          {
            result = sub_255EAD784();
            v25 = v178;
          }

          v18 = v29;
          if ((v35 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_255EACFB8(result, v28);
          v18 = v29;
          result = sub_255EACAD4(v29, v30);
          if ((v35 & 1) != (v36 & 1))
          {

            return sub_255ECF598();
          }

          v32 = result;
          v25 = v178;
          if ((v35 & 1) == 0)
          {
LABEL_24:
            v25[(v32 >> 6) + 8] |= 1 << v32;
            v37 = (v25[6] + 16 * v32);
            *v37 = v18;
            v37[1] = v30;
            *(v25[7] + 4 * v32) = v20;
            v38 = v25[2];
            v77 = __OFADD__(v38, 1);
            v39 = v38 + 1;
            if (v77)
            {
              goto LABEL_124;
            }

            v6 = v25;
            v25[2] = v39;

            goto LABEL_13;
          }
        }

        v6 = v25;
        *(v25[7] + 4 * v32) = v20;
LABEL_13:
        v19 = v30;
LABEL_14:
        v22 += 2;
        if (!--v21)
        {

          v7 = v165;
          v13 = v167;
          v9 = v163;
          v14 = v160;
          goto LABEL_6;
        }
      }
    }

    v60 = 0;
LABEL_35:
    v61 = *(v0 + 272);
    v169 = *(v0 + 280);
    v170 = *(v0 + 420);
    v62 = *(v0 + 216);
    v63 = *(v0 + 224);
    v65 = *(v0 + 184);
    v64 = *(v0 + 192);
    v66 = *(v0 + 176);
    v67 = *(v0 + 152);
    v171 = *(v0 + 144);
    v175 = *(v0 + 80);
    sub_255EB27F8(v59 + ((*(v0 + 416) + 32) & ~*(v0 + 416)) + *(v0 + 264) * v60, v64, &qword_27F815958, &qword_255ECFBC0);
    v68 = *(v67 + 48);
    v61(v65, v64, v62);
    sub_255EB272C(v64 + v170, v65 + v68, type metadata accessor for AVBiomeEventSummary);
    sub_255EB27F8(v65, v66, &qword_27F815958, &qword_255ECFBC0);
    sub_255EB272C(v66 + *(v67 + 48), v171, type metadata accessor for AVBiomeEventSummary);
    v69 = *(v63 + 8);
    *(v0 + 336) = v69;
    *(v0 + 344) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69(v66, v62);
    v70 = v4[3];
    if (v70 >= v175)
    {
      break;
    }

    v71 = (v0 + 48);
LABEL_37:
    v72 = *v71;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (v72[2] <= v70 || (result & 1) == 0)
    {
      result = sub_255EAE84C(result, v70 + 1);
      v72 = *v71;
    }

    *(v0 + 352) = v72;
    v74 = v72[3];
    v73 = v72[4];
    v77 = __OFADD__(v73, v74);
    v75 = v73 + v74;
    if (v77)
    {
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
LABEL_128:
      __break(1u);
      return result;
    }

    if (v74 < 0)
    {
      if (v75 < 0)
      {
        v85 = v72[2];
        v77 = __OFADD__(v75, v85);
        v75 += v85;
        if (v77)
        {
          goto LABEL_127;
        }
      }
    }

    else
    {
      v76 = v72[2];
      v77 = __OFSUB__(v75, v76);
      v78 = v75 - v76;
      if (v78 < 0 == v77)
      {
        v75 = v78;
        if (v77)
        {
          goto LABEL_125;
        }
      }
    }

    result = sub_255EB26C4(*(v0 + 144), v72 + ((*(v0 + 424) + 40) & ~*(v0 + 424)) + *(*(v0 + 136) + 72) * v75, type metadata accessor for AVBiomeEventSummary);
    v86 = v72[3];
    v77 = __OFADD__(v86, 1);
    v87 = v86 + 1;
    if (v77)
    {
      goto LABEL_119;
    }

    v88 = *(v0 + 144);
    v72[3] = v87;
    if (*(v88 + 26) != 3 && *(*(v0 + 144) + *(*(v0 + 128) + 60)) != 255)
    {
      v155 = swift_task_alloc();
      *(v0 + 360) = v155;
      *v155 = v0;
      v155[1] = sub_255EA6EF0;
      v156 = *(v0 + 144);

      return AVBiomeEventSummary.toModelInput()();
    }

    v89 = *(v0 + 320);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v0 + 320);
    if ((v90 & 1) == 0)
    {
      v56 = sub_255EAC5CC(0, *(v56 + 2) + 1, 1, *(v0 + 320));
    }

    v92 = *(v56 + 2);
    v91 = *(v56 + 3);
    if (v92 >= v91 >> 1)
    {
      v56 = sub_255EAC5CC((v91 > 1), v92 + 1, 1, v56);
    }

    v93 = *(v0 + 328);
    v94 = *(v0 + 80);
    *(v56 + 2) = v92 + 1;
    *&v56[8 * v92 + 32] = 0x406FE00000000000;
    v95 = *(v93 + 24);
    v96 = *(v0 + 328);
    if (v95 >= v94)
    {
      do
      {
        if (v95 < 1)
        {
          v113 = 1;
        }

        else
        {
          v96 = *v166;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_255EAE3D4();
            v96 = *v166;
          }

          sub_255EB2860(v96 + ((*(*(v0 + 96) + 80) + 40) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v96[4], *(v0 + 112), &qword_27F815940, &qword_255ECFBA8);
          v116 = v96[4];
          v77 = __OFADD__(v116, 1);
          v117 = v116 + 1;
          if (v77)
          {
            goto LABEL_110;
          }

          v118 = v96[3];
          if (v117 >= v96[2])
          {
            v117 = 0;
          }

          v96[4] = v117;
          if (__OFSUB__(v118, 1))
          {
            goto LABEL_111;
          }

          v113 = 0;
          v96[3] = v118 - 1;
        }

        v114 = *(v0 + 112);
        v115 = *(v0 + 80);
        (*(*(v0 + 96) + 56))(v114, v113, 1, *(v0 + 88));
        sub_255EB1E28(v114, &qword_27F815948, &qword_255ECFBB0);
        v95 = v96[3];
      }

      while (v95 >= v115);
    }

    v98 = *(v0 + 272);
    v97 = *(v0 + 280);
    v99 = *(v0 + 216);
    v100 = *(v0 + 168);
    v101 = *(v0 + 104);
    v102 = *(v0 + 88);
    sub_255EB27F8(*(v0 + 184), v100, &qword_27F815958, &qword_255ECFBC0);
    v103 = *(v102 + 48);
    *v101 = 0x406FE00000000000;
    result = v98(&v101[v103], v100, v99);
    v104 = v96[3];
    v105 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      goto LABEL_120;
    }

    v106 = *v166;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (v106[2] < v105 || (result & 1) == 0)
    {
      result = sub_255EAE5D0(result, v105);
      v106 = *v166;
    }

    v108 = v106[3];
    v107 = v106[4];
    v77 = __OFADD__(v107, v108);
    v109 = v107 + v108;
    if (v77)
    {
      goto LABEL_121;
    }

    if (v108 < 0)
    {
      if (v109 < 0)
      {
        v119 = v106[2];
        v77 = __OFADD__(v109, v119);
        v109 += v119;
        if (v77)
        {
          goto LABEL_128;
        }
      }
    }

    else
    {
      v110 = v106[2];
      v111 = __OFSUB__(v109, v110);
      v112 = v109 - v110;
      if (v112 < 0 == v111)
      {
        v109 = v112;
        if (v111)
        {
          goto LABEL_126;
        }
      }
    }

    v120 = *(*(v0 + 152) + 48);
    result = sub_255EB27F8(*(v0 + 104), v106 + ((*(*(v0 + 96) + 80) + 40) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v109, &qword_27F815940, &qword_255ECFBA8);
    v121 = v106[3];
    v77 = __OFADD__(v121, 1);
    v122 = v121 + 1;
    if (v77)
    {
      goto LABEL_122;
    }

    v123 = *(v0 + 288);
    v124 = *(v0 + 168);
    v125 = *(v0 + 104);
    v106[3] = v122;
    sub_255EB1E28(v125, &qword_27F815940, &qword_255ECFBA8);
    sub_255EAFF7C(v124 + v120);
    v126 = sub_255ECF178();
    v127 = sub_255ECF3F8();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 134217984;
      *(v128 + 4) = 0x406FE00000000000;
      _os_log_impl(&dword_255EA2000, v126, v127, "Result: %f", v128, 0xCu);
      MEMORY[0x259C511E0](v128, -1, -1);
    }

    v129 = *(v0 + 352);
    v131 = *(v0 + 304);
    v130 = *(v0 + 312);
    v132 = *(v0 + 256);
    v133 = *(v0 + 184);
    v134 = *(v0 + 144);

    v3 = sub_255EB1968(v129, v106, v131);

    sub_255EB1E28(v133, &qword_27F815958, &qword_255ECFBC0);
    sub_255EAFF7C(v134);
    v135 = v106;
    if (v130 + 1 != v132)
    {
      v4 = *(v0 + 352);
      v60 = *(v0 + 312) + 1;
      *(v0 + 320) = v56;
      *(v0 + 328) = v135;
      *(v0 + 304) = v3;
      *(v0 + 312) = v60;
      v59 = *(v0 + 248);
      if (v60 >= *(v59 + 16))
      {
        goto LABEL_115;
      }

      goto LABEL_35;
    }

    v161 = v106;
    v137 = *(v0 + 336);
    v136 = *(v0 + 344);
    v138 = *(v0 + 272);
    v172 = *(v0 + 280);
    v176 = *(v0 + 296);
    v140 = *(v0 + 240);
    v139 = *(v0 + 248);
    v141 = *(v0 + 232);
    v142 = *(v0 + 216);
    v143 = *(v0 + 80);

    v137(v140, v142);
    v138(v140, v141, v142);
    v4 = *(v0 + 352);
    if (v176 != v143)
    {
      goto LABEL_116;
    }

    v2 = v56;
    if (sub_255ECF388())
    {
      goto LABEL_2;
    }
  }

  v71 = (v0 + 48);
  while (1)
  {
    if (v70 < 1)
    {
      v79 = 1;
      goto LABEL_48;
    }

    v4 = *v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255EAE4D8();
      v4 = *v164;
    }

    sub_255EB272C(v4 + ((*(v0 + 424) + 40) & ~*(v0 + 424)) + *(*(v0 + 136) + 72) * v4[4], *(v0 + 120), type metadata accessor for AVBiomeEventSummary);
    v82 = v4[4];
    v77 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    if (v77)
    {
      break;
    }

    v84 = v4[3];
    if (v83 >= v4[2])
    {
      v83 = 0;
    }

    v4[4] = v83;
    if (__OFSUB__(v84, 1))
    {
      goto LABEL_109;
    }

    v79 = 0;
    v4[3] = v84 - 1;
LABEL_48:
    v80 = *(v0 + 120);
    v81 = *(v0 + 80);
    (*(*(v0 + 136) + 56))(v80, v79, 1, *(v0 + 128));
    sub_255EB1E28(v80, &qword_27F815950, &qword_255ECFBB8);
    v70 = v4[3];
    if (v70 < v81)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  v157 = *(v0 + 216);
  v158 = *(v0 + 224);
  v159 = *(v0 + 208);
  (*(v158 + 8))(*(v0 + 240), v157);

  (*(v158 + 56))(v159, 1, 1, v157);
LABEL_114:

  sub_255EB1E28(*(v0 + 208), &qword_27F815960, &qword_255ECFBC8);
LABEL_99:
  v145 = *(v0 + 232);
  v144 = *(v0 + 240);
  v147 = *(v0 + 200);
  v146 = *(v0 + 208);
  v149 = *(v0 + 184);
  v148 = *(v0 + 192);
  v151 = *(v0 + 168);
  v150 = *(v0 + 176);
  v152 = *(v0 + 144);
  v153 = *(v0 + 120);
  v173 = *(v0 + 112);
  v177 = *(v0 + 104);

  v154 = *(v0 + 8);

  return v154(v169, v162);
}

uint64_t sub_255EA6EF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v10 = *v2;
  v3[46] = a1;
  v3[47] = v1;

  if (v1)
  {
    v5 = v3[40];
    v6 = v3[38];
    v7 = v3[31];

    v8 = sub_255EA81E8;
  }

  else
  {
    v8 = sub_255EA7024;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_255EA7024()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
  v0[48] = v1;
  v2 = *(MEMORY[0x277CBFDF0] + 4);
  v3 = swift_task_alloc();
  v0[49] = v3;
  *v3 = v0;
  v3[1] = sub_255EA70E4;
  v4 = v0[46];
  v5 = v0[8];

  return MEMORY[0x282111978](v4, v1);
}

uint64_t sub_255EA70E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  v4[50] = a1;
  v4[51] = v1;

  v7 = v3[48];
  v8 = v3[46];
  if (v1)
  {
    v9 = v4[40];
    v10 = v4[38];
    v11 = v4[31];

    v12 = sub_255EA8444;
  }

  else
  {

    v12 = sub_255EA7264;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

void sub_255EA7264()
{
  v1 = *(v0 + 400);
  swift_unknownObjectRetain();
  v2 = sub_255ECF268();
  v3 = [v1 featureValueForName_];
  swift_unknownObjectRelease();

  if (!v3 || (v4 = [v3 multiArrayValue], v3, !v4) || (v5 = objc_msgSend(v4, sel_objectAtIndexedSubscript_, 0), v4, !v5))
  {
    v119 = *(v0 + 400);
    v120 = *(v0 + 344);
    v190 = *(v0 + 352);
    v121 = *(v0 + 336);
    v122 = *(v0 + 320);
    v123 = *(v0 + 304);
    v125 = *(v0 + 240);
    v124 = *(v0 + 248);
    v126 = *(v0 + 232);
    v127 = *(v0 + 216);
    v128 = *(v0 + 184);
    v181 = *(v0 + 144);
    v184 = *(v0 + 328);

    v186 = MEMORY[0x277D84F90];
    v187 = sub_255EAF9C0(MEMORY[0x277D84F90]);
    swift_unknownObjectRelease();
    sub_255EB1E28(v128, &qword_27F815958, &qword_255ECFBC0);
    v121(v126, v127);
    v121(v125, v127);
    sub_255EAFF7C(v181);

    goto LABEL_76;
  }

  v6 = *(v0 + 400);
  [v5 doubleValue];
  v8 = v7;
  swift_unknownObjectRelease();

  while (1)
  {
    v9 = *(v0 + 320);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v0 + 320);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_255EAC5CC(0, *(v11 + 2) + 1, 1, *(v0 + 320));
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_255EAC5CC((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = *(v0 + 328);
    v15 = *(v0 + 80);
    *(v11 + 2) = v13 + 1;
    *&v11[8 * v13 + 32] = v8;
    v16 = *(v14 + 24);
    v17 = *(v0 + 328);
    if (v16 >= v15)
    {
      do
      {
        if (v16 < 1)
        {
          v35 = 1;
        }

        else
        {
          v17 = *(v0 + 56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_255EAE3D4();
            v17 = *(v0 + 56);
          }

          sub_255EB2860(v17 + ((*(*(v0 + 96) + 80) + 40) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v17[4], *(v0 + 112), &qword_27F815940, &qword_255ECFBA8);
          v38 = v17[4];
          v33 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v33)
          {
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
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            return;
          }

          v40 = v17[3];
          if (v39 >= v17[2])
          {
            v39 = 0;
          }

          v17[4] = v39;
          if (__OFSUB__(v40, 1))
          {
            goto LABEL_115;
          }

          v35 = 0;
          v17[3] = v40 - 1;
        }

        v36 = *(v0 + 112);
        v37 = *(v0 + 80);
        (*(*(v0 + 96) + 56))(v36, v35, 1, *(v0 + 88));
        sub_255EB1E28(v36, &qword_27F815948, &qword_255ECFBB0);
        v16 = v17[3];
      }

      while (v16 >= v37);
    }

    v19 = *(v0 + 272);
    v18 = *(v0 + 280);
    v20 = *(v0 + 216);
    v21 = *(v0 + 168);
    v22 = *(v0 + 104);
    v23 = *(v0 + 88);
    sub_255EB27F8(*(v0 + 184), v21, &qword_27F815958, &qword_255ECFBC0);
    v24 = *(v23 + 48);
    *v22 = v8;
    v19(v22 + v24, v21, v20);
    v25 = v17[3];
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_118;
    }

    v27 = *(v0 + 56);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    if (v27[2] < v26 || (v28 & 1) == 0)
    {
      sub_255EAE5D0(v28, v26);
      v27 = *(v0 + 56);
    }

    v30 = v27[3];
    v29 = v27[4];
    v33 = __OFADD__(v29, v30);
    v31 = v29 + v30;
    if (v33)
    {
      goto LABEL_119;
    }

    if (v30 < 0)
    {
      if (v31 < 0)
      {
        v41 = v27[2];
        v33 = __OFADD__(v31, v41);
        v31 += v41;
        if (v33)
        {
          goto LABEL_129;
        }
      }
    }

    else
    {
      v32 = v27[2];
      v33 = __OFSUB__(v31, v32);
      v34 = v31 - v32;
      if (v34 < 0 == v33)
      {
        v31 = v34;
        if (v33)
        {
          goto LABEL_127;
        }
      }
    }

    v42 = *(*(v0 + 152) + 48);
    sub_255EB27F8(*(v0 + 104), v27 + ((*(*(v0 + 96) + 80) + 40) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v31, &qword_27F815940, &qword_255ECFBA8);
    v43 = v27[3];
    v33 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v33)
    {
      goto LABEL_120;
    }

    v45 = *(v0 + 288);
    v46 = *(v0 + 168);
    v47 = *(v0 + 104);
    v27[3] = v44;
    sub_255EB1E28(v47, &qword_27F815940, &qword_255ECFBA8);
    sub_255EAFF7C(v46 + v42);
    v48 = sub_255ECF178();
    v49 = sub_255ECF3F8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = v8;
      _os_log_impl(&dword_255EA2000, v48, v49, "Result: %f", v50, 0xCu);
      MEMORY[0x259C511E0](v50, -1, -1);
    }

    v51 = *(v0 + 352);
    v53 = *(v0 + 304);
    v52 = *(v0 + 312);
    v54 = *(v0 + 256);
    v55 = *(v0 + 184);
    v56 = *(v0 + 144);

    v57 = v52 + 1;
    v58 = sub_255EB1968(v51, v27, v53);

    sub_255EB1E28(v55, &qword_27F815958, &qword_255ECFBC0);
    sub_255EAFF7C(v56);
    if (v57 != v54)
    {
      v69 = *(v0 + 352);
      v87 = *(v0 + 312) + 1;
      goto LABEL_47;
    }

    v186 = v11;
    v187 = v58;
    v182 = v27;
    v60 = *(v0 + 336);
    v59 = *(v0 + 344);
    v61 = *(v0 + 296);
    v63 = *(v0 + 272);
    v62 = *(v0 + 280);
    v65 = *(v0 + 240);
    v64 = *(v0 + 248);
    v66 = *(v0 + 232);
    v67 = *(v0 + 216);
    v68 = *(v0 + 80);

    v60(v65, v67);
    v63(v65, v66, v67);
    v69 = *(v0 + 352);
    if (v61 != v68 || (sub_255ECF388() & 1) != 0)
    {
      break;
    }

    v70 = sub_255EAFAC4(*(v0 + 240), *(v0 + 80));
    v71 = v70;
    *(v0 + 248) = v70;
    v72 = *(v70 + 16);
    *(v0 + 256) = v72;
    if (!v72)
    {
      v172 = *(v0 + 216);
      v173 = *(v0 + 224);
      v174 = *(v0 + 208);
      (*(v173 + 8))(*(v0 + 240), v172);

      (*(v173 + 56))(v174, 1, 1, v172);
      goto LABEL_110;
    }

    v73 = *(v0 + 216);
    v74 = *(v0 + 224);
    v76 = *(v0 + 200);
    v75 = *(v0 + 208);
    v78 = *(v0 + 152);
    v77 = *(v0 + 160);
    v79 = *(v77 + 80);
    *(v0 + 416) = v79;
    v80 = *(v77 + 72);
    *(v0 + 264) = v80;
    sub_255EB27F8(v70 + ((v79 + 32) & ~v79) + v80 * (v72 - 1), v76, &qword_27F815958, &qword_255ECFBC0);
    v81 = *(v74 + 32);
    v82 = *(v78 + 48);
    *(v0 + 272) = v81;
    *(v0 + 280) = (v74 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v81(v75, v76, v73);
    (*(v74 + 56))(v75, 0, 1, v73);
    sub_255EAFF7C(v76 + v82);
    if ((*(v74 + 48))(v75, 1, v73) == 1)
    {
      (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

LABEL_110:

      sub_255EB1E28(*(v0 + 208), &qword_27F815960, &qword_255ECFBC8);
LABEL_76:
      v130 = *(v0 + 232);
      v129 = *(v0 + 240);
      v132 = *(v0 + 200);
      v131 = *(v0 + 208);
      v134 = *(v0 + 184);
      v133 = *(v0 + 192);
      v136 = *(v0 + 168);
      v135 = *(v0 + 176);
      v137 = *(v0 + 144);
      v138 = *(v0 + 120);
      v185 = *(v0 + 112);
      v191 = *(v0 + 104);

      v139 = *(v0 + 8);

      v139(v187, v186);
      return;
    }

    v81(*(v0 + 232), *(v0 + 208), *(v0 + 216));
    v58 = v187;
    if (qword_27F815850 != -1)
    {
      swift_once();
    }

    v83 = sub_255ECF198();
    *(v0 + 288) = __swift_project_value_buffer(v83, qword_27F815858);

    v84 = sub_255ECF178();
    v85 = sub_255ECF3F8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 134217984;
      *(v86 + 4) = *(v71 + 16);

      _os_log_impl(&dword_255EA2000, v84, v85, "Read %ld events from biome", v86, 0xCu);
      MEMORY[0x259C511E0](v86, -1, -1);
    }

    else
    {
    }

    v27 = v182;
    v11 = v186;

    v87 = 0;
    v88 = *(v0 + 152);
    v89 = *(v0 + 136);
    *(v0 + 296) = *(v71 + 16);
    *(v0 + 420) = *(v88 + 48);
    *(v0 + 424) = *(v89 + 80);
LABEL_47:
    *(v0 + 320) = v11;
    *(v0 + 328) = v27;
    *(v0 + 304) = v58;
    *(v0 + 312) = v87;
    v90 = *(v0 + 248);
    if (v87 >= *(v90 + 16))
    {
      goto LABEL_121;
    }

    v91 = *(v0 + 272);
    v180 = *(v0 + 280);
    v183 = *(v0 + 420);
    v93 = *(v0 + 216);
    v92 = *(v0 + 224);
    v95 = *(v0 + 184);
    v94 = *(v0 + 192);
    v96 = *(v0 + 176);
    v97 = *(v0 + 152);
    v188 = *(v0 + 144);
    v189 = *(v0 + 80);
    sub_255EB27F8(v90 + ((*(v0 + 416) + 32) & ~*(v0 + 416)) + *(v0 + 264) * v87, v94, &qword_27F815958, &qword_255ECFBC0);
    v98 = *(v97 + 48);
    v91(v95, v94, v93);
    sub_255EB272C(v94 + v183, v95 + v98, type metadata accessor for AVBiomeEventSummary);
    sub_255EB27F8(v95, v96, &qword_27F815958, &qword_255ECFBC0);
    sub_255EB272C(v96 + *(v97 + 48), v188, type metadata accessor for AVBiomeEventSummary);
    v99 = *(v92 + 8);
    *(v0 + 336) = v99;
    *(v0 + 344) = (v92 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v99(v96, v93);
    v100 = v69[3];
    if (v100 >= v189)
    {
      do
      {
        if (v100 < 1)
        {
          v109 = 1;
        }

        else
        {
          v69 = *(v0 + 48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_255EAE4D8();
            v69 = *(v0 + 48);
          }

          sub_255EB272C(v69 + ((*(v0 + 424) + 40) & ~*(v0 + 424)) + *(*(v0 + 136) + 72) * v69[4], *(v0 + 120), type metadata accessor for AVBiomeEventSummary);
          v112 = v69[4];
          v33 = __OFADD__(v112, 1);
          v113 = v112 + 1;
          if (v33)
          {
            goto LABEL_116;
          }

          v114 = v69[3];
          if (v113 >= v69[2])
          {
            v113 = 0;
          }

          v69[4] = v113;
          if (__OFSUB__(v114, 1))
          {
            goto LABEL_117;
          }

          v109 = 0;
          v69[3] = v114 - 1;
        }

        v110 = *(v0 + 120);
        v111 = *(v0 + 80);
        (*(*(v0 + 136) + 56))(v110, v109, 1, *(v0 + 128));
        sub_255EB1E28(v110, &qword_27F815950, &qword_255ECFBB8);
        v100 = v69[3];
      }

      while (v100 >= v111);
    }

    v101 = *(v0 + 48);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    if (v101[2] <= v100 || (v102 & 1) == 0)
    {
      sub_255EAE84C(v102, v100 + 1);
      v101 = *(v0 + 48);
    }

    *(v0 + 352) = v101;
    v104 = v101[3];
    v103 = v101[4];
    v33 = __OFADD__(v103, v104);
    v105 = v103 + v104;
    if (v33)
    {
      goto LABEL_122;
    }

    if (v104 < 0)
    {
      if (v105 < 0)
      {
        v115 = v101[2];
        v33 = __OFADD__(v105, v115);
        v105 += v115;
        if (v33)
        {
          goto LABEL_130;
        }
      }
    }

    else
    {
      v106 = v101[2];
      v107 = __OFSUB__(v105, v106);
      v108 = v105 - v106;
      if (v108 < 0 == v107)
      {
        v105 = v108;
        if (v107)
        {
          goto LABEL_128;
        }
      }
    }

    sub_255EB26C4(*(v0 + 144), v101 + ((*(v0 + 424) + 40) & ~*(v0 + 424)) + *(*(v0 + 136) + 72) * v105, type metadata accessor for AVBiomeEventSummary);
    v116 = v101[3];
    v33 = __OFADD__(v116, 1);
    v117 = v116 + 1;
    if (v33)
    {
      goto LABEL_123;
    }

    v118 = *(v0 + 144);
    v101[3] = v117;
    v8 = 0x406FE00000000000;
    if (*(v118 + 26) != 3)
    {
      v8 = 0x406FE00000000000;
      if (*(*(v0 + 144) + *(*(v0 + 128) + 60)) != 255)
      {
        v175 = swift_task_alloc();
        *(v0 + 360) = v175;
        *v175 = v0;
        v175[1] = sub_255EA6EF0;
        v176 = *(v0 + 144);

        AVBiomeEventSummary.toModelInput()();
        return;
      }
    }
  }

  v192 = sub_255EAF9C0(MEMORY[0x277D84F90]);
  v140 = 0;
  v141 = v187 + 64;
  v142 = -1;
  v143 = -1 << *(v187 + 32);
  if (-v143 < 64)
  {
    v142 = ~(-1 << -v143);
  }

  v144 = v142 & *(v187 + 64);
  v145 = (63 - v143) >> 6;
  v177 = v145;
  while (2)
  {
    if (!v144)
    {
      while (1)
      {
        v146 = v140 + 1;
        if (__OFADD__(v140, 1))
        {
          goto LABEL_125;
        }

        if (v146 >= v145)
        {
          break;
        }

        v144 = *(v141 + 8 * v146);
        ++v140;
        if (v144)
        {
          goto LABEL_88;
        }
      }

      (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

      v187 = v192;
      goto LABEL_76;
    }

    v146 = v140;
LABEL_88:
    v178 = v146;
    v179 = (v144 - 1) & v144;
    v147 = __clz(__rbit64(v144)) | (v146 << 6);
    v148 = (*(v187 + 48) + 16 * v147);
    v150 = *v148;
    v149 = v148[1];
    v151 = *(*(v187 + 56) + 4 * v147);
    sub_255EAFED4();
    sub_255EAFF28();

    v152 = 3;
    v153 = &unk_2867F8EF0;
LABEL_92:
    v155 = *(v153 - 1);
    v154 = *v153;
    *(v0 + 16) = v150;
    *(v0 + 24) = v149;
    *(v0 + 32) = v155;
    *(v0 + 40) = v154;
    if ((sub_255ECF208() & 1) == 0)
    {
LABEL_91:
      v153 += 2;
      if (!--v152)
      {

        v141 = v187 + 64;
        v140 = v178;
        v145 = v177;
        v144 = v179;
        continue;
      }

      goto LABEL_92;
    }

    break;
  }

  v156 = v192;
  v157 = swift_isUniquelyReferenced_nonNull_native();
  v158 = v150;
  v159 = v150;
  v160 = v149;
  v162 = sub_255EACAD4(v159, v149);
  v163 = *(v192 + 16);
  v164 = (v161 & 1) == 0;
  v165 = v163 + v164;
  if (__OFADD__(v163, v164))
  {
    goto LABEL_124;
  }

  v166 = v161;
  if (*(v192 + 24) >= v165)
  {
    if (v157)
    {
      if ((v161 & 1) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_89;
    }

    sub_255EAD784();
    v156 = v192;
    if (v166)
    {
      goto LABEL_89;
    }

LABEL_100:
    v156[(v162 >> 6) + 8] |= 1 << v162;
    v169 = (v156[6] + 16 * v162);
    *v169 = v158;
    v169[1] = v160;
    *(v156[7] + 4 * v162) = v151;
    v170 = v156[2];
    v33 = __OFADD__(v170, 1);
    v171 = v170 + 1;
    if (v33)
    {
      goto LABEL_126;
    }

    v149 = v160;
    v156[2] = v171;

LABEL_90:
    v150 = v158;
    goto LABEL_91;
  }

  sub_255EACFB8(v165, v157);
  v167 = sub_255EACAD4(v158, v160);
  if ((v166 & 1) == (v168 & 1))
  {
    v162 = v167;
    v156 = v192;
    if ((v166 & 1) == 0)
    {
      goto LABEL_100;
    }

LABEL_89:
    *(v156[7] + 4 * v162) = v151;
    v149 = v160;
    goto LABEL_90;
  }

  sub_255ECF598();
}

uint64_t sub_255EA81E8()
{
  v1 = v0[47];
  v2 = v0[36];
  v3 = v1;
  v4 = sub_255ECF178();
  v5 = sub_255ECF408();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_255EA2000, v4, v5, "Got an error with prediction: %@", v6, 0xCu);
    sub_255EB1E28(v7, &qword_27F815978, &qword_255ECFBD8);
    MEMORY[0x259C511E0](v7, -1, -1);
    MEMORY[0x259C511E0](v6, -1, -1);
  }

  v10 = v0[43];
  v33 = v0[44];
  v11 = v4;
  v13 = v0[41];
  v12 = v0[42];
  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[27];
  v17 = v0[23];
  v18 = v0[18];

  v35 = sub_255EAF9C0(MEMORY[0x277D84F90]);
  sub_255EB1E28(v17, &qword_27F815958, &qword_255ECFBC0);
  v12(v15, v16);
  v12(v14, v16);
  sub_255EAFF7C(v18);

  v20 = v0[29];
  v19 = v0[30];
  v22 = v0[25];
  v21 = v0[26];
  v24 = v0[23];
  v23 = v0[24];
  v26 = v0[21];
  v25 = v0[22];
  v27 = v0[18];
  v28 = v0[15];
  v32 = v0[14];
  v34 = v0[13];

  v29 = v0[1];
  v30 = MEMORY[0x277D84F90];

  return v29(v35, v30);
}

uint64_t sub_255EA8444()
{
  v1 = v0[51];
  v2 = v0[36];
  v3 = v1;
  v4 = sub_255ECF178();
  v5 = sub_255ECF408();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_255EA2000, v4, v5, "Got an error with prediction: %@", v6, 0xCu);
    sub_255EB1E28(v7, &qword_27F815978, &qword_255ECFBD8);
    MEMORY[0x259C511E0](v7, -1, -1);
    MEMORY[0x259C511E0](v6, -1, -1);
  }

  v10 = v0[43];
  v33 = v0[44];
  v11 = v4;
  v13 = v0[41];
  v12 = v0[42];
  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[27];
  v17 = v0[23];
  v18 = v0[18];

  v35 = sub_255EAF9C0(MEMORY[0x277D84F90]);
  sub_255EB1E28(v17, &qword_27F815958, &qword_255ECFBC0);
  v12(v15, v16);
  v12(v14, v16);
  sub_255EAFF7C(v18);

  v20 = v0[29];
  v19 = v0[30];
  v22 = v0[25];
  v21 = v0[26];
  v24 = v0[23];
  v23 = v0[24];
  v26 = v0[21];
  v25 = v0[22];
  v27 = v0[18];
  v28 = v0[15];
  v32 = v0[14];
  v34 = v0[13];

  v29 = v0[1];
  v30 = MEMORY[0x277D84F90];

  return v29(v35, v30);
}

uint64_t AVBiomeEventSummary.toModelInput()()
{
  v1[62] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815980, &qword_255ECFBE0) - 8) + 64) + 15;
  v1[63] = swift_task_alloc();
  v3 = sub_255ECF1B8();
  v1[64] = v3;
  v4 = *(v3 - 8);
  v1[65] = v4;
  v5 = *(v4 + 64) + 15;
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815988, &qword_255ECFBE8) - 8) + 64) + 15;
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255EA87E8, 0, 0);
}

uint64_t sub_255EA87E8()
{
  v1 = v0[67];
  v2 = v0[62];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815990, &qword_255ECFBF0);
  inited = swift_initStackObject();
  v0[70] = inited;
  *(inited + 16) = xmmword_255ECFB50;
  *(inited + 32) = 0x655F726F68636E61;
  *(inited + 40) = 0xEA0000000000766ELL;
  v0[71] = sub_255EB1C64();
  v0[72] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159A0, &qword_255ECFBF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255ECFB60;
  *(v4 + 32) = *(v2 + 8);
  v0[54] = v4;
  v0[73] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159A8, &qword_255ECFC00);
  v0[74] = sub_255EB2624(&qword_27F8159B0, &qword_27F8159A8, &qword_255ECFC00);
  sub_255ECF1C8();
  v5 = *(MEMORY[0x277CBFD90] + 4);
  v6 = swift_task_alloc();
  v0[75] = v6;
  *v6 = v0;
  v6[1] = sub_255EA89A4;
  v7 = v0[69];
  v8 = v0[67];
  v9 = MEMORY[0x277D83A90];
  v10 = MEMORY[0x277CBFDD8];
  v11 = MEMORY[0x277CBFDC8];
  v12 = MEMORY[0x277D83A90];

  return MEMORY[0x2821118D0](v7, v9, v12, v10, v11);
}

uint64_t sub_255EA89A4()
{
  v1 = *v0;
  v2 = *(*v0 + 600);
  v3 = *(*v0 + 536);
  v4 = *(*v0 + 520);
  v5 = *(*v0 + 512);
  v8 = *v0;

  v6 = *(v4 + 8);
  *(v1 + 608) = v6;
  *(v1 + 616) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  return MEMORY[0x2822009F8](sub_255EA8B0C, 0, 0);
}

uint64_t sub_255EA8B0C()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[67];
  v8 = v0[62];
  v9 = MEMORY[0x277D83A90];
  v10 = MEMORY[0x277CBFDD8];
  *(v5 + 48) = sub_255ECF418();
  *(v5 + 72) = v4;
  strcpy((v5 + 80), "anchor_volume");
  *(v5 + 94) = -4864;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_255ECFB60;
  *(v11 + 32) = *(v8 + 12);
  v0[55] = v11;
  sub_255ECF1C8();
  v12 = *(MEMORY[0x277CBFD90] + 4);
  v13 = swift_task_alloc();
  v0[78] = v13;
  *v13 = v0;
  v13[1] = sub_255EA8C80;
  v14 = v0[69];
  v15 = v0[67];
  v16 = MEMORY[0x277CBFDC8];

  return MEMORY[0x2821118D0](v14, v9, v9, v10, v16);
}

uint64_t sub_255EA8C80()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 536);
  v5 = *(*v0 + 512);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_255EA8DE0, 0, 0);
}

uint64_t sub_255EA8DE0()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[67];
  v8 = v0[62];
  v9 = MEMORY[0x277D83A90];
  v10 = MEMORY[0x277CBFDD8];
  v5[12] = sub_255ECF418();
  v5[15] = v4;
  v5[16] = 0x6C70735F766E65;
  v5[17] = 0xE700000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_255ECFB60;
  *(v11 + 32) = *v8;
  v0[56] = v11;
  sub_255ECF1C8();
  v12 = *(MEMORY[0x277CBFD90] + 4);
  v13 = swift_task_alloc();
  v0[79] = v13;
  *v13 = v0;
  v13[1] = sub_255EA8F48;
  v14 = v0[69];
  v15 = v0[67];
  v16 = MEMORY[0x277CBFDC8];

  return MEMORY[0x2821118D0](v14, v9, v9, v10, v16);
}

uint64_t sub_255EA8F48()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 536);
  v5 = *(*v0 + 512);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_255EA90A8, 0, 0);
}

uint64_t sub_255EA90A8()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[67];
  v8 = v0[62];
  v9 = MEMORY[0x277D83A90];
  v10 = MEMORY[0x277CBFDD8];
  v5[18] = sub_255ECF418();
  v5[21] = v4;
  v5[22] = 0x6666656F6370;
  v5[23] = 0xE600000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_255ECFB60;
  *(v11 + 32) = *(v8 + 4);
  v0[57] = v11;
  sub_255ECF1C8();
  v12 = *(MEMORY[0x277CBFD90] + 4);
  v13 = swift_task_alloc();
  v0[80] = v13;
  *v13 = v0;
  v13[1] = sub_255EA920C;
  v14 = v0[69];
  v15 = v0[67];
  v16 = MEMORY[0x277CBFDC8];

  return MEMORY[0x2821118D0](v14, v9, v9, v10, v16);
}

uint64_t sub_255EA920C()
{
  v1 = *(*v0 + 640);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 536);
  v5 = *(*v0 + 512);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_255EA936C, 0, 0);
}

uint64_t sub_255EA936C()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[67];
  v8 = v0[62];
  v9 = MEMORY[0x277D83A90];
  v10 = MEMORY[0x277CBFDD8];
  v5[24] = sub_255ECF418();
  v5[27] = v4;
  v5[28] = 0x656D756C6F76;
  v5[29] = 0xE600000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_255ECFB60;
  *(v11 + 32) = *(v8 + 20);
  v0[58] = v11;
  sub_255ECF1C8();
  v12 = *(MEMORY[0x277CBFD90] + 4);
  v13 = swift_task_alloc();
  v0[81] = v13;
  *v13 = v0;
  v13[1] = sub_255EA94D4;
  v14 = v0[69];
  v15 = v0[67];
  v16 = MEMORY[0x277CBFDC8];

  return MEMORY[0x2821118D0](v14, v9, v9, v10, v16);
}

uint64_t sub_255EA94D4()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 536);
  v5 = *(*v0 + 512);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_255EA9634, 0, 0);
}

uint64_t sub_255EA9634()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[66];
  v8 = v0[62];
  v9 = MEMORY[0x277D83A90];
  v10 = MEMORY[0x277CBFDD8];
  *(v5 + 240) = sub_255ECF418();
  *(v5 + 264) = v4;
  strcpy((v5 + 272), "is_single_bud");
  *(v5 + 286) = -4864;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_255ECFB60;
  v12 = 0.0;
  if (*(v8 + 24))
  {
    v12 = 1.0;
  }

  *(v11 + 32) = v12;
  v0[59] = v11;
  sub_255ECF1C8();
  v13 = *(MEMORY[0x277CBFD90] + 4);
  v14 = swift_task_alloc();
  v0[82] = v14;
  *v14 = v0;
  v14[1] = sub_255EA97B8;
  v15 = v0[68];
  v16 = v0[66];
  v17 = MEMORY[0x277CBFDC8];

  return MEMORY[0x2821118D0](v15, v9, v9, v10, v17);
}

uint64_t sub_255EA97B8()
{
  v1 = *(*v0 + 656);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 528);
  v5 = *(*v0 + 512);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_255EA9918, 0, 0);
}

uint64_t sub_255EA9918()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[62];
  *(v2 + 288) = sub_255ECF418();
  *(v2 + 312) = v1;
  strcpy((v2 + 320), "headphone_mode");
  *(v2 + 335) = -18;
  v0[83] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159B8, &qword_255ECFC08);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255ECFB60;
  *(v6 + 32) = *(v5 + 25);
  v0[60] = v6;
  v0[84] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159C0, &unk_255ECFC10);
  v0[85] = sub_255EB2624(&qword_27F8159C8, &qword_27F8159C0, &unk_255ECFC10);
  sub_255ECF1D8();
  v7 = *(MEMORY[0x277CBFD90] + 4);
  v8 = swift_task_alloc();
  v0[86] = v8;
  *v8 = v0;
  v8[1] = sub_255EA9ACC;
  v9 = v0[67];
  v10 = v0[63];
  v11 = MEMORY[0x277D849A8];
  v12 = MEMORY[0x277CBFE38];
  v13 = MEMORY[0x277CBFE30];
  v14 = MEMORY[0x277D849A8];

  return MEMORY[0x2821118D0](v10, v11, v14, v12, v13);
}

uint64_t sub_255EA9ACC()
{
  v1 = *(*v0 + 688);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 536);
  v5 = *(*v0 + 512);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_255EA9C2C, 0, 0);
}

uint64_t sub_255EA9C2C()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[67];
  v8 = v0[62];
  v7 = v0[63];
  v9 = MEMORY[0x277D849A8];
  v10 = MEMORY[0x277CBFE38];
  v5[42] = sub_255ECF418();
  v5[45] = v4;
  v5[46] = 0x745F6D6165727473;
  v5[47] = 0xEB00000000657079;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_255ECFB60;
  *(v11 + 32) = *(v8 + 26);
  v0[61] = v11;
  sub_255ECF1D8();
  v12 = *(MEMORY[0x277CBFD90] + 4);
  v13 = swift_task_alloc();
  v0[87] = v13;
  *v13 = v0;
  v13[1] = sub_255EA9D98;
  v14 = v0[67];
  v15 = v0[63];
  v16 = MEMORY[0x277CBFE30];

  return MEMORY[0x2821118D0](v15, v9, v9, v10, v16);
}

uint64_t sub_255EA9D98()
{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 536);
  v5 = *(*v0 + 512);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_255EA9EF8, 0, 0);
}

uint64_t sub_255EA9EF8()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[63];
  v4 = sub_255ECF418();
  *(v2 + 408) = v1;
  *(v2 + 384) = v4;
  sub_255EAF890(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D0, &qword_255ECFFE0);
  swift_arrayDestroy();
  v5 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v6 = sub_255EAC1E4();
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[67];
  v10 = v0[66];
  v11 = v0[63];

  v12 = v0[1];

  return v12(v6);
}

uint64_t sub_255EAA038(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_255ECF468();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_255EAF840(v3, *(a1 + 36), 0, a1);
}

uint64_t sub_255EAA0A0@<X0>(uint64_t a1@<X8>)
{
  v165 = a1;
  v191 = *MEMORY[0x277D85DE8];
  v1 = sub_255ECEBA8();
  v172 = *(v1 - 8);
  v2 = *(v172 + 64);
  MEMORY[0x28223BE20](v1);
  v183 = v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_255ECF078();
  v133 = *(v174 - 8);
  v169 = v133;
  v4 = *(v133 + 64);
  MEMORY[0x28223BE20](v174);
  v187 = v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v170 = v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v173 = v132 - v10;
  v11 = sub_255ECEE68();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v181 = v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_255ECEE88();
  v179 = *(v180 - 8);
  v14 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v178 = v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_255ECEEF8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v177 = v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_255ECEF18();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v176 = v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159E0, &qword_255ECFC28);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  *&v175 = v132 - v24;
  v25 = sub_255ECEDB8();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_255ECECD8();
  v167 = *(v168 - 8);
  v29 = *(v167 + 64);
  MEMORY[0x28223BE20](v168);
  v162 = v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_255ECECF8();
  v163 = *(v166 - 1);
  v31 = *(v163 + 64);
  MEMORY[0x28223BE20](v166);
  v160 = v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_255ECECC8();
  v158 = *(v159 - 8);
  v33 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v157 = v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_255ECECA8();
  v155 = *(v156 - 8);
  v35 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v154 = v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_255ECEBE8();
  v149 = *(v150 - 8);
  v37 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v147 = v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_255ECEC18();
  v146 = *(v148 - 8);
  v39 = *(v146 + 64);
  MEMORY[0x28223BE20](v148);
  v143 = v132 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_255ECEC28();
  v144 = *(v145 - 8);
  v41 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v142 = v132 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_255ECEC68();
  v140 = *(v141 - 8);
  v43 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = v132 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_255ECEC48();
  v137 = *(v138 - 8);
  v45 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v136 = v132 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_255ECEC88();
  v47 = *(v135 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v135);
  v50 = v132 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_255ECED98();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v153 = sub_255ECEDD8();
  v152 = *(v153 - 8);
  v53 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v151 = v132 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_255ECF138();
  v55 = *(v134 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v134);
  v58 = v132 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_255ECF0D8();
  v161 = *(v185 - 8);
  v59 = *(v161 + 64);
  v60 = MEMORY[0x28223BE20](v185);
  v182 = v132 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v186 = v132 - v62;
  v63 = [objc_opt_self() defaultManager];
  v64 = sub_255ECEB98();
  v189 = 0;
  v164 = v63;
  v65 = [v63 contentsOfDirectoryAtURL:v64 includingPropertiesForKeys:0 options:0 error:&v189];

  v66 = v189;
  if (v65)
  {
    v171 = v1;
    v184 = sub_255ECF378();
    v67 = v66;

    sub_255EB1CB0(&unk_2867F8FF8);
    v132[1] = v28;
    swift_arrayDestroy();
    sub_255EB1CB0(&unk_2867F90B8);
    swift_arrayDestroy();
    sub_255EB1CB0(&unk_2867F9118);
    swift_arrayDestroy();
    (*(v55 + 104))(v58, *MEMORY[0x277CE1918], v134);
    v68 = v186;
    sub_255ECF0B8();
    sub_255ECED88();
    sub_255ECED78();
    sub_255ECEC78();
    sub_255ECED38();
    (*(v47 + 8))(v50, v135);
    sub_255ECED78();
    v69 = v136;
    sub_255ECEC38();
    sub_255ECED08();
    (*(v137 + 8))(v69, v138);
    sub_255ECED78();
    v70 = v139;
    sub_255ECEC58();
    sub_255ECED28();
    (*(v140 + 8))(v70, v141);
    sub_255ECED78();
    v71 = v143;
    sub_255ECEBD8();
    v72 = v147;
    sub_255ECEBD8();
    v73 = v142;
    sub_255ECEBF8();
    (*(v149 + 8))(v72, v150);
    (*(v146 + 8))(v71, v148);
    sub_255ECED18();
    (*(v144 + 8))(v73, v145);
    sub_255ECED78();
    v74 = v154;
    sub_255ECEC98();
    sub_255ECED48();
    (*(v155 + 8))(v74, v156);
    sub_255ECED78();
    v75 = v157;
    sub_255ECEC98();
    sub_255ECED58();
    (*(v158 + 8))(v75, v159);
    sub_255ECED78();
    v76 = v167;
    v77 = v162;
    v78 = v168;
    (*(v167 + 104))(v162, *MEMORY[0x277CC9408], v168);
    v79 = v160;
    sub_255ECECE8();
    (*(v76 + 8))(v77, v78);
    sub_255ECED68();
    (*(v163 + 8))(v79, v166);
    sub_255ECED78();
    sub_255ECEDA8();
    v80 = sub_255ECEE78();
    (*(*(v80 - 8) + 56))(v175, 1, 1, v80);
    sub_255ECEF08();
    v81 = v179;
    v82 = v178;
    v83 = v180;
    (*(v179 + 104))(v178, *MEMORY[0x277CC9830], v180);
    sub_255ECEE98();
    (*(v81 + 8))(v82, v83);
    sub_255ECEE38();
    v84 = v151;
    sub_255ECEDC8();
    sub_255EB27A8(&qword_27F8159F0, MEMORY[0x277CC9440]);
    v85 = v153;
    v86 = v68;
    sub_255ECF0C8();
    (*(v152 + 8))(v84, v85);
    v189 = MEMORY[0x277D84F90];
    sub_255EADBD8(0, 36, 0);
    v87 = 0;
    v88 = v189;
    v89 = v174;
    v90 = v172;
    v91 = v173;
    v92 = v164;
    do
    {
      v93 = sub_255EB29D0(byte_2867F8F18[v87 + 32]);
      v189 = v88;
      v96 = v88[2];
      v95 = v88[3];
      if (v96 >= v95 >> 1)
      {
        v98 = v93;
        v99 = v92;
        v100 = v94;
        sub_255EADBD8((v95 > 1), v96 + 1, 1);
        v94 = v100;
        v92 = v99;
        v91 = v173;
        v93 = v98;
        v86 = v186;
        v88 = v189;
      }

      ++v87;
      v88[2] = v96 + 1;
      v97 = &v88[2 * v96];
      v97[4] = v93;
      v97[5] = v94;
    }

    while (v87 != 36);
    v101 = v169 + 56;
    v166 = *(v169 + 56);
    v166(v91, 1, 1, v89);
    v102 = v184;
    v103 = v165;
    v181 = *(v184 + 16);
    if (v181)
    {
      v169 = v101;
      v104 = 0;
      v105 = 0;
      v180 = v184 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v179 = v90 + 16;
      v178 = (v161 + 16);
      v176 = 0x8000000255ED0AE0;
      v167 = v133 + 48;
      v163 = v133 + 8;
      v162 = (v133 + 32);
      v168 = (v88 + 5);
      v175 = xmmword_255ECFB60;
      v106 = v171;
      do
      {
        if (v104 >= *(v102 + 16))
        {
          goto LABEL_29;
        }

        (*(v90 + 16))(v183, v180 + *(v90 + 72) * v104, v106);
        (*v178)(v182, v86, v185);
        sub_255ECEF88();
        if (v105)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159E8, &qword_255ECFC30);
          v107 = swift_allocObject();
          *(v107 + 16) = v175;
          v189 = 0;
          v190 = 0xE000000000000000;
          sub_255ECF4D8();

          v189 = 0xD00000000000001BLL;
          v190 = v176;
          swift_getErrorValue();
          v108 = sub_255ECF5A8();
          MEMORY[0x259C50A70](v108);

          v109 = v189;
          v110 = v190;
          *(v107 + 56) = MEMORY[0x277D837D0];
          *(v107 + 32) = v109;
          *(v107 + 40) = v110;
          sub_255ECF5B8();
          v86 = v186;

          v105 = 0;
          v102 = v184;
          goto LABEL_9;
        }

        v111 = *(sub_255ECF058() + 16);

        if (!v111)
        {
          goto LABEL_30;
        }

        v112 = 0;
        v113 = v168;
        do
        {
          v189 = 0x206E6D756C6F43;
          v190 = 0xE700000000000000;
          v188 = v112;
          v114 = sub_255ECF578();
          MEMORY[0x259C50A70](v114);

          if (v112 >= v88[2])
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
          }

          v115 = *(v113 - 1);
          v116 = *v113;

          sub_255ECEF68();

          ++v112;
          v113 += 2;
        }

        while (v111 != v112);
        v177 = 0;
        v117 = v173;
        v118 = v170;
        sub_255EB27F8(v173, v170, &qword_27F8159D8, &qword_255ECFC20);
        v119 = *v167;
        v120 = v174;
        v121 = (*v167)(v118, 1, v174);
        sub_255EB1E28(v118, &qword_27F8159D8, &qword_255ECFC20);
        if (v121 == 1)
        {
          sub_255EB1E28(v117, &qword_27F8159D8, &qword_255ECFC20);
          (*v162)(v117, v187, v120);
          v166(v117, 0, 1, v120);
          v106 = v171;
          v90 = v172;
          v86 = v186;
          v102 = v184;
        }

        else
        {
          v122 = v119(v117, 1, v120);
          v106 = v171;
          v90 = v172;
          v102 = v184;
          if (v122)
          {
            (*v163)(v187, v120);
          }

          else
          {
            v123 = v187;
            sub_255ECF038();
            (*v163)(v123, v120);
          }

          v86 = v186;
        }

        v105 = v177;
LABEL_9:
        ++v104;
      }

      while (v104 != v181);

      v91 = v173;
      v92 = v164;
      v103 = v165;
    }

    else
    {
    }

    (*(v161 + 8))(v86, v185);
    result = sub_255EB2860(v91, v103, &qword_27F8159D8, &qword_255ECFC20);
  }

  else
  {
    v124 = v189;
    v125 = sub_255ECEB88();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159E8, &qword_255ECFC30);
    v126 = swift_allocObject();
    *(v126 + 16) = xmmword_255ECFB60;
    v189 = 0;
    v190 = 0xE000000000000000;
    sub_255ECF4D8();

    v189 = 0xD00000000000001CLL;
    v190 = 0x8000000255ED0AC0;
    swift_getErrorValue();
    v127 = sub_255ECF5A8();
    MEMORY[0x259C50A70](v127);

    v128 = v189;
    v129 = v190;
    *(v126 + 56) = MEMORY[0x277D837D0];
    *(v126 + 32) = v128;
    *(v126 + 40) = v129;
    sub_255ECF5B8();

    result = (*(v169 + 56))(v165, 1, 1, v174);
  }

  v131 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_255EAB918(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = sub_255EB29D0(*v4);
    v9 = v8;
    if (v7 == sub_255EB29D0(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_255ECF588();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_255EAB9DC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_255ECEE68() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_255EB27A8(&qword_27F815A58, MEMORY[0x277CC9578]);
  }

  while ((sub_255ECF248() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_255EABAE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_255EADBF8(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_255EAF798(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255EADBF8((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_255EABBF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_255EADBD8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_255EAF798(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255EADBD8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_255EABD08(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = &v22 - v3;
  v5 = sub_255ECEE68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v24 = &v22 - v11;
  v12 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  sub_255EADBB8(0, v12, 0);
  v13 = v26;
  if (v12)
  {
    v14 = a1 + 32;
    v22 = v4;
    v23 = (v6 + 56);
    v15 = (v6 + 32);
    while (1)
    {
      sub_255EAF798(v14, v25);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v23)(v4, 0, 1, v5);
      v16 = *v15;
      v17 = v24;
      (*v15)(v24, v4, v5);
      v16(v10, v17, v5);
      v26 = v13;
      v18 = v10;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_255EADBB8(v19 > 1, v20 + 1, 1);
        v13 = v26;
      }

      *(v13 + 16) = v20 + 1;
      v16((v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20), v18, v5);
      v14 += 32;
      --v12;
      v10 = v18;
      v4 = v22;
      if (!v12)
      {
        return v13;
      }
    }

    (*v23)(v4, 1, 1, v5);
    sub_255EB1E28(v4, &qword_27F815960, &qword_255ECFBC8);
    return 0;
  }

  return v13;
}

uint64_t sub_255EABFDC()
{
  v1 = 0x434E416F747541;
  v2 = 4410945;
  if (*v0 != 2)
  {
    v2 = 0x726170736E617254;
  }

  if (*v0)
  {
    v1 = 0x737361707942;
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

uint64_t sub_255EAC06C()
{
  v1 = *v0;
  sub_255ECF5C8();
  sub_255ECF5E8();
  return sub_255ECF5F8();
}

uint64_t sub_255EAC0E4()
{
  v1 = *v0;
  sub_255ECF5C8();
  sub_255ECF5E8();
  return sub_255ECF5F8();
}

uint64_t sub_255EAC128@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255EAFEC4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_255EAC170()
{
  v1 = 0x616964654DLL;
  v2 = 1769105747;
  if (*v0 != 2)
  {
    v2 = 0x64696C61766E49;
  }

  if (*v0)
  {
    v1 = 0x6E6F6870656C6554;
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

id sub_255EAC1E4()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_255ECF1E8();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_255ECEB88();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

char *sub_255EAC2CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159E8, &qword_255ECFC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_255EAC3DC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AC8, &qword_255ECFF58);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB8, &qword_255ECFF48) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB8, &qword_255ECFF48) - 8);
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

char *sub_255EAC5CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AA8, &qword_255ECFF38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_255EAC748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A70, &qword_255ECFF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_255EAC874(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_255EACA50(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A70, &qword_255ECFF08);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

unint64_t sub_255EACAD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_255ECF5C8();
  sub_255ECF2C8();
  v6 = sub_255ECF5F8();

  return sub_255EACB90(a1, a2, v6);
}

unint64_t sub_255EACB4C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_255ECF478();

  return sub_255EACC48(a1, v5);
}

unint64_t sub_255EACB90(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_255ECF588())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_255EACC48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_255EB292C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C50C10](v9, a1);
      sub_255EB28C8(v9);
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

uint64_t sub_255EACD10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AD0, &unk_255ECFF60);
  v38 = a2;
  result = sub_255ECF518();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_255ECF5C8();
      sub_255ECF2C8();
      result = sub_255ECF5F8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_255EACFB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB0, &qword_255ECFF40);
  v37 = a2;
  result = sub_255ECF518();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_255ECF5C8();
      sub_255ECF2C8();
      result = sub_255ECF5F8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_255EAD2D4(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v53 = a6;
  v9 = v6;
  v12 = a3(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_255ECF518();
  v18 = result;
  if (*(v15 + 16))
  {
    v48 = v9;
    v49 = v15;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v50 + 72);
      v37 = v32 + v36 * v31;
      if (v51)
      {
        sub_255EB272C(v37, v52, v53);
      }

      else
      {
        sub_255EB26C4(v37, v52, v53);
      }

      v38 = *(v18 + 40);
      sub_255ECF5C8();
      sub_255ECF2C8();
      result = sub_255ECF5F8();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = sub_255EB272C(v52, *(v18 + 56) + v36 * v26, v53);
      ++*(v18 + 16);
      v15 = v49;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

void *sub_255EAD614()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AD0, &unk_255ECFF60);
  v2 = *v0;
  v3 = sub_255ECF508();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_255EAD784()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB0, &qword_255ECFF40);
  v2 = *v0;
  v3 = sub_255ECF508();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_255EAD964(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v42 = a4;
  v7 = v4;
  v8 = a1(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = &v39 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_255ECF508();
  v13 = v12;
  if (*(v11 + 16))
  {
    v39 = v7;
    result = (v12 + 64);
    v15 = v11 + 64;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v16)
    {
      result = memmove(result, (v11 + 64), 8 * v16);
    }

    v18 = 0;
    v19 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v19;
    v20 = 1 << *(v11 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 64);
    v23 = (v20 + 63) >> 6;
    if (v22)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_17:
        v27 = v24 | (v18 << 6);
        v28 = 16 * v27;
        v29 = *(v11 + 56);
        v30 = (*(v11 + 48) + 16 * v27);
        v31 = v11;
        v32 = *v30;
        v33 = v30[1];
        v34 = v40;
        v35 = *(v41 + 72) * v27;
        v36 = v42;
        sub_255EB26C4(v29 + v35, v40, v42);
        v37 = v43;
        v38 = (*(v43 + 48) + v28);
        *v38 = v32;
        v38[1] = v33;
        v11 = v31;
        sub_255EB272C(v34, *(v37 + 56) + v35, v36);

        v22 = v44;
      }

      while (v44);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v39;
        v13 = v43;
        goto LABEL_21;
      }

      v26 = *(v15 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v44 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

size_t sub_255EADBB8(size_t a1, int64_t a2, char a3)
{
  result = sub_255EADC38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255EADBD8(char *a1, int64_t a2, char a3)
{
  result = sub_255EADE10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255EADBF8(char *a1, int64_t a2, char a3)
{
  result = sub_255EADF1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_255EADC18(size_t a1, int64_t a2, char a3)
{
  result = sub_255EAE020(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_255EADC38(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A50, &qword_255ECFEF0);
  v10 = *(sub_255ECEE68() - 8);
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
  v15 = *(sub_255ECEE68() - 8);
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

char *sub_255EADE10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A78, &qword_255ECFF10);
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

char *sub_255EADF1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A70, &qword_255ECFF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_255EAE020(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AC0, &qword_255ECFF50);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815958, &qword_255ECFBC0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815958, &qword_255ECFBC0) - 8);
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

size_t sub_255EAE210()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A98, &qword_255ECFF30);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 40) & ~*(v0 + 80);
  v3 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v3);
  if (v1)
  {
    if (result - v2 != 0x8000000000000000 || v1 != -1)
    {
      v3[3] = 0;
      v3[4] = 0;
      v3[2] = (result - v2) / v1;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_255EAE2F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A90, &qword_255ECFF28);
  v0 = *(type metadata accessor for AVBiomeEventSummary() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 40) & ~*(v0 + 80);
  v3 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v3);
  if (v1)
  {
    if (result - v2 != 0x8000000000000000 || v1 != -1)
    {
      v3[3] = 0;
      v3[4] = 0;
      v3[2] = (result - v2) / v1;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255EAE3D4()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A98, &qword_255ECFF30);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_255EAF250(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

uint64_t sub_255EAE4D8()
{
  v1 = *v0;
  v2 = type metadata accessor for AVBiomeEventSummary();
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A90, &qword_255ECFF28);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_255EAF3B8(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

size_t sub_255EAE5D0(char a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (*v2 + 16);
  v7 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  v9 = v8;
  if (v7 >= a2)
  {
    v18 = *(v8 - 8);
    v19 = *(v18 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A98, &qword_255ECFF30);
    v20 = *(v18 + 72);
    v15 = swift_allocObject();
    v21 = *(v5 + 24);
    *(v15 + 16) = v7;
    *(v15 + 24) = v21;
    if (v21 >= 1)
    {
      sub_255EAF250(v15 + 16, v15 + ((v19 + 40) & ~v19), v6, v5 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_255ECF168();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  if (a1)
  {
    v12 = *(v5 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A98, &qword_255ECFF30);
    v13 = *(v10 + 72);
    v14 = (v11 + 40) & ~v11;
    v15 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v15);
    if (v13)
    {
      if (result - v14 != 0x8000000000000000 || v13 != -1)
      {
        *(v15 + 16) = (result - v14) / v13;
        *(v15 + 24) = v12;
        *(v15 + 32) = 0;
        if (v12 >= 1)
        {
          sub_255EAEC18(v15 + 16, v15 + v14, v6, v5 + v14);
          *(v5 + 24) = 0;
        }

LABEL_19:

        *v2 = v15;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A98, &qword_255ECFF30);
  v22 = *(v10 + 72);
  v23 = (v11 + 40) & ~v11;
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (!v22)
  {
    goto LABEL_21;
  }

  if (result - v23 != 0x8000000000000000 || v22 != -1)
  {
    v25 = *(v5 + 24);
    *(v15 + 16) = (result - v23) / v22;
    *(v15 + 24) = v25;
    *(v15 + 32) = 0;
    if (v25 >= 1)
    {
      sub_255EAEFB8(v15 + 16, v15 + v23, v6, v5 + v23);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

size_t sub_255EAE84C(char a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (*v2 + 16);
  v7 = *v6;
  v8 = type metadata accessor for AVBiomeEventSummary();
  v9 = v8;
  if (v7 >= a2)
  {
    v18 = *(v8 - 8);
    v19 = *(v18 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A90, &qword_255ECFF28);
    v20 = *(v18 + 72);
    v15 = swift_allocObject();
    v21 = *(v5 + 24);
    *(v15 + 16) = v7;
    *(v15 + 24) = v21;
    if (v21 >= 1)
    {
      sub_255EAF3B8(v15 + 16, v15 + ((v19 + 40) & ~v19), v6, v5 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_255ECF168();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  if (a1)
  {
    v12 = *(v5 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A90, &qword_255ECFF28);
    v13 = *(v10 + 72);
    v14 = (v11 + 40) & ~v11;
    v15 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v15);
    if (v13)
    {
      if (result - v14 != 0x8000000000000000 || v13 != -1)
      {
        *(v15 + 16) = (result - v14) / v13;
        *(v15 + 24) = v12;
        *(v15 + 32) = 0;
        if (v12 >= 1)
        {
          sub_255EAEE24(v15 + 16, v15 + v14, v6, v5 + v14);
          *(v5 + 24) = 0;
        }

LABEL_19:

        *v2 = v15;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A90, &qword_255ECFF28);
  v22 = *(v10 + 72);
  v23 = (v11 + 40) & ~v11;
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (!v22)
  {
    goto LABEL_21;
  }

  if (result - v23 != 0x8000000000000000 || v22 != -1)
  {
    v25 = *(v5 + 24);
    *(v15 + 16) = (result - v23) / v22;
    *(v15 + 24) = v25;
    *(v15 + 32) = 0;
    if (v25 >= 1)
    {
      sub_255EAF12C(v15 + 16, v15 + v23, v6, v5 + v23);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_255EAEABC(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_255EACAD4(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_255EACFB8(v16, a3 & 1);
      v20 = *v5;
      result = sub_255EACAD4(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_255ECF598();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_255EAD784();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 4 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

void sub_255EAEC18(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8) + 72) * v11 <= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_255EAEE24(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = a3[1];
  v9 = *(type metadata accessor for AVBiomeEventSummary() - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v9 + 72);
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = a4 + v14 * v4;
  if (v16 <= a2 && v16 + v14 * v11 > a2)
  {
    if (v16 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v5 < v8 && v10 >= 1)
  {
    if (v15)
    {
      v19 = a2 + v14 * v11;
      if (v19 < v15 || v19 >= v15 + v14 * v10)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void sub_255EAEFB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = a4 + *(v8 + 72) * v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v9 < 1)
  {
    return;
  }

  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8) + 72);
  swift_arrayInitWithCopy();
}

void sub_255EAF12C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for AVBiomeEventSummary() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  v12 = *(v8 + 72);
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_255EAF250(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        v11 = a4 + *(v8 + 72) * v4;
        v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8) - 8) + 72);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

void sub_255EAF3B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for AVBiomeEventSummary() - 8);
  if (v5 >= v7)
  {
    v10 = 0;
    v9 = 0;
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      v11 = *(v8 + 72) * v4;
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_255EAF4D0()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

uint64_t sub_255EAF538(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_255EAF5DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AD0, &unk_255ECFF60);
    v3 = sub_255ECF528();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255EACAD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_255EAF798(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_255EAF840(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_255EAF890(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A88, &qword_255ECFF20);
    v3 = sub_255ECF528();
    v4 = a1 + 32;

    while (1)
    {
      sub_255EB27F8(v4, &v13, &qword_27F8159D0, &qword_255ECFFE0);
      v5 = v13;
      v6 = v14;
      result = sub_255EACAD4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_255EB2798(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255EAF9C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AB0, &qword_255ECFF40);
    v3 = sub_255ECF528();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255EACAD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_255EAFAC4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &aBlock - v5;
  v7 = sub_255ECEE68();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, 1, 1, v7);
  v9 = sub_255ECEE08();
  v10 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v10 = sub_255ECEE08();
    (*(v8 + 8))(v6, v7);
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v9 endDate:v10 maxEvents:a2 lastN:0 reversed:0];

  v12 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v13 = [v12 Audio];
  swift_unknownObjectRelease();
  v14 = [v13 AdaptiveVolume];
  swift_unknownObjectRelease();
  v15 = sub_255ECF268();
  v16 = [v14 publisherWithUseCase:v15 options:v11];

  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x277D84F90];
  v29 = sub_255EA51D4;
  v30 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_255EB29BC;
  v28 = &block_descriptor_46;
  v18 = _Block_copy(&aBlock);
  v29 = sub_255EB27F0;
  v30 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_255EB29BC;
  v28 = &block_descriptor_49;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 sinkWithCompletion:v18 receiveInput:v19];
  _Block_release(v19);
  _Block_release(v18);

  swift_beginAccess();
  v21 = *(v17 + 16);

  v23 = sub_255EA5B1C(v22);

  return v23;
}

uint64_t type metadata accessor for AVBiomeEventSummary()
{
  result = qword_27F8159F8;
  if (!qword_27F8159F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255EAFEC4(uint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

unint64_t sub_255EAFED4()
{
  result = qword_27F815968;
  if (!qword_27F815968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815968);
  }

  return result;
}

unint64_t sub_255EAFF28()
{
  result = qword_27F815970;
  if (!qword_27F815970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815970);
  }

  return result;
}

uint64_t sub_255EAFF7C(uint64_t a1)
{
  v2 = type metadata accessor for AVBiomeEventSummary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255EAFFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, float a6)
{
  if (a5)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x259C50A70](v10, v11);
  if (*(a1 + 16))
  {
    v12 = sub_255EACAD4(0x6F43656C706D6173, 0xEB00000000746E75);
    v14 = v13;

    v15 = 0.0;
    if (v14)
    {
      v15 = *(*(a1 + 56) + 4 * v12);
    }
  }

  else
  {

    v15 = 0.0;
  }

  MEMORY[0x259C50A70](v10, v11);
  if (*(a1 + 16))
  {
    v16 = sub_255EACAD4(1851876717, 0xE400000000000000);
    v18 = v17;

    v19 = 0.0;
    if (v18)
    {
      v19 = *(*(a1 + 56) + 4 * v16);
    }
  }

  else
  {

    v19 = 0.0;
  }

  MEMORY[0x259C50A70](v10, v11);
  if (*(a1 + 16))
  {
    v20 = sub_255EACAD4(0xD000000000000019, 0x8000000255ED0B60);
    v22 = v21;

    v23 = 0.0;
    if (v22)
    {
      v23 = *(*(a1 + 56) + 4 * v20);
    }
  }

  else
  {

    v23 = 0.0;
  }

  v24 = a6 - v19;
  v25 = v19 + ((a6 - v19) / (v15 + 1.0));
  v26 = (v24 * (a6 - v25)) + v23;

  MEMORY[0x259C50A70](a2, a3);

  MEMORY[0x259C50A70](v10, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_255EAEABC(0x6F43656C706D6173, 0xEB00000000746E75, isUniquelyReferenced_nonNull_native, v15 + 1.0);

  MEMORY[0x259C50A70](a2, a3);

  MEMORY[0x259C50A70](v10, v11);

  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_255EAEABC(1851876717, 0xE400000000000000, v28, v25);

  MEMORY[0x259C50A70](a2, a3);

  MEMORY[0x259C50A70](v10, v11);

  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_255EAEABC(0xD000000000000019, 0x8000000255ED0B60, v29, v26);

  if (v15 > 1.0)
  {
    MEMORY[0x259C50A70](a2, a3);

    MEMORY[0x259C50A70](v10, v11);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_255EAEABC(0x766544647473, 0xE600000000000000, v30, sqrtf(v26 / v15));
  }

  return a1;
}

uint64_t sub_255EB03FC(void *a1, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  v63 = a6;
  v64 = a5;
  v62 = a4;
  v65 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v13 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v61[-v17];
  v19 = type metadata accessor for AVBiomeEventSummary();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v61[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v61[-v25];
  MEMORY[0x28223BE20](v24);
  v29 = &v61[-v28];
  v30 = a1[3];
  if (!v30)
  {
    if (qword_27F815850 == -1)
    {
LABEL_16:
      v40 = sub_255ECF198();
      __swift_project_value_buffer(v40, qword_27F815858);
      v41 = sub_255ECF178();
      v42 = sub_255ECF408();
      v43 = os_log_type_enabled(v41, v42);
      v39 = v65;
      if (v43)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_255EA2000, v41, v42, "Couldn't find last value in inputBuffer, returning metrics unchanged", v44, 2u);
        MEMORY[0x259C511E0](v44, -1, -1);
      }

      goto LABEL_24;
    }

LABEL_56:
    swift_once();
    goto LABEL_16;
  }

  v31 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v31 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v31 >= v30)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v32 = a1[4] + v31;
  v33 = a1[2];
  if (v32 < v33)
  {
    v33 = 0;
  }

  sub_255EB26C4(a1 + ((*(v27 + 80) + 40) & ~*(v27 + 80)) + (v32 - v33) * *(v27 + 72), v23, type metadata accessor for AVBiomeEventSummary);
  sub_255EB272C(v23, v26, type metadata accessor for AVBiomeEventSummary);
  sub_255EB272C(v26, v29, type metadata accessor for AVBiomeEventSummary);
  v34 = a2[3];
  if (!v34)
  {
    v39 = v65;
    if (qword_27F815850 != -1)
    {
      swift_once();
    }

    v45 = sub_255ECF198();
    __swift_project_value_buffer(v45, qword_27F815858);
    v46 = sub_255ECF178();
    v47 = sub_255ECF408();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_255EA2000, v46, v47, "Couldn't find last value in outputBuffer, returning metrics unchanged", v48, 2u);
      MEMORY[0x259C511E0](v48, -1, -1);
    }

    sub_255EAFF7C(v29);
    goto LABEL_24;
  }

  v35 = v34 - 1;
  if (__OFSUB__(v34, 1))
  {
    goto LABEL_53;
  }

  if (v35 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v35 >= v34)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v36 = a2[4] + v35;
  v37 = a2[2];
  if (v36 < v37)
  {
    v37 = 0;
  }

  sub_255EB27F8(a2 + ((*(v9 + 80) + 40) & ~*(v9 + 80)) + (v36 - v37) * *(v9 + 72), v13, &qword_27F815940, &qword_255ECFBA8);
  sub_255EB2860(v13, v16, &qword_27F815940, &qword_255ECFBA8);
  sub_255EB2860(v16, v18, &qword_27F815940, &qword_255ECFBA8);
  v38 = *&v29[*(v19 + 60)];
  if (v38 != 255)
  {
    v50 = *v18;
    v51 = v38 - v50;
    v52 = sub_255EAFFD8(v65, 0xD000000000000010, 0x8000000255ED0B80, 0, 0, v51);
    if (v62 <= 1u)
    {
      if (v62)
      {
        v53 = 0xE600000000000000;
        v54 = 0x35356F743534;
      }

      else
      {
        v53 = 0xE700000000000000;
        v54 = 0x3534776F6C6542;
      }
    }

    else
    {
      v53 = 0xE600000000000000;
      if (v62 == 2)
      {
        v54 = 0x35366F743535;
      }

      else if (v62 == 3)
      {
        v54 = 0x35376F743536;
      }

      else
      {
        v54 = 0x35377265764FLL;
      }
    }

    v55 = sub_255EAFFD8(v52, 0xD000000000000010, 0x8000000255ED0B80, v54, v53, v51);

    if (v63 > 1u)
    {
      if (v63 == 2)
      {
        v56 = 0xE300000000000000;
        v57 = 4410945;
      }

      else
      {
        v56 = 0xEC00000079636E65;
        v57 = 0x726170736E617254;
      }
    }

    else if (v63)
    {
      v56 = 0xE600000000000000;
      v57 = 0x737361707942;
    }

    else
    {
      v56 = 0xE700000000000000;
      v57 = 0x434E416F747541;
    }

    v39 = sub_255EAFFD8(v55, 0xD000000000000010, 0x8000000255ED0B80, v57, v56, v51);

    if (v64 > 1u)
    {
      if (v64 != 2)
      {
LABEL_49:
        sub_255EB1E28(v18, &qword_27F815940, &qword_255ECFBA8);
        sub_255EAFF7C(v29);
        return v39;
      }

      v58 = 0xE400000000000000;
      v59 = 1769105747;
    }

    else if (v64)
    {
      v58 = 0xE900000000000079;
      v59 = 0x6E6F6870656C6554;
    }

    else
    {
      v58 = 0xE500000000000000;
      v59 = 0x616964654DLL;
    }

    v60 = sub_255EAFFD8(v39, 0xD000000000000010, 0x8000000255ED0B80, v59, v58, v51);

    v39 = v60;
    goto LABEL_49;
  }

  sub_255EB1E28(v18, &qword_27F815940, &qword_255ECFBA8);
  sub_255EAFF7C(v29);
  v39 = v65;
LABEL_24:

  return v39;
}

uint64_t sub_255EB0B0C(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  v132 = a3;
  v138 = sub_255ECEE68();
  v140 = *(v138 - 8);
  v11 = *(v140 + 64);
  MEMORY[0x28223BE20](v138);
  v139 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815950, &qword_255ECFBB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v128 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v131 = &v120 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815940, &qword_255ECFBA8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8);
  v126 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v133 = (&v120 - v24);
  MEMORY[0x28223BE20](v23);
  v130 = (&v120 - v25);
  v26 = type metadata accessor for AVBiomeEventSummary();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v127 = &v120 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v137 = &v120 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v120 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v120 - v37;
  MEMORY[0x28223BE20](v36);
  v42 = &v120 - v41;
  v43 = a1;
  v44 = *(a1 + 24);
  if (!v44)
  {
    if (qword_27F815850 == -1)
    {
LABEL_22:
      v69 = sub_255ECF198();
      __swift_project_value_buffer(v69, qword_27F815858);
      v70 = sub_255ECF178();
      v71 = sub_255ECF408();
      v72 = os_log_type_enabled(v70, v71);
      v73 = v132;
      if (v72)
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_255EA2000, v70, v71, "Couldn't find last value in inputBuffer, returning metrics unchanged", v74, 2u);
        MEMORY[0x259C511E0](v74, -1, -1);
      }

      goto LABEL_40;
    }

LABEL_75:
    swift_once();
    goto LABEL_22;
  }

  if (v44 < 1)
  {
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v121 = a4;
  v122 = a6;
  v123 = a5;
  v125 = v39;
  v45 = *(v40 + 80);
  v46 = v43;
  v47 = *(v43 + 32);
  v48 = *(v43 + 16);
  v124 = v48;
  if (v47 < v48)
  {
    v48 = 0;
  }

  v136 = (v45 + 40) & ~v45;
  v129 = v40;
  v135 = *(v40 + 72);
  sub_255EB26C4(v46 + v136 + (v47 - v48) * v135, v35, type metadata accessor for AVBiomeEventSummary);
  sub_255EB272C(v35, v38, type metadata accessor for AVBiomeEventSummary);
  sub_255EB272C(v38, v42, type metadata accessor for AVBiomeEventSummary);
  v49 = a2[3];
  if (!v49)
  {
    if (qword_27F815850 != -1)
    {
      swift_once();
    }

    v75 = sub_255ECF198();
    __swift_project_value_buffer(v75, qword_27F815858);
    v76 = sub_255ECF178();
    v77 = sub_255ECF408();
    v78 = os_log_type_enabled(v76, v77);
    v73 = v132;
    if (v78)
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_255EA2000, v76, v77, "Couldn't find last value in outputBuffer, returning metrics unchanged", v79, 2u);
      MEMORY[0x259C511E0](v79, -1, -1);
    }

    goto LABEL_39;
  }

  if (v49 < 1)
  {
    goto LABEL_74;
  }

  v50 = a2[4];
  v51 = a2[2];
  if (v50 < v51)
  {
    v51 = 0;
  }

  v52 = a2 + ((*(v19 + 80) + 40) & ~*(v19 + 80)) + (v50 - v51) * *(v19 + 72);
  v53 = v126;
  sub_255EB27F8(v52, v126, &qword_27F815940, &qword_255ECFBA8);
  v54 = v133;
  sub_255EB2860(v53, v133, &qword_27F815940, &qword_255ECFBA8);
  sub_255EB2860(v54, v130, &qword_27F815940, &qword_255ECFBA8);
  v55 = *(v129 + 56);
  v126 = v129 + 56;
  v120 = v55;
  v55(v131, 1, 1, v26);
  if (v124 >= v47 + v44)
  {
    v56 = v47 + v44;
  }

  else
  {
    v56 = v124;
  }

  v141 = v46;
  v142 = v47;
  v143 = v56;
  v133 = (v140 + 8);

  v57 = v127;
  v134 = v26;
  v58 = v139;
  while (1)
  {
    if (v47 == v56)
    {
      v59 = sub_255EAF4D0();
      v60 = v141;
      if ((v59 & 1) == 0)
      {

        v80 = v131;
        goto LABEL_30;
      }
    }

    else
    {
      v60 = v141;
    }

    v61 = v142;
    v140 = ++v142;
    v62 = v137;
    sub_255EB26C4(v60 + v136 + v61 * v135, v137, type metadata accessor for AVBiomeEventSummary);
    sub_255EB272C(v62, v57, type metadata accessor for AVBiomeEventSummary);
    v63 = *(v26 + 52);
    v64 = v42;
    sub_255ECEDF8();
    sub_255EB27A8(&qword_27F815AA0, MEMORY[0x277CC9578]);
    v65 = v138;
    v66 = sub_255ECF238();
    v67 = *v133;
    (*v133)(v58, v65);
    if ((v66 & 1) == 0)
    {
      sub_255ECEDF8();
      v68 = sub_255ECF238();
      v67(v58, v65);
      if ((v68 & 1) == 0)
      {
        break;
      }
    }

    sub_255EAFF7C(v57);
    v56 = v143;
    v42 = v64;
    v26 = v134;
    v47 = v140;
  }

  v80 = v131;
  sub_255EB1E28(v131, &qword_27F815950, &qword_255ECFBB8);

  sub_255EB272C(v57, v80, type metadata accessor for AVBiomeEventSummary);
  v26 = v134;
  v120(v80, 0, 1, v134);
  v42 = v64;
LABEL_30:
  v81 = v128;
  sub_255EB27F8(v80, v128, &qword_27F815950, &qword_255ECFBB8);
  v82 = (*(v129 + 48))(v81, 1, v26);
  v73 = v132;
  v83 = v125;
  if (v82 == 1)
  {
    sub_255EB1E28(v81, &qword_27F815950, &qword_255ECFBB8);
    if (qword_27F815850 != -1)
    {
      swift_once();
    }

    v84 = sub_255ECF198();
    __swift_project_value_buffer(v84, qword_27F815858);
    v85 = sub_255ECF178();
    v86 = sub_255ECF408();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_255EA2000, v85, v86, "Couldn't find a sample 30 seconds after the first input, returning metrics unchanged", v87, 2u);
      MEMORY[0x259C511E0](v87, -1, -1);
    }

    goto LABEL_38;
  }

  result = sub_255EB272C(v81, v125, type metadata accessor for AVBiomeEventSummary);
  v89 = *&v42[*(v26 + 60)];
  if (v89 == 255)
  {
    sub_255EAFF7C(v83);
LABEL_38:
    sub_255EB1E28(v80, &qword_27F815950, &qword_255ECFBB8);
    sub_255EB1E28(v130, &qword_27F815940, &qword_255ECFBA8);
LABEL_39:
    sub_255EAFF7C(v42);
LABEL_40:

    return v73;
  }

  v90 = *(v83 + 20);
  if (v90 < 0)
  {
    __break(1u);
    goto LABEL_77;
  }

  v91 = __OFSUB__(v89, v90);
  v92 = v89 - v90;
  if (v91)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v93 = *v130;
  if ((*v130 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v93 <= -2147483650.0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v93 >= 2147483650.0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v91 = __OFSUB__(v93, v90);
  v94 = v93 - v90;
  if (!v91)
  {
    v95 = v92 * v92;
    v96 = v94 * v94;
    sub_255EAFFD8(v73, 0xD000000000000015, 0x8000000255ED0B20, 0, 0, v95);

    v97 = sub_255EAFFD8(v73, 0xD000000000000013, 0x8000000255ED0B40, 0, 0, v96);
    v98 = v42;
    if (v121 <= 1u)
    {
      if (!v121)
      {
        v99 = 0x3534776F6C6542;
        v100 = 0xE700000000000000;
        v101 = v95;
        v102 = 0x3534776F6C6542;
        v103 = 0xE700000000000000;
        goto LABEL_58;
      }

      v99 = 0x35356F743534;
    }

    else if (v121 == 2)
    {
      v99 = 0x35366F743535;
    }

    else if (v121 == 3)
    {
      v99 = 0x35376F743536;
    }

    else
    {
      v99 = 0x35377265764FLL;
    }

    v100 = 0xE600000000000000;
    v101 = v95;
    v102 = v99;
    v103 = 0xE600000000000000;
LABEL_58:
    v104 = sub_255EAFFD8(v97, 0xD000000000000015, 0x8000000255ED0B20, v102, v103, v101);

    v105 = sub_255EAFFD8(v104, 0xD000000000000013, 0x8000000255ED0B40, v99, v100, v96);

    if (v122 > 1u)
    {
      if (v122 == 2)
      {
        v106 = 4410945;
        v107 = 0xE300000000000000;
        v108 = v105;
        v109 = v95;
        v110 = 4410945;
        v111 = 0xE300000000000000;
      }

      else
      {
        v106 = 0x726170736E617254;
        v107 = 0xEC00000079636E65;
        v108 = v105;
        v109 = v95;
        v110 = 0x726170736E617254;
        v111 = 0xEC00000079636E65;
      }
    }

    else if (v122)
    {
      v106 = 0x737361707942;
      v107 = 0xE600000000000000;
      v108 = v105;
      v109 = v95;
      v110 = 0x737361707942;
      v111 = 0xE600000000000000;
    }

    else
    {
      v106 = 0x434E416F747541;
      v107 = 0xE700000000000000;
      v108 = v105;
      v109 = v95;
      v110 = 0x434E416F747541;
      v111 = 0xE700000000000000;
    }

    v112 = sub_255EAFFD8(v108, 0xD000000000000015, 0x8000000255ED0B20, v110, v111, v109);

    v73 = sub_255EAFFD8(v112, 0xD000000000000013, 0x8000000255ED0B40, v106, v107, v96);

    if (v123 > 1u)
    {
      if (v123 != 2)
      {
LABEL_72:
        sub_255EAFF7C(v83);
        sub_255EB1E28(v131, &qword_27F815950, &qword_255ECFBB8);
        sub_255EB1E28(v130, &qword_27F815940, &qword_255ECFBA8);
        sub_255EAFF7C(v98);
        return v73;
      }

      v113 = 1769105747;
      v114 = 0xE400000000000000;
      v115 = v73;
      v116 = v95;
      v117 = 1769105747;
      v118 = 0xE400000000000000;
    }

    else if (v123)
    {
      v113 = 0x6E6F6870656C6554;
      v114 = 0xE900000000000079;
      v115 = v73;
      v116 = v95;
      v117 = 0x6E6F6870656C6554;
      v118 = 0xE900000000000079;
    }

    else
    {
      v113 = 0x616964654DLL;
      v114 = 0xE500000000000000;
      v115 = v73;
      v116 = v95;
      v117 = 0x616964654DLL;
      v118 = 0xE500000000000000;
    }

    v119 = sub_255EAFFD8(v115, 0xD000000000000015, 0x8000000255ED0B20, v117, v118, v116);

    v73 = sub_255EAFFD8(v119, 0xD000000000000013, 0x8000000255ED0B40, v113, v114, v96);

    goto LABEL_72;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_255EB1968(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for AVBiomeEventSummary();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v16 = (&v34 - v15);
  v17 = a1[3];
  if (v17)
  {
    v18 = v17 - 1;
    if (__OFSUB__(v17, 1))
    {
      __break(1u);
    }

    else if ((v18 & 0x8000000000000000) == 0)
    {
      if (v18 < v17)
      {
        v19 = a1[4] + v18;
        v20 = a1[2];
        if (v19 < v20)
        {
          v20 = 0;
        }

        sub_255EB26C4(a1 + ((*(v14 + 80) + 40) & ~*(v14 + 80)) + (v19 - v20) * *(v14 + 72), v10, type metadata accessor for AVBiomeEventSummary);
        sub_255EB272C(v10, v13, type metadata accessor for AVBiomeEventSummary);
        sub_255EB272C(v13, v16, type metadata accessor for AVBiomeEventSummary);
        v21 = *v16;
        if (*v16 >= 75.0)
        {
          v22 = 4;
        }

        else
        {
          v22 = 3;
        }

        if (v21 >= 65.0)
        {
          v23 = v22;
        }

        else
        {
          v23 = 2;
        }

        if (v21 < 55.0)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        if (v21 >= 45.0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v26 = *(v16 + 25);
        v27 = *(v16 + 26);
        v28 = sub_255EB03FC(a1, a2, a3, v25, v27, v26);
        a3 = sub_255EB0B0C(a1, a2, v28, v25, v27, v26);

        sub_255EAFF7C(v16);
        return a3;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (qword_27F815850 != -1)
  {
LABEL_28:
    swift_once();
  }

  v29 = sub_255ECF198();
  __swift_project_value_buffer(v29, qword_27F815858);
  v30 = sub_255ECF178();
  v31 = sub_255ECF408();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_255EA2000, v30, v31, "Couldn't find last value in inputBuffer, returning metrics unchanged", v32, 2u);
    MEMORY[0x259C511E0](v32, -1, -1);
  }

  return a3;
}

unint64_t sub_255EB1C64()
{
  result = qword_27F815998;
  if (!qword_27F815998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F815998);
  }

  return result;
}

uint64_t sub_255EB1CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A80, &qword_255ECFF18);
    v3 = sub_255ECF4A8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_255ECF5C8();

      sub_255ECF2C8();
      result = sub_255ECF5F8();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          v18 = (*(v3 + 48) + 16 * v13);
          if (*v18 == v9 && v18[1] == v8)
          {
            break;
          }

          result = sub_255ECF588();
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        *(v5 + 8 * v14) = v16 | v15;
        v20 = (*(v3 + 48) + 16 * v13);
        *v20 = v9;
        v20[1] = v8;
        v21 = *(v3 + 16);
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v23;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_255EB1E28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t dispatch thunk of AVLogReader.runModelWithBiomeInputs(model:startDate:batchSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 104);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_255EB2058;

  return v12(a1, a2, a3);
}

uint64_t sub_255EB2058(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_255EB2194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_255ECEE68();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 52);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_255EB2254(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v7 = sub_255ECEE68();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255EB22F4()
{
  result = sub_255ECEE68();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255EB23F4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_255EB2484(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255EB258C()
{
  result = qword_27F815A18;
  if (!qword_27F815A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815A18);
  }

  return result;
}

uint64_t sub_255EB2624(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_255EB2670()
{
  result = qword_27F815A30;
  if (!qword_27F815A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815A30);
  }

  return result;
}

uint64_t sub_255EB26C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255EB272C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_OWORD *sub_255EB2798(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_255EB27A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255EB27F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255EB2860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_255EB291C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_255EB29D0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 1702125924;
    case 2:
    case 9:
    case 19:
      return 0xD000000000000011;
    case 3:
      return 0x426463694D666572;
    case 4:
      return 0x426463694D666572;
    case 5:
      return 0x4142646D757264;
    case 6:
      return 0x4B42646D757264;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0x6B6E696C6E776F64;
    case 10:
    case 28:
      v4 = 5;
      return v4 | 0xD000000000000010;
    case 11:
      return 0x6E6F687064616568;
    case 12:
      return 0x79546D6165727473;
    case 13:
    case 15:
      return 0xD000000000000017;
    case 14:
    case 34:
      v4 = 9;
      return v4 | 0xD000000000000010;
    case 16:
      return 0xD00000000000001CLL;
    case 17:
      return 0x64654D457473616CLL;
    case 18:
      return 0xD000000000000010;
    case 20:
    case 26:
      return 0xD000000000000014;
    case 21:
      return 0x726953457473616CLL;
    case 22:
      v3 = 1953718636;
      goto LABEL_28;
    case 23:
      return 0x614568746F6F6D73;
    case 24:
      return 0x4464657269736564;
    case 25:
      return 0xD000000000000010;
    case 27:
      v3 = 1684370032;
LABEL_28:
      result = v3 | 0x536C6F5600000000;
      break;
    case 29:
      result = 0xD000000000000013;
      break;
    case 30:
      result = 0x754378614D6E696DLL;
      break;
    case 31:
      result = 0x6F646E6957676962;
      break;
    case 32:
      result = 0x6E69576C6C616D73;
      break;
    case 33:
      result = 0x7041657669746361;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void sub_255EB2E64(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815990, &qword_255ECFBF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255ECFF70;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000255ED0E00;
  v3 = sub_255ECEE68();
  *(inited + 72) = v3;
  __swift_allocate_boxed_opaque_existential_0((inited + 48));
  sub_255ECEE58();
  *(inited + 80) = 0xD000000000000024;
  *(inited + 88) = 0x8000000255ED0E20;
  *(inited + 120) = v3;
  __swift_allocate_boxed_opaque_existential_0((inited + 96));
  sub_255ECEE58();
  *(inited + 128) = 0xD000000000000023;
  *(inited + 136) = 0x8000000255ED0E50;
  *(inited + 168) = v3;
  __swift_allocate_boxed_opaque_existential_0((inited + 144));
  sub_255ECEE58();
  v4 = sub_255EAF890(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D0, &qword_255ECFFE0);
  swift_arrayDestroy();
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v6 = sub_255ECF268();
  v7 = [v5 initWithSuiteName_];

  if (!v7)
  {
    v7 = [objc_opt_self() standardUserDefaults];
  }

  v8 = v7;
  v9 = sub_255ECF1E8();

  [v8 registerDefaults_];

  *a1 = v8;
  a1[1] = 0xD000000000000031;
  a1[2] = 0x8000000255ED0E80;
  a1[3] = v4;
}

uint64_t static UserDefaultsManager.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F8158F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = qword_27F815AD8;
  v2 = unk_27F815AE0;
  v3 = qword_27F815AE8;
  v4 = unk_27F815AF0;
  *a1 = qword_27F815AD8;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  v5 = v1;
}

Swift::Void __swiftcall UserDefaultsManager.saveEvaluationDate()()
{
  v1 = sub_255ECEE68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_255ECEE58();
  v7 = sub_255ECEE08();
  (*(v2 + 8))(v5, v1);
  v8 = sub_255ECF268();
  [v6 setObject:v7 forKey:v8];
}

void UserDefaultsManager.saveDataFrameDateRange(startDate:endDate:)()
{
  v1 = *v0;
  v2 = sub_255ECEE08();
  v3 = sub_255ECF268();
  [v1 setObject:v2 forKey:v3];

  v4 = sub_255ECEE08();
  v5 = sub_255ECF268();
  [v1 setObject:v4 forKey:v5];
}

uint64_t UserDefaultsManager.previousEvaluationDate()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_255ECF268();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_255ECF458();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = sub_255ECEE68();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_255EB3458(v12);
    v9 = sub_255ECEE68();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_255EB3458(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815AF8, &qword_255ECFF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_255EB34CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_255EB3514(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_255EB35C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a4;
  v87 = a5;
  v8 = sub_255ECEFC8();
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_255ECF078();
  v13 = *(v12 - 8);
  v84 = v12;
  v85 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v74[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v74[-v21];
  if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_255ECF588() & 1) != 0)
  {
    if (!*(a3 + 16) || (v23 = sub_255EACAD4(0x79747265706F7270, 0xE800000000000000), (v24 & 1) == 0))
    {
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v55 = sub_255ECF198();
      __swift_project_value_buffer(v55, qword_27F815898);

      v56 = sub_255ECF178();
      v57 = sub_255ECF408();

      if (!os_log_type_enabled(v56, v57))
      {
        goto LABEL_45;
      }

      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v88[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_255EBCAE0(a1, a2, v88);
      v60 = "Missing 'property' argument in 'filter' named %s.";
      goto LABEL_44;
    }

    if (*(a3 + 16))
    {
      v25 = (*(a3 + 56) + 16 * v23);
      v26 = v25[1];
      v82 = *v25;

      v27 = sub_255EACAD4(0x65756C6176, 0xE500000000000000);
      if (v28)
      {
        v81 = v26;
        if (*(a3 + 16))
        {
          v29 = (*(a3 + 56) + 16 * v27);
          v30 = v29[1];
          v80 = *v29;

          v31 = sub_255EACAD4(0x6F6974617265706FLL, 0xE90000000000006ELL);
          if (v32)
          {
            v33 = (*(a3 + 56) + 16 * v31);
            v35 = *v33;
            v34 = v33[1];
            v88[3] = MEMORY[0x277D837D0];
            v88[0] = v80;
            v88[1] = v30;

            v36 = v86;
            v77 = v35;
            v79 = v34;
            sub_255EB40B4(v86, v82, v81, v88, v35, v34, v22);
            __swift_destroy_boxed_opaque_existential_0(v88);
            v78 = v30;
            if (qword_27F815890 != -1)
            {
              swift_once();
            }

            v37 = sub_255ECF198();
            __swift_project_value_buffer(v37, qword_27F815898);
            v38 = *(v85 + 16);
            v39 = v36;
            v40 = v84;
            v38(v20, v39, v84);
            v38(v17, v22, v40);
            v41 = v81;

            v42 = sub_255ECF178();
            v43 = sub_255ECF3F8();

            v86 = v42;
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v75 = v43;
              v45 = v44;
              v76 = swift_slowAlloc();
              v88[0] = v76;
              *v45 = 136316162;
              v46 = sub_255EBCAE0(v82, v41, v88);

              *(v45 + 4) = v46;
              *(v45 + 12) = 2080;
              v47 = sub_255EBCAE0(v77, v79, v88);

              *(v45 + 14) = v47;
              *(v45 + 22) = 2080;
              v48 = sub_255EBCAE0(v80, v78, v88);

              *(v45 + 24) = v48;
              *(v45 + 32) = 2048;
              sub_255ECEFD8();
              v49 = sub_255ECEFB8();
              v83 = *(v83 + 8);
              (v83)(v11, v8);
              v50 = *(v85 + 8);
              v50(v20, v84);
              *(v45 + 34) = v49;
              *(v45 + 42) = 2048;
              sub_255ECEFD8();
              v51 = sub_255ECEFB8();
              (v83)(v11, v8);
              v50(v17, v84);
              v52 = v84;
              *(v45 + 44) = v51;
              v53 = v86;
              _os_log_impl(&dword_255EA2000, v86, v75, "'%s %s %s' reduces data samples from %ld samples to %ld samples.", v45, 0x34u);
              v54 = v76;
              swift_arrayDestroy();
              MEMORY[0x259C511E0](v54, -1, -1);
              MEMORY[0x259C511E0](v45, -1, -1);
            }

            else
            {
              v52 = v84;
              v73 = *(v85 + 8);
              v73(v17, v84);
              v73(v20, v52);
            }

            return (*(v85 + 32))(v87, v22, v52);
          }
        }

        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v67 = sub_255ECF198();
        __swift_project_value_buffer(v67, qword_27F815898);

        v56 = sub_255ECF178();
        v57 = sub_255ECF408();

        if (!os_log_type_enabled(v56, v57))
        {
          goto LABEL_45;
        }

        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v88[0] = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_255EBCAE0(a1, a2, v88);
        v60 = "Missing 'operation' argument in 'filter' named %s.";
        goto LABEL_44;
      }
    }

    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v64 = sub_255ECF198();
    __swift_project_value_buffer(v64, qword_27F815898);

    v56 = sub_255ECF178();
    v57 = sub_255ECF408();

    if (!os_log_type_enabled(v56, v57))
    {
      goto LABEL_45;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v88[0] = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_255EBCAE0(a1, a2, v88);
    v60 = "Missing 'value' argument in 'filter' named %s.";
LABEL_44:
    _os_log_impl(&dword_255EA2000, v56, v57, v60, v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x259C511E0](v59, -1, -1);
    MEMORY[0x259C511E0](v58, -1, -1);
LABEL_45:

    v69 = v86;
    v70 = *(v85 + 16);
    v71 = v87;
    v72 = v84;

    return v70(v71, v69, v72);
  }

  if (a1 == 0xD00000000000001CLL && 0x8000000255ED0EC0 == a2 || (sub_255ECF588() & 1) != 0)
  {
    v61 = v86;
    v62 = v87;

    return sub_255EB67A8(v61, v62);
  }

  else
  {
    if ((a1 != 0xD000000000000010 || 0x8000000255ED0EE0 != a2) && (sub_255ECF588() & 1) == 0)
    {
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v68 = sub_255ECF198();
      __swift_project_value_buffer(v68, qword_27F815898);

      v56 = sub_255ECF178();
      v57 = sub_255ECF408();

      if (!os_log_type_enabled(v56, v57))
      {
        goto LABEL_45;
      }

      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v88[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_255EBCAE0(a1, a2, v88);
      v60 = "ERROR: Could not find filter function '%s'.";
      goto LABEL_44;
    }

    v65 = v86;
    v66 = v87;

    return sub_255EB71CC(v65, v66);
  }
}

uint64_t sub_255EB40B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v158 = a6;
  v159 = a4;
  v155 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v151 = &v149 - v13;
  v14 = sub_255ECEE68();
  v152 = *(v14 - 8);
  v153 = v14;
  v15 = *(v152 + 64);
  MEMORY[0x28223BE20](v14);
  v156 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D84F90];
  v163 = MEMORY[0x277D84F90];
  sub_255EADBD8(0, 2, 0);
  v18 = v163;
  v19 = sub_255EB29D0(byte_2867F8FC8);
  v22 = *(v18 + 16);
  v21 = *(v18 + 24);
  if (v22 >= v21 >> 1)
  {
    v143 = v19;
    v144 = v20;
    sub_255EADBD8((v21 > 1), v22 + 1, 1);
    v20 = v144;
    v19 = v143;
    v18 = v163;
  }

  *(v18 + 16) = v22 + 1;
  v23 = v18 + 16 * v22;
  *(v23 + 32) = v19;
  *(v23 + 40) = v20;
  v24 = sub_255EB29D0(byte_2867F8FC9);
  v163 = v18;
  v27 = *(v18 + 16);
  v26 = *(v18 + 24);
  if (v27 >= v26 >> 1)
  {
    v145 = v24;
    v146 = v25;
    sub_255EADBD8((v26 > 1), v27 + 1, 1);
    v25 = v146;
    v24 = v145;
    v18 = v163;
  }

  *(v18 + 16) = v27 + 1;
  v28 = v18 + 16 * v27;
  *(v28 + 32) = v24;
  *(v28 + 40) = v25;
  v163 = a2;
  v164 = a3;
  MEMORY[0x28223BE20](v24);
  *(&v149 - 2) = &v163;
  v29 = sub_255EB8728(sub_255EB87D4, (&v149 - 4), v18);

  if ((v29 & 1) == 0)
  {
    v157 = a2;
    v154 = a3;
    v150 = a7;
    v163 = v17;
    sub_255EADBD8(0, 33, 0);
    v44 = 0;
    v45 = v163;
    do
    {
      v46 = sub_255EB29D0(byte_2867F8F60[v44 + 32]);
      v47 = v46;
      v49 = v48;
      v163 = v45;
      v51 = *(v45 + 16);
      v50 = *(v45 + 24);
      if (v51 >= v50 >> 1)
      {
        v46 = sub_255EADBD8((v50 > 1), v51 + 1, 1);
        v45 = v163;
      }

      ++v44;
      *(v45 + 16) = v51 + 1;
      v52 = v45 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
    }

    while (v44 != 33);
    v53 = v154;
    v163 = v157;
    v164 = v154;
    MEMORY[0x28223BE20](v46);
    *(&v149 - 2) = &v163;
    v54 = sub_255EB8728(sub_255EB8CB0, (&v149 - 4), v45);

    if (v54)
    {
      v55 = v159;
      sub_255EAF798(v159, &v163);
      v56 = a1;
      if (!swift_dynamicCast())
      {
        v91 = v150;
        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v92 = sub_255ECF198();
        __swift_project_value_buffer(v92, qword_27F815898);
        sub_255EAF798(v55, &v163);
        v93 = sub_255ECF178();
        v94 = sub_255ECF408();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v162 = v96;
          *v95 = 136315138;
          sub_255EAF798(&v163, &v160);
          v97 = sub_255ECF2A8();
          v99 = v98;
          __swift_destroy_boxed_opaque_existential_0(&v163);
          v100 = sub_255EBCAE0(v97, v99, &v162);

          *(v95 + 4) = v100;
          _os_log_impl(&dword_255EA2000, v93, v94, "Could not parse value '%s' as String.", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v96);
          MEMORY[0x259C511E0](v96, -1, -1);
          MEMORY[0x259C511E0](v95, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(&v163);
        }

        v101 = sub_255ECF078();
        v102 = *(*(v101 - 8) + 16);
        v103 = v91;
        goto LABEL_68;
      }

      v57 = sub_255EBC1D8(v160, v161);
      v58 = v150;
      if (v59)
      {
        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v60 = sub_255ECF198();
        __swift_project_value_buffer(v60, qword_27F815898);
        v61 = sub_255ECF178();
        v62 = sub_255ECF408();
        if (!os_log_type_enabled(v61, v62))
        {
          goto LABEL_67;
        }

        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_255EA2000, v61, v62, "Could not parse String value as Int value.", v63, 2u);
      }

      else
      {
        v111 = v57;
        v112 = v155;
        v113 = v158;
        v114 = sub_255EB5284(v155, v158);
        if (v114)
        {
          v116 = v114;
          v117 = v115;
          v118 = swift_allocObject();
          *(v118 + 16) = v116;
          *(v118 + 24) = v117;
          v119 = MEMORY[0x28223BE20](v118);
          *(&v149 - 2) = sub_255EB8890;
          *(&v149 - 1) = v119;
          sub_255EB5B9C(a1, v157, v154, v111, sub_255EB88D0, (&v149 - 4), v58);
        }

        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v134 = sub_255ECF198();
        __swift_project_value_buffer(v134, qword_27F815898);

        v61 = sub_255ECF178();
        v135 = sub_255ECF408();

        if (!os_log_type_enabled(v61, v135))
        {
          goto LABEL_67;
        }

        v63 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v163 = v136;
        *v63 = 136315138;
        *(v63 + 4) = sub_255EBCAE0(v112, v113, &v163);
        _os_log_impl(&dword_255EA2000, v61, v135, "Could not parse operator '%s'.", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v136);
        MEMORY[0x259C511E0](v136, -1, -1);
      }

      MEMORY[0x259C511E0](v63, -1, -1);
LABEL_67:

      v101 = sub_255ECF078();
      v102 = *(*(v101 - 8) + 16);
      v103 = v58;
LABEL_68:
      v128 = v56;
      return v102(v103, v128, v101);
    }

    v163 = v17;
    sub_255EADBD8(0, 1, 0);
    v73 = v163;
    v74 = sub_255EB29D0(byte_2867F8FF0);
    v77 = *(v73 + 16);
    v76 = *(v73 + 24);
    if (v77 >= v76 >> 1)
    {
      v147 = v74;
      v148 = v75;
      sub_255EADBD8((v76 > 1), v77 + 1, 1);
      v75 = v148;
      v53 = v154;
      v74 = v147;
      v73 = v163;
    }

    *(v73 + 16) = v77 + 1;
    v78 = v73 + 16 * v77;
    *(v78 + 32) = v74;
    *(v78 + 40) = v75;
    v79 = v157;
    v163 = v157;
    v164 = v53;
    MEMORY[0x28223BE20](v74);
    *(&v149 - 2) = &v163;
    v80 = sub_255EB8728(sub_255EB8CB0, (&v149 - 4), v73);

    v81 = v150;
    v82 = v156;
    if (v80)
    {
      v83 = v159;
      sub_255EAF798(v159, &v163);
      if (!swift_dynamicCast())
      {
        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v120 = sub_255ECF198();
        __swift_project_value_buffer(v120, qword_27F815898);
        sub_255EAF798(v83, &v163);
        v88 = sub_255ECF178();
        v121 = sub_255ECF408();
        if (!os_log_type_enabled(v88, v121))
        {

          __swift_destroy_boxed_opaque_existential_0(&v163);
          goto LABEL_55;
        }

        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v162 = v123;
        *v122 = 136315138;
        sub_255EAF798(&v163, &v160);
        v124 = sub_255ECF2A8();
        v126 = v125;
        __swift_destroy_boxed_opaque_existential_0(&v163);
        v127 = sub_255EBCAE0(v124, v126, &v162);

        *(v122 + 4) = v127;
        _os_log_impl(&dword_255EA2000, v88, v121, "Could not parse value '%s' as String.", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v123);
        MEMORY[0x259C511E0](v123, -1, -1);
        v110 = v122;
        goto LABEL_53;
      }

      v84 = v151;
      sub_255EB65C8(v151);

      v85 = v152;
      v86 = v153;
      if ((*(v152 + 48))(v84, 1, v153) != 1)
      {
        (*(v85 + 32))(v82, v84, v86);
        v129 = v155;
        v130 = v158;
        v131 = sub_255EB54A4(v155, v158);
        if (v131)
        {
          v133 = v131;
          sub_255EB6074(a1, v79, v154, v82, v131, v132, v81);
          (*(v85 + 8))(v82, v86);
          return sub_255EB291C(v133);
        }

        if (qword_27F815890 != -1)
        {
          swift_once();
        }

        v137 = sub_255ECF198();
        __swift_project_value_buffer(v137, qword_27F815898);

        v138 = sub_255ECF178();
        v139 = sub_255ECF408();

        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          v141 = v85;
          v142 = swift_slowAlloc();
          v163 = v142;
          *v140 = 136315138;
          *(v140 + 4) = sub_255EBCAE0(v129, v130, &v163);
          _os_log_impl(&dword_255EA2000, v138, v139, "Could not parse operator '%s'.", v140, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v142);
          MEMORY[0x259C511E0](v142, -1, -1);
          MEMORY[0x259C511E0](v140, -1, -1);

          (*(v141 + 8))(v156, v86);
        }

        else
        {

          (*(v85 + 8))(v82, v86);
        }

        goto LABEL_55;
      }

      sub_255EB87F0(v84);
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v87 = sub_255ECF198();
      __swift_project_value_buffer(v87, qword_27F815898);
      v88 = sub_255ECF178();
      v89 = sub_255ECF408();
      if (!os_log_type_enabled(v88, v89))
      {
        goto LABEL_54;
      }

      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_255EA2000, v88, v89, "Could not parse String value as Date value.", v90, 2u);
    }

    else
    {
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v104 = sub_255ECF198();
      __swift_project_value_buffer(v104, qword_27F815898);
      v105 = v154;

      v88 = sub_255ECF178();
      v106 = sub_255ECF408();

      if (!os_log_type_enabled(v88, v106))
      {
        goto LABEL_54;
      }

      v90 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108 = v79;
      v109 = v107;
      v163 = v107;
      *v90 = 136315138;
      *(v90 + 4) = sub_255EBCAE0(v108, v105, &v163);
      _os_log_impl(&dword_255EA2000, v88, v106, "No field '%s' available for filtering.", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x259C511E0](v109, -1, -1);
    }

    v110 = v90;
LABEL_53:
    MEMORY[0x259C511E0](v110, -1, -1);
LABEL_54:

LABEL_55:
    v101 = sub_255ECF078();
    v102 = *(*(v101 - 8) + 16);
    v103 = v81;
LABEL_56:
    v128 = a1;
    return v102(v103, v128, v101);
  }

  v30 = v159;
  sub_255EAF798(v159, &v163);
  if (!swift_dynamicCast())
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v64 = sub_255ECF198();
    __swift_project_value_buffer(v64, qword_27F815898);
    sub_255EAF798(v30, &v163);
    v65 = sub_255ECF178();
    v66 = sub_255ECF408();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v162 = v68;
      *v67 = 136315138;
      sub_255EAF798(&v163, &v160);
      v69 = sub_255ECF2A8();
      v71 = v70;
      __swift_destroy_boxed_opaque_existential_0(&v163);
      v72 = sub_255EBCAE0(v69, v71, &v162);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_255EA2000, v65, v66, "Could not parse value '%s' as String.", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x259C511E0](v68, -1, -1);
      MEMORY[0x259C511E0](v67, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v163);
    }

    v101 = sub_255ECF078();
    v102 = *(*(v101 - 8) + 16);
    v103 = a7;
    goto LABEL_56;
  }

  v31 = a2;
  v32 = v161;
  v159 = v160;
  if (qword_27F815890 != -1)
  {
    swift_once();
  }

  v33 = sub_255ECF198();
  __swift_project_value_buffer(v33, qword_27F815898);
  v34 = v158;

  v35 = sub_255ECF178();
  v36 = sub_255ECF408();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = a3;
    v39 = swift_slowAlloc();
    v163 = v39;
    *v37 = 136315138;
    *(v37 + 4) = sub_255EBCAE0(v155, v34, &v163);
    _os_log_impl(&dword_255EA2000, v35, v36, "String values only support '==' operation, but '%s' provided. Defaulting to '=='.", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v40 = v39;
    a3 = v38;
    MEMORY[0x259C511E0](v40, -1, -1);
    MEMORY[0x259C511E0](v37, -1, -1);
  }

  v41 = swift_allocObject();
  *(v41 + 16) = sub_255EB89FC;
  *(v41 + 24) = 0;
  v42 = MEMORY[0x28223BE20](v41);
  *(&v149 - 2) = sub_255EB8A2C;
  *(&v149 - 1) = v42;
  sub_255EB56C4(a1, v31, a3, v159, v32, sub_255EB8A70, (&v149 - 4), a7);
}

BOOL (*sub_255EB5284(uint64_t a1, uint64_t a2))(void *a1, void *a2)
{
  v4 = sub_255EB8904;
  if (a1 != 15677 || a2 != 0xE200000000000000)
  {
    v5 = sub_255ECF588();
    v4 = sub_255EB8904;
    if ((v5 & 1) == 0)
    {
      v4 = sub_255EB8918;
      if (a1 != 60 || a2 != 0xE100000000000000)
      {
        v6 = sub_255ECF588();
        v4 = sub_255EB8918;
        if ((v6 & 1) == 0)
        {
          v4 = sub_255EB892C;
          if (a1 != 62 || a2 != 0xE100000000000000)
          {
            v7 = sub_255ECF588();
            v4 = sub_255EB892C;
            if ((v7 & 1) == 0)
            {
              v4 = sub_255EB8940;
              if (a1 != 15676 || a2 != 0xE200000000000000)
              {
                v8 = sub_255ECF588();
                v4 = sub_255EB8940;
                if ((v8 & 1) == 0)
                {
                  v4 = sub_255EB8954;
                  if (a1 != 15678 || a2 != 0xE200000000000000)
                  {
                    v9 = sub_255ECF588();
                    v4 = sub_255EB8954;
                    if ((v9 & 1) == 0)
                    {
                      v4 = sub_255EB8968;
                      if (a1 != 15649 || a2 != 0xE200000000000000)
                      {
                        v10 = sub_255ECF588();
                        v4 = sub_255EB8968;
                        if ((v10 & 1) == 0)
                        {
                          return 0;
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

  return v4;
}

void *sub_255EB54A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_255EB7F80;
  if (a1 != 15677 || a2 != 0xE200000000000000)
  {
    v5 = sub_255ECF588();
    v4 = sub_255EB7F80;
    if ((v5 & 1) == 0)
    {
      v4 = sub_255EB7FB4;
      if (a1 != 60 || a2 != 0xE100000000000000)
      {
        v6 = sub_255ECF588();
        v4 = sub_255EB7FB4;
        if ((v6 & 1) == 0)
        {
          v4 = sub_255EB8060;
          if (a1 != 62 || a2 != 0xE100000000000000)
          {
            v7 = sub_255ECF588();
            v4 = sub_255EB8060;
            if ((v7 & 1) == 0)
            {
              v4 = sub_255EB8094;
              if (a1 != 15676 || a2 != 0xE200000000000000)
              {
                v8 = sub_255ECF588();
                v4 = sub_255EB8094;
                if ((v8 & 1) == 0)
                {
                  v4 = sub_255EB80C8;
                  if (a1 != 15678 || a2 != 0xE200000000000000)
                  {
                    v9 = sub_255ECF588();
                    v4 = sub_255EB80C8;
                    if ((v9 & 1) == 0)
                    {
                      v4 = sub_255EB80FC;
                      if (a1 != 15649 || a2 != 0xE200000000000000)
                      {
                        v10 = sub_255ECF588();
                        v4 = sub_255EB80FC;
                        if ((v10 & 1) == 0)
                        {
                          return 0;
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

  return v4;
}

uint64_t sub_255EB56C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a6;
  v45 = a7;
  v48 = a8;
  v13 = sub_255ECEFF8();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v50[0] = a4;
  v50[1] = a5;
  v49[0] = MEMORY[0x277D84F90];
  sub_255EADBD8(0, 36, 0);
  v20 = 0;
  v21 = v49[0];
  do
  {
    v22 = sub_255EB29D0(byte_2867F8F18[v20 + 32]);
    v49[0] = v21;
    v25 = *(v21 + 16);
    v24 = *(v21 + 24);
    if (v25 >= v24 >> 1)
    {
      v42 = v23;
      v43 = v22;
      sub_255EADBD8((v24 > 1), v25 + 1, 1);
      v23 = v42;
      v22 = v43;
      v21 = v49[0];
    }

    ++v20;
    *(v21 + 16) = v25 + 1;
    v26 = v21 + 16 * v25;
    *(v26 + 32) = v22;
    *(v26 + 40) = v23;
  }

  while (v20 != 36);
  v49[0] = a2;
  v49[1] = a3;
  MEMORY[0x28223BE20](v22);
  *(&v42 - 2) = v49;
  v27 = sub_255EB8728(sub_255EB8CB0, (&v42 - 4), v21);

  if ((v27 & 1) == 0)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v36 = sub_255ECF198();
    __swift_project_value_buffer(v36, qword_27F815898);

    v31 = sub_255ECF178();
    v32 = sub_255ECF408();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_16;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v49[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_255EBCAE0(a2, a3, v49);
    v35 = "Field '%s' is not defined. Filtering skipped.";
    goto LABEL_15;
  }

  v28 = sub_255ECEF78();
  if (v29)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v30 = sub_255ECF198();
    __swift_project_value_buffer(v30, qword_27F815898);

    v31 = sub_255ECF178();
    v32 = sub_255ECF408();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_16;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v49[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_255EBCAE0(a2, a3, v49);
    v35 = "Field '%s' is defined, but does not exist in data frame. Filtering skipped.";
LABEL_15:
    _os_log_impl(&dword_255EA2000, v31, v32, v35, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x259C511E0](v34, -1, -1);
    MEMORY[0x259C511E0](v33, -1, -1);
LABEL_16:

    v37 = sub_255ECF078();
    return (*(*(v37 - 8) + 16))(v48, a1, v37);
  }

  MEMORY[0x28223BE20](v28);
  v39 = v45;
  *(&v42 - 4) = v44;
  *(&v42 - 3) = v39;
  *(&v42 - 2) = v50;
  sub_255ECF048();
  v41 = v46;
  v40 = v47;
  (*(v46 + 16))(v17, v19, v47);
  sub_255ECF088();
  return (*(v41 + 8))(v19, v40);
}

uint64_t sub_255EB5B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a5;
  v43 = a6;
  v45 = a7;
  v46 = a2;
  v10 = sub_255ECEFF8();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v48 = a4;
  v47[0] = MEMORY[0x277D84F90];
  sub_255EADBD8(0, 36, 0);
  v17 = 0;
  v18 = v47[0];
  do
  {
    v19 = sub_255EB29D0(byte_2867F8F18[v17 + 32]);
    v47[0] = v18;
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    if (v22 >= v21 >> 1)
    {
      v40 = v20;
      v41 = v19;
      sub_255EADBD8((v21 > 1), v22 + 1, 1);
      v20 = v40;
      v19 = v41;
      v18 = v47[0];
    }

    ++v17;
    *(v18 + 16) = v22 + 1;
    v23 = v18 + 16 * v22;
    *(v23 + 32) = v19;
    *(v23 + 40) = v20;
  }

  while (v17 != 36);
  v24 = v46;
  v47[0] = v46;
  v47[1] = a3;
  MEMORY[0x28223BE20](v19);
  *(&v39 - 2) = v47;
  v25 = sub_255EB8728(sub_255EB8CB0, (&v39 - 4), v18);

  if ((v25 & 1) == 0)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v34 = sub_255ECF198();
    __swift_project_value_buffer(v34, qword_27F815898);

    v29 = sub_255ECF178();
    v30 = sub_255ECF408();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_16;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_255EBCAE0(v24, a3, v47);
    v33 = "Field '%s' is not defined. Filtering skipped.";
    goto LABEL_15;
  }

  v26 = sub_255ECEF78();
  if (v27)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v28 = sub_255ECF198();
    __swift_project_value_buffer(v28, qword_27F815898);

    v29 = sub_255ECF178();
    v30 = sub_255ECF408();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_16;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_255EBCAE0(v46, a3, v47);
    v33 = "Field '%s' is defined, but does not exist in data frame. Filtering skipped.";
LABEL_15:
    _os_log_impl(&dword_255EA2000, v29, v30, v33, v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x259C511E0](v32, -1, -1);
    MEMORY[0x259C511E0](v31, -1, -1);
LABEL_16:

    v35 = sub_255ECF078();
    return (*(*(v35 - 8) + 16))(v45, a1, v35);
  }

  MEMORY[0x28223BE20](v26);
  v37 = v43;
  *(&v39 - 4) = v42;
  *(&v39 - 3) = v37;
  *(&v39 - 2) = &v48;
  sub_255ECF048();
  v38 = v44;
  (*(v44 + 16))(v14, v16, v10);
  sub_255ECF088();
  return (*(v38 + 8))(v16, v10);
}

uint64_t sub_255EB6074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a4;
  v50 = a6;
  v48 = a5;
  v52 = a7;
  v53 = a2;
  v9 = sub_255ECEFF8();
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v47 = sub_255ECEE68();
  v54[0] = MEMORY[0x277D84F90];
  sub_255EADBD8(0, 36, 0);
  v16 = 0;
  v17 = v54[0];
  do
  {
    v18 = sub_255EB29D0(byte_2867F8F18[v16 + 32]);
    v54[0] = v17;
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v21 >= v20 >> 1)
    {
      v45 = v19;
      v46 = v18;
      sub_255EADBD8((v20 > 1), v21 + 1, 1);
      v19 = v45;
      v18 = v46;
      v17 = v54[0];
    }

    ++v16;
    *(v17 + 16) = v21 + 1;
    v22 = v17 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
  }

  while (v16 != 36);
  v23 = v53;
  v54[0] = v53;
  v54[1] = a3;
  MEMORY[0x28223BE20](v18);
  *(&v45 - 2) = v54;
  v24 = sub_255EB8728(sub_255EB8CB0, (&v45 - 4), v17);

  if (v24)
  {
    v25 = a1;
    v26 = sub_255ECEF78();
    if (v27)
    {
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v28 = sub_255ECF198();
      __swift_project_value_buffer(v28, qword_27F815898);

      v29 = sub_255ECF178();
      v30 = sub_255ECF408();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v54[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_255EBCAE0(v53, a3, v54);
        _os_log_impl(&dword_255EA2000, v29, v30, "Field '%s' is defined, but does not exist in data frame. Filtering skipped.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x259C511E0](v32, -1, -1);
        MEMORY[0x259C511E0](v31, -1, -1);
      }

      v33 = sub_255ECF078();
      return (*(*(v33 - 8) + 16))(v52, v25, v33);
    }

    else
    {
      MEMORY[0x28223BE20](v26);
      v42 = v49;
      v43 = v50;
      *(&v45 - 4) = v48;
      *(&v45 - 3) = v43;
      *(&v45 - 2) = v42;
      sub_255ECF048();
      v44 = v51;
      (*(v51 + 16))(v13, v15, v9);
      sub_255ECF088();
      return (*(v44 + 8))(v15, v9);
    }
  }

  else
  {
    v35 = a1;
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v36 = sub_255ECF198();
    __swift_project_value_buffer(v36, qword_27F815898);

    v37 = sub_255ECF178();
    v38 = sub_255ECF408();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v54[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_255EBCAE0(v23, a3, v54);
      _os_log_impl(&dword_255EA2000, v37, v38, "Field '%s' is not defined. Filtering skipped.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x259C511E0](v40, -1, -1);
      MEMORY[0x259C511E0](v39, -1, -1);
    }

    v41 = sub_255ECF078();
    return (*(*(v41 - 8) + 16))(v52, v35, v41);
  }
}

uint64_t sub_255EB65C8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v3 = sub_255ECF268();
  [v2 setDateFormat_];

  v4 = sub_255ECF268();
  v5 = [v2 dateFromString_];

  if (v5)
  {
    sub_255ECEE48();
    v6 = 0;
  }

  else
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v7 = sub_255ECF198();
    __swift_project_value_buffer(v7, qword_27F815898);
    v5 = sub_255ECF178();
    v8 = sub_255ECF408();
    if (os_log_type_enabled(v5, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_255EA2000, v5, v8, "Error: Could not parse date. Returning now.", v9, 2u);
      MEMORY[0x259C511E0](v9, -1, -1);
    }

    v6 = 1;
  }

  v10 = sub_255ECEE68();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v6, 1, v10);
}

uint64_t sub_255EB67A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = sub_255ECEFC8();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = *(v84 + 64);
  MEMORY[0x28223BE20](v3);
  v83 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255ECEE68();
  v89 = *(v6 - 8);
  v7 = *(v89 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v88 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v87 = &v77 - v10;
  v11 = sub_255ECF078();
  v12 = *(v11 - 8);
  v95 = v11;
  v96 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v86 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = &v77 - v16;
  v17 = sub_255ECEFF8();
  v90 = *(v17 - 8);
  v91 = v17;
  v18 = *(v90 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v77 - v29;
  v31 = sub_255ECEF18();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v93 = sub_255ECEEF8();
  v33 = *(v93 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v93);
  v36 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECEEC8();
  sub_255ECEF08();
  sub_255ECEED8();
  if (qword_27F8158F0 != -1)
  {
    swift_once();
  }

  v97[0] = qword_27F815AD8;
  v97[1] = unk_27F815AE0;
  v97[2] = qword_27F815AE8;
  v97[3] = unk_27F815AF0;
  v37 = qword_27F815AD8;

  UserDefaultsManager.previousEvaluationDate()(v30);
  v38 = v97[0];

  v39 = sub_255ECEF78();
  if (v40)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v41 = sub_255ECF198();
    __swift_project_value_buffer(v41, qword_27F815898);
    v42 = sub_255ECF178();
    v43 = sub_255ECF408();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v95;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v97[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_255EBCAE0(1702125924, 0xE400000000000000, v97);
      _os_log_impl(&dword_255EA2000, v42, v43, "Column '%s' does not exist. Return all samples.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x259C511E0](v47, -1, -1);
      MEMORY[0x259C511E0](v46, -1, -1);
    }

    (*(v33 + 8))(v36, v93);
    (*(v96 + 16))(v94, a1, v45);
  }

  else
  {
    v82 = v33;
    MEMORY[0x28223BE20](v39);
    *(&v77 - 2) = v30;
    sub_255ECF048();
    v49 = v90;
    v48 = v91;
    (*(v90 + 16))(v21, v23, v91);
    v50 = v92;
    sub_255ECF088();
    sub_255EB8BB8(v30, v28);
    v51 = v89;
    if ((*(v89 + 48))(v28, 1, v6) == 1)
    {
      (*(v49 + 8))(v23, v48);
      (*(v82 + 8))(v36, v93);
      sub_255EB87F0(v28);
      v53 = v95;
      v52 = v96;
    }

    else
    {
      v81 = v23;
      v54 = v87;
      (*(v51 + 32))(v87, v28, v6);
      v53 = v95;
      v55 = v96;
      if (qword_27F815890 != -1)
      {
        swift_once();
      }

      v56 = sub_255ECF198();
      __swift_project_value_buffer(v56, qword_27F815898);
      v57 = v86;
      (*(v55 + 16))(v86, v50, v53);
      (*(v51 + 16))(v88, v54, v6);
      v58 = sub_255ECF178();
      v79 = sub_255ECF3F8();
      v80 = v58;
      v59 = os_log_type_enabled(v58, v79);
      v60 = v82;
      if (v59)
      {
        v61 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v97[0] = v78;
        *v61 = 134218242;
        v62 = v51;
        v63 = v60;
        v64 = v83;
        sub_255ECEFD8();
        v65 = sub_255ECEFB8();
        (*(v84 + 8))(v64, v85);
        (*(v96 + 8))(v57, v95);
        *(v61 + 4) = v65;
        *(v61 + 12) = 2080;
        sub_255EB8C48(&qword_27F815B00);
        v66 = v88;
        v67 = sub_255ECF578();
        v69 = v68;
        v70 = *(v62 + 8);
        v70(v66, v6);
        v71 = sub_255EBCAE0(v67, v69, v97);

        *(v61 + 14) = v71;
        v52 = v96;
        v72 = v80;
        _os_log_impl(&dword_255EA2000, v80, v79, "'newSamplesSinceLastPluginRun' found %ld samples since last plugin run on %s.", v61, 0x16u);
        v73 = v78;
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x259C511E0](v73, -1, -1);
        v74 = v61;
        v53 = v95;
        MEMORY[0x259C511E0](v74, -1, -1);

        v70(v87, v6);
        (*(v90 + 8))(v81, v91);
        (*(v63 + 8))(v36, v93);
      }

      else
      {
        (*(v55 + 8))(v57, v53);

        v75 = *(v51 + 8);
        v75(v88, v6);
        v75(v54, v6);
        v52 = v96;
        (*(v90 + 8))(v81, v91);
        (*(v60 + 8))(v36, v93);
      }

      v50 = v92;
    }

    (*(v52 + 32))(v94, v50, v53);
  }

  return sub_255EB87F0(v30);
}

uint64_t sub_255EB71CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v104 = a2;
  v89 = sub_255ECEFC8();
  v88 = *(v89 - 8);
  v2 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_255ECF078();
  v103 = *(v110 - 8);
  v4 = *(v103 + 64);
  v5 = MEMORY[0x28223BE20](v110);
  v92 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v100 = &v87 - v7;
  v101 = sub_255ECEFF8();
  v98 = *(v101 - 8);
  v8 = *(v98 + 64);
  v9 = MEMORY[0x28223BE20](v101);
  v94 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v87 - v11;
  v12 = sub_255ECEEE8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v108 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v87 - v21;
  v23 = sub_255ECEE68();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v91 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v112 = &v87 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v113 = &v87 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v87 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v87 - v35;
  v37 = sub_255ECEF18();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v102 = sub_255ECEEF8();
  v99 = *(v102 - 8);
  v39 = *(v99 + 64);
  MEMORY[0x28223BE20](v102);
  v41 = &v87 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECEEC8();
  sub_255ECEF08();
  sub_255ECEED8();
  sub_255ECEE58();
  sub_255ECEEA8();
  v96 = v24[1];
  v97 = v24 + 1;
  v96(v34, v23);
  v42 = *MEMORY[0x277CC9968];
  v107 = v13[13];
  v107(v16, v42, v12);
  v111 = v36;
  sub_255ECEEB8();
  v43 = v22;
  v44 = v13[1];
  v109 = (v13 + 1);
  v106 = v44;
  (v44)(v16, v12);
  v45 = v22;
  v46 = v23;
  v105 = v24[6];
  result = v105(v45, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v90 = v24;
  v48 = v24[4];
  v48(v113, v43, v46);
  v107(v16, *MEMORY[0x277CC99A8], v12);
  v49 = v108;
  sub_255ECEEB8();
  v106(v16, v12);
  result = v105(v49, 1, v46);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v50 = v46;
  v51 = v41;
  v52 = v112;
  v48(v112, v49, v46);
  v53 = v93;
  v54 = sub_255ECEF78();
  v55 = v103;
  v56 = v111;
  if (v57)
  {
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v58 = sub_255ECF198();
    __swift_project_value_buffer(v58, qword_27F815898);
    v59 = sub_255ECF178();
    v60 = sub_255ECF408();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v114[0] = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_255EBCAE0(1702125924, 0xE400000000000000, v114);
      _os_log_impl(&dword_255EA2000, v59, v60, "Column '%s' does not exist. Return all samples.", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x259C511E0](v62, -1, -1);
      MEMORY[0x259C511E0](v61, -1, -1);
    }

    v63 = v96;
    v96(v113, v50);
    (*(v99 + 8))(v51, v102);
    (*(v55 + 16))(v104, v53, v110);
  }

  else
  {
    v109 = v51;
    MEMORY[0x28223BE20](v54);
    *(&v87 - 2) = v56;
    *(&v87 - 1) = v52;
    v64 = v95;
    sub_255ECF048();
    v107 = *(v98 + 16);
    v108 = (v98 + 16);
    v107(v94, v64, v101);
    v65 = v100;
    sub_255ECF088();
    if (qword_27F815890 != -1)
    {
      swift_once();
    }

    v66 = sub_255ECF198();
    __swift_project_value_buffer(v66, qword_27F815898);
    v67 = v92;
    v68 = v110;
    (*(v55 + 16))(v92, v65, v110);
    v69 = v91;
    (v90[2])(v91, v56, v50);
    v70 = sub_255ECF178();
    v71 = sub_255ECF3F8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v114[0] = v106;
      *v72 = 134218242;
      v73 = v87;
      LODWORD(v105) = v71;
      sub_255ECEFD8();
      v74 = v68;
      v75 = v69;
      v76 = sub_255ECEFB8();
      (*(v88 + 8))(v73, v89);
      v77 = *(v55 + 8);
      v77(v67, v74);
      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      sub_255EB8C48(&qword_27F815B00);
      v78 = sub_255ECF578();
      v80 = v79;
      v63 = v96;
      v96(v75, v50);
      v81 = sub_255EBCAE0(v78, v80, v114);

      *(v72 + 14) = v81;
      _os_log_impl(&dword_255EA2000, v70, v105, "'samplesFromToday' found %ld samples since last plugin run on %s.", v72, 0x16u);
      v82 = v106;
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x259C511E0](v82, -1, -1);
      MEMORY[0x259C511E0](v72, -1, -1);

      v83 = v113;
      v84 = v110;
    }

    else
    {
      v77 = *(v55 + 8);
      v77(v67, v68);

      v63 = v96;
      v96(v69, v50);
      v83 = v113;
      v84 = v68;
    }

    v85 = v95;
    v86 = v101;
    v107(v94, v95, v101);
    sub_255ECF088();
    v77(v100, v84);
    (*(v98 + 8))(v85, v86);
    v63(v83, v50);
    (*(v99 + 8))(v109, v102);
    v56 = v111;
    v52 = v112;
  }

  v63(v52, v50);
  return (v63)(v56, v50);
}