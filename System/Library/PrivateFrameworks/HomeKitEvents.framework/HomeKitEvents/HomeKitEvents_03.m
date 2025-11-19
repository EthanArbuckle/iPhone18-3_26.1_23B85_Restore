uint64_t sub_25416AB94(void **a1)
{
  v2 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25417A3F0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25416ACF0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25416AC3C(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25417A404(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25416AE1C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25416ACF0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25424EA38();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for EventQuery.FetchedRecordInfo(0);
        v6 = sub_25424DFE8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25416DD28(v8, v9, a1, v4);
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
    return sub_25416AF60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25416AE1C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25424EA38();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
        v6 = sub_25424DFE8();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_254170E7C(v8, v9, a1, v4);
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
    return sub_25416C55C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25416AF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v138 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v8 = *(*(v138 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v138);
  v137 = &v122[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v136 = &v122[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v135 = &v122[-v14];
  MEMORY[0x28223BE20](v13);
  v134 = &v122[-v15];
  v133 = type metadata accessor for SomeAccessoryEvent();
  v16 = *(*(v133 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v133);
  v132 = &v122[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v131 = &v122[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v130 = &v122[-v22];
  MEMORY[0x28223BE20](v21);
  v129 = &v122[-v23];
  v159 = type metadata accessor for SomeEvent();
  v24 = *(*(v159 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v159);
  v147 = &v122[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v146 = &v122[-v27];
  v145 = sub_25424D8B8();
  v28 = *(v145 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v145);
  v144 = &v122[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v151 = &v122[-v32];
  v33 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v141 = &v122[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v122[-v38];
  result = MEMORY[0x28223BE20](v37);
  v143 = &v122[-v42];
  v124 = a2;
  if (a3 != a2)
  {
    v43 = *a4;
    v142 = (v28 + 8);
    v44 = *(v41 + 72);
    v45 = v43 + v44 * (a3 - 1);
    v139 = -v44;
    v46 = a1 - a3;
    v140 = v43;
    v123 = v44;
    v47 = v43 + v44 * a3;
    v150 = v39;
    v48 = v143;
LABEL_5:
    v128 = a3;
    v125 = v47;
    v126 = v46;
    v49 = v46;
    v127 = v45;
    while (1)
    {
      sub_25417C110(v47, v48, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C110(v45, v39, type metadata accessor for EventQuery.FetchedRecordInfo);
      v50 = v146;
      sub_25417C110(v48 + *(v33 + 20), v146, type metadata accessor for SomeEvent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v148 = v45;
      v149 = v47;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v154 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v152);
          sub_25417C178(v50, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_36;
        }

        v57 = v134;
        sub_25417C178(v50, v134, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v57, v135, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v58 = swift_getEnumCaseMultiPayload();
        if (v58)
        {
          if (v58 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v59 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v60 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v59 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v60 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v59 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v60 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v61 = v60;
        v154 = v59;
        v62 = __swift_allocate_boxed_opaque_existential_1(&v152);
        sub_25417C178(v135, v62, v61);
        sub_25412DC4C(&v152, &v155);
        v63 = v156;
        v64 = v157;
        v65 = __swift_project_boxed_opaque_existential_1(&v155, v156);
        SessionEvent = v63;
        v154 = *(v64 + 16);
        v66 = __swift_allocate_boxed_opaque_existential_1(&v152);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        v67 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v68 = &v160;
      }

      else
      {
        v53 = v129;
        sub_25417C178(v50, v129, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v53, v130, type metadata accessor for SomeAccessoryEvent);
        v54 = swift_getEnumCaseMultiPayload();
        if (v54 > 4)
        {
          if (v54 <= 6)
          {
            if (v54 == 5)
            {
              v156 = type metadata accessor for SmokeDetectorEvent();
              v55 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v56 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v156 = type metadata accessor for ThermostatAutomationEvent(0);
              v55 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v56 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v54 == 7)
          {
            v156 = type metadata accessor for ThermostatAutomationFailureEvent();
            v55 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v56 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v54 == 8)
          {
            v156 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v55 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v56 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v156 = type metadata accessor for WindowEvent();
            v55 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v56 = type metadata accessor for WindowEvent;
          }
        }

        else if (v54 <= 1)
        {
          if (v54)
          {
            v156 = type metadata accessor for DoorEvent();
            v55 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v56 = type metadata accessor for DoorEvent;
          }

          else
          {
            v156 = type metadata accessor for ContactSensorEvent();
            v55 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v56 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v54 == 2)
        {
          v156 = type metadata accessor for GarageDoorEvent();
          v55 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v56 = type metadata accessor for GarageDoorEvent;
        }

        else if (v54 == 3)
        {
          v156 = type metadata accessor for LockEvent();
          v55 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v56 = type metadata accessor for LockEvent;
        }

        else
        {
          v156 = type metadata accessor for SecuritySystemEvent();
          v55 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v56 = type metadata accessor for SecuritySystemEvent;
        }

        v69 = v56;
        v157 = v55;
        v70 = __swift_allocate_boxed_opaque_existential_1(&v155);
        sub_25417C178(v130, v70, v69);
        v71 = v156;
        v72 = v157;
        v73 = __swift_project_boxed_opaque_existential_1(&v155, v156);
        SessionEvent = v71;
        v154 = *(v72 + 16);
        v74 = __swift_allocate_boxed_opaque_existential_1(&v152);
        (*(*(v71 - 8) + 16))(v74, v73, v71);
        v67 = type metadata accessor for SomeAccessoryEvent;
        v68 = &v157;
      }

      sub_25417C0B0(*(v68 - 32), v67);
      __swift_destroy_boxed_opaque_existential_1(&v155);
LABEL_36:
      v76 = SessionEvent;
      v75 = v154;
      __swift_project_boxed_opaque_existential_1(&v152, SessionEvent);
      v156 = v76;
      v157 = *(v75 + 8);
      v77 = v157;
      __swift_allocate_boxed_opaque_existential_1(&v155);
      (*(*(v76 - 8) + 16))();
      __swift_destroy_boxed_opaque_existential_1(&v152);
      (*(v77 + 32))(v76, v77);
      __swift_destroy_boxed_opaque_existential_1(&v155);
      v78 = v147;
      sub_25417C110(&v150[*(v33 + 20)], v147, type metadata accessor for SomeEvent);
      v79 = swift_getEnumCaseMultiPayload();
      if (v79)
      {
        if (v79 == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v154 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          v80 = __swift_allocate_boxed_opaque_existential_1(&v152);
          sub_25417C178(v78, v80, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_66;
        }

        v86 = v78;
        v87 = v136;
        sub_25417C178(v86, v136, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v87, v137, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v88 = swift_getEnumCaseMultiPayload();
        if (v88)
        {
          if (v88 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v89 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v90 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v89 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v90 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v89 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v90 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v91 = v90;
        v154 = v89;
        v92 = __swift_allocate_boxed_opaque_existential_1(&v152);
        sub_25417C178(v137, v92, v91);
        sub_25412DC4C(&v152, &v155);
        v93 = v156;
        v94 = v157;
        v95 = __swift_project_boxed_opaque_existential_1(&v155, v156);
        SessionEvent = v93;
        v154 = *(v94 + 16);
        v96 = __swift_allocate_boxed_opaque_existential_1(&v152);
        (*(*(v93 - 8) + 16))(v96, v95, v93);
        v97 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v98 = &v161;
      }

      else
      {
        v81 = v78;
        v82 = v131;
        sub_25417C178(v81, v131, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v82, v132, type metadata accessor for SomeAccessoryEvent);
        v83 = swift_getEnumCaseMultiPayload();
        if (v83 > 4)
        {
          if (v83 <= 6)
          {
            if (v83 == 5)
            {
              v156 = type metadata accessor for SmokeDetectorEvent();
              v84 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v85 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v156 = type metadata accessor for ThermostatAutomationEvent(0);
              v84 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v85 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v83 == 7)
          {
            v156 = type metadata accessor for ThermostatAutomationFailureEvent();
            v84 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v85 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v83 == 8)
          {
            v156 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v84 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v85 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v156 = type metadata accessor for WindowEvent();
            v84 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v85 = type metadata accessor for WindowEvent;
          }
        }

        else if (v83 <= 1)
        {
          if (v83)
          {
            v156 = type metadata accessor for DoorEvent();
            v84 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v85 = type metadata accessor for DoorEvent;
          }

          else
          {
            v156 = type metadata accessor for ContactSensorEvent();
            v84 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v85 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v83 == 2)
        {
          v156 = type metadata accessor for GarageDoorEvent();
          v84 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v85 = type metadata accessor for GarageDoorEvent;
        }

        else if (v83 == 3)
        {
          v156 = type metadata accessor for LockEvent();
          v84 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v85 = type metadata accessor for LockEvent;
        }

        else
        {
          v156 = type metadata accessor for SecuritySystemEvent();
          v84 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v85 = type metadata accessor for SecuritySystemEvent;
        }

        v99 = v85;
        v157 = v84;
        v100 = __swift_allocate_boxed_opaque_existential_1(&v155);
        sub_25417C178(v132, v100, v99);
        v101 = v156;
        v102 = v157;
        v103 = __swift_project_boxed_opaque_existential_1(&v155, v156);
        SessionEvent = v101;
        v154 = *(v102 + 16);
        v104 = __swift_allocate_boxed_opaque_existential_1(&v152);
        (*(*(v101 - 8) + 16))(v104, v103, v101);
        v97 = type metadata accessor for SomeAccessoryEvent;
        v98 = &v158;
      }

      sub_25417C0B0(*(v98 - 32), v97);
      __swift_destroy_boxed_opaque_existential_1(&v155);
LABEL_66:
      v105 = v33;
      v106 = SessionEvent;
      v107 = v154;
      v108 = __swift_project_boxed_opaque_existential_1(&v152, SessionEvent);
      v156 = v106;
      v109 = *(v107 + 8);
      v157 = v109;
      v110 = __swift_allocate_boxed_opaque_existential_1(&v155);
      (*(*(v106 - 8) + 16))(v110, v108, v106);
      __swift_destroy_boxed_opaque_existential_1(&v152);
      v111 = v144;
      (*(v109 + 32))(v106, v109);
      __swift_destroy_boxed_opaque_existential_1(&v155);
      v112 = v151;
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25424D948();
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
        v113 = v150;
        v114 = sub_25424DC58();
      }

      else
      {
        v114 = sub_25424D828();
        v113 = v150;
      }

      v115 = *v142;
      v116 = v111;
      v117 = v145;
      (*v142)(v116, v145);
      v115(v112, v117);
      sub_25417C0B0(v113, type metadata accessor for EventQuery.FetchedRecordInfo);
      result = sub_25417C0B0(v48, type metadata accessor for EventQuery.FetchedRecordInfo);
      v33 = v105;
      v39 = v113;
      v119 = v148;
      v118 = v149;
      if ((v114 & 1) == 0)
      {
LABEL_4:
        a3 = v128 + 1;
        v45 = v127 + v123;
        v46 = v126 - 1;
        v47 = v125 + v123;
        if (v128 + 1 == v124)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v140)
      {
        __break(1u);
        return result;
      }

      v120 = v141;
      sub_25417C178(v149, v141, type metadata accessor for EventQuery.FetchedRecordInfo);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25417C178(v120, v119, type metadata accessor for EventQuery.FetchedRecordInfo);
      v45 = v119 + v139;
      v47 = v118 + v139;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_25416C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v162 = sub_25424D8B8();
  v8 = *(v162 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v162);
  v12 = &v137[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v137[-v13];
  v153 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v15 = *(*(v153 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v153);
  v152 = &v137[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v137[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v150 = &v137[-v21];
  MEMORY[0x28223BE20](v20);
  v149 = &v137[-v22];
  v148 = type metadata accessor for SomeAccessoryEvent();
  v23 = *(*(v148 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v148);
  v147 = &v137[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v146 = &v137[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v145 = &v137[-v29];
  MEMORY[0x28223BE20](v28);
  v144 = &v137[-v30];
  v31 = type metadata accessor for SomeEvent();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v137[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v33);
  v171 = &v137[-v36];
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  v37 = *(*(v173 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v173);
  v156 = &v137[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x28223BE20](v38);
  v170 = &v137[-v41];
  v42 = MEMORY[0x28223BE20](v40);
  v169 = &v137[-v43];
  v44 = MEMORY[0x28223BE20](v42);
  v172 = &v137[-v45];
  result = MEMORY[0x28223BE20](v44);
  v163 = &v137[-v48];
  v139 = a2;
  if (a3 != a2)
  {
    v157 = (v8 + 8);
    v49 = *a4;
    v50 = *(v47 + 72);
    v51 = *a4 + v50 * (a3 - 1);
    v154 = -v50;
    v52 = a1 - a3;
    v155 = v49;
    v138 = v50;
    v53 = v49 + v50 * a3;
    v161 = v12;
    v160 = v14;
    v159 = v31;
    v158 = v35;
LABEL_5:
    v143 = a3;
    v140 = v53;
    v54 = v53;
    v141 = v52;
    v55 = v52;
    v142 = v51;
    v185 = v51;
    v56 = v172;
    v57 = v163;
    while (1)
    {
      sub_254132DF4(v54, v57, &qword_27F5B8DD0, &qword_2542545A0);
      sub_254132DF4(v185, v56, &qword_27F5B8DD0, &qword_2542545A0);
      v58 = v169;
      sub_254132DF4(v57, v169, &qword_27F5B8DD0, &qword_2542545A0);
      v59 = *(v173 + 48);
      sub_25417C110(&v58[v59], v171, type metadata accessor for SomeEvent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v181 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v178);
          sub_25417C178(v171, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_36;
        }

        v66 = v149;
        sub_25417C178(v171, v149, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v66, v150, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v67 = swift_getEnumCaseMultiPayload();
        if (v67)
        {
          if (v67 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v68 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v69 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v68 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v69 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v68 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v69 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v70 = v69;
        v181 = v68;
        v71 = __swift_allocate_boxed_opaque_existential_1(&v178);
        sub_25417C178(v150, v71, v70);
        sub_25412DC4C(&v178, &v182);
        v72 = v183;
        v73 = v184;
        v74 = __swift_project_boxed_opaque_existential_1(&v182, v183);
        SessionEvent = v72;
        v181 = *(v73 + 16);
        v75 = __swift_allocate_boxed_opaque_existential_1(&v178);
        (*(*(v72 - 8) + 16))(v75, v74, v72);
        v76 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v77 = &v179;
      }

      else
      {
        v62 = v144;
        sub_25417C178(v171, v144, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v62, v145, type metadata accessor for SomeAccessoryEvent);
        v63 = swift_getEnumCaseMultiPayload();
        if (v63 > 4)
        {
          if (v63 <= 6)
          {
            if (v63 == 5)
            {
              v183 = type metadata accessor for SmokeDetectorEvent();
              v64 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v65 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v183 = type metadata accessor for ThermostatAutomationEvent(0);
              v64 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v65 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v63 == 7)
          {
            v183 = type metadata accessor for ThermostatAutomationFailureEvent();
            v64 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v65 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v63 == 8)
          {
            v183 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v64 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v65 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v183 = type metadata accessor for WindowEvent();
            v64 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v65 = type metadata accessor for WindowEvent;
          }
        }

        else if (v63 <= 1)
        {
          if (v63)
          {
            v183 = type metadata accessor for DoorEvent();
            v64 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v65 = type metadata accessor for DoorEvent;
          }

          else
          {
            v183 = type metadata accessor for ContactSensorEvent();
            v64 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v65 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v63 == 2)
        {
          v183 = type metadata accessor for GarageDoorEvent();
          v64 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v65 = type metadata accessor for GarageDoorEvent;
        }

        else if (v63 == 3)
        {
          v183 = type metadata accessor for LockEvent();
          v64 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v65 = type metadata accessor for LockEvent;
        }

        else
        {
          v183 = type metadata accessor for SecuritySystemEvent();
          v64 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v65 = type metadata accessor for SecuritySystemEvent;
        }

        v78 = v65;
        v184 = v64;
        v79 = __swift_allocate_boxed_opaque_existential_1(&v182);
        sub_25417C178(v145, v79, v78);
        v80 = v183;
        v81 = v184;
        v82 = __swift_project_boxed_opaque_existential_1(&v182, v183);
        SessionEvent = v80;
        v181 = *(v81 + 16);
        v83 = __swift_allocate_boxed_opaque_existential_1(&v178);
        (*(*(v80 - 8) + 16))(v83, v82, v80);
        v76 = type metadata accessor for SomeAccessoryEvent;
        v77 = &v175;
      }

      sub_25417C0B0(*(v77 - 32), v76);
      __swift_destroy_boxed_opaque_existential_1(&v182);
LABEL_36:
      v85 = SessionEvent;
      v84 = v181;
      v86 = __swift_project_boxed_opaque_existential_1(&v178, SessionEvent);
      v183 = v85;
      v167 = *(v84 + 8);
      v184 = v167;
      v87 = __swift_allocate_boxed_opaque_existential_1(&v182);
      v88 = *(*(v85 - 8) + 16);
      v166 = v87;
      v88(v87, v86, v85);
      __swift_destroy_boxed_opaque_existential_1(&v178);
      v89 = v169;
      sub_25417C0B0(&v169[v59], type metadata accessor for SomeEvent);
      v90 = sub_25424D948();
      v91 = *(v90 - 8);
      v165 = *(v91 + 8);
      v164 = v91 + 8;
      v165(v89, v90);
      v92 = v170;
      sub_254132DF4(v172, v170, &qword_27F5B8DD0, &qword_2542545A0);
      v93 = *(v173 + 48);
      sub_25417C110(&v92[v93], v35, type metadata accessor for SomeEvent);
      v94 = swift_getEnumCaseMultiPayload();
      v168 = v55;
      if (v94)
      {
        if (v94 == 1)
        {
          DailyDigestEvent = type metadata accessor for HomeActivityStateEvent(0);
          v177 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          v95 = __swift_allocate_boxed_opaque_existential_1(&v174);
          sub_25417C178(v35, v95, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_66;
        }

        v100 = v151;
        sub_25417C178(v35, v151, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v100, v152, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v101 = swift_getEnumCaseMultiPayload();
        if (v101)
        {
          if (v101 == 1)
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v102 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v103 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v102 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v103 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          DailyDigestEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v102 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v103 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v104 = v103;
        v177 = v102;
        v105 = __swift_allocate_boxed_opaque_existential_1(&v174);
        sub_25417C178(v152, v105, v104);
        sub_25412DC4C(&v174, &v178);
        v106 = SessionEvent;
        v107 = v181;
        v108 = __swift_project_boxed_opaque_existential_1(&v178, SessionEvent);
        DailyDigestEvent = v106;
        v177 = *(v107 + 16);
        v109 = __swift_allocate_boxed_opaque_existential_1(&v174);
        (*(*(v106 - 8) + 16))(v109, v108, v106);
        v110 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v111 = &v181;
      }

      else
      {
        v96 = v146;
        sub_25417C178(v35, v146, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v96, v147, type metadata accessor for SomeAccessoryEvent);
        v97 = swift_getEnumCaseMultiPayload();
        if (v97 > 4)
        {
          if (v97 <= 6)
          {
            if (v97 == 5)
            {
              SessionEvent = type metadata accessor for SmokeDetectorEvent();
              v98 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v99 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              SessionEvent = type metadata accessor for ThermostatAutomationEvent(0);
              v98 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v99 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v97 == 7)
          {
            SessionEvent = type metadata accessor for ThermostatAutomationFailureEvent();
            v98 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v99 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v97 == 8)
          {
            SessionEvent = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v98 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v99 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for WindowEvent();
            v98 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v99 = type metadata accessor for WindowEvent;
          }
        }

        else if (v97 <= 1)
        {
          if (v97)
          {
            SessionEvent = type metadata accessor for DoorEvent();
            v98 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v99 = type metadata accessor for DoorEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for ContactSensorEvent();
            v98 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v99 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v97 == 2)
        {
          SessionEvent = type metadata accessor for GarageDoorEvent();
          v98 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v99 = type metadata accessor for GarageDoorEvent;
        }

        else if (v97 == 3)
        {
          SessionEvent = type metadata accessor for LockEvent();
          v98 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v99 = type metadata accessor for LockEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for SecuritySystemEvent();
          v98 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v99 = type metadata accessor for SecuritySystemEvent;
        }

        v112 = v99;
        v181 = v98;
        v113 = __swift_allocate_boxed_opaque_existential_1(&v178);
        sub_25417C178(v147, v113, v112);
        v114 = SessionEvent;
        v115 = v181;
        v116 = __swift_project_boxed_opaque_existential_1(&v178, SessionEvent);
        DailyDigestEvent = v114;
        v177 = *(v115 + 16);
        v117 = __swift_allocate_boxed_opaque_existential_1(&v174);
        (*(*(v114 - 8) + 16))(v117, v116, v114);
        v110 = type metadata accessor for SomeAccessoryEvent;
        v111 = &v177;
      }

      sub_25417C0B0(*(v111 - 32), v110);
      __swift_destroy_boxed_opaque_existential_1(&v178);
LABEL_66:
      v118 = v54;
      v119 = DailyDigestEvent;
      v120 = v177;
      v121 = __swift_project_boxed_opaque_existential_1(&v174, DailyDigestEvent);
      SessionEvent = v119;
      v181 = *(v120 + 8);
      v122 = v181;
      v123 = __swift_allocate_boxed_opaque_existential_1(&v178);
      (*(*(v119 - 8) + 16))(v123, v121, v119);
      __swift_destroy_boxed_opaque_existential_1(&v174);
      v124 = v170;
      sub_25417C0B0(&v170[v93], type metadata accessor for SomeEvent);
      v165(v124, v90);
      v125 = v160;
      (*(v167 + 32))(v85);
      v126 = v161;
      (*(v122 + 32))(v119, v122);
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
        v127 = v163;
        v56 = v172;
        v128 = sub_25424DC58();
      }

      else
      {
        v128 = sub_25424D828();
        v56 = v172;
        v127 = v163;
      }

      v129 = *v157;
      v130 = v126;
      v131 = v162;
      (*v157)(v130, v162);
      v129(v125, v131);
      __swift_destroy_boxed_opaque_existential_1(&v178);
      __swift_destroy_boxed_opaque_existential_1(&v182);
      sub_254132E5C(v56, &qword_27F5B8DD0, &qword_2542545A0);
      result = sub_254132E5C(v127, &qword_27F5B8DD0, &qword_2542545A0);
      v35 = v158;
      v57 = v127;
      v132 = v118;
      v133 = v168;
      if ((v128 & 1) == 0)
      {
LABEL_4:
        a3 = v143 + 1;
        v51 = v142 + v138;
        v52 = v141 - 1;
        v53 = v140 + v138;
        if (v143 + 1 == v139)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v155)
      {
        __break(1u);
        return result;
      }

      v134 = v156;
      sub_25417E6C8(v132, v156, &qword_27F5B8DD0, &qword_2542545A0);
      v135 = v185;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25417E6C8(v134, v135, &qword_27F5B8DD0, &qword_2542545A0);
      v185 = v135 + v154;
      v54 = v132 + v154;
      v136 = __CFADD__(v133, 1);
      v55 = v133 + 1;
      if (v136)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_25416DD28(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v287 = a4;
  v286 = a1;
  v322 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v5 = *(*(v322 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v322);
  v320 = &v283 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v319 = &v283 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v318 = &v283 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v317 = &v283 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v299 = &v283 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v298 = &v283 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v297 = &v283 - v19;
  MEMORY[0x28223BE20](v18);
  v296 = &v283 - v20;
  v321 = type metadata accessor for SomeAccessoryEvent();
  v21 = *(*(v321 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v321);
  v316 = &v283 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v315 = &v283 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v314 = &v283 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v313 = &v283 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v295 = &v283 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v294 = &v283 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v293 = &v283 - v35;
  MEMORY[0x28223BE20](v34);
  v292 = &v283 - v36;
  v337 = type metadata accessor for SomeEvent();
  v37 = *(*(v337 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v337);
  v335 = &v283 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v334 = &v283 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v309 = &v283 - v43;
  MEMORY[0x28223BE20](v42);
  v308 = &v283 - v44;
  v329 = sub_25424D8B8();
  v45 = *(v329 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v329);
  v49 = &v283 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47);
  v333 = &v283 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v283 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = &v283 - v55;
  v57 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v304 = *(v57 - 8);
  v58 = *(v304 + 64);
  v59 = MEMORY[0x28223BE20](v57);
  v290 = &v283 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v325 = &v283 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v65 = &v283 - v64;
  v66 = MEMORY[0x28223BE20](v63);
  v330 = &v283 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v70 = &v283 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v307 = &v283 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v284 = &v283 - v74;
  result = MEMORY[0x28223BE20](v73);
  v305 = a3;
  if (a3[1] < 1)
  {
    v78 = MEMORY[0x277D84F90];
LABEL_225:
    v80 = *v286;
    if (!*v286)
    {
      goto LABEL_265;
    }

    v45 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v312;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_259;
    }

    result = v45;
LABEL_228:
    v346 = result;
    v45 = *(result + 16);
    if (v45 >= 2)
    {
      while (*v305)
      {
        v279 = *(result + 16 * v45);
        v280 = result;
        v281 = *(result + 16 * (v45 - 1) + 40);
        sub_254174304(*v305 + *(v304 + 72) * v279, *v305 + *(v304 + 72) * *(result + 16 * (v45 - 1) + 32), *v305 + *(v304 + 72) * v281, v80);
        if (v79)
        {
        }

        if (v281 < v279)
        {
          goto LABEL_252;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v280 = sub_254179EB8(v280);
        }

        if (v45 - 2 >= *(v280 + 2))
        {
          goto LABEL_253;
        }

        v282 = &v280[16 * v45];
        *v282 = v279;
        *(v282 + 1) = v281;
        v346 = v280;
        sub_254179E2C(v45 - 1);
        result = v346;
        v45 = *(v346 + 16);
        if (v45 <= 1)
        {
        }
      }

      goto LABEL_263;
    }
  }

  v77 = a3[1];
  v283 = &v283 - v76;
  v327 = (v45 + 8);
  v78 = MEMORY[0x277D84F90];
  v326 = v49;
  v303 = v54;
  v306 = v56;
  v79 = 0;
  v328 = v57;
  v336 = v65;
  v80 = v330;
  v310 = v70;
  while (1)
  {
    v311 = v77;
    v291 = v78;
    if (v79 + 1 >= v77)
    {
      v154 = v79 + 1;
      v155 = v287;
      v156 = v79;
      goto LABEL_88;
    }

    v81 = *v305;
    v82 = *(v304 + 72);
    v332 = *v305 + v82 * (v79 + 1);
    v83 = v283;
    sub_25417C110(v332, v283, type metadata accessor for EventQuery.FetchedRecordInfo);
    v84 = v284;
    sub_25417C110(v81 + v82 * v79, v284, type metadata accessor for EventQuery.FetchedRecordInfo);
    v85 = v312;
    LODWORD(v323) = sub_254167494(v83, v84);
    v312 = v85;
    if (v85)
    {
      sub_25417C0B0(v84, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C0B0(v83, type metadata accessor for EventQuery.FetchedRecordInfo);
    }

    v45 = type metadata accessor for EventQuery.FetchedRecordInfo;
    sub_25417C0B0(v84, type metadata accessor for EventQuery.FetchedRecordInfo);
    result = sub_25417C0B0(v83, type metadata accessor for EventQuery.FetchedRecordInfo);
    v285 = v79;
    v86 = v79 + 2;
    v87 = v81 + v82 * (v79 + 2);
    v88 = v82;
    v324 = v82;
    v89 = v332;
    do
    {
      if (v311 == v86)
      {
        v154 = v311;
        goto LABEL_74;
      }

      v331 = v86;
      v94 = v307;
      sub_25417C110(v87, v307, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C110(v89, v70, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C110(v94 + *(v57 + 20), v308, type metadata accessor for SomeEvent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v332 = v89;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v340 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v338);
          sub_25417C178(v308, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_40;
        }

        v101 = v296;
        sub_25417C178(v308, v296, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v101, v297, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v102 = swift_getEnumCaseMultiPayload();
        if (v102)
        {
          if (v102 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v103 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v104 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v103 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v104 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v103 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v104 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v105 = v104;
        v340 = v103;
        v106 = __swift_allocate_boxed_opaque_existential_1(&v338);
        sub_25417C178(v297, v106, v105);
        sub_25412DC4C(&v338, &v341);
        v107 = v343;
        v108 = v344;
        v109 = __swift_project_boxed_opaque_existential_1(&v341, v343);
        SessionEvent = v107;
        v340 = *(v108 + 16);
        v110 = __swift_allocate_boxed_opaque_existential_1(&v338);
        (*(*(v107 - 8) + 16))(v110, v109, v107);
        v111 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v112 = &v328;
      }

      else
      {
        v97 = v292;
        sub_25417C178(v308, v292, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v97, v293, type metadata accessor for SomeAccessoryEvent);
        v98 = swift_getEnumCaseMultiPayload();
        if (v98 > 4)
        {
          if (v98 <= 6)
          {
            if (v98 == 5)
            {
              v343 = type metadata accessor for SmokeDetectorEvent();
              v99 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v100 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v343 = type metadata accessor for ThermostatAutomationEvent(0);
              v99 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v100 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v98 == 7)
          {
            v343 = type metadata accessor for ThermostatAutomationFailureEvent();
            v99 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v100 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v98 == 8)
          {
            v343 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v99 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v100 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v343 = type metadata accessor for WindowEvent();
            v99 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v100 = type metadata accessor for WindowEvent;
          }
        }

        else if (v98 <= 1)
        {
          if (v98)
          {
            v343 = type metadata accessor for DoorEvent();
            v99 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v100 = type metadata accessor for DoorEvent;
          }

          else
          {
            v343 = type metadata accessor for ContactSensorEvent();
            v99 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v100 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v98 == 2)
        {
          v343 = type metadata accessor for GarageDoorEvent();
          v99 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v100 = type metadata accessor for GarageDoorEvent;
        }

        else if (v98 == 3)
        {
          v343 = type metadata accessor for LockEvent();
          v99 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v100 = type metadata accessor for LockEvent;
        }

        else
        {
          v343 = type metadata accessor for SecuritySystemEvent();
          v99 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v100 = type metadata accessor for SecuritySystemEvent;
        }

        v113 = v100;
        v344 = v99;
        v114 = __swift_allocate_boxed_opaque_existential_1(&v341);
        sub_25417C178(v293, v114, v113);
        v115 = v343;
        v116 = v344;
        v117 = __swift_project_boxed_opaque_existential_1(&v341, v343);
        SessionEvent = v115;
        v340 = *(v116 + 16);
        v118 = __swift_allocate_boxed_opaque_existential_1(&v338);
        (*(*(v115 - 8) + 16))(v118, v117, v115);
        v111 = type metadata accessor for SomeAccessoryEvent;
        v112 = &v324;
      }

      sub_25417C0B0(*(v112 - 32), v111);
      __swift_destroy_boxed_opaque_existential_1(&v341);
LABEL_40:
      v120 = SessionEvent;
      v119 = v340;
      __swift_project_boxed_opaque_existential_1(&v338, SessionEvent);
      v343 = v120;
      v344 = *(v119 + 8);
      v121 = v344;
      __swift_allocate_boxed_opaque_existential_1(&v341);
      (*(*(v120 - 8) + 16))();
      __swift_destroy_boxed_opaque_existential_1(&v338);
      (*(v121 + 32))(v120, v121);
      __swift_destroy_boxed_opaque_existential_1(&v341);
      sub_25417C110(&v310[*(v57 + 20)], v309, type metadata accessor for SomeEvent);
      v122 = swift_getEnumCaseMultiPayload();
      if (v122)
      {
        if (v122 == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v340 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          v123 = __swift_allocate_boxed_opaque_existential_1(&v338);
          sub_25417C178(v309, v123, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_70;
        }

        v128 = v298;
        sub_25417C178(v309, v298, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v128, v299, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v129 = swift_getEnumCaseMultiPayload();
        if (v129)
        {
          if (v129 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v130 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v131 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v130 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v131 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v130 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v131 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v132 = v131;
        v340 = v130;
        v133 = __swift_allocate_boxed_opaque_existential_1(&v338);
        sub_25417C178(v299, v133, v132);
        sub_25412DC4C(&v338, &v341);
        v134 = v343;
        v135 = v344;
        v136 = __swift_project_boxed_opaque_existential_1(&v341, v343);
        SessionEvent = v134;
        v340 = *(v135 + 16);
        v137 = __swift_allocate_boxed_opaque_existential_1(&v338);
        (*(*(v134 - 8) + 16))(v137, v136, v134);
        v138 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v139 = &v330;
      }

      else
      {
        v124 = v294;
        sub_25417C178(v309, v294, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v124, v295, type metadata accessor for SomeAccessoryEvent);
        v125 = swift_getEnumCaseMultiPayload();
        if (v125 > 4)
        {
          if (v125 <= 6)
          {
            if (v125 == 5)
            {
              v343 = type metadata accessor for SmokeDetectorEvent();
              v126 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v127 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v343 = type metadata accessor for ThermostatAutomationEvent(0);
              v126 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v127 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v125 == 7)
          {
            v343 = type metadata accessor for ThermostatAutomationFailureEvent();
            v126 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v127 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v125 == 8)
          {
            v343 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v126 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v127 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v343 = type metadata accessor for WindowEvent();
            v126 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v127 = type metadata accessor for WindowEvent;
          }
        }

        else if (v125 <= 1)
        {
          if (v125)
          {
            v343 = type metadata accessor for DoorEvent();
            v126 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v127 = type metadata accessor for DoorEvent;
          }

          else
          {
            v343 = type metadata accessor for ContactSensorEvent();
            v126 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v127 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v125 == 2)
        {
          v343 = type metadata accessor for GarageDoorEvent();
          v126 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v127 = type metadata accessor for GarageDoorEvent;
        }

        else if (v125 == 3)
        {
          v343 = type metadata accessor for LockEvent();
          v126 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v127 = type metadata accessor for LockEvent;
        }

        else
        {
          v343 = type metadata accessor for SecuritySystemEvent();
          v126 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v127 = type metadata accessor for SecuritySystemEvent;
        }

        v140 = v127;
        v344 = v126;
        v141 = __swift_allocate_boxed_opaque_existential_1(&v341);
        sub_25417C178(v295, v141, v140);
        v142 = v343;
        v143 = v344;
        v144 = __swift_project_boxed_opaque_existential_1(&v341, v343);
        SessionEvent = v142;
        v340 = *(v143 + 16);
        v145 = __swift_allocate_boxed_opaque_existential_1(&v338);
        (*(*(v142 - 8) + 16))(v145, v144, v142);
        v138 = type metadata accessor for SomeAccessoryEvent;
        v139 = &v326;
      }

      sub_25417C0B0(*(v139 - 32), v138);
      __swift_destroy_boxed_opaque_existential_1(&v341);
LABEL_70:
      v147 = SessionEvent;
      v146 = v340;
      v148 = __swift_project_boxed_opaque_existential_1(&v338, SessionEvent);
      v343 = v147;
      v344 = *(v146 + 8);
      v149 = v344;
      v150 = __swift_allocate_boxed_opaque_existential_1(&v341);
      (*(*(v147 - 8) + 16))(v150, v148, v147);
      __swift_destroy_boxed_opaque_existential_1(&v338);
      v151 = v147;
      v152 = v303;
      (*(v149 + 32))(v151, v149);
      __swift_destroy_boxed_opaque_existential_1(&v341);
      v153 = v306;
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25424D948();
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
        v90 = v307;
        v70 = v310;
        v45 = sub_25424DC58();
        v65 = v336;
      }

      else
      {
        v45 = sub_25424D828();
        v65 = v336;
        v70 = v310;
        v90 = v307;
      }

      v79 = v327;
      v91 = *v327;
      v92 = v152;
      v93 = v329;
      (*v327)(v92, v329);
      v91(v153, v93);
      sub_25417C0B0(v70, type metadata accessor for EventQuery.FetchedRecordInfo);
      result = sub_25417C0B0(v90, type metadata accessor for EventQuery.FetchedRecordInfo);
      v86 = v331 + 1;
      v88 = v324;
      v87 += v324;
      v89 = v332 + v324;
      v57 = v328;
    }

    while ((v323 & 1) == (v45 & 1));
    v154 = v331;
LABEL_74:
    v155 = v287;
    v80 = v330;
    v156 = v285;
    if (v323)
    {
      if (v154 >= v285)
      {
        if (v285 < v154)
        {
          v157 = v88 * (v154 - 1);
          v158 = v154 * v88;
          v159 = v154;
          v79 = v285;
          v160 = v285 * v88;
          do
          {
            if (v79 != --v154)
            {
              v161 = *v305;
              if (!*v305)
              {
                goto LABEL_262;
              }

              v45 = v161 + v160;
              sub_25417C178(v161 + v160, v290, type metadata accessor for EventQuery.FetchedRecordInfo);
              if (v160 < v157 || v45 >= v161 + v158)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v160 != v157)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_25417C178(v290, v161 + v157, type metadata accessor for EventQuery.FetchedRecordInfo);
              v155 = v287;
              v65 = v336;
              v88 = v324;
            }

            ++v79;
            v157 -= v88;
            v158 -= v88;
            v160 += v88;
          }

          while (v79 < v154);
          v80 = v330;
          v154 = v159;
          v156 = v285;
        }

        goto LABEL_88;
      }

LABEL_258:
      __break(1u);
LABEL_259:
      result = sub_254179EB8(v45);
      goto LABEL_228;
    }

LABEL_88:
    v162 = v305[1];
    if (v154 >= v162)
    {
      goto LABEL_168;
    }

    if (__OFSUB__(v154, v156))
    {
      goto LABEL_255;
    }

    if (v154 - v156 >= v155)
    {
      goto LABEL_168;
    }

    if (__OFADD__(v156, v155))
    {
      goto LABEL_256;
    }

    if (v156 + v155 < v162)
    {
      v162 = v156 + v155;
    }

    if (v162 < v156)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v289 = v162;
    if (v154 == v162)
    {
      goto LABEL_168;
    }

    v163 = *v305;
    v164 = *(v304 + 72);
    v165 = *v305 + v164 * (v154 - 1);
    v323 = -v164;
    v285 = v156;
    v166 = v156 - v154;
    v324 = v163;
    v288 = v164;
    v167 = v163 + v154 * v164;
LABEL_99:
    v311 = v154;
    v300 = v167;
    v301 = v166;
    v168 = v166;
    v302 = v165;
    v169 = v165;
LABEL_100:
    sub_25417C110(v167, v80, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C110(v169, v65, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C110(v80 + *(v57 + 20), v334, type metadata accessor for SomeEvent);
    v170 = swift_getEnumCaseMultiPayload();
    v331 = v167;
    v332 = v168;
    if (v170)
    {
      if (v170 == 1)
      {
        SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
        v340 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
        v171 = __swift_allocate_boxed_opaque_existential_1(&v338);
        sub_25417C178(v334, v171, type metadata accessor for HomeActivityStateEvent);
        goto LABEL_130;
      }

      v176 = v317;
      sub_25417C178(v334, v317, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      sub_25417C110(v176, v318, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v177 = swift_getEnumCaseMultiPayload();
      if (v177)
      {
        if (v177 == 1)
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
          v178 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
          v179 = type metadata accessor for EnergyKit.LoadSessionEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
          v178 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
          v179 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
        }
      }

      else
      {
        SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
        v178 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
        v179 = type metadata accessor for EnergyKit.LoadEvent;
      }

      v180 = v179;
      v340 = v178;
      v181 = __swift_allocate_boxed_opaque_existential_1(&v338);
      sub_25417C178(v318, v181, v180);
      sub_25412DC4C(&v338, &v341);
      v182 = v343;
      v183 = v344;
      v184 = __swift_project_boxed_opaque_existential_1(&v341, v343);
      SessionEvent = v182;
      v340 = *(v183 + 16);
      v185 = __swift_allocate_boxed_opaque_existential_1(&v338);
      (*(*(v182 - 8) + 16))(v185, v184, v182);
      v186 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      v187 = &v345;
    }

    else
    {
      v172 = v313;
      sub_25417C178(v334, v313, type metadata accessor for SomeAccessoryEvent);
      sub_25417C110(v172, v314, type metadata accessor for SomeAccessoryEvent);
      v173 = swift_getEnumCaseMultiPayload();
      if (v173 > 4)
      {
        if (v173 <= 6)
        {
          if (v173 == 5)
          {
            v343 = type metadata accessor for SmokeDetectorEvent();
            v174 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
            v175 = type metadata accessor for SmokeDetectorEvent;
          }

          else
          {
            v343 = type metadata accessor for ThermostatAutomationEvent(0);
            v174 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
            v175 = type metadata accessor for ThermostatAutomationEvent;
          }
        }

        else if (v173 == 7)
        {
          v343 = type metadata accessor for ThermostatAutomationFailureEvent();
          v174 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
          v175 = type metadata accessor for ThermostatAutomationFailureEvent;
        }

        else if (v173 == 8)
        {
          v343 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
          v174 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          v175 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
        }

        else
        {
          v343 = type metadata accessor for WindowEvent();
          v174 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
          v175 = type metadata accessor for WindowEvent;
        }
      }

      else if (v173 <= 1)
      {
        if (v173)
        {
          v343 = type metadata accessor for DoorEvent();
          v174 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
          v175 = type metadata accessor for DoorEvent;
        }

        else
        {
          v343 = type metadata accessor for ContactSensorEvent();
          v174 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
          v175 = type metadata accessor for ContactSensorEvent;
        }
      }

      else if (v173 == 2)
      {
        v343 = type metadata accessor for GarageDoorEvent();
        v174 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
        v175 = type metadata accessor for GarageDoorEvent;
      }

      else if (v173 == 3)
      {
        v343 = type metadata accessor for LockEvent();
        v174 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
        v175 = type metadata accessor for LockEvent;
      }

      else
      {
        v343 = type metadata accessor for SecuritySystemEvent();
        v174 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
        v175 = type metadata accessor for SecuritySystemEvent;
      }

      v188 = v175;
      v344 = v174;
      v189 = __swift_allocate_boxed_opaque_existential_1(&v341);
      sub_25417C178(v314, v189, v188);
      v190 = v343;
      v191 = v344;
      v192 = __swift_project_boxed_opaque_existential_1(&v341, v343);
      SessionEvent = v190;
      v340 = *(v191 + 16);
      v193 = __swift_allocate_boxed_opaque_existential_1(&v338);
      (*(*(v190 - 8) + 16))(v193, v192, v190);
      v186 = type metadata accessor for SomeAccessoryEvent;
      v187 = &v342;
    }

    sub_25417C0B0(*(v187 - 32), v186);
    __swift_destroy_boxed_opaque_existential_1(&v341);
LABEL_130:
    v195 = SessionEvent;
    v194 = v340;
    __swift_project_boxed_opaque_existential_1(&v338, SessionEvent);
    v343 = v195;
    v344 = *(v194 + 8);
    v196 = v344;
    __swift_allocate_boxed_opaque_existential_1(&v341);
    (*(*(v195 - 8) + 16))();
    __swift_destroy_boxed_opaque_existential_1(&v338);
    (*(v196 + 32))(v195, v196);
    __swift_destroy_boxed_opaque_existential_1(&v341);
    sub_25417C110(&v336[*(v57 + 20)], v335, type metadata accessor for SomeEvent);
    v197 = swift_getEnumCaseMultiPayload();
    if (v197)
    {
      if (v197 == 1)
      {
        SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
        v340 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
        v198 = __swift_allocate_boxed_opaque_existential_1(&v338);
        sub_25417C178(v335, v198, type metadata accessor for HomeActivityStateEvent);
        goto LABEL_160;
      }

      v203 = v319;
      sub_25417C178(v335, v319, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      sub_25417C110(v203, v320, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v204 = swift_getEnumCaseMultiPayload();
      if (v204)
      {
        if (v204 == 1)
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
          v205 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
          v206 = type metadata accessor for EnergyKit.LoadSessionEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
          v205 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
          v206 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
        }
      }

      else
      {
        SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
        v205 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
        v206 = type metadata accessor for EnergyKit.LoadEvent;
      }

      v207 = v206;
      v340 = v205;
      v208 = __swift_allocate_boxed_opaque_existential_1(&v338);
      sub_25417C178(v320, v208, v207);
      sub_25412DC4C(&v338, &v341);
      v209 = v343;
      v210 = v344;
      v211 = __swift_project_boxed_opaque_existential_1(&v341, v343);
      SessionEvent = v209;
      v340 = *(v210 + 16);
      v212 = __swift_allocate_boxed_opaque_existential_1(&v338);
      (*(*(v209 - 8) + 16))(v212, v211, v209);
      v213 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      v214 = &v347;
    }

    else
    {
      v199 = v315;
      sub_25417C178(v335, v315, type metadata accessor for SomeAccessoryEvent);
      sub_25417C110(v199, v316, type metadata accessor for SomeAccessoryEvent);
      v200 = swift_getEnumCaseMultiPayload();
      if (v200 > 4)
      {
        if (v200 <= 6)
        {
          if (v200 == 5)
          {
            v343 = type metadata accessor for SmokeDetectorEvent();
            v201 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
            v202 = type metadata accessor for SmokeDetectorEvent;
          }

          else
          {
            v343 = type metadata accessor for ThermostatAutomationEvent(0);
            v201 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
            v202 = type metadata accessor for ThermostatAutomationEvent;
          }
        }

        else if (v200 == 7)
        {
          v343 = type metadata accessor for ThermostatAutomationFailureEvent();
          v201 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
          v202 = type metadata accessor for ThermostatAutomationFailureEvent;
        }

        else if (v200 == 8)
        {
          v343 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
          v201 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          v202 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
        }

        else
        {
          v343 = type metadata accessor for WindowEvent();
          v201 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
          v202 = type metadata accessor for WindowEvent;
        }
      }

      else if (v200 <= 1)
      {
        if (v200)
        {
          v343 = type metadata accessor for DoorEvent();
          v201 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
          v202 = type metadata accessor for DoorEvent;
        }

        else
        {
          v343 = type metadata accessor for ContactSensorEvent();
          v201 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
          v202 = type metadata accessor for ContactSensorEvent;
        }
      }

      else if (v200 == 2)
      {
        v343 = type metadata accessor for GarageDoorEvent();
        v201 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
        v202 = type metadata accessor for GarageDoorEvent;
      }

      else if (v200 == 3)
      {
        v343 = type metadata accessor for LockEvent();
        v201 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
        v202 = type metadata accessor for LockEvent;
      }

      else
      {
        v343 = type metadata accessor for SecuritySystemEvent();
        v201 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
        v202 = type metadata accessor for SecuritySystemEvent;
      }

      v215 = v202;
      v344 = v201;
      v216 = __swift_allocate_boxed_opaque_existential_1(&v341);
      sub_25417C178(v316, v216, v215);
      v217 = v343;
      v218 = v344;
      v219 = __swift_project_boxed_opaque_existential_1(&v341, v343);
      SessionEvent = v217;
      v340 = *(v218 + 16);
      v220 = __swift_allocate_boxed_opaque_existential_1(&v338);
      (*(*(v217 - 8) + 16))(v220, v219, v217);
      v213 = type metadata accessor for SomeAccessoryEvent;
      v214 = &v344;
    }

    sub_25417C0B0(*(v214 - 32), v213);
    __swift_destroy_boxed_opaque_existential_1(&v341);
LABEL_160:
    v221 = SessionEvent;
    v222 = v340;
    v223 = __swift_project_boxed_opaque_existential_1(&v338, SessionEvent);
    v343 = v221;
    v224 = *(v222 + 8);
    v344 = v224;
    v225 = __swift_allocate_boxed_opaque_existential_1(&v341);
    (*(*(v221 - 8) + 16))(v225, v223, v221);
    __swift_destroy_boxed_opaque_existential_1(&v338);
    v79 = v326;
    (*(v224 + 32))(v221, v224);
    __swift_destroy_boxed_opaque_existential_1(&v341);
    v226 = v333;
    if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
    {
      sub_25424D948();
      sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
      v80 = v330;
      v65 = v336;
      v45 = sub_25424DC58();
    }

    else
    {
      v45 = sub_25424D828();
      v65 = v336;
      v80 = v330;
    }

    v227 = *v327;
    v228 = v329;
    (*v327)(v79, v329);
    v227(v226, v228);
    sub_25417C0B0(v65, type metadata accessor for EventQuery.FetchedRecordInfo);
    result = sub_25417C0B0(v80, type metadata accessor for EventQuery.FetchedRecordInfo);
    if (v45)
    {
      break;
    }

    v57 = v328;
LABEL_98:
    v154 = v311 + 1;
    v165 = v302 + v288;
    v166 = v301 - 1;
    v167 = v300 + v288;
    if (v311 + 1 != v289)
    {
      goto LABEL_99;
    }

    v156 = v285;
    v154 = v289;
LABEL_168:
    if (v154 < v156)
    {
      goto LABEL_254;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v78 = v291;
    }

    else
    {
      result = sub_25417A0A0(0, *(v291 + 2) + 1, 1, v291);
      v78 = result;
    }

    v233 = *(v78 + 2);
    v232 = *(v78 + 3);
    v45 = v233 + 1;
    if (v233 >= v232 >> 1)
    {
      result = sub_25417A0A0((v232 > 1), v233 + 1, 1, v78);
      v78 = result;
    }

    *(v78 + 2) = v45;
    v234 = &v78[16 * v233];
    *(v234 + 4) = v156;
    *(v234 + 5) = v154;
    v79 = v154;
    v235 = *v286;
    if (!*v286)
    {
      goto LABEL_264;
    }

    if (v233)
    {
      v80 = v330;
      while (1)
      {
        v236 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v237 = *(v78 + 4);
          v238 = *(v78 + 5);
          v247 = __OFSUB__(v238, v237);
          v239 = v238 - v237;
          v240 = v247;
LABEL_189:
          if (v240)
          {
            goto LABEL_243;
          }

          v253 = &v78[16 * v45];
          v255 = *v253;
          v254 = *(v253 + 1);
          v256 = __OFSUB__(v254, v255);
          v257 = v254 - v255;
          v258 = v256;
          if (v256)
          {
            goto LABEL_246;
          }

          v259 = &v78[16 * v236 + 32];
          v261 = *v259;
          v260 = *(v259 + 1);
          v247 = __OFSUB__(v260, v261);
          v262 = v260 - v261;
          if (v247)
          {
            goto LABEL_249;
          }

          if (__OFADD__(v257, v262))
          {
            goto LABEL_250;
          }

          if (v257 + v262 >= v239)
          {
            if (v239 < v262)
            {
              v236 = v45 - 2;
            }

            goto LABEL_210;
          }

          goto LABEL_203;
        }

        v263 = &v78[16 * v45];
        v265 = *v263;
        v264 = *(v263 + 1);
        v247 = __OFSUB__(v264, v265);
        v257 = v264 - v265;
        v258 = v247;
LABEL_203:
        if (v258)
        {
          goto LABEL_245;
        }

        v266 = &v78[16 * v236];
        v268 = *(v266 + 4);
        v267 = *(v266 + 5);
        v247 = __OFSUB__(v267, v268);
        v269 = v267 - v268;
        if (v247)
        {
          goto LABEL_248;
        }

        if (v269 < v257)
        {
          goto LABEL_220;
        }

LABEL_210:
        v80 = v236 - 1;
        if (v236 - 1 >= v45)
        {
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
          goto LABEL_257;
        }

        if (!*v305)
        {
          goto LABEL_261;
        }

        v274 = v78;
        v45 = *&v78[16 * v80 + 32];
        v275 = *&v78[16 * v236 + 40];
        v276 = v312;
        sub_254174304(*v305 + *(v304 + 72) * v45, *v305 + *(v304 + 72) * *&v78[16 * v236 + 32], *v305 + *(v304 + 72) * v275, v235);
        v312 = v276;
        if (v276)
        {
        }

        if (v275 < v45)
        {
          goto LABEL_239;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v274 = sub_254179EB8(v274);
        }

        if (v80 >= *(v274 + 2))
        {
          goto LABEL_240;
        }

        v277 = &v274[16 * v80];
        *(v277 + 4) = v45;
        *(v277 + 5) = v275;
        v346 = v274;
        result = sub_254179E2C(v236);
        v78 = v346;
        v45 = *(v346 + 16);
        v80 = v330;
        if (v45 <= 1)
        {
          goto LABEL_220;
        }
      }

      v241 = &v78[16 * v45 + 32];
      v242 = *(v241 - 64);
      v243 = *(v241 - 56);
      v247 = __OFSUB__(v243, v242);
      v244 = v243 - v242;
      if (v247)
      {
        goto LABEL_241;
      }

      v246 = *(v241 - 48);
      v245 = *(v241 - 40);
      v247 = __OFSUB__(v245, v246);
      v239 = v245 - v246;
      v240 = v247;
      if (v247)
      {
        goto LABEL_242;
      }

      v248 = &v78[16 * v45];
      v250 = *v248;
      v249 = *(v248 + 1);
      v247 = __OFSUB__(v249, v250);
      v251 = v249 - v250;
      if (v247)
      {
        goto LABEL_244;
      }

      v247 = __OFADD__(v239, v251);
      v252 = v239 + v251;
      if (v247)
      {
        goto LABEL_247;
      }

      if (v252 >= v244)
      {
        v270 = &v78[16 * v236 + 32];
        v272 = *v270;
        v271 = *(v270 + 1);
        v247 = __OFSUB__(v271, v272);
        v273 = v271 - v272;
        if (v247)
        {
          goto LABEL_251;
        }

        if (v239 < v273)
        {
          v236 = v45 - 2;
        }

        goto LABEL_210;
      }

      goto LABEL_189;
    }

    v80 = v330;
LABEL_220:
    v77 = v305[1];
    v70 = v310;
    if (v79 >= v77)
    {
      goto LABEL_225;
    }
  }

  v57 = v328;
  v229 = v332;
  if (v324)
  {
    v45 = type metadata accessor for EventQuery.FetchedRecordInfo;
    v230 = v331;
    v231 = v325;
    sub_25417C178(v331, v325, type metadata accessor for EventQuery.FetchedRecordInfo);
    swift_arrayInitWithTakeFrontToBack();
    sub_25417C178(v231, v169, type metadata accessor for EventQuery.FetchedRecordInfo);
    v169 += v323;
    v167 = v230 + v323;
    v168 = v229 + 1;
    if (v229 == -1)
    {
      goto LABEL_98;
    }

    goto LABEL_100;
  }

  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
  return result;
}

uint64_t sub_254170E7C(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v326 = a4;
  v325 = a1;
  v372 = sub_25424D8B8();
  v5 = *(v372 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v372);
  v9 = &v322 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v322 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v344 = &v322 - v14;
  MEMORY[0x28223BE20](v13);
  v343 = &v322 - v15;
  v364 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v16 = *(*(v364 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v364);
  v362 = &v322 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v361 = &v322 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v360 = &v322 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v359 = &v322 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v339 = &v322 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v338 = &v322 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v337 = &v322 - v30;
  MEMORY[0x28223BE20](v29);
  v336 = &v322 - v31;
  v363 = type metadata accessor for SomeAccessoryEvent();
  v32 = *(*(v363 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v363);
  v358 = &v322 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v357 = &v322 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v356 = &v322 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v355 = &v322 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v335 = &v322 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v334 = &v322 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v333 = &v322 - v46;
  MEMORY[0x28223BE20](v45);
  v332 = &v322 - v47;
  v48 = type metadata accessor for SomeEvent();
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48);
  v384 = &v322 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v383 = &v322 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v351 = &v322 - v55;
  MEMORY[0x28223BE20](v54);
  v350 = &v322 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  v345 = *(v57 - 8);
  v58 = *(v345 + 64);
  v59 = MEMORY[0x28223BE20](v57);
  v330 = &v322 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v367 = &v322 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v382 = &v322 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v381 = &v322 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v69 = &v322 - v68;
  v70 = MEMORY[0x28223BE20](v67);
  v373 = &v322 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v349 = &v322 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v348 = &v322 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v77 = MEMORY[0x28223BE20](v76);
  v347 = &v322 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v324 = &v322 - v80;
  result = MEMORY[0x28223BE20](v79);
  v323 = &v322 - v83;
  v346 = a3;
  v84 = a3[1];
  if (v84 < 1)
  {
    v85 = MEMORY[0x277D84F90];
LABEL_225:
    v88 = *v325;
    if (!*v325)
    {
      goto LABEL_267;
    }

    v95 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v353;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_261;
    }

    result = v95;
LABEL_228:
    v396 = result;
    v95 = *(result + 16);
    if (v95 >= 2)
    {
      while (*v346)
      {
        v318 = *(result + 16 * v95);
        v319 = result;
        v320 = *(result + 16 * (v95 - 1) + 40);
        sub_254176EF4(*v346 + *(v345 + 72) * v318, *v346 + *(v345 + 72) * *(result + 16 * (v95 - 1) + 32), *v346 + *(v345 + 72) * v320, v88);
        if (v86)
        {
        }

        if (v320 < v318)
        {
          goto LABEL_254;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v319 = sub_254179EB8(v319);
        }

        if (v95 - 2 >= *(v319 + 2))
        {
          goto LABEL_255;
        }

        v321 = &v319[16 * v95];
        *v321 = v318;
        *(v321 + 1) = v320;
        v396 = v319;
        sub_254179E2C(v95 - 1);
        result = v396;
        v95 = *(v396 + 16);
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_265;
    }
  }

  v354 = v82;
  v370 = (v5 + 8);
  v85 = MEMORY[0x277D84F90];
  v369 = v9;
  v368 = v12;
  v385 = v48;
  v86 = 0;
  v374 = result;
  v371 = v69;
  v87 = result;
  while (1)
  {
    v88 = v86;
    v331 = v85;
    v327 = v86;
    if (v86 + 1 >= v84)
    {
      v103 = v86 + 1;
      v174 = v326;
      v95 = v373;
      goto LABEL_88;
    }

    v352 = v84;
    v89 = *v346;
    v90 = *(v345 + 72);
    v91 = *v346 + v90 * (v86 + 1);
    v92 = v323;
    sub_254132DF4(v91, v323, &qword_27F5B8DD0, &qword_2542545A0);
    v93 = v324;
    sub_254132DF4(v89 + v90 * v86, v324, &qword_27F5B8DD0, &qword_2542545A0);
    v94 = v353;
    LODWORD(v366) = sub_254167F50(v92, v93);
    v86 = v94;
    v95 = v373;
    if (v94)
    {
      sub_254132E5C(v93, &qword_27F5B8DD0, &qword_2542545A0);
      sub_254132E5C(v92, &qword_27F5B8DD0, &qword_2542545A0);
    }

    sub_254132E5C(v93, &qword_27F5B8DD0, &qword_2542545A0);
    sub_254132E5C(v92, &qword_27F5B8DD0, &qword_2542545A0);
    v96 = (v327 + 2);
    result = v89 + v90 * (v327 + 2);
    v353 = 0;
    v375 = v90;
    while (1)
    {
      v103 = v352;
      v87 = v374;
      if (v352 == v96)
      {
        break;
      }

      v379 = v96;
      v378 = result;
      v104 = v347;
      sub_254132DF4(result, v347, &qword_27F5B8DD0, &qword_2542545A0);
      sub_254132DF4(v91, v354, &qword_27F5B8DD0, &qword_2542545A0);
      v105 = v104;
      v106 = v348;
      sub_254132DF4(v105, v348, &qword_27F5B8DD0, &qword_2542545A0);
      v107 = *(v87 + 48);
      sub_25417C110(v106 + v107, v350, type metadata accessor for SomeEvent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v392 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v389);
          sub_25417C178(v350, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_40;
        }

        v114 = v336;
        sub_25417C178(v350, v336, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v114, v337, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v115 = swift_getEnumCaseMultiPayload();
        if (v115)
        {
          if (v115 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v116 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v117 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v116 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v117 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v116 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v117 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v118 = v117;
        v392 = v116;
        v119 = __swift_allocate_boxed_opaque_existential_1(&v389);
        sub_25417C178(v337, v119, v118);
        sub_25412DC4C(&v389, &v393);
        v120 = v394;
        v121 = v395;
        v122 = __swift_project_boxed_opaque_existential_1(&v393, v394);
        SessionEvent = v120;
        v392 = *(v121 + 16);
        v123 = __swift_allocate_boxed_opaque_existential_1(&v389);
        (*(*(v120 - 8) + 16))(v123, v122, v120);
        v124 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v125 = &v368;
      }

      else
      {
        v110 = v332;
        sub_25417C178(v350, v332, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v110, v333, type metadata accessor for SomeAccessoryEvent);
        v111 = swift_getEnumCaseMultiPayload();
        if (v111 > 4)
        {
          if (v111 <= 6)
          {
            if (v111 == 5)
            {
              v394 = type metadata accessor for SmokeDetectorEvent();
              v112 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v113 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v394 = type metadata accessor for ThermostatAutomationEvent(0);
              v112 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v113 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v111 == 7)
          {
            v394 = type metadata accessor for ThermostatAutomationFailureEvent();
            v112 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v113 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v111 == 8)
          {
            v394 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v112 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v113 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v394 = type metadata accessor for WindowEvent();
            v112 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v113 = type metadata accessor for WindowEvent;
          }
        }

        else if (v111 <= 1)
        {
          if (v111)
          {
            v394 = type metadata accessor for DoorEvent();
            v112 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v113 = type metadata accessor for DoorEvent;
          }

          else
          {
            v394 = type metadata accessor for ContactSensorEvent();
            v112 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v113 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v111 == 2)
        {
          v394 = type metadata accessor for GarageDoorEvent();
          v112 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v113 = type metadata accessor for GarageDoorEvent;
        }

        else if (v111 == 3)
        {
          v394 = type metadata accessor for LockEvent();
          v112 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v113 = type metadata accessor for LockEvent;
        }

        else
        {
          v394 = type metadata accessor for SecuritySystemEvent();
          v112 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v113 = type metadata accessor for SecuritySystemEvent;
        }

        v126 = v113;
        v395 = v112;
        v127 = __swift_allocate_boxed_opaque_existential_1(&v393);
        sub_25417C178(v333, v127, v126);
        v128 = v394;
        v129 = v395;
        v130 = __swift_project_boxed_opaque_existential_1(&v393, v394);
        SessionEvent = v128;
        v392 = *(v129 + 16);
        v131 = __swift_allocate_boxed_opaque_existential_1(&v389);
        (*(*(v128 - 8) + 16))(v131, v130, v128);
        v124 = type metadata accessor for SomeAccessoryEvent;
        v125 = &v364;
      }

      sub_25417C0B0(*(v125 - 32), v124);
      __swift_destroy_boxed_opaque_existential_1(&v393);
LABEL_40:
      v133 = SessionEvent;
      v132 = v392;
      v134 = __swift_project_boxed_opaque_existential_1(&v389, SessionEvent);
      v394 = v133;
      v377 = *(v132 + 8);
      v395 = v377;
      v135 = __swift_allocate_boxed_opaque_existential_1(&v393);
      v136 = *(*(v133 - 8) + 16);
      v380 = v135;
      v136(v135, v134, v133);
      __swift_destroy_boxed_opaque_existential_1(&v389);
      v137 = v348;
      sub_25417C0B0(v348 + v107, type metadata accessor for SomeEvent);
      v138 = sub_25424D948();
      v376 = *(*(v138 - 8) + 8);
      (v376)(v137, v138);
      v139 = v349;
      sub_254132DF4(v354, v349, &qword_27F5B8DD0, &qword_2542545A0);
      v140 = *(v374 + 48);
      sub_25417C110(v139 + v140, v351, type metadata accessor for SomeEvent);
      v141 = swift_getEnumCaseMultiPayload();
      if (!v141)
      {
        v143 = v334;
        sub_25417C178(v351, v334, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v143, v335, type metadata accessor for SomeAccessoryEvent);
        v144 = swift_getEnumCaseMultiPayload();
        if (v144 > 4)
        {
          if (v144 <= 6)
          {
            if (v144 == 5)
            {
              SessionEvent = type metadata accessor for SmokeDetectorEvent();
              v145 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v146 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              SessionEvent = type metadata accessor for ThermostatAutomationEvent(0);
              v145 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v146 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v144 == 7)
          {
            SessionEvent = type metadata accessor for ThermostatAutomationFailureEvent();
            v145 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v146 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v144 == 8)
          {
            SessionEvent = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v145 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v146 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for WindowEvent();
            v145 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v146 = type metadata accessor for WindowEvent;
          }
        }

        else if (v144 <= 1)
        {
          if (v144)
          {
            SessionEvent = type metadata accessor for DoorEvent();
            v145 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v146 = type metadata accessor for DoorEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for ContactSensorEvent();
            v145 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v146 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v144 == 2)
        {
          SessionEvent = type metadata accessor for GarageDoorEvent();
          v145 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v146 = type metadata accessor for GarageDoorEvent;
        }

        else if (v144 == 3)
        {
          SessionEvent = type metadata accessor for LockEvent();
          v145 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v146 = type metadata accessor for LockEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for SecuritySystemEvent();
          v145 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v146 = type metadata accessor for SecuritySystemEvent;
        }

        v159 = v146;
        v392 = v145;
        v160 = __swift_allocate_boxed_opaque_existential_1(&v389);
        sub_25417C178(v335, v160, v159);
        v162 = SessionEvent;
        v161 = v392;
        v163 = __swift_project_boxed_opaque_existential_1(&v389, SessionEvent);
        DailyDigestEvent = v162;
        v388 = *(v161 + 16);
        v164 = __swift_allocate_boxed_opaque_existential_1(&v386);
        (*(*(v162 - 8) + 16))(v164, v163, v162);
        v157 = type metadata accessor for SomeAccessoryEvent;
        v158 = &v366;
        goto LABEL_69;
      }

      if (v141 != 1)
      {
        v147 = v338;
        sub_25417C178(v351, v338, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v147, v339, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v148 = swift_getEnumCaseMultiPayload();
        if (v148)
        {
          if (v148 == 1)
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v149 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v150 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v149 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v150 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          DailyDigestEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v149 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v150 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v151 = v150;
        v388 = v149;
        v152 = __swift_allocate_boxed_opaque_existential_1(&v386);
        sub_25417C178(v339, v152, v151);
        sub_25412DC4C(&v386, &v389);
        v153 = SessionEvent;
        v154 = v392;
        v155 = __swift_project_boxed_opaque_existential_1(&v389, SessionEvent);
        DailyDigestEvent = v153;
        v388 = *(v154 + 16);
        v156 = __swift_allocate_boxed_opaque_existential_1(&v386);
        (*(*(v153 - 8) + 16))(v156, v155, v153);
        v157 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v158 = &v370;
LABEL_69:
        sub_25417C0B0(*(v158 - 32), v157);
        __swift_destroy_boxed_opaque_existential_1(&v389);
        goto LABEL_70;
      }

      DailyDigestEvent = type metadata accessor for HomeActivityStateEvent(0);
      v388 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
      v142 = __swift_allocate_boxed_opaque_existential_1(&v386);
      sub_25417C178(v351, v142, type metadata accessor for HomeActivityStateEvent);
LABEL_70:
      v166 = DailyDigestEvent;
      v165 = v388;
      v167 = __swift_project_boxed_opaque_existential_1(&v386, DailyDigestEvent);
      SessionEvent = v166;
      v392 = *(v165 + 8);
      v168 = v392;
      v169 = __swift_allocate_boxed_opaque_existential_1(&v389);
      (*(*(v166 - 8) + 16))(v169, v167, v166);
      __swift_destroy_boxed_opaque_existential_1(&v386);
      v170 = v349;
      sub_25417C0B0(v349 + v140, type metadata accessor for SomeEvent);
      (v376)(v170, v138);
      v171 = v343;
      (*(v377 + 32))(v133);
      v172 = v344;
      (*(v168 + 32))(v166, v168);
      v173 = v171;
      v86 = v91;
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
        v99 = v347;
        v98 = v354;
        v97 = sub_25424DC58();
      }

      else
      {
        v97 = sub_25424D828();
        v98 = v354;
        v99 = v347;
      }

      v90 = v375;
      v100 = *v370;
      v101 = v172;
      v102 = v372;
      (*v370)(v101, v372);
      v100(v173, v102);
      __swift_destroy_boxed_opaque_existential_1(&v389);
      __swift_destroy_boxed_opaque_existential_1(&v393);
      sub_254132E5C(v98, &qword_27F5B8DD0, &qword_2542545A0);
      sub_254132E5C(v99, &qword_27F5B8DD0, &qword_2542545A0);
      v96 = (v379 + 1);
      result = v378 + v90;
      v91 += v90;
      v95 = v373;
      if ((v366 & 1) != (v97 & 1))
      {
        v103 = v379;
        v87 = v374;
        break;
      }
    }

    v174 = v326;
    v69 = v371;
    v88 = v327;
    if ((v366 & 1) == 0)
    {
      goto LABEL_88;
    }

    if (v103 < v327)
    {
      goto LABEL_260;
    }

    if (v327 < v103)
    {
      v175 = v87;
      v176 = v90 * (v103 - 1);
      v177 = v103 * v90;
      v178 = v103;
      v179 = v327;
      v180 = v327 * v90;
      do
      {
        if (v179 != --v178)
        {
          v181 = *v346;
          if (!*v346)
          {
            goto LABEL_264;
          }

          v86 = v103;
          sub_25417E6C8(v181 + v180, v330, &qword_27F5B8DD0, &qword_2542545A0);
          if (v180 < v176 || v181 + v180 >= (v181 + v177))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v180 != v176)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_25417E6C8(v330, v181 + v176, &qword_27F5B8DD0, &qword_2542545A0);
          v174 = v326;
          v175 = v374;
          v103 = v86;
          v88 = v327;
          v90 = v375;
        }

        ++v179;
        v176 -= v90;
        v177 -= v90;
        v180 += v90;
      }

      while (v179 < v178);
      v95 = v373;
      v87 = v175;
    }

LABEL_88:
    v182 = v346[1];
    if (v103 >= v182)
    {
      goto LABEL_97;
    }

    if (__OFSUB__(v103, v88))
    {
      goto LABEL_257;
    }

    if (v103 - v88 >= v174)
    {
LABEL_97:
      v86 = v103;
      if (v103 < v88)
      {
        goto LABEL_256;
      }

      goto LABEL_98;
    }

    if (__OFADD__(v88, v174))
    {
      goto LABEL_258;
    }

    if (v88 + v174 >= v182)
    {
      v86 = v346[1];
    }

    else
    {
      v86 = v88 + v174;
    }

    if (v86 < v88)
    {
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      result = sub_254179EB8(v95);
      goto LABEL_228;
    }

    if (v103 == v86)
    {
      goto LABEL_97;
    }

    v231 = *v346;
    v232 = *(v345 + 72);
    v233 = *v346 + v232 * (v103 - 1);
    v365 = -v232;
    v234 = (v88 - v103);
    v366 = v231;
    v328 = v232;
    v235 = v231 + v103 * v232;
    v329 = v86;
LABEL_151:
    v352 = v103;
    v340 = v235;
    v341 = v234;
    v236 = v234;
    v342 = v233;
    v237 = v233;
LABEL_152:
    v376 = v236;
    sub_254132DF4(v235, v95, &qword_27F5B8DD0, &qword_2542545A0);
    sub_254132DF4(v237, v69, &qword_27F5B8DD0, &qword_2542545A0);
    v238 = v381;
    sub_254132DF4(v95, v381, &qword_27F5B8DD0, &qword_2542545A0);
    v239 = *(v87 + 48);
    sub_25417C110(v238 + v239, v383, type metadata accessor for SomeEvent);
    v240 = swift_getEnumCaseMultiPayload();
    v375 = v235;
    if (v240)
    {
      if (v240 == 1)
      {
        v241 = v87;
        SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
        v392 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
        v242 = __swift_allocate_boxed_opaque_existential_1(&v389);
        sub_25417C178(v383, v242, type metadata accessor for HomeActivityStateEvent);
        goto LABEL_182;
      }

      v247 = v359;
      sub_25417C178(v383, v359, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      sub_25417C110(v247, v360, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v248 = swift_getEnumCaseMultiPayload();
      v241 = v87;
      if (v248)
      {
        if (v248 == 1)
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
          v249 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
          v250 = type metadata accessor for EnergyKit.LoadSessionEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
          v249 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
          v250 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
        }
      }

      else
      {
        SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
        v249 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
        v250 = type metadata accessor for EnergyKit.LoadEvent;
      }

      v251 = v250;
      v392 = v249;
      v252 = __swift_allocate_boxed_opaque_existential_1(&v389);
      sub_25417C178(v360, v252, v251);
      sub_25412DC4C(&v389, &v393);
      v253 = v394;
      v254 = v395;
      v255 = __swift_project_boxed_opaque_existential_1(&v393, v394);
      SessionEvent = v253;
      v392 = *(v254 + 16);
      v256 = __swift_allocate_boxed_opaque_existential_1(&v389);
      (*(*(v253 - 8) + 16))(v256, v255, v253);
      v257 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      v258 = &v389;
    }

    else
    {
      v243 = v355;
      sub_25417C178(v383, v355, type metadata accessor for SomeAccessoryEvent);
      sub_25417C110(v243, v356, type metadata accessor for SomeAccessoryEvent);
      v244 = swift_getEnumCaseMultiPayload();
      v241 = v87;
      if (v244 > 4)
      {
        if (v244 <= 6)
        {
          if (v244 == 5)
          {
            v394 = type metadata accessor for SmokeDetectorEvent();
            v245 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
            v246 = type metadata accessor for SmokeDetectorEvent;
          }

          else
          {
            v394 = type metadata accessor for ThermostatAutomationEvent(0);
            v245 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
            v246 = type metadata accessor for ThermostatAutomationEvent;
          }
        }

        else if (v244 == 7)
        {
          v394 = type metadata accessor for ThermostatAutomationFailureEvent();
          v245 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
          v246 = type metadata accessor for ThermostatAutomationFailureEvent;
        }

        else if (v244 == 8)
        {
          v394 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
          v245 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          v246 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
        }

        else
        {
          v394 = type metadata accessor for WindowEvent();
          v245 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
          v246 = type metadata accessor for WindowEvent;
        }
      }

      else if (v244 <= 1)
      {
        if (v244)
        {
          v394 = type metadata accessor for DoorEvent();
          v245 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
          v246 = type metadata accessor for DoorEvent;
        }

        else
        {
          v394 = type metadata accessor for ContactSensorEvent();
          v245 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
          v246 = type metadata accessor for ContactSensorEvent;
        }
      }

      else if (v244 == 2)
      {
        v394 = type metadata accessor for GarageDoorEvent();
        v245 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
        v246 = type metadata accessor for GarageDoorEvent;
      }

      else if (v244 == 3)
      {
        v394 = type metadata accessor for LockEvent();
        v245 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
        v246 = type metadata accessor for LockEvent;
      }

      else
      {
        v394 = type metadata accessor for SecuritySystemEvent();
        v245 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
        v246 = type metadata accessor for SecuritySystemEvent;
      }

      v259 = v246;
      v395 = v245;
      v260 = __swift_allocate_boxed_opaque_existential_1(&v393);
      sub_25417C178(v356, v260, v259);
      v261 = v394;
      v262 = v395;
      v263 = __swift_project_boxed_opaque_existential_1(&v393, v394);
      SessionEvent = v261;
      v392 = *(v262 + 16);
      v264 = __swift_allocate_boxed_opaque_existential_1(&v389);
      (*(*(v261 - 8) + 16))(v264, v263, v261);
      v257 = type metadata accessor for SomeAccessoryEvent;
      v258 = (&v386 + 8);
    }

    sub_25417C0B0(*(v258 - 32), v257);
    __swift_destroy_boxed_opaque_existential_1(&v393);
LABEL_182:
    v265 = SessionEvent;
    v266 = v392;
    v267 = __swift_project_boxed_opaque_existential_1(&v389, SessionEvent);
    v394 = v265;
    v380 = *(v266 + 8);
    v395 = v380;
    v268 = __swift_allocate_boxed_opaque_existential_1(&v393);
    v269 = *(*(v265 - 8) + 16);
    v379 = v268;
    v269(v268, v267, v265);
    __swift_destroy_boxed_opaque_existential_1(&v389);
    v270 = v381;
    sub_25417C0B0(v381 + v239, type metadata accessor for SomeEvent);
    v271 = sub_25424D948();
    v272 = *(v271 - 8);
    v378 = *(v272 + 8);
    v377 = v272 + 8;
    v378(v270, v271);
    v273 = v382;
    sub_254132DF4(v69, v382, &qword_27F5B8DD0, &qword_2542545A0);
    v274 = *(v241 + 48);
    sub_25417C110(v273 + v274, v384, type metadata accessor for SomeEvent);
    v275 = swift_getEnumCaseMultiPayload();
    if (v275)
    {
      if (v275 == 1)
      {
        DailyDigestEvent = type metadata accessor for HomeActivityStateEvent(0);
        v388 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
        v276 = __swift_allocate_boxed_opaque_existential_1(&v386);
        sub_25417C178(v384, v276, type metadata accessor for HomeActivityStateEvent);
        goto LABEL_212;
      }

      v281 = v361;
      sub_25417C178(v384, v361, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      sub_25417C110(v281, v362, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v282 = swift_getEnumCaseMultiPayload();
      if (v282)
      {
        if (v282 == 1)
        {
          DailyDigestEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
          v283 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
          v284 = type metadata accessor for EnergyKit.LoadSessionEvent;
        }

        else
        {
          DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
          v283 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
          v284 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
        }
      }

      else
      {
        DailyDigestEvent = type metadata accessor for EnergyKit.LoadEvent(0);
        v283 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
        v284 = type metadata accessor for EnergyKit.LoadEvent;
      }

      v285 = v284;
      v388 = v283;
      v286 = __swift_allocate_boxed_opaque_existential_1(&v386);
      sub_25417C178(v362, v286, v285);
      sub_25412DC4C(&v386, &v389);
      v287 = SessionEvent;
      v288 = v392;
      v289 = __swift_project_boxed_opaque_existential_1(&v389, SessionEvent);
      DailyDigestEvent = v287;
      v388 = *(v288 + 16);
      v290 = __swift_allocate_boxed_opaque_existential_1(&v386);
      (*(*(v287 - 8) + 16))(v290, v289, v287);
      v291 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      p_DailyDigestEvent = &v390;
    }

    else
    {
      v277 = v357;
      sub_25417C178(v384, v357, type metadata accessor for SomeAccessoryEvent);
      sub_25417C110(v277, v358, type metadata accessor for SomeAccessoryEvent);
      v278 = swift_getEnumCaseMultiPayload();
      if (v278 > 4)
      {
        if (v278 <= 6)
        {
          if (v278 == 5)
          {
            SessionEvent = type metadata accessor for SmokeDetectorEvent();
            v279 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
            v280 = type metadata accessor for SmokeDetectorEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for ThermostatAutomationEvent(0);
            v279 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
            v280 = type metadata accessor for ThermostatAutomationEvent;
          }
        }

        else if (v278 == 7)
        {
          SessionEvent = type metadata accessor for ThermostatAutomationFailureEvent();
          v279 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
          v280 = type metadata accessor for ThermostatAutomationFailureEvent;
        }

        else if (v278 == 8)
        {
          SessionEvent = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
          v279 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          v280 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for WindowEvent();
          v279 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
          v280 = type metadata accessor for WindowEvent;
        }
      }

      else if (v278 <= 1)
      {
        if (v278)
        {
          SessionEvent = type metadata accessor for DoorEvent();
          v279 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
          v280 = type metadata accessor for DoorEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for ContactSensorEvent();
          v279 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
          v280 = type metadata accessor for ContactSensorEvent;
        }
      }

      else if (v278 == 2)
      {
        SessionEvent = type metadata accessor for GarageDoorEvent();
        v279 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
        v280 = type metadata accessor for GarageDoorEvent;
      }

      else if (v278 == 3)
      {
        SessionEvent = type metadata accessor for LockEvent();
        v279 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
        v280 = type metadata accessor for LockEvent;
      }

      else
      {
        SessionEvent = type metadata accessor for SecuritySystemEvent();
        v279 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
        v280 = type metadata accessor for SecuritySystemEvent;
      }

      v293 = v280;
      v392 = v279;
      v294 = __swift_allocate_boxed_opaque_existential_1(&v389);
      sub_25417C178(v358, v294, v293);
      v296 = SessionEvent;
      v295 = v392;
      v297 = __swift_project_boxed_opaque_existential_1(&v389, SessionEvent);
      DailyDigestEvent = v296;
      v388 = *(v295 + 16);
      v298 = __swift_allocate_boxed_opaque_existential_1(&v386);
      (*(*(v296 - 8) + 16))(v298, v297, v296);
      v291 = type metadata accessor for SomeAccessoryEvent;
      p_DailyDigestEvent = &DailyDigestEvent;
    }

    sub_25417C0B0(*(p_DailyDigestEvent - 32), v291);
    __swift_destroy_boxed_opaque_existential_1(&v389);
LABEL_212:
    v300 = DailyDigestEvent;
    v299 = v388;
    v301 = __swift_project_boxed_opaque_existential_1(&v386, DailyDigestEvent);
    SessionEvent = v300;
    v392 = *(v299 + 8);
    v302 = v392;
    v303 = __swift_allocate_boxed_opaque_existential_1(&v389);
    (*(*(v300 - 8) + 16))(v303, v301, v300);
    __swift_destroy_boxed_opaque_existential_1(&v386);
    v304 = v382;
    sub_25417C0B0(v382 + v274, type metadata accessor for SomeEvent);
    v378(v304, v271);
    v305 = v368;
    (v380[4])(v265);
    v306 = v369;
    (*(v302 + 32))(v300, v302);
    if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
    {
      sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
      v307 = v373;
      v69 = v371;
      v308 = sub_25424DC58();
      v309 = v374;
    }

    else
    {
      v308 = sub_25424D828();
      v309 = v374;
      v69 = v371;
      v307 = v373;
    }

    v310 = *v370;
    v311 = v306;
    v312 = v372;
    (*v370)(v311, v372);
    v310(v305, v312);
    __swift_destroy_boxed_opaque_existential_1(&v389);
    __swift_destroy_boxed_opaque_existential_1(&v393);
    sub_254132E5C(v69, &qword_27F5B8DD0, &qword_2542545A0);
    result = sub_254132E5C(v307, &qword_27F5B8DD0, &qword_2542545A0);
    v95 = v307;
    if (v308)
    {
      break;
    }

    v87 = v309;
LABEL_150:
    v103 = v352 + 1;
    v233 = v342 + v328;
    v234 = v341 - 1;
    v235 = v340 + v328;
    v86 = v329;
    if (v352 + 1 != v329)
    {
      goto LABEL_151;
    }

    v88 = v327;
    if (v329 < v327)
    {
      goto LABEL_256;
    }

LABEL_98:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v85 = v331;
    }

    else
    {
      result = sub_25417A0A0(0, *(v331 + 2) + 1, 1, v331);
      v85 = result;
    }

    v184 = *(v85 + 2);
    v183 = *(v85 + 3);
    v95 = v184 + 1;
    if (v184 >= v183 >> 1)
    {
      result = sub_25417A0A0((v183 > 1), v184 + 1, 1, v85);
      v85 = result;
    }

    *(v85 + 2) = v95;
    v185 = &v85[16 * v184];
    *(v185 + 4) = v88;
    *(v185 + 5) = v86;
    v88 = *v325;
    if (!*v325)
    {
      goto LABEL_266;
    }

    v186 = v87;
    if (v184)
    {
      while (1)
      {
        v187 = v95 - 1;
        if (v95 >= 4)
        {
          break;
        }

        if (v95 == 3)
        {
          v188 = *(v85 + 4);
          v189 = *(v85 + 5);
          v198 = __OFSUB__(v189, v188);
          v190 = v189 - v188;
          v191 = v198;
LABEL_117:
          if (v191)
          {
            goto LABEL_245;
          }

          v204 = &v85[16 * v95];
          v206 = *v204;
          v205 = *(v204 + 1);
          v207 = __OFSUB__(v205, v206);
          v208 = v205 - v206;
          v209 = v207;
          if (v207)
          {
            goto LABEL_248;
          }

          v210 = &v85[16 * v187 + 32];
          v212 = *v210;
          v211 = *(v210 + 1);
          v198 = __OFSUB__(v211, v212);
          v213 = v211 - v212;
          if (v198)
          {
            goto LABEL_251;
          }

          if (__OFADD__(v208, v213))
          {
            goto LABEL_252;
          }

          if (v208 + v213 >= v190)
          {
            if (v190 < v213)
            {
              v187 = v95 - 2;
            }

            goto LABEL_138;
          }

          goto LABEL_131;
        }

        v214 = &v85[16 * v95];
        v216 = *v214;
        v215 = *(v214 + 1);
        v198 = __OFSUB__(v215, v216);
        v208 = v215 - v216;
        v209 = v198;
LABEL_131:
        if (v209)
        {
          goto LABEL_247;
        }

        v217 = &v85[16 * v187];
        v219 = *(v217 + 4);
        v218 = *(v217 + 5);
        v198 = __OFSUB__(v218, v219);
        v220 = v218 - v219;
        if (v198)
        {
          goto LABEL_250;
        }

        if (v220 < v208)
        {
          goto LABEL_3;
        }

LABEL_138:
        v225 = v187 - 1;
        if (v187 - 1 >= v95)
        {
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
          goto LABEL_259;
        }

        if (!*v346)
        {
          goto LABEL_263;
        }

        v226 = v85;
        v95 = *&v85[16 * v225 + 32];
        v227 = *&v85[16 * v187 + 40];
        v228 = v353;
        sub_254176EF4(*v346 + *(v345 + 72) * v95, *v346 + *(v345 + 72) * *&v85[16 * v187 + 32], *v346 + *(v345 + 72) * v227, v88);
        v353 = v228;
        if (v228)
        {
        }

        if (v227 < v95)
        {
          goto LABEL_241;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v229 = v226;
        }

        else
        {
          v229 = sub_254179EB8(v226);
        }

        v69 = v371;
        if (v225 >= *(v229 + 2))
        {
          goto LABEL_242;
        }

        v230 = &v229[16 * v225];
        *(v230 + 4) = v95;
        *(v230 + 5) = v227;
        v396 = v229;
        result = sub_254179E2C(v187);
        v85 = v396;
        v95 = *(v396 + 16);
        if (v95 <= 1)
        {
          goto LABEL_3;
        }
      }

      v192 = &v85[16 * v95 + 32];
      v193 = *(v192 - 64);
      v194 = *(v192 - 56);
      v198 = __OFSUB__(v194, v193);
      v195 = v194 - v193;
      if (v198)
      {
        goto LABEL_243;
      }

      v197 = *(v192 - 48);
      v196 = *(v192 - 40);
      v198 = __OFSUB__(v196, v197);
      v190 = v196 - v197;
      v191 = v198;
      if (v198)
      {
        goto LABEL_244;
      }

      v199 = &v85[16 * v95];
      v201 = *v199;
      v200 = *(v199 + 1);
      v198 = __OFSUB__(v200, v201);
      v202 = v200 - v201;
      if (v198)
      {
        goto LABEL_246;
      }

      v198 = __OFADD__(v190, v202);
      v203 = v190 + v202;
      if (v198)
      {
        goto LABEL_249;
      }

      if (v203 >= v195)
      {
        v221 = &v85[16 * v187 + 32];
        v223 = *v221;
        v222 = *(v221 + 1);
        v198 = __OFSUB__(v222, v223);
        v224 = v222 - v223;
        if (v198)
        {
          goto LABEL_253;
        }

        if (v190 < v224)
        {
          v187 = v95 - 2;
        }

        goto LABEL_138;
      }

      goto LABEL_117;
    }

LABEL_3:
    v84 = v346[1];
    v87 = v186;
    if (v86 >= v84)
    {
      goto LABEL_225;
    }
  }

  v313 = v376;
  if (v366)
  {
    v87 = v309;
    v314 = v375;
    v315 = v367;
    sub_25417E6C8(v375, v367, &qword_27F5B8DD0, &qword_2542545A0);
    swift_arrayInitWithTakeFrontToBack();
    sub_25417E6C8(v315, v237, &qword_27F5B8DD0, &qword_2542545A0);
    v237 += v365;
    v235 = v314 + v365;
    v316 = __CFADD__(v313, 1);
    v236 = v313 + 1;
    if (v316)
    {
      goto LABEL_150;
    }

    goto LABEL_152;
  }

  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
  return result;
}

uint64_t sub_254174304(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v245 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v8 = *(*(v245 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v245);
  v234 = &v225 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v233 = &v225 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v232 = &v225 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v231 = &v225 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v241 = (&v225 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v240 = &v225 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v239 = &v225 - v22;
  MEMORY[0x28223BE20](v21);
  v238 = &v225 - v23;
  v244 = type metadata accessor for SomeAccessoryEvent();
  v24 = *(*(v244 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v244);
  v230 = &v225 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v229 = &v225 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v228 = &v225 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v227 = &v225 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v225 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v237 = &v225 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v236 = &v225 - v39;
  MEMORY[0x28223BE20](v38);
  v235 = &v225 - v40;
  v257 = type metadata accessor for SomeEvent();
  v41 = *(*(v257 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v257);
  v252 = &v225 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v249 = &v225 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v225 - v47;
  MEMORY[0x28223BE20](v46);
  v247 = &v225 - v49;
  v251 = sub_25424D8B8();
  v255 = *(v251 - 8);
  v50 = *(v255 + 64);
  v51 = MEMORY[0x28223BE20](v251);
  v242 = &v225 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v248 = &v225 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v246 = &v225 - v56;
  MEMORY[0x28223BE20](v55);
  v253 = &v225 - v57;
  v258 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v58 = *(*(v258 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v258);
  v226 = &v225 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v63 = &v225 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v66 = &v225 - v65;
  result = MEMORY[0x28223BE20](v64);
  v69 = &v225 - v68;
  v250 = *(v70 + 72);
  if (!v250)
  {
    __break(1u);
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  if (a2 - a1 == 0x8000000000000000 && v250 == -1)
  {
    goto LABEL_185;
  }

  v71 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v250 != -1)
  {
    v72 = (a2 - a1) / v250;
    v269 = a1;
    v268 = a4;
    if (v72 < v71 / v250)
    {
      v249 = v48;
      v234 = v35;
      v73 = v72 * v250;
      if (a4 < a1 || a1 + v73 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v248 = (a4 + v73);
      v267 = a4 + v73;
      if (v73 >= 1 && a2 < a3)
      {
        v242 = (v255 + 8);
        v252 = v66;
        v243 = a3;
        while (1)
        {
          sub_25417C110(a2, v69, type metadata accessor for EventQuery.FetchedRecordInfo);
          sub_25417C110(a4, v66, type metadata accessor for EventQuery.FetchedRecordInfo);
          v78 = v247;
          sub_25417C110(&v69[*(v258 + 20)], v247, type metadata accessor for SomeEvent);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v255 = a4;
          v256 = a2;
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
              v262 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v259);
              sub_25417C178(v78, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
              goto LABEL_49;
            }

            v86 = v78;
            v87 = v238;
            sub_25417C178(v86, v238, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            sub_25417C110(v87, v239, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            v88 = swift_getEnumCaseMultiPayload();
            if (v88)
            {
              if (v88 == 1)
              {
                SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
                v89 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
                v90 = type metadata accessor for EnergyKit.LoadSessionEvent;
              }

              else
              {
                SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
                v89 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
                v90 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
              }
            }

            else
            {
              SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
              v89 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
              v90 = type metadata accessor for EnergyKit.LoadEvent;
            }

            v91 = v90;
            v262 = v89;
            v92 = __swift_allocate_boxed_opaque_existential_1(&v259);
            sub_25417C178(v239, v92, v91);
            sub_25412DC4C(&v259, &v263);
            v93 = v265;
            v94 = v266;
            v95 = __swift_project_boxed_opaque_existential_1(&v263, v265);
            SessionEvent = v93;
            v262 = *(v94 + 16);
            v96 = __swift_allocate_boxed_opaque_existential_1(&v259);
            (*(*(v93 - 8) + 16))(v96, v95, v93);
            v97 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
            v98 = &v268;
          }

          else
          {
            v81 = v78;
            v82 = v235;
            sub_25417C178(v81, v235, type metadata accessor for SomeAccessoryEvent);
            sub_25417C110(v82, v236, type metadata accessor for SomeAccessoryEvent);
            v83 = swift_getEnumCaseMultiPayload();
            if (v83 > 4)
            {
              if (v83 <= 6)
              {
                if (v83 == 5)
                {
                  v265 = type metadata accessor for SmokeDetectorEvent();
                  v84 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
                  v85 = type metadata accessor for SmokeDetectorEvent;
                }

                else
                {
                  v265 = type metadata accessor for ThermostatAutomationEvent(0);
                  v84 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
                  v85 = type metadata accessor for ThermostatAutomationEvent;
                }
              }

              else if (v83 == 7)
              {
                v265 = type metadata accessor for ThermostatAutomationFailureEvent();
                v84 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
                v85 = type metadata accessor for ThermostatAutomationFailureEvent;
              }

              else if (v83 == 8)
              {
                v265 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
                v84 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
                v85 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
              }

              else
              {
                v265 = type metadata accessor for WindowEvent();
                v84 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
                v85 = type metadata accessor for WindowEvent;
              }
            }

            else if (v83 <= 1)
            {
              if (v83)
              {
                v265 = type metadata accessor for DoorEvent();
                v84 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
                v85 = type metadata accessor for DoorEvent;
              }

              else
              {
                v265 = type metadata accessor for ContactSensorEvent();
                v84 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
                v85 = type metadata accessor for ContactSensorEvent;
              }
            }

            else if (v83 == 2)
            {
              v265 = type metadata accessor for GarageDoorEvent();
              v84 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
              v85 = type metadata accessor for GarageDoorEvent;
            }

            else if (v83 == 3)
            {
              v265 = type metadata accessor for LockEvent();
              v84 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
              v85 = type metadata accessor for LockEvent;
            }

            else
            {
              v265 = type metadata accessor for SecuritySystemEvent();
              v84 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
              v85 = type metadata accessor for SecuritySystemEvent;
            }

            v99 = v85;
            v266 = v84;
            v100 = __swift_allocate_boxed_opaque_existential_1(&v263);
            sub_25417C178(v236, v100, v99);
            v101 = v265;
            v102 = v266;
            v103 = __swift_project_boxed_opaque_existential_1(&v263, v265);
            SessionEvent = v101;
            v262 = *(v102 + 16);
            v104 = __swift_allocate_boxed_opaque_existential_1(&v259);
            (*(*(v101 - 8) + 16))(v104, v103, v101);
            v97 = type metadata accessor for SomeAccessoryEvent;
            v98 = &v265;
          }

          sub_25417C0B0(*(v98 - 32), v97);
          __swift_destroy_boxed_opaque_existential_1(&v263);
LABEL_49:
          v106 = SessionEvent;
          v105 = v262;
          __swift_project_boxed_opaque_existential_1(&v259, SessionEvent);
          v265 = v106;
          v266 = *(v105 + 8);
          v107 = v266;
          __swift_allocate_boxed_opaque_existential_1(&v263);
          (*(*(v106 - 8) + 16))();
          __swift_destroy_boxed_opaque_existential_1(&v259);
          (*(v107 + 32))(v106, v107);
          __swift_destroy_boxed_opaque_existential_1(&v263);
          v108 = v249;
          sub_25417C110(&v66[*(v258 + 20)], v249, type metadata accessor for SomeEvent);
          v109 = swift_getEnumCaseMultiPayload();
          if (v109)
          {
            if (v109 != 1)
            {
              v118 = v108;
              v119 = v240;
              sub_25417C178(v118, v240, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
              sub_25417C110(v119, v241, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
              v120 = swift_getEnumCaseMultiPayload();
              if (v120)
              {
                v121 = v246;
                if (v120 == 1)
                {
                  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
                  v123 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
                  v124 = type metadata accessor for EnergyKit.LoadSessionEvent;
                }

                else
                {
                  SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
                  v123 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
                  v124 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
                }

                v122 = v124;
              }

              else
              {
                SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
                v123 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
                v122 = type metadata accessor for EnergyKit.LoadEvent;
                v121 = v246;
              }

              v262 = v123;
              v125 = __swift_allocate_boxed_opaque_existential_1(&v259);
              sub_25417C178(v241, v125, v122);
              sub_25412DC4C(&v259, &v263);
              v126 = v265;
              v127 = v266;
              v128 = __swift_project_boxed_opaque_existential_1(&v263, v265);
              SessionEvent = v126;
              v262 = *(v127 + 16);
              v129 = __swift_allocate_boxed_opaque_existential_1(&v259);
              (*(*(v126 - 8) + 16))(v129, v128, v126);
              sub_25417C0B0(v240, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
              __swift_destroy_boxed_opaque_existential_1(&v263);
              goto LABEL_80;
            }

            SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
            v262 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
            v110 = __swift_allocate_boxed_opaque_existential_1(&v259);
            sub_25417C178(v108, v110, type metadata accessor for HomeActivityStateEvent);
          }

          else
          {
            v111 = v108;
            v112 = v237;
            sub_25417C178(v111, v237, type metadata accessor for SomeAccessoryEvent);
            v113 = v112;
            v114 = v234;
            sub_25417C110(v113, v234, type metadata accessor for SomeAccessoryEvent);
            v115 = swift_getEnumCaseMultiPayload();
            if (v115 > 4)
            {
              if (v115 <= 6)
              {
                if (v115 == 5)
                {
                  v265 = type metadata accessor for SmokeDetectorEvent();
                  v116 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
                  v117 = type metadata accessor for SmokeDetectorEvent;
                }

                else
                {
                  v265 = type metadata accessor for ThermostatAutomationEvent(0);
                  v116 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
                  v117 = type metadata accessor for ThermostatAutomationEvent;
                }
              }

              else if (v115 == 7)
              {
                v265 = type metadata accessor for ThermostatAutomationFailureEvent();
                v116 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
                v117 = type metadata accessor for ThermostatAutomationFailureEvent;
              }

              else if (v115 == 8)
              {
                v265 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
                v116 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
                v117 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
              }

              else
              {
                v265 = type metadata accessor for WindowEvent();
                v116 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
                v117 = type metadata accessor for WindowEvent;
              }
            }

            else if (v115 <= 1)
            {
              if (v115)
              {
                v265 = type metadata accessor for DoorEvent();
                v116 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
                v117 = type metadata accessor for DoorEvent;
              }

              else
              {
                v265 = type metadata accessor for ContactSensorEvent();
                v116 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
                v117 = type metadata accessor for ContactSensorEvent;
              }
            }

            else if (v115 == 2)
            {
              v265 = type metadata accessor for GarageDoorEvent();
              v116 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
              v117 = type metadata accessor for GarageDoorEvent;
            }

            else if (v115 == 3)
            {
              v265 = type metadata accessor for LockEvent();
              v116 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
              v117 = type metadata accessor for LockEvent;
            }

            else
            {
              v265 = type metadata accessor for SecuritySystemEvent();
              v116 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
              v117 = type metadata accessor for SecuritySystemEvent;
            }

            v130 = v117;
            v266 = v116;
            v131 = __swift_allocate_boxed_opaque_existential_1(&v263);
            sub_25417C178(v114, v131, v130);
            v132 = v265;
            v133 = v266;
            v134 = __swift_project_boxed_opaque_existential_1(&v263, v265);
            SessionEvent = v132;
            v262 = *(v133 + 16);
            v135 = __swift_allocate_boxed_opaque_existential_1(&v259);
            (*(*(v132 - 8) + 16))(v135, v134, v132);
            sub_25417C0B0(v237, type metadata accessor for SomeAccessoryEvent);
            __swift_destroy_boxed_opaque_existential_1(&v263);
          }

          v121 = v246;
LABEL_80:
          v254 = a1;
          v136 = SessionEvent;
          v137 = v262;
          v138 = __swift_project_boxed_opaque_existential_1(&v259, SessionEvent);
          v265 = v136;
          v139 = *(v137 + 8);
          v266 = v139;
          v140 = __swift_allocate_boxed_opaque_existential_1(&v263);
          (*(*(v136 - 8) + 16))(v140, v138, v136);
          __swift_destroy_boxed_opaque_existential_1(&v259);
          (*(v139 + 32))(v136, v139);
          __swift_destroy_boxed_opaque_existential_1(&v263);
          v141 = v253;
          if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
          {
            sub_25424D948();
            sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
            v142 = v252;
            v143 = sub_25424DC58();
            v144 = v255;
            v145 = v256;
          }

          else
          {
            v143 = sub_25424D828();
            v144 = v255;
            v145 = v256;
            v142 = v252;
          }

          v146 = *v242;
          v147 = v121;
          v148 = v251;
          (*v242)(v147, v251);
          v146(v141, v148);
          sub_25417C0B0(v142, type metadata accessor for EventQuery.FetchedRecordInfo);
          sub_25417C0B0(v69, type metadata accessor for EventQuery.FetchedRecordInfo);
          if (v143)
          {
            v149 = v250;
            v150 = v145;
            a2 = v145 + v250;
            v151 = v254;
            v152 = v243;
            if (v254 < v145 || v254 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              v66 = v252;
              a4 = v144;
            }

            else
            {
              v66 = v252;
              a4 = v144;
              if (v254 != v150)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }
          }

          else
          {
            v149 = v250;
            v153 = v144 + v250;
            v151 = v254;
            v152 = v243;
            a2 = v145;
            if (v254 < v144 || v254 >= v153)
            {
              swift_arrayInitWithTakeFrontToBack();
              v66 = v252;
            }

            else
            {
              v66 = v252;
              if (v254 != v144)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v268 = v153;
            a4 = v144 + v149;
          }

          a1 = v151 + v149;
          v269 = a1;
          if (a4 >= v248 || a2 >= v152)
          {
            goto LABEL_183;
          }
        }
      }

      goto LABEL_183;
    }

    v74 = a3;
    v75 = v71 / v250 * v250;
    if (a4 < a2 || a2 + v75 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v76 = v242;
      v77 = v63;
    }

    else
    {
      v76 = v242;
      v77 = v63;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v256 = a2;
    v154 = a4 + v75;
    if (v75 < 1)
    {
LABEL_182:
      v269 = v256;
      v267 = v154;
LABEL_183:
      sub_254179ECC(&v269, &v268, &v267);
      return 1;
    }

    v155 = -v250;
    v241 = (v255 + 8);
    v156 = a4 + v75;
    v254 = a1;
    v255 = a4;
    v250 = -v250;
LABEL_101:
    v239 = v154;
    v157 = v256;
    v256 += v155;
    v158 = v226;
    v243 = v157;
    while (1)
    {
      if (v157 <= a1)
      {
        v269 = v157;
        v267 = v239;
        goto LABEL_183;
      }

      v246 = v74;
      v253 = (v156 + v155);
      sub_25417C110(v156 + v155, v77, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C110(v256, v158, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C110(v77 + *(v258 + 20), v249, type metadata accessor for SomeEvent);
      v159 = swift_getEnumCaseMultiPayload();
      v247 = v156;
      if (v159)
      {
        if (v159 == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v262 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          v160 = __swift_allocate_boxed_opaque_existential_1(&v259);
          sub_25417C178(v249, v160, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_136;
        }

        v165 = v231;
        sub_25417C178(v249, v231, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v165, v232, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v166 = swift_getEnumCaseMultiPayload();
        if (v166)
        {
          if (v166 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v167 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v168 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v167 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v168 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v167 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v168 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v169 = v168;
        v262 = v167;
        v170 = __swift_allocate_boxed_opaque_existential_1(&v259);
        sub_25417C178(v232, v170, v169);
        sub_25412DC4C(&v259, &v263);
        v171 = v265;
        v172 = v266;
        v173 = __swift_project_boxed_opaque_existential_1(&v263, v265);
        SessionEvent = v171;
        v262 = *(v172 + 16);
        v174 = __swift_allocate_boxed_opaque_existential_1(&v259);
        (*(*(v171 - 8) + 16))(v174, v173, v171);
        v175 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v176 = &v262;
      }

      else
      {
        v161 = v227;
        sub_25417C178(v249, v227, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v161, v228, type metadata accessor for SomeAccessoryEvent);
        v162 = swift_getEnumCaseMultiPayload();
        if (v162 > 4)
        {
          if (v162 <= 6)
          {
            if (v162 == 5)
            {
              v265 = type metadata accessor for SmokeDetectorEvent();
              v163 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v164 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v265 = type metadata accessor for ThermostatAutomationEvent(0);
              v163 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v164 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v162 == 7)
          {
            v265 = type metadata accessor for ThermostatAutomationFailureEvent();
            v163 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v164 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v162 == 8)
          {
            v265 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v163 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v164 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v265 = type metadata accessor for WindowEvent();
            v163 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v164 = type metadata accessor for WindowEvent;
          }
        }

        else if (v162 <= 1)
        {
          if (v162)
          {
            v265 = type metadata accessor for DoorEvent();
            v163 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v164 = type metadata accessor for DoorEvent;
          }

          else
          {
            v265 = type metadata accessor for ContactSensorEvent();
            v163 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v164 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v162 == 2)
        {
          v265 = type metadata accessor for GarageDoorEvent();
          v163 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v164 = type metadata accessor for GarageDoorEvent;
        }

        else if (v162 == 3)
        {
          v265 = type metadata accessor for LockEvent();
          v163 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v164 = type metadata accessor for LockEvent;
        }

        else
        {
          v265 = type metadata accessor for SecuritySystemEvent();
          v163 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v164 = type metadata accessor for SecuritySystemEvent;
        }

        v177 = v164;
        v266 = v163;
        v178 = __swift_allocate_boxed_opaque_existential_1(&v263);
        sub_25417C178(v228, v178, v177);
        v179 = v265;
        v180 = v266;
        v181 = __swift_project_boxed_opaque_existential_1(&v263, v265);
        SessionEvent = v179;
        v262 = *(v180 + 16);
        v182 = __swift_allocate_boxed_opaque_existential_1(&v259);
        (*(*(v179 - 8) + 16))(v182, v181, v179);
        v175 = type metadata accessor for SomeAccessoryEvent;
        v176 = &v259;
      }

      sub_25417C0B0(*(v176 - 32), v175);
      __swift_destroy_boxed_opaque_existential_1(&v263);
LABEL_136:
      v184 = SessionEvent;
      v183 = v262;
      __swift_project_boxed_opaque_existential_1(&v259, SessionEvent);
      v265 = v184;
      v266 = *(v183 + 8);
      v185 = v266;
      __swift_allocate_boxed_opaque_existential_1(&v263);
      (*(*(v184 - 8) + 16))();
      __swift_destroy_boxed_opaque_existential_1(&v259);
      (*(v185 + 32))(v184, v185);
      __swift_destroy_boxed_opaque_existential_1(&v263);
      sub_25417C110(v158 + *(v258 + 20), v252, type metadata accessor for SomeEvent);
      v186 = swift_getEnumCaseMultiPayload();
      if (v186)
      {
        if (v186 == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v262 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          v187 = __swift_allocate_boxed_opaque_existential_1(&v259);
          sub_25417C178(v252, v187, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_166;
        }

        v192 = v233;
        sub_25417C178(v252, v233, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v192, v234, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v193 = swift_getEnumCaseMultiPayload();
        if (v193)
        {
          if (v193 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v194 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v195 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v194 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v195 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v194 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v195 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v196 = v195;
        v262 = v194;
        v197 = __swift_allocate_boxed_opaque_existential_1(&v259);
        sub_25417C178(v234, v197, v196);
        sub_25412DC4C(&v259, &v263);
        v198 = v265;
        v199 = v266;
        v200 = __swift_project_boxed_opaque_existential_1(&v263, v265);
        SessionEvent = v198;
        v262 = *(v199 + 16);
        v201 = __swift_allocate_boxed_opaque_existential_1(&v259);
        (*(*(v198 - 8) + 16))(v201, v200, v198);
        v202 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v203 = &v264;
      }

      else
      {
        v188 = v229;
        sub_25417C178(v252, v229, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v188, v230, type metadata accessor for SomeAccessoryEvent);
        v189 = swift_getEnumCaseMultiPayload();
        if (v189 > 4)
        {
          if (v189 <= 6)
          {
            if (v189 == 5)
            {
              v265 = type metadata accessor for SmokeDetectorEvent();
              v190 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v191 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v265 = type metadata accessor for ThermostatAutomationEvent(0);
              v190 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v191 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v189 == 7)
          {
            v265 = type metadata accessor for ThermostatAutomationFailureEvent();
            v190 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v191 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v189 == 8)
          {
            v265 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v190 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v191 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v265 = type metadata accessor for WindowEvent();
            v190 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v191 = type metadata accessor for WindowEvent;
          }
        }

        else if (v189 <= 1)
        {
          if (v189)
          {
            v265 = type metadata accessor for DoorEvent();
            v190 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v191 = type metadata accessor for DoorEvent;
          }

          else
          {
            v265 = type metadata accessor for ContactSensorEvent();
            v190 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v191 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v189 == 2)
        {
          v265 = type metadata accessor for GarageDoorEvent();
          v190 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v191 = type metadata accessor for GarageDoorEvent;
        }

        else if (v189 == 3)
        {
          v265 = type metadata accessor for LockEvent();
          v190 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v191 = type metadata accessor for LockEvent;
        }

        else
        {
          v265 = type metadata accessor for SecuritySystemEvent();
          v190 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v191 = type metadata accessor for SecuritySystemEvent;
        }

        v204 = v191;
        v266 = v190;
        v205 = __swift_allocate_boxed_opaque_existential_1(&v263);
        sub_25417C178(v230, v205, v204);
        v206 = v265;
        v207 = v266;
        v208 = __swift_project_boxed_opaque_existential_1(&v263, v265);
        SessionEvent = v206;
        v262 = *(v207 + 16);
        v209 = __swift_allocate_boxed_opaque_existential_1(&v259);
        (*(*(v206 - 8) + 16))(v209, v208, v206);
        v202 = type metadata accessor for SomeAccessoryEvent;
        v203 = &v260;
      }

      sub_25417C0B0(*(v203 - 32), v202);
      __swift_destroy_boxed_opaque_existential_1(&v263);
LABEL_166:
      v240 = v154;
      v210 = SessionEvent;
      v211 = v262;
      v212 = __swift_project_boxed_opaque_existential_1(&v259, SessionEvent);
      v265 = v210;
      v213 = *(v211 + 8);
      v266 = v213;
      v214 = __swift_allocate_boxed_opaque_existential_1(&v263);
      (*(*(v210 - 8) + 16))(v214, v212, v210);
      __swift_destroy_boxed_opaque_existential_1(&v259);
      (*(v213 + 32))(v210, v213);
      __swift_destroy_boxed_opaque_existential_1(&v263);
      v215 = v248;
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25424D948();
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
        v216 = sub_25424DC58();
      }

      else
      {
        v216 = sub_25424D828();
      }

      v217 = v216;
      v218 = v246;
      v74 = &v246[v250];
      v219 = *v241;
      v220 = v76;
      v221 = v251;
      (*v241)(v220, v251);
      v219(v215, v221);
      sub_25417C0B0(v158, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C0B0(v77, type metadata accessor for EventQuery.FetchedRecordInfo);
      if (v217)
      {
        v224 = v255;
        v156 = v247;
        if (v218 < v243 || v74 >= v243)
        {
          swift_arrayInitWithTakeFrontToBack();
          v76 = v242;
          v154 = v240;
          a1 = v254;
        }

        else
        {
          v223 = v218 == v243;
          v76 = v242;
          v154 = v240;
          a1 = v254;
          if (!v223)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v155 = v250;
        if (v156 <= v224)
        {
          goto LABEL_182;
        }

        goto LABEL_101;
      }

      v154 = v253;
      v222 = v255;
      v157 = v243;
      if (v218 < v247 || v74 >= v247)
      {
        swift_arrayInitWithTakeFrontToBack();
        v76 = v242;
        a1 = v254;
      }

      else
      {
        v223 = v218 == v247;
        v76 = v242;
        a1 = v254;
        if (!v223)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v156 = v154;
      v155 = v250;
      if (v253 <= v222)
      {
        v256 = v157;
        goto LABEL_182;
      }
    }
  }

LABEL_186:
  __break(1u);
  return result;
}

uint64_t sub_254176EF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v285 = sub_25424D8B8();
  v291 = *(v285 - 8);
  v8 = *(v291 + 64);
  v9 = MEMORY[0x28223BE20](v285);
  v11 = &v257[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v257[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v257[-v16];
  MEMORY[0x28223BE20](v15);
  v281 = &v257[-v18];
  v280 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v19 = *(*(v280 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v280);
  v265 = &v257[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v264 = &v257[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v263 = &v257[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v262 = &v257[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v273 = &v257[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v272 = &v257[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v271 = &v257[-v33];
  MEMORY[0x28223BE20](v32);
  v270 = &v257[-v34];
  v279 = type metadata accessor for SomeAccessoryEvent();
  v35 = *(*(v279 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v279);
  v261 = &v257[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v36);
  v260 = &v257[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v259 = &v257[-v41];
  v42 = MEMORY[0x28223BE20](v40);
  v258 = &v257[-v43];
  v44 = MEMORY[0x28223BE20](v42);
  v269 = &v257[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v268 = &v257[-v47];
  v48 = MEMORY[0x28223BE20](v46);
  v267 = &v257[-v49];
  MEMORY[0x28223BE20](v48);
  v266 = &v257[-v50];
  v293 = type metadata accessor for SomeEvent();
  v51 = *(*(v293 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v293);
  v275 = &v257[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = MEMORY[0x28223BE20](v52);
  v287 = &v257[-v55];
  v56 = MEMORY[0x28223BE20](v54);
  v278 = &v257[-v57];
  MEMORY[0x28223BE20](v56);
  v289 = &v257[-v58];
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  v59 = *(*(v295 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v295);
  v286 = &v257[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = MEMORY[0x28223BE20](v60);
  v283 = &v257[-v63];
  v64 = MEMORY[0x28223BE20](v62);
  v276 = &v257[-v65];
  v66 = MEMORY[0x28223BE20](v64);
  v277 = &v257[-v67];
  v68 = MEMORY[0x28223BE20](v66);
  v288 = &v257[-v69];
  v70 = MEMORY[0x28223BE20](v68);
  v72 = &v257[-v71];
  v73 = MEMORY[0x28223BE20](v70);
  v290 = &v257[-v74];
  result = MEMORY[0x28223BE20](v73);
  v282 = &v257[-v76];
  v284 = *(v77 + 72);
  if (!v284)
  {
    __break(1u);
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  v294 = a2;
  if (a2 - a1 == 0x8000000000000000 && v284 == -1)
  {
    goto LABEL_185;
  }

  v78 = a3 - v294;
  if (a3 - v294 != 0x8000000000000000 || v284 != -1)
  {
    v79 = (a2 - a1) / v284;
    v308 = a1;
    v307 = a4;
    if (v79 < v78 / v284)
    {
      v80 = v79 * v284;
      if (a4 < a1 || a1 + v80 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        v81 = v290;
        v82 = v282;
        v83 = v72;
      }

      else
      {
        v81 = v290;
        v82 = v282;
        v83 = v72;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v283 = (a4 + v80);
      v306 = (a4 + v80);
      v86 = v294;
      if (v80 >= 1 && v294 < a3)
      {
        v275 = (v291 + 8);
        v274 = a3;
        v277 = v17;
        v276 = v83;
        while (1)
        {
          sub_254132DF4(v86, v82, &qword_27F5B8DD0, &qword_2542545A0);
          sub_254132DF4(a4, v81, &qword_27F5B8DD0, &qword_2542545A0);
          sub_254132DF4(v82, v83, &qword_27F5B8DD0, &qword_2542545A0);
          v87 = *(v295 + 48);
          sub_25417C110(v83 + v87, v289, type metadata accessor for SomeEvent);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v294 = v86;
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v89 = a4;
              SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
              v302 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v300);
              sub_25417C178(v289, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
              goto LABEL_49;
            }

            v95 = v270;
            sub_25417C178(v289, v270, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            sub_25417C110(v95, v271, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            v96 = swift_getEnumCaseMultiPayload();
            v89 = a4;
            if (v96)
            {
              if (v96 == 1)
              {
                SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
                v97 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
                v98 = type metadata accessor for EnergyKit.LoadSessionEvent;
              }

              else
              {
                SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
                v97 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
                v98 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
              }
            }

            else
            {
              SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
              v97 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
              v98 = type metadata accessor for EnergyKit.LoadEvent;
            }

            v99 = v98;
            v302 = v97;
            v100 = __swift_allocate_boxed_opaque_existential_1(&v300);
            sub_25417C178(v271, v100, v99);
            sub_25412DC4C(&v300, &v303);
            v101 = v304;
            v102 = v305;
            v103 = __swift_project_boxed_opaque_existential_1(&v303, v304);
            SessionEvent = v101;
            v302 = *(v102 + 16);
            v104 = __swift_allocate_boxed_opaque_existential_1(&v300);
            (*(*(v101 - 8) + 16))(v104, v103, v101);
            v105 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
            v106 = &v300 + 8;
          }

          else
          {
            v91 = v266;
            sub_25417C178(v289, v266, type metadata accessor for SomeAccessoryEvent);
            sub_25417C110(v91, v267, type metadata accessor for SomeAccessoryEvent);
            v92 = swift_getEnumCaseMultiPayload();
            v89 = a4;
            if (v92 > 4)
            {
              if (v92 <= 6)
              {
                if (v92 == 5)
                {
                  v304 = type metadata accessor for SmokeDetectorEvent();
                  v93 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
                  v94 = type metadata accessor for SmokeDetectorEvent;
                }

                else
                {
                  v304 = type metadata accessor for ThermostatAutomationEvent(0);
                  v93 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
                  v94 = type metadata accessor for ThermostatAutomationEvent;
                }
              }

              else if (v92 == 7)
              {
                v304 = type metadata accessor for ThermostatAutomationFailureEvent();
                v93 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
                v94 = type metadata accessor for ThermostatAutomationFailureEvent;
              }

              else if (v92 == 8)
              {
                v304 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
                v93 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
                v94 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
              }

              else
              {
                v304 = type metadata accessor for WindowEvent();
                v93 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
                v94 = type metadata accessor for WindowEvent;
              }
            }

            else if (v92 <= 1)
            {
              if (v92)
              {
                v304 = type metadata accessor for DoorEvent();
                v93 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
                v94 = type metadata accessor for DoorEvent;
              }

              else
              {
                v304 = type metadata accessor for ContactSensorEvent();
                v93 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
                v94 = type metadata accessor for ContactSensorEvent;
              }
            }

            else if (v92 == 2)
            {
              v304 = type metadata accessor for GarageDoorEvent();
              v93 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
              v94 = type metadata accessor for GarageDoorEvent;
            }

            else if (v92 == 3)
            {
              v304 = type metadata accessor for LockEvent();
              v93 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
              v94 = type metadata accessor for LockEvent;
            }

            else
            {
              v304 = type metadata accessor for SecuritySystemEvent();
              v93 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
              v94 = type metadata accessor for SecuritySystemEvent;
            }

            v107 = v94;
            v305 = v93;
            v108 = __swift_allocate_boxed_opaque_existential_1(&v303);
            sub_25417C178(v267, v108, v107);
            v109 = v304;
            v110 = v305;
            v111 = __swift_project_boxed_opaque_existential_1(&v303, v304);
            SessionEvent = v109;
            v302 = *(v110 + 16);
            v112 = __swift_allocate_boxed_opaque_existential_1(&v300);
            (*(*(v109 - 8) + 16))(v112, v111, v109);
            v105 = type metadata accessor for SomeAccessoryEvent;
            v106 = &v297;
          }

          sub_25417C0B0(*(v106 - 32), v105);
          __swift_destroy_boxed_opaque_existential_1(&v303);
LABEL_49:
          v114 = SessionEvent;
          v113 = v302;
          v115 = __swift_project_boxed_opaque_existential_1(&v300, SessionEvent);
          v304 = v114;
          v116 = *(v113 + 8);
          v305 = v116;
          v117 = __swift_allocate_boxed_opaque_existential_1(&v303);
          v118 = *(*(v114 - 8) + 16);
          v287 = v117;
          v118(v117, v115, v114);
          __swift_destroy_boxed_opaque_existential_1(&v300);
          sub_25417C0B0(v83 + v87, type metadata accessor for SomeEvent);
          v119 = sub_25424D948();
          v120 = v83;
          v121 = v119;
          v122 = *(*(v119 - 8) + 8);
          v122(v120, v119);
          v123 = v288;
          sub_254132DF4(v290, v288, &qword_27F5B8DD0, &qword_2542545A0);
          v124 = *(v295 + 48);
          v125 = &v123[v124];
          v126 = v278;
          sub_25417C110(v125, v278, type metadata accessor for SomeEvent);
          v127 = swift_getEnumCaseMultiPayload();
          v292 = a1;
          v291 = v89;
          v286 = v122;
          if (!v127)
          {
            v129 = v126;
            v130 = v268;
            sub_25417C178(v129, v268, type metadata accessor for SomeAccessoryEvent);
            sub_25417C110(v130, v269, type metadata accessor for SomeAccessoryEvent);
            v131 = swift_getEnumCaseMultiPayload();
            if (v131 > 4)
            {
              if (v131 <= 6)
              {
                if (v131 == 5)
                {
                  SessionEvent = type metadata accessor for SmokeDetectorEvent();
                  v132 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
                  v133 = type metadata accessor for SmokeDetectorEvent;
                }

                else
                {
                  SessionEvent = type metadata accessor for ThermostatAutomationEvent(0);
                  v132 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
                  v133 = type metadata accessor for ThermostatAutomationEvent;
                }
              }

              else if (v131 == 7)
              {
                SessionEvent = type metadata accessor for ThermostatAutomationFailureEvent();
                v132 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
                v133 = type metadata accessor for ThermostatAutomationFailureEvent;
              }

              else if (v131 == 8)
              {
                SessionEvent = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
                v132 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
                v133 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
              }

              else
              {
                SessionEvent = type metadata accessor for WindowEvent();
                v132 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
                v133 = type metadata accessor for WindowEvent;
              }
            }

            else if (v131 <= 1)
            {
              if (v131)
              {
                SessionEvent = type metadata accessor for DoorEvent();
                v132 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
                v133 = type metadata accessor for DoorEvent;
              }

              else
              {
                SessionEvent = type metadata accessor for ContactSensorEvent();
                v132 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
                v133 = type metadata accessor for ContactSensorEvent;
              }
            }

            else if (v131 == 2)
            {
              SessionEvent = type metadata accessor for GarageDoorEvent();
              v132 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
              v133 = type metadata accessor for GarageDoorEvent;
            }

            else if (v131 == 3)
            {
              SessionEvent = type metadata accessor for LockEvent();
              v132 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
              v133 = type metadata accessor for LockEvent;
            }

            else
            {
              SessionEvent = type metadata accessor for SecuritySystemEvent();
              v132 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
              v133 = type metadata accessor for SecuritySystemEvent;
            }

            v147 = v133;
            v302 = v132;
            v148 = __swift_allocate_boxed_opaque_existential_1(&v300);
            sub_25417C178(v269, v148, v147);
            v150 = SessionEvent;
            v149 = v302;
            v151 = __swift_project_boxed_opaque_existential_1(&v300, SessionEvent);
            DailyDigestEvent = v150;
            v299 = *(v149 + 16);
            v152 = __swift_allocate_boxed_opaque_existential_1(&v296);
            (*(*(v150 - 8) + 16))(v152, v151, v150);
            v145 = type metadata accessor for SomeAccessoryEvent;
            p_SessionEvent = &v299;
            goto LABEL_78;
          }

          if (v127 != 1)
          {
            v134 = v126;
            v135 = v272;
            sub_25417C178(v134, v272, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            sub_25417C110(v135, v273, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            v136 = swift_getEnumCaseMultiPayload();
            if (v136)
            {
              if (v136 == 1)
              {
                DailyDigestEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
                v137 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
                v138 = type metadata accessor for EnergyKit.LoadSessionEvent;
              }

              else
              {
                DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
                v137 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
                v138 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
              }
            }

            else
            {
              DailyDigestEvent = type metadata accessor for EnergyKit.LoadEvent(0);
              v137 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
              v138 = type metadata accessor for EnergyKit.LoadEvent;
            }

            v139 = v138;
            v299 = v137;
            v140 = __swift_allocate_boxed_opaque_existential_1(&v296);
            sub_25417C178(v273, v140, v139);
            sub_25412DC4C(&v296, &v300);
            v141 = SessionEvent;
            v142 = v302;
            v143 = __swift_project_boxed_opaque_existential_1(&v300, SessionEvent);
            DailyDigestEvent = v141;
            v299 = *(v142 + 16);
            v144 = __swift_allocate_boxed_opaque_existential_1(&v296);
            (*(*(v141 - 8) + 16))(v144, v143, v141);
            v145 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
            p_SessionEvent = &SessionEvent;
LABEL_78:
            sub_25417C0B0(*(p_SessionEvent - 32), v145);
            __swift_destroy_boxed_opaque_existential_1(&v300);
            goto LABEL_79;
          }

          DailyDigestEvent = type metadata accessor for HomeActivityStateEvent(0);
          v299 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          v128 = __swift_allocate_boxed_opaque_existential_1(&v296);
          sub_25417C178(v126, v128, type metadata accessor for HomeActivityStateEvent);
LABEL_79:
          v154 = DailyDigestEvent;
          v153 = v299;
          v155 = __swift_project_boxed_opaque_existential_1(&v296, DailyDigestEvent);
          SessionEvent = v154;
          v302 = *(v153 + 8);
          v156 = v302;
          v157 = __swift_allocate_boxed_opaque_existential_1(&v300);
          (*(*(v154 - 8) + 16))(v157, v155, v154);
          __swift_destroy_boxed_opaque_existential_1(&v296);
          v158 = v288;
          sub_25417C0B0(&v288[v124], type metadata accessor for SomeEvent);
          v286(v158, v121);
          v159 = v281;
          (*(v116 + 32))(v114, v116);
          v160 = v277;
          (*(v156 + 32))(v154, v156);
          if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
          {
            sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
            v161 = v282;
            v162 = v290;
            v163 = sub_25424DC58();
            v164 = v291;
            v165 = v159;
          }

          else
          {
            v163 = sub_25424D828();
            v164 = v291;
            v165 = v159;
            v162 = v290;
            v161 = v282;
          }

          v166 = *v275;
          v167 = v285;
          (*v275)(v160, v285);
          v166(v165, v167);
          __swift_destroy_boxed_opaque_existential_1(&v300);
          __swift_destroy_boxed_opaque_existential_1(&v303);
          sub_254132E5C(v162, &qword_27F5B8DD0, &qword_2542545A0);
          sub_254132E5C(v161, &qword_27F5B8DD0, &qword_2542545A0);
          v83 = v276;
          v81 = v162;
          v82 = v161;
          if (v163)
          {
            v168 = v284;
            v169 = v294 + v284;
            v170 = v292;
            a4 = v164;
            if (v292 < v294 || v292 >= v169)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v292 != v294)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v86 = v169;
          }

          else
          {
            v168 = v284;
            v171 = v164;
            a4 = v164 + v284;
            v170 = v292;
            if (v292 < v164 || v292 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v86 = v294;
            }

            else
            {
              v86 = v294;
              if (v292 != v171)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v307 = a4;
          }

          a1 = v170 + v168;
          v308 = a1;
          if (a4 >= v283 || v86 >= v274)
          {
            goto LABEL_183;
          }
        }
      }

      goto LABEL_183;
    }

    v84 = v78 / v284 * v284;
    v85 = v284;
    if (a4 < v294 || v294 + v84 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v294)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v172 = (a4 + v84);
    if (v84 < 1)
    {
LABEL_182:
      v308 = v294;
      v306 = v172;
LABEL_183:
      sub_254179FB0(&v308, &v307, &v306);
      return 1;
    }

    v292 = a1;
    v173 = -v85;
    v272 = (v291 + 8);
    v174 = a4;
    v175 = (a4 + v84);
    v291 = v174;
    v274 = v11;
    v273 = v14;
    v176 = v276;
    v177 = v277;
    v290 = -v85;
    v178 = a3;
LABEL_101:
    v270 = v172;
    v179 = v294;
    v294 += v173;
    v278 = v179;
    while (1)
    {
      if (v179 <= v292)
      {
        v308 = v179;
        v306 = v270;
        goto LABEL_183;
      }

      sub_254132DF4(&v175[v173], v177, &qword_27F5B8DD0, &qword_2542545A0);
      sub_254132DF4(v294, v176, &qword_27F5B8DD0, &qword_2542545A0);
      v180 = v283;
      sub_254132DF4(v177, v283, &qword_27F5B8DD0, &qword_2542545A0);
      v181 = *(v295 + 48);
      sub_25417C110(&v180[v181], v287, type metadata accessor for SomeEvent);
      v182 = swift_getEnumCaseMultiPayload();
      v271 = v172;
      v289 = v175;
      v281 = &v175[v173];
      v288 = v178;
      if (v182)
      {
        v183 = v275;
        if (v182 == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v302 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          v184 = __swift_allocate_boxed_opaque_existential_1(&v300);
          sub_25417C178(v287, v184, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_135;
        }

        v189 = v262;
        sub_25417C178(v287, v262, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v189, v263, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v190 = swift_getEnumCaseMultiPayload();
        if (v190)
        {
          if (v190 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v191 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v192 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v191 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v192 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v191 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v192 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v193 = v192;
        v302 = v191;
        v194 = __swift_allocate_boxed_opaque_existential_1(&v300);
        sub_25417C178(v263, v194, v193);
        sub_25412DC4C(&v300, &v303);
        v195 = v304;
        v196 = v305;
        v197 = __swift_project_boxed_opaque_existential_1(&v303, v304);
        SessionEvent = v195;
        v302 = *(v196 + 16);
        v198 = __swift_allocate_boxed_opaque_existential_1(&v300);
        (*(*(v195 - 8) + 16))(v198, v197, v195);
        v199 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v200 = &v294;
      }

      else
      {
        v185 = v258;
        sub_25417C178(v287, v258, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v185, v259, type metadata accessor for SomeAccessoryEvent);
        v186 = swift_getEnumCaseMultiPayload();
        v183 = v275;
        if (v186 > 4)
        {
          if (v186 <= 6)
          {
            if (v186 == 5)
            {
              v304 = type metadata accessor for SmokeDetectorEvent();
              v187 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v188 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v304 = type metadata accessor for ThermostatAutomationEvent(0);
              v187 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v188 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v186 == 7)
          {
            v304 = type metadata accessor for ThermostatAutomationFailureEvent();
            v187 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v188 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v186 == 8)
          {
            v304 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v187 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v188 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v304 = type metadata accessor for WindowEvent();
            v187 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v188 = type metadata accessor for WindowEvent;
          }
        }

        else if (v186 <= 1)
        {
          if (v186)
          {
            v304 = type metadata accessor for DoorEvent();
            v187 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v188 = type metadata accessor for DoorEvent;
          }

          else
          {
            v304 = type metadata accessor for ContactSensorEvent();
            v187 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v188 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v186 == 2)
        {
          v304 = type metadata accessor for GarageDoorEvent();
          v187 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v188 = type metadata accessor for GarageDoorEvent;
        }

        else if (v186 == 3)
        {
          v304 = type metadata accessor for LockEvent();
          v187 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v188 = type metadata accessor for LockEvent;
        }

        else
        {
          v304 = type metadata accessor for SecuritySystemEvent();
          v187 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v188 = type metadata accessor for SecuritySystemEvent;
        }

        v201 = v188;
        v305 = v187;
        v202 = __swift_allocate_boxed_opaque_existential_1(&v303);
        sub_25417C178(v259, v202, v201);
        v203 = v304;
        v204 = v305;
        v205 = __swift_project_boxed_opaque_existential_1(&v303, v304);
        SessionEvent = v203;
        v302 = *(v204 + 16);
        v206 = __swift_allocate_boxed_opaque_existential_1(&v300);
        (*(*(v203 - 8) + 16))(v206, v205, v203);
        v199 = type metadata accessor for SomeAccessoryEvent;
        v200 = &v290;
      }

      sub_25417C0B0(*(v200 - 32), v199);
      __swift_destroy_boxed_opaque_existential_1(&v303);
LABEL_135:
      v208 = SessionEvent;
      v207 = v302;
      v209 = __swift_project_boxed_opaque_existential_1(&v300, SessionEvent);
      v304 = v208;
      v210 = *(v207 + 8);
      v305 = v210;
      v211 = __swift_allocate_boxed_opaque_existential_1(&v303);
      v212 = *(*(v208 - 8) + 16);
      v284 = v211;
      v212(v211, v209, v208);
      __swift_destroy_boxed_opaque_existential_1(&v300);
      v213 = v283;
      sub_25417C0B0(&v283[v181], type metadata accessor for SomeEvent);
      v214 = sub_25424D948();
      v215 = *(*(v214 - 8) + 8);
      (v215)(v213, v214);
      v216 = v286;
      sub_254132DF4(v176, v286, &qword_27F5B8DD0, &qword_2542545A0);
      v217 = *(v295 + 48);
      sub_25417C110(v216 + v217, v183, type metadata accessor for SomeEvent);
      v218 = swift_getEnumCaseMultiPayload();
      v282 = v215;
      if (v218)
      {
        if (v218 == 1)
        {
          DailyDigestEvent = type metadata accessor for HomeActivityStateEvent(0);
          v299 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
          v219 = __swift_allocate_boxed_opaque_existential_1(&v296);
          sub_25417C178(v183, v219, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_165;
        }

        v224 = v264;
        sub_25417C178(v183, v264, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v224, v265, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v225 = swift_getEnumCaseMultiPayload();
        if (v225)
        {
          if (v225 == 1)
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v226 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
            v227 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v226 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
            v227 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          DailyDigestEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v226 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
          v227 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v228 = v227;
        v299 = v226;
        v229 = __swift_allocate_boxed_opaque_existential_1(&v296);
        sub_25417C178(v265, v229, v228);
        sub_25412DC4C(&v296, &v300);
        v230 = SessionEvent;
        v231 = v302;
        v232 = __swift_project_boxed_opaque_existential_1(&v300, SessionEvent);
        DailyDigestEvent = v230;
        v299 = *(v231 + 16);
        v233 = __swift_allocate_boxed_opaque_existential_1(&v296);
        (*(*(v230 - 8) + 16))(v233, v232, v230);
        v234 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v235 = &v296;
      }

      else
      {
        v220 = v260;
        sub_25417C178(v183, v260, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v220, v261, type metadata accessor for SomeAccessoryEvent);
        v221 = swift_getEnumCaseMultiPayload();
        if (v221 > 4)
        {
          if (v221 <= 6)
          {
            if (v221 == 5)
            {
              SessionEvent = type metadata accessor for SmokeDetectorEvent();
              v222 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
              v223 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              SessionEvent = type metadata accessor for ThermostatAutomationEvent(0);
              v222 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
              v223 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v221 == 7)
          {
            SessionEvent = type metadata accessor for ThermostatAutomationFailureEvent();
            v222 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
            v223 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v221 == 8)
          {
            SessionEvent = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v222 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            v223 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for WindowEvent();
            v222 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent);
            v223 = type metadata accessor for WindowEvent;
          }
        }

        else if (v221 <= 1)
        {
          if (v221)
          {
            SessionEvent = type metadata accessor for DoorEvent();
            v222 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent);
            v223 = type metadata accessor for DoorEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for ContactSensorEvent();
            v222 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
            v223 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v221 == 2)
        {
          SessionEvent = type metadata accessor for GarageDoorEvent();
          v222 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
          v223 = type metadata accessor for GarageDoorEvent;
        }

        else if (v221 == 3)
        {
          SessionEvent = type metadata accessor for LockEvent();
          v222 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent);
          v223 = type metadata accessor for LockEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for SecuritySystemEvent();
          v222 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
          v223 = type metadata accessor for SecuritySystemEvent;
        }

        v236 = v223;
        v302 = v222;
        v237 = __swift_allocate_boxed_opaque_existential_1(&v300);
        sub_25417C178(v261, v237, v236);
        v239 = SessionEvent;
        v238 = v302;
        v240 = __swift_project_boxed_opaque_existential_1(&v300, SessionEvent);
        DailyDigestEvent = v239;
        v299 = *(v238 + 16);
        v241 = __swift_allocate_boxed_opaque_existential_1(&v296);
        (*(*(v239 - 8) + 16))(v241, v240, v239);
        v234 = type metadata accessor for SomeAccessoryEvent;
        v235 = &v292;
      }

      sub_25417C0B0(*(v235 - 32), v234);
      __swift_destroy_boxed_opaque_existential_1(&v300);
LABEL_165:
      v243 = DailyDigestEvent;
      v242 = v299;
      v244 = __swift_project_boxed_opaque_existential_1(&v296, DailyDigestEvent);
      SessionEvent = v243;
      v302 = *(v242 + 8);
      v245 = v302;
      v246 = __swift_allocate_boxed_opaque_existential_1(&v300);
      (*(*(v243 - 8) + 16))(v246, v244, v243);
      __swift_destroy_boxed_opaque_existential_1(&v296);
      v247 = v286;
      sub_25417C0B0(v286 + v217, type metadata accessor for SomeEvent);
      (v282)(v247, v214);
      v248 = v273;
      (*(v210 + 32))(v208, v210);
      v249 = v274;
      (*(v245 + 32))(v243, v245);
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0]);
        v250 = v276;
        v251 = sub_25424DC58();
      }

      else
      {
        v251 = sub_25424D828();
        v250 = v276;
      }

      v252 = v288;
      v178 = &v288[v290];
      v253 = *v272;
      v254 = v285;
      (*v272)(v249, v285);
      v253(v248, v254);
      __swift_destroy_boxed_opaque_existential_1(&v300);
      __swift_destroy_boxed_opaque_existential_1(&v303);
      sub_254132E5C(v250, &qword_27F5B8DD0, &qword_2542545A0);
      v255 = v277;
      sub_254132E5C(v277, &qword_27F5B8DD0, &qword_2542545A0);
      v176 = v250;
      v177 = v255;
      if (v251)
      {
        v175 = v289;
        if (v252 < v278 || v178 >= v278)
        {
          swift_arrayInitWithTakeFrontToBack();
          v172 = v271;
          v173 = v290;
        }

        else
        {
          v172 = v271;
          v173 = v290;
          if (v252 != v278)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v175 <= v291)
        {
          goto LABEL_182;
        }

        goto LABEL_101;
      }

      v256 = v281;
      v172 = v281;
      v179 = v278;
      if (v252 < v289 || v178 >= v289)
      {
        swift_arrayInitWithTakeFrontToBack();
        v173 = v290;
      }

      else
      {
        v173 = v290;
        if (v252 != v289)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v175 = v172;
      if (v256 <= v291)
      {
        v294 = v179;
        goto LABEL_182;
      }
    }
  }

LABEL_186:
  __break(1u);
  return result;
}

uint64_t sub_254179E2C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_254179EB8(v3);
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

uint64_t sub_254179ECC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for EventQuery.FetchedRecordInfo(0);
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

uint64_t sub_254179FB0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
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

char *sub_25417A0A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91E8, &qword_254254578);
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

uint64_t sub_25417A1A4(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 24) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  *v6 = v3;
  v6[1] = sub_25417A2A4;

  return v8(v3 + 16, a2);
}

uint64_t sub_25417A2A4()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_25417A3D8;
  }

  else
  {
    v3 = sub_25417A3B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25417A418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v200 = &v192 - v10;
  v11 = type metadata accessor for EventQuery(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v194 = &v192 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v198 = &v192 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v203 = &v192 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v207 = &v192 - v20;
  MEMORY[0x28223BE20](v19);
  v213 = (&v192 - v21);
  v217 = sub_25424DAA8();
  v218 = *(v217 - 8);
  v22 = *(v218 + 64);
  v23 = MEMORY[0x28223BE20](v217);
  v195 = &v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v201 = &v192 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v204 = &v192 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v212 = &v192 - v30;
  MEMORY[0x28223BE20](v29);
  v219 = &v192 - v31;
  v216 = sub_25424D8B8();
  v215 = *(v216 - 8);
  v32 = *(v215 + 64);
  v33 = MEMORY[0x28223BE20](v216);
  v202 = &v192 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v211 = &v192 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v206 = &v192 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v221 = &v192 - v40;
  MEMORY[0x28223BE20](v39);
  v220 = &v192 - v41;
  v42 = sub_25424D948();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v197 = &v192 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v48 = &v192 - v47;
  v230[3] = a3;
  v230[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v230);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v50 = a4;
  v205 = *(a4 + 40);
  (v205)(a3, a4);
  v51 = type metadata accessor for EventQuery.Configuration(0);
  v52 = v51[7];
  v196 = sub_25417BFB4(&qword_27F5B9090, MEMORY[0x277CC95F0]);
  LOBYTE(v52) = sub_25424DC98();
  v199 = v43;
  v53 = *(v43 + 8);
  v208 = v48;
  v210 = v43 + 8;
  v209 = v53;
  v53(v48, v42);
  v214 = a3;
  if ((v52 & 1) == 0)
  {
    sub_25421ACE8(v219);
    v64 = v213;
    sub_25417C110(a2, v213, type metadata accessor for EventQuery);
    sub_254140708(v230, &v227);
    v65 = sub_25424DA88();
    v66 = sub_25424E418();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v224 = v68;
      *v67 = 136315394;
      LODWORD(v221) = v66;
      v69 = v51[6];
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v70 = sub_25424EA58();
      v71 = v64;
      v73 = v72;
      sub_25417C0B0(v71, type metadata accessor for EventQuery);
      v74 = sub_2542203C4(v70, v73, &v224);

      *(v67 + 4) = v74;
      *(v67 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(&v227, v228);
      v75 = v208;
      (v205)(v214, v50);
      v76 = sub_25424EA58();
      v78 = v77;
      v209(v75, v42);
      __swift_destroy_boxed_opaque_existential_1(&v227);
      v79 = sub_2542203C4(v76, v78, &v224);

      *(v67 + 14) = v79;
      _os_log_impl(&dword_254124000, v65, v221, "[%s] Failed to match home identifier: %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v68, -1, -1);
      MEMORY[0x259C07330](v67, -1, -1);

      (*(v218 + 8))(v219, v217);
LABEL_34:
      v137 = 0;
      goto LABEL_35;
    }

    sub_25417C0B0(v64, type metadata accessor for EventQuery);
    (*(v218 + 8))(v219, v217);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(&v227);
    goto LABEL_34;
  }

  v193 = v42;
  v54 = v51[8];
  sub_25424D1F8();
  v205 = v51;
  v55 = v51[13];
  v219 = a2;
  v56 = *(a2 + v55);
  v57 = *(v50 + 32);
  v57(a3, v50);
  if (v56)
  {
    sub_25417BFB4(&qword_27F5B9210, MEMORY[0x277CC9578]);
    v58 = v221;
    v59 = v216;
    v60 = sub_25424DC88();
    v61 = v215;
    v62 = *(v215 + 8);
    v63 = v58;
  }

  else
  {
    v80 = v221;
    v60 = sub_25424D838();
    v61 = v215;
    v62 = *(v215 + 8);
    v63 = v80;
    v59 = v216;
  }

  v213 = v62;
  (v62)(v63, v59);
  if (v60)
  {
    v81 = v212;
    sub_25421ACE8(v212);
    v82 = v207;
    sub_25417C110(v219, v207, type metadata accessor for EventQuery);
    v83 = v206;
    (*(v61 + 16))(v206, v220, v59);
    v84 = sub_25424DA88();
    v85 = sub_25424E418();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v227 = v87;
      *v86 = 136315394;
      v88 = v205[6];
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v89 = sub_25424EA58();
      v91 = v90;
      sub_25417C0B0(v82, type metadata accessor for EventQuery);
      v92 = sub_2542203C4(v89, v91, &v227);

      *(v86 + 4) = v92;
      *(v86 + 12) = 2080;
      sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578]);
      v93 = sub_25424EA58();
      v95 = v94;
      v96 = v213;
      (v213)(v83, v59);
      v97 = sub_2542203C4(v93, v95, &v227);

      *(v86 + 14) = v97;
      _os_log_impl(&dword_254124000, v84, v85, "[%s] Failed to match start date: %s", v86, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v87, -1, -1);
      MEMORY[0x259C07330](v86, -1, -1);

      (*(v218 + 8))(v212, v217);
      v96(v220, v59);
    }

    else
    {

      v107 = v213;
      (v213)(v83, v59);
      sub_25417C0B0(v82, type metadata accessor for EventQuery);
      (*(v218 + 8))(v81, v217);
      v107(v220, v59);
    }

    goto LABEL_34;
  }

  v98 = v219;
  v99 = v50;
  v100 = v211;
  sub_25424D1D8();
  LODWORD(v98) = *(v98 + v205[14]);
  v101 = v99;
  v57(v214, v99);
  if (v98 == 1)
  {
    sub_25417BFB4(&qword_27F5B9210, MEMORY[0x277CC9578]);
    v102 = v221;
    v103 = v216;
    v104 = sub_25424DC78();
    v105 = v215;
    v106 = v102;
  }

  else
  {
    v108 = v221;
    v104 = sub_25424D828();
    v105 = v215;
    v106 = v108;
    v103 = v216;
  }

  v109 = v213;
  (v213)(v106, v103);
  if (v104)
  {
    v110 = v204;
    sub_25421ACE8(v204);
    v111 = v203;
    sub_25417C110(v219, v203, type metadata accessor for EventQuery);
    v112 = v202;
    (*(v105 + 16))(v202, v100, v103);
    v113 = sub_25424DA88();
    v114 = sub_25424E418();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v213 = v109;
      v116 = v115;
      v117 = swift_slowAlloc();
      v227 = v117;
      *v116 = 136315394;
      v118 = v205[6];
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v119 = sub_25424EA58();
      v121 = v120;
      sub_25417C0B0(v111, type metadata accessor for EventQuery);
      v122 = sub_2542203C4(v119, v121, &v227);

      *(v116 + 4) = v122;
      *(v116 + 12) = 2080;
      sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578]);
      v123 = sub_25424EA58();
      v125 = v124;
      v126 = v213;
      (v213)(v112, v103);
      v127 = sub_2542203C4(v123, v125, &v227);

      *(v116 + 14) = v127;
      _os_log_impl(&dword_254124000, v113, v114, "[%s] Failed to match end date: %s", v116, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v117, -1, -1);
      MEMORY[0x259C07330](v116, -1, -1);

      (*(v218 + 8))(v204, v217);
      v126(v211, v103);
      v126(v220, v103);
    }

    else
    {

      (v109)(v112, v103);
      sub_25417C0B0(v111, type metadata accessor for EventQuery);
      (*(v218 + 8))(v110, v217);
      (v109)(v100, v103);
      (v109)(v220, v103);
    }

    goto LABEL_34;
  }

  v128 = v219;
  if (*(v219 + v205[10]))
  {
    v129 = v109;
    v130 = *(v219 + v205[10]);
  }

  else
  {
    v130 = *(v219 + v205[9]);
    if (!v130)
    {
      goto LABEL_25;
    }

    v129 = v109;
  }

  v131 = *(v101 + 48);

  v131(&v227, v214, v101);
  v132 = sub_2541538B4(v227, v130);

  v109 = v129;
  v128 = v219;
  if (!v132)
  {
    v138 = v201;
    sub_25421ACE8(v201);
    v139 = v128;
    v140 = v198;
    sub_25417C110(v139, v198, type metadata accessor for EventQuery);
    sub_254140708(v230, &v227);
    v141 = sub_25424DA88();
    v142 = sub_25424E418();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      LODWORD(v221) = v142;
      v213 = v109;
      v144 = v143;
      v145 = swift_slowAlloc();
      v224 = v145;
      *v144 = 136315394;
      v146 = v205[6];
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v147 = sub_25424EA58();
      v149 = v148;
      sub_25417C0B0(v140, type metadata accessor for EventQuery);
      v150 = sub_2542203C4(v147, v149, &v224);

      *(v144 + 4) = v150;
      *(v144 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(&v227, v228);
      v131(v222, v214, v101);
      v151 = sub_25424DD08();
      v153 = v152;
      __swift_destroy_boxed_opaque_existential_1(&v227);
      v154 = sub_2542203C4(v151, v153, &v224);

      *(v144 + 14) = v154;
      _os_log_impl(&dword_254124000, v141, v221, "[%s] Failed to match category: %s", v144, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v145, -1, -1);
      MEMORY[0x259C07330](v144, -1, -1);

      (*(v218 + 8))(v201, v217);
      v155 = v216;
      v156 = v213;
      (v213)(v211, v216);
      v156(v220, v155);
      goto LABEL_34;
    }

    sub_25417C0B0(v140, type metadata accessor for EventQuery);
    (*(v218 + 8))(v138, v217);
    v166 = v216;
    (v109)(v100, v216);
    (v109)(v220, v166);
    goto LABEL_11;
  }

LABEL_25:
  v133 = v200;
  sub_254132DF4(v128 + v205[11], v200, &unk_27F5B8E50, &qword_254254390);
  v134 = v199;
  v135 = v193;
  if ((*(v199 + 48))(v133, 1, v193) != 1)
  {
    v157 = v197;
    (*(v134 + 32))(v197, v133, v135);
    sub_254140708(v230, &v224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91F0, &unk_254254580);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91F8, &unk_25425D2D0);
    v158 = swift_dynamicCast();
    v159 = v216;
    if ((v158 & 1) == 0)
    {
      v209(v157, v135);
      (v109)(v100, v159);
      (v109)(v220, v159);
      v223 = 0;
      memset(v222, 0, sizeof(v222));
      sub_254132E5C(v222, &qword_27F5B9200, &qword_254254590);
      goto LABEL_34;
    }

    v213 = v109;
    sub_25412DC4C(v222, &v227);
    v160 = v228;
    v161 = v229;
    __swift_project_boxed_opaque_existential_1(&v227, v228);
    v162 = v208;
    (*(v161 + 32))(v160, v161);
    LOBYTE(v160) = sub_25424DC98();
    v163 = v162;
    v164 = v209;
    v209(v163, v135);
    if (v160)
    {
      v164(v157, v135);
      v165 = v213;
      (v213)(v100, v159);
      v165(v220, v159);
      __swift_destroy_boxed_opaque_existential_1(&v227);
      v137 = 1;
      goto LABEL_35;
    }

    v168 = v128;
    v169 = v195;
    sub_25421ACE8(v195);
    v170 = v194;
    sub_25417C110(v168, v194, type metadata accessor for EventQuery);
    sub_254140708(&v227, &v224);
    v171 = sub_25424DA88();
    v172 = sub_25424E418();
    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      *&v222[0] = v221;
      *v173 = 136315394;
      LODWORD(v219) = v172;
      v174 = v205[6];
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v175 = v193;
      v176 = sub_25424EA58();
      v178 = v177;
      sub_25417C0B0(v170, type metadata accessor for EventQuery);
      v179 = sub_2542203C4(v176, v178, v222);

      *(v173 + 4) = v179;
      *(v173 + 12) = 2080;
      v180 = v225;
      v181 = v226;
      __swift_project_boxed_opaque_existential_1(&v224, v225);
      v182 = v208;
      (*(v181 + 32))(v180, v181);
      v183 = sub_25424EA58();
      v185 = v184;
      v186 = v209;
      v209(v182, v175);
      __swift_destroy_boxed_opaque_existential_1(&v224);
      v187 = sub_2542203C4(v183, v185, v222);

      *(v173 + 14) = v187;
      _os_log_impl(&dword_254124000, v171, v219, "[%s] Failed to match accessory identifier: %s", v173, 0x16u);
      v188 = v221;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v188, -1, -1);
      MEMORY[0x259C07330](v173, -1, -1);

      (*(v218 + 8))(v169, v217);
      v186(v197, v175);
      v189 = v216;
      v190 = v213;
      (v213)(v211, v216);
      v190(v220, v189);
    }

    else
    {

      sub_25417C0B0(v170, type metadata accessor for EventQuery);
      (*(v218 + 8))(v169, v217);
      v164(v197, v193);
      v191 = v213;
      (v213)(v100, v159);
      v191(v220, v159);
      __swift_destroy_boxed_opaque_existential_1(&v224);
    }

    goto LABEL_11;
  }

  v136 = v216;
  (v109)(v100, v216);
  (v109)(v220, v136);
  sub_254132E5C(v133, &unk_27F5B8E50, &qword_254254390);
  v137 = 1;
LABEL_35:
  __swift_destroy_boxed_opaque_existential_1(v230);
  return v137;
}

uint64_t sub_25417BF00(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25412F818;

  return sub_254168384(a1, a2, v7);
}

uint64_t sub_25417BFB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25417BFFC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25412F818;

  return sub_254168384(a1, a2, v7);
}

uint64_t sub_25417C0B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25417C110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25417C178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25417C1E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EventQuery(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25424D8B8() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25412F724;

  return sub_25414F5E0(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_25417C3A0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25412F818;

  return sub_254150EEC(a1, a2, v7, v6);
}

uint64_t sub_25417C454(uint64_t a1, _BYTE *a2, int a3, int a4, int a5, int a6)
{
  v248 = a6;
  v253 = a3;
  v254 = a5;
  LODWORD(v250) = a4;
  *&v260 = a1;
  v7 = sub_25424D218();
  v262 = *(v7 - 8);
  v8 = v262[8];
  v9 = MEMORY[0x28223BE20](v7);
  v255 = &v232[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v244 = &v232[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v242 = &v232[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v237 = &v232[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v239 = &v232[-v18];
  MEMORY[0x28223BE20](v17);
  v247 = &v232[-v19];
  v20 = sub_25424D948();
  v21 = *(v20 - 1);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v251 = &v232[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v249 = &v232[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v236 = &v232[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v232[-v30];
  MEMORY[0x28223BE20](v29);
  v238 = &v232[-v32];
  v33 = sub_25424DAA8();
  v257 = *(v33 - 8);
  v258 = v33;
  v34 = *(v257 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v252 = &v232[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v35);
  v241 = &v232[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v240 = &v232[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v232[-v42];
  MEMORY[0x28223BE20](v41);
  v246 = &v232[-v44];
  v45 = sub_25424D8B8();
  v263 = *(v45 - 8);
  v264 = v45;
  v46 = *(v263 + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v245 = &v232[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v232[-v50];
  v52 = MEMORY[0x28223BE20](v49);
  v256 = &v232[-v53];
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v232[-v55];
  MEMORY[0x28223BE20](v54);
  v58 = &v232[-v57];
  type metadata accessor for Configuration();
  v59 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
  v259 = v56;
  v261 = v58;
  if (v59 < 1)
  {
    sub_25424D1F8();
    sub_25424D1D8();
    sub_25421ACE8(v252);
    (*(v21 + 16))(v251, v260, v20);
    v105 = v262;
    v106 = v262[2];
    v107 = v244;
    v106(v244, a2, v7);
    v106(v255, a2, v7);
    v108 = sub_25424DA88();
    v109 = sub_25424E418();
    v110 = v105;
    v111 = v20;
    if (os_log_type_enabled(v108, v109))
    {
      v112 = swift_slowAlloc();
      v250 = swift_slowAlloc();
      v265 = v250;
      *v112 = 136315650;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v249 = v108;
      v113 = v251;
      v248 = v109;
      v114 = sub_25424EA58();
      v116 = v115;
      (*(v21 + 8))(v113, v111);
      v117 = sub_2542203C4(v114, v116, &v265);

      *&v260 = v112;
      *(v112 + 4) = v117;
      *(v112 + 12) = 2080;
      v118 = v256;
      sub_25424D1F8();
      v251 = sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578]);
      v119 = v264;
      v120 = sub_25424EA58();
      v122 = v121;
      v123 = v7;
      v124 = *(v263 + 8);
      v124(v118, v119);
      v125 = v110[1];
      v125(v107, v123);
      v126 = sub_2542203C4(v120, v122, &v265);

      v127 = v260;
      *(v260 + 14) = v126;
      *(v127 + 22) = 2080;
      v128 = v255;
      sub_25424D1D8();
      v129 = sub_25424EA58();
      v131 = v130;
      v124(v118, v119);
      v125(v128, v123);
      v132 = sub_2542203C4(v129, v131, &v265);

      v133 = v260;
      *(v260 + 24) = v132;
      v134 = v249;
      _os_log_impl(&dword_254124000, v249, v248, "[%s] Not using coalescing window, start date %s, end date %s", v133, 0x20u);
      v135 = v250;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v135, -1, -1);
      MEMORY[0x259C07330](v133, -1, -1);
    }

    else
    {

      v157 = v105[1];
      v157(v255, v7);
      v157(v107, v7);
      (*(v21 + 8))(v251, v20);
    }

    (*(v257 + 8))(v252, v258);
    goto LABEL_33;
  }

  v244 = v59;
  v255 = a2;
  v251 = v21;
  v252 = v20;
  v60 = v7;
  v243 = v7;
  if ((v250 & 1) == 0)
  {
    v136 = v255;
    sub_25424D1F8();
    sub_25421ACE8(v43);
    v137 = v251;
    v138 = v252;
    v250 = *(v251 + 2);
    (v250)(v31, v260, v252);
    v139 = v262;
    v140 = v239;
    v235 = v262[2];
    v235(v239, v136, v7);
    v141 = sub_25424DA88();
    v142 = sub_25424E418();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = v137;
      v144 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      v265 = v246;
      *v144 = 136315394;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v233 = v142;
      v145 = sub_25424EA58();
      v234 = v43;
      v146 = v139;
      v147 = v140;
      v149 = v148;
      v238 = *(v143 + 1);
      (v238)(v31, v138);
      v150 = sub_2542203C4(v145, v149, &v265);

      *(v144 + 4) = v150;
      *(v144 + 12) = 2080;
      v151 = v256;
      sub_25424D1F8();
      sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578]);
      v66 = v264;
      v152 = sub_25424EA58();
      v154 = v153;
      (*(v263 + 8))(v151, v66);
      v247 = v146[1];
      (v247)(v147, v60);
      v155 = sub_2542203C4(v152, v154, &v265);

      *(v144 + 14) = v155;
      _os_log_impl(&dword_254124000, v141, v233, "[%s] Not using coalescing window, start date %s", v144, 0x16u);
      v156 = v246;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v156, -1, -1);
      MEMORY[0x259C07330](v144, -1, -1);

      v246 = *(v257 + 8);
      (v246)(v234, v258);
    }

    else
    {

      v247 = v139[1];
      (v247)(v140, v7);
      v238 = *(v137 + 1);
      (v238)(v31, v138);
      v246 = *(v257 + 8);
      (v246)(v43, v258);
      v66 = v264;
    }

    v103 = v259;
    v95 = v255;
    v104 = v249;
    if ((v248 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v61 = v256;
  sub_25424D1F8();
  sub_25424D578();
  v63 = v62;
  v64 = v62;
  v65 = v263;
  v66 = v264;
  v67 = *(v263 + 8);
  result = (v67)(v61, v264);
  v69 = v261;
  v70 = v60;
  v71 = v260;
  if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v63 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v63 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v63 / v244 * v244) >> 64 != (v63 / v244 * v244) >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v239 = v67;
  sub_25424D568();
  sub_25421ACE8(v246);
  v72 = v251;
  v73 = v238;
  v74 = v71;
  v75 = v252;
  v250 = *(v251 + 2);
  (v250)(v238, v74, v252);
  v235 = v262[2];
  v235(v247, v255, v70);
  v76 = *(v65 + 16);
  v77 = v51;
  v76(v51, v69, v66);
  v78 = sub_25424DA88();
  v79 = sub_25424E418();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v233 = v79;
    v81 = v72;
    v82 = v80;
    v234 = swift_slowAlloc();
    v265 = v234;
    *v82 = 136315906;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v83 = sub_25424EA58();
    v85 = v84;
    v238 = *(v81 + 1);
    (v238)(v73, v75);
    v86 = sub_2542203C4(v83, v85, &v265);

    *(v82 + 4) = v86;
    *(v82 + 12) = 2048;
    *(v82 + 14) = v244;
    *(v82 + 22) = 2080;
    v87 = v256;
    v88 = v247;
    sub_25424D1F8();
    sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578]);
    v89 = sub_25424EA58();
    v91 = v90;
    v92 = v87;
    v93 = v239;
    (v239)(v92, v264);
    v94 = v70;
    v95 = v255;
    v247 = v262[1];
    (v247)(v88, v94);
    v96 = sub_2542203C4(v89, v91, &v265);
    v66 = v264;

    *(v82 + 24) = v96;
    *(v82 + 32) = 2080;
    v97 = sub_25424EA58();
    v99 = v98;
    v93(v77, v66);
    v100 = sub_2542203C4(v97, v99, &v265);

    *(v82 + 34) = v100;
    _os_log_impl(&dword_254124000, v78, v233, "[%s] Using coalescing window of %ld seconds, adjusted start date %s => %s", v82, 0x2Au);
    v101 = v234;
    swift_arrayDestroy();
    MEMORY[0x259C07330](v101, -1, -1);
    MEMORY[0x259C07330](v82, -1, -1);

    v102 = v246;
    v246 = *(v257 + 8);
    (v246)(v102, v258);
    v103 = v259;
    v104 = v249;
    if ((v248 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {

    (v239)(v77, v66);
    v195 = v247;
    v247 = v262[1];
    (v247)(v195, v70);
    v238 = *(v72 + 1);
    (v238)(v73, v75);
    v196 = v246;
    v246 = *(v257 + 8);
    (v246)(v196, v258);
    v103 = v259;
    v104 = v249;
    v95 = v255;
    if ((v248 & 1) == 0)
    {
LABEL_26:
      sub_25424D1D8();
      v172 = v241;
      sub_25421ACE8(v241);
      v164 = v252;
      (v250)(v104, v260, v252);
      v197 = v242;
      v198 = v243;
      v235(v242, v95, v243);
      v199 = sub_25424DA88();
      v200 = sub_25424E418();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        v265 = v202;
        *v201 = 136315394;
        sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
        v203 = sub_25424EA58();
        v204 = v164;
        v206 = v205;
        (v238)(v104, v204);
        v207 = sub_2542203C4(v203, v206, &v265);

        *(v201 + 4) = v207;
        *(v201 + 12) = 2080;
        v208 = v256;
        v209 = v242;
        sub_25424D1D8();
        sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578]);
        v210 = v264;
        v211 = sub_25424EA58();
        v213 = v212;
        (*(v263 + 8))(v208, v210);
        (v247)(v209, v243);
        v214 = sub_2542203C4(v211, v213, &v265);

        *(v201 + 14) = v214;
        _os_log_impl(&dword_254124000, v199, v200, "[%s] Not using coalescing window, end date %s", v201, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C07330](v202, -1, -1);
        MEMORY[0x259C07330](v201, -1, -1);

        v194 = &v267;
        goto LABEL_28;
      }

      (v247)(v197, v198);
LABEL_31:
      (v238)(v104, v164);
      v215 = v172;
      goto LABEL_32;
    }
  }

LABEL_18:
  v158 = v256;
  sub_25424D1D8();
  sub_25424D578();
  v160 = v159;
  v161 = v159;
  v162 = v263;
  v163 = *(v263 + 8);
  result = (v163)(v158, v66);
  v164 = v252;
  if ((*&v161 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v160 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v160 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v165 = v160 / v244;
  if (__OFADD__(v165, 1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (((v165 + 1) * v244) >> 64 != ((v165 + 1) * v244) >> 63)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v255 = v163;
  sub_25424D568();
  v166 = v240;
  sub_25421ACE8(v240);
  v104 = v236;
  (v250)(v236, v260, v164);
  v167 = v237;
  v168 = v95;
  v169 = v66;
  v170 = v243;
  v235(v237, v168, v243);
  v171 = *(v162 + 16);
  v172 = v166;
  v171(v245, v103, v169);
  v173 = sub_25424DA88();
  v174 = sub_25424E418();
  if (!os_log_type_enabled(v173, v174))
  {

    (v255)(v245, v169);
    (v247)(v167, v170);
    goto LABEL_31;
  }

  v175 = swift_slowAlloc();
  LODWORD(v250) = v174;
  v176 = v175;
  *&v260 = swift_slowAlloc();
  v265 = v260;
  *v176 = 136315906;
  sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
  v177 = sub_25424EA58();
  v178 = v164;
  v180 = v179;
  (v238)(v104, v178);
  v181 = sub_2542203C4(v177, v180, &v265);

  *(v176 + 4) = v181;
  *(v176 + 12) = 2048;
  *(v176 + 14) = v244;
  *(v176 + 22) = 2080;
  v182 = v256;
  sub_25424D1D8();
  sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578]);
  v183 = sub_25424EA58();
  v185 = v184;
  v186 = v255;
  (v255)(v182, v169);
  (v247)(v167, v243);
  v187 = sub_2542203C4(v183, v185, &v265);

  *(v176 + 24) = v187;
  *(v176 + 32) = 2080;
  v188 = v245;
  v189 = sub_25424EA58();
  v191 = v190;
  v186(v188, v169);
  v192 = sub_2542203C4(v189, v191, &v265);

  *(v176 + 34) = v192;
  _os_log_impl(&dword_254124000, v173, v250, "[%s] Using coalescing window of %ld seconds, adjusted end date %s => %s", v176, 0x2Au);
  v193 = v260;
  swift_arrayDestroy();
  MEMORY[0x259C07330](v193, -1, -1);
  MEMORY[0x259C07330](v176, -1, -1);

  v194 = &v266;
LABEL_28:
  v215 = *(v194 - 32);
LABEL_32:
  (v246)(v215, v258);
LABEL_33:
  v216 = v253;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_254254380;
  v218 = 0x4025203D3E204B25;
  if (v216)
  {
    v218 = 0x4025203E204B25;
  }

  v262 = v218;
  v258 = sub_254148D7C(0, &qword_27F5B9118, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9228, &qword_2542545A8);
  v219 = swift_allocObject();
  v260 = xmmword_2542542D0;
  *(v219 + 16) = xmmword_2542542D0;
  *(v219 + 56) = MEMORY[0x277D837D0];
  v220 = sub_25417E624();
  *(v219 + 64) = v220;
  *(v219 + 32) = 1702125924;
  *(v219 + 40) = 0xE400000000000000;
  v221 = v261;
  v222 = sub_25424D818();
  v223 = sub_254148D7C(0, &qword_27F5B9258, 0x277CBEAA8);
  *(v219 + 96) = v223;
  v224 = sub_25417E678(&qword_27F5B9260, &qword_27F5B9258, 0x277CBEAA8);
  *(v219 + 104) = v224;
  *(v219 + 72) = v222;
  v225 = sub_25424E3E8();

  *(v217 + 32) = v225;
  v226 = swift_allocObject();
  *(v226 + 16) = v260;
  *(v226 + 56) = MEMORY[0x277D837D0];
  *(v226 + 64) = v220;
  *(v226 + 32) = 1702125924;
  *(v226 + 40) = 0xE400000000000000;
  v227 = v259;
  v228 = sub_25424D818();
  *(v226 + 96) = v223;
  *(v226 + 104) = v224;
  *(v226 + 72) = v228;
  v229 = sub_25424E3E8();

  *(v217 + 40) = v229;
  v230 = v264;
  v231 = *(v263 + 8);
  v231(v227, v264);
  v231(v221, v230);
  return v217;
}

uint64_t sub_25417DE78(uint64_t a1, void *a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v12 = sub_25424DAA8();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = (v5 + 16);
  v48 = a2[2];
  if (v48)
  {
    v49 = v12;
    sub_25421ACE8(&v46 - v17);
    (*v19)(v11, a1, v4);
    swift_bridgeObjectRetain_n();
    v20 = sub_25424DA88();
    v21 = sub_25424E418();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v47 = a2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v51 = v24;
      *v23 = 136315650;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v25 = sub_25424EA58();
      v27 = v26;
      (*(v5 + 8))(v11, v4);
      v28 = sub_2542203C4(v25, v27, &v51);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2542203C4(1936154996, 0xE400000000000000, &v51);
      *(v23 + 22) = 2048;

      v29 = v48;
      *(v23 + 24) = v48;

      _os_log_impl(&dword_254124000, v20, v21, "[%s] Creating '%s' predicate that contains %ld value(s)", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v24, -1, -1);
      v30 = v23;
      a2 = v47;
      MEMORY[0x259C07330](v30, -1, -1);

      (*(v50 + 8))(v18, v49);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v5 + 8))(v11, v4);
      (*(v50 + 8))(v18, v49);
      v29 = v48;
    }

    sub_254148D7C(0, &qword_27F5B9118, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9228, &qword_2542545A8);
    if (v29 == 1)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_2542542D0;
      *(v40 + 56) = MEMORY[0x277D837D0];
      *(v40 + 64) = sub_25417E624();
      *(v40 + 32) = 1936154996;
      *(v40 + 40) = 0xE400000000000000;
      v42 = a2[4];
      v41 = a2[5];
      sub_254140660(v42, v41);
      v43 = sub_25424D4F8();
      sub_254134D04(v42, v41);
      *(v40 + 96) = sub_254148D7C(0, &qword_27F5B9238, 0x277CBEA90);
      *(v40 + 104) = sub_25417E678(&qword_27F5B9240, &qword_27F5B9238, 0x277CBEA90);
      *(v40 + 72) = v43;
    }

    else
    {
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2542542D0;
      *(v44 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9248, &qword_2542545B0);
      *(v44 + 64) = sub_25414081C(&qword_27F5B9250, &qword_27F5B9248, &qword_2542545B0);
      *(v44 + 32) = a2;
      *(v44 + 96) = MEMORY[0x277D837D0];
      *(v44 + 104) = sub_25417E624();
      *(v44 + 72) = 1936154996;
      *(v44 + 80) = 0xE400000000000000;
    }

    return sub_25424E3E8();
  }

  else
  {
    sub_25421ACE8(v16);
    (*v19)(v9, a1, v4);
    v31 = sub_25424DA88();
    v32 = sub_25424E418();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v12;
      v35 = v34;
      v51 = v34;
      *v33 = 136315394;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v36 = sub_25424EA58();
      v38 = v37;
      (*(v5 + 8))(v9, v4);
      v39 = sub_2542203C4(v36, v38, &v51);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2542203C4(1936154996, 0xE400000000000000, &v51);
      _os_log_impl(&dword_254124000, v31, v32, "[%s] No tags specified, skipping '%s' predicate", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v35, -1, -1);
      MEMORY[0x259C07330](v33, -1, -1);

      (*(v50 + 8))(v16, v49);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
      (*(v50 + 8))(v16, v12);
    }

    return 0;
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_25417E624()
{
  result = qword_27F5B9230;
  if (!qword_27F5B9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9230);
  }

  return result;
}

uint64_t sub_25417E678(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_254148D7C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25417E6C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25417E74C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25412F818;

  return sub_25417A1A4(a1, a2, v7);
}

uint64_t sub_25417E83C()
{
  result = sub_25424D948();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SomeEvent();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static HMVCommands.echo(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25417E944, 0, 0);
}

uint64_t sub_25417E944()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25417EA1C;

  return sub_2541302DC(sub_25417ECD4, v3);
}

uint64_t sub_25417EA1C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_25417EB88, 0, 0);
  }

  else
  {
    v9 = *(v6 + 32);

    v10 = *(v8 + 8);

    return v10(a1, a2);
  }
}

uint64_t sub_25417EB88()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void sub_25417EBEC(void *a1, uint64_t a2)
{
  v4 = sub_25424DCA8();
  v6[4] = sub_25417EEF4;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_25417EEFC;
  v6[3] = &block_descriptor_2;
  v5 = _Block_copy(v6);

  [a1 hmvutilEchoWithString:v4 reply:v5];
  _Block_release(v5);
}

void sub_25417ECD4(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_25417EBEC(a1, a2);
}

uint64_t sub_25417ECDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v20 - v11;
  if (a3)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a4;
    v15[5] = sub_25417F008;
    v15[6] = v13;
    v16 = a3;

    v17 = &unk_2542546E0;
LABEL_5:
    sub_25419CC1C(0, 0, v12, v17, v15);
  }

  if (a2)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v19 = sub_25424E128();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a4;
    v15[5] = sub_25417F000;
    v15[6] = v18;

    v17 = &unk_254252D78;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_25417EEFC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_25424DCB8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25417EFAC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8878, &qword_254252D60);
  return sub_25424E088();
}

uint64_t sub_25417F010(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F724;

  return sub_254131030(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25417F0D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AsyncJSONArrayObjectSequence.AsyncIterator();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for AsyncDigestEventSequence.AsyncIterator();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_25417F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for AsyncJSONArrayObjectSequence.AsyncIterator();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  v11 = type metadata accessor for AsyncJSONArrayObjectSequence();
  sub_254236F74(v11, v10);
  return sub_25417F0D8(v10, *(v2 + *(a1 + 36)), a2);
}

uint64_t sub_25417F22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25417F174(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25417F28C(uint64_t a1, uint64_t a2)
{
  v3[67] = v2;
  v3[66] = a2;
  v3[65] = a1;
  v4 = type metadata accessor for EventRecord.DecodedEvent(0);
  v3[68] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v6 = *(*(sub_25424DCF8() - 8) + 64) + 15;
  v3[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25417F36C, 0, 0);
}

uint64_t sub_25417F36C()
{
  sub_25424E1E8();
  v1 = v0[66];
  v2 = swift_task_alloc();
  v0[73] = v2;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for AsyncJSONArrayObjectSequence.AsyncIterator();
  *v2 = v0;
  v2[1] = sub_25417F494;
  v6 = v0[67];

  return sub_2542370CC(v5);
}

uint64_t sub_25417F494(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 584);
  v5 = *v3;
  v5[74] = a1;
  v5[75] = a2;
  v5[76] = v2;

  if (v2)
  {
    v6 = v5[72];
    v7 = v5[71];
    v8 = v5[70];
    v9 = v5[69];

    v10 = v5[1];

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25417F608, 0, 0);
  }
}

uint64_t sub_25417F608()
{
  v1 = *(v0 + 600);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 520);
    v3 = type metadata accessor for SomeEvent();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(v0 + 576);
    v5 = *(v0 + 568);
    v6 = *(v0 + 560);
    v7 = *(v0 + 552);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 592);
    *(v0 + 16) = v10;
    *(v0 + 24) = v1;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 2;
    *(v0 + 64) = MEMORY[0x277D84F90];
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 96) = 1;
    *(v0 + 104) = 0;
    *(v0 + 32) = 0;
    sub_254181340(v10, v1);
    sub_254140660(v10, v1);
    v11 = *(v0 + 608);
    *(v0 + 624) = 0xF000000000000000;
    *(v0 + 616) = 0;
    *(v0 + 640) = xmmword_254252DB0;
    *(v0 + 632) = v11;

    return MEMORY[0x2822009F8](sub_25417F794, 0, 0);
  }
}

uint64_t sub_25417F794()
{
  v1 = v0[79];
  sub_25424E1E8();
  if (v1)
  {
    v0[91] = v1;

    return MEMORY[0x2822009F8](sub_254180258, 0, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[82] = v2;
    *v2 = v0;
    v2[1] = sub_25417F878;

    return sub_254181354();
  }
}

uint64_t sub_25417F878(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[50] = v3;
  v5[51] = a1;
  v5[52] = a2;
  v5[53] = v2;
  v6 = v4[82];
  v7 = *v3;
  v5[83] = a2;
  v5[84] = v2;

  if (v2)
  {
    v5[91] = v2;
    v8 = sub_254180258;
  }

  else
  {
    v8 = sub_25417F9A8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25417F9A8()
{
  if (*(v0 + 664) >> 60 != 15)
  {
    v3 = sub_25417FB34;
    goto LABEL_18;
  }

  if (*(v0 + 32))
  {
    sub_2541CF73C();
  }

  *(v0 + 680) = *(v0 + 672);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = xmmword_254252DB0;
  if (v2 >> 60 == 15)
  {
LABEL_5:
    v3 = sub_2541803F8;
LABEL_18:

    return MEMORY[0x2822009F8](v3, 0, 0);
  }

  while (1)
  {
    *(v0 + 696) = v1;
    *(v0 + 688) = v2;
    v4 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      break;
    }

    if (v4)
    {
      if (v1 != v1 >> 32)
      {
        goto LABEL_14;
      }
    }

    else if ((v2 & 0xFF000000000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_7:
    sub_254134CF0(v1, v2);
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    *(v0 + 16) = xmmword_254252DB0;
    if (v2 >> 60 == 15)
    {
      goto LABEL_5;
    }
  }

  if (v4 != 2 || *(v1 + 16) == *(v1 + 24))
  {
    goto LABEL_7;
  }

LABEL_14:
  sub_2541D0104(v1, v2);
  v5 = swift_task_alloc();
  *(v0 + 704) = v5;
  *v5 = v0;
  v5[1] = sub_25417FD30;

  return sub_254181354();
}

uint64_t sub_25417FB34()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 408);
  v4 = *(v0 + 648);
  if (v4 >> 60 == 15)
  {
    v4 = *(v0 + 664);
LABEL_5:
    *(v0 + 648) = v4;
    *(v0 + 640) = v3;
    *(v0 + 632) = v1;

    return MEMORY[0x2822009F8](sub_25417F794, 0, 0);
  }

  v5 = *(v0 + 624);
  if (v5 >> 60 == 15)
  {
    *(v0 + 616) = v3;
    v3 = *(v0 + 640);
    *(v0 + 624) = v2;
    goto LABEL_5;
  }

  v19 = *(v0 + 640);
  v6 = *(v0 + 616);
  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  sub_254182650();
  swift_allocError();
  *v9 = 0xD00000000000002DLL;
  v9[1] = 0x80000002542506F0;
  swift_willThrow();
  sub_254134D04(v3, v2);
  sub_254134D04(v8, v7);
  sub_254134CF0(v6, v5);
  sub_254134CF0(v19, v4);
  sub_254134CF0(v8, v7);
  v10 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v10;
  v11 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v11;
  v12 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v12;
  sub_254132E5C(v0 + 304, &qword_27F5B9370, &qword_2542547F0);
  v13 = *(v0 + 576);
  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_25417FD30(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[54] = v3;
  v6[55] = a1;
  v6[56] = a2;
  v6[57] = v2;
  v7 = v5[88];
  v8 = *v3;
  v6[89] = v2;

  if (v2)
  {
    v9 = sub_25417FFE8;
  }

  else
  {
    v6[90] = a2;
    v9 = sub_25417FE60;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25417FE60()
{
  v1 = v0[90];
  sub_254134CF0(v0[87], v0[86]);
  if (v1 >> 60 != 15)
  {
    v4 = sub_25418005C;
    goto LABEL_16;
  }

  v0[85] = v0[89];
  v2 = v0[2];
  v3 = v0[3];
  *(v0 + 1) = xmmword_254252DB0;
  if (v3 >> 60 == 15)
  {
LABEL_3:
    v4 = sub_2541803F8;
LABEL_16:

    return MEMORY[0x2822009F8](v4, 0, 0);
  }

  while (1)
  {
    v0[87] = v2;
    v0[86] = v3;
    v5 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      break;
    }

    if (v5)
    {
      if (v2 != v2 >> 32)
      {
        goto LABEL_12;
      }
    }

    else if ((v3 & 0xFF000000000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_5:
    sub_254134CF0(v2, v3);
    v2 = v0[2];
    v3 = v0[3];
    *(v0 + 1) = xmmword_254252DB0;
    if (v3 >> 60 == 15)
    {
      goto LABEL_3;
    }
  }

  if (v5 != 2 || *(v2 + 16) == *(v2 + 24))
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_2541D0104(v2, v3);
  v6 = swift_task_alloc();
  v0[88] = v6;
  *v6 = v0;
  v6[1] = sub_25417FD30;

  return sub_254181354();
}

uint64_t sub_25417FFE8()
{
  sub_254134CF0(v0[87], v0[86]);
  v0[91] = v0[89];

  return MEMORY[0x2822009F8](sub_254180258, 0, 0);
}

uint64_t sub_25418005C()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 440);
  v4 = *(v0 + 648);
  if (v4 >> 60 == 15)
  {
    v4 = *(v0 + 720);
LABEL_5:
    *(v0 + 648) = v4;
    *(v0 + 640) = v3;
    *(v0 + 632) = v2;

    return MEMORY[0x2822009F8](sub_25417F794, 0, 0);
  }

  v5 = *(v0 + 624);
  if (v5 >> 60 == 15)
  {
    *(v0 + 616) = v3;
    v3 = *(v0 + 640);
    *(v0 + 624) = v1;
    goto LABEL_5;
  }

  v19 = *(v0 + 640);
  v6 = *(v0 + 616);
  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  sub_254182650();
  swift_allocError();
  *v9 = 0xD00000000000002DLL;
  v9[1] = 0x80000002542506F0;
  swift_willThrow();
  sub_254134D04(v3, v1);
  sub_254134D04(v8, v7);
  sub_254134CF0(v6, v5);
  sub_254134CF0(v19, v4);
  sub_254134CF0(v8, v7);
  v10 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v10;
  v11 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v11;
  v12 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v12;
  sub_254132E5C(v0 + 304, &qword_27F5B9370, &qword_2542547F0);
  v13 = *(v0 + 576);
  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_254180258()
{
  *(v0 + 504) = *(v0 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2541802E8, 0, 0);
}

uint64_t sub_2541802E8()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  sub_254134D04(v6, v5);
  sub_254134CF0(v4, v3);
  sub_254134CF0(v2, v1);
  sub_254134CF0(v6, v5);
  v7 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v7;
  v8 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v8;
  v9 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v9;
  sub_254132E5C(v0 + 112, &qword_27F5B9370, &qword_2542547F0);
  v10 = *(v0 + 728);
  v11 = *(v0 + 576);
  v12 = *(v0 + 568);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2541803F8()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 624);
  v3 = *(v0 + 64);
  *(v0 + 240) = *(v0 + 48);
  *(v0 + 256) = v3;
  v4 = *(v0 + 96);
  *(v0 + 272) = *(v0 + 80);
  *(v0 + 288) = v4;
  v5 = *(v0 + 32);
  *(v0 + 208) = *(v0 + 16);
  *(v0 + 224) = v5;
  sub_254132E5C(v0 + 208, &qword_27F5B9370, &qword_2542547F0);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  if (v1 >> 60 == 15 || v2 >> 60 == 15)
  {
    v20 = *(v0 + 624);
    v21 = *(v0 + 616);
    v22 = *(v0 + 600);
    v23 = *(v0 + 592);
    sub_254182650();
    swift_allocError();
    *v24 = 0xD00000000000002CLL;
    v24[1] = 0x80000002542505F0;
    swift_willThrow();
    sub_254134CF0(v21, v20);
    sub_254134CF0(v7, v6);
    sub_254134CF0(v23, v22);
    v25 = v23;
    v26 = v22;
    goto LABEL_24;
  }

  v8 = *(v0 + 576);
  sub_25424DCE8();
  result = sub_25424DCD8();
  if (!v10)
  {
    return sub_25424E858();
  }

  v11 = HIBYTE(v10) & 0xF;
  v12 = result & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v13 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    goto LABEL_70;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    v54 = result;
    v55 = v10;

    v16 = sub_254182718(v54, v55, 10);
    v57 = v56;

    result = v54;
    v10 = v55;
    if (v57)
    {
      goto LABEL_70;
    }

    goto LABEL_72;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    *(v0 + 488) = result;
    *(v0 + 496) = v10 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v11)
      {
        v34 = v11 - 1;
        if (v34)
        {
          v16 = 0;
          v35 = (v0 + 489);
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            LOBYTE(v12) = 0;
            ++v35;
            if (!--v34)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

LABEL_93:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v11)
      {
        v16 = 0;
        v40 = (v0 + 488);
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            break;
          }

          v42 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            break;
          }

          LOBYTE(v12) = 0;
          ++v40;
          if (!--v11)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v11)
    {
      v27 = v11 - 1;
      if (v27)
      {
        v16 = 0;
        v28 = (v0 + 489);
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            break;
          }

          LOBYTE(v12) = 0;
          ++v28;
          if (!--v27)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_91;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v14 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v103 = result;
    v104 = v10;
    v14 = sub_25424E708();
    result = v103;
    v12 = v105;
    v10 = v104;
  }

  v15 = *v14;
  if (v15 == 43)
  {
    if (v12 >= 1)
    {
      if (--v12)
      {
        v16 = 0;
        if (v14)
        {
          v31 = v14 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              goto LABEL_68;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_68;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              goto LABEL_68;
            }

            ++v31;
            if (!--v12)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_68;
    }

    goto LABEL_92;
  }

  if (v15 == 45)
  {
    if (v12 >= 1)
    {
      if (--v12)
      {
        v16 = 0;
        if (v14)
        {
          v17 = v14 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_68;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_68;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_68;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_60:
        LOBYTE(v12) = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v12)
  {
    v16 = 0;
    if (v14)
    {
      while (1)
      {
        v38 = *v14 - 48;
        if (v38 > 9)
        {
          goto LABEL_68;
        }

        v39 = 10 * v16;
        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
        {
          goto LABEL_68;
        }

        v16 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          goto LABEL_68;
        }

        ++v14;
        if (!--v12)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_68:
  v16 = 0;
  LOBYTE(v12) = 1;
LABEL_69:
  *(v0 + 736) = v12;
  if (v12)
  {
LABEL_70:
    v43 = *(v0 + 648);
    v44 = *(v0 + 640);
    v45 = *(v0 + 624);
    v46 = *(v0 + 616);
    v47 = *(v0 + 600);
    v48 = *(v0 + 592);
    v49 = result;
    v50 = v10;
    sub_25424E688();

    MEMORY[0x259C05CA0](v49, v50);

    sub_254182650();
    swift_allocError();
    *v51 = 0xD00000000000002FLL;
    v51[1] = 0x8000000254250690;
    swift_willThrow();
    sub_254134CF0(v48, v47);
    sub_254134D04(v48, v47);
    sub_254134CF0(v44, v43);
    v52 = v46;
    v53 = v45;
LABEL_74:
    sub_254134CF0(v52, v53);
    goto LABEL_75;
  }

LABEL_72:

  EventRecord.DataType.init(rawValue:)(v16);
  v58 = *(v0 + 737);
  v59 = *(v0 + 624);
  v60 = *(v0 + 616);
  if (v58 == 15)
  {
    v61 = *(v0 + 648);
    v62 = *(v0 + 640);
    v63 = *(v0 + 600);
    v64 = *(v0 + 592);
    sub_25424E688();

    *(v0 + 512) = v16;
    v65 = sub_25424EA58();
    MEMORY[0x259C05CA0](v65);

    sub_254182650();
    swift_allocError();
    *v66 = 0xD00000000000002FLL;
    v66[1] = 0x80000002542506C0;
    swift_willThrow();
    sub_254134CF0(v64, v63);
    sub_254134D04(v64, v63);
    sub_254134CF0(v62, v61);
    v52 = v60;
    v53 = v59;
    goto LABEL_74;
  }

  v72 = *(v0 + 680);
  v73 = *(v0 + 560);
  *(v0 + 464) = v58;
  *(v0 + 472) = v60;
  *(v0 + 480) = v59;
  sub_254181340(v60, v59);
  static EventRecord.decodeEvent(encoded:retainEncodedEvent:)(v0 + 464, 0, v73);
  if (v72)
  {
    v74 = *(v0 + 648);
    v75 = *(v0 + 640);
    v76 = *(v0 + 624);
    v77 = *(v0 + 616);
    v78 = *(v0 + 600);
    v79 = *(v0 + 592);
    if (*(*(v0 + 536) + *(*(v0 + 528) + 36)) == 1)
    {
      sub_254134CF0(*(v0 + 592), *(v0 + 600));
      sub_254134D04(v79, v78);
      sub_254134CF0(v75, v74);
      sub_254134CF0(v77, v76);
      sub_254134D04(v77, v76);

      goto LABEL_84;
    }

    swift_willThrow();
    sub_254134CF0(v79, v78);
    sub_254134D04(v79, v78);
    sub_254134CF0(v75, v74);
    sub_254134CF0(v77, v76);
    v25 = v77;
    v26 = v76;
LABEL_24:
    sub_254134D04(v25, v26);
LABEL_75:
    v67 = *(v0 + 576);
    v68 = *(v0 + 568);
    v69 = *(v0 + 560);
    v70 = *(v0 + 552);

    v71 = *(v0 + 8);
LABEL_76:

    return v71();
  }

  v80 = *(v0 + 648);
  v81 = *(v0 + 640);
  v82 = *(v0 + 624);
  v83 = *(v0 + 616);
  v84 = *(v0 + 600);
  v85 = *(v0 + 592);
  v86 = *(v0 + 568);
  v87 = *(v0 + 560);
  v88 = *(v0 + 552);
  v106 = *(v0 + 544);
  sub_254134CF0(v85, v84);
  sub_254134D04(v85, v84);
  sub_254134CF0(v81, v80);
  sub_254134CF0(v83, v82);
  sub_254134D04(v83, v82);
  sub_254182CA4(v87, v86, type metadata accessor for EventRecord.DecodedEvent);
  sub_254182CA4(v86, v88, type metadata accessor for EventRecord.DecodedEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v90 = *(v0 + 552);
  if (EnumCaseMultiPayload != 1)
  {
    v97 = *(v0 + 520);
    sub_254182CA4(v90, v97, type metadata accessor for SomeEvent);
    v98 = type metadata accessor for SomeEvent();
    (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
    v99 = *(v0 + 576);
    v100 = *(v0 + 568);
    v101 = *(v0 + 560);
    v102 = *(v0 + 552);

    v71 = *(v0 + 8);
    goto LABEL_76;
  }

  sub_254182D0C(v90);
LABEL_84:
  v91 = *(v0 + 528);
  v92 = swift_task_alloc();
  *(v0 + 584) = v92;
  v93 = *(v91 + 16);
  v94 = *(v91 + 24);
  v95 = type metadata accessor for AsyncJSONArrayObjectSequence.AsyncIterator();
  *v92 = v0;
  v92[1] = sub_25417F494;
  v96 = *(v0 + 536);

  return sub_2542370CC(v95);
}

uint64_t sub_254180D94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25412F724;

  return sub_25417F28C(a1, a2);
}

uint64_t URL.hmvDigestEvents(ignoreEventsThatFailToDecode:dataChunkSize:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_25424D3B8();
  if (a2 >= 1 && (result & 1) != 0)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92D0, &qword_2542546F0);
    a3[3] = v7;
    a3[4] = sub_25414081C(&qword_27F5B92D8, &qword_27F5B92D0, &qword_2542546F0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    sub_25424D3D8();
    *(boxed_opaque_existential_1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92E0, &qword_2542546F8) + 36)) = a2;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B92E8, &unk_254254700);
    *(boxed_opaque_existential_1 + *(result + 36)) = 1;
    *(boxed_opaque_existential_1 + *(v7 + 36)) = a1 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_254180F54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
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

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_2541810C8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_254181340(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254140660(a1, a2);
  }

  return a1;
}

uint64_t sub_254181354()
{
  v7 = *MEMORY[0x277D85DE8];
  v1[59] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9388, &qword_254254808);
  v1[60] = v2;
  v3 = *(v2 - 8);
  v1[61] = v3;
  v4 = *(v3 + 64) + 15;
  v1[62] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25418144C, 0, 0);
}

uint64_t sub_25418144C()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[59];
  v2 = v1[11];
  v3 = v1[8];
  v0[63] = v3;
  if (v2 < 0 || v3 < v2)
  {
    __break(1u);
  }

  v4 = v0[62];
  v5 = v0[60];
  v6 = v1[7];
  v0[50] = v1[6];
  v0[51] = v6;
  v0[52] = v3;
  v0[53] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9390, &qword_254254810);
  sub_25414081C(&qword_27F5B9398, &qword_27F5B9390, &qword_254254810);
  sub_25424E1F8();
  sub_25424D388();
  v0[65] = v2;
  v0[64] = 0;
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_254181598, 0, 0);
}

uint64_t sub_254181598()
{
  v80 = *MEMORY[0x277D85DE8];
  while (1)
  {
    if ((*(v0 + 57) & 1) == 0)
    {
      v12 = *(v0 + 56);
      *(v0 + 56) = 256;
      if ((v12 & 0xE0) == 0xC0)
      {
        v13 = 0;
        v14 = 1;
      }

      else if ((v12 & 0xF0) == 0xE0)
      {
        v13 = 0;
        v14 = 2;
      }

      else
      {
        if ((v12 & 0xF8) != 0xF0)
        {
          if (v12 < 0)
          {
            goto LABEL_148;
          }

          v78 = 0;
          v13 = 1;
          goto LABEL_31;
        }

        v13 = 0;
        v14 = 3;
      }

      v78 = v14;
LABEL_31:
      *(v0 + 576) = v12;
      *(v0 + 577) = 0;
      *(v0 + 579) = 0;
      if ((v13 & 1) != 0 || !*(v0 + 32))
      {
        goto LABEL_147;
      }

      v15 = 0;
      while (1)
      {
        v16 = *(v0 + 40);
        v17 = *(v0 + 16);
        if (v16 >= *(v17 + 16))
        {
          goto LABEL_147;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_177;
        }

        v18 = (v17 + 16 * v16 + 40);
        while (1)
        {
          if (v16 >= *(v17 + 16))
          {
            goto LABEL_168;
          }

          v20 = *(v18 - 1);
          v19 = *v18;
          v21 = *(v0 + 48);
          v22 = *v18 >> 62;
          if (v22 > 1)
          {
            break;
          }

          if (v22)
          {
            if (__OFSUB__(HIDWORD(v20), v20))
            {
              goto LABEL_172;
            }

            v25 = HIDWORD(v20) - v20;
            goto LABEL_50;
          }

          if (v21 < BYTE6(v19))
          {
            goto LABEL_51;
          }

LABEL_38:
          sub_254134D04(v20, v19);
          *(v0 + 40) = ++v16;
          *(v0 + 48) = 0;
          v18 += 2;
          if (v16 >= *(*(v0 + 16) + 16))
          {
            goto LABEL_147;
          }
        }

        if (v22 != 2)
        {
          if (v21 < 0)
          {
            goto LABEL_196;
          }

          goto LABEL_38;
        }

        v24 = *(v20 + 16);
        v23 = *(v20 + 24);
        v25 = v23 - v24;
        if (__OFSUB__(v23, v24))
        {
          goto LABEL_173;
        }

LABEL_50:
        sub_254140660(*(v18 - 1), *v18);
        if (v21 >= v25)
        {
          goto LABEL_38;
        }

LABEL_51:
        if (v22 == 2)
        {
          v26 = *(v20 + 16);
          v27 = v26 + v21;
          if (!__OFADD__(v26, v21))
          {
            v28 = *(v20 + 24);
            goto LABEL_58;
          }

          goto LABEL_180;
        }

        if (v22 != 1)
        {
          v26 = 0;
          v28 = BYTE6(v19);
          v27 = v21;
          goto LABEL_58;
        }

        v26 = v20;
        v27 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_179;
        }

        v28 = v20 >> 32;
LABEL_58:
        if (v27 < v26 || v28 < v27)
        {
          goto LABEL_196;
        }

        if (v22 == 2)
        {
          if (v27 >= *(v20 + 16))
          {
            if (v27 >= *(v20 + 24))
            {
              goto LABEL_184;
            }

            v29 = sub_25424D268();
            if (v29)
            {
              v32 = v29;
              v35 = sub_25424D298();
              v34 = v27 - v35;
              if (!__OFSUB__(v27, v35))
              {
                goto LABEL_72;
              }

              goto LABEL_186;
            }

            goto LABEL_198;
          }

          goto LABEL_182;
        }

        if (v22 == 1)
        {
          if (v27 >= v20 && v27 < v20 >> 32)
          {
            v29 = sub_25424D268();
            if (v29)
            {
              v32 = v29;
              v33 = sub_25424D298();
              v34 = v27 - v33;
              if (!__OFSUB__(v27, v33))
              {
LABEL_72:
                v36 = *(v32 + v34);
                goto LABEL_75;
              }

LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
              goto LABEL_187;
            }

LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
            goto LABEL_201;
          }

LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        if (v27 >= BYTE6(v19))
        {
          goto LABEL_181;
        }

        *(v0 + 558) = v20;
        *(v0 + 566) = v19;
        *(v0 + 568) = BYTE2(v19);
        *(v0 + 569) = BYTE3(v19);
        *(v0 + 570) = BYTE4(v19);
        *(v0 + 571) = BYTE5(v19);
        v36 = *(v0 + 558 + v27);
LABEL_75:
        sub_254134D04(v20, v19);
        *(v0 + 48) = v21 + 1;
        if ((v36 & 0xC0) != 0x80)
        {
          *(v0 + 56) = v36;
          *(v0 + 57) = 0;
          goto LABEL_147;
        }

        ++v15;
        *(v0 + 576 + v15) = v36;
        if (v15 >= v78 || !*(v0 + 32))
        {
LABEL_147:
          v61 = sub_25424DD68();
          v63 = sub_254183160(v61, v62);

          if ((v63 & 0x100000000) == 0)
          {
            goto LABEL_148;
          }

LABEL_152:
          v71 = *(v0 + 64);
          v70 = *(v0 + 72);
          if (sub_25424DD98() >= 1)
          {
            v72 = HIBYTE(v70) & 0xF;
            if ((v70 & 0x2000000000000000) == 0)
            {
              v72 = v71 & 0xFFFFFFFFFFFFLL;
            }

            if (v72)
            {
              v29 = sub_2541832B0(v71, v70);
              if (v30)
              {
                goto LABEL_157;
              }

              __break(1u);
LABEL_198:
              __break(1u);
              goto LABEL_199;
            }

LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v74 = sub_254182578;
LABEL_159:
          v75 = *MEMORY[0x277D85DE8];
          v29 = v74;
          v30 = 0;
          v31 = 0;

          return MEMORY[0x2822009F8](v29, v30, v31);
        }
      }
    }

    if (!*(v0 + 32))
    {
      goto LABEL_152;
    }

    v1 = *(v0 + 40);
    v2 = *(v0 + 16);
    if (v1 >= *(v2 + 16))
    {
      goto LABEL_152;
    }

    if (v1 < 0)
    {
      goto LABEL_176;
    }

    v3 = (v2 + 16 * v1 + 40);
    while (1)
    {
      if (v1 >= *(v2 + 16))
      {
        goto LABEL_167;
      }

      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v0 + 48);
      v7 = *v3 >> 62;
      if (v7 <= 1)
      {
        break;
      }

      if (v7 == 2)
      {
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        v10 = v8 - v9;
        if (__OFSUB__(v8, v9))
        {
          goto LABEL_171;
        }

        goto LABEL_20;
      }

      if (v6 < 0)
      {
        v11 = 0;
        goto LABEL_84;
      }

LABEL_8:
      sub_254134D04(v5, v4);
      *(v0 + 40) = ++v1;
      *(v0 + 48) = 0;
      v3 += 2;
      if (v1 >= *(*(v0 + 16) + 16))
      {
        goto LABEL_152;
      }
    }

    if (!v7)
    {
      if (v6 < BYTE6(v4))
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      goto LABEL_170;
    }

    v10 = HIDWORD(v5) - v5;
LABEL_20:
    sub_254140660(*(v3 - 1), *v3);
    if (v6 >= v10)
    {
      goto LABEL_8;
    }

LABEL_21:
    if (v7)
    {
      v11 = v7 == 2 ? *(v5 + 16) : v5;
    }

    else
    {
      v11 = 0;
    }

LABEL_84:
    sub_2541347C8(v11, v6, v5, v4);
    v37 = sub_25424D4C8();
    v29 = sub_254134D04(v5, v4);
    v38 = v6 + 1;
    *(v0 + 48) = v6 + 1;
    if (v37 < 0)
    {
      break;
    }

LABEL_148:
    v64 = *(v0 + 72);
    *(v0 + 456) = *(v0 + 64);
    *(v0 + 464) = v64;
    sub_25424DD58();
    v65 = *(v0 + 456);
    v66 = *(v0 + 464);
    *(v0 + 64) = v65;
    *(v0 + 72) = v66;
    if (sub_25424DD98() >= 2)
    {
      v76 = HIBYTE(v66) & 0xF;
      if ((v66 & 0x2000000000000000) == 0)
      {
        v76 = v65 & 0xFFFFFFFFFFFFLL;
      }

      if (!v76)
      {
        goto LABEL_195;
      }

      v29 = sub_2541832B0(v65, v66);
      if (v30)
      {
LABEL_157:
        v73 = v29;
        *(v0 + 528) = v30;
        sub_2541832F8(1);
        *(v0 + 536) = v73;
        v74 = sub_254181F44;
        goto LABEL_159;
      }

      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
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
      goto LABEL_178;
    }
  }

  if ((v37 & 0xFFFFFFE0) != 0xFFFFFFC0)
  {
    if ((v37 & 0xFFFFFFF0) == 0xFFFFFFE0)
    {
      v39 = 2;
      goto LABEL_91;
    }

    if ((v37 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v39 = 3;
      goto LABEL_91;
    }

    goto LABEL_148;
  }

  v39 = 1;
LABEL_91:
  v79 = v39;
  v40 = 0;
  *(v0 + 572) = v37;
  *(v0 + 573) = 0;
  *(v0 + 575) = 0;
  while (2)
  {
    v41 = *(v0 + 16);
    if (v1 >= *(v41 + 16))
    {
      goto LABEL_151;
    }

    v42 = v41 + 16 * v1;
    v44 = *(v42 + 32);
    v43 = *(v42 + 40);
    v45 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      if (v45 == 2)
      {
        v47 = *(v44 + 16);
        v46 = *(v44 + 24);
        v48 = v46 - v47;
        if (__OFSUB__(v46, v47))
        {
          goto LABEL_174;
        }

        goto LABEL_103;
      }

      if (v38 < 0)
      {
        goto LABEL_200;
      }
    }

    else
    {
      if (!v45)
      {
        if (v38 < BYTE6(v43))
        {
          goto LABEL_104;
        }

        goto LABEL_109;
      }

      if (__OFSUB__(HIDWORD(v44), v44))
      {
        goto LABEL_175;
      }

      v48 = HIDWORD(v44) - v44;
LABEL_103:
      v29 = sub_254140660(*(v42 + 32), *(v42 + 40));
      if (v38 < v48)
      {
LABEL_104:
        if (v45 == 2)
        {
          goto LABEL_122;
        }

        goto LABEL_105;
      }
    }

LABEL_109:
    v29 = sub_254134D04(v44, v43);
    *(v0 + 40) = ++v1;
    *(v0 + 48) = 0;
    if (v1 >= *(*(v0 + 16) + 16))
    {
      goto LABEL_151;
    }

    v52 = (v42 + 56);
    while (2)
    {
      if (v1 >= *(v41 + 16))
      {
        goto LABEL_169;
      }

      v44 = *(v52 - 1);
      v43 = *v52;
      v45 = *v52 >> 62;
      if (v45 <= 1)
      {
        if (v45)
        {
          if (__OFSUB__(HIDWORD(v44), v44))
          {
            goto LABEL_175;
          }

          v53 = HIDWORD(v44) - v44;
          goto LABEL_120;
        }

        if (BYTE6(v43))
        {
          goto LABEL_121;
        }

LABEL_112:
        v29 = sub_254134D04(v44, v43);
        *(v0 + 40) = ++v1;
        *(v0 + 48) = 0;
        v52 += 2;
        if (v1 >= *(*(v0 + 16) + 16))
        {
          goto LABEL_151;
        }

        continue;
      }

      break;
    }

    if (v45 != 2)
    {
      goto LABEL_112;
    }

    v55 = *(v44 + 16);
    v54 = *(v44 + 24);
    v53 = v54 - v55;
    if (__OFSUB__(v54, v55))
    {
      goto LABEL_174;
    }

LABEL_120:
    v29 = sub_254140660(*(v52 - 1), *v52);
    if (v53 <= 0)
    {
      goto LABEL_112;
    }

LABEL_121:
    v38 = 0;
    if (v45 == 2)
    {
LABEL_122:
      v49 = *(v44 + 16);
      v50 = v49 + v38;
      if (!__OFADD__(v49, v38))
      {
        v51 = *(v44 + 24);
        goto LABEL_125;
      }

LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
    }

LABEL_105:
    if (v45 != 1)
    {
      v49 = 0;
      v51 = BYTE6(v43);
      v50 = v38;
      goto LABEL_125;
    }

    v49 = v44;
    v50 = v44 + v38;
    if (__OFADD__(v44, v38))
    {
      goto LABEL_188;
    }

    v51 = v44 >> 32;
LABEL_125:
    if (v50 < v49 || v51 < v50)
    {
      goto LABEL_200;
    }

    if (v45 == 2)
    {
      if (v50 < *(v44 + 16))
      {
        goto LABEL_189;
      }

      if (v50 >= *(v44 + 24))
      {
        goto LABEL_193;
      }

      v29 = sub_25424D268();
      if (!v29)
      {
        goto LABEL_202;
      }

      v56 = v29;
      v59 = sub_25424D298();
      v58 = v50 - v59;
      if (__OFSUB__(v50, v59))
      {
        goto LABEL_194;
      }

LABEL_139:
      v60 = *(v56 + v58);
LABEL_142:
      v29 = sub_254134D04(v44, v43);
      *(v0 + 48) = ++v38;
      if ((v60 & 0xC0) == 0x80)
      {
        ++v40;
        *(v0 + 572 + v40) = v60;
        if (v40 == v79)
        {
          goto LABEL_151;
        }

        continue;
      }

      *(v0 + 56) = v60;
      *(v0 + 57) = 0;
LABEL_151:
      v67 = sub_25424DD68();
      v69 = sub_254183160(v67, v68);

      if ((v69 & 0x100000000) != 0)
      {
        goto LABEL_152;
      }

      goto LABEL_148;
    }

    break;
  }

  if (v45 != 1)
  {
    if (v50 >= BYTE6(v43))
    {
      goto LABEL_190;
    }

    *(v0 + 544) = v44;
    *(v0 + 552) = v43;
    *(v0 + 554) = BYTE2(v43);
    *(v0 + 555) = BYTE3(v43);
    *(v0 + 556) = BYTE4(v43);
    *(v0 + 557) = BYTE5(v43);
    v60 = *(v0 + 544 + v50);
    goto LABEL_142;
  }

  if (v50 < v44 || v50 >= v44 >> 32)
  {
    goto LABEL_191;
  }

  v29 = sub_25424D268();
  if (v29)
  {
    v56 = v29;
    v57 = sub_25424D298();
    v58 = v50 - v57;
    if (__OFSUB__(v50, v57))
    {
      goto LABEL_192;
    }

    goto LABEL_139;
  }

LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
  return MEMORY[0x2822009F8](v29, v30, v31);
}