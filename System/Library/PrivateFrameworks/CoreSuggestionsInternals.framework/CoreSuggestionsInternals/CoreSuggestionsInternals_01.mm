id sub_231E7C1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2320EDDA0();

  v5 = [swift_getObjCClassFromMetadata() duplicateKeyForPseudoEventWithGroupId:v4 parentKey:a3];

  return v5;
}

id sub_231E7C24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2320ED5B0();
  v9 = sub_2320ED610();
  v10 = sub_2320ED5B0();
  v11 = sub_2320ED610();
  v12 = [swift_getObjCClassFromMetadata() rangeWithStartDate:v8 startTimeZone:v9 endDate:v10 endTimeZone:v11];

  v13 = sub_2320ED630();
  v14 = *(*(v13 - 8) + 8);
  v14(a4, v13);
  v15 = sub_2320ED5F0();
  v16 = *(*(v15 - 8) + 8);
  v16(a3, v15);
  v14(a2, v13);
  v16(a1, v15);
  return v12;
}

uint64_t sub_231E7C3B0()
{
  v1 = sub_2320EDA70();
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41_0();
  v9 = v8 - v7;
  v10 = sub_2320EDD40();
  v11 = OUTLINED_FUNCTION_13(v10);
  v46 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41_0();
  v17 = v16 - v15;
  v18 = sub_2320ED830();
  v20 = v19;
  v21 = v18 == 0x656D7269666E6F63 && v19 == 0xE900000000000064;
  if (v21 || (v22 = v18, (OUTLINED_FUNCTION_14_1() & 1) != 0))
  {

    return 1;
  }

  else
  {
    v24 = v22 == 0x656C6C65636E6163 && v20 == 0xE900000000000064;
    if (v24 || (OUTLINED_FUNCTION_14_1() & 1) != 0)
    {

      return 3;
    }

    else
    {
      v25 = v22 == 0x6465696669646F6DLL && v20 == 0xE800000000000000;
      if (v25 || (OUTLINED_FUNCTION_14_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v26 = v22 == 0x7265646E696D6572 && v20 == 0xE800000000000000;
        if (v26 || (OUTLINED_FUNCTION_14_1() & 1) != 0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_22_1();
          v28 = v22 == 0xD000000000000012 && v27 == v20;
          if (v28 || (OUTLINED_FUNCTION_14_1() & 1) != 0)
          {

            return 6;
          }

          else
          {
            OUTLINED_FUNCTION_22_1();
            v30 = v22 == 0xD000000000000013 && v29 == v20;
            if (v30 || (OUTLINED_FUNCTION_14_1() & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_22_1();
              v32 = v22 == 0xD000000000000010 && v31 == v20;
              if (v32 || (OUTLINED_FUNCTION_14_1() & 1) != 0)
              {

                return 7;
              }

              else
              {
                if (v22 == 0x6E776F6E6B6E75 && v20 == 0xE700000000000000)
                {
                }

                else
                {
                  v34 = OUTLINED_FUNCTION_14_1();

                  if ((v34 & 1) == 0)
                  {
                    if (qword_280D93948 != -1)
                    {
                      OUTLINED_FUNCTION_78();
                    }

                    OUTLINED_FUNCTION_47_1(v10, qword_280D9DA90);
                    v35 = *(v46 + 16);
                    v36 = OUTLINED_FUNCTION_48_1();
                    v37(v36);
                    (*(v4 + 16))(v9, v0, v1);
                    v38 = sub_2320EDD20();
                    v39 = sub_2320EDE80();
                    if (os_log_type_enabled(v38, v39))
                    {
                      v40 = OUTLINED_FUNCTION_75_0();
                      v45 = OUTLINED_FUNCTION_51_1();
                      v47 = v45;
                      *v40 = 136315138;
                      v41 = sub_2320ED830();
                      v43 = v42;
                      (*(v4 + 8))(v9, v1);
                      v44 = sub_231E83810(v41, v43, &v47);

                      *(v40 + 4) = v44;
                      _os_log_impl(&dword_231E60000, v38, v39, "SGTextUnderstandingImporter: Unsupported event status %s", v40, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v45);
                      OUTLINED_FUNCTION_45_0();
                      OUTLINED_FUNCTION_45_0();
                    }

                    else
                    {

                      (*(v4 + 8))(v9, v1);
                    }

                    (*(v46 + 8))(v17, v10);
                  }
                }

                return 0;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_231E7C82C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D370, &qword_2321067F0);
    v2 = sub_2320EE000();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_231E7E97C(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_231E6EBF4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_231E6EBF4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_231E6EBF4(v32, v33);
    v15 = *(v2 + 40);
    result = sub_2320EDED0();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_231E6EBF4(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_231E7CAF0()
{
  v3 = sub_2320EDA70();
  v4 = OUTLINED_FUNCTION_13(v3);
  v89 = v5;
  v90 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41_0();
  v88 = v9 - v8;
  v10 = sub_2320EDD40();
  v11 = OUTLINED_FUNCTION_13(v10);
  v92 = v12;
  v93 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v91 = v15;
  OUTLINED_FUNCTION_4_1();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v87 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_44_1();
  v20 = sub_2320EDA20();
  v21 = OUTLINED_FUNCTION_13(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_21_1();
  MEMORY[0x28223BE20](v26);
  v28 = &v87 - v27;
  v29 = sub_2320EDA30();
  v31 = v30;
  v32 = v29 == 0x746867696C66 && v30 == 0xE600000000000000;
  if (v32 || (v33 = v29, (OUTLINED_FUNCTION_11_1() & 1) != 0))
  {

    v34 = [objc_opt_self() extractedFlight];
    return v34;
  }

  OUTLINED_FUNCTION_22_1();
  v37 = v33 == 0xD000000000000010 && v36 == v31;
  if (v37 || (OUTLINED_FUNCTION_11_1() & 1) != 0)
  {

    v34 = [objc_opt_self() extractedHotel];
    return v34;
  }

  OUTLINED_FUNCTION_22_1();
  v39 = v33 == 0xD000000000000015 && v38 == v31;
  if (v39 || (OUTLINED_FUNCTION_11_1() & 1) != 0)
  {

    v34 = [objc_opt_self() extractedFood];
    return v34;
  }

  OUTLINED_FUNCTION_22_1();
  v41 = v33 == 0xD000000000000011 && v40 == v31;
  if (!v41 && (OUTLINED_FUNCTION_11_1() & 1) == 0)
  {
    v46 = v33 == 2003789939 && v31 == 0xE400000000000000;
    if (!v46 && (OUTLINED_FUNCTION_11_1() & 1) == 0)
    {
      v54 = v33 == OUTLINED_FUNCTION_31_1() && v31 == v53;
      if (v54 || (OUTLINED_FUNCTION_11_1() & 1) != 0)
      {

        v34 = [objc_opt_self() extractedCarRental];
        return v34;
      }

      v64 = v33 == OUTLINED_FUNCTION_27_1() && v31 == v63;
      if (v64 || (OUTLINED_FUNCTION_11_1() & 1) != 0)
      {

        v34 = [objc_opt_self() extractedAppointment];
        return v34;
      }

      v65 = v33 == 0x7974726170 && v31 == 0xE500000000000000;
      if (v65 || (OUTLINED_FUNCTION_11_1() & 1) != 0)
      {

        v34 = [objc_opt_self() extractedSocial];
        return v34;
      }

      v67 = v33 == OUTLINED_FUNCTION_26_1() && v31 == v66;
      if (!v67 && (OUTLINED_FUNCTION_11_1() & 1) == 0)
      {
        if (v33 == OUTLINED_FUNCTION_23_1() && v31 == v72)
        {
        }

        else
        {
          v74 = OUTLINED_FUNCTION_11_1();

          if ((v74 & 1) == 0)
          {
            if (qword_280D93948 != -1)
            {
              OUTLINED_FUNCTION_78();
            }

            OUTLINED_FUNCTION_47_1(v93, qword_280D9DA90);
            v75 = *(v92 + 16);
            v76 = OUTLINED_FUNCTION_48_1();
            v77(v76);
            (*(v89 + 16))(v88, v1, v90);
            v78 = sub_2320EDD20();
            v79 = sub_2320EDE80();
            if (OUTLINED_FUNCTION_53_1(v79))
            {
              v80 = OUTLINED_FUNCTION_75_0();
              v81 = OUTLINED_FUNCTION_51_1();
              v94 = v81;
              *v80 = 136315138;
              v82 = v88;
              v83 = sub_2320EDA30();
              v85 = v84;
              (*(v89 + 8))(v82, v90);
              v86 = sub_231E83810(v83, v85, &v94);

              *(v80 + 4) = v86;
              _os_log_impl(&dword_231E60000, v78, v79, "SGTextUnderstandingImporter: Unsupported event category %s", v80, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v81);
              OUTLINED_FUNCTION_45_0();
              OUTLINED_FUNCTION_45_0();
            }

            else
            {

              (*(v89 + 8))(v88, v90);
            }

            (*(v92 + 8))(v91, v93);
            return 0;
          }
        }

        v34 = [objc_opt_self() fromCalendarAttachment];
        return v34;
      }

      if (qword_280D93948 != -1)
      {
        OUTLINED_FUNCTION_78();
      }

      OUTLINED_FUNCTION_47_1(v93, qword_280D9DA90);
      (*(v92 + 16))(v19);
      v68 = sub_2320EDD20();
      v69 = sub_2320EDE80();
      if (OUTLINED_FUNCTION_53_1(v69))
      {
        *OUTLINED_FUNCTION_48_0() = 0;
        OUTLINED_FUNCTION_49_1(&dword_231E60000, v70, v71, "SGTextUnderstandingImporter: Unexpected import for generic event");
        OUTLINED_FUNCTION_45_0();
      }

      (*(v92 + 8))(v19, v93);
      return 0;
    }

    sub_2320EDA50();
    v47 = sub_2320EDA00();
    v49 = v48;
    (*(v23 + 8))(v0, v20);
    if (v49)
    {
      if (v47 == 0x6569766F6DLL && v49 == 0xE500000000000000)
      {
      }

      else
      {
        v51 = sub_2320EE020();

        if ((v51 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v34 = [objc_opt_self() extractedMovie];
      return v34;
    }

LABEL_43:
    v34 = [objc_opt_self() extractedTicket];
    return v34;
  }

  sub_2320EDA50();
  v42 = sub_2320ED910();
  v44 = v43;
  (*(v23 + 8))(v28, v20);
  if (v44)
  {
    v45 = v42 == 0x6E69617274 && v44 == 0xE500000000000000;
    if (v45 || (OUTLINED_FUNCTION_42_1() & 1) != 0)
    {

      v34 = [objc_opt_self() extractedTrain];
      return v34;
    }

    v52 = v42 == 7566690 && v44 == 0xE300000000000000;
    if (v52 || (OUTLINED_FUNCTION_42_1() & 1) != 0)
    {

      v34 = [objc_opt_self() extractedBus];
      return v34;
    }

    if (v42 == 1952542562 && v44 == 0xE400000000000000)
    {
    }

    else
    {
      v56 = OUTLINED_FUNCTION_42_1();

      if ((v56 & 1) == 0)
      {
        if (qword_280D93948 != -1)
        {
          OUTLINED_FUNCTION_78();
        }

        v57 = v93;
        OUTLINED_FUNCTION_47_1(v93, qword_280D9DA90);
        v58 = v92;
        (*(v92 + 16))(v2);
        v59 = sub_2320EDD20();
        v60 = sub_2320EDE80();
        if (OUTLINED_FUNCTION_53_1(v60))
        {
          *OUTLINED_FUNCTION_48_0() = 0;
          OUTLINED_FUNCTION_49_1(&dword_231E60000, v61, v62, "SGTextUnderstandingImporter: Unexpected import for unknown type of ticketed transport");
          OUTLINED_FUNCTION_45_0();
        }

        (*(v58 + 8))(v2, v57);
        return 0;
      }
    }

    v34 = [objc_opt_self() extractedBoat];
    return v34;
  }

  return 0;
}

uint64_t sub_231E7D410(uint64_t a1)
{
  result = MEMORY[0x23837EC20](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_231E7DE20(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_231E7D4D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v25 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v6 + 40);
      sub_2320EE080();

      sub_2320EDDD0();
      v19 = sub_2320EE090();
      v20 = ~(-1 << *(v6 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v6 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = v25;
          goto LABEL_13;
        }

        v22 = (*(v6 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v16)
        {
          break;
        }

        v24 = sub_2320EE020();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

id sub_231E7D6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a6;
  v56 = a3;
  v57 = a5;
  v54 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D368, &qword_2321067E8);
  v13 = OUTLINED_FUNCTION_100(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_21_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D298, &qword_232106478);
  v21 = OUTLINED_FUNCTION_100(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_1();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v54 - v28;
  sub_2320ED890();
  if (v30)
  {
  }

  else
  {
    sub_2320ED8A0();
    v31 = sub_2320EDC00();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v31);
    sub_231E6F05C(v29, &qword_27DD8D298, &qword_232106478);
    if (EnumTagSinglePayload == 1)
    {
      sub_2320ED860();
      v33 = sub_2320EDBE0();
      v34 = __swift_getEnumTagSinglePayload(v19, 1, v33);
      sub_231E6F05C(v19, &qword_27DD8D368, &qword_2321067E8);
      result = 0;
      if (v34 == 1)
      {
        return result;
      }
    }
  }

  sub_2320ED860();
  v36 = sub_2320EDBE0();
  v37 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_42(v37, v38, v36);
  if (v39)
  {
    sub_231E6F05C(v8, &qword_27DD8D368, &qword_2321067E8);
    v41 = NAN;
  }

  else
  {
    sub_2320EDBC0();
    v41 = v40;
    OUTLINED_FUNCTION_101(v36);
    (*(v42 + 8))(v8, v36);
  }

  sub_2320ED860();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_42(v43, v44, v45);
  if (v39)
  {
    sub_231E6F05C(v7, &qword_27DD8D368, &qword_2321067E8);
    v47 = NAN;
  }

  else
  {
    sub_2320EDBD0();
    v47 = v46;
    OUTLINED_FUNCTION_101(v36);
    (*(v48 + 8))(v7, v36);
  }

  sub_2320ED890();
  OUTLINED_FUNCTION_43_1();
  sub_2320ED8A0();
  v49 = sub_2320EDC00();
  OUTLINED_FUNCTION_42(v26, 1, v49);
  if (v39)
  {
    sub_231E6F05C(v26, &qword_27DD8D298, &qword_232106478);
    v50 = 0;
    v52 = 0;
  }

  else
  {
    v50 = sub_2320EDBF0();
    v52 = v51;
    OUTLINED_FUNCTION_101(v49);
    (*(v53 + 8))(v26, v49);
  }

  objc_allocWithZone(MEMORY[0x277D02000]);

  return sub_231E7DC10(v41, v47, v54, a2, v56, a4, v57, v7, v8, v50, v52, v55, a7);
}

id sub_231E7DA84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v14[1] = *MEMORY[0x277D85DE8];
  if (a2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_2320ED560();
    sub_231E7E7D0(a1, a2);
  }

  v14[0] = 0;
  v9 = [v4 initWithData:v6 options:a3 error:v14];

  if (v9)
  {
    v10 = v14[0];
  }

  else
  {
    v11 = v14[0];
    sub_2320ED520();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

id sub_231E7DB80(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_2320EDDA0();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithDuplicateKey:a1 title:v8 parent:a4];

  return v9;
}

id sub_231E7DC10(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a4)
  {
    v19 = sub_2320EDDA0();

    if (a6)
    {
LABEL_3:
      v20 = sub_2320EDDA0();

      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_6:
  if (a9)
  {
    v21 = sub_2320EDDA0();
  }

  else
  {
    v21 = 0;
  }

  if (!a11)
  {
    v22 = 0;
    if (a13)
    {
      goto LABEL_11;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v22 = sub_2320EDDA0();

  if (!a13)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = sub_2320EDDA0();

LABEL_14:
  v24 = [v13 initWithMailAccountIdentifier:v19 messageIdentifier:v20 type:a7 label:v21 address:v22 airportCode:v23 latitude:a1 longitude:a2];

  return v24;
}

id SGUnixTimestampToDate(double a1)
{
  v1 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:a1];

  return v1;
}

uint64_t sub_231E7DDBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2321067C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_231E7DE20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2320EE080();
  sub_2320EDDD0();
  v9 = sub_2320EE090();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2320EE020() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_231E7E1C8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_231E7DF6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D378, &qword_2321067F8);
  result = sub_2320EDEF0();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_231E7DDBC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2320EE080();
    sub_2320EDDD0();
    result = sub_2320EE090();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231E7E1C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_231E7DF6C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_231E7E488(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2320EE080();
      sub_2320EDDD0();
      result = sub_2320EE090();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2320EE020() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_231E7E330();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2320EE030();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_231E7E330()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D378, &qword_2321067F8);
  v2 = *v0;
  v3 = sub_2320EDEE0();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_231E7E488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D378, &qword_2321067F8);
  result = sub_2320EDEF0();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2320EE080();

        sub_2320EDDD0();
        result = sub_2320EE090();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

id sub_231E7E6BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2320EDDA0();
  v5 = [a3 componentForKey_];

  return v5;
}

uint64_t sub_231E7E70C(void *a1)
{
  v1 = [a1 primaryRecipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231E7E9D8(0, &qword_280D93710, 0x277CC3450);
  v3 = sub_2320EDE20();

  return v3;
}

uint64_t sub_231E7E77C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2320EDE20();

  return v4;
}

uint64_t sub_231E7E7D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_231E7E7E4(a1, a2);
  }

  return a1;
}

uint64_t sub_231E7E7E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_231E7E83C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D338, &qword_2321067D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231E7E8AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D338, &qword_2321067D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231E7E91C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2320EDDB0();

  return v4;
}

uint64_t sub_231E7E97C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_231E7E9D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_231E7EA18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void OUTLINED_FUNCTION_6_1()
{
  v1 = *(v0 - 72);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return sub_2320EDE30();
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return sub_2320EE020();
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_2320EE020();
}

uint64_t OUTLINED_FUNCTION_15_1()
{
  result = *(v0 - 168);
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);
  v4 = *(v0 - 144);
  return result;
}

id OUTLINED_FUNCTION_16_1(uint64_t a1)
{

  return [v1 (v2 + 2966)];
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return sub_2320EDE40();
}

void OUTLINED_FUNCTION_40_1()
{

  JUMPOUT(0x23837EBD0);
}

uint64_t OUTLINED_FUNCTION_41_1()
{
  v2 = *(v0 - 120);

  return sub_2320ED7D0();
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return sub_2320EE020();
}

void OUTLINED_FUNCTION_49_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_53_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t TextUnderstandingImporter.__allocating_init(store:)()
{
  OUTLINED_FUNCTION_13_1();
  v0 = swift_allocObject();
  TextUnderstandingImporter.init(store:)();
  return v0;
}

uint64_t sub_231E7ED98()
{
  v0 = sub_2320EDD40();
  __swift_allocate_value_buffer(v0, qword_280D9DA90);
  __swift_project_value_buffer(v0, qword_280D9DA90);
  return sub_2320EDD30();
}

uint64_t sub_231E7EE18(uint64_t a1, void *a2)
{
  v3 = v2;
  v73 = a2;
  v77 = sub_2320EDD10();
  v5 = OUTLINED_FUNCTION_13(v77);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v70 = v10;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  v72 = &v62 - v12;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  v16 = sub_2320EDD40();
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  v74 = v22;
  OUTLINED_FUNCTION_4_1();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v62 - v25;
  if (qword_280D93948 != -1)
  {
    v24 = OUTLINED_FUNCTION_78();
  }

  OUTLINED_FUNCTION_48_2(v24, qword_280D9DA90);
  v27 = *(v19 + 16);
  v66 = v28;
  v67 = (v19 + 16);
  v65 = v27;
  (v27)(v26);
  v76 = v19;
  v29 = *(v7 + 16);
  v29(v15, a1, v77);
  v30 = sub_2320EDD20();
  v31 = sub_2320EDE70();
  v75 = v16;
  v32 = v31;
  v33 = os_log_type_enabled(v30, v31);
  v71 = v7;
  v68 = v29;
  v69 = v7 + 16;
  if (v33)
  {
    OUTLINED_FUNCTION_75_0();
    v63 = a1;
    v34 = OUTLINED_FUNCTION_19_2();
    v64 = v3;
    v62 = v34;
    v80 = v34;
    *a1 = 136315138;
    v35 = OUTLINED_FUNCTION_20_1();
    v36 = v77;
    (v29)(v35);
    OUTLINED_FUNCTION_32_1();
    v37 = sub_2320EDDC0();
    v39 = v38;
    v40 = *(v7 + 8);
    v40(v15, v36);
    v41 = v76;
    v42 = sub_231E83810(v37, v39, &v80);

    *(a1 + 4) = v42;
    _os_log_impl(&dword_231E60000, v30, v32, "EntityBuffer: adding %s", a1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    v3 = v64;
    OUTLINED_FUNCTION_45_0();
    a1 = v63;
    OUTLINED_FUNCTION_45_0();

    v43 = v41;
  }

  else
  {

    v40 = *(v7 + 8);
    v40(v15, v77);
    v43 = v76;
  }

  v44 = *(v43 + 8);
  v45 = v75;
  v44(v26, v75);
  swift_beginAccess();
  v46 = *(v3 + 15);

  v47 = sub_231E7F39C(a1, v46);

  if (v47)
  {
    v64 = v40;

    v65(v74, v66, v45);
    v48 = v70;
    v49 = v68;
    v68(v70, a1, v77);
    v50 = sub_2320EDD20();
    v51 = sub_2320EDE80();
    if (OUTLINED_FUNCTION_36_2(v51))
    {
      v52 = OUTLINED_FUNCTION_75_0();
      v53 = swift_slowAlloc();
      v79 = v53;
      *v52 = 136315138;
      v67 = v44;
      v54 = v77;
      v49(v72, v48, v77);
      v55 = sub_2320EDDC0();
      v57 = v56;
      v64(v48, v54);
      v58 = sub_231E83810(v55, v57, &v79);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_231E60000, v50, v51, "EntityBuffer: duplicate %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_45_0();

      v67(v74, v75);
    }

    else
    {

      v64(v48, v77);
      v44(v74, v45);
    }
  }

  swift_beginAccess();
  v59 = v73;
  v60 = *(v3 + 15);
  swift_isUniquelyReferenced_nonNull_native();
  v78 = *(v3 + 15);
  sub_231E6F0B8(v59);
  *(v3 + 15) = v78;
  return swift_endAccess();
}

void *sub_231E7F39C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_231E84454();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void *sub_231E7F3E4(uint64_t a1)
{
  v3 = sub_2320EDD10();
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v10 = v9;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = sub_2320EDD40();
  v15 = OUTLINED_FUNCTION_13(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_2();
  if (qword_280D93948 != -1)
  {
    OUTLINED_FUNCTION_78();
  }

  __swift_project_value_buffer(v14, qword_280D9DA90);
  v20 = OUTLINED_FUNCTION_30_2();
  v21(v20);
  v37 = v17;
  v38 = v14;
  v22 = *(v6 + 16);
  v22(v13, a1, v3);
  v23 = sub_2320EDD20();
  v24 = sub_2320EDE70();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_75_0();
    v36 = a1;
    v26 = v25;
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v26 = 136315138;
    v22(v10, v13, v3);
    OUTLINED_FUNCTION_32_1();
    v27 = sub_2320EDDC0();
    v29 = v28;
    (*(v6 + 8))(v13, v3);
    v30 = sub_231E83810(v27, v29, v40);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_231E60000, v23, v24, "EntityBuffer: retrieving %s", v26, 0xCu);
    OUTLINED_FUNCTION_7_2();
    a1 = v36;
    OUTLINED_FUNCTION_45_0();
  }

  else
  {

    (*(v6 + 8))(v13, v3);
  }

  (*(v37 + 8))(v1, v38);
  v31 = v39;
  OUTLINED_FUNCTION_47_2();
  v32 = *(v31 + 120);

  v33 = sub_231E7F39C(a1, v32);

  return v33;
}

uint64_t sub_231E7F6C0()
{
  v75 = sub_2320EDD10();
  v1 = OUTLINED_FUNCTION_13(v75);
  v67 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v70 = v5;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  v65 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D3C0, &qword_232106958);
  v9 = OUTLINED_FUNCTION_100(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v72 = v12;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  v71 = v64 - v14;
  v15 = sub_2320EDD40();
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_2();
  if (qword_280D93948 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    OUTLINED_FUNCTION_48_2(v21, qword_280D9DA90);
    (*(v18 + 16))(v0);
    v22 = sub_2320EDD20();
    v23 = sub_2320EDE60();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_48_0();
      *v24 = 0;
      _os_log_impl(&dword_231E60000, v22, v23, "EntityBuffer: flushing", v24, 2u);
      OUTLINED_FUNCTION_45_0();
    }

    v25 = *(v18 + 8);
    v26 = OUTLINED_FUNCTION_44_2();
    v27(v26);
    v28 = v73;
    OUTLINED_FUNCTION_47_2();
    v29 = *(v28 + 120);
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v18 = (v31 + 63) >> 6;
    v64[1] = v67 + 16;
    v74 = (v67 + 32);
    v68 = (v67 + 8);
    v66 = v29;

    v34 = 0;
    v69 = v30;
    v64[0] = v18;
    if (v33)
    {
      break;
    }

LABEL_8:
    v36 = v72;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v18)
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D3C8, &qword_232106960);
        __swift_storeEnumTagSinglePayload(v36, 1, 1, v62);
        v33 = 0;
        goto LABEL_14;
      }

      v33 = *(v30 + 8 * v35);
      ++v34;
      if (v33)
      {
        v34 = v35;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    v21 = OUTLINED_FUNCTION_78();
  }

  while (1)
  {
    v35 = v34;
    v36 = v72;
LABEL_13:
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v38 = v37 | (v35 << 6);
    v39 = v66;
    v40 = v67;
    v41 = v65;
    v42 = v75;
    (*(v67 + 16))(v65, *(v66 + 48) + *(v67 + 72) * v38, v75);
    v43 = *(*(v39 + 56) + 8 * v38);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D3C8, &qword_232106960);
    v45 = *(v44 + 48);
    (*(v40 + 32))(v36, v41, v42);
    *(v36 + v45) = v43;
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v44);
    v46 = v43;
    v18 = v64[0];
LABEL_14:
    v47 = v71;
    sub_231E84770(v36, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D3C8, &qword_232106960);
    v48 = OUTLINED_FUNCTION_13_1();
    if (__swift_getEnumTagSinglePayload(v48, 1, &qword_232106960) == 1)
    {
      break;
    }

    v49 = *(v47 + *"gBookmarks");
    v50 = v75;
    v51 = *v74;
    v52 = v70;
    v53 = OUTLINED_FUNCTION_38_2();
    v54(v53);
    v55 = *(v73 + 112);
    v56 = v49;
    sub_2320EDCE0();
    sub_2320EDDA0();
    OUTLINED_FUNCTION_13_1();

    sub_2320EDD00();
    v57 = sub_2320EDDA0();

    v0 = v52;
    v58 = sub_2320EDCF0();
    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0xE000000000000000;
    }

    sub_231E847E0(v56, v49, v57, v60, v61, v55);

    (*v68)(v52, v50);
    v30 = v69;
    if (!v33)
    {
      goto LABEL_8;
    }
  }

  return sub_231E7FBBC();
}

uint64_t sub_231E7FBBC()
{
  v1 = sub_2320EDD40();
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_2();
  if (qword_280D93948 != -1)
  {
    OUTLINED_FUNCTION_78();
  }

  __swift_project_value_buffer(v1, qword_280D9DA90);
  v7 = OUTLINED_FUNCTION_30_2();
  v8(v7);
  v9 = sub_2320EDD20();
  v10 = sub_2320EDE70();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_48_0();
    *v11 = 0;
    _os_log_impl(&dword_231E60000, v9, v10, "EntityBuffer: resetting", v11, 2u);
    OUTLINED_FUNCTION_45_0();
  }

  (*(v4 + 8))(v0, v1);
  swift_beginAccess();
  v12 = *(v0 + 120);
  *(v0 + 120) = MEMORY[0x277D84F98];
}

uint64_t sub_231E7FD34()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_231E7FD64()
{
  sub_231E7FD34();

  return MEMORY[0x282200960](v0);
}

uint64_t TextUnderstandingImporter.init(store:)()
{
  OUTLINED_FUNCTION_13_1();
  swift_defaultActor_initialize();
  *(v1 + 120) = v0;
  type metadata accessor for TextUnderstandingImporter.EntityBuffer();
  v2 = swift_allocObject();
  v3 = v0;
  swift_defaultActor_initialize();
  v4 = MEMORY[0x277D84F98];
  *(v2 + 112) = v3;
  *(v2 + 120) = v4;
  *(v1 + 112) = v2;
  return v1;
}

uint64_t sub_231E7FE1C()
{
  OUTLINED_FUNCTION_22_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D380, &qword_232106808);
  OUTLINED_FUNCTION_100(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_21_2();
  v1[5] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  OUTLINED_FUNCTION_100(v6);
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_76_0();
  v9 = sub_2320EDCC0();
  v1[7] = v9;
  OUTLINED_FUNCTION_14_0(v9);
  v1[8] = v10;
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_21_2();
  v1[10] = swift_task_alloc();
  v13 = sub_2320EDD40();
  v1[11] = v13;
  OUTLINED_FUNCTION_14_0(v13);
  v1[12] = v14;
  v16 = *(v15 + 64);
  v1[13] = OUTLINED_FUNCTION_21_2();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_231E7FF94()
{
  v86 = v0;
  if (qword_280D93948 != -1)
  {
    OUTLINED_FUNCTION_78();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[2];
  v7 = __swift_project_value_buffer(v0[11], qword_280D9DA90);
  v82 = *(v2 + 16);
  v83 = v7;
  v82(v1);
  v8 = *(v5 + 16);
  v8(v3, v6, v4);
  v9 = sub_2320EDD20();
  v10 = sub_2320EDEA0();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[15];
  v13 = v0[12];
  v84 = v0[11];
  v14 = v0[10];
  if (v11)
  {
    v81 = v9;
    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[7];
    OUTLINED_FUNCTION_75_0();
    v85 = OUTLINED_FUNCTION_17_1();
    v18 = OUTLINED_FUNCTION_45_2(4.8149e-34);
    (v8)(v18);
    v19 = sub_2320EDDC0();
    v20 = v10;
    v22 = v21;
    (*(v15 + 8))(v14, v17);
    sub_231E83810(v19, v22, &v85);
    OUTLINED_FUNCTION_13_1();

    *(v12 + 4) = v17;
    OUTLINED_FUNCTION_49_2(&dword_231E60000, v81, v20, "SGTextUnderstandingImporter: document deletion received: %s");
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_45_0();

    v23 = *(v13 + 8);
    v23(v12, v84);
  }

  else
  {
    v25 = v0[7];
    v24 = v0[8];

    v26 = *(v24 + 8);
    v27 = OUTLINED_FUNCTION_38_2();
    v28(v27);
    v23 = *(v13 + 8);
    v23(v12, v84);
  }

  v29 = v0[6];
  v30 = v0[2];
  sub_2320EDC80();
  v31 = sub_2320ED5F0();
  LODWORD(v30) = __swift_getEnumTagSinglePayload(v29, 1, v31);
  sub_231E78DE8(v29, &qword_27DD8D2B0, &qword_232106810);
  if (v30 != 1)
  {
    (v82)(v0[14], v83, v0[11]);
    v32 = sub_2320EDD20();
    v33 = sub_2320EDEA0();
    if (OUTLINED_FUNCTION_36_2(v33))
    {
      v34 = OUTLINED_FUNCTION_48_0();
      *v34 = 0;
      _os_log_impl(&dword_231E60000, v32, v33, "SGTextUnderstandingImporter: deletions using documentsReceivedAfter are not supported. Ignoring date.", v34, 2u);
      OUTLINED_FUNCTION_45_0();
    }

    v35 = v0[14];
    v36 = v0[11];
    v37 = v0[12];

    v38 = OUTLINED_FUNCTION_20_1();
    (v23)(v38);
  }

  v39 = v0[2];
  v40 = *(sub_2320EDCB0() + 16);

  if (v40)
  {
    v41 = v0[2];
    v42 = *(sub_2320EDCA0() + 16);

    if (v42)
    {
      (v82)(v0[13], v83, v0[11]);
      v43 = sub_2320EDD20();
      v44 = sub_2320EDEA0();
      if (OUTLINED_FUNCTION_36_2(v44))
      {
        v45 = OUTLINED_FUNCTION_48_0();
        *v45 = 0;
        _os_log_impl(&dword_231E60000, v43, v44, "SGTextUnderstandingImporter: deletions that combine domain and unique ids are not supported. Falling back to uniqueId deletion.", v45, 2u);
        OUTLINED_FUNCTION_45_0();
      }

      v47 = v0[12];
      v46 = v0[13];
      v48 = v0[11];

      v49 = OUTLINED_FUNCTION_20_1();
      (v23)(v49);
    }
  }

  v50 = v0[5];
  v51 = v0[2];
  sub_2320EDC70();
  v52 = sub_2320EDCD0();
  LODWORD(v51) = __swift_getEnumTagSinglePayload(v50, 1, v52);
  sub_231E78DE8(v50, &qword_27DD8D380, &qword_232106808);
  v53 = v0[2];
  if (v51 == 1)
  {
    v54 = v0[3];
    v55 = v0[2];
    sub_231E806A0();
  }

  else
  {
    v56 = v0[4];
    v57 = v0[2];
    sub_2320EDC70();
    if (__swift_getEnumTagSinglePayload(v56, 1, v52) == 1)
    {
      sub_231E78DE8(v0[4], &qword_27DD8D380, &qword_232106808);
    }

    else
    {
      v58 = *(v52 - 8);
      v59 = *(v58 + 88);
      v60 = OUTLINED_FUNCTION_44_2();
      v62 = v61(v60);
      v63 = *MEMORY[0x277D209A0];
      v64 = *(v58 + 8);
      v65 = OUTLINED_FUNCTION_44_2();
      v66(v65);
      if (v62 == v63)
      {
        v67 = v0[2];
        v68 = v0[3];
        sub_231E806A0();
        goto LABEL_23;
      }
    }

    v69 = v0[2];
    v70 = v0[3];
  }

  sub_231E804DC();
LABEL_23:
  v72 = v0[14];
  v71 = v0[15];
  v73 = v0[13];
  v75 = v0[9];
  v74 = v0[10];
  v77 = v0[5];
  v76 = v0[6];
  v78 = v0[4];

  OUTLINED_FUNCTION_19();

  return v79();
}

void sub_231E804DC()
{
  OUTLINED_FUNCTION_41_2();
  v1 = *(sub_2320EDCB0() + 16);

  if (v1)
  {
    v2 = *(v0 + 120);
    sub_2320EDC90();
    v3 = sub_2320EDDA0();

    sub_2320EDCB0();
    v10 = sub_2320EDE10();

    [v2 deleteSpotlightReferencesWithBundleIdentifier:v3 uniqueIdentifiers:v10];
  }

  else
  {
    v4 = *(sub_2320EDCA0() + 16);

    v3 = *(v0 + 120);
    sub_2320EDC90();
    v10 = sub_2320EDDA0();

    if (v4)
    {
      sub_231E7E9D8(0, &qword_27DD8D3E0, 0x277D425A8);
      sub_2320EDCA0();
      v5 = sub_231E8062C();
      v6 = OUTLINED_FUNCTION_42_2();
      [v6 v7];

      v3 = v10;
      v10 = v5;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_42_2();
      [v8 v9];
    }
  }
}

id sub_231E8062C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2320EDE10();

  v2 = [v0 initWithDomainsFromArray_];

  return v2;
}

void sub_231E806A0()
{
  OUTLINED_FUNCTION_41_2();
  v1 = *(sub_2320EDCB0() + 16);

  if (v1)
  {
    v2 = *(v0 + 120);
    sub_2320EDC90();
    v3 = sub_2320EDDA0();

    sub_2320EDCB0();
    v10 = sub_2320EDE10();

    [v2 deleteInteractionsWithBundleId:v3 identifiers:v10];
  }

  else
  {
    v4 = *(sub_2320EDCA0() + 16);

    v3 = *(v0 + 120);
    sub_2320EDC90();
    v10 = sub_2320EDDA0();

    if (v4)
    {
      sub_2320EDCA0();
      v5 = sub_2320EDE10();

      v6 = OUTLINED_FUNCTION_42_2();
      [v6 v7];

      v3 = v10;
      v10 = v5;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_42_2();
      [v8 v9];
    }
  }
}

uint64_t sub_231E807E4()
{
  OUTLINED_FUNCTION_22_0();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_2320EDC60();
  v1[7] = v3;
  OUTLINED_FUNCTION_14_0(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_76_0();
  v7 = sub_2320EDD10();
  v1[10] = v7;
  OUTLINED_FUNCTION_14_0(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_21_2();
  v1[13] = swift_task_alloc();
  v11 = sub_2320EDBB0();
  v1[14] = v11;
  OUTLINED_FUNCTION_14_0(v11);
  v1[15] = v12;
  v14 = *(v13 + 64);
  v1[16] = OUTLINED_FUNCTION_21_2();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v15 = sub_2320EDD40();
  v1[20] = v15;
  OUTLINED_FUNCTION_14_0(v15);
  v1[21] = v16;
  v18 = *(v17 + 64);
  v1[22] = OUTLINED_FUNCTION_21_2();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_231E809E4()
{
  v184 = v0;
  if (qword_280D93948 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v1 = v0[28];
    v2 = v0[21];
    v3 = v0[19];
    v4 = v0[14];
    v5 = v0[15];
    v6 = v0[5];
    v7 = __swift_project_value_buffer(v0[20], qword_280D9DA90);
    v0[29] = v7;
    v8 = *(v2 + 16);
    v0[30] = v8;
    v0[31] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v174 = v7;
    v176 = v8;
    v8(v1);
    v9 = *(v5 + 16);
    v0[32] = v9;
    v0[33] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v6, v4);
    v10 = sub_2320EDD20();
    v11 = sub_2320EDE70();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[28];
    v14 = v0[21];
    v168 = v0[20];
    v171 = v9;
    v15 = v0[19];
    v181 = v0;
    if (v12)
    {
      v166 = v0[28];
      v16 = v0[18];
      v164 = v11;
      v17 = v0[14];
      v18 = v0[15];
      OUTLINED_FUNCTION_75_0();
      v19 = OUTLINED_FUNCTION_17_1();
      v183 = v19;
      v20 = OUTLINED_FUNCTION_45_2(4.8149e-34);
      v21(v20);
      v22 = sub_2320EDDC0();
      v24 = v23;
      v25 = *(v18 + 8);
      v25(v15, v17);
      v26 = v25;
      sub_231E83810(v22, v24, &v183);
      OUTLINED_FUNCTION_13_1();

      *(v6 + 4) = v17;
      OUTLINED_FUNCTION_49_2(&dword_231E60000, v10, v164, "SGTextUnderstandingImporter: document observation received: %s");
      __swift_destroy_boxed_opaque_existential_0(v19);
      v0 = v181;
      OUTLINED_FUNCTION_45_0();
      v27 = v26;
      OUTLINED_FUNCTION_45_0();

      v28 = *(v14 + 8);
      v28(v166, v168);
    }

    else
    {
      v30 = v0[14];
      v29 = v0[15];

      v27 = *(v29 + 8);
      v31 = OUTLINED_FUNCTION_38_2();
      (v27)(v31);
      v28 = *(v14 + 8);
      v28(v13, v168);
    }

    v0[34] = v28;
    v0[35] = v27;
    v32 = v0[13];
    v33 = v0[10];
    v34 = v0[11];
    v35 = v0[5];
    sub_2320EDAA0();
    sub_2320EDCE0();
    v37 = v36;
    v38 = *(v34 + 8);
    v0[36] = v38;
    v0[37] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v39 = OUTLINED_FUNCTION_32_1();
    (v38)(v39);
    v40 = *MEMORY[0x277D021C0];
    sub_2320EDDB0();
    OUTLINED_FUNCTION_40_2();
    v42 = v42 && v41 == v37;
    if (!v42)
    {
      v43 = OUTLINED_FUNCTION_14_2();

      if (v43)
      {
        goto LABEL_12;
      }

      v95 = *MEMORY[0x277D021D0];
      sub_2320EDDB0();
      OUTLINED_FUNCTION_40_2();
      if (v42 && v96 == v37)
      {
      }

      else
      {
        v98 = OUTLINED_FUNCTION_14_2();

        if ((v98 & 1) == 0)
        {
          v125 = *MEMORY[0x277D021F0];
          sub_2320EDDB0();
          OUTLINED_FUNCTION_40_2();
          if (v42 && v126 == v37)
          {
          }

          else
          {
            v128 = OUTLINED_FUNCTION_14_2();

            if ((v128 & 1) == 0)
            {
              v170 = v28;
              v0 = v181;
              v129 = v181[17];
              v130 = v181[14];
              v131 = v181[5];
              v176(v181[24], v174, v181[20]);
              v132 = OUTLINED_FUNCTION_32_1();
              v171(v132);
              v133 = sub_2320EDD20();
              v178 = sub_2320EDE80();
              v134 = os_log_type_enabled(v133, v178);
              v135 = v181[24];
              v136 = v181[20];
              v180 = v181[21];
              v137 = v181[17];
              v139 = v181[14];
              v138 = v181[15];
              if (v134)
              {
                v173 = v133;
                v140 = v181[12];
                v165 = v181[10];
                OUTLINED_FUNCTION_75_0();
                v183 = OUTLINED_FUNCTION_17_1();
                *v27 = 136315138;
                v175 = v135;
                sub_2320EDAA0();
                v141 = sub_2320EDCE0();
                v167 = v136;
                v143 = v142;
                (v38)(v140, v165);
                v144 = OUTLINED_FUNCTION_29_1();
                (v27)(v144);
                v145 = sub_231E83810(v141, v143, &v183);

                *(v27 + 4) = v145;
                OUTLINED_FUNCTION_49_2(&dword_231E60000, v173, v178, "SGTextUnderstandingImporter: document from unsupported bundle: %s");
                OUTLINED_FUNCTION_7_2();
                OUTLINED_FUNCTION_45_0();

                v146 = v175;
                v147 = v167;
              }

              else
              {

                v163 = OUTLINED_FUNCTION_29_1();
                (v27)(v163);
                v146 = v135;
                v147 = v136;
              }

              v170(v146, v147);
LABEL_36:
              OUTLINED_FUNCTION_12_2();
              v182 = v0[9];

              OUTLINED_FUNCTION_19();

              return v93();
            }
          }

          v0 = v181;
          v148 = v181[25];
          v149 = v181[20];
          v150 = v181[18];
          v151 = v181[14];
          v152 = v181[5];
          sub_231E7E9D8(0, &qword_280D93720, off_278948F90);
          (v171)(v150, v152, v151);
          sub_231E78728(v150);
          v153 = OUTLINED_FUNCTION_25_1();
          v154(v153);
          v155 = v38;
          v110 = sub_2320EDD20();
          v156 = sub_2320EDEA0();

          v157 = os_log_type_enabled(v110, v156);
          v113 = v181[25];
          v55 = v181[20];
          v158 = v181[21];
          if (v157)
          {
            OUTLINED_FUNCTION_75_0();
            v115 = v38;
            v116 = v28;
            v117 = OUTLINED_FUNCTION_19_2();
            v183 = v117;
            *v38 = 136315138;
            v181[2] = v38;
            v159 = v155;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D388, &qword_232106820);
            v160 = sub_2320EDDC0();
            v172 = v113;
            v162 = sub_231E83810(v160, v161, &v183);

            *(v38 + 4) = v162;
            v124 = "SGTextUnderstandingImporter: reminders doc: %s";
            goto LABEL_52;
          }

          goto LABEL_63;
        }
      }

      v0 = v181;
      v104 = v181[26];
      OUTLINED_FUNCTION_34_1();
      sub_231E7E9D8(0, &qword_280D93720, off_278948F90);
      v105 = OUTLINED_FUNCTION_27_2();
      v106(v105);
      sub_231E77E98(v37);
      v107 = OUTLINED_FUNCTION_25_1();
      v108(v107);
      v109 = v38;
      v110 = sub_2320EDD20();
      v111 = sub_2320EDEA0();

      v112 = os_log_type_enabled(v110, v111);
      v113 = v181[26];
      v55 = v181[20];
      v114 = v181[21];
      if (v112)
      {
        OUTLINED_FUNCTION_75_0();
        v115 = v38;
        v116 = v28;
        v117 = OUTLINED_FUNCTION_19_2();
        v183 = v117;
        *v38 = 136315138;
        v181[3] = v38;
        v118 = v109;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D388, &qword_232106820);
        v119 = sub_2320EDDC0();
        v172 = v113;
        v121 = sub_231E83810(v119, v120, &v183);

        *(v38 + 4) = v121;
        v124 = "SGTextUnderstandingImporter: messages doc: %s";
LABEL_52:
        OUTLINED_FUNCTION_46_2(&dword_231E60000, v122, v123, v124);
        __swift_destroy_boxed_opaque_existential_0(v117);
        v28 = v116;
        OUTLINED_FUNCTION_45_0();
        v38 = v115;
        v0 = v181;
        OUTLINED_FUNCTION_45_0();

        v63 = v172;
        goto LABEL_15;
      }

LABEL_63:

      v63 = v113;
      goto LABEL_15;
    }

LABEL_12:
    v0 = v181;
    v44 = v181[27];
    OUTLINED_FUNCTION_34_1();
    sub_231E7E9D8(0, &qword_280D93720, off_278948F90);
    v45 = OUTLINED_FUNCTION_27_2();
    v46(v45);
    sub_231E77324(v37);
    v47 = OUTLINED_FUNCTION_25_1();
    v48(v47);
    v49 = v38;
    v50 = sub_2320EDD20();
    v51 = sub_2320EDEA0();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v181[27];
    v55 = v181[20];
    v54 = v181[21];
    if (v52)
    {
      OUTLINED_FUNCTION_75_0();
      v169 = v28;
      v56 = OUTLINED_FUNCTION_19_2();
      v183 = v56;
      *v38 = 136315138;
      v181[4] = v38;
      v57 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D388, &qword_232106820);
      v58 = sub_2320EDDC0();
      v60 = sub_231E83810(v58, v59, &v183);

      *(v38 + 4) = v60;
      OUTLINED_FUNCTION_46_2(&dword_231E60000, v61, v62, "SGTextUnderstandingImporter: email doc: %s");
      __swift_destroy_boxed_opaque_existential_0(v56);
      v28 = v169;
      OUTLINED_FUNCTION_45_0();
      v0 = v181;
      OUTLINED_FUNCTION_45_0();
    }

    v63 = v53;
LABEL_15:
    v28(v63, v55);
    v0[38] = v38;
    if (!v38)
    {
      v176(v0[22], v174, v0[20]);
      v85 = sub_2320EDD20();
      v86 = sub_2320EDE80();
      v87 = OUTLINED_FUNCTION_36_2(v86);
      v89 = v0[21];
      v88 = v0[22];
      v90 = v0[20];
      if (v87)
      {
        v91 = OUTLINED_FUNCTION_48_0();
        *v91 = 0;
        _os_log_impl(&dword_231E60000, v85, v86, "SGTextUnderstandingImporter: failed to generate entity.", v91, 2u);
        OUTLINED_FUNCTION_45_0();
      }

      v92 = OUTLINED_FUNCTION_20_1();
      (v28)(v92);
      goto LABEL_36;
    }

    v64 = v0[5];
    v65 = *(v0[6] + 120);
    v66 = sub_2320EDA80();
    v67 = *(v66 + 16);
    if (!v67)
    {
      break;
    }

    v68 = v0[8];
    v70 = *(v68 + 16);
    v69 = v68 + 16;
    v177 = v65;
    v179 = v70;
    v71 = v66 + ((*(v69 + 64) + 32) & ~*(v69 + 64));
    v72 = *(v69 + 56);
    v73 = MEMORY[0x277D84F90];
    while (1)
    {
      v74 = v0[9];
      v75 = v0[7];
      v179(v74, v71, v75);
      v76 = sub_2320EDC50();
      (*(v69 - 8))(v74, v75);
      v77 = *(v76 + 16);
      v78 = *(v73 + 16);
      v0 = (v78 + v77);
      if (__OFADD__(v78, v77))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v0 > *(v73 + 24) >> 1)
      {
        if (v78 <= v0)
        {
          v80 = v78 + v77;
        }

        else
        {
          v80 = v78;
        }

        sub_231E831F0(isUniquelyReferenced_nonNull_native, v80, 1, v73);
        v73 = v81;
      }

      if (*(v76 + 16))
      {
        if ((*(v73 + 24) >> 1) - *(v73 + 16) < v77)
        {
          goto LABEL_68;
        }

        swift_arrayInitWithCopy();

        v0 = v181;
        if (v77)
        {
          v82 = *(v73 + 16);
          v83 = __OFADD__(v82, v77);
          v84 = v82 + v77;
          if (v83)
          {
            goto LABEL_69;
          }

          *(v73 + 16) = v84;
        }
      }

      else
      {

        v0 = v181;
        if (v77)
        {
          goto LABEL_67;
        }
      }

      v71 += v72;
      if (!--v67)
      {

        v65 = v177;
        goto LABEL_46;
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
    OUTLINED_FUNCTION_78();
  }

LABEL_46:
  v99 = v0[12];
  v101 = v0[5];
  v100 = v0[6];
  v102 = sub_2320EDE10();

  [v65 registerSentHandles_];

  v103 = *(v100 + 112);
  v0[39] = v103;

  sub_2320EDAA0();

  return MEMORY[0x2822009F8](sub_231E8160C, v103, 0);
}

uint64_t sub_231E8160C()
{
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);
  sub_231E7EE18(*(v0 + 96), *(v0 + 304));

  v6 = OUTLINED_FUNCTION_20_1();
  v3(v6);

  return MEMORY[0x2822009F8](sub_231E816A8, v5, 0);
}

uint64_t sub_231E816A8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = *(v0 + 40);
  (*(v0 + 240))(*(v0 + 184), *(v0 + 232), *(v0 + 160));
  v7 = OUTLINED_FUNCTION_32_1();
  v2(v7);
  v8 = sub_2320EDD20();
  v9 = sub_2320EDE70();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 272);
  v11 = *(v0 + 280);
  v33 = *(v0 + 304);
  v13 = *(v0 + 184);
  v14 = *(v0 + 160);
  v15 = *(v0 + 168);
  v17 = *(v0 + 120);
  v16 = *(v0 + 128);
  v18 = *(v0 + 112);
  if (v10)
  {
    v31 = *(v0 + 168);
    v32 = *(v0 + 160);
    v19 = *(v0 + 96);
    v20 = *(v0 + 80);
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_17_1();
    *v13 = 136315138;
    sub_2320EDAA0();
    OUTLINED_FUNCTION_29_1();
    sub_2320EDDC0();
    v21 = OUTLINED_FUNCTION_37_2();
    v22(v21);
    v23 = OUTLINED_FUNCTION_29_1();
    v26 = sub_231E83810(v23, v24, v25);

    *(v13 + 4) = v26;
    OUTLINED_FUNCTION_49_2(&dword_231E60000, v8, v9, "SGTextUnderstandingImporter: document %s buffered");
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_45_0();

    v12(v13, v32);
  }

  else
  {

    v27 = OUTLINED_FUNCTION_37_2();
    v28(v27);
    v12(v13, v14);
  }

  OUTLINED_FUNCTION_12_2();
  v34 = *(v0 + 72);

  OUTLINED_FUNCTION_19();

  return v29();
}

uint64_t sub_231E8192C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_231E819A0, v1, 0);
}

uint64_t sub_231E819A0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 24);
  sub_231E7F6C0();

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_231E81A00()
{
  OUTLINED_FUNCTION_22_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2320EDD10();
  v1[4] = v3;
  OUTLINED_FUNCTION_14_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_21_2();
  v1[7] = swift_task_alloc();
  v7 = sub_2320EDD40();
  v1[8] = v7;
  OUTLINED_FUNCTION_14_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_76_0();
  v11 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231E81AFC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 88) = v1;

  return MEMORY[0x2822009F8](sub_231E81B70, v1, 0);
}

uint64_t sub_231E81B70()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[11];
  v2 = v0[3];
  v0[12] = sub_231E7F3E4(v0[2]);

  return MEMORY[0x2822009F8](sub_231E81BE4, v2, 0);
}

uint64_t sub_231E81BE4(uint64_t a1)
{
  if (!v1[12])
  {
    if (qword_280D93948 != -1)
    {
      a1 = OUTLINED_FUNCTION_78();
    }

    v3 = v1[9];
    v2 = v1[10];
    v5 = v1[7];
    v4 = v1[8];
    v6 = v1[4];
    v7 = v1[5];
    v8 = v1[2];
    OUTLINED_FUNCTION_48_2(a1, qword_280D9DA90);
    (*(v3 + 16))(v2);
    v9 = *(v7 + 16);
    v9(v5, v8, v6);
    v10 = sub_2320EDD20();
    v11 = sub_2320EDE90();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v1[9];
    v13 = v1[10];
    v16 = v1[7];
    v15 = v1[8];
    if (v12)
    {
      log = v10;
      v35 = v1[10];
      v17 = v1[5];
      v18 = v1[6];
      v19 = v1[4];
      v34 = v1[8];
      v20 = OUTLINED_FUNCTION_75_0();
      swift_slowAlloc();
      *v20 = 136315138;
      v9(v18, v16, v19);
      OUTLINED_FUNCTION_29_1();
      sub_2320EDDC0();
      (*(v17 + 8))(v16, v19);
      v21 = OUTLINED_FUNCTION_38_2();
      v24 = sub_231E83810(v21, v22, v23);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_231E60000, log, v11, "SGTextUnderstandingImporter: no document entity matching %s", v20, 0xCu);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_45_0();

      (*(v14 + 8))(v35, v34);
    }

    else
    {
      v26 = v1[4];
      v25 = v1[5];

      (*(v25 + 8))(v16, v26);
      (*(v14 + 8))(v13, v15);
    }
  }

  v27 = v1[10];
  v28 = v1[6];
  v29 = v1[7];

  v30 = v1[1];
  v31 = v1[12];

  return v30(v31);
}

uint64_t sub_231E81E38()
{
  OUTLINED_FUNCTION_22_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2320EDD40();
  v1[4] = v3;
  OUTLINED_FUNCTION_14_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_76_0();
  v7 = sub_2320EDD10();
  v1[7] = v7;
  OUTLINED_FUNCTION_14_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_76_0();
  v11 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231E81F28()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[9];
  v2 = v0[2];
  sub_2320ED7F0();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_231E81FC8;
  v4 = v0[9];
  v5 = v0[3];

  return sub_231E81A00();
}

uint64_t sub_231E81FC8()
{
  OUTLINED_FUNCTION_25_0();
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 24);
  v6 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v7 = v6;
  *(v9 + 88) = v8;

  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_44_2();
  v12(v11);

  return MEMORY[0x2822009F8](sub_231E8212C, v5, 0);
}

uint64_t sub_231E8212C(uint64_t a1)
{
  v2 = v1[11];
  if (v2)
  {
    if (qword_280D93948 != -1)
    {
      a1 = OUTLINED_FUNCTION_78();
    }

    v4 = v1[5];
    v3 = v1[6];
    v5 = v1[4];
    OUTLINED_FUNCTION_48_2(a1, qword_280D9DA90);
    (*(v4 + 16))(v3);
    v6 = v2;
    v7 = sub_2320EDD20();
    v8 = sub_2320EDEA0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v1[11];
      v10 = OUTLINED_FUNCTION_75_0();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v6;
      *v11 = v9;
      v12 = v6;
      _os_log_impl(&dword_231E60000, v7, v8, "SGTextUnderstandingImporter: event: docEntity: %@", v10, 0xCu);
      sub_231E78DE8(v11, &qword_27DD8D320, &qword_232106700);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_45_0();
    }

    v14 = v1[5];
    v13 = v1[6];
    v15 = v1[4];
    v16 = v1[2];

    (*(v14 + 8))(v13, v15);
    sub_231E78ECC(v6);
    sub_231E7E9D8(0, &qword_27DD8D390, off_278948F88);
    OUTLINED_FUNCTION_39_1();
    v17 = sub_2320EDE10();

    [v6 addEnrichments_];
  }

  v18 = v1[9];
  v19 = v1[6];

  OUTLINED_FUNCTION_19();

  return v20();
}

uint64_t sub_231E82320()
{
  OUTLINED_FUNCTION_22_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  OUTLINED_FUNCTION_100(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_21_2();
  v1[5] = swift_task_alloc();
  v6 = sub_2320ED550();
  OUTLINED_FUNCTION_100(v6);
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_76_0();
  v9 = sub_2320ED5F0();
  v1[7] = v9;
  OUTLINED_FUNCTION_14_0(v9);
  v1[8] = v10;
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_21_2();
  v1[10] = swift_task_alloc();
  v13 = sub_2320EDD40();
  v1[11] = v13;
  OUTLINED_FUNCTION_14_0(v13);
  v1[12] = v14;
  v16 = *(v15 + 64);
  v1[13] = OUTLINED_FUNCTION_21_2();
  v1[14] = swift_task_alloc();
  v17 = sub_2320EDD10();
  v1[15] = v17;
  OUTLINED_FUNCTION_14_0(v17);
  v1[16] = v18;
  v20 = *(v19 + 64);
  v1[17] = OUTLINED_FUNCTION_21_2();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_231E824FC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[21];
  v2 = v0[2];
  sub_2320ED760();
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_231E8259C;
  v4 = v0[21];
  v5 = v0[3];

  return sub_231E81A00();
}

uint64_t sub_231E8259C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 24);
  v11 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v6 = v11;
  v11[23] = v7;

  v11[24] = *(v3 + 8);
  v11[25] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = OUTLINED_FUNCTION_20_1();
  v9(v8);

  return MEMORY[0x2822009F8](sub_231E82718, v5, 0);
}

uint64_t sub_231E82718()
{
  v1 = v0[23];
  if (!v1)
  {
    goto LABEL_19;
  }

  if (qword_280D93948 != -1)
  {
    OUTLINED_FUNCTION_78();
  }

  v2 = v0[11];
  v3 = v0[14];
  v98 = v0 + 11;
  v4 = v0[12];
  v5 = __swift_project_value_buffer(v2, qword_280D9DA90);
  v95 = *(v4 + 16);
  v95(v3, v5, v2);
  v6 = v1;
  v7 = sub_2320EDD20();
  v8 = sub_2320EDEA0();

  v9 = v0;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[23];
    v11 = OUTLINED_FUNCTION_75_0();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v6;
    *v12 = v10;
    v13 = v6;
    _os_log_impl(&dword_231E60000, v7, v8, "SGTextUnderstandingImporter: link: docEntity: %@", v11, 0xCu);
    sub_231E78DE8(v12, &qword_27DD8D320, &qword_232106700);
    OUTLINED_FUNCTION_45_0();
    v0 = v9;
    OUTLINED_FUNCTION_45_0();
  }

  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];

  v17 = *(v16 + 8);
  v17(v14, v15);
  v18 = v6;
  [v18 creationTimestamp];
  if (v19 <= 0.0)
  {

    goto LABEL_15;
  }

  [v18 creationTimestamp];
  v21 = v20;

  v22 = SGUnixTimestampToDate(v21);
  if (!v22)
  {
LABEL_15:
    v0 = v9;
    v95(v9[13], v5, v9[11]);
    v57 = sub_2320EDD20();
    v58 = sub_2320EDE80();
    if (OUTLINED_FUNCTION_36_2(v58))
    {
      v59 = OUTLINED_FUNCTION_48_0();
      *v59 = 0;
      _os_log_impl(&dword_231E60000, v57, v58, "SGTextUnderstandingImporter: link: docEntity: missing creationTimestamp", v59, 2u);
      OUTLINED_FUNCTION_45_0();
    }

    else
    {
    }

    v17(v9[13], *v98);
    goto LABEL_19;
  }

  v23 = v22;
  v92 = v9;
  v24 = v9 + 10;
  v75 = v9[10];
  v72 = v9[25];
  v93 = v9[24];
  v26 = v9[19];
  v25 = v9[20];
  v84 = v18;
  v27 = v9[18];
  v76 = v9[17];
  v28 = v9[15];
  v29 = *(v24 - 2);
  v30 = *(v24 - 3);
  v96 = *(v24 - 1);
  v90 = *(v24 - 4);
  v94 = *(v24 - 5);
  v77 = *(v24 - 6);
  v31 = *(v24 - 8);
  sub_2320ED5D0();

  sub_2320ED780();
  v87 = sub_2320ED790();
  v91 = v32;
  v33 = sub_2320ED740();
  v88 = v34;
  v89 = v33;
  sub_2320ED760();
  v35 = sub_2320EDCE0();
  v85 = v36;
  v86 = v35;
  v93(v25, v28);
  sub_2320ED760();
  v37 = sub_2320EDCF0();
  v82 = v38;
  v83 = v37;
  v93(v26, v28);
  sub_2320ED760();
  v39 = sub_2320EDD00();
  v80 = v40;
  v81 = v39;
  v93(v27, v28);
  v41 = sub_2320ED750();
  v78 = v42;
  v79 = v41;
  v43 = *(v29 + 16);
  v43(v94, v75, v30);
  __swift_storeEnumTagSinglePayload(v94, 0, 1, v30);
  v44 = COERCE_DOUBLE(sub_2320ED770());
  v46 = 0.0;
  if (v45)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = v44;
  }

  v43(v96, v75, v30);
  sub_2320ED760();
  v48 = sub_2320EDCE0();
  v73 = v49;
  v74 = v48;
  v93(v76, v28);
  v43(v77, v75, v30);
  __swift_storeEnumTagSinglePayload(v77, 0, 1, v30);
  v50 = COERCE_DOUBLE(sub_2320ED770());
  if ((v51 & 1) == 0)
  {
    v46 = v50;
  }

  v52 = [objc_opt_self() isSent];
  v53 = [v84 hasTag_];

  LOBYTE(v52) = sub_231E82D64(v74, v73, v77, v53, v46);
  v0 = v92;

  sub_231E78DE8(v77, &qword_27DD8D2B0, &qword_232106810);
  v54 = objc_allocWithZone(MEMORY[0x277D02128]);
  v55 = sub_231E82F2C(v90, v47, v87, v91, v89, v88, v86, v85, v83, v82, v81, v80, v79, v78, v94, v96, v52);
  v56 = [objc_allocWithZone(SGURLContainer) init];
  [v56 addURL_];
  [v84 addExternalEnrichment_];

  (*(v29 + 8))(*v24, *(v24 - 3));
LABEL_19:
  v61 = v0[20];
  v60 = v0[21];
  v63 = v0[18];
  v62 = v0[19];
  v64 = v0[17];
  v66 = v0[13];
  v65 = v0[14];
  v68 = v0[9];
  v67 = v0[10];
  v69 = v0[6];
  v97 = v0[5];
  v99 = v0[4];

  OUTLINED_FUNCTION_19();

  return v70();
}

uint64_t sub_231E82D64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5)
{
  if (a4)
  {
    v8 = 33;
  }

  else
  {
    v8 = 32;
  }

  if (a5 <= 0.0)
  {
    v9 = a4;
  }

  else
  {
    v9 = v8;
  }

  v10 = *MEMORY[0x277D021F0];
  sub_2320EDDB0();
  OUTLINED_FUNCTION_40_2();
  v12 = v12 && v11 == a2;
  if (v12)
  {

LABEL_14:
    v14 = sub_2320ED5F0();
    if (__swift_getEnumTagSinglePayload(a3, 1, v14) == 1)
    {
      v9 = v9;
    }

    else
    {
      v9 = v9 | 0x40;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_26_2();
  v13 = sub_2320EE020();

  if (v13)
  {
    goto LABEL_14;
  }

LABEL_17:
  v15 = *MEMORY[0x277D021C0];
  if (sub_2320EDDB0() == a1 && v16 == a2)
  {

    if ((v9 & 0x10) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_2();
    v18 = sub_2320EE020();

    if ((v9 & 0x10) != 0 || (v18 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v9 = v9 | 0x10;
LABEL_26:
  v19 = *MEMORY[0x277D021D0];
  if (sub_2320EDDB0() == a1 && v20 == a2)
  {

    if ((v9 & 0x10) != 0)
    {
      return v9;
    }

    return v9 | 0x10;
  }

  OUTLINED_FUNCTION_26_2();
  v22 = sub_2320EE020();

  if ((v22 & 1) != 0 && (v9 & 0x10) == 0)
  {
    return v9 | 0x10;
  }

  return v9;
}

uint64_t TextUnderstandingImporter.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TextUnderstandingImporter.__deallocating_deinit()
{
  TextUnderstandingImporter.deinit();

  return MEMORY[0x282200960](v0);
}

id sub_231E82F2C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v32 = sub_2320ED540();
  if (a4)
  {
    v31 = sub_2320EDDA0();
  }

  else
  {
    v31 = 0;
  }

  if (a6)
  {
    v30 = sub_2320EDDA0();
  }

  else
  {
    v30 = 0;
  }

  v29 = sub_2320EDDA0();

  if (a10)
  {
    v28 = sub_2320EDDA0();
  }

  else
  {
    v28 = 0;
  }

  v27 = sub_2320EDDA0();

  if (a14)
  {
    v20 = sub_2320EDDA0();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_2320ED5F0();
  v22 = 0;
  if (__swift_getEnumTagSinglePayload(a15, 1, v21) != 1)
  {
    v22 = sub_2320ED5B0();
    (*(*(v21 - 8) + 8))(a15, v21);
  }

  v23 = sub_2320ED5B0();
  LOBYTE(v26) = a17;
  v34 = [v33 initWithURL:v32 title:v31 receivedFromHandle:v30 bundleIdentifier:v29 groupIdentifier:v28 documentIdentifier:v27 documentTitle:a2 documentDate:v20 documentTimeInterval:v22 receivedAt:v23 flags:v26];

  (*(*(v21 - 8) + 8))(a16, v21);
  v24 = sub_2320ED550();
  (*(*(v24 - 8) + 8))(a1, v24);
  return v34;
}

uint64_t sub_231E831CC(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

void sub_231E831F0(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_24_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_23_2();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D3D0, &qword_232106968);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_231E832E8(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_24_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_23_2();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D3B8, &qword_232106950);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 32);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[32 * v9] <= v13)
    {
      memmove(v13, v14, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_231E8345C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_24_1();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_23_2();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_231E835D4(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_231E836C8(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_231E835D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_14_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231E836C8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_43_2();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_43_2();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

uint64_t sub_231E837B8(uint64_t ***a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  sub_231E83810(v6, v7, a3);
  OUTLINED_FUNCTION_13_1();

  v9 = *a1;
  *v9 = a3;
  *a1 = v9 + 1;
  return result;
}

uint64_t sub_231E83810(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_231E838D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_231E7E97C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_231E838D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_231E839D4(a5, a6);
    *a1 = v9;
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
    result = sub_2320EDF30();
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

uint64_t sub_231E839D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_231E83A20(a1, a2);
  sub_231E83B38(&unk_2846FE670);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_231E83A20(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2320EDDF0())
  {
    result = sub_231E83C1C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2320EDF00();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2320EDF30();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_231E83B38(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_231E83C8C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_231E83C1C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D3D8, &unk_232106970);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_231E83C8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D3D8, &unk_232106970);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_231E83D80(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(deletion:)()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 160);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_65_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(document:)()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 184);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_65_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of TextUnderstandingImporter.documentBatchCompleted()()
{
  OUTLINED_FUNCTION_25_0();
  v1 = *(*v0 + 192);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_65_0(v3);
  *v4 = v5;
  v4[1] = sub_231E840F0;

  return v7();
}

uint64_t sub_231E840F0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(event:)()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 208);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_65_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(link:)()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 216);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_65_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_2(v4);

  return v7(v6);
}

unint64_t sub_231E843DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2320EE080();
  sub_2320EDDD0();
  v6 = sub_2320EE090();

  return sub_231E844D0(a1, a2, v6);
}

unint64_t sub_231E84454()
{
  OUTLINED_FUNCTION_41_2();
  v1 = *(v0 + 40);
  sub_2320EDD10();
  sub_231E8472C(&qword_280D93730);
  sub_2320EDD70();
  v2 = OUTLINED_FUNCTION_39_1();

  return sub_231E84584(v2, v3);
}

unint64_t sub_231E844D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2320EE020() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231E84584(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_2320EDD10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_231E8472C(&qword_280D93728);
    v10 = sub_2320EDD90();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_231E8472C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2320EDD10();
    OUTLINED_FUNCTION_39_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231E84770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D3C0, &qword_232106958);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_231E847E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_2320EDDA0();

  v11 = [a6 writeEntity:a1 withSpotlightReferenceForBundleIdentifier:a2 uniqueIdentifier:a3 domainIdentifier:v10];

  return v11;
}

void OUTLINED_FUNCTION_7_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x2383814F0);
}

uint64_t OUTLINED_FUNCTION_12_2()
{
  v2 = v0[27];
  result = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[16];
  v11 = v0[17];
  v13 = v0[12];
  v12 = v0[13];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return sub_2320EE020();
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_19_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_34_1()
{
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[5];
}

BOOL OUTLINED_FUNCTION_36_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_46_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_49_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t type metadata accessor for TextUnderstandingBookmarks()
{
  result = qword_280D937D8;
  if (!qword_280D937D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_231E84BBC()
{
  sub_231E84C2C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_231E84C2C()
{
  if (!qword_280D93738)
  {
    v0 = sub_2320ED6A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280D93738);
    }
  }
}

uint64_t sub_231E84C7C()
{
  sub_231E84FE0();
  sub_2320ED690();
  v0 = type metadata accessor for TextUnderstandingBookmarks();
  v1 = v0[5];
  sub_231E84FE0();
  OUTLINED_FUNCTION_1_1();
  v2 = v0[6];
  sub_231E84FE0();
  OUTLINED_FUNCTION_1_1();
  v3 = v0[7];
  sub_231E84FE0();
  return sub_2320ED690();
}

double sub_231E84D84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);
  sub_2320ED670();
  return v1;
}

uint64_t sub_231E84E00()
{
  v0 = *(type metadata accessor for TextUnderstandingBookmarks() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_231E84E4C()
{
  v0 = *(type metadata accessor for TextUnderstandingBookmarks() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_231E84E98()
{
  v0 = *(type metadata accessor for TextUnderstandingBookmarks() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);
  return OUTLINED_FUNCTION_0_1();
}

double sub_231E84EE4()
{
  v0 = *(type metadata accessor for TextUnderstandingBookmarks() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);
  sub_2320ED670();
  return v2;
}

double sub_231E84F38()
{
  v0 = *(type metadata accessor for TextUnderstandingBookmarks() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);
  sub_2320ED670();
  return v2;
}

double sub_231E84F8C()
{
  v0 = *(type metadata accessor for TextUnderstandingBookmarks() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);
  sub_2320ED670();
  return v2;
}

uint64_t sub_231E84FE0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_231E8508C(0xD00000000000002FLL, 0x800000023210EC60);
  if (!result)
  {
    result = sub_2320EDFE0();
    __break(1u);
  }

  return result;
}

id sub_231E8508C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_2320EDDA0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return sub_2320ED680();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return sub_2320ED690();
}

uint64_t SGM2SelfIdModelScoreReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v41 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v41 & 0x7F) << v14;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_55:
        v37 = 16;
LABEL_60:
        *(a1 + v37) = v20;
        goto LABEL_63;
      }

      v28 = PBReaderReadString();
      v29 = *(a1 + 8);
      *(a1 + 8) = v28;

LABEL_63:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 28) |= 4u;
      while (1)
      {
        v42 = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v42 & 0x7F) << v30;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          LOBYTE(v36) = 0;
          goto LABEL_62;
        }
      }

      v36 = (v32 != 0) & ~[a2 hasError];
LABEL_62:
      *(a1 + 24) = v36;
      goto LABEL_63;
    }

    if (v13 != 4)
    {
LABEL_40:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_63;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(a1 + 28) |= 2u;
    while (1)
    {
      v40 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (v40 & 0x7F) << v21;
      if ((v40 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v11 = v22++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_59;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v23;
    }

LABEL_59:
    v37 = 20;
    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGM2SuggestdExitReasonReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGM2AutocompleteUserSelectedContactReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v40 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v40 & 0x7F) << v31;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_59;
            }
          }

          v20 = (v33 != 0) & ~[a2 hasError];
LABEL_59:
          v37 = 24;
LABEL_60:
          *(a1 + v37) = v20;
          goto LABEL_61;
        }

        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_61;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v42 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v42 & 0x7F) << v21;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_57;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_57:
        *(a1 + 8) = v27;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_40;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v41 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v14;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_53;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_53:
          v37 = 25;
          goto LABEL_60;
        }

        v29 = PBReaderReadString();
        v30 = *(a1 + 16);
        *(a1 + 16) = v29;
      }

LABEL_61:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGM2BundleIdsTrackedAsOtherReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___SGM2BundleIdsTrackedAsOther__bundleId;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___SGM2BundleIdsTrackedAsOther__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t heuristicIdentifyHandle(void *a1)
{
  v1 = a1;
  v2 = objc_opt_self();

  if (v2)
  {
    memset(v25, 0, sizeof(v25));
    Length = CFStringGetLength(v1);
    theString = v1;
    v29 = 0;
    v30 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v1);
    CStringPtr = 0;
    v27 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
    }

    v31 = 0;
    v32 = 0;
    v28 = CStringPtr;
    if (Length < 1)
    {
      v2 = 0;
      goto LABEL_39;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 64;
    while (1)
    {
      if (v10 >= 4)
      {
        v12 = 4;
      }

      else
      {
        v12 = v10;
      }

      v13 = v30;
      if (v30 <= v10)
      {
        v15 = 0;
      }

      else
      {
        if (v27)
        {
          v14 = &v27[v29];
        }

        else
        {
          if (v28)
          {
            v15 = v28[v29 + v10];
            goto LABEL_14;
          }

          if (v32 <= v10 || v7 > v10)
          {
            v20 = v12 + v6;
            v21 = v11 - v12;
            v22 = v10 - v12;
            v23 = v22 + 64;
            if (v22 + 64 >= v30)
            {
              v23 = v30;
            }

            v31 = v22;
            v32 = v23;
            if (v30 >= v21)
            {
              v13 = v21;
            }

            v33.location = v22 + v29;
            v33.length = v13 + v20;
            CFStringGetCharacters(theString, v33, v25);
            v7 = v31;
          }

          v14 = v25 - v7;
        }

        v15 = v14[v10];
      }

LABEL_14:
      v16 = (v15 - 48);
      if (v15 == 64)
      {
        ++v9;
      }

      v17 = (v15 + 240);
      if (v16 < 0xA || v17 < 0xA)
      {
        ++v8;
      }

      ++v10;
      --v6;
      ++v11;
      if (Length == v10)
      {
        if (v9 == 1)
        {
          v2 = 1;
        }

        else
        {
          v2 = 2 * (v8 > 4);
        }

        break;
      }
    }
  }

LABEL_39:

  return v2;
}

uint64_t SGM2ContactCreatedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v34 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34 & 0x7F) << v23;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_46;
          }
        }

        v29 = [a2 hasError] ? 0 : v25;
LABEL_46:
        *(a1 + 8) = v29;
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v33 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v33 & 0x7F) << v16;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_42;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231E8D434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_231E8D768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_231E8DAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_231E8E08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231E900AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SGM2ContactDetailExtractionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v70 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v70 & 0x7F) << v5;
        if ((v70 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 44) |= 0x80u;
          while (1)
          {
            v77 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v77 & 0x7F) << v41;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              LOBYTE(v47) = 0;
              goto LABEL_117;
            }
          }

          v47 = (v43 != 0) & ~[a2 hasError];
LABEL_117:
          v68 = 41;
          goto LABEL_133;
        }

        if (v13 != 4)
        {
          goto LABEL_102;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          v74 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v74 & 0x7F) << v27;
          if ((v74 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_111;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v29;
        }

LABEL_111:
        v67 = 8;
        goto LABEL_130;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_102;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 44) |= 0x20u;
        while (1)
        {
          v75 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v75 & 0x7F) << v21;
          if ((v75 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_107;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_107:
        v67 = 36;
LABEL_130:
        *(a1 + v67) = v20;
        goto LABEL_134;
      }

      v39 = PBReaderReadString();
      v40 = *(a1 + 24);
      *(a1 + 24) = v39;

LABEL_134:
      v69 = [a2 position];
      if (v69 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v73 = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v73 & 0x7F) << v54;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_125;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v56;
        }

LABEL_125:
        v67 = 32;
      }

      else
      {
        if (v13 != 6)
        {
LABEL_102:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_134;
        }

        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v72 = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v72 & 0x7F) << v33;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v35;
        }

LABEL_115:
        v67 = 20;
      }
    }

    else
    {
      switch(v13)
      {
        case 7:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v78 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v78 & 0x7F) << v48;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_121;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v50;
          }

LABEL_121:
          v67 = 12;
          break;
        case 8:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 44) |= 0x40u;
          while (1)
          {
            v76 = 0;
            v63 = [a2 position] + 1;
            if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
            {
              v65 = [a2 data];
              [v65 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v62 |= (v76 & 0x7F) << v60;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v11 = v61++ >= 9;
            if (v11)
            {
              LOBYTE(v47) = 0;
              goto LABEL_132;
            }
          }

          v47 = (v62 != 0) & ~[a2 hasError];
LABEL_132:
          v68 = 40;
LABEL_133:
          *(a1 + v68) = v47;
          goto LABEL_134;
        case 9:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            v71 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v71 & 0x7F) << v14;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_129;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_129:
          v67 = 16;
          break;
        default:
          goto LABEL_102;
      }
    }

    goto LABEL_130;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGM2ContactDetailSentReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v51 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v55 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v55 & 0x7F) << v36;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v38;
          }

LABEL_87:
          v49 = 24;
        }

        else
        {
          if (v13 != 3)
          {
            goto LABEL_52;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v54 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v54 & 0x7F) << v14;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_79:
          v49 = 8;
        }

LABEL_88:
        *(a1 + v49) = v20;
        goto LABEL_89;
      }

      v27 = PBReaderReadString();
      v28 = *(a1 + 16);
      *(a1 + 16) = v27;

LABEL_89:
      v50 = [a2 position];
      if (v50 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          v53 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v53 & 0x7F) << v29;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v31;
        }

LABEL_75:
        v49 = 12;
        break;
      case 5:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 36) |= 0x10u;
        while (1)
        {
          v56 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v56 & 0x7F) << v42;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            LOBYTE(v48) = 0;
            goto LABEL_92;
          }
        }

        v48 = (v44 != 0) & ~[a2 hasError];
LABEL_92:
        *(a1 + 32) = v48;
        goto LABEL_89;
      case 6:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 36) |= 8u;
        while (1)
        {
          v52 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v52 & 0x7F) << v21;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_83:
        v49 = 28;
        break;
      default:
LABEL_52:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_89;
    }

    goto LABEL_88;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGM2ContactsInterfaceCacheCountReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231E95D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231E95F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1154(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231E961EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231E96444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231E96654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231E968E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231E96F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SGM2ContactsInterfaceCacheHitReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_32;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGM2FoundInMailModelScoreReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v58 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              v62 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v62 & 0x7F) << v49;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v51;
            }

LABEL_103:
            v56 = 28;
          }

          else
          {
            if (v13 != 3)
            {
              goto LABEL_54;
            }

            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v61 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v61 & 0x7F) << v21;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v23;
            }

LABEL_99:
            v56 = 8;
          }

LABEL_104:
          *(a1 + v56) = v27;
          goto LABEL_105;
        }

        v34 = PBReaderReadString();
        v35 = *(a1 + 16);
        *(a1 + 16) = v34;
      }

      else
      {
        if (v13 > 5)
        {
          if (v13 == 6)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              v60 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v60 & 0x7F) << v43;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_88;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v45;
            }

LABEL_88:
            v56 = 24;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_54:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_105;
            }

            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 40) |= 8u;
            while (1)
            {
              v59 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v59 & 0x7F) << v28;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v30;
            }

LABEL_95:
            v56 = 32;
          }

          goto LABEL_104;
        }

        if (v13 == 4)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 40) |= 0x20u;
          while (1)
          {
            v64 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v64 & 0x7F) << v37;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_84;
            }
          }

          v20 = (v39 != 0) & ~[a2 hasError];
LABEL_84:
          v55 = 37;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_54;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 0x10u;
          while (1)
          {
            v63 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v63 & 0x7F) << v14;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_90;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_90:
          v55 = 36;
        }

        *(a1 + v55) = v20;
      }

LABEL_105:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231E99D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1471(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231E9A2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1496(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231E9ACB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t SGMIMetricsUpdateProcessInformationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v120) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v120 & 0x7F) << v5;
        if ((v120 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 29)
      {
        if (v13 <= 49)
        {
          if (v13 > 40)
          {
            if (v13 == 41)
            {
              v75 = 0;
              v76 = 0;
              v77 = 0;
              *(a1 + 132) |= 0x1000u;
              while (1)
              {
                LOBYTE(v120) = 0;
                v78 = [a2 position] + 1;
                if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
                {
                  v80 = [a2 data];
                  [v80 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v77 |= (v120 & 0x7F) << v75;
                if ((v120 & 0x80) == 0)
                {
                  break;
                }

                v75 += 7;
                v11 = v76++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_204;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v77;
              }

LABEL_204:
              v111 = 104;
              goto LABEL_241;
            }

            if (v13 == 42)
            {
              v44 = 0;
              v45 = 0;
              v46 = 0;
              *(a1 + 132) |= 0x800u;
              while (1)
              {
                LOBYTE(v120) = 0;
                v47 = [a2 position] + 1;
                if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
                {
                  v49 = [a2 data];
                  [v49 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v46 |= (v120 & 0x7F) << v44;
                if ((v120 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                v11 = v45++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_212;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v46;
              }

LABEL_212:
              v111 = 100;
              goto LABEL_241;
            }
          }

          else
          {
            if (v13 == 30)
            {
              v63 = 0;
              v64 = 0;
              v65 = 0;
              *(a1 + 132) |= 0x80u;
              while (1)
              {
                LOBYTE(v120) = 0;
                v66 = [a2 position] + 1;
                if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
                {
                  v68 = [a2 data];
                  [v68 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v65 |= (v120 & 0x7F) << v63;
                if ((v120 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                v11 = v64++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_196;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v65;
              }

LABEL_196:
              v111 = 84;
              goto LABEL_241;
            }

            if (v13 == 40)
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 132) |= 0x40u;
              while (1)
              {
                LOBYTE(v120) = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v120 & 0x7F) << v30;
                if ((v120 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_208;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v32;
              }

LABEL_208:
              v111 = 80;
              goto LABEL_241;
            }
          }
        }

        else if (v13 <= 60)
        {
          if (v13 == 50)
          {
            v28 = objc_alloc_init(SGMIMetricsSubmodelsStats);
            objc_storeStrong((a1 + 112), v28);
            v120 = 0;
            v121 = 0;
            if (!PBReaderPlaceMark() || !SGMIMetricsSubmodelsStatsReadFrom(v28, a2))
            {
LABEL_265:

              return 0;
            }

            goto LABEL_190;
          }

          if (v13 == 60)
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            *(a1 + 132) |= 1u;
            while (1)
            {
              LOBYTE(v120) = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v120 & 0x7F) << v57;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v11 = v58++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_247;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v59;
            }

LABEL_247:
            v112 = 32;
            goto LABEL_248;
          }
        }

        else
        {
          switch(v13)
          {
            case '=':
              v99 = 0;
              v100 = 0;
              v101 = 0;
              *(a1 + 132) |= 8u;
              while (1)
              {
                LOBYTE(v120) = 0;
                v102 = [a2 position] + 1;
                if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
                {
                  v104 = [a2 data];
                  [v104 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v101 |= (v120 & 0x7F) << v99;
                if ((v120 & 0x80) == 0)
                {
                  break;
                }

                v99 += 7;
                v11 = v100++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_236;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v101;
              }

LABEL_236:
              v112 = 56;
              goto LABEL_248;
            case '>':
              v87 = 0;
              v88 = 0;
              v89 = 0;
              *(a1 + 132) |= 4u;
              while (1)
              {
                LOBYTE(v120) = 0;
                v90 = [a2 position] + 1;
                if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
                {
                  v92 = [a2 data];
                  [v92 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v89 |= (v120 & 0x7F) << v87;
                if ((v120 & 0x80) == 0)
                {
                  break;
                }

                v87 += 7;
                v11 = v88++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_220;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v89;
              }

LABEL_220:
              v112 = 48;
              goto LABEL_248;
            case '?':
              v21 = 0;
              v22 = 0;
              v23 = 0;
              *(a1 + 132) |= 2u;
              while (1)
              {
                LOBYTE(v120) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v120 & 0x7F) << v21;
                if ((v120 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_228;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v23;
              }

LABEL_228:
              v112 = 40;
LABEL_248:
              *(a1 + v112) = v27;
              goto LABEL_249;
          }
        }
      }

      else if (v13 <= 9)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v69 = 0;
            v70 = 0;
            v71 = 0;
            *(a1 + 132) |= 0x200u;
            while (1)
            {
              LOBYTE(v120) = 0;
              v72 = [a2 position] + 1;
              if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
              {
                v74 = [a2 data];
                [v74 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v71 |= (v120 & 0x7F) << v69;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              v11 = v70++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_200;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v71;
            }

LABEL_200:
            v111 = 92;
            goto LABEL_241;
          }

          if (v13 == 4)
          {
            if ((v12 & 7) == 2)
            {
              v120 = 0;
              v121 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v37 = [a2 position];
                if (v37 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v38 = 0;
                v39 = 0;
                v40 = 0;
                while (1)
                {
                  v122 = 0;
                  v41 = [a2 position] + 1;
                  if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                  {
                    v43 = [a2 data];
                    [v43 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v40 |= (v122 & 0x7F) << v38;
                  if ((v122 & 0x80) == 0)
                  {
                    break;
                  }

                  v38 += 7;
                  v11 = v39++ >= 9;
                  if (v11)
                  {
                    goto LABEL_78;
                  }
                }

                [a2 hasError];
LABEL_78:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v114 = 0;
              v115 = 0;
              v116 = 0;
              while (1)
              {
                LOBYTE(v120) = 0;
                v117 = [a2 position] + 1;
                if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
                {
                  v119 = [a2 data];
                  [v119 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v116 |= (v120 & 0x7F) << v114;
                if ((v120 & 0x80) == 0)
                {
                  break;
                }

                v114 += 7;
                v11 = v115++ >= 9;
                if (v11)
                {
                  goto LABEL_262;
                }
              }

              [a2 hasError];
LABEL_262:
              PBRepeatedInt32Add();
            }

            goto LABEL_249;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v28 = objc_alloc_init(SGMIMetricsTrialMetadata);
            v29 = 120;
            goto LABEL_113;
          }

          if (v13 == 2)
          {
            v28 = objc_alloc_init(SGMIMetricsTrialMetadata);
            v29 = 64;
LABEL_113:
            objc_storeStrong((a1 + v29), v28);
            v120 = 0;
            v121 = 0;
            if (!PBReaderPlaceMark() || !SGMIMetricsTrialMetadataReadFrom(v28, a2))
            {
              goto LABEL_265;
            }

LABEL_190:
            PBReaderRecallMark();

            goto LABEL_249;
          }
        }
      }

      else if (v13 <= 19)
      {
        if (v13 == 10)
        {
          v105 = 0;
          v106 = 0;
          v107 = 0;
          *(a1 + 132) |= 0x100u;
          while (1)
          {
            LOBYTE(v120) = 0;
            v108 = [a2 position] + 1;
            if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
            {
              v110 = [a2 data];
              [v110 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v107 |= (v120 & 0x7F) << v105;
            if ((v120 & 0x80) == 0)
            {
              break;
            }

            v105 += 7;
            v11 = v106++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_240;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v107;
          }

LABEL_240:
          v111 = 88;
          goto LABEL_241;
        }

        if (v13 == 11)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 132) |= 0x2000u;
          while (1)
          {
            LOBYTE(v120) = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v120 & 0x7F) << v50;
            if ((v120 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
            if (v11)
            {
              LOBYTE(v56) = 0;
              goto LABEL_243;
            }
          }

          v56 = (v52 != 0) & ~[a2 hasError];
LABEL_243:
          *(a1 + 128) = v56;
          goto LABEL_249;
        }
      }

      else
      {
        switch(v13)
        {
          case 0x14:
            v93 = 0;
            v94 = 0;
            v95 = 0;
            *(a1 + 132) |= 0x10u;
            while (1)
            {
              LOBYTE(v120) = 0;
              v96 = [a2 position] + 1;
              if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
              {
                v98 = [a2 data];
                [v98 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v95 |= (v120 & 0x7F) << v93;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              v11 = v94++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_232;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v95;
            }

LABEL_232:
            v111 = 72;
            goto LABEL_241;
          case 0x15:
            v81 = 0;
            v82 = 0;
            v83 = 0;
            *(a1 + 132) |= 0x20u;
            while (1)
            {
              LOBYTE(v120) = 0;
              v84 = [a2 position] + 1;
              if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
              {
                v86 = [a2 data];
                [v86 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v83 |= (v120 & 0x7F) << v81;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              v11 = v82++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_216;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v83;
            }

LABEL_216:
            v111 = 76;
            goto LABEL_241;
          case 0x16:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 132) |= 0x400u;
            while (1)
            {
              LOBYTE(v120) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v120 & 0x7F) << v14;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_224;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_224:
            v111 = 96;
LABEL_241:
            *(a1 + v111) = v20;
            goto LABEL_249;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_249:
      v113 = [a2 position];
    }

    while (v113 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231EA1068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1849(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231EA2178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EA3E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  _Block_object_dispose((v38 - 176), 8);
  SGRecordMeasurementState(&a38);
  _Block_object_dispose((v38 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_231EA47A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EA4FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EA5B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRTRoutineManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CoreRoutineLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_27894B328;
    v9 = 0;
    CoreRoutineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreRoutineLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGReminderDissector.m" lineNumber:62 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRTRoutineManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"SGReminderDissector.m" lineNumber:63 description:{@"Unable to find class %s", "RTRoutineManager"}];

LABEL_10:
    __break(1u);
  }

  getRTRoutineManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreRoutineLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreRoutineLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SGM2SearchResultsIncludedPureSuggestionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231EA7468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2108(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231EA7628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EA77D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EA7A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EA7D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EA85D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SGM2SearchResultsUserSelectedContactReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v40 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v40 & 0x7F) << v31;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_59;
            }
          }

          v20 = (v33 != 0) & ~[a2 hasError];
LABEL_59:
          v37 = 24;
LABEL_60:
          *(a1 + v37) = v20;
          goto LABEL_61;
        }

        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_61;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v42 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v42 & 0x7F) << v21;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_57;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_57:
        *(a1 + 8) = v27;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_40;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v41 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v14;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_53;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_53:
          v37 = 25;
          goto LABEL_60;
        }

        v29 = PBReaderReadString();
        v30 = *(a1 + 16);
        *(a1 + 16) = v29;
      }

LABEL_61:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGM2SerializedContactsCacheHitReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_32;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGM2SqliteErrorsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231EAC168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2618(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231EACEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EAD8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SGM2SuggestedContactDetailShownReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGMIMetricsAggregatedAccuracyLogsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 12)
      {
        switch(v13)
        {
          case 1:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              LOBYTE(v26) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v26 & 0x7F) << v17;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_54;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_54:
            *(a1 + 56) = v23;
            goto LABEL_49;
          case 0xB:
            v14 = objc_alloc_init(SGMIMetricsTrialMetadata);
            v15 = 24;
LABEL_46:
            objc_storeStrong((a1 + v15), v14);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !SGMIMetricsTrialMetadataReadFrom(v14, a2))
            {
              goto LABEL_56;
            }

LABEL_48:
            PBReaderRecallMark();

            goto LABEL_49;
          case 0xC:
            v14 = objc_alloc_init(SGMIMetricsAggregatedAccuracyLog);
            v16 = 8;
LABEL_42:
            objc_storeStrong((a1 + v16), v14);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !SGMIMetricsAggregatedAccuracyLogReadFrom(v14, a2))
            {
LABEL_56:

              return 0;
            }

            goto LABEL_48;
        }
      }

      else if (v13 > 21)
      {
        if (v13 == 22)
        {
          v14 = objc_alloc_init(SGMIMetricsAggregatedAccuracyLog);
          v16 = 32;
          goto LABEL_42;
        }

        if (v13 == 23)
        {
          v14 = objc_alloc_init(SGMIMetricsAggregatedAccuracyLog);
          v16 = 40;
          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 13)
        {
          v14 = objc_alloc_init(SGMIMetricsAggregatedAccuracyLog);
          v16 = 16;
          goto LABEL_42;
        }

        if (v13 == 21)
        {
          v14 = objc_alloc_init(SGMIMetricsTrialMetadata);
          v15 = 48;
          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGM2SuggestedContactDetailUsedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGM2UnknownContactInformationShownReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v42 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v42 & 0x7F) << v31;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_59;
            }
          }

          v27 = (v33 != 0) & ~[a2 hasError];
LABEL_59:
          v37 = 24;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_61;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v41 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v41 & 0x7F) << v21;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_57;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_57:
          v37 = 25;
        }

        *(a1 + v37) = v27;
      }

      else if (v13 == 1)
      {
        v29 = PBReaderReadString();
        v30 = *(a1 + 16);
        *(a1 + 16) = v29;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v40 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v40 & 0x7F) << v14;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_55:
        *(a1 + 8) = v20;
      }

LABEL_61:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}